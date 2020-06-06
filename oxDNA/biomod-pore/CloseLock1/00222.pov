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
	<24.084520, 35.062256, 34.692120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227066, 35.207153, 35.036625>,  <24.312593, 35.294090, 35.243328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227066, 35.207153, 35.036625>,  <24.084520, 35.062256, 34.692120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227066, 35.207153, 35.036625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566750, 0.649040, -0.507486,
		-0.742831, 0.668974, 0.025994,
		0.356366, 0.362244, 0.861268,
		24.333977, 35.315826, 35.295006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.176517, 35.846825, 34.778275>,  <24.084520, 35.062256, 34.692120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.176517, 35.846825, 34.778275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465294, 35.759857, 35.041039>,  <24.638559, 35.707676, 35.198696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465294, 35.759857, 35.041039>,  <24.176517, 35.846825, 34.778275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.465294, 35.759857, 35.041039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597320, 0.675049, -0.433033,
		-0.349298, 0.705010, 0.617213,
		0.721941, -0.217416, 0.656910,
		24.681877, 35.694633, 35.238113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.435638, 36.541916, 35.181747>,  <24.176517, 35.846825, 34.778275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.435638, 36.541916, 35.181747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704931, 36.247406, 35.154446>,  <24.866507, 36.070702, 35.138065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704931, 36.247406, 35.154446>,  <24.435638, 36.541916, 35.181747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.704931, 36.247406, 35.154446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488621, 0.512256, -0.706288,
		0.554987, 0.442144, 0.704626,
		0.673230, -0.736276, -0.068254,
		24.906900, 36.026524, 35.133968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132177, 36.817757, 35.373993>,  <24.435638, 36.541916, 35.181747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132177, 36.817757, 35.373993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178177, 36.486435, 35.154655>,  <25.205776, 36.287640, 35.023052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178177, 36.486435, 35.154655>,  <25.132177, 36.817757, 35.373993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178177, 36.486435, 35.154655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764242, 0.426413, -0.483846,
		0.634594, -0.363425, 0.682065,
		0.115000, -0.828308, -0.548343,
		25.212677, 36.237942, 34.990154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785471, 36.463562, 35.353405>,  <25.132177, 36.817757, 35.373993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785471, 36.463562, 35.353405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650988, 36.370090, 34.988472>,  <25.570297, 36.314007, 34.769512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650988, 36.370090, 34.988472>,  <25.785471, 36.463562, 35.353405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650988, 36.370090, 34.988472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830142, 0.383970, -0.404266,
		0.444777, -0.893287, 0.064892,
		-0.336209, -0.233678, -0.912337,
		25.550125, 36.299988, 34.714771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398287, 36.057003, 35.699577>,  <25.785471, 36.463562, 35.353405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398287, 36.057003, 35.699577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633196, 36.210384, 35.984695>,  <26.774141, 36.302414, 36.155766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633196, 36.210384, 35.984695>,  <26.398287, 36.057003, 35.699577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633196, 36.210384, 35.984695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528719, 0.485053, -0.696549,
		-0.612834, 0.785933, 0.082121,
		0.587273, 0.383450, 0.712795,
		26.809378, 36.325420, 36.198532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448616, 36.684734, 35.601627>,  <26.398287, 36.057003, 35.699577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448616, 36.684734, 35.601627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779318, 36.607933, 35.813141>,  <26.977739, 36.561852, 35.940048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779318, 36.607933, 35.813141>,  <26.448616, 36.684734, 35.601627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779318, 36.607933, 35.813141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562062, 0.321472, -0.762065,
		-0.023669, 0.927249, 0.373696,
		0.826757, -0.192003, 0.528780,
		27.027346, 36.550331, 35.971775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925016, 37.315559, 35.593857>,  <26.448616, 36.684734, 35.601627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925016, 37.315559, 35.593857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097704, 36.954914, 35.604565>,  <27.201317, 36.738529, 35.610989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097704, 36.954914, 35.604565>,  <26.925016, 37.315559, 35.593857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097704, 36.954914, 35.604565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604419, 0.267127, -0.750547,
		0.669550, 0.340205, 0.660275,
		0.431717, -0.901612, 0.026772,
		27.227219, 36.684429, 35.612595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553885, 37.532570, 35.556995>,  <26.925016, 37.315559, 35.593857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553885, 37.532570, 35.556995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547436, 37.144180, 35.461533>,  <27.543568, 36.911148, 35.404255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547436, 37.144180, 35.461533>,  <27.553885, 37.532570, 35.556995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547436, 37.144180, 35.461533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641856, 0.172963, -0.747064,
		0.766656, -0.165224, 0.620436,
		-0.016120, -0.970971, -0.238653,
		27.542599, 36.852890, 35.389938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070520, 37.623962, 35.094490>,  <27.553885, 37.532570, 35.556995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070520, 37.623962, 35.094490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942034, 37.251076, 35.027802>,  <27.864943, 37.027344, 34.987789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942034, 37.251076, 35.027802>,  <28.070520, 37.623962, 35.094490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942034, 37.251076, 35.027802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375611, 0.036194, -0.926070,
		0.869331, -0.360090, 0.338524,
		-0.321216, -0.932215, -0.166719,
		27.845669, 36.971413, 34.977787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640648, 37.204826, 34.933174>,  <28.070520, 37.623962, 35.094490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640648, 37.204826, 34.933174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325794, 37.023155, 34.766251>,  <28.136883, 36.914154, 34.666096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325794, 37.023155, 34.766251>,  <28.640648, 37.204826, 34.933174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325794, 37.023155, 34.766251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408138, 0.123721, -0.904498,
		0.462432, -0.882278, 0.087983,
		-0.787133, -0.454178, -0.417304,
		28.089653, 36.886902, 34.641060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989002, 36.817047, 34.445457>,  <28.640648, 37.204826, 34.933174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989002, 36.817047, 34.445457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602333, 36.861176, 34.353043>,  <28.370333, 36.887653, 34.297592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602333, 36.861176, 34.353043>,  <28.989002, 36.817047, 34.445457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602333, 36.861176, 34.353043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244969, 0.136249, -0.959910,
		-0.074416, -0.984513, -0.158733,
		-0.966671, 0.110317, -0.231036,
		28.312332, 36.894272, 34.283733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870968, 36.364449, 33.875248>,  <28.989002, 36.817047, 34.445457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870968, 36.364449, 33.875248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572947, 36.630447, 33.854565>,  <28.394135, 36.790047, 33.842155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572947, 36.630447, 33.854565>,  <28.870968, 36.364449, 33.875248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572947, 36.630447, 33.854565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083490, 0.016061, -0.996379,
		-0.661759, -0.746673, -0.067487,
		-0.745053, 0.664998, -0.051712,
		28.349430, 36.829948, 33.839050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471529, 36.109428, 33.259628>,  <28.870968, 36.364449, 33.875248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471529, 36.109428, 33.259628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390247, 36.495548, 33.325230>,  <28.341478, 36.727222, 33.364590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390247, 36.495548, 33.325230>,  <28.471529, 36.109428, 33.259628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390247, 36.495548, 33.325230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062420, 0.179927, -0.981697,
		-0.977145, -0.189247, -0.096816,
		-0.203203, 0.965304, 0.164002,
		28.329287, 36.785141, 33.374432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002012, 36.049847, 32.728386>,  <28.471529, 36.109428, 33.259628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002012, 36.049847, 32.728386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136547, 36.419834, 32.799164>,  <28.217268, 36.641827, 32.841629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136547, 36.419834, 32.799164>,  <28.002012, 36.049847, 32.728386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136547, 36.419834, 32.799164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103053, 0.150609, -0.983207,
		-0.936086, 0.348925, -0.044665,
		0.336338, 0.924969, 0.176941,
		28.237448, 36.697327, 32.852245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600658, 36.464622, 32.347286>,  <28.002012, 36.049847, 32.728386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600658, 36.464622, 32.347286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911455, 36.711338, 32.397644>,  <28.097933, 36.859367, 32.427860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911455, 36.711338, 32.397644>,  <27.600658, 36.464622, 32.347286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911455, 36.711338, 32.397644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044828, 0.145272, -0.988376,
		-0.627913, 0.773603, 0.085225,
		0.776991, 0.616794, 0.125898,
		28.144552, 36.896378, 32.435413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441090, 36.925789, 31.884233>,  <27.600658, 36.464622, 32.347286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441090, 36.925789, 31.884233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822540, 36.995441, 31.982437>,  <28.051411, 37.037231, 32.041359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822540, 36.995441, 31.982437>,  <27.441090, 36.925789, 31.884233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822540, 36.995441, 31.982437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239595, 0.054533, -0.969340,
		-0.182177, 0.983212, 0.010284,
		0.953628, 0.174127, 0.245507,
		28.108629, 37.047680, 32.056087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683586, 37.644947, 31.584145>,  <27.441090, 36.925789, 31.884233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683586, 37.644947, 31.584145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999760, 37.414165, 31.666452>,  <28.189465, 37.275696, 31.715837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999760, 37.414165, 31.666452>,  <27.683586, 37.644947, 31.584145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999760, 37.414165, 31.666452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338978, 0.132202, -0.931459,
		0.510205, 0.806007, 0.300071,
		0.790433, -0.576953, 0.205768,
		28.236889, 37.241081, 31.728184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316597, 37.978489, 31.265142>,  <27.683586, 37.644947, 31.584145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316597, 37.978489, 31.265142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444361, 37.607441, 31.342607>,  <28.521019, 37.384811, 31.389086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444361, 37.607441, 31.342607>,  <28.316597, 37.978489, 31.265142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444361, 37.607441, 31.342607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402943, -0.052020, -0.913745,
		0.857680, 0.369893, 0.357162,
		0.319409, -0.927617, 0.193662,
		28.540184, 37.329155, 31.400705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041071, 37.893608, 30.879904>,  <28.316597, 37.978489, 31.265142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041071, 37.893608, 30.879904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903898, 37.522564, 30.939148>,  <28.821594, 37.299938, 30.974693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903898, 37.522564, 30.939148>,  <29.041071, 37.893608, 30.879904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903898, 37.522564, 30.939148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113744, -0.197516, -0.973679,
		0.932448, -0.317060, 0.173245,
		-0.342933, -0.927610, 0.148110,
		28.801018, 37.244282, 30.983582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488977, 37.419697, 30.627264>,  <29.041071, 37.893608, 30.879904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488977, 37.419697, 30.627264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142078, 37.220665, 30.634111>,  <28.933939, 37.101246, 30.638220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142078, 37.220665, 30.634111>,  <29.488977, 37.419697, 30.627264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142078, 37.220665, 30.634111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115852, -0.235121, -0.965037,
		0.484209, -0.834944, 0.261554,
		-0.867249, -0.497581, 0.017118,
		28.881905, 37.071392, 30.639246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694000, 36.758530, 30.431189>,  <29.488977, 37.419697, 30.627264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694000, 36.758530, 30.431189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303596, 36.798031, 30.353571>,  <29.069353, 36.821732, 30.307001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303596, 36.798031, 30.353571>,  <29.694000, 36.758530, 30.431189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303596, 36.798031, 30.353571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140240, -0.396593, -0.907219,
		-0.166541, -0.912668, 0.373231,
		-0.976010, 0.098748, -0.194042,
		29.010794, 36.827656, 30.295359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489641, 36.146488, 30.152035>,  <29.694000, 36.758530, 30.431189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489641, 36.146488, 30.152035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185669, 36.378185, 30.034061>,  <29.003286, 36.517204, 29.963278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185669, 36.378185, 30.034061>,  <29.489641, 36.146488, 30.152035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185669, 36.378185, 30.034061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147031, -0.288797, -0.946033,
		-0.633159, -0.762282, 0.134298,
		-0.759929, 0.579243, -0.294933,
		28.957691, 36.551960, 29.945581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168425, 35.813580, 29.517845>,  <29.489641, 36.146488, 30.152035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168425, 35.813580, 29.517845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037022, 36.191174, 29.505335>,  <28.958179, 36.417728, 29.497829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037022, 36.191174, 29.505335>,  <29.168425, 35.813580, 29.517845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037022, 36.191174, 29.505335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145740, -0.083379, -0.985803,
		-0.933189, -0.319286, 0.164967,
		-0.328508, 0.943983, -0.031276,
		28.938469, 36.474369, 29.495953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521267, 35.745380, 29.237322>,  <29.168425, 35.813580, 29.517845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521267, 35.745380, 29.237322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626169, 36.127537, 29.182993>,  <28.689112, 36.356831, 29.150396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626169, 36.127537, 29.182993>,  <28.521267, 35.745380, 29.237322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626169, 36.127537, 29.182993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053608, -0.126105, -0.990567,
		-0.963508, 0.267065, 0.018145,
		0.262258, 0.955392, -0.135820,
		28.704847, 36.414154, 29.142246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047325, 36.223869, 28.868118>,  <28.521267, 35.745380, 29.237322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047325, 36.223869, 28.868118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391680, 36.405537, 28.776379>,  <28.598293, 36.514538, 28.721334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391680, 36.405537, 28.776379>,  <28.047325, 36.223869, 28.868118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391680, 36.405537, 28.776379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227390, -0.059808, -0.971965,
		-0.455157, 0.888904, 0.051786,
		0.860886, 0.454173, -0.229350,
		28.649946, 36.541790, 28.707573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789236, 35.602978, 28.778769>,  <28.047325, 36.223869, 28.868118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789236, 35.602978, 28.778769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691549, 35.613926, 28.391035>,  <27.632936, 35.620495, 28.158394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691549, 35.613926, 28.391035>,  <27.789236, 35.602978, 28.778769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691549, 35.613926, 28.391035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126468, -0.991963, 0.003857,
		-0.961439, 0.123531, 0.245715,
		-0.244216, 0.027367, -0.969335,
		27.618284, 35.622135, 28.100235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018881, 35.414402, 28.676970>,  <27.789236, 35.602978, 28.778769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018881, 35.414402, 28.676970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252886, 35.332153, 28.363159>,  <27.393290, 35.282803, 28.174873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252886, 35.332153, 28.363159>,  <27.018881, 35.414402, 28.676970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252886, 35.332153, 28.363159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447357, -0.888671, -0.100673,
		-0.676485, 0.409858, -0.611869,
		0.585013, -0.205620, -0.784526,
		27.428391, 35.270466, 28.127802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731716, 35.210533, 27.959221>,  <27.018881, 35.414402, 28.676970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731716, 35.210533, 27.959221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070463, 35.040234, 28.086691>,  <27.273712, 34.938053, 28.163174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070463, 35.040234, 28.086691>,  <26.731716, 35.210533, 27.959221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070463, 35.040234, 28.086691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448468, -0.893796, -0.002316,
		0.285818, -0.140955, -0.947861,
		0.846867, -0.425747, 0.318677,
		27.324524, 34.912510, 28.182295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896412, 34.595882, 27.497950>,  <26.731716, 35.210533, 27.959221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896412, 34.595882, 27.497950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040188, 34.534111, 27.866070>,  <27.126453, 34.497047, 28.086943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040188, 34.534111, 27.866070>,  <26.896412, 34.595882, 27.497950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040188, 34.534111, 27.866070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477734, -0.877624, 0.039325,
		0.801607, -0.453794, -0.389227,
		0.359440, -0.154424, 0.920302,
		27.148020, 34.487785, 28.142160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355885, 33.929916, 27.618687>,  <26.896412, 34.595882, 27.497950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355885, 33.929916, 27.618687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181866, 34.019470, 27.967539>,  <27.077454, 34.073204, 28.176849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181866, 34.019470, 27.967539>,  <27.355885, 33.929916, 27.618687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181866, 34.019470, 27.967539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226562, -0.964649, 0.134619,
		0.871437, -0.139025, 0.470392,
		-0.435048, 0.223885, 0.872129,
		27.051352, 34.086636, 28.229177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768665, 33.619648, 28.160521>,  <27.355885, 33.929916, 27.618687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768665, 33.619648, 28.160521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371035, 33.645302, 28.195608>,  <27.132456, 33.660694, 28.216661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371035, 33.645302, 28.195608>,  <27.768665, 33.619648, 28.160521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371035, 33.645302, 28.195608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059841, -0.996916, 0.050774,
		0.090707, 0.045224, 0.994851,
		-0.994078, 0.064138, 0.087721,
		27.072811, 33.664543, 28.221924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615183, 33.125034, 28.635706>,  <27.768665, 33.619648, 28.160521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615183, 33.125034, 28.635706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287218, 33.216549, 28.425793>,  <27.090439, 33.271458, 28.299845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287218, 33.216549, 28.425793>,  <27.615183, 33.125034, 28.635706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287218, 33.216549, 28.425793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337357, -0.933693, 0.120029,
		-0.462527, 0.275453, 0.842731,
		-0.819914, 0.228785, -0.524784,
		27.041245, 33.285183, 28.268358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909342, 32.553268, 28.185320>,  <27.615183, 33.125034, 28.635706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909342, 32.553268, 28.185320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098932, 32.237938, 28.028404>,  <28.212687, 32.048740, 27.934254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098932, 32.237938, 28.028404>,  <27.909342, 32.553268, 28.185320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098932, 32.237938, 28.028404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331538, -0.252957, 0.908898,
		-0.815739, -0.560855, 0.141464,
		0.473975, -0.788324, -0.392291,
		28.241125, 32.001442, 27.910717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724186, 31.928034, 28.592772>,  <27.909342, 32.553268, 28.185320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724186, 31.928034, 28.592772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073971, 31.820477, 28.431274>,  <28.283842, 31.755941, 28.334375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073971, 31.820477, 28.431274>,  <27.724186, 31.928034, 28.592772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073971, 31.820477, 28.431274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410377, -0.033727, 0.911292,
		-0.258658, -0.962579, 0.080855,
		0.874464, -0.268894, -0.403744,
		28.336309, 31.739809, 28.310152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068010, 31.215691, 28.906216>,  <27.724186, 31.928034, 28.592772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068010, 31.215691, 28.906216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375536, 31.435648, 28.775652>,  <28.560051, 31.567623, 28.697313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375536, 31.435648, 28.775652>,  <28.068010, 31.215691, 28.906216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375536, 31.435648, 28.775652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472375, -0.144305, 0.869504,
		0.431032, -0.822675, -0.370699,
		0.768813, 0.549893, -0.326411,
		28.606180, 31.600616, 28.677729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744770, 30.830719, 29.010462>,  <28.068010, 31.215691, 28.906216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744770, 30.830719, 29.010462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837418, 31.218548, 28.978754>,  <28.893007, 31.451244, 28.959728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837418, 31.218548, 28.978754>,  <28.744770, 30.830719, 29.010462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837418, 31.218548, 28.978754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580982, -0.072510, 0.810680,
		0.780264, -0.233825, -0.580098,
		0.231621, 0.969571, -0.079271,
		28.906904, 31.509418, 28.954973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437634, 30.923866, 29.043894>,  <28.744770, 30.830719, 29.010462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437634, 30.923866, 29.043894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304173, 31.286293, 29.147985>,  <29.224096, 31.503750, 29.210440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304173, 31.286293, 29.147985>,  <29.437634, 30.923866, 29.043894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304173, 31.286293, 29.147985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596780, -0.010675, 0.802334,
		0.729746, 0.423001, -0.537161,
		-0.333654, 0.906066, 0.260228,
		29.204077, 31.558113, 29.226053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071875, 31.379236, 29.205101>,  <29.437634, 30.923866, 29.043894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071875, 31.379236, 29.205101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746977, 31.539209, 29.374952>,  <29.552038, 31.635193, 29.476864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746977, 31.539209, 29.374952>,  <30.071875, 31.379236, 29.205101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746977, 31.539209, 29.374952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530195, 0.202667, 0.823298,
		0.243206, 0.893857, -0.376657,
		-0.812247, 0.399933, 0.424628,
		29.503304, 31.659189, 29.502340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344837, 31.839642, 29.665482>,  <30.071875, 31.379236, 29.205101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344837, 31.839642, 29.665482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959219, 31.849501, 29.771318>,  <29.727848, 31.855415, 29.834820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959219, 31.849501, 29.771318>,  <30.344837, 31.839642, 29.665482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959219, 31.849501, 29.771318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253011, 0.389579, 0.885559,
		-0.081252, 0.920663, -0.381808,
		-0.964045, 0.024648, 0.264592,
		29.670006, 31.856895, 29.850697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247828, 32.487919, 29.873249>,  <30.344837, 31.839642, 29.665482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247828, 32.487919, 29.873249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959990, 32.269814, 30.045233>,  <29.787287, 32.138950, 30.148422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959990, 32.269814, 30.045233>,  <30.247828, 32.487919, 29.873249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959990, 32.269814, 30.045233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282305, 0.335984, 0.898565,
		-0.634418, 0.767983, -0.087840,
		-0.719596, -0.545268, 0.429959,
		29.744110, 32.106232, 30.174221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695692, 32.965408, 30.157246>,  <30.247828, 32.487919, 29.873249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695692, 32.965408, 30.157246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697567, 32.623558, 30.364937>,  <29.698692, 32.418449, 30.489552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697567, 32.623558, 30.364937>,  <29.695692, 32.965408, 30.157246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697567, 32.623558, 30.364937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052569, 0.518726, 0.853323,
		-0.998607, 0.023296, 0.047357,
		0.004686, -0.854623, 0.519227,
		29.698973, 32.367172, 30.520704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276918, 33.141758, 30.650240>,  <29.695692, 32.965408, 30.157246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276918, 33.141758, 30.650240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424944, 32.795204, 30.784361>,  <29.513760, 32.587273, 30.864834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424944, 32.795204, 30.784361>,  <29.276918, 33.141758, 30.650240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424944, 32.795204, 30.784361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081960, 0.329071, 0.940742,
		-0.925383, -0.375617, 0.050769,
		0.370065, -0.866386, 0.335302,
		29.535963, 32.535290, 30.884951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843204, 32.962826, 31.257795>,  <29.276918, 33.141758, 30.650240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843204, 32.962826, 31.257795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181145, 32.750652, 31.285719>,  <29.383909, 32.623348, 31.302473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181145, 32.750652, 31.285719>,  <28.843204, 32.962826, 31.257795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181145, 32.750652, 31.285719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107417, 0.295999, 0.949129,
		-0.524111, -0.794372, 0.307051,
		0.844849, -0.530431, 0.069807,
		29.434599, 32.591522, 31.306662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838614, 32.653042, 31.893412>,  <28.843204, 32.962826, 31.257795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838614, 32.653042, 31.893412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232071, 32.606190, 31.838676>,  <29.468145, 32.578079, 31.805836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232071, 32.606190, 31.838676>,  <28.838614, 32.653042, 31.893412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232071, 32.606190, 31.838676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148388, 0.096322, 0.984227,
		-0.102103, -0.988434, 0.112127,
		0.983644, -0.117130, -0.136837,
		29.527164, 32.571053, 31.797625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098520, 32.126976, 32.399776>,  <28.838614, 32.653042, 31.893412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098520, 32.126976, 32.399776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400522, 32.359623, 32.278652>,  <29.581724, 32.499210, 32.205978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400522, 32.359623, 32.278652>,  <29.098520, 32.126976, 32.399776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400522, 32.359623, 32.278652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261193, 0.156830, 0.952461,
		0.601454, -0.798204, -0.033506,
		0.755004, 0.581614, -0.302811,
		29.627024, 32.534107, 32.187809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673779, 31.950859, 32.818470>,  <29.098520, 32.126976, 32.399776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673779, 31.950859, 32.818470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757641, 32.314205, 32.673740>,  <29.807959, 32.532211, 32.586903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757641, 32.314205, 32.673740>,  <29.673779, 31.950859, 32.818470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757641, 32.314205, 32.673740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059478, 0.357513, 0.932012,
		0.975965, -0.216922, 0.020926,
		0.209655, 0.908366, -0.361822,
		29.820538, 32.586716, 32.565193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231960, 32.104858, 33.282047>,  <29.673779, 31.950859, 32.818470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231960, 32.104858, 33.282047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081038, 32.439262, 33.122684>,  <29.990484, 32.639904, 33.027065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081038, 32.439262, 33.122684>,  <30.231960, 32.104858, 33.282047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081038, 32.439262, 33.122684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148697, 0.479314, 0.864955,
		0.914073, 0.267111, -0.305161,
		-0.377307, 0.836008, -0.398409,
		29.967846, 32.690063, 33.003162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619347, 32.656620, 33.572006>,  <30.231960, 32.104858, 33.282047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619347, 32.656620, 33.572006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319056, 32.846470, 33.388210>,  <30.138880, 32.960381, 33.277931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319056, 32.846470, 33.388210>,  <30.619347, 32.656620, 33.572006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319056, 32.846470, 33.388210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059354, 0.644281, 0.762482,
		0.657938, 0.599691, -0.455510,
		-0.750730, 0.474629, -0.459491,
		30.093836, 32.988857, 33.250362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760332, 33.429485, 33.522804>,  <30.619347, 32.656620, 33.572006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760332, 33.429485, 33.522804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362232, 33.391888, 33.512695>,  <30.123371, 33.369328, 33.506630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362232, 33.391888, 33.512695>,  <30.760332, 33.429485, 33.522804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362232, 33.391888, 33.512695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088853, 0.771293, 0.630248,
		-0.039747, 0.629501, -0.775982,
		-0.995252, -0.093999, -0.025276,
		30.063656, 33.363689, 33.505112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425550, 34.142075, 33.441036>,  <30.760332, 33.429485, 33.522804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425550, 34.142075, 33.441036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128269, 33.917713, 33.586929>,  <29.949900, 33.783096, 33.674465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128269, 33.917713, 33.586929>,  <30.425550, 34.142075, 33.441036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128269, 33.917713, 33.586929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099575, 0.631795, 0.768713,
		-0.661614, 0.534992, -0.525405,
		-0.743204, -0.560908, 0.364733,
		29.905308, 33.749439, 33.696350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844421, 34.575314, 33.468918>,  <30.425550, 34.142075, 33.441036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844421, 34.575314, 33.468918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787689, 34.265030, 33.714897>,  <29.753651, 34.078861, 33.862484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787689, 34.265030, 33.714897>,  <29.844421, 34.575314, 33.468918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787689, 34.265030, 33.714897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083547, 0.628391, 0.773398,
		-0.986359, 0.058314, -0.153933,
		-0.141830, -0.775709, 0.614947,
		29.745140, 34.032318, 33.899380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189688, 34.660339, 33.833241>,  <29.844421, 34.575314, 33.468918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189688, 34.660339, 33.833241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405809, 34.417236, 34.066032>,  <29.535482, 34.271374, 34.205708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405809, 34.417236, 34.066032>,  <29.189688, 34.660339, 33.833241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405809, 34.417236, 34.066032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286615, 0.517343, 0.806354,
		-0.791153, -0.602480, 0.105329,
		0.540303, -0.607761, 0.581978,
		29.567900, 34.234909, 34.240627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786402, 34.715866, 34.359619>,  <29.189688, 34.660339, 33.833241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786402, 34.715866, 34.359619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119020, 34.526733, 34.476208>,  <29.318592, 34.413254, 34.546162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119020, 34.526733, 34.476208>,  <28.786402, 34.715866, 34.359619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119020, 34.526733, 34.476208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162243, 0.295098, 0.941591,
		-0.531231, -0.830267, 0.168674,
		0.831547, -0.472836, 0.291470,
		29.368484, 34.384884, 34.563648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592098, 34.345383, 35.032784>,  <28.786402, 34.715866, 34.359619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592098, 34.345383, 35.032784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984285, 34.422203, 35.015816>,  <29.219597, 34.468296, 35.005634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984285, 34.422203, 35.015816>,  <28.592098, 34.345383, 35.032784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984285, 34.422203, 35.015816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041706, 0.413797, 0.909413,
		0.192208, -0.889881, 0.413724,
		0.980467, 0.192052, -0.042422,
		29.278425, 34.479820, 35.003090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915997, 33.973507, 35.636208>,  <28.592098, 34.345383, 35.032784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915997, 33.973507, 35.636208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145477, 34.282513, 35.527336>,  <29.283165, 34.467918, 35.462013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145477, 34.282513, 35.527336>,  <28.915997, 33.973507, 35.636208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145477, 34.282513, 35.527336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141556, 0.420821, 0.896031,
		0.806740, -0.475526, 0.350780,
		0.573701, 0.772519, -0.272179,
		29.317587, 34.514267, 35.445683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352909, 34.186832, 36.232159>,  <28.915997, 33.973507, 35.636208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352909, 34.186832, 36.232159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412840, 34.511215, 36.005917>,  <29.448797, 34.705845, 35.870171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412840, 34.511215, 36.005917>,  <29.352909, 34.186832, 36.232159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412840, 34.511215, 36.005917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107431, 0.582025, 0.806043,
		0.982859, -0.060002, 0.174324,
		0.149825, 0.810954, -0.565602,
		29.457788, 34.754501, 35.836235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727844, 34.696510, 36.616314>,  <29.352909, 34.186832, 36.232159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727844, 34.696510, 36.616314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518345, 34.917717, 36.357128>,  <29.392645, 35.050442, 36.201618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518345, 34.917717, 36.357128>,  <29.727844, 34.696510, 36.616314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518345, 34.917717, 36.357128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172505, 0.676024, 0.716403,
		0.834224, 0.486992, -0.258668,
		-0.523748, 0.553019, -0.647964,
		29.361221, 35.083622, 36.162739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050861, 35.423275, 36.595161>,  <29.727844, 34.696510, 36.616314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050861, 35.423275, 36.595161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661383, 35.416439, 36.504280>,  <29.427696, 35.412338, 36.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661383, 35.416439, 36.504280>,  <30.050861, 35.423275, 36.595161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661383, 35.416439, 36.504280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148508, 0.803876, 0.575959,
		0.172803, 0.594551, -0.785269,
		-0.973696, -0.017091, -0.227208,
		29.369274, 35.411312, 36.436119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654619, 34.977493, 36.866131>,  <30.050861, 35.423275, 36.595161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654619, 34.977493, 36.866131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042667, 34.905483, 36.801067>,  <31.275496, 34.862278, 36.762028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042667, 34.905483, 36.801067>,  <30.654619, 34.977493, 36.866131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042667, 34.905483, 36.801067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045541, 0.793605, -0.606726,
		0.238314, 0.581189, 0.778091,
		0.970120, -0.180027, -0.162659,
		31.333704, 34.851475, 36.752270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374506, 35.376827, 36.893520>,  <30.654619, 34.977493, 36.866131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374506, 35.376827, 36.893520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709496, 35.384995, 36.675079>,  <31.910488, 35.389896, 36.544014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709496, 35.384995, 36.675079>,  <31.374506, 35.376827, 36.893520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709496, 35.384995, 36.675079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110373, 0.985027, -0.132433,
		0.535217, 0.171184, 0.827187,
		0.837472, 0.020419, -0.546098,
		31.960737, 35.391121, 36.511250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638155, 35.897751, 37.055126>,  <31.374506, 35.376827, 36.893520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638155, 35.897751, 37.055126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773752, 35.819675, 36.687000>,  <31.855110, 35.772831, 36.466125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773752, 35.819675, 36.687000>,  <31.638155, 35.897751, 37.055126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773752, 35.819675, 36.687000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365363, 0.874143, -0.319975,
		0.866944, 0.444720, 0.225015,
		0.338995, -0.195188, -0.920317,
		31.875450, 35.761120, 36.410904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240757, 36.316975, 36.898045>,  <31.638155, 35.897751, 37.055126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240757, 36.316975, 36.898045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026691, 36.220196, 36.574303>,  <31.898251, 36.162128, 36.380058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026691, 36.220196, 36.574303>,  <32.240757, 36.316975, 36.898045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026691, 36.220196, 36.574303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217054, 0.965323, -0.145049,
		0.816385, 0.098049, -0.569124,
		-0.535166, -0.241947, -0.809357,
		31.866142, 36.147614, 36.331497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470448, 36.698303, 36.233959>,  <32.240757, 36.316975, 36.898045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470448, 36.698303, 36.233959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079178, 36.627224, 36.277046>,  <31.844416, 36.584576, 36.302898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079178, 36.627224, 36.277046>,  <32.470448, 36.698303, 36.233959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079178, 36.627224, 36.277046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194237, 0.966084, -0.170156,
		-0.073828, -0.187365, -0.979512,
		-0.978172, -0.177695, 0.107717,
		31.785727, 36.573914, 36.309361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886181, 36.048016, 36.011948>,  <32.470448, 36.698303, 36.233959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886181, 36.048016, 36.011948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173004, 35.893932, 36.244308>,  <33.345097, 35.801483, 36.383724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173004, 35.893932, 36.244308>,  <32.886181, 36.048016, 36.011948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173004, 35.893932, 36.244308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555271, 0.188062, 0.810128,
		-0.421311, -0.903465, -0.079042,
		0.717057, -0.385206, 0.580900,
		33.388123, 35.778370, 36.418579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556362, 35.701057, 36.644756>,  <32.886181, 36.048016, 36.011948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556362, 35.701057, 36.644756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932774, 35.781467, 36.753609>,  <33.158619, 35.829712, 36.818920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932774, 35.781467, 36.753609>,  <32.556362, 35.701057, 36.644756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932774, 35.781467, 36.753609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311767, 0.202846, 0.928254,
		0.131402, -0.958354, 0.253556,
		0.941028, 0.201025, 0.272129,
		33.215084, 35.841774, 36.835247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695663, 35.304531, 37.218563>,  <32.556362, 35.701057, 36.644756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695663, 35.304531, 37.218563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956795, 35.606155, 37.247440>,  <33.113472, 35.787128, 37.264767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956795, 35.606155, 37.247440>,  <32.695663, 35.304531, 37.218563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956795, 35.606155, 37.247440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336841, 0.203602, 0.919285,
		0.678497, -0.624450, 0.386915,
		0.652824, 0.754061, 0.072197,
		33.152641, 35.832375, 37.269100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837440, 35.334881, 37.977718>,  <32.695663, 35.304531, 37.218563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837440, 35.334881, 37.977718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956497, 35.681400, 37.817249>,  <33.027931, 35.889313, 37.720966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956497, 35.681400, 37.817249>,  <32.837440, 35.334881, 37.977718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956497, 35.681400, 37.817249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227872, 0.472538, 0.851341,
		0.927084, -0.161978, 0.338052,
		0.297641, 0.866297, -0.401172,
		33.045788, 35.941288, 37.696899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270916, 35.622704, 38.494110>,  <32.837440, 35.334881, 37.977718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270916, 35.622704, 38.494110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128819, 35.908146, 38.252594>,  <33.043560, 36.079411, 38.107685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128819, 35.908146, 38.252594>,  <33.270916, 35.622704, 38.494110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128819, 35.908146, 38.252594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309095, 0.519916, 0.796334,
		0.882190, 0.469525, 0.035873,
		-0.355248, 0.713606, -0.603793,
		33.022243, 36.122227, 38.071457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700382, 36.209290, 38.674072>,  <33.270916, 35.622704, 38.494110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700382, 36.209290, 38.674072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365547, 36.337021, 38.496391>,  <33.164646, 36.413658, 38.389782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365547, 36.337021, 38.496391>,  <33.700382, 36.209290, 38.674072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365547, 36.337021, 38.496391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306843, 0.398166, 0.864471,
		0.452918, 0.859937, -0.235315,
		-0.837086, 0.319330, -0.444203,
		33.114422, 36.432819, 38.363129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567898, 36.775940, 38.976559>,  <33.700382, 36.209290, 38.674072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567898, 36.775940, 38.976559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209164, 36.727146, 38.806477>,  <32.993923, 36.697868, 38.704430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209164, 36.727146, 38.806477>,  <33.567898, 36.775940, 38.976559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209164, 36.727146, 38.806477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442007, 0.285338, 0.850419,
		0.017585, 0.950632, -0.309822,
		-0.896839, -0.121989, -0.425203,
		32.940113, 36.690548, 38.678917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171402, 37.365009, 39.109440>,  <33.567898, 36.775940, 38.976559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171402, 37.365009, 39.109440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913620, 37.070278, 39.027687>,  <32.758953, 36.893440, 38.978638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913620, 37.070278, 39.027687>,  <33.171402, 37.365009, 39.109440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913620, 37.070278, 39.027687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511617, 0.216868, 0.831394,
		-0.568270, 0.640357, -0.516733,
		-0.644451, -0.736826, -0.204378,
		32.720284, 36.849232, 38.966373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440487, 37.664928, 39.284069>,  <33.171402, 37.365009, 39.109440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440487, 37.664928, 39.284069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435822, 37.266151, 39.314968>,  <32.433022, 37.026886, 39.333508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435822, 37.266151, 39.314968>,  <32.440487, 37.664928, 39.284069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435822, 37.266151, 39.314968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486818, 0.073145, 0.870436,
		-0.873426, -0.027454, -0.486183,
		-0.011665, -0.996943, 0.077252,
		32.432323, 36.967068, 39.338142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870222, 37.622051, 39.528164>,  <32.440487, 37.664928, 39.284069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870222, 37.622051, 39.528164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028236, 37.257641, 39.575466>,  <32.123043, 37.038994, 39.603848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028236, 37.257641, 39.575466>,  <31.870222, 37.622051, 39.528164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028236, 37.257641, 39.575466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563861, -0.138824, 0.814118,
		-0.725265, -0.388283, -0.568531,
		0.395034, -0.911023, 0.118254,
		32.146748, 36.984333, 39.610943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331007, 37.135895, 39.632545>,  <31.870222, 37.622051, 39.528164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331007, 37.135895, 39.632545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645912, 36.966415, 39.811741>,  <31.834856, 36.864727, 39.919258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645912, 36.966415, 39.811741>,  <31.331007, 37.135895, 39.632545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645912, 36.966415, 39.811741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560993, -0.190604, 0.805579,
		-0.255936, -0.885521, -0.387749,
		0.787263, -0.423701, 0.447989,
		31.882092, 36.839306, 39.946136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082815, 36.583645, 39.995213>,  <31.331007, 37.135895, 39.632545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082815, 36.583645, 39.995213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437929, 36.638077, 40.171089>,  <31.650997, 36.670734, 40.276615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437929, 36.638077, 40.171089>,  <31.082815, 36.583645, 39.995213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437929, 36.638077, 40.171089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397964, -0.252980, 0.881831,
		0.231227, -0.957854, -0.170438,
		0.887783, 0.136075, 0.439687,
		31.704264, 36.678898, 40.302994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130198, 35.998398, 40.480202>,  <31.082815, 36.583645, 39.995213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130198, 35.998398, 40.480202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390818, 36.266914, 40.621540>,  <31.547190, 36.428024, 40.706345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390818, 36.266914, 40.621540>,  <31.130198, 35.998398, 40.480202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390818, 36.266914, 40.621540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343231, -0.154522, 0.926453,
		0.676518, -0.724909, 0.129729,
		0.651549, 0.671289, 0.353349,
		31.586283, 36.468300, 40.727543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332962, 35.635143, 41.026577>,  <31.130198, 35.998398, 40.480202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332962, 35.635143, 41.026577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448111, 36.005180, 41.125637>,  <31.517200, 36.227203, 41.185074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448111, 36.005180, 41.125637>,  <31.332962, 35.635143, 41.026577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448111, 36.005180, 41.125637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444601, -0.099937, 0.890136,
		0.848210, -0.366349, 0.382529,
		0.287872, 0.925095, 0.247647,
		31.534472, 36.282707, 41.199932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861216, 35.603485, 41.549782>,  <31.332962, 35.635143, 41.026577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861216, 35.603485, 41.549782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649437, 35.942104, 41.571854>,  <31.522369, 36.145275, 41.585098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649437, 35.942104, 41.571854>,  <31.861216, 35.603485, 41.549782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649437, 35.942104, 41.571854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318817, -0.258830, 0.911791,
		0.786155, 0.465153, 0.406930,
		-0.529449, 0.846545, 0.055182,
		31.490602, 36.196068, 41.588409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020046, 35.931484, 42.155136>,  <31.861216, 35.603485, 41.549782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020046, 35.931484, 42.155136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709093, 36.176346, 42.097252>,  <31.522520, 36.323261, 42.062523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709093, 36.176346, 42.097252>,  <32.020046, 35.931484, 42.155136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709093, 36.176346, 42.097252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379685, -0.273235, 0.883845,
		0.501511, 0.742030, 0.444835,
		-0.777384, 0.612155, -0.144707,
		31.475878, 36.359993, 42.053841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892473, 36.207993, 42.805443>,  <32.020046, 35.931484, 42.155136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892473, 36.207993, 42.805443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568861, 36.325283, 42.601685>,  <31.374693, 36.395657, 42.479431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568861, 36.325283, 42.601685>,  <31.892473, 36.207993, 42.805443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568861, 36.325283, 42.601685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575570, -0.219621, 0.787709,
		0.119105, 0.930475, 0.346454,
		-0.809032, 0.293228, -0.509396,
		31.326151, 36.413250, 42.448868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534527, 36.725544, 43.172836>,  <31.892473, 36.207993, 42.805443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534527, 36.725544, 43.172836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261129, 36.547523, 42.941402>,  <31.097090, 36.440712, 42.802540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261129, 36.547523, 42.941402>,  <31.534527, 36.725544, 43.172836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261129, 36.547523, 42.941402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489005, -0.309317, 0.815596,
		-0.541949, 0.840388, -0.006216,
		-0.683495, -0.445051, -0.578588,
		31.056082, 36.414009, 42.767826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938799, 36.985241, 43.353477>,  <31.534527, 36.725544, 43.172836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938799, 36.985241, 43.353477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822786, 36.642796, 43.182388>,  <30.753180, 36.437328, 43.079735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822786, 36.642796, 43.182388>,  <30.938799, 36.985241, 43.353477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822786, 36.642796, 43.182388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527236, -0.230054, 0.817984,
		-0.798689, 0.462750, -0.384653,
		-0.290032, -0.856118, -0.427720,
		30.735777, 36.385960, 43.054073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192247, 36.947334, 43.480801>,  <30.938799, 36.985241, 43.353477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192247, 36.947334, 43.480801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287674, 36.567757, 43.398254>,  <30.344929, 36.340008, 43.348728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287674, 36.567757, 43.398254>,  <30.192247, 36.947334, 43.480801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287674, 36.567757, 43.398254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593131, -0.310638, 0.742765,
		-0.768949, -0.054797, -0.636958,
		0.238565, -0.948948, -0.206362,
		30.359243, 36.283073, 43.336346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565182, 36.673122, 43.361511>,  <30.192247, 36.947334, 43.480801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565182, 36.673122, 43.361511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823076, 36.385529, 43.465336>,  <29.977814, 36.212971, 43.527630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823076, 36.385529, 43.465336>,  <29.565182, 36.673122, 43.361511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823076, 36.385529, 43.465336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584566, -0.244969, 0.773481,
		-0.492540, -0.650420, -0.578237,
		0.644737, -0.718988, 0.259556,
		30.016499, 36.169834, 43.543201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160254, 36.172901, 43.694870>,  <29.565182, 36.673122, 43.361511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160254, 36.172901, 43.694870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529003, 36.054680, 43.795109>,  <29.750252, 35.983746, 43.855251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529003, 36.054680, 43.795109>,  <29.160254, 36.172901, 43.694870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529003, 36.054680, 43.795109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343497, -0.324013, 0.881490,
		-0.179332, -0.898701, -0.400221,
		0.921873, -0.295554, 0.250595,
		29.805565, 35.966015, 43.870289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044743, 35.549351, 44.080429>,  <29.160254, 36.172901, 43.694870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044743, 35.549351, 44.080429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420576, 35.654793, 44.167789>,  <29.646076, 35.718056, 44.220203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420576, 35.654793, 44.167789>,  <29.044743, 35.549351, 44.080429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420576, 35.654793, 44.167789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128036, -0.321075, 0.938359,
		0.317476, -0.909629, -0.267926,
		0.939583, 0.263602, 0.218399,
		29.702452, 35.733871, 44.233311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458557, 34.930702, 44.274612>,  <29.044743, 35.549351, 44.080429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458557, 34.930702, 44.274612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616365, 35.256466, 44.444832>,  <29.711050, 35.451923, 44.546963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616365, 35.256466, 44.444832>,  <29.458557, 34.930702, 44.274612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616365, 35.256466, 44.444832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216416, -0.367738, 0.904397,
		0.893037, -0.448901, 0.031169,
		0.394523, 0.814406, 0.425553,
		29.734722, 35.500786, 44.572498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867464, 34.785873, 44.933102>,  <29.458557, 34.930702, 44.274612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867464, 34.785873, 44.933102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769711, 35.172588, 44.963017>,  <29.711060, 35.404617, 44.980965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769711, 35.172588, 44.963017>,  <29.867464, 34.785873, 44.933102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769711, 35.172588, 44.963017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124019, -0.107657, 0.986423,
		0.961715, 0.231789, 0.146210,
		-0.244382, 0.966791, 0.074789,
		29.696396, 35.462624, 44.985455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285088, 35.086983, 45.401554>,  <29.867464, 34.785873, 44.933102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285088, 35.086983, 45.401554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975508, 35.340176, 45.394253>,  <29.789761, 35.492092, 45.389874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975508, 35.340176, 45.394253>,  <30.285088, 35.086983, 45.401554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975508, 35.340176, 45.394253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148273, -0.153122, 0.977020,
		0.615647, 0.758868, 0.212363,
		-0.773947, 0.632987, -0.018251,
		29.743324, 35.530071, 45.388779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294228, 35.459187, 46.076996>,  <30.285088, 35.086983, 45.401554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294228, 35.459187, 46.076996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910511, 35.523682, 45.984245>,  <29.680281, 35.562378, 45.928596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910511, 35.523682, 45.984245>,  <30.294228, 35.459187, 46.076996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910511, 35.523682, 45.984245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249511, -0.099202, 0.963277,
		0.132317, 0.981917, 0.135394,
		-0.959290, 0.161240, -0.231873,
		29.622725, 35.572052, 45.914684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927818, 35.991035, 46.507130>,  <30.294228, 35.459187, 46.076996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927818, 35.991035, 46.507130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623972, 35.754917, 46.397930>,  <29.441664, 35.613247, 46.332409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623972, 35.754917, 46.397930>,  <29.927818, 35.991035, 46.507130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623972, 35.754917, 46.397930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295521, -0.060648, 0.953409,
		-0.579351, 0.804905, -0.128376,
		-0.759618, -0.590297, -0.273002,
		29.396086, 35.577827, 46.316029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345694, 36.290249, 46.828896>,  <29.927818, 35.991035, 46.507130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345694, 36.290249, 46.828896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240604, 35.905918, 46.793602>,  <29.177551, 35.675320, 46.772427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240604, 35.905918, 46.793602>,  <29.345694, 36.290249, 46.828896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240604, 35.905918, 46.793602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111849, -0.060505, 0.991882,
		-0.958367, 0.270457, -0.091572,
		-0.262721, -0.960829, -0.088236,
		29.161789, 35.617668, 46.767132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702770, 36.185726, 47.227303>,  <29.345694, 36.290249, 46.828896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702770, 36.185726, 47.227303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822058, 35.805534, 47.192287>,  <28.893631, 35.577419, 47.171276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822058, 35.805534, 47.192287>,  <28.702770, 36.185726, 47.227303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822058, 35.805534, 47.192287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268632, -0.171583, 0.947838,
		-0.915916, -0.259146, -0.306497,
		0.298218, -0.950475, -0.087540,
		28.911524, 35.520393, 47.166027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115540, 35.653843, 47.372105>,  <28.702770, 36.185726, 47.227303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115540, 35.653843, 47.372105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462673, 35.469154, 47.445503>,  <28.670954, 35.358341, 47.489540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462673, 35.469154, 47.445503>,  <28.115540, 35.653843, 47.372105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462673, 35.469154, 47.445503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232221, -0.050445, 0.971354,
		-0.439242, -0.885588, -0.151000,
		0.867836, -0.461725, 0.183494,
		28.723024, 35.330635, 47.500553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045185, 35.238899, 47.969067>,  <28.115540, 35.653843, 47.372105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045185, 35.238899, 47.969067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444075, 35.268139, 47.963417>,  <28.683409, 35.285683, 47.960026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444075, 35.268139, 47.963417>,  <28.045185, 35.238899, 47.969067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444075, 35.268139, 47.963417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025642, -0.159072, 0.986934,
		0.069898, -0.984557, -0.160505,
		0.997224, 0.073100, -0.014127,
		28.743242, 35.290070, 47.959179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327650, 34.685635, 48.316795>,  <28.045185, 35.238899, 47.969067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327650, 34.685635, 48.316795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614552, 34.964180, 48.326729>,  <28.786694, 35.131310, 48.332687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614552, 34.964180, 48.326729>,  <28.327650, 34.685635, 48.316795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614552, 34.964180, 48.326729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126610, -0.165289, 0.978085,
		0.685212, -0.698392, -0.206722,
		0.717255, 0.696368, 0.024835,
		28.829727, 35.173092, 48.334179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824596, 34.366440, 48.734161>,  <28.327650, 34.685635, 48.316795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824596, 34.366440, 48.734161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913490, 34.756428, 48.736935>,  <28.966825, 34.990421, 48.738598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913490, 34.756428, 48.736935>,  <28.824596, 34.366440, 48.734161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913490, 34.756428, 48.736935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337347, -0.083562, 0.937664,
		0.914773, -0.206042, -0.347473,
		0.222233, 0.974969, 0.006932,
		28.980160, 35.048920, 48.739014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458040, 34.389496, 48.995312>,  <28.824596, 34.366440, 48.734161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458040, 34.389496, 48.995312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314054, 34.758663, 49.049942>,  <29.227663, 34.980164, 49.082718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314054, 34.758663, 49.049942>,  <29.458040, 34.389496, 48.995312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314054, 34.758663, 49.049942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468032, 0.052002, 0.882180,
		0.807077, 0.381472, -0.450673,
		-0.359963, 0.922916, 0.136571,
		29.206066, 35.035538, 49.090912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019207, 34.770912, 49.338062>,  <29.458040, 34.389496, 48.995312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019207, 34.770912, 49.338062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705069, 35.010014, 49.402470>,  <29.516586, 35.153473, 49.441113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705069, 35.010014, 49.402470>,  <30.019207, 34.770912, 49.338062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705069, 35.010014, 49.402470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273735, 0.102025, 0.956379,
		0.555250, 0.795163, -0.243750,
		-0.785345, 0.597752, 0.161014,
		29.469465, 35.189339, 49.450775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303291, 35.369293, 49.626476>,  <30.019207, 34.770912, 49.338062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303291, 35.369293, 49.626476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923887, 35.321259, 49.743713>,  <29.696245, 35.292439, 49.814056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923887, 35.321259, 49.743713>,  <30.303291, 35.369293, 49.626476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923887, 35.321259, 49.743713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276654, 0.136476, 0.951229,
		-0.154234, 0.983337, -0.096225,
		-0.948512, -0.120091, 0.293093,
		29.639334, 35.285233, 49.831642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218529, 35.811588, 50.093697>,  <30.303291, 35.369293, 49.626476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218529, 35.811588, 50.093697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878662, 35.615444, 50.171272>,  <29.674742, 35.497757, 50.217819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878662, 35.615444, 50.171272>,  <30.218529, 35.811588, 50.093697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878662, 35.615444, 50.171272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128664, 0.163890, 0.978052,
		-0.511380, 0.855973, -0.076161,
		-0.849668, -0.490357, 0.193943,
		29.623762, 35.468338, 50.229454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862198, 36.189095, 50.620178>,  <30.218529, 35.811588, 50.093697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862198, 36.189095, 50.620178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716600, 35.816872, 50.636059>,  <29.629242, 35.593536, 50.645588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716600, 35.816872, 50.636059>,  <29.862198, 36.189095, 50.620178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716600, 35.816872, 50.636059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202756, 0.120767, 0.971754,
		-0.909065, 0.345661, -0.232634,
		-0.363992, -0.930556, 0.039700,
		29.607403, 35.537704, 50.647968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240887, 36.241619, 50.965935>,  <29.862198, 36.189095, 50.620178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240887, 36.241619, 50.965935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375982, 35.867271, 51.006084>,  <29.457039, 35.642662, 51.030174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375982, 35.867271, 51.006084>,  <29.240887, 36.241619, 50.965935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375982, 35.867271, 51.006084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063211, 0.083852, 0.994471,
		-0.939115, -0.342217, -0.030837,
		0.337739, -0.935872, 0.100378,
		29.477304, 35.586510, 51.036198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885208, 35.974300, 51.574703>,  <29.240887, 36.241619, 50.965935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885208, 35.974300, 51.574703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186724, 35.720165, 51.507591>,  <29.367634, 35.567684, 51.467323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186724, 35.720165, 51.507591>,  <28.885208, 35.974300, 51.574703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186724, 35.720165, 51.507591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134065, -0.101263, 0.985785,
		-0.643293, -0.765569, 0.008845,
		0.753791, -0.635334, -0.167778,
		29.412861, 35.529564, 51.457256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808170, 35.356152, 52.058323>,  <28.885208, 35.974300, 51.574703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808170, 35.356152, 52.058323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194221, 35.438007, 51.993023>,  <29.425852, 35.487122, 51.953842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194221, 35.438007, 51.993023>,  <28.808170, 35.356152, 52.058323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194221, 35.438007, 51.993023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179245, -0.062123, 0.981841,
		0.190786, -0.976864, -0.096638,
		0.965128, 0.204644, -0.163246,
		29.483761, 35.499401, 51.944050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153994, 34.733269, 52.294685>,  <28.808170, 35.356152, 52.058323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153994, 34.733269, 52.294685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325796, 35.090103, 52.350834>,  <29.428877, 35.304203, 52.384521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325796, 35.090103, 52.350834>,  <29.153994, 34.733269, 52.294685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325796, 35.090103, 52.350834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040260, -0.174198, 0.983887,
		0.902166, -0.416934, -0.110735,
		0.429506, 0.892088, 0.140370,
		29.454647, 35.357731, 52.392944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463375, 34.523960, 52.791367>,  <29.153994, 34.733269, 52.294685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463375, 34.523960, 52.791367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487831, 34.923058, 52.802475>,  <29.502504, 35.162518, 52.809139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487831, 34.923058, 52.802475>,  <29.463375, 34.523960, 52.791367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487831, 34.923058, 52.802475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016624, -0.026800, 0.999503,
		0.997991, -0.061573, 0.014948,
		0.061142, 0.997743, 0.027769,
		29.506174, 35.222382, 52.810806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657627, 34.691360, 53.427799>,  <29.463375, 34.523960, 52.791367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657627, 34.691360, 53.427799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580868, 35.059902, 53.292580>,  <29.534811, 35.281029, 53.211449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580868, 35.059902, 53.292580>,  <29.657627, 34.691360, 53.427799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580868, 35.059902, 53.292580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301037, 0.383109, 0.873272,
		0.934105, 0.065815, -0.350880,
		-0.191900, 0.921356, -0.338051,
		29.523298, 35.336308, 53.191166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482721, 33.863190, 53.425060>,  <29.657627, 34.691360, 53.427799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482721, 33.863190, 53.425060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840117, 33.826275, 53.600861>,  <30.054554, 33.804127, 53.706341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840117, 33.826275, 53.600861>,  <29.482721, 33.863190, 53.425060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840117, 33.826275, 53.600861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021665, -0.968658, -0.247452,
		0.448567, 0.230617, -0.863483,
		0.893486, -0.092291, 0.439505,
		30.108162, 33.798588, 53.732712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842072, 33.659477, 52.922287>,  <29.482721, 33.863190, 53.425060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842072, 33.659477, 52.922287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993307, 33.530533, 53.269421>,  <30.084047, 33.453167, 53.477699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993307, 33.530533, 53.269421>,  <29.842072, 33.659477, 52.922287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993307, 33.530533, 53.269421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045731, -0.942778, -0.330270,
		0.924640, 0.085184, -0.371194,
		0.378087, -0.322356, 0.867834,
		30.106733, 33.433826, 53.529770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544592, 33.377357, 52.826881>,  <29.842072, 33.659477, 52.922287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544592, 33.377357, 52.826881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329912, 33.213715, 53.122066>,  <30.201105, 33.115528, 53.299175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329912, 33.213715, 53.122066>,  <30.544592, 33.377357, 52.826881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329912, 33.213715, 53.122066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184515, -0.910331, -0.370474,
		0.823352, -0.062668, 0.564061,
		-0.536699, -0.409108, 0.737960,
		30.168901, 33.090981, 53.343456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928425, 32.900185, 53.260609>,  <30.544592, 33.377357, 52.826881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928425, 32.900185, 53.260609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548923, 32.780025, 53.299870>,  <30.321222, 32.707932, 53.323425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548923, 32.780025, 53.299870>,  <30.928425, 32.900185, 53.260609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548923, 32.780025, 53.299870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272691, -0.935147, -0.226139,
		0.159719, -0.187784, 0.969137,
		-0.948751, -0.300394, 0.098154,
		30.264297, 32.689907, 53.329315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432489, 32.987053, 52.706223>,  <30.928425, 32.900185, 53.260609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432489, 32.987053, 52.706223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054302, 32.859818, 52.734253>,  <30.827391, 32.783474, 52.751072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054302, 32.859818, 52.734253>,  <31.432489, 32.987053, 52.706223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054302, 32.859818, 52.734253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062410, -0.034253, -0.997463,
		0.319687, -0.947440, 0.012533,
		-0.945466, -0.318094, 0.070080,
		30.770662, 32.764389, 52.755276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320162, 32.367386, 52.268085>,  <31.432489, 32.987053, 52.706223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320162, 32.367386, 52.268085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966158, 32.551060, 52.298820>,  <30.753756, 32.661263, 52.317261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966158, 32.551060, 52.298820>,  <31.320162, 32.367386, 52.268085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966158, 32.551060, 52.298820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151174, -0.127328, -0.980273,
		-0.440343, -0.879168, 0.182103,
		-0.885011, 0.459186, 0.076839,
		30.700655, 32.688816, 52.321873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840363, 31.939703, 51.944763>,  <31.320162, 32.367386, 52.268085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840363, 31.939703, 51.944763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701525, 32.313938, 51.918842>,  <30.618221, 32.538479, 51.903290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701525, 32.313938, 51.918842>,  <30.840363, 31.939703, 51.944763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701525, 32.313938, 51.918842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246319, -0.157621, -0.956286,
		-0.904904, -0.315961, 0.285163,
		-0.347097, 0.935588, -0.064804,
		30.597395, 32.594616, 51.899403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276218, 31.821560, 51.575314>,  <30.840363, 31.939703, 51.944763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276218, 31.821560, 51.575314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358175, 32.209503, 51.522552>,  <30.407349, 32.442268, 51.490894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358175, 32.209503, 51.522552>,  <30.276218, 31.821560, 51.575314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358175, 32.209503, 51.522552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494907, -0.013614, -0.868839,
		-0.844444, 0.243299, 0.477200,
		0.204891, 0.969856, -0.131906,
		30.419643, 32.500462, 51.482979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589512, 32.226986, 51.213856>,  <30.276218, 31.821560, 51.575314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589512, 32.226986, 51.213856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906725, 32.463100, 51.153637>,  <30.097052, 32.604771, 51.117504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906725, 32.463100, 51.153637>,  <29.589512, 32.226986, 51.213856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906725, 32.463100, 51.153637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296935, 0.158769, -0.941606,
		-0.531913, 0.791426, 0.301184,
		0.793031, 0.590285, -0.150551,
		30.144634, 32.640186, 51.108471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275911, 32.722073, 50.776917>,  <29.589512, 32.226986, 51.213856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275911, 32.722073, 50.776917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674158, 32.709660, 50.741634>,  <29.913107, 32.702213, 50.720463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674158, 32.709660, 50.741634>,  <29.275911, 32.722073, 50.776917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674158, 32.709660, 50.741634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085294, 0.085223, -0.992704,
		0.038321, 0.995878, 0.082203,
		0.995619, -0.031030, -0.088208,
		29.972843, 32.700352, 50.715172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397291, 33.179890, 50.357285>,  <29.275911, 32.722073, 50.776917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397291, 33.179890, 50.357285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729973, 32.960655, 50.321808>,  <29.929583, 32.829113, 50.300522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729973, 32.960655, 50.321808>,  <29.397291, 33.179890, 50.357285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729973, 32.960655, 50.321808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051507, 0.235218, -0.970577,
		0.552823, 0.802666, 0.223862,
		0.831705, -0.548088, -0.088691,
		29.979485, 32.796230, 50.295200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815140, 33.586468, 49.941517>,  <29.397291, 33.179890, 50.357285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815140, 33.586468, 49.941517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935246, 33.207207, 49.899845>,  <30.007309, 32.979652, 49.874844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935246, 33.207207, 49.899845>,  <29.815140, 33.586468, 49.941517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935246, 33.207207, 49.899845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043410, 0.095521, -0.994480,
		0.952868, 0.303129, -0.012478,
		0.300263, -0.948150, -0.104178,
		30.025324, 32.922760, 49.868591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408901, 33.647442, 49.570595>,  <29.815140, 33.586468, 49.941517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408901, 33.647442, 49.570595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323172, 33.260342, 49.517639>,  <30.271734, 33.028080, 49.485867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323172, 33.260342, 49.517639>,  <30.408901, 33.647442, 49.570595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323172, 33.260342, 49.517639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150174, 0.101280, -0.983458,
		0.965149, -0.230659, 0.123624,
		-0.214323, -0.967749, -0.132390,
		30.258875, 32.970016, 49.477921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865070, 33.418694, 49.154274>,  <30.408901, 33.647442, 49.570595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865070, 33.418694, 49.154274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603117, 33.120586, 49.104156>,  <30.445946, 32.941723, 49.074085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603117, 33.120586, 49.104156>,  <30.865070, 33.418694, 49.154274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603117, 33.120586, 49.104156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266080, -0.072205, -0.961243,
		0.707341, -0.662839, 0.245588,
		-0.654882, -0.745273, -0.125294,
		30.406652, 32.897003, 49.066566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276964, 32.842415, 48.976128>,  <30.865070, 33.418694, 49.154274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276964, 32.842415, 48.976128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906155, 32.758713, 48.851650>,  <30.683668, 32.708492, 48.776962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906155, 32.758713, 48.851650>,  <31.276964, 32.842415, 48.976128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906155, 32.758713, 48.851650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359158, -0.256735, -0.897270,
		0.107861, -0.943558, 0.313154,
		-0.927023, -0.209252, -0.311194,
		30.628048, 32.695938, 48.758293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269920, 32.173401, 48.598331>,  <31.276964, 32.842415, 48.976128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269920, 32.173401, 48.598331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961821, 32.396469, 48.474575>,  <30.776960, 32.530312, 48.400322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961821, 32.396469, 48.474575>,  <31.269920, 32.173401, 48.598331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961821, 32.396469, 48.474575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355886, -0.026705, -0.934148,
		-0.529211, -0.829631, -0.177899,
		-0.770247, 0.557673, -0.309386,
		30.730747, 32.563770, 48.381760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331514, 32.061691, 47.968353>,  <31.269920, 32.173401, 48.598331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331514, 32.061691, 47.968353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057714, 32.351486, 47.935928>,  <30.893435, 32.525364, 47.916473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057714, 32.351486, 47.935928>,  <31.331514, 32.061691, 47.968353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057714, 32.351486, 47.935928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260993, 0.139708, -0.955178,
		-0.680691, -0.674978, -0.284718,
		-0.684501, 0.724490, -0.081067,
		30.852364, 32.568832, 47.911610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946245, 31.881413, 47.343548>,  <31.331514, 32.061691, 47.968353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946245, 31.881413, 47.343548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888563, 32.270817, 47.414524>,  <30.853954, 32.504459, 47.457111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888563, 32.270817, 47.414524>,  <30.946245, 31.881413, 47.343548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888563, 32.270817, 47.414524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274061, 0.211591, -0.938147,
		-0.950839, -0.086656, -0.297313,
		-0.144205, 0.973509, 0.177440,
		30.845303, 32.562870, 47.467754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434389, 32.130409, 46.846596>,  <30.946245, 31.881413, 47.343548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434389, 32.130409, 46.846596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641218, 32.454433, 46.957188>,  <30.765316, 32.648846, 47.023544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641218, 32.454433, 46.957188>,  <30.434389, 32.130409, 46.846596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641218, 32.454433, 46.957188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171162, 0.218633, -0.960678,
		-0.838653, 0.544064, -0.025602,
		0.517074, 0.810058, 0.276480,
		30.796341, 32.697453, 47.040131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410791, 32.689243, 46.344032>,  <30.434389, 32.130409, 46.846596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410791, 32.689243, 46.344032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711044, 32.853657, 46.550953>,  <30.891195, 32.952305, 46.675106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711044, 32.853657, 46.550953>,  <30.410791, 32.689243, 46.344032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711044, 32.853657, 46.550953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352789, 0.412652, -0.839796,
		-0.558654, 0.812876, 0.164740,
		0.750630, 0.411037, 0.517303,
		30.936234, 32.976967, 46.706142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387245, 33.404636, 46.254337>,  <30.410791, 32.689243, 46.344032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387245, 33.404636, 46.254337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776566, 33.347691, 46.326355>,  <31.010159, 33.313522, 46.369564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776566, 33.347691, 46.326355>,  <30.387245, 33.404636, 46.254337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776566, 33.347691, 46.326355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221716, 0.380279, -0.897903,
		0.059363, 0.913849, 0.401691,
		0.973303, -0.142364, 0.180040,
		31.068556, 33.304981, 46.380367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665894, 33.998222, 45.952225>,  <30.387245, 33.404636, 46.254337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665894, 33.998222, 45.952225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998777, 33.781731, 46.000385>,  <31.198507, 33.651836, 46.029282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998777, 33.781731, 46.000385>,  <30.665894, 33.998222, 45.952225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998777, 33.781731, 46.000385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356972, 0.356855, -0.863264,
		0.424260, 0.761397, 0.490183,
		0.832211, -0.541230, 0.120398,
		31.248440, 33.619362, 46.036507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203808, 34.406670, 45.694786>,  <30.665894, 33.998222, 45.952225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203808, 34.406670, 45.694786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362141, 34.039452, 45.703831>,  <31.457140, 33.819122, 45.709259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362141, 34.039452, 45.703831>,  <31.203808, 34.406670, 45.694786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362141, 34.039452, 45.703831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524093, 0.205612, -0.826468,
		0.754085, 0.338995, 0.562529,
		0.395832, -0.918045, 0.022616,
		31.480890, 33.764038, 45.710617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941004, 34.480755, 45.606995>,  <31.203808, 34.406670, 45.694786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941004, 34.480755, 45.606995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869839, 34.103012, 45.496342>,  <31.827139, 33.876366, 45.429951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869839, 34.103012, 45.496342>,  <31.941004, 34.480755, 45.606995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869839, 34.103012, 45.496342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544218, 0.139791, -0.827215,
		0.819862, -0.297724, 0.489068,
		-0.177914, -0.944362, -0.276636,
		31.816463, 33.819702, 45.413349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561676, 34.124405, 45.484928>,  <31.941004, 34.480755, 45.606995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561676, 34.124405, 45.484928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293369, 33.918278, 45.271564>,  <32.132385, 33.794601, 45.143547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293369, 33.918278, 45.271564>,  <32.561676, 34.124405, 45.484928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293369, 33.918278, 45.271564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567388, 0.106645, -0.816515,
		0.477648, -0.850340, 0.220850,
		-0.670763, -0.515315, -0.533412,
		32.092140, 33.763683, 45.111542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007401, 33.740093, 45.044285>,  <32.561676, 34.124405, 45.484928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007401, 33.740093, 45.044285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634151, 33.726418, 44.901115>,  <32.410202, 33.718212, 44.815212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634151, 33.726418, 44.901115>,  <33.007401, 33.740093, 45.044285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634151, 33.726418, 44.901115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358252, -0.003855, -0.933617,
		0.030545, -0.999408, 0.015848,
		-0.933125, -0.034195, -0.357922,
		32.354214, 33.716160, 44.793739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089756, 33.183762, 44.628609>,  <33.007401, 33.740093, 45.044285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089756, 33.183762, 44.628609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799339, 33.435616, 44.518032>,  <32.625088, 33.586727, 44.451687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799339, 33.435616, 44.518032>,  <33.089756, 33.183762, 44.628609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799339, 33.435616, 44.518032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395087, 0.052916, -0.917119,
		-0.562824, -0.775085, -0.287181,
		-0.726041, 0.629637, -0.276443,
		32.581528, 33.624508, 44.435101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020451, 32.994705, 43.908157>,  <33.089756, 33.183762, 44.628609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020451, 32.994705, 43.908157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847309, 33.355190, 43.916656>,  <32.743423, 33.571480, 43.921757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847309, 33.355190, 43.916656>,  <33.020451, 32.994705, 43.908157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847309, 33.355190, 43.916656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329979, 0.180341, -0.926602,
		-0.838897, -0.394075, -0.375443,
		-0.432858, 0.901211, 0.021251,
		32.717453, 33.625553, 43.923031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659885, 33.016171, 43.276794>,  <33.020451, 32.994705, 43.908157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659885, 33.016171, 43.276794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706841, 33.395187, 43.395706>,  <32.735016, 33.622597, 43.467052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706841, 33.395187, 43.395706>,  <32.659885, 33.016171, 43.276794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706841, 33.395187, 43.395706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321834, 0.246895, -0.914038,
		-0.939490, 0.202975, -0.275969,
		0.117391, 0.947546, 0.297280,
		32.742058, 33.679451, 43.484890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504486, 33.426003, 42.665749>,  <32.659885, 33.016171, 43.276794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504486, 33.426003, 42.665749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674328, 33.686905, 42.916912>,  <32.776234, 33.843445, 43.067612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674328, 33.686905, 42.916912>,  <32.504486, 33.426003, 42.665749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674328, 33.686905, 42.916912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390144, 0.494025, -0.776998,
		-0.817007, 0.574893, -0.044709,
		0.424603, 0.652256, 0.627913,
		32.801708, 33.882580, 43.105286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291767, 34.108719, 42.496624>,  <32.504486, 33.426003, 42.665749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291767, 34.108719, 42.496624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647041, 34.104198, 42.680363>,  <32.860207, 34.101486, 42.790607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647041, 34.104198, 42.680363>,  <32.291767, 34.108719, 42.496624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647041, 34.104198, 42.680363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432844, 0.356041, -0.828179,
		-0.154190, 0.934402, 0.321120,
		0.888184, -0.011298, 0.459349,
		32.913498, 34.100807, 42.818169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723873, 34.663967, 42.168774>,  <32.291767, 34.108719, 42.496624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723873, 34.663967, 42.168774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003460, 34.455730, 42.364906>,  <33.171211, 34.330788, 42.482586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003460, 34.455730, 42.364906>,  <32.723873, 34.663967, 42.168774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003460, 34.455730, 42.364906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642801, 0.156836, -0.749806,
		0.313444, 0.839276, 0.444263,
		0.698970, -0.520595, 0.490328,
		33.213150, 34.299553, 42.512005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175964, 35.112194, 42.200668>,  <32.723873, 34.663967, 42.168774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175964, 35.112194, 42.200668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372654, 34.765717, 42.236267>,  <33.490665, 34.557831, 42.257626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372654, 34.765717, 42.236267>,  <33.175964, 35.112194, 42.200668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372654, 34.765717, 42.236267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601677, 0.264113, -0.753809,
		0.629440, 0.424209, 0.651039,
		0.491720, -0.866193, 0.088994,
		33.520168, 34.505859, 42.262966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799324, 35.288734, 42.165821>,  <33.175964, 35.112194, 42.200668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799324, 35.288734, 42.165821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837082, 34.896709, 42.095894>,  <33.859737, 34.661495, 42.053936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837082, 34.896709, 42.095894>,  <33.799324, 35.288734, 42.165821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837082, 34.896709, 42.095894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637111, 0.194406, -0.745852,
		0.764970, -0.040977, 0.642761,
		0.094394, -0.980065, -0.174822,
		33.865398, 34.602692, 42.043446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451134, 35.200241, 41.952625>,  <33.799324, 35.288734, 42.165821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451134, 35.200241, 41.952625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259888, 34.877625, 41.813545>,  <34.145138, 34.684055, 41.730099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259888, 34.877625, 41.813545>,  <34.451134, 35.200241, 41.952625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259888, 34.877625, 41.813545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550798, 0.033015, -0.833986,
		0.684123, -0.590255, 0.428456,
		-0.478119, -0.806541, -0.347697,
		34.116451, 34.635662, 41.709236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986752, 34.847813, 41.689087>,  <34.451134, 35.200241, 41.952625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986752, 34.847813, 41.689087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669498, 34.681026, 41.511509>,  <34.479149, 34.580956, 41.404961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669498, 34.681026, 41.511509>,  <34.986752, 34.847813, 41.689087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669498, 34.681026, 41.511509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578085, -0.285906, -0.764248,
		0.191740, -0.862784, 0.467803,
		-0.793129, -0.416967, -0.443943,
		34.431561, 34.555935, 41.378326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206825, 34.125244, 41.406803>,  <34.986752, 34.847813, 41.689087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206825, 34.125244, 41.406803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865471, 34.217724, 41.219925>,  <34.660656, 34.273212, 41.107796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865471, 34.217724, 41.219925>,  <35.206825, 34.125244, 41.406803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865471, 34.217724, 41.219925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400890, -0.281787, -0.871713,
		-0.333189, -0.931205, 0.147789,
		-0.853388, 0.231199, -0.467199,
		34.609455, 34.287083, 41.079765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176918, 33.644066, 40.876873>,  <35.206825, 34.125244, 41.406803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176918, 33.644066, 40.876873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936451, 33.939365, 40.754505>,  <34.792171, 34.116543, 40.681084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936451, 33.939365, 40.754505>,  <35.176918, 33.644066, 40.876873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936451, 33.939365, 40.754505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382392, -0.070384, -0.921315,
		-0.701690, -0.670848, -0.239987,
		-0.601171, 0.738247, -0.305915,
		34.756100, 34.160839, 40.662731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698013, 33.399750, 40.444515>,  <35.176918, 33.644066, 40.876873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698013, 33.399750, 40.444515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756809, 33.778427, 40.329853>,  <34.792088, 34.005634, 40.261055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756809, 33.778427, 40.329853>,  <34.698013, 33.399750, 40.444515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756809, 33.778427, 40.329853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233946, -0.314854, -0.919857,
		-0.961074, 0.068149, -0.267755,
		0.146991, 0.946690, -0.286655,
		34.800907, 34.062435, 40.243858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263042, 33.512634, 39.804935>,  <34.698013, 33.399750, 40.444515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263042, 33.512634, 39.804935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541996, 33.799160, 39.795597>,  <34.709370, 33.971077, 39.789993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541996, 33.799160, 39.795597>,  <34.263042, 33.512634, 39.804935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541996, 33.799160, 39.795597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153504, -0.181111, -0.971409,
		-0.700066, 0.673861, -0.236261,
		0.697384, 0.716318, -0.023349,
		34.751209, 34.014057, 39.788593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141052, 33.763435, 39.231426>,  <34.263042, 33.512634, 39.804935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141052, 33.763435, 39.231426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499645, 33.923744, 39.307014>,  <34.714802, 34.019928, 39.352367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499645, 33.923744, 39.307014>,  <34.141052, 33.763435, 39.231426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499645, 33.923744, 39.307014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269289, -0.154128, -0.950646,
		-0.351866, 0.903121, -0.246096,
		0.896478, 0.400771, 0.188968,
		34.768589, 34.043976, 39.363705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228901, 34.258564, 38.665844>,  <34.141052, 33.763435, 39.231426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228901, 34.258564, 38.665844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594467, 34.190647, 38.813316>,  <34.813808, 34.149899, 38.901798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594467, 34.190647, 38.813316>,  <34.228901, 34.258564, 38.665844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594467, 34.190647, 38.813316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350974, -0.125685, -0.927912,
		0.203887, 0.977433, -0.055274,
		0.913919, -0.169789, 0.368679,
		34.868641, 34.139709, 38.923920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686039, 34.616745, 38.260540>,  <34.228901, 34.258564, 38.665844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686039, 34.616745, 38.260540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915039, 34.330303, 38.420258>,  <35.052441, 34.158436, 38.516087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915039, 34.330303, 38.420258>,  <34.686039, 34.616745, 38.260540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915039, 34.330303, 38.420258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484676, -0.097219, -0.869274,
		0.661312, 0.691187, 0.291422,
		0.572499, -0.716107, 0.399293,
		35.086788, 34.115471, 38.540047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313580, 34.791843, 38.164715>,  <34.686039, 34.616745, 38.260540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313580, 34.791843, 38.164715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345779, 34.399071, 38.233219>,  <35.365101, 34.163406, 38.274323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345779, 34.399071, 38.233219>,  <35.313580, 34.791843, 38.164715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345779, 34.399071, 38.233219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672606, -0.073286, -0.736363,
		0.735609, 0.174466, 0.654554,
		0.080500, -0.981932, 0.171257,
		35.369930, 34.104492, 38.284595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020493, 34.570667, 38.149590>,  <35.313580, 34.791843, 38.164715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020493, 34.570667, 38.149590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838047, 34.222912, 38.073563>,  <35.728580, 34.014259, 38.027946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838047, 34.222912, 38.073563>,  <36.020493, 34.570667, 38.149590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838047, 34.222912, 38.073563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596964, -0.140506, -0.789868,
		0.659996, -0.473733, 0.583080,
		-0.456113, -0.869388, -0.190068,
		35.701214, 33.962097, 38.016541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524338, 34.084885, 38.133636>,  <36.020493, 34.570667, 38.149590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524338, 34.084885, 38.133636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220589, 33.951511, 37.910145>,  <36.038342, 33.871487, 37.776051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220589, 33.951511, 37.910145>,  <36.524338, 34.084885, 38.133636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220589, 33.951511, 37.910145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619045, -0.105816, -0.778194,
		0.200352, -0.936817, 0.286762,
		-0.759370, -0.333431, -0.558732,
		35.992779, 33.851482, 37.742527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128201, 34.447876, 38.465862>,  <36.524338, 34.084885, 38.133636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128201, 34.447876, 38.465862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514179, 34.343178, 38.458210>,  <37.745766, 34.280357, 38.453621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514179, 34.343178, 38.458210>,  <37.128201, 34.447876, 38.465862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514179, 34.343178, 38.458210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114712, -0.486199, 0.866286,
		-0.236048, -0.833726, -0.499181,
		0.964947, -0.261747, -0.019128,
		37.803661, 34.264652, 38.452473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138462, 33.762287, 38.702129>,  <37.128201, 34.447876, 38.465862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138462, 33.762287, 38.702129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482933, 33.958721, 38.754616>,  <37.689613, 34.076580, 38.786106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482933, 33.958721, 38.754616>,  <37.138462, 33.762287, 38.702129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482933, 33.958721, 38.754616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015588, -0.232499, 0.972472,
		0.508072, -0.839512, -0.192567,
		0.861173, 0.491084, 0.131212,
		37.741283, 34.106045, 38.793980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660522, 33.339844, 39.006405>,  <37.138462, 33.762287, 38.702129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660522, 33.339844, 39.006405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742920, 33.717690, 39.108601>,  <37.792358, 33.944397, 39.169918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742920, 33.717690, 39.108601>,  <37.660522, 33.339844, 39.006405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742920, 33.717690, 39.108601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054139, -0.249690, 0.966811,
		0.977054, -0.212991, -0.000295,
		0.205996, 0.944611, 0.255492,
		37.804718, 34.001072, 39.185249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229164, 33.334400, 39.509270>,  <37.660522, 33.339844, 39.006405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229164, 33.334400, 39.509270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049419, 33.688259, 39.559017>,  <37.941574, 33.900574, 39.588863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049419, 33.688259, 39.559017>,  <38.229164, 33.334400, 39.509270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049419, 33.688259, 39.559017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041593, -0.159780, 0.986276,
		0.892381, 0.438023, 0.108595,
		-0.449363, 0.884650, 0.124366,
		37.914612, 33.953655, 39.596329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666550, 33.710182, 39.971561>,  <38.229164, 33.334400, 39.509270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666550, 33.710182, 39.971561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305550, 33.879234, 40.004749>,  <38.088951, 33.980663, 40.024662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305550, 33.879234, 40.004749>,  <38.666550, 33.710182, 39.971561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305550, 33.879234, 40.004749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031634, -0.127077, 0.991388,
		0.429533, 0.897350, 0.101317,
		-0.902497, 0.422628, 0.082971,
		38.034801, 34.006023, 40.029640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696106, 34.053886, 40.560585>,  <38.666550, 33.710182, 39.971561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696106, 34.053886, 40.560585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301750, 34.058651, 40.493797>,  <38.065136, 34.061512, 40.453724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301750, 34.058651, 40.493797>,  <38.696106, 34.053886, 40.560585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301750, 34.058651, 40.493797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166054, 0.056543, 0.984494,
		0.021171, 0.998329, -0.053767,
		-0.985889, 0.011915, -0.166973,
		38.005981, 34.062225, 40.443707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365761, 34.684006, 40.833881>,  <38.696106, 34.053886, 40.560585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365761, 34.684006, 40.833881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113407, 34.374588, 40.809799>,  <37.961994, 34.188938, 40.795349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113407, 34.374588, 40.809799>,  <38.365761, 34.684006, 40.833881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113407, 34.374588, 40.809799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186000, 0.075454, 0.979648,
		-0.753255, 0.629239, -0.191481,
		-0.630881, -0.773541, -0.060202,
		37.924145, 34.142525, 40.791740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731110, 34.905365, 41.157486>,  <38.365761, 34.684006, 40.833881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731110, 34.905365, 41.157486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700863, 34.506512, 41.159111>,  <37.682713, 34.267200, 41.160088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700863, 34.506512, 41.159111>,  <37.731110, 34.905365, 41.157486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700863, 34.506512, 41.159111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321926, 0.028270, 0.946343,
		-0.943740, 0.070253, -0.323139,
		-0.075619, -0.997129, 0.004063,
		37.678177, 34.207375, 41.160332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075947, 34.866905, 41.402466>,  <37.731110, 34.905365, 41.157486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075947, 34.866905, 41.402466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242210, 34.508720, 41.466187>,  <37.341969, 34.293812, 41.504421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242210, 34.508720, 41.466187>,  <37.075947, 34.866905, 41.402466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242210, 34.508720, 41.466187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448260, -0.049291, 0.892544,
		-0.791385, -0.442404, -0.421887,
		0.415661, -0.895460, 0.159304,
		37.366909, 34.240082, 41.513977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449833, 34.403770, 41.651798>,  <37.075947, 34.866905, 41.402466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449833, 34.403770, 41.651798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807922, 34.269756, 41.769329>,  <37.022774, 34.189350, 41.839848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807922, 34.269756, 41.769329>,  <36.449833, 34.403770, 41.651798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807922, 34.269756, 41.769329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371608, -0.197339, 0.907174,
		-0.245952, -0.921308, -0.301164,
		0.895218, -0.335036, 0.293829,
		37.076488, 34.169247, 41.857479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298157, 33.788166, 41.927734>,  <36.449833, 34.403770, 41.651798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298157, 33.788166, 41.927734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654415, 33.881927, 42.083588>,  <36.868168, 33.938183, 42.177101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654415, 33.881927, 42.083588>,  <36.298157, 33.788166, 41.927734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654415, 33.881927, 42.083588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348667, -0.197971, 0.916100,
		0.291871, -0.951769, -0.094593,
		0.890642, 0.234401, 0.389632,
		36.921608, 33.952248, 42.200478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322498, 33.352650, 42.501060>,  <36.298157, 33.788166, 41.927734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322498, 33.352650, 42.501060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619518, 33.608227, 42.581436>,  <36.797729, 33.761574, 42.629662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619518, 33.608227, 42.581436>,  <36.322498, 33.352650, 42.501060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619518, 33.608227, 42.581436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153123, -0.130128, 0.979602,
		0.652054, -0.758171, 0.001210,
		0.742549, 0.638939, 0.200943,
		36.842281, 33.799908, 42.641720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620335, 33.062828, 43.066105>,  <36.322498, 33.352650, 42.501060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620335, 33.062828, 43.066105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729877, 33.447289, 43.079895>,  <36.795605, 33.677963, 43.088169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729877, 33.447289, 43.079895>,  <36.620335, 33.062828, 43.066105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729877, 33.447289, 43.079895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084416, -0.011687, 0.996362,
		0.958058, -0.275773, 0.077936,
		0.273859, 0.961152, 0.034476,
		36.812035, 33.735634, 43.090237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089588, 33.103535, 43.615681>,  <36.620335, 33.062828, 43.066105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089588, 33.103535, 43.615681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945637, 33.472183, 43.557579>,  <36.859268, 33.693375, 43.522717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945637, 33.472183, 43.557579>,  <37.089588, 33.103535, 43.615681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945637, 33.472183, 43.557579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355520, 0.008480, 0.934630,
		0.862609, 0.387991, 0.324604,
		-0.359876, 0.921624, -0.145254,
		36.837673, 33.748669, 43.514004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183338, 33.463306, 44.258873>,  <37.089588, 33.103535, 43.615681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183338, 33.463306, 44.258873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935524, 33.716476, 44.073147>,  <36.786835, 33.868378, 43.961712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935524, 33.716476, 44.073147>,  <37.183338, 33.463306, 44.258873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935524, 33.716476, 44.073147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491623, 0.148277, 0.858091,
		0.611954, 0.759882, 0.219298,
		-0.619531, 0.632925, -0.464314,
		36.749664, 33.906353, 43.933853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029961, 34.032646, 44.738503>,  <37.183338, 33.463306, 44.258873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029961, 34.032646, 44.738503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712357, 34.042580, 44.495544>,  <36.521793, 34.048542, 44.349770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712357, 34.042580, 44.495544>,  <37.029961, 34.032646, 44.738503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712357, 34.042580, 44.495544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607720, -0.057225, 0.792087,
		-0.015086, 0.998052, 0.060530,
		-0.794008, 0.024836, -0.607399,
		36.474155, 34.050030, 44.313324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575588, 34.509640, 45.107731>,  <37.029961, 34.032646, 44.738503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575588, 34.509640, 45.107731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343468, 34.324554, 44.839657>,  <36.204193, 34.213505, 44.678814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343468, 34.324554, 44.839657>,  <36.575588, 34.509640, 45.107731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343468, 34.324554, 44.839657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762968, 0.021077, 0.646092,
		-0.284828, 0.886259, -0.365264,
		-0.580304, -0.462710, -0.670184,
		36.169376, 34.185741, 44.638603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951954, 34.877758, 45.231827>,  <36.575588, 34.509640, 45.107731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951954, 34.877758, 45.231827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901001, 34.523403, 45.053402>,  <35.870430, 34.310791, 44.946346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901001, 34.523403, 45.053402>,  <35.951954, 34.877758, 45.231827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901001, 34.523403, 45.053402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754614, -0.205302, 0.623224,
		-0.643686, 0.415993, -0.642354,
		-0.127380, -0.885890, -0.446065,
		35.862785, 34.257637, 44.919582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285107, 34.819698, 44.841831>,  <35.951954, 34.877758, 45.231827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285107, 34.819698, 44.841831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412758, 34.469578, 44.987164>,  <35.489349, 34.259506, 45.074364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412758, 34.469578, 44.987164>,  <35.285107, 34.819698, 44.841831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412758, 34.469578, 44.987164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856938, -0.102789, 0.505066,
		-0.404737, -0.472533, -0.782880,
		0.319131, -0.875299, 0.363329,
		35.508499, 34.206989, 45.096161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659107, 34.436588, 44.738220>,  <35.285107, 34.819698, 44.841831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659107, 34.436588, 44.738220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904812, 34.235413, 44.981441>,  <35.052235, 34.114708, 45.127377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904812, 34.235413, 44.981441>,  <34.659107, 34.436588, 44.738220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904812, 34.235413, 44.981441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776686, -0.249207, 0.578493,
		-0.139414, -0.827617, -0.543703,
		0.614265, -0.502937, 0.608056,
		35.089092, 34.084530, 45.163857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291641, 33.743896, 44.883144>,  <34.659107, 34.436588, 44.738220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291641, 33.743896, 44.883144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556896, 33.788338, 45.179226>,  <34.716049, 33.815002, 45.356876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556896, 33.788338, 45.179226>,  <34.291641, 33.743896, 44.883144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556896, 33.788338, 45.179226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721762, -0.167028, 0.671686,
		0.198261, -0.979672, -0.030573,
		0.663138, 0.111102, 0.740205,
		34.755836, 33.821667, 45.401287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010635, 33.274944, 45.321445>,  <34.291641, 33.743896, 44.883144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010635, 33.274944, 45.321445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282951, 33.471001, 45.539177>,  <34.446339, 33.588634, 45.669815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282951, 33.471001, 45.539177>,  <34.010635, 33.274944, 45.321445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282951, 33.471001, 45.539177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455476, -0.298717, 0.838636,
		0.573649, -0.818860, 0.019885,
		0.680786, 0.490139, 0.544329,
		34.487186, 33.618042, 45.702477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158703, 32.842049, 45.734020>,  <34.010635, 33.274944, 45.321445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158703, 32.842049, 45.734020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260509, 33.183819, 45.915207>,  <34.321594, 33.388882, 46.023918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260509, 33.183819, 45.915207>,  <34.158703, 32.842049, 45.734020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260509, 33.183819, 45.915207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474978, -0.297555, 0.828165,
		0.842388, -0.425928, 0.330102,
		0.254515, 0.854427, 0.452963,
		34.336864, 33.440147, 46.051094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360470, 32.738678, 46.438347>,  <34.158703, 32.842049, 45.734020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360470, 32.738678, 46.438347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265541, 33.127144, 46.447456>,  <34.208584, 33.360222, 46.452923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265541, 33.127144, 46.447456>,  <34.360470, 32.738678, 46.438347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265541, 33.127144, 46.447456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550400, -0.153740, 0.820624,
		0.800462, 0.182215, 0.571015,
		-0.237318, 0.971165, 0.022772,
		34.194347, 33.418495, 46.454288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337711, 32.833969, 47.109779>,  <34.360470, 32.738678, 46.438347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337711, 32.833969, 47.109779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155178, 33.165936, 46.981403>,  <34.045658, 33.365116, 46.904377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155178, 33.165936, 46.981403>,  <34.337711, 32.833969, 47.109779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155178, 33.165936, 46.981403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544851, 0.024549, 0.838173,
		0.703490, 0.557353, 0.440976,
		-0.456332, 0.829913, -0.320945,
		34.018280, 33.414909, 46.885120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429668, 33.388763, 47.691448>,  <34.337711, 32.833969, 47.109779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429668, 33.388763, 47.691448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113651, 33.460609, 47.456985>,  <33.924042, 33.503716, 47.316307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113651, 33.460609, 47.456985>,  <34.429668, 33.388763, 47.691448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113651, 33.460609, 47.456985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547888, 0.222111, 0.806526,
		0.275057, 0.958334, -0.077067,
		-0.790039, 0.179616, -0.586153,
		33.876640, 33.514496, 47.281139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212128, 34.119164, 47.760262>,  <34.429668, 33.388763, 47.691448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212128, 34.119164, 47.760262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899662, 33.890873, 47.659027>,  <33.712181, 33.753899, 47.598286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899662, 33.890873, 47.659027>,  <34.212128, 34.119164, 47.760262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899662, 33.890873, 47.659027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476161, 0.282445, 0.832764,
		-0.403794, 0.771039, -0.492392,
		-0.781167, -0.570723, -0.253089,
		33.665314, 33.719658, 47.583099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597221, 34.474388, 47.576294>,  <34.212128, 34.119164, 47.760262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597221, 34.474388, 47.576294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456669, 34.123539, 47.707256>,  <33.372337, 33.913029, 47.785831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456669, 34.123539, 47.707256>,  <33.597221, 34.474388, 47.576294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456669, 34.123539, 47.707256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280911, 0.432360, 0.856828,
		-0.893097, 0.209099, -0.398314,
		-0.351377, -0.877122, 0.327401,
		33.351257, 33.860401, 47.805477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930233, 34.603558, 47.894283>,  <33.597221, 34.474388, 47.576294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930233, 34.603558, 47.894283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987823, 34.236687, 48.042908>,  <33.022377, 34.016563, 48.132084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987823, 34.236687, 48.042908>,  <32.930233, 34.603558, 47.894283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987823, 34.236687, 48.042908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207192, 0.339215, 0.917608,
		-0.967647, -0.209100, -0.141192,
		0.143978, -0.917175, 0.371564,
		33.031017, 33.961533, 48.154377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344746, 34.353832, 48.321518>,  <32.930233, 34.603558, 47.894283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344746, 34.353832, 48.321518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661171, 34.145149, 48.449291>,  <32.851028, 34.019939, 48.525955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661171, 34.145149, 48.449291>,  <32.344746, 34.353832, 48.321518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661171, 34.145149, 48.449291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207125, 0.262904, 0.942327,
		-0.575599, -0.811605, 0.099916,
		0.791066, -0.521708, 0.319431,
		32.898491, 33.988636, 48.545120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090477, 33.848854, 48.780079>,  <32.344746, 34.353832, 48.321518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090477, 33.848854, 48.780079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479832, 33.897667, 48.857677>,  <32.713444, 33.926956, 48.904236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479832, 33.897667, 48.857677>,  <32.090477, 33.848854, 48.780079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479832, 33.897667, 48.857677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216440, 0.211125, 0.953195,
		0.075364, -0.969811, 0.231918,
		0.973383, 0.122033, 0.193995,
		32.771847, 33.934277, 48.915874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139225, 33.406246, 49.377899>,  <32.090477, 33.848854, 48.780079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139225, 33.406246, 49.377899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429932, 33.680355, 49.359085>,  <32.604355, 33.844822, 49.347797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429932, 33.680355, 49.359085>,  <32.139225, 33.406246, 49.377899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429932, 33.680355, 49.359085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254086, 0.331829, 0.908477,
		0.638165, -0.648296, 0.415280,
		0.726764, 0.685275, -0.047039,
		32.647961, 33.885937, 49.344975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371792, 33.346836, 49.933662>,  <32.139225, 33.406246, 49.377899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371792, 33.346836, 49.933662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557957, 33.683571, 49.824333>,  <32.669655, 33.885612, 49.758736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557957, 33.683571, 49.824333>,  <32.371792, 33.346836, 49.933662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557957, 33.683571, 49.824333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027193, 0.322262, 0.946260,
		0.884679, -0.432964, 0.172875,
		0.465407, 0.841837, -0.273324,
		32.697578, 33.936123, 49.742336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956535, 33.520668, 50.414062>,  <32.371792, 33.346836, 49.933662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956535, 33.520668, 50.414062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860119, 33.873543, 50.252247>,  <32.802269, 34.085266, 50.155159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860119, 33.873543, 50.252247>,  <32.956535, 33.520668, 50.414062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860119, 33.873543, 50.252247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170850, 0.371746, 0.912478,
		0.955359, 0.289056, 0.061117,
		-0.241037, 0.882186, -0.404536,
		32.787807, 34.138199, 50.130886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223362, 34.037441, 50.836468>,  <32.956535, 33.520668, 50.414062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223362, 34.037441, 50.836468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963959, 34.257042, 50.625553>,  <32.808315, 34.388802, 50.499004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963959, 34.257042, 50.625553>,  <33.223362, 34.037441, 50.836468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963959, 34.257042, 50.625553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213308, 0.533885, 0.818209,
		0.730708, 0.643093, -0.229124,
		-0.648510, 0.548998, -0.527291,
		32.769405, 34.421741, 50.467365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328220, 34.622250, 51.046078>,  <33.223362, 34.037441, 50.836468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328220, 34.622250, 51.046078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964184, 34.696327, 50.897789>,  <32.745762, 34.740772, 50.808815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964184, 34.696327, 50.897789>,  <33.328220, 34.622250, 51.046078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964184, 34.696327, 50.897789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214444, 0.555042, 0.803706,
		0.354610, 0.810945, -0.465425,
		-0.910091, 0.185194, -0.370725,
		32.691158, 34.751884, 50.786572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224308, 35.348747, 51.187984>,  <33.328220, 34.622250, 51.046078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224308, 35.348747, 51.187984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850693, 35.212963, 51.143566>,  <32.626522, 35.131493, 51.116913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850693, 35.212963, 51.143566>,  <33.224308, 35.348747, 51.187984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850693, 35.212963, 51.143566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325226, 0.679853, 0.657289,
		-0.147627, 0.650051, -0.745412,
		-0.934042, -0.339461, -0.111049,
		32.570480, 35.111126, 51.110252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815025, 35.950649, 51.164284>,  <33.224308, 35.348747, 51.187984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815025, 35.950649, 51.164284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576355, 35.650459, 51.277966>,  <32.433151, 35.470345, 51.346172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576355, 35.650459, 51.277966>,  <32.815025, 35.950649, 51.164284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576355, 35.650459, 51.277966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372731, 0.572811, 0.730040,
		-0.710667, 0.329669, -0.621507,
		-0.596678, -0.750470, 0.284200,
		32.397350, 35.425320, 51.363224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622978, 36.130150, 51.826160>,  <32.815025, 35.950649, 51.164284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622978, 36.130150, 51.826160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758965, 36.460030, 52.006954>,  <32.840557, 36.657959, 52.115429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758965, 36.460030, 52.006954>,  <32.622978, 36.130150, 51.826160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758965, 36.460030, 52.006954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501696, 0.247470, -0.828891,
		-0.795441, 0.508551, -0.329620,
		0.339962, 0.824703, 0.451986,
		32.860954, 36.707439, 52.142551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413486, 36.609890, 51.410019>,  <32.622978, 36.130150, 51.826160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413486, 36.609890, 51.410019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728916, 36.762932, 51.602585>,  <32.918175, 36.854755, 51.718124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728916, 36.762932, 51.602585>,  <32.413486, 36.609890, 51.410019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728916, 36.762932, 51.602585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323082, 0.408331, -0.853747,
		-0.523222, 0.828783, 0.198389,
		0.788579, 0.382604, 0.481412,
		32.965488, 36.877712, 51.747009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597832, 37.150772, 51.008678>,  <32.413486, 36.609890, 51.410019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597832, 37.150772, 51.008678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942249, 37.142704, 51.211929>,  <33.148899, 37.137863, 51.333881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942249, 37.142704, 51.211929>,  <32.597832, 37.150772, 51.008678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942249, 37.142704, 51.211929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501490, 0.199333, -0.841887,
		-0.084308, 0.979724, 0.181748,
		0.861046, -0.020167, 0.508127,
		33.200562, 37.136654, 51.364368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022274, 37.757744, 50.878353>,  <32.597832, 37.150772, 51.008678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022274, 37.757744, 50.878353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291504, 37.493622, 51.011600>,  <33.453041, 37.335148, 51.091549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291504, 37.493622, 51.011600>,  <33.022274, 37.757744, 50.878353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291504, 37.493622, 51.011600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590162, 0.208064, -0.780011,
		0.445732, 0.721603, 0.529728,
		0.673076, -0.660302, 0.333122,
		33.493427, 37.295532, 51.111538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677792, 38.125198, 50.734383>,  <33.022274, 37.757744, 50.878353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677792, 38.125198, 50.734383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762817, 37.736122, 50.771687>,  <33.813831, 37.502678, 50.794067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762817, 37.736122, 50.771687>,  <33.677792, 38.125198, 50.734383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762817, 37.736122, 50.771687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655947, 0.071301, -0.751432,
		0.724258, 0.220902, 0.653187,
		0.212566, -0.972686, 0.093260,
		33.826588, 37.444317, 50.799664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474537, 38.052097, 50.698620>,  <33.677792, 38.125198, 50.734383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474537, 38.052097, 50.698620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329456, 37.689610, 50.611706>,  <34.242409, 37.472118, 50.559559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329456, 37.689610, 50.611706>,  <34.474537, 38.052097, 50.698620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329456, 37.689610, 50.611706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655624, -0.082441, -0.750573,
		0.662273, -0.414689, 0.624042,
		-0.362701, -0.906221, -0.217282,
		34.220646, 37.417744, 50.546520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027969, 37.740265, 50.428013>,  <34.474537, 38.052097, 50.698620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027969, 37.740265, 50.428013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750568, 37.480183, 50.303894>,  <34.584126, 37.324135, 50.229424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750568, 37.480183, 50.303894>,  <35.027969, 37.740265, 50.428013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750568, 37.480183, 50.303894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504725, -0.131136, -0.853262,
		0.514105, -0.748355, 0.419118,
		-0.693505, -0.650206, -0.310296,
		34.542519, 37.285122, 50.210804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335239, 37.074104, 50.235432>,  <35.027969, 37.740265, 50.428013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335239, 37.074104, 50.235432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985645, 37.105854, 50.043659>,  <34.775890, 37.124905, 49.928596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985645, 37.105854, 50.043659>,  <35.335239, 37.074104, 50.235432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985645, 37.105854, 50.043659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457987, -0.195332, -0.867233,
		-0.162479, -0.977520, 0.134368,
		-0.873984, 0.079368, -0.479429,
		34.723450, 37.129665, 49.899830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306644, 36.545662, 49.769852>,  <35.335239, 37.074104, 50.235432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306644, 36.545662, 49.769852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031994, 36.797630, 49.624668>,  <34.867203, 36.948811, 49.537560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031994, 36.797630, 49.624668>,  <35.306644, 36.545662, 49.769852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031994, 36.797630, 49.624668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430813, -0.049604, -0.901077,
		-0.585613, -0.775073, -0.237319,
		-0.686628, 0.629922, -0.362960,
		34.826004, 36.986607, 49.515781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156944, 36.218708, 49.170425>,  <35.306644, 36.545662, 49.769852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156944, 36.218708, 49.170425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029385, 36.597401, 49.152554>,  <34.952847, 36.824615, 49.141830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029385, 36.597401, 49.152554>,  <35.156944, 36.218708, 49.170425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029385, 36.597401, 49.152554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345983, 0.072397, -0.935444,
		-0.882381, -0.313774, -0.350641,
		-0.318903, 0.946734, -0.044679,
		34.933712, 36.881420, 49.139149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718849, 36.275642, 48.582268>,  <35.156944, 36.218708, 49.170425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718849, 36.275642, 48.582268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855579, 36.645481, 48.649521>,  <34.937618, 36.867386, 48.689873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855579, 36.645481, 48.649521>,  <34.718849, 36.275642, 48.582268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855579, 36.645481, 48.649521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226915, 0.092407, -0.969521,
		-0.911955, 0.369562, -0.178219,
		0.341829, 0.924600, 0.168130,
		34.958130, 36.922859, 48.699959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485054, 36.541744, 48.023914>,  <34.718849, 36.275642, 48.582268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485054, 36.541744, 48.023914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766510, 36.786526, 48.168358>,  <34.935383, 36.933395, 48.255024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766510, 36.786526, 48.168358>,  <34.485054, 36.541744, 48.023914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766510, 36.786526, 48.168358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441457, 0.021731, -0.897019,
		-0.556782, 0.790594, -0.254861,
		0.703640, 0.611954, 0.361113,
		34.977604, 36.970112, 48.276691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490170, 37.141796, 47.509159>,  <34.485054, 36.541744, 48.023914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490170, 37.141796, 47.509159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842178, 37.170120, 47.697010>,  <35.053383, 37.187115, 47.809723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842178, 37.170120, 47.697010>,  <34.490170, 37.141796, 47.509159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842178, 37.170120, 47.697010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462584, 0.096280, -0.881332,
		-0.107623, 0.992832, 0.051972,
		0.880019, 0.070810, 0.469631,
		35.106182, 37.191364, 47.837898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828690, 37.594498, 47.264542>,  <34.490170, 37.141796, 47.509159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828690, 37.594498, 47.264542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119648, 37.366051, 47.416710>,  <35.294224, 37.228985, 47.508011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119648, 37.366051, 47.416710>,  <34.828690, 37.594498, 47.264542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119648, 37.366051, 47.416710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452136, -0.018152, -0.891764,
		0.516205, 0.820670, 0.245018,
		0.727396, -0.571114, 0.380425,
		35.337868, 37.194717, 47.530838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456379, 37.905659, 47.039909>,  <34.828690, 37.594498, 47.264542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456379, 37.905659, 47.039909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551655, 37.525017, 47.117584>,  <35.608822, 37.296631, 47.164188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551655, 37.525017, 47.117584>,  <35.456379, 37.905659, 47.039909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551655, 37.525017, 47.117584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424024, -0.077988, -0.902287,
		0.873767, 0.297255, 0.384929,
		0.238189, -0.951608, 0.194186,
		35.623112, 37.239532, 47.175838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079765, 37.923382, 46.822651>,  <35.456379, 37.905659, 47.039909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079765, 37.923382, 46.822651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990631, 37.533459, 46.826664>,  <35.937149, 37.299507, 46.829071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990631, 37.533459, 46.826664>,  <36.079765, 37.923382, 46.822651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990631, 37.533459, 46.826664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615126, -0.148586, -0.774301,
		0.756283, -0.166368, 0.632738,
		-0.222835, -0.974805, 0.010035,
		35.923782, 37.241016, 46.829674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755795, 37.603085, 46.523094>,  <36.079765, 37.923382, 46.822651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755795, 37.603085, 46.523094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503445, 37.293865, 46.549583>,  <36.352036, 37.108334, 46.565479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503445, 37.293865, 46.549583>,  <36.755795, 37.603085, 46.523094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503445, 37.293865, 46.549583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256771, -0.288566, -0.922388,
		0.732165, -0.564907, 0.380546,
		-0.630876, -0.773053, 0.066226,
		36.314182, 37.061951, 46.569450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144779, 36.907192, 46.418865>,  <36.755795, 37.603085, 46.523094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144779, 36.907192, 46.418865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762001, 36.850082, 46.317780>,  <36.532333, 36.815815, 46.257126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762001, 36.850082, 46.317780>,  <37.144779, 36.907192, 46.418865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762001, 36.850082, 46.317780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289801, -0.421065, -0.859488,
		0.016304, -0.895723, 0.444314,
		-0.956949, -0.142776, -0.252716,
		36.474918, 36.807251, 46.241966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141628, 36.266350, 46.186775>,  <37.144779, 36.907192, 46.418865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141628, 36.266350, 46.186775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827019, 36.442341, 46.013432>,  <36.638252, 36.547935, 45.909428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827019, 36.442341, 46.013432>,  <37.141628, 36.266350, 46.186775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827019, 36.442341, 46.013432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254447, -0.408513, -0.876569,
		-0.562707, -0.799708, 0.209352,
		-0.786522, 0.439982, -0.433357,
		36.591061, 36.574337, 45.883423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768547, 35.733501, 45.742447>,  <37.141628, 36.266350, 46.186775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768547, 35.733501, 45.742447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661270, 36.100182, 45.623962>,  <36.596905, 36.320190, 45.552872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661270, 36.100182, 45.623962>,  <36.768547, 35.733501, 45.742447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661270, 36.100182, 45.623962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188291, -0.251670, -0.949320,
		-0.944786, -0.310372, -0.105110,
		-0.268190, 0.916696, -0.296214,
		36.580814, 36.375191, 45.535099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450886, 35.498425, 45.147549>,  <36.768547, 35.733501, 45.742447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450886, 35.498425, 45.147549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532970, 35.888863, 45.118935>,  <36.582222, 36.123127, 45.101765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532970, 35.888863, 45.118935>,  <36.450886, 35.498425, 45.147549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532970, 35.888863, 45.118935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136285, -0.100882, -0.985520,
		-0.969182, 0.192492, -0.153730,
		0.205213, 0.976099, -0.071539,
		36.594536, 36.181694, 45.097473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271530, 35.514641, 44.501225>,  <36.450886, 35.498425, 45.147549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271530, 35.514641, 44.501225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454285, 35.864849, 44.564110>,  <36.563938, 36.074974, 44.601841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454285, 35.864849, 44.564110>,  <36.271530, 35.514641, 44.501225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454285, 35.864849, 44.564110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406053, -0.048025, -0.912587,
		-0.791442, 0.480782, -0.377451,
		0.456882, 0.875524, 0.157214,
		36.591351, 36.127506, 44.611275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240993, 35.832760, 43.876171>,  <36.271530, 35.514641, 44.501225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240993, 35.832760, 43.876171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530956, 36.037384, 44.060696>,  <36.704933, 36.160160, 44.171410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530956, 36.037384, 44.060696>,  <36.240993, 35.832760, 43.876171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530956, 36.037384, 44.060696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467840, 0.125907, -0.874799,
		-0.505598, 0.849970, -0.148059,
		0.724912, 0.511564, 0.461308,
		36.748428, 36.190853, 44.199089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421585, 36.441536, 43.444263>,  <36.240993, 35.832760, 43.876171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421585, 36.441536, 43.444263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747204, 36.356987, 43.660648>,  <36.942577, 36.306255, 43.790482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747204, 36.356987, 43.660648>,  <36.421585, 36.441536, 43.444263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747204, 36.356987, 43.660648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580631, 0.318241, -0.749393,
		-0.013755, 0.924145, 0.381795,
		0.814051, -0.211374, 0.540964,
		36.991421, 36.293575, 43.822937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930325, 36.979748, 43.338593>,  <36.421585, 36.441536, 43.444263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930325, 36.979748, 43.338593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149406, 36.663631, 43.448479>,  <37.280853, 36.473961, 43.514412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149406, 36.663631, 43.448479>,  <36.930325, 36.979748, 43.338593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149406, 36.663631, 43.448479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683886, 0.233706, -0.691145,
		0.481999, 0.566418, 0.668467,
		0.547701, -0.790286, 0.274720,
		37.313717, 36.426544, 43.530895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671532, 37.221085, 43.343369>,  <36.930325, 36.979748, 43.338593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671532, 37.221085, 43.343369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684841, 36.821644, 43.326973>,  <37.692829, 36.581978, 43.317135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684841, 36.821644, 43.326973>,  <37.671532, 37.221085, 43.343369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684841, 36.821644, 43.326973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716266, 0.052427, -0.695855,
		0.697033, -0.006202, 0.717012,
		0.033275, -0.998605, -0.040985,
		37.694824, 36.522060, 43.314678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372910, 36.928345, 43.513649>,  <37.671532, 37.221085, 43.343369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372910, 36.928345, 43.513649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218262, 36.642006, 43.281067>,  <38.125473, 36.470203, 43.141518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218262, 36.642006, 43.281067>,  <38.372910, 36.928345, 43.513649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218262, 36.642006, 43.281067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730650, 0.146962, -0.666748,
		0.562741, -0.682616, 0.466216,
		-0.386617, -0.715847, -0.581455,
		38.102276, 36.427250, 43.106628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989231, 36.645126, 43.155483>,  <38.372910, 36.928345, 43.513649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989231, 36.645126, 43.155483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710003, 36.453674, 42.942463>,  <38.542465, 36.338802, 42.814651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710003, 36.453674, 42.942463>,  <38.989231, 36.645126, 43.155483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710003, 36.453674, 42.942463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527082, 0.159915, -0.834633,
		0.484644, -0.863331, 0.140645,
		-0.698073, -0.478631, -0.532548,
		38.500580, 36.310085, 42.782700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396599, 36.154354, 42.878906>,  <38.989231, 36.645126, 43.155483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396599, 36.154354, 42.878906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073277, 36.187481, 42.645741>,  <38.879284, 36.207355, 42.505840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073277, 36.187481, 42.645741>,  <39.396599, 36.154354, 42.878906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073277, 36.187481, 42.645741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588271, 0.073038, -0.805358,
		-0.024119, -0.993885, -0.107753,
		-0.808304, 0.082813, -0.582913,
		38.830784, 36.212326, 42.470867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568104, 35.786915, 42.226086>,  <39.396599, 36.154354, 42.878906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568104, 35.786915, 42.226086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251884, 35.998100, 42.101967>,  <39.062153, 36.124813, 42.027496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251884, 35.998100, 42.101967>,  <39.568104, 35.786915, 42.226086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251884, 35.998100, 42.101967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425952, 0.109998, -0.898034,
		-0.439998, -0.842113, -0.311846,
		-0.790548, 0.527965, -0.310301,
		39.014721, 36.156490, 42.008877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371861, 35.548973, 41.530979>,  <39.568104, 35.786915, 42.226086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371861, 35.548973, 41.530979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213654, 35.914894, 41.563736>,  <39.118729, 36.134445, 41.583389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213654, 35.914894, 41.563736>,  <39.371861, 35.548973, 41.530979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213654, 35.914894, 41.563736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161703, 0.157129, -0.974250,
		-0.904113, -0.372087, -0.210073,
		-0.395515, 0.914801, 0.081894,
		39.094997, 36.189335, 41.588303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145638, 35.532063, 40.903904>,  <39.371861, 35.548973, 41.530979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145638, 35.532063, 40.903904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138977, 35.911045, 41.031681>,  <39.134979, 36.138435, 41.108345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138977, 35.911045, 41.031681>,  <39.145638, 35.532063, 40.903904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138977, 35.911045, 41.031681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280586, 0.311076, -0.908022,
		-0.959684, 0.074508, -0.271025,
		-0.016654, 0.947460, 0.319440,
		39.133980, 36.195282, 41.127514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691315, 35.933361, 40.473652>,  <39.145638, 35.532063, 40.903904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691315, 35.933361, 40.473652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965878, 36.174194, 40.636791>,  <39.130615, 36.318695, 40.734676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965878, 36.174194, 40.636791>,  <38.691315, 35.933361, 40.473652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965878, 36.174194, 40.636791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269536, 0.310259, -0.911641,
		-0.675423, 0.735687, 0.050681,
		0.686407, 0.602083, 0.407851,
		39.171799, 36.354820, 40.759148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646057, 36.475685, 40.086559>,  <38.691315, 35.933361, 40.473652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646057, 36.475685, 40.086559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007324, 36.558502, 40.236988>,  <39.224083, 36.608192, 40.327244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007324, 36.558502, 40.236988>,  <38.646057, 36.475685, 40.086559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007324, 36.558502, 40.236988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277118, 0.387875, -0.879067,
		-0.327870, 0.898158, 0.292940,
		0.903165, 0.207040, 0.376069,
		39.278275, 36.620613, 40.349808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708813, 37.147408, 40.016701>,  <38.646057, 36.475685, 40.086559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708813, 37.147408, 40.016701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073612, 36.986565, 40.049099>,  <39.292492, 36.890057, 40.068539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073612, 36.986565, 40.049099>,  <38.708813, 37.147408, 40.016701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073612, 36.986565, 40.049099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238904, 0.360218, -0.901758,
		0.333430, 0.841755, 0.424585,
		0.912003, -0.402109, 0.080991,
		39.347214, 36.865932, 40.073395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131569, 37.665195, 39.747902>,  <38.708813, 37.147408, 40.016701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131569, 37.665195, 39.747902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381409, 37.352825, 39.750172>,  <39.531315, 37.165405, 39.751534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381409, 37.352825, 39.750172>,  <39.131569, 37.665195, 39.747902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381409, 37.352825, 39.750172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391272, 0.306645, -0.867684,
		0.675853, 0.544178, 0.497084,
		0.624603, -0.780922, 0.005675,
		39.568790, 37.118549, 39.751873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741890, 37.915108, 39.770443>,  <39.131569, 37.665195, 39.747902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741890, 37.915108, 39.770443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764362, 37.554676, 39.598438>,  <39.777847, 37.338417, 39.495235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764362, 37.554676, 39.598438>,  <39.741890, 37.915108, 39.770443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764362, 37.554676, 39.598438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406844, 0.413971, -0.814313,
		0.911768, -0.129194, 0.389856,
		0.056185, -0.901075, -0.430007,
		39.781219, 37.284355, 39.469437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426968, 37.921116, 39.452118>,  <39.741890, 37.915108, 39.770443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426968, 37.921116, 39.452118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236755, 37.629333, 39.255440>,  <40.122627, 37.454266, 39.137432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236755, 37.629333, 39.255440>,  <40.426968, 37.921116, 39.452118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236755, 37.629333, 39.255440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362928, 0.346478, -0.865007,
		0.801348, -0.589785, 0.099980,
		-0.475527, -0.729457, -0.491699,
		40.094097, 37.410496, 39.107929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966743, 37.609516, 38.998154>,  <40.426968, 37.921116, 39.452118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966743, 37.609516, 38.998154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617683, 37.509537, 38.830341>,  <40.408249, 37.449547, 38.729652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617683, 37.509537, 38.830341>,  <40.966743, 37.609516, 38.998154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617683, 37.509537, 38.830341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430586, 0.011471, -0.902477,
		0.230388, -0.968190, 0.097615,
		-0.872649, -0.249952, -0.419532,
		40.355888, 37.434551, 38.704483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093327, 37.137123, 38.431965>,  <40.966743, 37.609516, 38.998154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093327, 37.137123, 38.431965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724148, 37.251625, 38.329029>,  <40.502640, 37.320328, 38.267269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724148, 37.251625, 38.329029>,  <41.093327, 37.137123, 38.431965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724148, 37.251625, 38.329029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273203, 0.016217, -0.961820,
		-0.271154, -0.958015, -0.093174,
		-0.922949, 0.286257, -0.257335,
		40.447262, 37.337502, 38.251827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791340, 36.695415, 37.987217>,  <41.093327, 37.137123, 38.431965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791340, 36.695415, 37.987217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618633, 37.044170, 37.894787>,  <40.515011, 37.253422, 37.839329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618633, 37.044170, 37.894787>,  <40.791340, 36.695415, 37.987217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618633, 37.044170, 37.894787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255754, -0.127334, -0.958319,
		-0.864967, -0.472868, -0.168010,
		-0.431765, 0.871884, -0.231078,
		40.489105, 37.305737, 37.825462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234581, 36.606251, 37.462662>,  <40.791340, 36.695415, 37.987217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234581, 36.606251, 37.462662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452530, 36.941299, 37.478184>,  <40.583298, 37.142330, 37.487495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452530, 36.941299, 37.478184>,  <40.234581, 36.606251, 37.462662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452530, 36.941299, 37.478184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170462, -0.065340, -0.983196,
		-0.821012, 0.542328, -0.178384,
		0.544870, 0.837623, 0.038801,
		40.615990, 37.192585, 37.489822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081097, 37.182659, 36.920998>,  <40.234581, 36.606251, 37.462662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081097, 37.182659, 36.920998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454502, 37.092773, 37.032749>,  <40.678547, 37.038841, 37.099800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454502, 37.092773, 37.032749>,  <40.081097, 37.182659, 36.920998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454502, 37.092773, 37.032749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243402, -0.174937, -0.954019,
		0.263259, 0.958592, -0.108609,
		0.933515, -0.224719, 0.279377,
		40.734558, 37.025356, 37.116562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497784, 37.702938, 36.676102>,  <40.081097, 37.182659, 36.920998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497784, 37.702938, 36.676102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673717, 37.344784, 36.703896>,  <40.779278, 37.129890, 36.720570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673717, 37.344784, 36.703896>,  <40.497784, 37.702938, 36.676102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673717, 37.344784, 36.703896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062081, -0.046867, -0.996970,
		0.895931, 0.442815, 0.034973,
		0.439834, -0.895387, 0.069480,
		40.805668, 37.076168, 36.724739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078587, 37.683659, 36.180161>,  <40.497784, 37.702938, 36.676102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078587, 37.683659, 36.180161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998688, 37.306229, 36.285820>,  <40.950748, 37.079773, 36.349216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998688, 37.306229, 36.285820>,  <41.078587, 37.683659, 36.180161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998688, 37.306229, 36.285820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156103, -0.296784, -0.942099,
		0.967334, -0.146944, 0.206575,
		-0.199744, -0.943571, 0.264151,
		40.938766, 37.023159, 36.365067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387966, 37.315022, 35.576920>,  <41.078587, 37.683659, 36.180161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387966, 37.315022, 35.576920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222427, 37.025631, 35.797943>,  <41.123104, 36.851997, 35.930557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222427, 37.025631, 35.797943>,  <41.387966, 37.315022, 35.576920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222427, 37.025631, 35.797943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118563, -0.644638, -0.755238,
		0.902594, -0.247038, 0.352557,
		-0.413844, -0.723474, 0.552557,
		41.098274, 36.808590, 35.963711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854492, 36.716526, 35.567932>,  <41.387966, 37.315022, 35.576920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854492, 36.716526, 35.567932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489349, 36.574902, 35.649258>,  <41.270264, 36.489929, 35.698051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489349, 36.574902, 35.649258>,  <41.854492, 36.716526, 35.567932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489349, 36.574902, 35.649258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158309, -0.765958, -0.623094,
		0.376338, -0.536610, 0.755261,
		-0.912857, -0.354058, 0.203309,
		41.215492, 36.468685, 35.710251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472813, 37.164253, 35.875607>,  <41.854492, 36.716526, 35.567932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472813, 37.164253, 35.875607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866592, 37.102581, 35.841953>,  <43.102859, 37.065578, 35.821762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866592, 37.102581, 35.841953>,  <42.472813, 37.164253, 35.875607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866592, 37.102581, 35.841953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085947, -0.840595, 0.534803,
		-0.153177, -0.519258, -0.840778,
		0.984454, -0.154182, -0.084131,
		43.161930, 37.056328, 35.816715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541130, 36.427944, 35.902927>,  <42.472813, 37.164253, 35.875607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541130, 36.427944, 35.902927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914612, 36.544998, 35.985443>,  <43.138702, 36.615231, 36.034954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914612, 36.544998, 35.985443>,  <42.541130, 36.427944, 35.902927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914612, 36.544998, 35.985443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094366, -0.756934, 0.646642,
		0.345384, -0.584306, -0.734368,
		0.933705, 0.292639, 0.206294,
		43.194725, 36.632790, 36.047333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981586, 35.848385, 35.911945>,  <42.541130, 36.427944, 35.902927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981586, 35.848385, 35.911945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175396, 36.121140, 36.131134>,  <43.291679, 36.284790, 36.262650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175396, 36.121140, 36.131134>,  <42.981586, 35.848385, 35.911945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175396, 36.121140, 36.131134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230191, -0.703719, 0.672154,
		0.843950, -0.199533, -0.497930,
		0.484520, 0.681884, 0.547974,
		43.320751, 36.325706, 36.295525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691402, 35.585949, 36.186081>,  <42.981586, 35.848385, 35.911945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691402, 35.585949, 36.186081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583138, 35.889885, 36.422520>,  <43.518177, 36.072247, 36.564381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583138, 35.889885, 36.422520>,  <43.691402, 35.585949, 36.186081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583138, 35.889885, 36.422520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203477, -0.554985, 0.806591,
		0.940925, 0.338587, -0.004396,
		-0.270661, 0.759836, 0.591094,
		43.501938, 36.117836, 36.599846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266159, 35.601143, 36.679989>,  <43.691402, 35.585949, 36.186081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266159, 35.601143, 36.679989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958782, 35.800613, 36.840401>,  <43.774357, 35.920296, 36.936649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958782, 35.800613, 36.840401>,  <44.266159, 35.601143, 36.679989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958782, 35.800613, 36.840401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136154, -0.484924, 0.863893,
		0.625269, 0.718452, 0.304739,
		-0.768440, 0.498674, 0.401028,
		43.728249, 35.950214, 36.960709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495041, 35.839878, 37.303932>,  <44.266159, 35.601143, 36.679989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495041, 35.839878, 37.303932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098537, 35.866840, 37.349297>,  <43.860634, 35.883018, 37.376514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098537, 35.866840, 37.349297>,  <44.495041, 35.839878, 37.303932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098537, 35.866840, 37.349297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074759, -0.421287, 0.903841,
		0.108705, 0.904419, 0.412565,
		-0.991259, 0.067409, 0.113409,
		43.801159, 35.887062, 37.383320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349331, 36.068172, 38.094040>,  <44.495041, 35.839878, 37.303932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349331, 36.068172, 38.094040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001030, 35.903358, 37.986691>,  <43.792049, 35.804470, 37.922283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001030, 35.903358, 37.986691>,  <44.349331, 36.068172, 38.094040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001030, 35.903358, 37.986691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015427, -0.568392, 0.822614,
		-0.491487, 0.712149, 0.501282,
		-0.870748, -0.412037, -0.268371,
		43.739807, 35.779747, 37.906178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035351, 36.040302, 38.704041>,  <44.349331, 36.068172, 38.094040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035351, 36.040302, 38.704041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813633, 35.803482, 38.470039>,  <43.680603, 35.661388, 38.329639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813633, 35.803482, 38.470039>,  <44.035351, 36.040302, 38.704041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813633, 35.803482, 38.470039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131704, -0.631614, 0.764015,
		-0.821834, 0.500537, 0.272124,
		-0.554294, -0.592054, -0.585004,
		43.647346, 35.625866, 38.294537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411598, 35.876507, 39.129230>,  <44.035351, 36.040302, 38.704041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411598, 35.876507, 39.129230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468544, 35.608280, 38.838005>,  <43.502712, 35.447346, 38.663269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468544, 35.608280, 38.838005>,  <43.411598, 35.876507, 39.129230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468544, 35.608280, 38.838005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295505, -0.730804, 0.615306,
		-0.944675, 0.127552, -0.302192,
		0.142360, -0.670563, -0.728065,
		43.511253, 35.407112, 38.619587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884472, 35.518108, 39.225842>,  <43.411598, 35.876507, 39.129230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884472, 35.518108, 39.225842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148651, 35.295864, 39.023811>,  <43.307159, 35.162518, 38.902592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148651, 35.295864, 39.023811>,  <42.884472, 35.518108, 39.225842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148651, 35.295864, 39.023811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096020, -0.729629, 0.677069,
		-0.744713, -0.398667, -0.535227,
		0.660442, -0.555614, -0.505084,
		43.346786, 35.129181, 38.872288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581776, 34.761887, 39.173191>,  <42.884472, 35.518108, 39.225842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581776, 34.761887, 39.173191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978958, 34.756516, 39.126106>,  <43.217266, 34.753292, 39.097855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978958, 34.756516, 39.126106>,  <42.581776, 34.761887, 39.173191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978958, 34.756516, 39.126106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076597, -0.685231, 0.724287,
		-0.090382, -0.728202, -0.679377,
		0.992957, -0.013424, -0.117711,
		43.276844, 34.752487, 39.090794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784828, 34.145840, 39.341194>,  <42.581776, 34.761887, 39.173191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784828, 34.145840, 39.341194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139622, 34.328659, 39.367622>,  <43.352497, 34.438351, 39.383480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139622, 34.328659, 39.367622>,  <42.784828, 34.145840, 39.341194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139622, 34.328659, 39.367622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212489, -0.530949, 0.820330,
		0.410013, -0.713580, -0.568061,
		0.886983, 0.457053, 0.066068,
		43.405716, 34.465775, 39.387444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290005, 33.664623, 39.219639>,  <42.784828, 34.145840, 39.341194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290005, 33.664623, 39.219639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427715, 33.967350, 39.441883>,  <43.510342, 34.148987, 39.575230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427715, 33.967350, 39.441883>,  <43.290005, 33.664623, 39.219639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427715, 33.967350, 39.441883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070520, -0.610965, 0.788510,
		0.936217, -0.232282, -0.263710,
		0.344275, 0.756814, 0.555615,
		43.530998, 34.194393, 39.608566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901382, 33.324493, 39.516403>,  <43.290005, 33.664623, 39.219639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901382, 33.324493, 39.516403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772640, 33.625549, 39.746166>,  <43.695393, 33.806183, 39.884022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772640, 33.625549, 39.746166>,  <43.901382, 33.324493, 39.516403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772640, 33.625549, 39.746166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101735, -0.630669, 0.769355,
		0.941306, 0.189186, 0.279556,
		-0.321858, 0.752639, 0.574406,
		43.676083, 33.851341, 39.918488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361710, 33.282936, 40.167274>,  <43.901382, 33.324493, 39.516403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361710, 33.282936, 40.167274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030125, 33.489185, 40.253956>,  <43.831173, 33.612934, 40.305965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030125, 33.489185, 40.253956>,  <44.361710, 33.282936, 40.167274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030125, 33.489185, 40.253956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046862, -0.450110, 0.891743,
		0.557340, 0.729065, 0.397287,
		-0.828961, 0.515622, 0.216699,
		43.781437, 33.643871, 40.318966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463974, 33.482384, 40.867729>,  <44.361710, 33.282936, 40.167274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463974, 33.482384, 40.867729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.071800, 33.519596, 40.798340>,  <43.836494, 33.541924, 40.756706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.071800, 33.519596, 40.798340>,  <44.463974, 33.482384, 40.867729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071800, 33.519596, 40.798340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196835, -0.455361, 0.868275,
		0.001787, 0.885433, 0.464765,
		-0.980435, 0.093033, -0.173470,
		43.777668, 33.547504, 40.746300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133759, 33.683315, 41.485775>,  <44.463974, 33.482384, 40.867729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133759, 33.683315, 41.485775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820744, 33.505665, 41.311241>,  <43.632935, 33.399075, 41.206520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820744, 33.505665, 41.311241>,  <44.133759, 33.683315, 41.485775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820744, 33.505665, 41.311241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273829, -0.383896, 0.881840,
		-0.559160, 0.809551, 0.178796,
		-0.782533, -0.444130, -0.436337,
		43.585983, 33.372425, 41.180340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566399, 33.859478, 41.930454>,  <44.133759, 33.683315, 41.485775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566399, 33.859478, 41.930454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435413, 33.554428, 41.707321>,  <43.356823, 33.371399, 41.573441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435413, 33.554428, 41.707321>,  <43.566399, 33.859478, 41.930454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435413, 33.554428, 41.707321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394955, -0.425851, 0.814040,
		-0.858358, 0.486885, -0.161752,
		-0.327462, -0.762623, -0.557831,
		43.337173, 33.325642, 41.539970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831383, 33.884838, 42.066547>,  <43.566399, 33.859478, 41.930454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831383, 33.884838, 42.066547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889137, 33.523945, 41.904007>,  <42.923790, 33.307407, 41.806480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889137, 33.523945, 41.904007>,  <42.831383, 33.884838, 42.066547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889137, 33.523945, 41.904007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477387, -0.423221, 0.770056,
		-0.866749, 0.082802, -0.491824,
		0.144388, -0.902235, -0.406354,
		42.932453, 33.253273, 41.782101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143936, 33.566349, 41.994976>,  <42.831383, 33.884838, 42.066547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143936, 33.566349, 41.994976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416885, 33.274113, 42.004841>,  <42.580654, 33.098770, 42.010757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416885, 33.274113, 42.004841>,  <42.143936, 33.566349, 41.994976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416885, 33.274113, 42.004841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585249, -0.525790, 0.617275,
		-0.438010, -0.435642, -0.786361,
		0.682371, -0.730589, 0.024658,
		42.621597, 33.054935, 42.012238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784168, 32.881054, 41.800484>,  <42.143936, 33.566349, 41.994976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784168, 32.881054, 41.800484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126595, 32.786869, 41.984528>,  <42.332050, 32.730358, 42.094955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126595, 32.786869, 41.984528>,  <41.784168, 32.881054, 41.800484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126595, 32.786869, 41.984528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513479, -0.489103, 0.705066,
		0.059028, -0.839843, -0.539610,
		0.856069, -0.235459, 0.460113,
		42.383415, 32.716232, 42.122562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921696, 32.395454, 41.212933>,  <41.784168, 32.881054, 41.800484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921696, 32.395454, 41.212933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658607, 32.389027, 40.911697>,  <41.500755, 32.385170, 40.730957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658607, 32.389027, 40.911697>,  <41.921696, 32.395454, 41.212933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658607, 32.389027, 40.911697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396554, -0.857401, -0.328037,
		-0.640427, -0.514397, 0.570306,
		-0.657723, -0.016074, -0.753089,
		41.461292, 32.384205, 40.685772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540947, 31.738674, 41.189056>,  <41.921696, 32.395454, 41.212933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540947, 31.738674, 41.189056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489166, 31.871695, 40.815392>,  <41.458099, 31.951508, 40.591194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489166, 31.871695, 40.815392>,  <41.540947, 31.738674, 41.189056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489166, 31.871695, 40.815392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176474, -0.919319, -0.351725,
		-0.975756, -0.210386, 0.060322,
		-0.129453, 0.332553, -0.934158,
		41.450329, 31.971460, 40.535145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757202, 31.536230, 41.322094>,  <41.540947, 31.738674, 41.189056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757202, 31.536230, 41.322094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874592, 31.565626, 40.940838>,  <40.945026, 31.583263, 40.712086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874592, 31.565626, 40.940838>,  <40.757202, 31.536230, 41.322094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874592, 31.565626, 40.940838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952925, -0.056977, -0.297804,
		-0.076193, 0.995667, 0.053310,
		0.293477, 0.073491, -0.953137,
		40.962635, 31.587673, 40.654896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047680, 30.837811, 41.569641>,  <40.757202, 31.536230, 41.322094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047680, 30.837811, 41.569641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417500, 30.934725, 41.687286>,  <41.639393, 30.992874, 41.757874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417500, 30.934725, 41.687286>,  <41.047680, 30.837811, 41.569641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417500, 30.934725, 41.687286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194072, -0.364833, 0.910622,
		0.327933, -0.898996, -0.290286,
		0.924552, 0.242287, 0.294111,
		41.694866, 31.007410, 41.775520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285339, 30.386671, 42.037540>,  <41.047680, 30.837811, 41.569641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285339, 30.386671, 42.037540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495270, 30.706875, 42.153297>,  <41.621227, 30.898996, 42.222752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495270, 30.706875, 42.153297>,  <41.285339, 30.386671, 42.037540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495270, 30.706875, 42.153297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248452, -0.181110, 0.951562,
		0.814146, -0.571300, 0.103838,
		0.524822, 0.800509, 0.289390,
		41.652718, 30.947027, 42.240116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705738, 30.608576, 41.371174>,  <41.285339, 30.386671, 42.037540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705738, 30.608576, 41.371174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566692, 30.469072, 41.023029>,  <41.483265, 30.385370, 40.814140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566692, 30.469072, 41.023029>,  <41.705738, 30.608576, 41.371174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566692, 30.469072, 41.023029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842887, 0.290395, -0.453004,
		0.410738, -0.891089, 0.193017,
		-0.347616, -0.348757, -0.870363,
		41.462406, 30.364445, 40.761921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297161, 30.132446, 41.275558>,  <41.705738, 30.608576, 41.371174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297161, 30.132446, 41.275558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118904, 30.236794, 40.933014>,  <42.011951, 30.299402, 40.727489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118904, 30.236794, 40.933014>,  <42.297161, 30.132446, 41.275558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118904, 30.236794, 40.933014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816136, 0.511483, -0.268901,
		0.367865, -0.818739, -0.440842,
		-0.445643, 0.260868, -0.856359,
		41.985210, 30.315054, 40.676105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598663, 29.844646, 40.604523>,  <42.297161, 30.132446, 41.275558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598663, 29.844646, 40.604523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431091, 30.207844, 40.601944>,  <42.330547, 30.425762, 40.600399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431091, 30.207844, 40.601944>,  <42.598663, 29.844646, 40.604523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431091, 30.207844, 40.601944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890005, 0.409205, -0.201101,
		-0.179961, -0.089984, -0.979549,
		-0.418933, 0.907995, -0.006445,
		42.305412, 30.480242, 40.600010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004139, 29.412439, 40.814983>,  <42.598663, 29.844646, 40.604523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004139, 29.412439, 40.814983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684208, 29.601089, 40.666473>,  <41.492249, 29.714279, 40.577366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684208, 29.601089, 40.666473>,  <42.004139, 29.412439, 40.814983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684208, 29.601089, 40.666473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463038, 0.091223, -0.881632,
		-0.381931, -0.877068, -0.291343,
		-0.799828, 0.471625, -0.371275,
		41.444260, 29.742577, 40.555092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994141, 29.340328, 40.161312>,  <42.004139, 29.412439, 40.814983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994141, 29.340328, 40.161312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688919, 29.598438, 40.176121>,  <41.505787, 29.753304, 40.185005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688919, 29.598438, 40.176121>,  <41.994141, 29.340328, 40.161312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688919, 29.598438, 40.176121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133365, 0.213233, -0.967856,
		-0.632427, -0.733588, -0.248765,
		-0.763053, 0.645275, 0.037019,
		41.460003, 29.792021, 40.187225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517422, 29.151718, 39.549934>,  <41.994141, 29.340328, 40.161312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517422, 29.151718, 39.549934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497055, 29.527376, 39.685825>,  <41.484837, 29.752771, 39.767361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497055, 29.527376, 39.685825>,  <41.517422, 29.151718, 39.549934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497055, 29.527376, 39.685825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189138, 0.343076, -0.920068,
		-0.980630, 0.017409, -0.195096,
		-0.050915, 0.939146, 0.339724,
		41.481781, 29.809120, 39.787743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139488, 29.571728, 39.033924>,  <41.517422, 29.151718, 39.549934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139488, 29.571728, 39.033924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329807, 29.855806, 39.241478>,  <41.444000, 30.026253, 39.366009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329807, 29.855806, 39.241478>,  <41.139488, 29.571728, 39.033924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329807, 29.855806, 39.241478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013097, 0.584151, -0.811539,
		-0.879457, 0.392925, 0.268636,
		0.475798, 0.710195, 0.518882,
		41.472546, 30.068865, 39.397144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768593, 30.156834, 38.802849>,  <41.139488, 29.571728, 39.033924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768593, 30.156834, 38.802849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115810, 30.272457, 38.964317>,  <41.324139, 30.341831, 39.061199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115810, 30.272457, 38.964317>,  <40.768593, 30.156834, 38.802849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115810, 30.272457, 38.964317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220624, 0.503793, -0.835175,
		-0.444780, 0.814026, 0.373540,
		0.868041, 0.289058, 0.403671,
		41.376225, 30.359175, 39.085419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867008, 30.919777, 38.807629>,  <40.768593, 30.156834, 38.802849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867008, 30.919777, 38.807629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237556, 30.772243, 38.838081>,  <41.459885, 30.683723, 38.856354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237556, 30.772243, 38.838081>,  <40.867008, 30.919777, 38.807629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237556, 30.772243, 38.838081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312099, 0.638699, -0.703319,
		0.210779, 0.675297, 0.706786,
		0.926373, -0.368832, 0.076135,
		41.515469, 30.661594, 38.860920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240200, 31.490450, 39.031452>,  <40.867008, 30.919777, 38.807629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240200, 31.490450, 39.031452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483185, 31.218637, 38.866905>,  <41.628975, 31.055550, 38.768177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483185, 31.218637, 38.866905>,  <41.240200, 31.490450, 39.031452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483185, 31.218637, 38.866905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436518, 0.718234, -0.541841,
		0.663656, 0.149581, 0.732930,
		0.607464, -0.679533, -0.411366,
		41.665424, 31.014778, 38.743496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860756, 31.806204, 39.098568>,  <41.240200, 31.490450, 39.031452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860756, 31.806204, 39.098568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909626, 31.539719, 38.804295>,  <41.938950, 31.379827, 38.627731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909626, 31.539719, 38.804295>,  <41.860756, 31.806204, 39.098568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909626, 31.539719, 38.804295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515315, 0.676081, -0.526655,
		0.848247, -0.314764, 0.425912,
		0.122178, -0.666212, -0.735686,
		41.946278, 31.339855, 38.583588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472069, 31.933693, 38.943214>,  <41.860756, 31.806204, 39.098568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472069, 31.933693, 38.943214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313354, 31.746101, 38.627590>,  <42.218124, 31.633547, 38.438217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313354, 31.746101, 38.627590>,  <42.472069, 31.933693, 38.943214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313354, 31.746101, 38.627590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536324, 0.579177, -0.613930,
		0.744925, -0.666794, 0.021712,
		-0.396790, -0.468977, -0.789061,
		42.194317, 31.605408, 38.390873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074505, 31.758886, 38.477398>,  <42.472069, 31.933693, 38.943214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074505, 31.758886, 38.477398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727024, 31.790833, 38.281860>,  <42.518536, 31.810001, 38.164536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727024, 31.790833, 38.281860>,  <43.074505, 31.758886, 38.477398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727024, 31.790833, 38.281860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449887, 0.540150, -0.711224,
		0.207247, -0.837770, -0.505163,
		-0.868706, 0.079867, -0.488846,
		42.466412, 31.814793, 38.135208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256134, 31.685169, 37.882763>,  <43.074505, 31.758886, 38.477398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256134, 31.685169, 37.882763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897911, 31.843258, 37.800999>,  <42.682980, 31.938110, 37.751942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897911, 31.843258, 37.800999>,  <43.256134, 31.685169, 37.882763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897911, 31.843258, 37.800999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404130, 0.530252, -0.745327,
		-0.186181, -0.750088, -0.634590,
		-0.895554, 0.395222, -0.204410,
		42.629246, 31.961824, 37.739677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184078, 31.671547, 37.149914>,  <43.256134, 31.685169, 37.882763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184078, 31.671547, 37.149914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941498, 31.958780, 37.286480>,  <42.795948, 32.131119, 37.368420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941498, 31.958780, 37.286480>,  <43.184078, 31.671547, 37.149914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941498, 31.958780, 37.286480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157557, 0.529411, -0.833607,
		-0.779351, -0.451753, -0.434203,
		-0.606456, 0.718084, 0.341420,
		42.759560, 32.174206, 37.388905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788570, 31.757299, 36.561878>,  <43.184078, 31.671547, 37.149914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788570, 31.757299, 36.561878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783253, 32.074711, 36.805233>,  <42.780064, 32.265156, 36.951248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783253, 32.074711, 36.805233>,  <42.788570, 31.757299, 36.561878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783253, 32.074711, 36.805233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248769, 0.591937, -0.766632,
		-0.968472, 0.141160, -0.205272,
		-0.013290, 0.793527, 0.608391,
		42.779266, 32.312767, 36.987751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699341, 32.349812, 36.132298>,  <42.788570, 31.757299, 36.561878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699341, 32.349812, 36.132298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811493, 32.550175, 36.459827>,  <42.878784, 32.670391, 36.656345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811493, 32.550175, 36.459827>,  <42.699341, 32.349812, 36.132298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811493, 32.550175, 36.459827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479240, 0.666070, -0.571559,
		-0.831694, 0.552671, -0.053298,
		0.280383, 0.500904, 0.818828,
		42.895607, 32.700447, 36.705475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692383, 32.982769, 35.891495>,  <42.699341, 32.349812, 36.132298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692383, 32.982769, 35.891495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921635, 33.029408, 36.215946>,  <43.059185, 33.057392, 36.410618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921635, 33.029408, 36.215946>,  <42.692383, 32.982769, 35.891495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921635, 33.029408, 36.215946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553523, 0.674806, -0.488109,
		-0.604267, 0.728727, 0.322209,
		0.573126, 0.116598, 0.811130,
		43.093571, 33.064388, 36.459286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646236, 33.716202, 36.155628>,  <42.692383, 32.982769, 35.891495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646236, 33.716202, 36.155628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986778, 33.589947, 36.323227>,  <43.191105, 33.514194, 36.423786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986778, 33.589947, 36.323227>,  <42.646236, 33.716202, 36.155628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986778, 33.589947, 36.323227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487843, 0.770032, -0.411169,
		-0.192865, 0.554459, 0.809554,
		0.851359, -0.315636, 0.419001,
		43.242188, 33.495255, 36.448929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938400, 34.304680, 36.274937>,  <42.646236, 33.716202, 36.155628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938400, 34.304680, 36.274937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245224, 34.053299, 36.326572>,  <43.429317, 33.902470, 36.357552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245224, 34.053299, 36.326572>,  <42.938400, 34.304680, 36.274937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245224, 34.053299, 36.326572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629564, 0.698559, -0.340095,
		0.123559, 0.342142, 0.931489,
		0.767061, -0.628454, 0.129087,
		43.475342, 33.864761, 36.365299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466652, 34.654045, 36.658287>,  <42.938400, 34.304680, 36.274937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466652, 34.654045, 36.658287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648464, 34.384888, 36.424835>,  <43.757549, 34.223392, 36.284763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648464, 34.384888, 36.424835>,  <43.466652, 34.654045, 36.658287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648464, 34.384888, 36.424835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703631, 0.673009, -0.227952,
		0.546175, -0.307049, 0.779368,
		0.454529, -0.672889, -0.583630,
		43.784824, 34.183022, 36.249744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145260, 34.816780, 36.850563>,  <43.466652, 34.654045, 36.658287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145260, 34.816780, 36.850563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104843, 34.622013, 36.503529>,  <44.080593, 34.505154, 36.295307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104843, 34.622013, 36.503529>,  <44.145260, 34.816780, 36.850563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104843, 34.622013, 36.503529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657582, 0.621716, -0.425505,
		0.746577, -0.613502, 0.257368,
		-0.101038, -0.486913, -0.867587,
		44.074532, 34.475941, 36.243252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824131, 34.837227, 36.600540>,  <44.145260, 34.816780, 36.850563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824131, 34.837227, 36.600540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622475, 34.731758, 36.271587>,  <44.501480, 34.668476, 36.074215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622475, 34.731758, 36.271587>,  <44.824131, 34.837227, 36.600540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622475, 34.731758, 36.271587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630383, 0.538536, -0.559103,
		0.590303, -0.800286, -0.105285,
		-0.504142, -0.263670, -0.822386,
		44.471233, 34.652657, 36.024872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350243, 34.718277, 36.099602>,  <44.824131, 34.837227, 36.600540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350243, 34.718277, 36.099602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010704, 34.790119, 35.900723>,  <44.806980, 34.833225, 35.781395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010704, 34.790119, 35.900723>,  <45.350243, 34.718277, 36.099602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010704, 34.790119, 35.900723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520326, 0.450014, -0.725774,
		0.093392, -0.874774, -0.475445,
		-0.848845, 0.179605, -0.497196,
		44.756050, 34.844002, 35.751564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504532, 34.542477, 35.378246>,  <45.350243, 34.718277, 36.099602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504532, 34.542477, 35.378246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192249, 34.792274, 35.387135>,  <45.004879, 34.942154, 35.392467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192249, 34.792274, 35.387135>,  <45.504532, 34.542477, 35.378246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192249, 34.792274, 35.387135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450032, 0.586565, -0.673359,
		-0.433545, -0.515698, -0.738982,
		-0.780711, 0.624497, 0.022222,
		44.958035, 34.979622, 35.393803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463017, 34.746479, 34.637959>,  <45.504532, 34.542477, 35.378246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463017, 34.746479, 34.637959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292915, 35.018295, 34.877087>,  <45.190857, 35.181385, 35.020565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292915, 35.018295, 34.877087>,  <45.463017, 34.746479, 34.637959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292915, 35.018295, 34.877087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487078, 0.728537, -0.481651,
		-0.762836, 0.086364, -0.640798,
		-0.425248, 0.679540, 0.597820,
		45.165340, 35.222157, 35.056435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914547, 34.606918, 33.976467>,  <45.463017, 34.746479, 34.637959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914547, 34.606918, 33.976467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893158, 34.912418, 34.233788>,  <45.880325, 35.095718, 34.388180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893158, 34.912418, 34.233788>,  <45.914547, 34.606918, 33.976467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893158, 34.912418, 34.233788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386193, -0.578272, 0.718649,
		0.920866, 0.286868, -0.264030,
		-0.053476, 0.763746, 0.643298,
		45.877113, 35.141541, 34.426777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636051, 34.822262, 34.168411>,  <45.914547, 34.606918, 33.976467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636051, 34.822262, 34.168411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349773, 34.881496, 34.441422>,  <46.178005, 34.917038, 34.605228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349773, 34.881496, 34.441422>,  <46.636051, 34.822262, 34.168411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349773, 34.881496, 34.441422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396028, -0.718909, 0.571254,
		0.575271, 0.679146, 0.455877,
		-0.715699, 0.148086, 0.682528,
		46.135063, 34.925922, 34.646179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910309, 34.874184, 34.860138>,  <46.636051, 34.822262, 34.168411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910309, 34.874184, 34.860138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.537960, 34.729095, 34.877621>,  <46.314548, 34.642044, 34.888111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.537960, 34.729095, 34.877621>,  <46.910309, 34.874184, 34.860138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.537960, 34.729095, 34.877621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312258, -0.727812, 0.610561,
		-0.189653, 0.582002, 0.790763,
		-0.930874, -0.362717, 0.043703,
		46.258698, 34.620281, 34.890732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.600018, 34.911247, 34.435051>,  <46.910309, 34.874184, 34.860138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.600018, 34.911247, 34.435051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826897, 34.960178, 34.760830>,  <47.963024, 34.989536, 34.956295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826897, 34.960178, 34.760830>,  <47.600018, 34.911247, 34.435051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.826897, 34.960178, 34.760830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768176, -0.435164, -0.469615,
		0.296969, 0.892002, -0.340795,
		0.567199, 0.122329, 0.814445,
		47.997055, 34.996876, 35.005165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.812672, 39.404652, 45.440685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.545351, 39.132706, 45.319916>,  <31.384958, 38.969540, 45.247456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.545351, 39.132706, 45.319916>,  <31.812672, 39.404652, 45.440685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545351, 39.132706, 45.319916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452661, -0.049590, -0.890302,
		0.590312, -0.731660, 0.340889,
		-0.668303, -0.679863, -0.301920,
		31.344860, 38.928745, 45.229340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220142, 38.976616, 44.960148>,  <31.812672, 39.404652, 45.440685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220142, 38.976616, 44.960148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.856651, 38.822636, 44.895622>,  <31.638556, 38.730247, 44.856907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.856651, 38.822636, 44.895622>,  <32.220142, 38.976616, 44.960148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856651, 38.822636, 44.895622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234022, -0.149897, -0.960606,
		0.345609, -0.910681, 0.226304,
		-0.908729, -0.384955, -0.161313,
		31.584032, 38.707150, 44.847229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228271, 38.229881, 44.837326>,  <32.220142, 38.976616, 44.960148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228271, 38.229881, 44.837326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929417, 38.422619, 44.654194>,  <31.750103, 38.538261, 44.544315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929417, 38.422619, 44.654194>,  <32.228271, 38.229881, 44.837326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929417, 38.422619, 44.654194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422593, -0.187305, -0.886754,
		-0.513032, -0.856004, -0.063682,
		-0.747137, 0.481845, -0.457834,
		31.705275, 38.567173, 44.516842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168125, 37.734818, 44.245861>,  <32.228271, 38.229881, 44.837326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168125, 37.734818, 44.245861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.936071, 38.046928, 44.152390>,  <31.796839, 38.234196, 44.096306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.936071, 38.046928, 44.152390>,  <32.168125, 37.734818, 44.245861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936071, 38.046928, 44.152390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173444, -0.161968, -0.971434,
		-0.795838, -0.604094, -0.041372,
		-0.580137, 0.780280, -0.233676,
		31.762030, 38.281013, 44.082287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671066, 37.550697, 43.677284>,  <32.168125, 37.734818, 44.245861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671066, 37.550697, 43.677284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.691574, 37.949818, 43.694115>,  <31.703878, 38.189289, 43.704212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.691574, 37.949818, 43.694115>,  <31.671066, 37.550697, 43.677284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691574, 37.949818, 43.694115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267362, 0.026877, -0.963221,
		-0.962231, 0.060634, -0.265396,
		0.051271, 0.997798, 0.042073,
		31.706955, 38.249157, 43.706738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322021, 37.809719, 43.122955>,  <31.671066, 37.550697, 43.677284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322021, 37.809719, 43.122955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.564465, 38.112984, 43.219143>,  <31.709930, 38.294941, 43.276855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.564465, 38.112984, 43.219143>,  <31.322021, 37.809719, 43.122955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564465, 38.112984, 43.219143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352216, 0.015233, -0.935795,
		-0.713147, 0.651888, -0.257804,
		0.606106, 0.758162, 0.240469,
		31.746296, 38.340431, 43.291283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258158, 38.331837, 42.438728>,  <31.322021, 37.809719, 43.122955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258158, 38.331837, 42.438728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.585938, 38.445618, 42.637760>,  <31.782606, 38.513885, 42.757179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.585938, 38.445618, 42.637760>,  <31.258158, 38.331837, 42.438728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585938, 38.445618, 42.637760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475322, 0.147834, -0.867303,
		-0.320269, 0.947222, -0.014066,
		0.819449, 0.284456, 0.497582,
		31.831772, 38.530956, 42.787033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605293, 38.933891, 42.076767>,  <31.258158, 38.331837, 42.438728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605293, 38.933891, 42.076767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.894533, 38.795334, 42.315811>,  <32.068077, 38.712200, 42.459236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.894533, 38.795334, 42.315811>,  <31.605293, 38.933891, 42.076767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894533, 38.795334, 42.315811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663295, 0.106741, -0.740707,
		0.192788, 0.931996, 0.306946,
		0.723100, -0.346395, 0.597610,
		32.111462, 38.691414, 42.495094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211163, 39.437504, 42.162693>,  <31.605293, 38.933891, 42.076767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211163, 39.437504, 42.162693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.370487, 39.080906, 42.249031>,  <32.466084, 38.866947, 42.300835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.370487, 39.080906, 42.249031>,  <32.211163, 39.437504, 42.162693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370487, 39.080906, 42.249031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658588, 0.114175, -0.743791,
		0.638440, 0.438414, 0.632604,
		0.398316, -0.891491, 0.215841,
		32.489983, 38.813457, 42.313782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992481, 39.536064, 42.053272>,  <32.211163, 39.437504, 42.162693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992481, 39.536064, 42.053272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.973347, 39.136993, 42.072662>,  <32.961868, 38.897552, 42.084297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.973347, 39.136993, 42.072662>,  <32.992481, 39.536064, 42.053272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973347, 39.136993, 42.072662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738011, -0.068003, -0.671353,
		0.673091, 0.003663, 0.739551,
		-0.047832, -0.997678, 0.048476,
		32.958996, 38.837688, 42.087204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662010, 39.298195, 42.160400>,  <32.992481, 39.536064, 42.053272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662010, 39.298195, 42.160400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458725, 39.006767, 41.976700>,  <33.336754, 38.831913, 41.866482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458725, 39.006767, 41.976700>,  <33.662010, 39.298195, 42.160400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458725, 39.006767, 41.976700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745538, -0.105221, -0.658104,
		0.431150, -0.676846, 0.596649,
		-0.508215, -0.728566, -0.459248,
		33.306259, 38.788197, 41.838924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210617, 38.764595, 41.947998>,  <33.662010, 39.298195, 42.160400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210617, 38.764595, 41.947998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.885895, 38.694942, 41.725056>,  <33.691059, 38.653152, 41.591290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.885895, 38.694942, 41.725056>,  <34.210617, 38.764595, 41.947998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885895, 38.694942, 41.725056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580458, -0.136805, -0.802716,
		0.063526, -0.975174, 0.212133,
		-0.811808, -0.174128, -0.557357,
		33.642353, 38.642704, 41.557850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441841, 38.279617, 41.563530>,  <34.210617, 38.764595, 41.947998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441841, 38.279617, 41.563530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151115, 38.459282, 41.355686>,  <33.976681, 38.567081, 41.230980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151115, 38.459282, 41.355686>,  <34.441841, 38.279617, 41.563530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151115, 38.459282, 41.355686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512436, -0.149118, -0.845679,
		-0.457328, -0.880920, -0.121784,
		-0.726815, 0.449160, -0.519611,
		33.933071, 38.594028, 41.199802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523239, 37.918182, 40.842915>,  <34.441841, 38.279617, 41.563530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523239, 37.918182, 40.842915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.291782, 38.243355, 40.816624>,  <34.152908, 38.438457, 40.800850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.291782, 38.243355, 40.816624>,  <34.523239, 37.918182, 40.842915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291782, 38.243355, 40.816624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318207, 0.150820, -0.935947,
		-0.750948, -0.562491, -0.345950,
		-0.578638, 0.812931, -0.065730,
		34.118191, 38.487236, 40.796906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085426, 37.814098, 40.357716>,  <34.523239, 37.918182, 40.842915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085426, 37.814098, 40.357716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104843, 38.213005, 40.380005>,  <34.116493, 38.452351, 40.393379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104843, 38.213005, 40.380005>,  <34.085426, 37.814098, 40.357716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104843, 38.213005, 40.380005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260340, 0.041226, -0.964636,
		-0.964296, 0.061333, -0.257627,
		0.048544, 0.997265, 0.055721,
		34.119408, 38.512184, 40.396721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934231, 37.947304, 39.759865>,  <34.085426, 37.814098, 40.357716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934231, 37.947304, 39.759865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104340, 38.297134, 39.853035>,  <34.206406, 38.507034, 39.908936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104340, 38.297134, 39.853035>,  <33.934231, 37.947304, 39.759865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104340, 38.297134, 39.853035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158871, 0.181221, -0.970525,
		-0.891013, 0.449742, -0.061877,
		0.425273, 0.874580, 0.232921,
		34.231922, 38.559509, 39.922913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831264, 38.378567, 39.197906>,  <33.934231, 37.947304, 39.759865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831264, 38.378567, 39.197906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.106869, 38.613991, 39.367069>,  <34.272232, 38.755245, 39.468567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.106869, 38.613991, 39.367069>,  <33.831264, 38.378567, 39.197906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106869, 38.613991, 39.367069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326991, 0.268306, -0.906139,
		-0.646788, 0.762632, -0.007587,
		0.689015, 0.588561, 0.422911,
		34.313572, 38.790558, 39.493942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839298, 39.001511, 38.790249>,  <33.831264, 38.378567, 39.197906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839298, 39.001511, 38.790249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.188152, 38.953896, 38.980076>,  <34.397465, 38.925327, 39.093971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.188152, 38.953896, 38.980076>,  <33.839298, 39.001511, 38.790249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188152, 38.953896, 38.980076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488125, 0.145355, -0.860585,
		0.033459, 0.982193, 0.184873,
		0.872132, -0.119035, 0.474569,
		34.449791, 38.918186, 39.122448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219131, 39.503807, 38.499218>,  <33.839298, 39.001511, 38.790249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219131, 39.503807, 38.499218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.505184, 39.301582, 38.692291>,  <34.676815, 39.180248, 38.808136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.505184, 39.301582, 38.692291>,  <34.219131, 39.503807, 38.499218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505184, 39.301582, 38.692291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665029, 0.279496, -0.692545,
		0.215217, 0.816264, 0.536092,
		0.715136, -0.505564, 0.482687,
		34.719727, 39.149914, 38.837097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796890, 39.957916, 38.693291>,  <34.219131, 39.503807, 38.499218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796890, 39.957916, 38.693291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933426, 39.582039, 38.684727>,  <35.015347, 39.356510, 38.679588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933426, 39.582039, 38.684727>,  <34.796890, 39.957916, 38.693291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933426, 39.582039, 38.684727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745265, 0.284454, -0.603048,
		0.572770, 0.189893, 0.797418,
		0.341343, -0.939695, -0.021406,
		35.035828, 39.300129, 38.678307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559029, 40.028976, 38.672363>,  <34.796890, 39.957916, 38.693291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559029, 40.028976, 38.672363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492619, 39.649830, 38.563568>,  <35.452770, 39.422340, 38.498291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492619, 39.649830, 38.563568>,  <35.559029, 40.028976, 38.672363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492619, 39.649830, 38.563568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765359, 0.050061, -0.641653,
		0.621820, -0.314702, 0.717149,
		-0.166028, -0.947870, -0.271989,
		35.442810, 39.365471, 38.481972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190430, 39.670300, 38.673950>,  <35.559029, 40.028976, 38.672363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190430, 39.670300, 38.673950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954235, 39.452084, 38.436054>,  <35.812519, 39.321156, 38.293316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954235, 39.452084, 38.436054>,  <36.190430, 39.670300, 38.673950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954235, 39.452084, 38.436054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781614, -0.203026, -0.589796,
		0.201011, -0.813121, 0.546287,
		-0.590486, -0.545541, -0.594737,
		35.777088, 39.288422, 38.257633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907104, 39.352097, 38.563980>,  <36.190430, 39.670300, 38.673950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907104, 39.352097, 38.563980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216930, 39.336430, 38.816494>,  <37.402824, 39.327030, 38.968002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216930, 39.336430, 38.816494>,  <36.907104, 39.352097, 38.563980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216930, 39.336430, 38.816494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632466, -0.037631, 0.773673,
		-0.006539, -0.998524, -0.053913,
		0.774560, -0.039157, 0.631287,
		37.449299, 39.324680, 39.005878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809780, 38.884163, 39.071117>,  <36.907104, 39.352097, 38.563980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809780, 38.884163, 39.071117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113636, 39.054226, 39.267967>,  <37.295952, 39.156265, 39.386078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113636, 39.054226, 39.267967>,  <36.809780, 38.884163, 39.071117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113636, 39.054226, 39.267967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562084, 0.048592, 0.825652,
		0.327120, -0.903813, 0.275887,
		0.759641, 0.425159, 0.492123,
		37.341530, 39.181774, 39.415604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798492, 38.624989, 39.728451>,  <36.809780, 38.884163, 39.071117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798492, 38.624989, 39.728451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010372, 38.958183, 39.792381>,  <37.137501, 39.158100, 39.830738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010372, 38.958183, 39.792381>,  <36.798492, 38.624989, 39.728451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010372, 38.958183, 39.792381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287631, -0.000856, 0.957741,
		0.797925, -0.553288, 0.239140,
		0.529702, 0.832990, 0.159825,
		37.169281, 39.208080, 39.840328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032337, 38.517311, 40.393383>,  <36.798492, 38.624989, 39.728451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032337, 38.517311, 40.393383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.069176, 38.910160, 40.327705>,  <37.091278, 39.145870, 40.288300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.069176, 38.910160, 40.327705>,  <37.032337, 38.517311, 40.393383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069176, 38.910160, 40.327705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204363, 0.180027, 0.962199,
		0.974553, -0.055061, 0.217289,
		0.092098, 0.982120, -0.164193,
		37.096806, 39.204796, 40.278446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329887, 38.678574, 41.049805>,  <37.032337, 38.517311, 40.393383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329887, 38.678574, 41.049805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209976, 39.017624, 40.874687>,  <37.138031, 39.221054, 40.769615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209976, 39.017624, 40.874687>,  <37.329887, 38.678574, 41.049805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209976, 39.017624, 40.874687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246354, 0.374560, 0.893876,
		0.921653, 0.375817, 0.096531,
		-0.299777, 0.847624, -0.437798,
		37.120045, 39.271912, 40.743347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640369, 39.248802, 41.374359>,  <37.329887, 38.678574, 41.049805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640369, 39.248802, 41.374359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320450, 39.396633, 41.185158>,  <37.128498, 39.485332, 41.071636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320450, 39.396633, 41.185158>,  <37.640369, 39.248802, 41.374359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320450, 39.396633, 41.185158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300333, 0.435896, 0.848407,
		0.519731, 0.820615, -0.237634,
		-0.799800, 0.369574, -0.473006,
		37.080509, 39.507504, 41.043255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643993, 39.938992, 41.494122>,  <37.640369, 39.248802, 41.374359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643993, 39.938992, 41.494122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267860, 39.829857, 41.412804>,  <37.042179, 39.764374, 41.364014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267860, 39.829857, 41.412804>,  <37.643993, 39.938992, 41.494122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267860, 39.829857, 41.412804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280142, 0.281710, 0.917693,
		-0.193111, 0.919891, -0.341335,
		-0.940334, -0.272839, -0.203298,
		36.985760, 39.748005, 41.351814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335583, 40.382687, 41.897457>,  <37.643993, 39.938992, 41.494122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335583, 40.382687, 41.897457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.048588, 40.113358, 41.826080>,  <36.876392, 39.951759, 41.783253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.048588, 40.113358, 41.826080>,  <37.335583, 40.382687, 41.897457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048588, 40.113358, 41.826080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371118, 0.152713, 0.915942,
		-0.589478, 0.723401, -0.359453,
		-0.717487, -0.673327, -0.178447,
		36.833344, 39.911358, 41.772545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717506, 40.746265, 42.015270>,  <37.335583, 40.382687, 41.897457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717506, 40.746265, 42.015270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605743, 40.363853, 42.050900>,  <36.538685, 40.134407, 42.072277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605743, 40.363853, 42.050900>,  <36.717506, 40.746265, 42.015270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605743, 40.363853, 42.050900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461353, 0.215030, 0.860765,
		-0.842071, 0.199413, -0.501150,
		-0.279410, -0.956032, 0.089070,
		36.521919, 40.077045, 42.077621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118942, 40.802525, 42.342766>,  <36.717506, 40.746265, 42.015270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118942, 40.802525, 42.342766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161026, 40.407883, 42.392624>,  <36.186275, 40.171097, 42.422539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161026, 40.407883, 42.392624>,  <36.118942, 40.802525, 42.342766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161026, 40.407883, 42.392624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551094, 0.046493, 0.833147,
		-0.827784, -0.156348, -0.538822,
		0.105209, -0.986607, 0.124649,
		36.192589, 40.111900, 42.430019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410145, 40.531460, 42.446438>,  <36.118942, 40.802525, 42.342766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410145, 40.531460, 42.446438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686710, 40.292309, 42.608662>,  <35.852650, 40.148819, 42.705997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686710, 40.292309, 42.608662>,  <35.410145, 40.531460, 42.446438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686710, 40.292309, 42.608662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435412, 0.103108, 0.894307,
		-0.576506, -0.794925, -0.189034,
		0.691416, -0.597881, 0.405563,
		35.894135, 40.112946, 42.730331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057934, 40.057323, 42.815746>,  <35.410145, 40.531460, 42.446438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057934, 40.057323, 42.815746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424721, 40.070915, 42.974751>,  <35.644794, 40.079071, 43.070152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424721, 40.070915, 42.974751>,  <35.057934, 40.057323, 42.815746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424721, 40.070915, 42.974751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394414, -0.072777, 0.916047,
		0.060054, -0.996769, -0.053333,
		0.916968, 0.033976, 0.397510,
		35.699810, 40.081108, 43.094002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310516, 39.404953, 43.230419>,  <35.057934, 40.057323, 42.815746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310516, 39.404953, 43.230419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434799, 39.761940, 43.361240>,  <35.509369, 39.976131, 43.439735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434799, 39.761940, 43.361240>,  <35.310516, 39.404953, 43.230419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434799, 39.761940, 43.361240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447515, -0.166209, 0.878695,
		0.838565, -0.419378, 0.347751,
		0.310706, 0.892467, 0.327055,
		35.528011, 40.029678, 43.459358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597614, 39.295601, 43.875332>,  <35.310516, 39.404953, 43.230419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597614, 39.295601, 43.875332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515106, 39.686985, 43.878712>,  <35.465603, 39.921814, 43.880741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515106, 39.686985, 43.878712>,  <35.597614, 39.295601, 43.875332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515106, 39.686985, 43.878712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356235, -0.083138, 0.930690,
		0.911345, 0.188962, 0.365711,
		-0.206270, 0.978459, 0.008453,
		35.453224, 39.980522, 43.881248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032948, 39.612629, 44.428524>,  <35.597614, 39.295601, 43.875332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032948, 39.612629, 44.428524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.703899, 39.824005, 44.344578>,  <35.506470, 39.950832, 44.294209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.703899, 39.824005, 44.344578>,  <36.032948, 39.612629, 44.428524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703899, 39.824005, 44.344578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316461, -0.118874, 0.941128,
		0.472385, 0.840605, 0.265020,
		-0.822621, 0.528443, -0.209864,
		35.457111, 39.982536, 44.281620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982414, 40.073048, 45.010681>,  <36.032948, 39.612629, 44.428524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982414, 40.073048, 45.010681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.618946, 40.062481, 44.844009>,  <35.400864, 40.056141, 44.744007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.618946, 40.062481, 44.844009>,  <35.982414, 40.073048, 45.010681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618946, 40.062481, 44.844009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416739, -0.003368, 0.909020,
		-0.025414, 0.999646, -0.007947,
		-0.908671, -0.026413, -0.416676,
		35.346344, 40.054558, 44.719006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536957, 40.636696, 45.332947>,  <35.982414, 40.073048, 45.010681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536957, 40.636696, 45.332947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286980, 40.370750, 45.169281>,  <35.136993, 40.211185, 45.071083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286980, 40.370750, 45.169281>,  <35.536957, 40.636696, 45.332947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286980, 40.370750, 45.169281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461861, -0.107674, 0.880392,
		-0.629394, 0.739167, -0.239783,
		-0.624939, -0.664860, -0.409161,
		35.099499, 40.171291, 45.046532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731319, 40.758732, 45.482662>,  <35.536957, 40.636696, 45.332947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731319, 40.758732, 45.482662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.735901, 40.377525, 45.361580>,  <34.738651, 40.148800, 45.288933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.735901, 40.377525, 45.361580>,  <34.731319, 40.758732, 45.482662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735901, 40.377525, 45.361580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535941, -0.261420, 0.802762,
		-0.844178, 0.153036, -0.513755,
		0.011454, -0.953016, -0.302703,
		34.739338, 40.091621, 45.270767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.856194, 40.549122, 45.466171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088486, 40.223602, 45.474926>,  <34.227859, 40.028290, 45.480179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.088486, 40.223602, 45.474926>,  <33.856194, 40.549122, 45.466171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088486, 40.223602, 45.474926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545688, -0.369167, 0.752290,
		-0.604135, -0.448822, -0.658468,
		0.580729, -0.813802, 0.021890,
		34.262703, 39.979462, 45.481495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417297, 40.012943, 45.445965>,  <33.856194, 40.549122, 45.466171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417297, 40.012943, 45.445965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.755322, 39.886471, 45.618431>,  <33.958138, 39.810589, 45.721912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.755322, 39.886471, 45.618431>,  <33.417297, 40.012943, 45.445965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755322, 39.886471, 45.618431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521699, -0.311049, 0.794404,
		-0.117061, -0.896258, -0.427806,
		0.845060, -0.316179, 0.431166,
		34.008839, 39.791618, 45.747780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236000, 39.318775, 45.677197>,  <33.417297, 40.012943, 45.445965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236000, 39.318775, 45.677197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550400, 39.445568, 45.889511>,  <33.739040, 39.521645, 46.016899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550400, 39.445568, 45.889511>,  <33.236000, 39.318775, 45.677197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550400, 39.445568, 45.889511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394721, -0.403486, 0.825466,
		0.475822, -0.858325, -0.192020,
		0.785996, 0.316981, 0.530786,
		33.786198, 39.540661, 46.048748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273445, 38.821575, 46.143333>,  <33.236000, 39.318775, 45.677197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273445, 38.821575, 46.143333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539055, 39.068600, 46.311947>,  <33.698421, 39.216816, 46.413116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539055, 39.068600, 46.311947>,  <33.273445, 38.821575, 46.143333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539055, 39.068600, 46.311947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171287, -0.423135, 0.889729,
		0.727828, -0.663005, -0.175191,
		0.664024, 0.617561, 0.421534,
		33.738262, 39.253868, 46.438408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567169, 38.429955, 46.688740>,  <33.273445, 38.821575, 46.143333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567169, 38.429955, 46.688740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625610, 38.817890, 46.766788>,  <33.660675, 39.050652, 46.813618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625610, 38.817890, 46.766788>,  <33.567169, 38.429955, 46.688740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625610, 38.817890, 46.766788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177069, -0.168413, 0.969682,
		0.973293, -0.176226, 0.147121,
		0.146106, 0.969836, 0.195120,
		33.669441, 39.108841, 46.825325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821884, 38.398819, 47.383823>,  <33.567169, 38.429955, 46.688740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821884, 38.398819, 47.383823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664001, 38.757080, 47.301846>,  <33.569271, 38.972038, 47.252659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664001, 38.757080, 47.301846>,  <33.821884, 38.398819, 47.383823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664001, 38.757080, 47.301846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417017, 0.024124, 0.908578,
		0.818718, 0.444092, 0.363982,
		-0.394711, 0.895656, -0.204945,
		33.545589, 39.025776, 47.240360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894791, 38.722069, 47.989815>,  <33.821884, 38.398819, 47.383823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894791, 38.722069, 47.989815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.601486, 38.921146, 47.804504>,  <33.425503, 39.040592, 47.693317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.601486, 38.921146, 47.804504>,  <33.894791, 38.722069, 47.989815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601486, 38.921146, 47.804504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466365, 0.127694, 0.875327,
		0.494803, 0.857902, 0.138473,
		-0.733263, 0.497693, -0.463279,
		33.381508, 39.070454, 47.665520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742168, 39.296223, 48.454334>,  <33.894791, 38.722069, 47.989815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742168, 39.296223, 48.454334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426105, 39.252407, 48.213120>,  <33.236469, 39.226116, 48.068390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426105, 39.252407, 48.213120>,  <33.742168, 39.296223, 48.454334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426105, 39.252407, 48.213120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609108, 0.031033, 0.792480,
		-0.068097, 0.993497, -0.091245,
		-0.790158, -0.109543, -0.603034,
		33.189056, 39.219543, 48.032207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334297, 39.839821, 48.597946>,  <33.742168, 39.296223, 48.454334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334297, 39.839821, 48.597946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088753, 39.579304, 48.419514>,  <32.941425, 39.422993, 48.312454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088753, 39.579304, 48.419514>,  <33.334297, 39.839821, 48.597946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088753, 39.579304, 48.419514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560402, -0.038451, 0.827327,
		-0.555987, 0.757850, -0.341383,
		-0.613863, -0.651295, -0.446079,
		32.904594, 39.383915, 48.285690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746147, 40.163025, 48.705139>,  <33.334297, 39.839821, 48.597946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746147, 40.163025, 48.705139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.671169, 39.772865, 48.658741>,  <32.626183, 39.538769, 48.630901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.671169, 39.772865, 48.658741>,  <32.746147, 40.163025, 48.705139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671169, 39.772865, 48.658741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524339, -0.000496, 0.851509,
		-0.830622, 0.220433, -0.511348,
		-0.187447, -0.975402, -0.115993,
		32.614937, 39.480244, 48.623943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980175, 40.002735, 48.879642>,  <32.746147, 40.163025, 48.705139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980175, 40.002735, 48.879642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180008, 39.658112, 48.915710>,  <32.299908, 39.451336, 48.937351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180008, 39.658112, 48.915710>,  <31.980175, 40.002735, 48.879642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180008, 39.658112, 48.915710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455798, -0.172920, 0.873125,
		-0.736660, -0.477293, -0.479086,
		0.499580, -0.861563, 0.090165,
		32.329884, 39.399643, 48.942760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434488, 39.587395, 49.084782>,  <31.980175, 40.002735, 48.879642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434488, 39.587395, 49.084782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.783819, 39.422295, 49.188271>,  <31.993418, 39.323235, 49.250366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.783819, 39.422295, 49.188271>,  <31.434488, 39.587395, 49.084782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783819, 39.422295, 49.188271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360632, -0.190761, 0.912992,
		-0.327483, -0.890644, -0.315448,
		0.873326, -0.412750, 0.258724,
		32.045818, 39.298470, 49.265888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281315, 38.964878, 49.492599>,  <31.434488, 39.587395, 49.084782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281315, 38.964878, 49.492599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.650719, 39.083191, 49.590290>,  <31.872360, 39.154179, 49.648907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.650719, 39.083191, 49.590290>,  <31.281315, 38.964878, 49.492599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650719, 39.083191, 49.590290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219880, -0.113505, 0.968901,
		0.314304, -0.948488, -0.039786,
		0.923507, 0.295781, 0.244229,
		31.927771, 39.171925, 49.663559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589628, 38.423996, 49.999599>,  <31.281315, 38.964878, 49.492599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589628, 38.423996, 49.999599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.788322, 38.769405, 50.034431>,  <31.907539, 38.976650, 50.055332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.788322, 38.769405, 50.034431>,  <31.589628, 38.423996, 49.999599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788322, 38.769405, 50.034431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010585, -0.106359, 0.994271,
		0.867838, -0.492968, -0.061973,
		0.496735, 0.863522, 0.087084,
		31.937344, 39.028461, 50.060558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772970, 38.350002, 50.603596>,  <31.589628, 38.423996, 49.999599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772970, 38.350002, 50.603596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.880898, 38.735020, 50.592907>,  <31.945654, 38.966030, 50.586494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.880898, 38.735020, 50.592907>,  <31.772970, 38.350002, 50.603596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880898, 38.735020, 50.592907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139106, 0.066428, 0.988047,
		0.952811, -0.262873, 0.151818,
		0.269816, 0.962541, -0.026727,
		31.961842, 39.023781, 50.584888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248726, 38.371708, 51.122570>,  <31.772970, 38.350002, 50.603596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248726, 38.371708, 51.122570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.111912, 38.740952, 51.052269>,  <32.029823, 38.962498, 51.010090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.111912, 38.740952, 51.052269>,  <32.248726, 38.371708, 51.122570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111912, 38.740952, 51.052269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256643, 0.088154, 0.962478,
		0.903962, 0.374304, 0.206757,
		-0.342033, 0.923106, -0.175751,
		32.009300, 39.017883, 50.999542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463749, 38.756401, 51.735355>,  <32.248726, 38.371708, 51.122570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463749, 38.756401, 51.735355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.171490, 38.950855, 51.543598>,  <31.996134, 39.067528, 51.428543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.171490, 38.950855, 51.543598>,  <32.463749, 38.756401, 51.735355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171490, 38.950855, 51.543598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415383, 0.240736, 0.877214,
		0.541853, 0.840070, 0.026039,
		-0.730652, 0.486137, -0.479394,
		31.952293, 39.096695, 51.399780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350208, 39.315063, 52.157009>,  <32.463749, 38.756401, 51.735355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350208, 39.315063, 52.157009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.021702, 39.298527, 51.929390>,  <31.824598, 39.288605, 51.792820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.021702, 39.298527, 51.929390>,  <32.350208, 39.315063, 52.157009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021702, 39.298527, 51.929390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570297, 0.030123, 0.820886,
		-0.016798, 0.998691, -0.048318,
		-0.821267, -0.041345, -0.569044,
		31.775322, 39.286121, 51.758678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837687, 39.818890, 52.497066>,  <32.350208, 39.315063, 52.157009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837687, 39.818890, 52.497066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615705, 39.564430, 52.282646>,  <31.482517, 39.411755, 52.153996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615705, 39.564430, 52.282646>,  <31.837687, 39.818890, 52.497066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615705, 39.564430, 52.282646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527944, -0.228656, 0.817919,
		-0.642885, 0.736911, -0.208954,
		-0.554954, -0.636144, -0.536047,
		31.449219, 39.373589, 52.121834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062357, 39.860481, 52.715424>,  <31.837687, 39.818890, 52.497066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062357, 39.860481, 52.715424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115953, 39.507530, 52.535004>,  <31.148111, 39.295757, 52.426750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115953, 39.507530, 52.535004>,  <31.062357, 39.860481, 52.715424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115953, 39.507530, 52.535004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607342, -0.432779, 0.666211,
		-0.783059, 0.184676, -0.593897,
		0.133992, -0.882381, -0.451053,
		31.156151, 39.242817, 52.399689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417156, 39.613026, 52.791492>,  <31.062357, 39.860481, 52.715424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417156, 39.613026, 52.791492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660416, 39.306648, 52.708076>,  <30.806372, 39.122822, 52.658028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660416, 39.306648, 52.708076>,  <30.417156, 39.613026, 52.791492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660416, 39.306648, 52.708076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443750, -0.545838, 0.710737,
		-0.658212, -0.339694, -0.671837,
		0.608147, -0.765943, -0.208538,
		30.842859, 39.076866, 52.645515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960173, 39.171032, 52.562214>,  <30.417156, 39.613026, 52.791492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960173, 39.171032, 52.562214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.290478, 38.986084, 52.691410>,  <30.488661, 38.875114, 52.768929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.290478, 38.986084, 52.691410>,  <29.960173, 39.171032, 52.562214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290478, 38.986084, 52.691410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553669, -0.555354, 0.620510,
		-0.107530, -0.691227, -0.714592,
		0.825765, -0.462371, 0.322994,
		30.538208, 38.847374, 52.788307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560089, 39.132957, 51.918385>,  <29.960173, 39.171032, 52.562214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560089, 39.132957, 51.918385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234955, 38.918339, 52.009087>,  <29.039875, 38.789566, 52.063507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234955, 38.918339, 52.009087>,  <29.560089, 39.132957, 51.918385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234955, 38.918339, 52.009087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200914, 0.107144, 0.973732,
		-0.546750, 0.837040, 0.020710,
		-0.812833, -0.536548, 0.226754,
		28.991104, 38.757374, 52.077114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934889, 39.316029, 52.219765>,  <29.560089, 39.132957, 51.918385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934889, 39.316029, 52.219765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.677984, 39.084267, 52.420479>,  <28.523842, 38.945210, 52.540905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.677984, 39.084267, 52.420479>,  <28.934889, 39.316029, 52.219765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677984, 39.084267, 52.420479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309539, -0.794963, -0.521747,
		0.701201, -0.179778, 0.689925,
		-0.642264, -0.579408, 0.501781,
		28.485306, 38.910446, 52.571014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239492, 38.725616, 52.619827>,  <28.934889, 39.316029, 52.219765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239492, 38.725616, 52.619827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.859138, 38.654160, 52.518715>,  <28.630926, 38.611286, 52.458046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.859138, 38.654160, 52.518715>,  <29.239492, 38.725616, 52.619827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859138, 38.654160, 52.518715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295476, -0.767201, -0.569295,
		-0.092236, -0.616027, 0.782306,
		-0.950887, -0.178644, -0.252785,
		28.573872, 38.600567, 52.442879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263128, 38.005577, 52.434162>,  <29.239492, 38.725616, 52.619827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263128, 38.005577, 52.434162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.903629, 38.113449, 52.295872>,  <28.687929, 38.178173, 52.212898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.903629, 38.113449, 52.295872>,  <29.263128, 38.005577, 52.434162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903629, 38.113449, 52.295872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101702, -0.638759, -0.762656,
		-0.426509, -0.720596, 0.546655,
		-0.898747, 0.269684, -0.345722,
		28.634005, 38.194355, 52.192154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065289, 37.343739, 52.117493>,  <29.263128, 38.005577, 52.434162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065289, 37.343739, 52.117493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.861301, 37.655067, 51.970989>,  <28.738909, 37.841866, 51.883087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.861301, 37.655067, 51.970989>,  <29.065289, 37.343739, 52.117493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861301, 37.655067, 51.970989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059013, -0.393128, -0.917588,
		-0.858167, -0.489554, 0.154552,
		-0.509968, 0.778323, -0.366260,
		28.708311, 37.888565, 51.861111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589317, 37.084183, 51.678795>,  <29.065289, 37.343739, 52.117493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589317, 37.084183, 51.678795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.626375, 37.464451, 51.560379>,  <28.648609, 37.692612, 51.489330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.626375, 37.464451, 51.560379>,  <28.589317, 37.084183, 51.678795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626375, 37.464451, 51.560379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084565, -0.303753, -0.948990,
		-0.992102, 0.062883, -0.108534,
		0.092643, 0.950673, -0.296036,
		28.654167, 37.749653, 51.471569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327702, 37.024029, 51.022068>,  <28.589317, 37.084183, 51.678795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327702, 37.024029, 51.022068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.556919, 37.351635, 51.033672>,  <28.694448, 37.548199, 51.040634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.556919, 37.351635, 51.033672>,  <28.327702, 37.024029, 51.022068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556919, 37.351635, 51.033672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178662, -0.090304, -0.979758,
		-0.799814, 0.566626, -0.198074,
		0.573043, 0.819012, 0.029008,
		28.728832, 37.597340, 51.042374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086523, 37.439346, 50.548771>,  <28.327702, 37.024029, 51.022068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086523, 37.439346, 50.548771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.461010, 37.575146, 50.585068>,  <28.685701, 37.656628, 50.606846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.461010, 37.575146, 50.585068>,  <28.086523, 37.439346, 50.548771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461010, 37.575146, 50.585068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060724, 0.098048, -0.993327,
		-0.346134, 0.935481, 0.071179,
		0.936218, 0.339502, 0.090744,
		28.741875, 37.676998, 50.612289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228521, 38.004406, 49.965679>,  <28.086523, 37.439346, 50.548771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228521, 38.004406, 49.965679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.599508, 37.932613, 50.096886>,  <28.822100, 37.889538, 50.175610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.599508, 37.932613, 50.096886>,  <28.228521, 38.004406, 49.965679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599508, 37.932613, 50.096886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360236, 0.193867, -0.912494,
		0.100187, 0.964469, 0.244462,
		0.927466, -0.179484, 0.328014,
		28.877748, 37.878769, 50.195290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679731, 38.522194, 49.754955>,  <28.228521, 38.004406, 49.965679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679731, 38.522194, 49.754955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.933167, 38.219112, 49.817497>,  <29.085228, 38.037262, 49.855022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.933167, 38.219112, 49.817497>,  <28.679731, 38.522194, 49.754955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933167, 38.219112, 49.817497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449134, 0.195673, -0.871775,
		0.629956, 0.622569, 0.464288,
		0.633588, -0.757707, 0.156352,
		29.123243, 37.991798, 49.864403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265438, 38.751015, 49.576832>,  <28.679731, 38.522194, 49.754955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265438, 38.751015, 49.576832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.329706, 38.357121, 49.550037>,  <29.368267, 38.120785, 49.533958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.329706, 38.357121, 49.550037>,  <29.265438, 38.751015, 49.576832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329706, 38.357121, 49.550037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469630, 0.135968, -0.872331,
		0.868120, 0.108698, 0.484305,
		0.160671, -0.984732, -0.066988,
		29.377907, 38.061703, 49.529942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979576, 38.689228, 49.324654>,  <29.265438, 38.751015, 49.576832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979576, 38.689228, 49.324654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.822836, 38.327801, 49.255356>,  <29.728792, 38.110943, 49.213779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.822836, 38.327801, 49.255356>,  <29.979576, 38.689228, 49.324654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822836, 38.327801, 49.255356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485410, -0.043084, -0.873224,
		0.781556, -0.426267, 0.455485,
		-0.391851, -0.903571, -0.173241,
		29.705280, 38.056728, 49.203384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537876, 38.192558, 49.177002>,  <29.979576, 38.689228, 49.324654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537876, 38.192558, 49.177002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.202650, 38.064911, 49.000000>,  <30.001514, 37.988323, 48.893799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.202650, 38.064911, 49.000000>,  <30.537876, 38.192558, 49.177002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202650, 38.064911, 49.000000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442336, 0.077327, -0.893510,
		0.319351, -0.944556, 0.076352,
		-0.838066, -0.319117, -0.442505,
		29.951231, 37.969177, 48.867249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761511, 37.606018, 48.796997>,  <30.537876, 38.192558, 49.177002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761511, 37.606018, 48.796997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423309, 37.751263, 48.640396>,  <30.220388, 37.838409, 48.546436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423309, 37.751263, 48.640396>,  <30.761511, 37.606018, 48.796997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423309, 37.751263, 48.640396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482147, 0.204081, -0.851989,
		-0.229472, -0.909120, -0.347626,
		-0.845504, 0.363115, -0.391498,
		30.169659, 37.860199, 48.522945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667425, 37.291878, 48.153648>,  <30.761511, 37.606018, 48.796997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667425, 37.291878, 48.153648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.448166, 37.624317, 48.116112>,  <30.316610, 37.823780, 48.093590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.448166, 37.624317, 48.116112>,  <30.667425, 37.291878, 48.153648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448166, 37.624317, 48.116112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368463, 0.139230, -0.919157,
		-0.750844, -0.538415, -0.382548,
		-0.548150, 0.831098, -0.093846,
		30.283720, 37.873646, 48.087959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407734, 37.180717, 47.539371>,  <30.667425, 37.291878, 48.153648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407734, 37.180717, 47.539371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.353415, 37.572254, 47.600601>,  <30.320824, 37.807175, 47.637341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.353415, 37.572254, 47.600601>,  <30.407734, 37.180717, 47.539371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353415, 37.572254, 47.600601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307943, 0.188555, -0.932533,
		-0.941663, -0.079498, -0.327033,
		-0.135799, 0.978840, 0.153074,
		30.312675, 37.865906, 47.646523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972612, 37.453136, 47.020458>,  <30.407734, 37.180717, 47.539371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972612, 37.453136, 47.020458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116169, 37.800121, 47.158272>,  <30.202303, 38.008312, 47.240959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116169, 37.800121, 47.158272>,  <29.972612, 37.453136, 47.020458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116169, 37.800121, 47.158272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113579, 0.325797, -0.938592,
		-0.926443, 0.375984, 0.018400,
		0.358891, 0.867463, 0.344537,
		30.223837, 38.060360, 47.261631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805593, 37.909580, 46.562065>,  <29.972612, 37.453136, 47.020458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805593, 37.909580, 46.562065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.079939, 38.107185, 46.775810>,  <30.244545, 38.225750, 46.904057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.079939, 38.107185, 46.775810>,  <29.805593, 37.909580, 46.562065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079939, 38.107185, 46.775810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266466, 0.512814, -0.816099,
		-0.677193, 0.702121, 0.220082,
		0.685861, 0.494013, 0.534365,
		30.285698, 38.255390, 46.936119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603277, 38.507561, 46.537033>,  <29.805593, 37.909580, 46.562065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603277, 38.507561, 46.537033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002188, 38.507614, 46.566544>,  <30.241533, 38.507648, 46.584251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002188, 38.507614, 46.566544>,  <29.603277, 38.507561, 46.537033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002188, 38.507614, 46.566544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066175, 0.440497, -0.895312,
		-0.032620, 0.897754, 0.439287,
		0.997275, 0.000136, 0.073778,
		30.301371, 38.507656, 46.588676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841797, 39.167351, 46.239510>,  <29.603277, 38.507561, 46.537033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841797, 39.167351, 46.239510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.165001, 38.931702, 46.236595>,  <30.358923, 38.790314, 46.234844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.165001, 38.931702, 46.236595>,  <29.841797, 39.167351, 46.239510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165001, 38.931702, 46.236595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257016, 0.363588, -0.895403,
		0.530153, 0.721621, 0.445197,
		0.808010, -0.589124, -0.007289,
		30.407404, 38.754963, 46.234409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234880, 39.578342, 45.898506>,  <29.841797, 39.167351, 46.239510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234880, 39.578342, 45.898506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.452234, 39.242550, 45.898300>,  <30.582645, 39.041073, 45.898178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.452234, 39.242550, 45.898300>,  <30.234880, 39.578342, 45.898506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452234, 39.242550, 45.898300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451579, 0.292815, -0.842814,
		0.707680, 0.457739, 0.538205,
		0.543383, -0.839485, -0.000514,
		30.615250, 38.990704, 45.898148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893429, 39.700924, 45.648247>,  <30.234880, 39.578342, 45.898506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893429, 39.700924, 45.648247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919563, 39.309788, 45.568695>,  <30.935244, 39.075104, 45.520966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919563, 39.309788, 45.568695>,  <30.893429, 39.700924, 45.648247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919563, 39.309788, 45.568695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630992, 0.194885, -0.750912,
		0.773033, -0.076430, 0.629745,
		0.065335, -0.977844, -0.198880,
		30.939163, 39.016434, 45.509029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.528889, 32.332085, 42.640514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.173637, 32.441723, 42.492947>,  <42.960487, 32.507507, 42.404404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.173637, 32.441723, 42.492947>,  <43.528889, 32.332085, 42.640514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173637, 32.441723, 42.492947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423585, 0.176670, -0.888461,
		-0.178345, -0.945336, -0.273009,
		-0.888126, 0.274096, -0.368922,
		42.907200, 32.523952, 42.382271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371811, 32.034798, 42.037910>,  <43.528889, 32.332085, 42.640514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371811, 32.034798, 42.037910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160080, 32.373692, 42.019989>,  <43.033039, 32.577026, 42.009235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160080, 32.373692, 42.019989>,  <43.371811, 32.034798, 42.037910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160080, 32.373692, 42.019989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393025, 0.198067, -0.897943,
		-0.751891, -0.492917, -0.437826,
		-0.529330, 0.847232, -0.044804,
		43.001282, 32.627861, 42.006546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202877, 31.982431, 41.440556>,  <43.371811, 32.034798, 42.037910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202877, 31.982431, 41.440556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116493, 32.366451, 41.511738>,  <43.064663, 32.596863, 41.554447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116493, 32.366451, 41.511738>,  <43.202877, 31.982431, 41.440556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116493, 32.366451, 41.511738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357069, 0.247283, -0.900751,
		-0.908771, -0.130980, -0.396205,
		-0.215955, 0.960050, 0.177955,
		43.051708, 32.654465, 41.565125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870880, 32.327660, 40.859604>,  <43.202877, 31.982431, 41.440556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870880, 32.327660, 40.859604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.997208, 32.648884, 41.061733>,  <43.073006, 32.841618, 41.183010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.997208, 32.648884, 41.061733>,  <42.870880, 32.327660, 40.859604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997208, 32.648884, 41.061733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272955, 0.433173, -0.858986,
		-0.908708, 0.409219, -0.082393,
		0.315823, 0.803057, 0.505326,
		43.091953, 32.889801, 41.213329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711391, 32.844498, 40.420868>,  <42.870880, 32.327660, 40.859604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711391, 32.844498, 40.420868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.966103, 33.019554, 40.674793>,  <43.118931, 33.124588, 40.827148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.966103, 33.019554, 40.674793>,  <42.711391, 32.844498, 40.420868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966103, 33.019554, 40.674793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233362, 0.675303, -0.699648,
		-0.734886, 0.593660, 0.327887,
		0.636776, 0.437646, 0.634809,
		43.157135, 33.150848, 40.865234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540455, 33.606197, 40.517483>,  <42.711391, 32.844498, 40.420868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540455, 33.606197, 40.517483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.931007, 33.561985, 40.591736>,  <43.165340, 33.535458, 40.636288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.931007, 33.561985, 40.591736>,  <42.540455, 33.606197, 40.517483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931007, 33.561985, 40.591736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199795, 0.788933, -0.581092,
		-0.082224, 0.604456, 0.792384,
		0.976382, -0.110534, 0.185636,
		43.223923, 33.528824, 40.647427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824337, 34.318844, 40.770645>,  <42.540455, 33.606197, 40.517483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824337, 34.318844, 40.770645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.124901, 34.108704, 40.610950>,  <43.305241, 33.982620, 40.515133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.124901, 34.108704, 40.610950>,  <42.824337, 34.318844, 40.770645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124901, 34.108704, 40.610950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206206, 0.761717, -0.614220,
		0.626785, 0.379207, 0.680693,
		0.751412, -0.525347, -0.399237,
		43.350323, 33.951099, 40.491180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424351, 34.887001, 40.645798>,  <42.824337, 34.318844, 40.770645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424351, 34.887001, 40.645798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.499420, 34.550426, 40.443111>,  <43.544460, 34.348480, 40.321499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.499420, 34.550426, 40.443111>,  <43.424351, 34.887001, 40.645798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499420, 34.550426, 40.443111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371208, 0.538379, -0.756540,
		0.909387, -0.046116, 0.413387,
		0.187670, -0.841440, -0.506714,
		43.555721, 34.297993, 40.291096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051769, 35.148098, 40.244179>,  <43.424351, 34.887001, 40.645798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051769, 35.148098, 40.244179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915115, 34.826210, 40.049976>,  <43.833122, 34.633080, 39.933456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915115, 34.826210, 40.049976>,  <44.051769, 35.148098, 40.244179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915115, 34.826210, 40.049976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125202, 0.473014, -0.872113,
		0.931457, -0.358729, -0.060845,
		-0.341633, -0.804718, -0.485506,
		43.812626, 34.584793, 39.904324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606461, 34.968063, 39.553226>,  <44.051769, 35.148098, 40.244179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606461, 34.968063, 39.553226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.239658, 34.816559, 39.503212>,  <44.019577, 34.725655, 39.473202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.239658, 34.816559, 39.503212>,  <44.606461, 34.968063, 39.553226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.239658, 34.816559, 39.503212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029390, 0.376796, -0.925830,
		0.397793, -0.845315, -0.356655,
		-0.917004, -0.378771, -0.125043,
		43.964558, 34.702930, 39.465702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546253, 34.774109, 38.791874>,  <44.606461, 34.968063, 39.553226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546253, 34.774109, 38.791874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168716, 34.810089, 38.919041>,  <43.942196, 34.831676, 38.995342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168716, 34.810089, 38.919041>,  <44.546253, 34.774109, 38.791874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168716, 34.810089, 38.919041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283376, 0.274384, -0.918919,
		-0.169889, -0.957404, -0.233485,
		-0.943841, 0.089951, 0.317920,
		43.885563, 34.837074, 39.014416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264214, 34.443897, 38.243198>,  <44.546253, 34.774109, 38.791874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264214, 34.443897, 38.243198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.981426, 34.654442, 38.432144>,  <43.811752, 34.780769, 38.545513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.981426, 34.654442, 38.432144>,  <44.264214, 34.443897, 38.243198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981426, 34.654442, 38.432144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241104, 0.448519, -0.860639,
		-0.664877, -0.722337, -0.190182,
		-0.706971, 0.526365, 0.472368,
		43.769337, 34.812351, 38.573856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557735, 34.389355, 37.862637>,  <44.264214, 34.443897, 38.243198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557735, 34.389355, 37.862637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563644, 34.726242, 38.078213>,  <43.567188, 34.928375, 38.207558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563644, 34.726242, 38.078213>,  <43.557735, 34.389355, 37.862637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563644, 34.726242, 38.078213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375924, 0.504131, -0.777517,
		-0.926533, -0.191118, 0.324054,
		0.014768, 0.842215, 0.538939,
		43.568073, 34.978905, 38.239895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012981, 34.734501, 37.574078>,  <43.557735, 34.389355, 37.862637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012981, 34.734501, 37.574078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205475, 35.021454, 37.775581>,  <43.320972, 35.193626, 37.896484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205475, 35.021454, 37.775581>,  <43.012981, 34.734501, 37.574078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205475, 35.021454, 37.775581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277172, 0.669724, -0.688945,
		-0.831618, 0.191917, 0.521133,
		0.481236, 0.717382, 0.503761,
		43.349846, 35.236668, 37.926708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585934, 35.347279, 37.517139>,  <43.012981, 34.734501, 37.574078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585934, 35.347279, 37.517139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.948017, 35.477436, 37.626480>,  <43.165268, 35.555531, 37.692085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.948017, 35.477436, 37.626480>,  <42.585934, 35.347279, 37.517139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948017, 35.477436, 37.626480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038230, 0.702968, -0.710194,
		-0.423249, 0.632422, 0.648770,
		0.905206, 0.325391, 0.273353,
		43.219578, 35.575054, 37.708485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522953, 36.060135, 37.393684>,  <42.585934, 35.347279, 37.517139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522953, 36.060135, 37.393684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918411, 36.000240, 37.398640>,  <43.155685, 35.964302, 37.401615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918411, 36.000240, 37.398640>,  <42.522953, 36.060135, 37.393684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918411, 36.000240, 37.398640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122877, 0.758307, -0.640212,
		0.086471, 0.634467, 0.768098,
		0.988648, -0.149741, 0.012390,
		43.215004, 35.955318, 37.402355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819588, 36.675247, 37.485813>,  <42.522953, 36.060135, 37.393684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819588, 36.675247, 37.485813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.087723, 36.435505, 37.310810>,  <43.248604, 36.291660, 37.205807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.087723, 36.435505, 37.310810>,  <42.819588, 36.675247, 37.485813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087723, 36.435505, 37.310810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209969, 0.718700, -0.662860,
		0.711731, 0.352476, 0.607618,
		0.670338, -0.599358, -0.437512,
		43.288826, 36.255699, 37.179558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342068, 37.143314, 37.417625>,  <42.819588, 36.675247, 37.485813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342068, 37.143314, 37.417625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.418316, 36.836662, 37.172371>,  <43.464066, 36.652672, 37.025219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.418316, 36.836662, 37.172371>,  <43.342068, 37.143314, 37.417625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418316, 36.836662, 37.172371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071770, 0.633806, -0.770155,
		0.979036, 0.102805, 0.175839,
		0.190624, -0.766629, -0.613141,
		43.475502, 36.606674, 36.988430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934147, 37.180145, 37.055820>,  <43.342068, 37.143314, 37.417625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934147, 37.180145, 37.055820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725636, 36.929272, 36.824337>,  <43.600529, 36.778748, 36.685448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725636, 36.929272, 36.824337>,  <43.934147, 37.180145, 37.055820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725636, 36.929272, 36.824337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341590, 0.468087, -0.814991,
		0.782037, -0.622521, -0.029765,
		-0.521282, -0.627186, -0.578708,
		43.569252, 36.741116, 36.650726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345318, 37.061359, 36.464195>,  <43.934147, 37.180145, 37.055820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345318, 37.061359, 36.464195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.981117, 36.941299, 36.350430>,  <43.762596, 36.869263, 36.282169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.981117, 36.941299, 36.350430>,  <44.345318, 37.061359, 36.464195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981117, 36.941299, 36.350430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125209, 0.455407, -0.881435,
		0.394086, -0.838162, -0.377069,
		-0.910505, -0.300148, -0.284415,
		43.707966, 36.851254, 36.265106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483376, 36.858948, 35.789364>,  <44.345318, 37.061359, 36.464195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483376, 36.858948, 35.789364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.094734, 36.935654, 35.844803>,  <43.861549, 36.981678, 35.878067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.094734, 36.935654, 35.844803>,  <44.483376, 36.858948, 35.789364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094734, 36.935654, 35.844803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005239, 0.568199, -0.822874,
		-0.236548, -0.800235, -0.551061,
		-0.971606, 0.191763, 0.138599,
		43.803253, 36.993183, 35.886383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469166, 36.135487, 35.618763>,  <44.483376, 36.858948, 35.789364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469166, 36.135487, 35.618763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.662449, 35.858418, 35.404575>,  <44.778419, 35.692177, 35.276062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.662449, 35.858418, 35.404575>,  <44.469166, 36.135487, 35.618763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662449, 35.858418, 35.404575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387810, -0.717670, 0.578406,
		-0.784932, -0.071829, -0.615405,
		0.483204, -0.692669, -0.535466,
		44.807411, 35.650616, 35.243935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914234, 35.725555, 35.378948>,  <44.469166, 36.135487, 35.618763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914234, 35.725555, 35.378948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.234505, 35.487610, 35.350498>,  <44.426666, 35.344841, 35.333427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.234505, 35.487610, 35.350498>,  <43.914234, 35.725555, 35.378948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234505, 35.487610, 35.350498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536043, -0.764347, 0.358375,
		-0.267549, -0.248815, -0.930865,
		0.800672, -0.594866, -0.071125,
		44.474705, 35.309151, 35.329163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638710, 35.084293, 35.112110>,  <43.914234, 35.725555, 35.378948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638710, 35.084293, 35.112110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.988411, 34.998592, 35.286366>,  <44.198231, 34.947170, 35.390919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.988411, 34.998592, 35.286366>,  <43.638710, 35.084293, 35.112110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988411, 34.998592, 35.286366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446966, -0.705481, 0.550016,
		0.189489, -0.675567, -0.712533,
		0.874251, -0.214256, 0.435637,
		44.250687, 34.934315, 35.417057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913296, 34.335281, 34.890114>,  <43.638710, 35.084293, 35.112110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913296, 34.335281, 34.890114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072460, 34.436165, 35.242943>,  <44.167961, 34.496696, 35.454639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072460, 34.436165, 35.242943>,  <43.913296, 34.335281, 34.890114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072460, 34.436165, 35.242943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370935, -0.835147, 0.406124,
		0.839089, -0.488795, -0.238764,
		0.397915, 0.252209, 0.882074,
		44.191833, 34.511826, 35.507565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053444, 33.705978, 35.151485>,  <43.913296, 34.335281, 34.890114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053444, 33.705978, 35.151485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077564, 33.939938, 35.475029>,  <44.092037, 34.080315, 35.669155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077564, 33.939938, 35.475029>,  <44.053444, 33.705978, 35.151485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077564, 33.939938, 35.475029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551449, -0.655927, 0.515425,
		0.832026, -0.477126, 0.282990,
		0.060302, 0.584902, 0.808859,
		44.095654, 34.115410, 35.717686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427696, 33.327965, 35.569752>,  <44.053444, 33.705978, 35.151485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427696, 33.327965, 35.569752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217079, 33.598640, 35.775608>,  <44.090710, 33.761044, 35.899120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217079, 33.598640, 35.775608>,  <44.427696, 33.327965, 35.569752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217079, 33.598640, 35.775608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398232, -0.731147, 0.553926,
		0.751112, 0.086717, 0.654455,
		-0.526538, 0.676686, 0.514640,
		44.059116, 33.801647, 35.930000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503986, 33.115665, 36.284576>,  <44.427696, 33.327965, 35.569752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503986, 33.115665, 36.284576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159348, 33.318676, 36.281193>,  <43.952564, 33.440483, 36.279163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159348, 33.318676, 36.281193>,  <44.503986, 33.115665, 36.284576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159348, 33.318676, 36.281193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397664, -0.664530, 0.632664,
		0.315471, 0.548464, 0.774381,
		-0.861593, 0.507530, -0.008464,
		43.900871, 33.470936, 36.278652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350342, 33.187344, 37.021820>,  <44.503986, 33.115665, 36.284576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350342, 33.187344, 37.021820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004360, 33.274303, 36.840889>,  <43.796772, 33.326477, 36.732330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004360, 33.274303, 36.840889>,  <44.350342, 33.187344, 37.021820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004360, 33.274303, 36.840889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492816, -0.538235, 0.683693,
		-0.094826, 0.814274, 0.572683,
		-0.864951, 0.217395, -0.452326,
		43.744873, 33.339523, 36.705193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785107, 33.109577, 37.527603>,  <44.350342, 33.187344, 37.021820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785107, 33.109577, 37.527603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.558228, 33.118351, 37.198288>,  <43.422100, 33.123615, 37.000698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.558228, 33.118351, 37.198288>,  <43.785107, 33.109577, 37.527603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558228, 33.118351, 37.198288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719439, -0.499757, 0.482339,
		-0.400866, 0.865888, 0.299239,
		-0.567198, 0.021931, -0.823289,
		43.388069, 33.124931, 36.951302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210266, 33.450462, 37.676926>,  <43.785107, 33.109577, 37.527603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210266, 33.450462, 37.676926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.141575, 33.197758, 37.374565>,  <43.100361, 33.046135, 37.193150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.141575, 33.197758, 37.374565>,  <43.210266, 33.450462, 37.676926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141575, 33.197758, 37.374565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715839, -0.447130, 0.536329,
		-0.676819, 0.633205, -0.375457,
		-0.171728, -0.631765, -0.755899,
		43.090057, 33.008228, 37.147797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556179, 33.265804, 37.857574>,  <43.210266, 33.450462, 37.676926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556179, 33.265804, 37.857574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.624481, 32.993355, 37.572784>,  <42.665462, 32.829884, 37.401909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.624481, 32.993355, 37.572784>,  <42.556179, 33.265804, 37.857574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624481, 32.993355, 37.572784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466357, -0.692397, 0.550543,
		-0.867959, 0.238026, -0.435879,
		0.170758, -0.681124, -0.711978,
		42.675709, 32.789017, 37.359192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841927, 32.963722, 37.692650>,  <42.556179, 33.265804, 37.857574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841927, 32.963722, 37.692650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.150581, 32.726814, 37.599873>,  <42.335773, 32.584671, 37.544205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.150581, 32.726814, 37.599873>,  <41.841927, 32.963722, 37.692650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150581, 32.726814, 37.599873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372826, -0.716592, 0.589488,
		-0.515345, -0.368394, -0.773760,
		0.771635, -0.592267, -0.231945,
		42.382072, 32.549133, 37.530289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436771, 32.452942, 37.571754>,  <41.841927, 32.963722, 37.692650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436771, 32.452942, 37.571754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806934, 32.308796, 37.618660>,  <42.029034, 32.222309, 37.646801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806934, 32.308796, 37.618660>,  <41.436771, 32.452942, 37.571754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806934, 32.308796, 37.618660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372764, -0.809841, 0.452995,
		-0.068282, -0.462918, -0.883768,
		0.925410, -0.360368, 0.117262,
		42.084557, 32.200684, 37.653839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395214, 31.764294, 37.383747>,  <41.436771, 32.452942, 37.571754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395214, 31.764294, 37.383747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.729958, 31.778614, 37.602245>,  <41.930805, 31.787207, 37.733345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.729958, 31.778614, 37.602245>,  <41.395214, 31.764294, 37.383747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729958, 31.778614, 37.602245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292839, -0.813797, 0.501977,
		0.462501, -0.580046, -0.670551,
		0.836862, 0.035802, 0.546242,
		41.981018, 31.789354, 37.766117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707085, 31.049934, 37.274479>,  <41.395214, 31.764294, 37.383747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707085, 31.049934, 37.274479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.863705, 31.207672, 37.607029>,  <41.957676, 31.302315, 37.806561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.863705, 31.207672, 37.607029>,  <41.707085, 31.049934, 37.274479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863705, 31.207672, 37.607029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447342, -0.707975, 0.546495,
		0.804099, -0.585887, -0.100800,
		0.391548, 0.394344, 0.831374,
		41.981171, 31.325975, 37.856441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943909, 30.453613, 37.638245>,  <41.707085, 31.049934, 37.274479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943909, 30.453613, 37.638245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984936, 30.708910, 37.943432>,  <42.009552, 30.862089, 38.126545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984936, 30.708910, 37.943432>,  <41.943909, 30.453613, 37.638245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984936, 30.708910, 37.943432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447776, -0.655286, 0.608356,
		0.888244, -0.404036, 0.218580,
		0.102565, 0.638243, 0.762972,
		42.015705, 30.900383, 38.172325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433674, 30.104879, 38.222389>,  <41.943909, 30.453613, 37.638245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433674, 30.104879, 38.222389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.191017, 30.391033, 38.361076>,  <42.045422, 30.562725, 38.444290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.191017, 30.391033, 38.361076>,  <42.433674, 30.104879, 38.222389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191017, 30.391033, 38.361076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376708, -0.642746, 0.667060,
		0.700056, 0.274053, 0.659406,
		-0.606640, 0.715383, 0.346720,
		42.009026, 30.605648, 38.465092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695702, 30.129349, 38.953735>,  <42.433674, 30.104879, 38.222389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695702, 30.129349, 38.953735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.330448, 30.290295, 38.927513>,  <42.111298, 30.386862, 38.911777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.330448, 30.290295, 38.927513>,  <42.695702, 30.129349, 38.953735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330448, 30.290295, 38.927513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264126, -0.461414, 0.846956,
		0.310535, 0.790696, 0.527605,
		-0.913129, 0.402364, -0.065558,
		42.056511, 30.411003, 38.907845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586395, 30.686905, 39.550465>,  <42.695702, 30.129349, 38.953735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586395, 30.686905, 39.550465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233810, 30.555342, 39.414913>,  <42.022259, 30.476404, 39.333584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233810, 30.555342, 39.414913>,  <42.586395, 30.686905, 39.550465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233810, 30.555342, 39.414913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308392, -0.142537, 0.940520,
		-0.357648, 0.933543, 0.024209,
		-0.881466, -0.328909, -0.338876,
		41.969372, 30.456669, 39.313251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114384, 31.053446, 39.940418>,  <42.586395, 30.686905, 39.550465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114384, 31.053446, 39.940418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.928783, 30.734474, 39.786114>,  <41.817425, 30.543091, 39.693531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.928783, 30.734474, 39.786114>,  <42.114384, 31.053446, 39.940418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928783, 30.734474, 39.786114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540967, -0.089763, 0.836240,
		-0.701469, 0.596699, -0.389732,
		-0.464000, -0.797429, -0.385760,
		41.789585, 30.495245, 39.670387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407719, 31.028639, 40.241993>,  <42.114384, 31.053446, 39.940418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407719, 31.028639, 40.241993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.451286, 30.655182, 40.105495>,  <41.477428, 30.431107, 40.023598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.451286, 30.655182, 40.105495>,  <41.407719, 31.028639, 40.241993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451286, 30.655182, 40.105495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536923, -0.344158, 0.770240,
		-0.836570, 0.099322, -0.538781,
		0.108924, -0.933644, -0.341240,
		41.483963, 30.375090, 40.003124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.766857, 39.905224, 43.740917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439556, 39.937534, 43.513256>,  <36.243176, 39.956921, 43.376659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439556, 39.937534, 43.513256>,  <36.766857, 39.905224, 43.740917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439556, 39.937534, 43.513256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489916, -0.419964, -0.763945,
		-0.300732, -0.903939, 0.304064,
		-0.818256, 0.080777, -0.569151,
		36.194080, 39.961769, 43.342510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776775, 39.336197, 43.238918>,  <36.766857, 39.905224, 43.740917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776775, 39.336197, 43.238918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490520, 39.563023, 43.075798>,  <36.318768, 39.699120, 42.977924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490520, 39.563023, 43.075798>,  <36.776775, 39.336197, 43.238918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490520, 39.563023, 43.075798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364975, -0.194211, -0.910536,
		-0.595532, -0.800450, -0.067980,
		-0.715636, 0.567064, -0.407803,
		36.275829, 39.733143, 42.953457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360973, 38.894283, 42.793781>,  <36.776775, 39.336197, 43.238918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360973, 38.894283, 42.793781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364746, 39.272793, 42.664494>,  <36.367012, 39.499901, 42.586922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364746, 39.272793, 42.664494>,  <36.360973, 38.894283, 42.793781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364746, 39.272793, 42.664494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226608, -0.316844, -0.921010,
		-0.973940, -0.064554, -0.217424,
		0.009434, 0.946278, -0.323216,
		36.367577, 39.556675, 42.567528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044254, 38.882095, 42.179832>,  <36.360973, 38.894283, 42.793781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044254, 38.882095, 42.179832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229969, 39.232750, 42.129307>,  <36.341396, 39.443142, 42.098991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229969, 39.232750, 42.129307>,  <36.044254, 38.882095, 42.179832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229969, 39.232750, 42.129307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229880, -0.257000, -0.938672,
		-0.855333, 0.406775, -0.320842,
		0.464285, 0.876633, -0.126311,
		36.369255, 39.495739, 42.091412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816048, 39.092464, 41.563431>,  <36.044254, 38.882095, 42.179832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816048, 39.092464, 41.563431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132484, 39.329010, 41.625999>,  <36.322346, 39.470936, 41.663540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132484, 39.329010, 41.625999>,  <35.816048, 39.092464, 41.563431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132484, 39.329010, 41.625999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305318, -0.160148, -0.938687,
		-0.530055, 0.790343, -0.307245,
		0.791089, 0.591364, 0.156419,
		36.369812, 39.506420, 41.672924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810383, 39.243137, 40.915344>,  <35.816048, 39.092464, 41.563431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810383, 39.243137, 40.915344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133488, 39.412380, 41.079536>,  <36.327351, 39.513927, 41.178051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133488, 39.412380, 41.079536>,  <35.810383, 39.243137, 40.915344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133488, 39.412380, 41.079536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403292, 0.111235, -0.908285,
		-0.429966, 0.899224, -0.080786,
		0.807765, 0.423112, 0.410477,
		36.375816, 39.539314, 41.202679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994667, 39.855221, 40.418301>,  <35.810383, 39.243137, 40.915344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994667, 39.855221, 40.418301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321213, 39.755299, 40.626587>,  <36.517139, 39.695347, 40.751556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321213, 39.755299, 40.626587>,  <35.994667, 39.855221, 40.418301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321213, 39.755299, 40.626587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554139, 0.084787, -0.828095,
		0.162714, 0.964576, 0.207645,
		0.816366, -0.249807, 0.520714,
		36.566124, 39.680355, 40.782803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501644, 40.245182, 40.101700>,  <35.994667, 39.855221, 40.418301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501644, 40.245182, 40.101700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694859, 39.955124, 40.298004>,  <36.810787, 39.781090, 40.415787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694859, 39.955124, 40.298004>,  <36.501644, 40.245182, 40.101700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694859, 39.955124, 40.298004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638694, -0.091597, -0.763990,
		0.598955, 0.682478, 0.418900,
		0.483036, -0.725144, 0.490757,
		36.839767, 39.737579, 40.445232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195686, 40.428116, 40.013165>,  <36.501644, 40.245182, 40.101700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195686, 40.428116, 40.013165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180241, 40.038948, 40.104317>,  <37.170971, 39.805447, 40.159008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180241, 40.038948, 40.104317>,  <37.195686, 40.428116, 40.013165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180241, 40.038948, 40.104317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760924, -0.176450, -0.624388,
		0.647691, 0.149289, 0.747134,
		-0.038618, -0.972922, 0.227883,
		37.168655, 39.747070, 40.172680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796677, 40.268234, 40.066639>,  <37.195686, 40.428116, 40.013165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796677, 40.268234, 40.066639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602158, 39.932140, 39.970703>,  <37.485447, 39.730484, 39.913143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602158, 39.932140, 39.970703>,  <37.796677, 40.268234, 40.066639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602158, 39.932140, 39.970703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623862, -0.141683, -0.768585,
		0.611809, -0.523387, 0.593090,
		-0.486298, -0.840233, -0.239838,
		37.456268, 39.680069, 39.898750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315861, 39.781281, 40.031712>,  <37.796677, 40.268234, 40.066639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315861, 39.781281, 40.031712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007946, 39.619602, 39.834106>,  <37.823196, 39.522594, 39.715542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007946, 39.619602, 39.834106>,  <38.315861, 39.781281, 40.031712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007946, 39.619602, 39.834106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628167, -0.342359, -0.698711,
		0.113288, -0.848182, 0.517448,
		-0.769787, -0.404199, -0.494015,
		37.777008, 39.498341, 39.685902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517555, 39.166466, 39.767811>,  <38.315861, 39.781281, 40.031712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517555, 39.166466, 39.767811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206383, 39.233505, 39.525578>,  <38.019680, 39.273727, 39.380238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206383, 39.233505, 39.525578>,  <38.517555, 39.166466, 39.767811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206383, 39.233505, 39.525578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569205, -0.220227, -0.792153,
		-0.266130, -0.960943, 0.075923,
		-0.777934, 0.167599, -0.605582,
		37.973003, 39.283783, 39.343903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036098, 39.088810, 39.131851>,  <38.517555, 39.166466, 39.767811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036098, 39.088810, 39.131851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784279, 38.904774, 38.881416>,  <38.633186, 38.794353, 38.731155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784279, 38.904774, 38.881416>,  <39.036098, 39.088810, 39.131851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784279, 38.904774, 38.881416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367392, 0.886315, -0.281902,
		0.684609, 0.052547, -0.727014,
		-0.629550, -0.460092, -0.626084,
		38.595413, 38.766747, 38.693592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136417, 38.506310, 38.624096>,  <39.036098, 39.088810, 39.131851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136417, 38.506310, 38.624096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167358, 38.827839, 38.388168>,  <39.185921, 39.020756, 38.246613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167358, 38.827839, 38.388168>,  <39.136417, 38.506310, 38.624096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167358, 38.827839, 38.388168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371796, -0.572170, -0.731019,
		-0.925086, -0.162746, -0.343116,
		0.077350, 0.803825, -0.589815,
		39.190563, 39.068985, 38.211224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402699, 37.979240, 38.184845>,  <39.136417, 38.506310, 38.624096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402699, 37.979240, 38.184845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715046, 37.729618, 38.173508>,  <39.902454, 37.579845, 38.166706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715046, 37.729618, 38.173508>,  <39.402699, 37.979240, 38.184845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715046, 37.729618, 38.173508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332873, -0.454056, 0.826456,
		-0.528621, -0.635918, -0.562288,
		0.780868, -0.624053, -0.028344,
		39.949306, 37.542404, 38.165005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166550, 37.232517, 38.186134>,  <39.402699, 37.979240, 38.184845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166550, 37.232517, 38.186134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529419, 37.274296, 38.349171>,  <39.747139, 37.299362, 38.446995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529419, 37.274296, 38.349171>,  <39.166550, 37.232517, 38.186134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529419, 37.274296, 38.349171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304885, -0.504433, 0.807832,
		0.289975, -0.857111, -0.425764,
		0.907171, 0.104442, 0.407593,
		39.801571, 37.305630, 38.471447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319569, 36.604382, 38.464142>,  <39.166550, 37.232517, 38.186134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319569, 36.604382, 38.464142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573925, 36.835388, 38.668934>,  <39.726540, 36.973991, 38.791809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573925, 36.835388, 38.668934>,  <39.319569, 36.604382, 38.464142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573925, 36.835388, 38.668934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265745, -0.458968, 0.847778,
		0.724587, -0.675147, -0.138380,
		0.635887, 0.577516, 0.511979,
		39.764690, 37.008644, 38.822529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763538, 36.119232, 38.913372>,  <39.319569, 36.604382, 38.464142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763538, 36.119232, 38.913372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816250, 36.466980, 39.103882>,  <39.847878, 36.675629, 39.218185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816250, 36.466980, 39.103882>,  <39.763538, 36.119232, 38.913372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816250, 36.466980, 39.103882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080809, -0.469442, 0.879258,
		0.987980, -0.154352, 0.008392,
		0.131776, 0.869367, 0.476273,
		39.855782, 36.727791, 39.246765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200562, 36.032124, 39.565037>,  <39.763538, 36.119232, 38.913372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200562, 36.032124, 39.565037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014496, 36.375889, 39.649925>,  <39.902855, 36.582146, 39.700859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014496, 36.375889, 39.649925>,  <40.200562, 36.032124, 39.565037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014496, 36.375889, 39.649925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072963, -0.276140, 0.958344,
		0.882210, 0.430307, 0.191156,
		-0.465168, 0.859408, 0.212217,
		39.874947, 36.633713, 39.713589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596188, 36.411587, 40.124992>,  <40.200562, 36.032124, 39.565037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596188, 36.411587, 40.124992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222237, 36.553574, 40.124851>,  <39.997864, 36.638763, 40.124767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222237, 36.553574, 40.124851>,  <40.596188, 36.411587, 40.124992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222237, 36.553574, 40.124851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025395, -0.065884, 0.997504,
		0.354053, 0.932556, 0.070608,
		-0.934880, 0.354963, -0.000356,
		39.941772, 36.660061, 40.124744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438553, 36.691418, 40.891506>,  <40.596188, 36.411587, 40.124992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438553, 36.691418, 40.891506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073868, 36.684246, 40.727329>,  <39.855057, 36.679943, 40.628822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073868, 36.684246, 40.727329>,  <40.438553, 36.691418, 40.891506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073868, 36.684246, 40.727329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396038, -0.227322, 0.889651,
		-0.109255, 0.973655, 0.200151,
		-0.911712, -0.017931, -0.410440,
		39.800354, 36.678867, 40.604198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061581, 37.112480, 41.314754>,  <40.438553, 36.691418, 40.891506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061581, 37.112480, 41.314754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787502, 36.876404, 41.144028>,  <39.623055, 36.734756, 41.041592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787502, 36.876404, 41.144028>,  <40.061581, 37.112480, 41.314754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787502, 36.876404, 41.144028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389254, -0.198574, 0.899472,
		-0.615616, 0.782460, -0.093671,
		-0.685200, -0.590191, -0.426821,
		39.581944, 36.699348, 41.015980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441525, 37.353912, 41.658066>,  <40.061581, 37.112480, 41.314754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441525, 37.353912, 41.658066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320305, 37.015568, 41.482483>,  <39.247574, 36.812561, 41.377132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320305, 37.015568, 41.482483>,  <39.441525, 37.353912, 41.658066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320305, 37.015568, 41.482483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541087, -0.226448, 0.809905,
		-0.784467, 0.482955, -0.389059,
		-0.303046, -0.845858, -0.438961,
		39.229393, 36.761810, 41.350796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704288, 37.402500, 41.743149>,  <39.441525, 37.353912, 41.658066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704288, 37.402500, 41.743149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824661, 37.023792, 41.697426>,  <38.896885, 36.796566, 41.669991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824661, 37.023792, 41.697426>,  <38.704288, 37.402500, 41.743149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824661, 37.023792, 41.697426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548925, -0.269983, 0.791070,
		-0.779823, -0.175310, -0.600952,
		0.300929, -0.946771, -0.114306,
		38.914940, 36.739761, 41.663136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080029, 36.973007, 41.603127>,  <38.704288, 37.402500, 41.743149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080029, 36.973007, 41.603127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372585, 36.738914, 41.743168>,  <38.548119, 36.598457, 41.827194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372585, 36.738914, 41.743168>,  <38.080029, 36.973007, 41.603127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372585, 36.738914, 41.743168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579950, -0.263670, 0.770802,
		-0.358788, -0.766799, -0.532251,
		0.731389, -0.585233, 0.350103,
		38.592003, 36.563347, 41.848198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812119, 36.327724, 41.667145>,  <38.080029, 36.973007, 41.603127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812119, 36.327724, 41.667145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125458, 36.291260, 41.913090>,  <38.313461, 36.269382, 42.060658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125458, 36.291260, 41.913090>,  <37.812119, 36.327724, 41.667145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125458, 36.291260, 41.913090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602449, -0.354895, 0.714916,
		0.153038, -0.930451, -0.332927,
		0.783348, -0.091162, 0.614862,
		38.360462, 36.263912, 42.097549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573494, 35.812378, 42.077229>,  <37.812119, 36.327724, 41.667145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573494, 35.812378, 42.077229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877800, 35.937538, 42.304676>,  <38.060383, 36.012634, 42.441143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877800, 35.937538, 42.304676>,  <37.573494, 35.812378, 42.077229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877800, 35.937538, 42.304676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533133, -0.198364, 0.822448,
		0.370136, -0.928841, 0.015908,
		0.760768, 0.312899, 0.568618,
		38.106030, 36.031406, 42.475262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637524, 35.366940, 42.565014>,  <37.573494, 35.812378, 42.077229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637524, 35.366940, 42.565014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762878, 35.708912, 42.730362>,  <37.838089, 35.914097, 42.829571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762878, 35.708912, 42.730362>,  <37.637524, 35.366940, 42.565014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762878, 35.708912, 42.730362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560870, -0.184632, 0.807054,
		0.766301, -0.484765, 0.421646,
		0.313382, 0.854935, 0.413374,
		37.856892, 35.965393, 42.854374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757729, 34.709137, 42.781883>,  <37.637524, 35.366940, 42.565014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757729, 34.709137, 42.781883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496525, 34.408180, 42.747303>,  <37.339802, 34.227604, 42.726555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496525, 34.408180, 42.747303>,  <37.757729, 34.709137, 42.781883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496525, 34.408180, 42.747303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356525, -0.204688, -0.911588,
		0.668180, -0.626101, 0.401911,
		-0.653013, -0.752396, -0.086452,
		37.300621, 34.182461, 42.721367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120651, 34.131599, 42.516060>,  <37.757729, 34.709137, 42.781883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120651, 34.131599, 42.516060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742348, 34.039249, 42.424629>,  <37.515366, 33.983841, 42.369770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742348, 34.039249, 42.424629>,  <38.120651, 34.131599, 42.516060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742348, 34.039249, 42.424629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312302, -0.452163, -0.835474,
		0.089534, -0.861537, 0.499737,
		-0.945754, -0.230873, -0.228576,
		37.458622, 33.969986, 42.356056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088821, 33.446098, 42.208618>,  <38.120651, 34.131599, 42.516060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088821, 33.446098, 42.208618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774391, 33.663757, 42.091320>,  <37.585732, 33.794353, 42.020943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774391, 33.663757, 42.091320>,  <38.088821, 33.446098, 42.208618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774391, 33.663757, 42.091320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193707, -0.233651, -0.952830,
		-0.586995, -0.805799, 0.078262,
		-0.786076, 0.544146, -0.293241,
		37.538567, 33.827000, 42.003349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727215, 32.982380, 41.658539>,  <38.088821, 33.446098, 42.208618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727215, 32.982380, 41.658539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621395, 33.366329, 41.621319>,  <37.557903, 33.596699, 41.598988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621395, 33.366329, 41.621319>,  <37.727215, 32.982380, 41.658539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621395, 33.366329, 41.621319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245127, -0.026390, -0.969132,
		-0.932697, -0.279197, -0.228309,
		-0.264554, 0.959871, -0.093053,
		37.542030, 33.654289, 41.593403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541946, 32.960529, 40.976936>,  <37.727215, 32.982380, 41.658539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541946, 32.960529, 40.976936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549305, 33.353497, 41.051247>,  <37.553719, 33.589275, 41.095833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549305, 33.353497, 41.051247>,  <37.541946, 32.960529, 40.976936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549305, 33.353497, 41.051247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035841, 0.185043, -0.982077,
		-0.999188, 0.024722, -0.031807,
		0.018393, 0.982419, 0.185779,
		37.554821, 33.648224, 41.106979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980942, 33.296032, 40.644432>,  <37.541946, 32.960529, 40.976936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980942, 33.296032, 40.644432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260342, 33.576836, 40.699986>,  <37.427982, 33.745316, 40.733318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260342, 33.576836, 40.699986>,  <36.980942, 33.296032, 40.644432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260342, 33.576836, 40.699986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033881, 0.161412, -0.986305,
		-0.714810, 0.693637, 0.088962,
		0.698498, 0.702007, 0.138880,
		37.469891, 33.787437, 40.741650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753098, 33.976868, 40.389141>,  <36.980942, 33.296032, 40.644432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753098, 33.976868, 40.389141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152893, 33.989338, 40.386536>,  <37.392773, 33.996822, 40.384972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152893, 33.989338, 40.386536>,  <36.753098, 33.976868, 40.389141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152893, 33.989338, 40.386536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015727, 0.305206, -0.952156,
		-0.027699, 0.951776, 0.305542,
		0.999493, 0.031179, -0.006514,
		37.452740, 33.998692, 40.384583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885738, 34.584362, 39.949818>,  <36.753098, 33.976868, 40.389141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885738, 34.584362, 39.949818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235401, 34.394855, 39.992500>,  <37.445198, 34.281151, 40.018108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235401, 34.394855, 39.992500>,  <36.885738, 34.584362, 39.949818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235401, 34.394855, 39.992500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260137, 0.271269, -0.926683,
		0.410086, 0.837829, 0.360378,
		0.874161, -0.473768, 0.106707,
		37.497650, 34.252724, 40.024513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280624, 35.103268, 39.677002>,  <36.885738, 34.584362, 39.949818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280624, 35.103268, 39.677002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473415, 34.753250, 39.659122>,  <37.589088, 34.543240, 39.648396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473415, 34.753250, 39.659122>,  <37.280624, 35.103268, 39.677002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473415, 34.753250, 39.659122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306685, 0.216275, -0.926914,
		0.820758, 0.433040, 0.372602,
		0.481975, -0.875044, -0.044703,
		37.618008, 34.490738, 39.645710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043835, 35.207245, 39.541386>,  <37.280624, 35.103268, 39.677002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043835, 35.207245, 39.541386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958725, 34.835426, 39.420944>,  <37.907658, 34.612335, 39.348679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958725, 34.835426, 39.420944>,  <38.043835, 35.207245, 39.541386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958725, 34.835426, 39.420944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342048, 0.217804, -0.914092,
		0.915276, -0.297486, 0.271608,
		-0.212773, -0.929550, -0.301105,
		37.894894, 34.556561, 39.330612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747547, 34.870113, 39.334911>,  <38.043835, 35.207245, 39.541386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747547, 34.870113, 39.334911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455658, 34.677406, 39.140839>,  <38.280525, 34.561783, 39.024395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455658, 34.677406, 39.140839>,  <38.747547, 34.870113, 39.334911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455658, 34.677406, 39.140839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379013, 0.305588, -0.873479,
		0.569079, -0.821290, -0.040399,
		-0.729725, -0.481767, -0.485183,
		38.236740, 34.532875, 38.995285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974712, 34.367416, 38.808155>,  <38.747547, 34.870113, 39.334911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974712, 34.367416, 38.808155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606590, 34.492756, 38.714470>,  <38.385715, 34.567959, 38.658260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606590, 34.492756, 38.714470>,  <38.974712, 34.367416, 38.808155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606590, 34.492756, 38.714470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316075, 0.242808, -0.917137,
		-0.230515, -0.918073, -0.322498,
		-0.920304, 0.313348, -0.234209,
		38.330498, 34.586761, 38.644207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.704540, 33.809788, 46.275112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403645, 33.823586, 46.011917>,  <35.223106, 33.831863, 45.854000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403645, 33.823586, 46.011917>,  <35.704540, 33.809788, 46.275112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403645, 33.823586, 46.011917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647494, -0.146228, -0.747910,
		-0.122020, -0.988649, 0.087659,
		-0.752239, 0.034501, -0.657987,
		35.177975, 33.833935, 45.814522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782162, 33.195370, 45.898399>,  <35.704540, 33.809788, 46.275112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782162, 33.195370, 45.898399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605049, 33.474854, 45.673637>,  <35.498779, 33.642544, 45.538780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605049, 33.474854, 45.673637>,  <35.782162, 33.195370, 45.898399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605049, 33.474854, 45.673637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584039, -0.250753, -0.772024,
		-0.680324, -0.670017, -0.297046,
		-0.442784, 0.698713, -0.561910,
		35.472214, 33.684467, 45.505066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921341, 32.934452, 45.230019>,  <35.782162, 33.195370, 45.898399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921341, 32.934452, 45.230019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.792706, 33.312366, 45.204826>,  <35.715523, 33.539116, 45.189713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.792706, 33.312366, 45.204826>,  <35.921341, 32.934452, 45.230019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792706, 33.312366, 45.204826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353757, 0.058188, -0.933526,
		-0.878313, -0.322494, -0.352936,
		-0.321593, 0.944781, -0.062977,
		35.696228, 33.595802, 45.185932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545124, 33.008694, 44.514099>,  <35.921341, 32.934452, 45.230019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545124, 33.008694, 44.514099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.635071, 33.389568, 44.596825>,  <35.689037, 33.618095, 44.646461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.635071, 33.389568, 44.596825>,  <35.545124, 33.008694, 44.514099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635071, 33.389568, 44.596825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245739, 0.149973, -0.957664,
		-0.942893, 0.266168, -0.200266,
		0.224865, 0.952188, 0.206817,
		35.702530, 33.675224, 44.658871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491142, 33.386627, 43.849621>,  <35.545124, 33.008694, 44.514099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491142, 33.386627, 43.849621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.690269, 33.640018, 44.086563>,  <35.809746, 33.792053, 44.228729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.690269, 33.640018, 44.086563>,  <35.491142, 33.386627, 43.849621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690269, 33.640018, 44.086563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536300, 0.311920, -0.784276,
		-0.681587, 0.708107, -0.184453,
		0.497817, 0.633474, 0.592358,
		35.839615, 33.830059, 44.264271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430325, 33.969597, 43.562691>,  <35.491142, 33.386627, 43.849621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430325, 33.969597, 43.562691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.755970, 34.011383, 43.791183>,  <35.951359, 34.036453, 43.928280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.755970, 34.011383, 43.791183>,  <35.430325, 33.969597, 43.562691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755970, 34.011383, 43.791183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550000, 0.176906, -0.816213,
		-0.186316, 0.978669, 0.086569,
		0.814117, 0.104461, 0.571228,
		36.000206, 34.042721, 43.962551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874405, 34.630051, 43.308300>,  <35.430325, 33.969597, 43.562691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874405, 34.630051, 43.308300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.136971, 34.401783, 43.505665>,  <36.294510, 34.264824, 43.624084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.136971, 34.401783, 43.505665>,  <35.874405, 34.630051, 43.308300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136971, 34.401783, 43.505665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647641, 0.090855, -0.756510,
		0.386889, 0.816138, 0.429228,
		0.656414, -0.570670, 0.493413,
		36.333893, 34.230583, 43.653690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410629, 34.924999, 43.111412>,  <35.874405, 34.630051, 43.308300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410629, 34.924999, 43.111412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540668, 34.571110, 43.245026>,  <36.618690, 34.358776, 43.325195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540668, 34.571110, 43.245026>,  <36.410629, 34.924999, 43.111412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540668, 34.571110, 43.245026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730036, 0.010256, -0.683332,
		0.601133, 0.466006, 0.649213,
		0.325095, -0.884722, 0.334036,
		36.638199, 34.305695, 43.345238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102943, 34.976570, 43.096626>,  <36.410629, 34.924999, 43.111412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102943, 34.976570, 43.096626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.037556, 34.582325, 43.079430>,  <36.998322, 34.345779, 43.069111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.037556, 34.582325, 43.079430>,  <37.102943, 34.976570, 43.096626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037556, 34.582325, 43.079430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581933, -0.061143, -0.810935,
		0.796638, -0.157580, 0.583554,
		-0.163468, -0.985611, -0.042992,
		36.988514, 34.286640, 43.066532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750969, 35.184761, 43.322620>,  <37.102943, 34.976570, 43.096626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750969, 35.184761, 43.322620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741486, 35.584633, 43.319160>,  <37.735798, 35.824558, 43.317085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741486, 35.584633, 43.319160>,  <37.750969, 35.184761, 43.322620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741486, 35.584633, 43.319160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439929, -0.002658, 0.898029,
		0.897720, 0.025094, 0.439852,
		-0.023704, 0.999682, -0.008654,
		37.734375, 35.884537, 43.316563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955334, 35.412006, 44.026058>,  <37.750969, 35.184761, 43.322620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955334, 35.412006, 44.026058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.761990, 35.722561, 43.864273>,  <37.645985, 35.908894, 43.767200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.761990, 35.722561, 43.864273>,  <37.955334, 35.412006, 44.026058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761990, 35.722561, 43.864273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484529, 0.147535, 0.862244,
		0.729106, 0.612747, 0.304869,
		-0.483359, 0.776385, -0.404463,
		37.616982, 35.955475, 43.742935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990032, 35.847862, 44.500008>,  <37.955334, 35.412006, 44.026058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990032, 35.847862, 44.500008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.692951, 35.980766, 44.267456>,  <37.514702, 36.060509, 44.127926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.692951, 35.980766, 44.267456>,  <37.990032, 35.847862, 44.500008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692951, 35.980766, 44.267456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529691, 0.239642, 0.813634,
		0.409659, 0.912237, -0.001987,
		-0.742702, 0.332260, -0.581375,
		37.470142, 36.080444, 44.093044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801594, 36.541691, 44.788288>,  <37.990032, 35.847862, 44.500008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801594, 36.541691, 44.788288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462906, 36.458111, 44.592571>,  <37.259693, 36.407963, 44.475143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462906, 36.458111, 44.592571>,  <37.801594, 36.541691, 44.788288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462906, 36.458111, 44.592571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529128, 0.426752, 0.733421,
		0.055555, 0.879899, -0.471902,
		-0.846721, -0.208951, -0.489288,
		37.208889, 36.395424, 44.445786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386520, 37.137714, 44.838570>,  <37.801594, 36.541691, 44.788288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386520, 37.137714, 44.838570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145260, 36.822735, 44.787762>,  <37.000504, 36.633747, 44.757278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145260, 36.822735, 44.787762>,  <37.386520, 37.137714, 44.838570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145260, 36.822735, 44.787762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571315, 0.315383, 0.757715,
		-0.556599, 0.529588, -0.640104,
		-0.603155, -0.787445, -0.127019,
		36.964314, 36.586502, 44.749657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815735, 37.455780, 44.990814>,  <37.386520, 37.137714, 44.838570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815735, 37.455780, 44.990814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722336, 37.066887, 44.997135>,  <36.666298, 36.833553, 45.000927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722336, 37.066887, 44.997135>,  <36.815735, 37.455780, 44.990814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722336, 37.066887, 44.997135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586929, 0.153881, 0.794881,
		-0.775239, 0.176325, -0.606560,
		-0.233495, -0.972229, 0.015804,
		36.652287, 36.775219, 45.001877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015675, 37.382385, 45.001640>,  <36.815735, 37.455780, 44.990814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015675, 37.382385, 45.001640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185787, 37.064075, 45.174099>,  <36.287853, 36.873089, 45.277573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185787, 37.064075, 45.174099>,  <36.015675, 37.382385, 45.001640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185787, 37.064075, 45.174099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574005, 0.131157, 0.808279,
		-0.699754, -0.591222, -0.401000,
		0.425278, -0.795773, 0.431142,
		36.313370, 36.825344, 45.303440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503403, 37.024307, 45.357533>,  <36.015675, 37.382385, 45.001640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503403, 37.024307, 45.357533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843983, 36.915638, 45.536964>,  <36.048332, 36.850437, 45.644623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843983, 36.915638, 45.536964>,  <35.503403, 37.024307, 45.357533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843983, 36.915638, 45.536964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457778, 0.032318, 0.888479,
		-0.255878, -0.961845, -0.096851,
		0.851450, -0.271678, 0.448581,
		36.099419, 36.834133, 45.671539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233311, 36.662540, 45.974129>,  <35.503403, 37.024307, 45.357533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233311, 36.662540, 45.974129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.620220, 36.712830, 46.062286>,  <35.852367, 36.743004, 46.115181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.620220, 36.712830, 46.062286>,  <35.233311, 36.662540, 45.974129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620220, 36.712830, 46.062286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236757, 0.134869, 0.962162,
		0.091240, -0.982855, 0.160221,
		0.967275, 0.125721, 0.220393,
		35.910404, 36.750546, 46.128403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334690, 36.167572, 46.425262>,  <35.233311, 36.662540, 45.974129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334690, 36.167572, 46.425262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651909, 36.405987, 46.475559>,  <35.842239, 36.549038, 46.505737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651909, 36.405987, 46.475559>,  <35.334690, 36.167572, 46.425262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651909, 36.405987, 46.475559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180516, 0.032805, 0.983025,
		0.581798, -0.802284, 0.133611,
		0.793048, 0.596041, 0.125739,
		35.889824, 36.584801, 46.513283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703583, 35.937332, 46.975132>,  <35.334690, 36.167572, 46.425262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703583, 35.937332, 46.975132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.790295, 36.325844, 46.935898>,  <35.842323, 36.558952, 46.912357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.790295, 36.325844, 46.935898>,  <35.703583, 35.937332, 46.975132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790295, 36.325844, 46.935898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211014, 0.144718, 0.966711,
		0.953142, -0.188867, 0.236326,
		0.216781, 0.971281, -0.098084,
		35.855328, 36.617229, 46.906471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023422, 36.074886, 47.565662>,  <35.703583, 35.937332, 46.975132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023422, 36.074886, 47.565662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.913395, 36.435703, 47.432606>,  <35.847378, 36.652195, 47.352772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.913395, 36.435703, 47.432606>,  <36.023422, 36.074886, 47.565662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913395, 36.435703, 47.432606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132082, 0.307257, 0.942416,
		0.952309, 0.303165, 0.034627,
		-0.275068, 0.902044, -0.332646,
		35.830875, 36.706318, 47.332813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355122, 36.503445, 48.049114>,  <36.023422, 36.074886, 47.565662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355122, 36.503445, 48.049114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.042740, 36.688705, 47.881493>,  <35.855312, 36.799862, 47.780922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.042740, 36.688705, 47.881493>,  <36.355122, 36.503445, 48.049114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042740, 36.688705, 47.881493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384071, 0.172985, 0.906954,
		0.492550, 0.869231, 0.042791,
		-0.780951, 0.463155, -0.419051,
		35.808456, 36.827652, 47.755779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249950, 37.104782, 48.493893>,  <36.355122, 36.503445, 48.049114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249950, 37.104782, 48.493893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903641, 37.160728, 48.301693>,  <35.695854, 37.194294, 48.186375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903641, 37.160728, 48.301693>,  <36.249950, 37.104782, 48.493893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903641, 37.160728, 48.301693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448556, 0.208846, 0.869012,
		0.221892, 0.967896, -0.118077,
		-0.865772, 0.139862, -0.480496,
		35.643909, 37.202686, 48.157543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.396923, 35.691719, 45.520050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.778522, 35.690098, 45.639965>,  <29.007483, 35.689125, 45.711914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.778522, 35.690098, 45.639965>,  <28.396923, 35.691719, 45.520050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778522, 35.690098, 45.639965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274593, 0.413257, -0.868227,
		-0.120371, 0.910606, 0.395359,
		0.953997, -0.004053, 0.299790,
		29.064722, 35.688881, 45.729900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803596, 36.411892, 45.404560>,  <28.396923, 35.691719, 45.520050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803596, 36.411892, 45.404560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.076677, 36.119751, 45.395657>,  <29.240526, 35.944466, 45.390316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.076677, 36.119751, 45.395657>,  <28.803596, 36.411892, 45.404560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076677, 36.119751, 45.395657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254712, 0.266419, -0.929593,
		0.684863, 0.628968, 0.367916,
		0.682704, -0.730357, -0.022255,
		29.281488, 35.900642, 45.388981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405308, 36.717552, 45.167683>,  <28.803596, 36.411892, 45.404560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405308, 36.717552, 45.167683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.472260, 36.328068, 45.105885>,  <29.512430, 36.094376, 45.068806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.472260, 36.328068, 45.105885>,  <29.405308, 36.717552, 45.167683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472260, 36.328068, 45.105885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490693, 0.218194, -0.843571,
		0.855106, 0.065385, 0.514314,
		0.167377, -0.973713, -0.154494,
		29.522472, 36.035954, 45.059536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064568, 36.666542, 45.006138>,  <29.405308, 36.717552, 45.167683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064568, 36.666542, 45.006138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.959555, 36.302750, 44.877190>,  <29.896547, 36.084476, 44.799820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.959555, 36.302750, 44.877190>,  <30.064568, 36.666542, 45.006138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959555, 36.302750, 44.877190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589106, 0.113528, -0.800041,
		0.764219, -0.399949, 0.505975,
		-0.262533, -0.909479, -0.322373,
		29.880795, 36.029907, 44.780479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635784, 36.344975, 44.744064>,  <30.064568, 36.666542, 45.006138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635784, 36.344975, 44.744064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.351534, 36.102158, 44.601788>,  <30.180984, 35.956467, 44.516422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.351534, 36.102158, 44.601788>,  <30.635784, 36.344975, 44.744064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351534, 36.102158, 44.601788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494475, -0.071271, -0.866265,
		0.500508, -0.791469, 0.350813,
		-0.710624, -0.607040, -0.355690,
		30.138346, 35.920044, 44.495079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930014, 35.723701, 44.394791>,  <30.635784, 36.344975, 44.744064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930014, 35.723701, 44.394791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.578255, 35.782982, 44.213814>,  <30.367199, 35.818550, 44.105228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.578255, 35.782982, 44.213814>,  <30.930014, 35.723701, 44.394791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578255, 35.782982, 44.213814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466153, 0.074868, -0.881531,
		-0.096769, -0.986119, -0.134922,
		-0.879396, 0.148200, -0.452438,
		30.314436, 35.827442, 44.078083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966766, 35.348854, 43.818054>,  <30.930014, 35.723701, 44.394791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966766, 35.348854, 43.818054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658651, 35.587944, 43.729164>,  <30.473782, 35.731396, 43.675831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658651, 35.587944, 43.729164>,  <30.966766, 35.348854, 43.818054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658651, 35.587944, 43.729164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396308, 0.175684, -0.901152,
		-0.499596, -0.782217, -0.372209,
		-0.770288, 0.597722, -0.222228,
		30.427565, 35.767262, 43.662495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736982, 35.066864, 43.144215>,  <30.966766, 35.348854, 43.818054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736982, 35.066864, 43.144215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.597891, 35.438606, 43.193825>,  <30.514437, 35.661652, 43.223591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.597891, 35.438606, 43.193825>,  <30.736982, 35.066864, 43.144215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597891, 35.438606, 43.193825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317292, 0.241114, -0.917164,
		-0.882276, -0.279572, -0.378719,
		-0.347728, 0.929357, 0.124023,
		30.493572, 35.717415, 43.231033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562469, 35.242558, 42.367188>,  <30.736982, 35.066864, 43.144215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562469, 35.242558, 42.367188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.596659, 35.577259, 42.583534>,  <30.617172, 35.778080, 42.713341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.596659, 35.577259, 42.583534>,  <30.562469, 35.242558, 42.367188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596659, 35.577259, 42.583534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292738, 0.497799, -0.816395,
		-0.952365, 0.228109, -0.202403,
		0.085471, 0.836757, 0.540863,
		30.622299, 35.828285, 42.745792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144487, 35.796272, 42.123146>,  <30.562469, 35.242558, 42.367188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144487, 35.796272, 42.123146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.415442, 36.005775, 42.329769>,  <30.578014, 36.131477, 42.453743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.415442, 36.005775, 42.329769>,  <30.144487, 35.796272, 42.123146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415442, 36.005775, 42.329769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290309, 0.454874, -0.841909,
		-0.675922, 0.720257, 0.156074,
		0.677385, 0.523755, 0.516556,
		30.618656, 36.162903, 42.484737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133436, 36.480305, 41.794632>,  <30.144487, 35.796272, 42.123146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133436, 36.480305, 41.794632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491358, 36.489025, 41.973003>,  <30.706110, 36.494259, 42.080029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491358, 36.489025, 41.973003>,  <30.133436, 36.480305, 41.794632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491358, 36.489025, 41.973003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416740, 0.317559, -0.851753,
		-0.160178, 0.947988, 0.275067,
		0.894802, 0.021801, 0.445931,
		30.759798, 36.495564, 42.106781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526047, 37.135250, 41.731289>,  <30.133436, 36.480305, 41.794632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526047, 37.135250, 41.731289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.809168, 36.865280, 41.814709>,  <30.979040, 36.703297, 41.864761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.809168, 36.865280, 41.814709>,  <30.526047, 37.135250, 41.731289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809168, 36.865280, 41.814709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485752, 0.250663, -0.837385,
		0.512895, 0.694007, 0.505265,
		0.707802, -0.674924, 0.208551,
		31.021509, 36.662804, 41.877274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183002, 37.453014, 41.615788>,  <30.526047, 37.135250, 41.731289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183002, 37.453014, 41.615788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251223, 37.058884, 41.618160>,  <31.292154, 36.822403, 41.619583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251223, 37.058884, 41.618160>,  <31.183002, 37.453014, 41.615788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251223, 37.058884, 41.618160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627384, 0.103950, -0.771741,
		0.759804, 0.135340, 0.635909,
		0.170550, -0.985331, 0.005929,
		31.302387, 36.763283, 41.619938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926638, 37.448448, 41.624878>,  <31.183002, 37.453014, 41.615788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926638, 37.448448, 41.624878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.804340, 37.098637, 41.474293>,  <31.730963, 36.888752, 41.383942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.804340, 37.098637, 41.474293>,  <31.926638, 37.448448, 41.624878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804340, 37.098637, 41.474293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725271, 0.042247, -0.687166,
		0.616849, -0.483134, 0.621352,
		-0.305743, -0.874527, -0.376463,
		31.712618, 36.836277, 41.361355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689751, 37.589485, 41.970051>,  <31.926638, 37.448448, 41.624878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689751, 37.589485, 41.970051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.790035, 37.975922, 41.994728>,  <32.850204, 38.207783, 42.009537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.790035, 37.975922, 41.994728>,  <32.689751, 37.589485, 41.970051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790035, 37.975922, 41.994728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369226, 0.036514, 0.928622,
		0.894884, -0.255592, 0.365862,
		0.250707, 0.966095, 0.061695,
		32.865246, 38.265751, 42.013237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926342, 37.616631, 42.641273>,  <32.689751, 37.589485, 41.970051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926342, 37.616631, 42.641273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.829716, 37.990223, 42.535950>,  <32.771740, 38.214378, 42.472755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.829716, 37.990223, 42.535950>,  <32.926342, 37.616631, 42.641273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829716, 37.990223, 42.535950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309346, 0.183069, 0.933162,
		0.919756, 0.306875, 0.244698,
		-0.241567, 0.933977, -0.263309,
		32.757244, 38.270416, 42.456959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124821, 38.101616, 43.172005>,  <32.926342, 37.616631, 42.641273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124821, 38.101616, 43.172005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.821239, 38.302238, 43.005905>,  <32.639091, 38.422611, 42.906246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.821239, 38.302238, 43.005905>,  <33.124821, 38.101616, 43.172005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821239, 38.302238, 43.005905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455246, 0.047234, 0.889112,
		0.465550, 0.863837, 0.192481,
		-0.758956, 0.501553, -0.415248,
		32.593552, 38.452705, 42.881332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834778, 38.657528, 43.633850>,  <33.124821, 38.101616, 43.172005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834778, 38.657528, 43.633850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538502, 38.655891, 43.365116>,  <32.360737, 38.654911, 43.203876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538502, 38.655891, 43.365116>,  <32.834778, 38.657528, 43.633850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538502, 38.655891, 43.365116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651433, 0.249017, 0.716677,
		0.164368, 0.968490, -0.187107,
		-0.740688, -0.004088, -0.671837,
		32.316296, 38.654663, 43.163567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510864, 39.278065, 43.648468>,  <32.834778, 38.657528, 43.633850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510864, 39.278065, 43.648468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.260147, 38.989071, 43.531754>,  <32.109715, 38.815674, 43.461723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.260147, 38.989071, 43.531754>,  <32.510864, 39.278065, 43.648468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260147, 38.989071, 43.531754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634897, 0.256478, 0.728783,
		-0.451701, 0.642052, -0.619464,
		-0.626796, -0.722488, -0.291785,
		32.072109, 38.772324, 43.444218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752796, 39.539871, 43.680965>,  <32.510864, 39.278065, 43.648468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752796, 39.539871, 43.680965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726881, 39.140862, 43.691845>,  <31.711332, 38.901455, 43.698372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726881, 39.140862, 43.691845>,  <31.752796, 39.539871, 43.680965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726881, 39.140862, 43.691845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596634, 0.060567, 0.800225,
		-0.799894, 0.035619, -0.599084,
		-0.064788, -0.997529, 0.027196,
		31.707445, 38.841602, 43.700005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096100, 39.364849, 43.739426>,  <31.752796, 39.539871, 43.680965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096100, 39.364849, 43.739426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293558, 39.039391, 43.862255>,  <31.412033, 38.844116, 43.935955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293558, 39.039391, 43.862255>,  <31.096100, 39.364849, 43.739426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293558, 39.039391, 43.862255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568891, -0.035049, 0.821666,
		-0.657781, -0.580305, -0.480177,
		0.493647, -0.813645, 0.307076,
		31.441652, 38.795296, 43.954376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608076, 39.047249, 43.982990>,  <31.096100, 39.364849, 43.739426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608076, 39.047249, 43.982990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.934963, 38.892952, 44.154274>,  <31.131096, 38.800373, 44.257042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.934963, 38.892952, 44.154274>,  <30.608076, 39.047249, 43.982990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934963, 38.892952, 44.154274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527095, -0.199759, 0.825995,
		-0.233078, -0.900724, -0.366566,
		0.817218, -0.385737, 0.428208,
		31.180128, 38.777229, 44.282738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430265, 38.403568, 44.333950>,  <30.608076, 39.047249, 43.982990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430265, 38.403568, 44.333950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.771696, 38.505409, 44.515755>,  <30.976555, 38.566513, 44.624836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.771696, 38.505409, 44.515755>,  <30.430265, 38.403568, 44.333950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771696, 38.505409, 44.515755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474180, 0.018345, 0.880237,
		0.215777, -0.966870, 0.136389,
		0.853577, 0.254608, 0.454512,
		31.027769, 38.581791, 44.652107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540245, 37.910690, 44.935715>,  <30.430265, 38.403568, 44.333950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540245, 37.910690, 44.935715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.772577, 38.225178, 45.020088>,  <30.911976, 38.413872, 45.070713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.772577, 38.225178, 45.020088>,  <30.540245, 37.910690, 44.935715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772577, 38.225178, 45.020088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309146, -0.026663, 0.950641,
		0.753037, -0.617372, 0.227570,
		0.580831, 0.786220, 0.210936,
		30.946827, 38.461044, 45.083370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983618, 37.746449, 45.386108>,  <30.540245, 37.910690, 44.935715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983618, 37.746449, 45.386108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.947557, 38.142849, 45.425674>,  <30.925922, 38.380692, 45.449413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.947557, 38.142849, 45.425674>,  <30.983618, 37.746449, 45.386108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947557, 38.142849, 45.425674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101654, -0.107958, 0.988945,
		0.990727, 0.079098, 0.110472,
		-0.090150, 0.991004, 0.098916,
		30.920513, 38.440151, 45.455349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449205, 37.968258, 45.814079>,  <30.983618, 37.746449, 45.386108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449205, 37.968258, 45.814079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.187040, 38.269714, 45.833881>,  <31.029741, 38.450588, 45.845760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.187040, 38.269714, 45.833881>,  <31.449205, 37.968258, 45.814079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187040, 38.269714, 45.833881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141748, -0.187120, 0.972057,
		0.741849, 0.630083, 0.229469,
		-0.655414, 0.753646, 0.049501,
		30.990416, 38.495808, 45.848732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622663, 38.313549, 46.345638>,  <31.449205, 37.968258, 45.814079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622663, 38.313549, 46.345638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241074, 38.427845, 46.309219>,  <31.012119, 38.496422, 46.287369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241074, 38.427845, 46.309219>,  <31.622663, 38.313549, 46.345638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241074, 38.427845, 46.309219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079649, 0.051277, 0.995503,
		0.289123, 0.956935, -0.026158,
		-0.953973, 0.285740, -0.091044,
		30.954882, 38.513565, 46.281906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556244, 38.796913, 46.810188>,  <31.622663, 38.313549, 46.345638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556244, 38.796913, 46.810188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.192434, 38.650639, 46.731152>,  <30.974148, 38.562874, 46.683731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.192434, 38.650639, 46.731152>,  <31.556244, 38.796913, 46.810188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192434, 38.650639, 46.731152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163323, -0.122726, 0.978910,
		-0.382221, 0.922613, 0.051898,
		-0.909524, -0.365683, -0.197592,
		30.919577, 38.540932, 46.671875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160019, 39.117725, 47.285744>,  <31.556244, 38.796913, 46.810188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160019, 39.117725, 47.285744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489830, 39.172890, 47.505249>,  <32.687717, 39.205990, 47.636951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489830, 39.172890, 47.505249>,  <32.160019, 39.117725, 47.285744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489830, 39.172890, 47.505249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521135, 0.192690, -0.831438,
		-0.220408, 0.971520, 0.087006,
		0.824523, 0.137914, 0.548763,
		32.737186, 39.214264, 47.669876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486580, 39.753227, 47.046486>,  <32.160019, 39.117725, 47.285744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486580, 39.753227, 47.046486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771164, 39.548260, 47.238842>,  <32.941914, 39.425278, 47.354256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771164, 39.548260, 47.238842>,  <32.486580, 39.753227, 47.046486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771164, 39.548260, 47.238842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635663, 0.177515, -0.751279,
		0.299605, 0.840188, 0.452020,
		0.711456, -0.512419, 0.480892,
		32.984600, 39.394535, 47.383110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012955, 40.195187, 47.158607>,  <32.486580, 39.753227, 47.046486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012955, 40.195187, 47.158607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.170067, 39.827587, 47.144966>,  <33.264336, 39.607029, 47.136780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.170067, 39.827587, 47.144966>,  <33.012955, 40.195187, 47.158607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170067, 39.827587, 47.144966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607356, 0.287077, -0.740746,
		0.690536, 0.270237, 0.670918,
		0.392783, -0.918998, -0.034107,
		33.287903, 39.551888, 47.134735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789421, 40.354908, 47.150131>,  <33.012955, 40.195187, 47.158607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789421, 40.354908, 47.150131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749599, 39.969452, 47.050949>,  <33.725708, 39.738178, 46.991440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749599, 39.969452, 47.050949>,  <33.789421, 40.354908, 47.150131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749599, 39.969452, 47.050949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648815, 0.126066, -0.750431,
		0.754406, -0.235586, 0.612675,
		-0.099553, -0.963642, -0.247957,
		33.719734, 39.680359, 46.976562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482376, 40.163120, 46.963280>,  <33.789421, 40.354908, 47.150131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482376, 40.163120, 46.963280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228951, 39.896862, 46.805542>,  <34.076897, 39.737106, 46.710899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228951, 39.896862, 46.805542>,  <34.482376, 40.163120, 46.963280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228951, 39.896862, 46.805542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588165, -0.083246, -0.804445,
		0.502650, -0.741608, 0.444253,
		-0.633565, -0.665648, -0.394344,
		34.038879, 39.697166, 46.687237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912872, 39.721378, 46.670330>,  <34.482376, 40.163120, 46.963280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912872, 39.721378, 46.670330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.570618, 39.661358, 46.472191>,  <34.365265, 39.625347, 46.353306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.570618, 39.661358, 46.472191>,  <34.912872, 39.721378, 46.670330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570618, 39.661358, 46.472191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496000, 0.035743, -0.867586,
		0.147886, -0.988032, 0.043841,
		-0.855636, -0.150049, -0.495350,
		34.313927, 39.616344, 46.323586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143806, 39.271774, 46.081741>,  <34.912872, 39.721378, 46.670330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143806, 39.271774, 46.081741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.777889, 39.403576, 45.988289>,  <34.558338, 39.482658, 45.932217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.777889, 39.403576, 45.988289>,  <35.143806, 39.271774, 46.081741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777889, 39.403576, 45.988289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275481, 0.085940, -0.957457,
		-0.295412, -0.940233, -0.169391,
		-0.914790, 0.329509, -0.233629,
		34.503452, 39.502430, 45.918201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894203, 38.824165, 45.560291>,  <35.143806, 39.271774, 46.081741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894203, 38.824165, 45.560291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711079, 39.179104, 45.538288>,  <34.601204, 39.392067, 45.525085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711079, 39.179104, 45.538288>,  <34.894203, 38.824165, 45.560291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711079, 39.179104, 45.538288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376990, 0.137724, -0.915920,
		-0.805162, -0.440056, -0.397572,
		-0.457812, 0.887346, -0.055007,
		34.573734, 39.445309, 45.521786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526325, 38.885788, 44.934601>,  <34.894203, 38.824165, 45.560291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526325, 38.885788, 44.934601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583881, 39.267437, 45.039639>,  <34.618416, 39.496426, 45.102661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583881, 39.267437, 45.039639>,  <34.526325, 38.885788, 44.934601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583881, 39.267437, 45.039639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308806, 0.208810, -0.927921,
		-0.940178, 0.214605, -0.264593,
		0.143887, 0.954119, 0.262590,
		34.627048, 39.553673, 45.118416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179180, 39.409256, 44.509056>,  <34.526325, 38.885788, 44.934601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179180, 39.409256, 44.509056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.455547, 39.629826, 44.696060>,  <34.621368, 39.762165, 44.808262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.455547, 39.629826, 44.696060>,  <34.179180, 39.409256, 44.509056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455547, 39.629826, 44.696060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397667, 0.250173, -0.882765,
		-0.603734, 0.795832, -0.046434,
		0.690917, 0.551421, 0.467514,
		34.662823, 39.795250, 44.836315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176220, 40.033455, 44.120277>,  <34.179180, 39.409256, 44.509056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176220, 40.033455, 44.120277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.532394, 40.068802, 44.298855>,  <34.746101, 40.090012, 44.406002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.532394, 40.068802, 44.298855>,  <34.176220, 40.033455, 44.120277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532394, 40.068802, 44.298855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342596, 0.515578, -0.785371,
		-0.299579, 0.852273, 0.428815,
		0.890438, 0.088370, 0.446441,
		34.799526, 40.095314, 44.432789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391335, 40.726696, 43.950657>,  <34.176220, 40.033455, 44.120277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391335, 40.726696, 43.950657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.713589, 40.513245, 44.053562>,  <34.906940, 40.385174, 44.115307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.713589, 40.513245, 44.053562>,  <34.391335, 40.726696, 43.950657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713589, 40.513245, 44.053562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505922, 0.393827, -0.767426,
		0.308207, 0.748422, 0.587259,
		0.805637, -0.533633, 0.257263,
		34.955280, 40.353153, 44.130741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965137, 41.142670, 43.788502>,  <34.391335, 40.726696, 43.950657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965137, 41.142670, 43.788502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118370, 40.776421, 43.837299>,  <35.210308, 40.556671, 43.866577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118370, 40.776421, 43.837299>,  <34.965137, 41.142670, 43.788502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118370, 40.776421, 43.837299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614178, 0.153832, -0.774029,
		0.689954, 0.371440, 0.621286,
		0.383079, -0.915624, 0.121994,
		35.233295, 40.501732, 43.873898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675476, 41.244213, 43.840668>,  <34.965137, 41.142670, 43.788502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675476, 41.244213, 43.840668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596394, 40.892948, 43.666431>,  <35.548946, 40.682190, 43.561890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596394, 40.892948, 43.666431>,  <35.675476, 41.244213, 43.840668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596394, 40.892948, 43.666431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532792, 0.276736, -0.799718,
		0.822829, -0.390188, 0.413167,
		-0.197702, -0.878163, -0.435595,
		35.537083, 40.629498, 43.535751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.075649, 37.658546, 29.113157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.971195, 37.272430, 29.114801>,  <28.908524, 37.040760, 29.115788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.971195, 37.272430, 29.114801>,  <29.075649, 37.658546, 29.113157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971195, 37.272430, 29.114801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282161, 0.080403, 0.955992,
		-0.923144, 0.248483, -0.293364,
		-0.261135, -0.965294, 0.004111,
		28.892855, 36.982841, 29.116035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549162, 37.698200, 29.527592>,  <29.075649, 37.658546, 29.113157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549162, 37.698200, 29.527592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.624695, 37.305408, 29.530527>,  <28.670015, 37.069733, 29.532288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.624695, 37.305408, 29.530527>,  <28.549162, 37.698200, 29.527592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624695, 37.305408, 29.530527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335652, -0.057520, 0.940228,
		-0.922865, -0.180008, -0.340466,
		0.188832, -0.981982, 0.007337,
		28.681345, 37.010815, 29.532728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946079, 37.288456, 29.714214>,  <28.549162, 37.698200, 29.527592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946079, 37.288456, 29.714214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257111, 37.052174, 29.800411>,  <28.443729, 36.910404, 29.852129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257111, 37.052174, 29.800411>,  <27.946079, 37.288456, 29.714214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257111, 37.052174, 29.800411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304106, -0.053329, 0.951144,
		-0.550358, -0.805120, -0.221106,
		0.777576, -0.590710, 0.215492,
		28.490383, 36.874962, 29.865059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719875, 36.782242, 30.177116>,  <27.946079, 37.288456, 29.714214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719875, 36.782242, 30.177116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118732, 36.782711, 30.207323>,  <28.358047, 36.782993, 30.225447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118732, 36.782711, 30.207323>,  <27.719875, 36.782242, 30.177116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118732, 36.782711, 30.207323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075500, -0.010470, 0.997091,
		0.001988, -0.999945, -0.010349,
		0.997144, 0.001201, 0.075517,
		28.417875, 36.783062, 30.229979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868849, 36.284679, 30.707396>,  <27.719875, 36.782242, 30.177116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868849, 36.284679, 30.707396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186255, 36.526817, 30.682417>,  <28.376698, 36.672100, 30.667429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186255, 36.526817, 30.682417>,  <27.868849, 36.284679, 30.707396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186255, 36.526817, 30.682417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065800, 0.016667, 0.997694,
		0.604985, -0.795792, -0.026606,
		0.793513, 0.605341, -0.062446,
		28.424309, 36.708420, 30.663683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246712, 36.144051, 31.222452>,  <27.868849, 36.284679, 30.707396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246712, 36.144051, 31.222452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450211, 36.477066, 31.134766>,  <28.572309, 36.676876, 31.082153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450211, 36.477066, 31.134766>,  <28.246712, 36.144051, 31.222452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450211, 36.477066, 31.134766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187384, 0.141446, 0.972050,
		0.840276, -0.535606, -0.084044,
		0.508748, 0.832538, -0.219217,
		28.602835, 36.726826, 31.069000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994719, 36.100380, 31.590126>,  <28.246712, 36.144051, 31.222452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994719, 36.100380, 31.590126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871086, 36.474239, 31.519808>,  <28.796907, 36.698555, 31.477617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871086, 36.474239, 31.519808>,  <28.994719, 36.100380, 31.590126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871086, 36.474239, 31.519808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093163, 0.213715, 0.972444,
		0.946462, 0.284184, -0.153130,
		-0.309079, 0.934647, -0.175798,
		28.778362, 36.754635, 31.467068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385685, 36.573837, 32.013344>,  <28.994719, 36.100380, 31.590126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385685, 36.573837, 32.013344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.039816, 36.749821, 31.916370>,  <28.832294, 36.855412, 31.858185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.039816, 36.749821, 31.916370>,  <29.385685, 36.573837, 32.013344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039816, 36.749821, 31.916370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027307, 0.440739, 0.897220,
		0.501591, 0.782423, -0.369081,
		-0.864674, 0.439959, -0.242436,
		28.780415, 36.881809, 31.843639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395914, 37.305637, 32.304043>,  <29.385685, 36.573837, 32.013344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395914, 37.305637, 32.304043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013355, 37.209553, 32.237587>,  <28.783819, 37.151901, 32.197712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013355, 37.209553, 32.237587>,  <29.395914, 37.305637, 32.304043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013355, 37.209553, 32.237587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248341, 0.369441, 0.895456,
		-0.153719, 0.897671, -0.412986,
		-0.956398, -0.240210, -0.166138,
		28.726437, 37.137489, 32.187744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053724, 37.852257, 32.544319>,  <29.395914, 37.305637, 32.304043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053724, 37.852257, 32.544319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.811892, 37.533642, 32.543064>,  <28.666792, 37.342472, 32.542313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.811892, 37.533642, 32.543064>,  <29.053724, 37.852257, 32.544319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811892, 37.533642, 32.543064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237983, 0.176871, 0.955029,
		-0.760159, 0.578142, -0.296495,
		-0.604584, -0.796535, -0.003138,
		28.630516, 37.294682, 32.542122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720558, 37.880577, 33.118439>,  <29.053724, 37.852257, 32.544319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720558, 37.880577, 33.118439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535692, 37.534958, 33.038605>,  <28.424772, 37.327587, 32.990704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535692, 37.534958, 33.038605>,  <28.720558, 37.880577, 33.118439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535692, 37.534958, 33.038605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410452, 0.008920, 0.911839,
		-0.786088, 0.503338, -0.358771,
		-0.462163, -0.864044, -0.199584,
		28.397043, 37.275745, 32.978729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105961, 38.013626, 33.455841>,  <28.720558, 37.880577, 33.118439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105961, 38.013626, 33.455841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.131563, 37.615040, 33.434078>,  <28.146925, 37.375889, 33.421021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.131563, 37.615040, 33.434078>,  <28.105961, 38.013626, 33.455841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131563, 37.615040, 33.434078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551650, -0.080758, 0.830157,
		-0.831616, -0.023122, -0.554869,
		0.064006, -0.996465, -0.054404,
		28.150764, 37.316101, 33.417755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421473, 37.740852, 33.755436>,  <28.105961, 38.013626, 33.455841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421473, 37.740852, 33.755436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701809, 37.456364, 33.777306>,  <27.870010, 37.285671, 33.790428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701809, 37.456364, 33.777306>,  <27.421473, 37.740852, 33.755436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701809, 37.456364, 33.777306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346088, -0.272016, 0.897903,
		-0.623735, -0.648208, -0.436785,
		0.700840, -0.711220, 0.054671,
		27.912062, 37.242996, 33.793709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097214, 37.082027, 33.868130>,  <27.421473, 37.740852, 33.755436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097214, 37.082027, 33.868130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466150, 37.026176, 34.012238>,  <27.687511, 36.992668, 34.098701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466150, 37.026176, 34.012238>,  <27.097214, 37.082027, 33.868130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466150, 37.026176, 34.012238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382143, -0.467329, 0.797227,
		0.057052, -0.872988, -0.484393,
		0.922341, -0.139624, 0.360268,
		27.742853, 36.984287, 34.120319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091064, 36.392979, 34.046532>,  <27.097214, 37.082027, 33.868130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091064, 36.392979, 34.046532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395695, 36.564129, 34.241230>,  <27.578472, 36.666821, 34.358051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395695, 36.564129, 34.241230>,  <27.091064, 36.392979, 34.046532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395695, 36.564129, 34.241230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330044, -0.390312, 0.859493,
		0.557742, -0.815217, -0.156034,
		0.761574, 0.427877, 0.486750,
		27.624166, 36.692493, 34.387257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244539, 35.873631, 34.541531>,  <27.091064, 36.392979, 34.046532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244539, 35.873631, 34.541531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.461113, 36.172924, 34.694889>,  <27.591057, 36.352501, 34.786903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.461113, 36.172924, 34.694889>,  <27.244539, 35.873631, 34.541531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461113, 36.172924, 34.694889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205070, -0.324718, 0.923312,
		0.815350, -0.578536, -0.022373,
		0.541434, 0.748234, 0.383399,
		27.623543, 36.397396, 34.809910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647507, 35.606281, 35.033371>,  <27.244539, 35.873631, 34.541531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647507, 35.606281, 35.033371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.626797, 35.988426, 35.149719>,  <27.614370, 36.217712, 35.219528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.626797, 35.988426, 35.149719>,  <27.647507, 35.606281, 35.033371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626797, 35.988426, 35.149719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244757, -0.294520, 0.923770,
		0.968201, -0.023367, 0.249079,
		-0.051773, 0.955359, 0.290874,
		27.611265, 36.275036, 35.236980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975071, 35.541336, 35.729912>,  <27.647507, 35.606281, 35.033371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975071, 35.541336, 35.729912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.730446, 35.854771, 35.686123>,  <27.583672, 36.042831, 35.659851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.730446, 35.854771, 35.686123>,  <27.975071, 35.541336, 35.729912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730446, 35.854771, 35.686123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480913, -0.258285, 0.837861,
		0.628262, 0.565050, 0.534794,
		-0.611563, 0.783586, -0.109470,
		27.546976, 36.089848, 35.653282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642557, 35.571877, 35.979782>,  <27.975071, 35.541336, 35.729912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642557, 35.571877, 35.979782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024530, 35.677803, 36.033405>,  <29.253716, 35.741360, 36.065578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024530, 35.677803, 36.033405>,  <28.642557, 35.571877, 35.979782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024530, 35.677803, 36.033405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267372, -0.571346, -0.775935,
		-0.128891, 0.776810, -0.616404,
		0.954934, 0.264820, 0.134056,
		29.311010, 35.757248, 36.073624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881529, 35.882431, 35.295948>,  <28.642557, 35.571877, 35.979782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881529, 35.882431, 35.295948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.130098, 35.678162, 35.533619>,  <29.279240, 35.555599, 35.676220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.130098, 35.678162, 35.533619>,  <28.881529, 35.882431, 35.295948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130098, 35.678162, 35.533619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202773, -0.627711, -0.751573,
		0.756779, 0.587528, -0.286524,
		0.621425, -0.510676, 0.594173,
		29.316526, 35.524960, 35.711872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664602, 35.868366, 35.071987>,  <28.881529, 35.882431, 35.295948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664602, 35.868366, 35.071987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.558910, 35.546169, 35.284164>,  <29.495495, 35.352852, 35.411469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.558910, 35.546169, 35.284164>,  <29.664602, 35.868366, 35.071987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558910, 35.546169, 35.284164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334730, -0.592389, -0.732824,
		0.904510, -0.016079, 0.426149,
		-0.264230, -0.805491, 0.530440,
		29.479641, 35.304523, 35.443295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068705, 35.401363, 34.768715>,  <29.664602, 35.868366, 35.071987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068705, 35.401363, 34.768715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852648, 35.148243, 34.990639>,  <29.723015, 34.996372, 35.123791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852648, 35.148243, 34.990639>,  <30.068705, 35.401363, 34.768715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852648, 35.148243, 34.990639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165650, -0.726294, -0.667126,
		0.825111, -0.268438, 0.497124,
		-0.540140, -0.632802, 0.554807,
		29.690605, 34.958401, 35.157082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463373, 34.839504, 34.850964>,  <30.068705, 35.401363, 34.768715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463373, 34.839504, 34.850964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.085222, 34.726353, 34.915764>,  <29.858332, 34.658463, 34.954643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.085222, 34.726353, 34.915764>,  <30.463373, 34.839504, 34.850964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085222, 34.726353, 34.915764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100277, -0.725232, -0.681163,
		0.310174, -0.627711, 0.713983,
		-0.945377, -0.282875, 0.162003,
		29.801609, 34.641491, 34.964363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554192, 34.067814, 34.894012>,  <30.463373, 34.839504, 34.850964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554192, 34.067814, 34.894012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.169420, 34.149483, 34.821339>,  <29.938559, 34.198483, 34.777733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.169420, 34.149483, 34.821339>,  <30.554192, 34.067814, 34.894012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169420, 34.149483, 34.821339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034974, -0.751271, -0.659067,
		-0.271059, -0.627620, 0.729808,
		-0.961927, 0.204171, -0.181688,
		29.880842, 34.210735, 34.766830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175198, 33.307117, 34.894691>,  <30.554192, 34.067814, 34.894012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175198, 33.307117, 34.894691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965427, 33.588623, 34.702988>,  <29.839565, 33.757526, 34.587963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965427, 33.588623, 34.702988>,  <30.175198, 33.307117, 34.894691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965427, 33.588623, 34.702988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100413, -0.610064, -0.785964,
		-0.845515, -0.364055, 0.390599,
		-0.524425, 0.703766, -0.479262,
		29.808100, 33.799751, 34.559208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477736, 32.912682, 34.683784>,  <30.175198, 33.307117, 34.894691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477736, 32.912682, 34.683784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.576433, 33.237560, 34.472328>,  <29.635651, 33.432487, 34.345455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.576433, 33.237560, 34.472328>,  <29.477736, 32.912682, 34.683784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576433, 33.237560, 34.472328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068692, -0.529477, -0.845539,
		-0.966643, 0.244944, -0.074853,
		0.246743, 0.812193, -0.528641,
		29.650455, 33.481216, 34.313736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960054, 32.973564, 34.106396>,  <29.477736, 32.912682, 34.683784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960054, 32.973564, 34.106396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268627, 33.201099, 33.992332>,  <29.453772, 33.337620, 33.923893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268627, 33.201099, 33.992332>,  <28.960054, 32.973564, 34.106396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268627, 33.201099, 33.992332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089831, -0.346295, -0.933815,
		-0.629937, 0.745992, -0.216045,
		0.771434, 0.568837, -0.285158,
		29.500057, 33.371750, 33.906784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759537, 33.250351, 33.454338>,  <28.960054, 32.973564, 34.106396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759537, 33.250351, 33.454338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.158197, 33.271290, 33.479473>,  <29.397394, 33.283855, 33.494553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.158197, 33.271290, 33.479473>,  <28.759537, 33.250351, 33.454338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158197, 33.271290, 33.479473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079095, -0.421464, -0.903389,
		-0.020810, 0.905333, -0.424192,
		0.996650, 0.052351, 0.062836,
		29.457191, 33.286995, 33.498325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936403, 33.529934, 32.846325>,  <28.759537, 33.250351, 33.454338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936403, 33.529934, 32.846325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288885, 33.380547, 32.962257>,  <29.500374, 33.290913, 33.031815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288885, 33.380547, 32.962257>,  <28.936403, 33.529934, 32.846325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288885, 33.380547, 32.962257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195620, -0.270053, -0.942764,
		0.430365, 0.887462, -0.164913,
		0.881203, -0.373473, 0.289827,
		29.553246, 33.268505, 33.049206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414347, 33.767460, 32.315338>,  <28.936403, 33.529934, 32.846325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414347, 33.767460, 32.315338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.588596, 33.472435, 32.521732>,  <29.693146, 33.295422, 32.645569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.588596, 33.472435, 32.521732>,  <29.414347, 33.767460, 32.315338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588596, 33.472435, 32.521732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363985, -0.379936, -0.850390,
		0.823254, 0.558259, 0.102952,
		0.435623, -0.737561, 0.515981,
		29.719284, 33.251167, 32.676525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058962, 33.786819, 32.031948>,  <29.414347, 33.767460, 32.315338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058962, 33.786819, 32.031948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.974464, 33.427292, 32.185574>,  <29.923765, 33.211575, 32.277748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.974464, 33.427292, 32.185574>,  <30.058962, 33.786819, 32.031948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974464, 33.427292, 32.185574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190007, -0.423198, -0.885890,
		0.958788, -0.114164, 0.260179,
		-0.211244, -0.898816, 0.384065,
		29.911091, 33.157646, 32.300793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592882, 33.317837, 31.719326>,  <30.058962, 33.786819, 32.031948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592882, 33.317837, 31.719326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299953, 33.081715, 31.855114>,  <30.124195, 32.940041, 31.936586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299953, 33.081715, 31.855114>,  <30.592882, 33.317837, 31.719326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299953, 33.081715, 31.855114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097418, -0.584209, -0.805735,
		0.673953, -0.556988, 0.485337,
		-0.732323, -0.590308, 0.339468,
		30.080257, 32.904621, 31.956955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779762, 32.705135, 31.600685>,  <30.592882, 33.317837, 31.719326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779762, 32.705135, 31.600685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.385059, 32.651142, 31.636660>,  <30.148237, 32.618748, 31.658245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.385059, 32.651142, 31.636660>,  <30.779762, 32.705135, 31.600685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385059, 32.651142, 31.636660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004011, -0.533998, -0.845476,
		0.162150, -0.834641, 0.526385,
		-0.986758, -0.134983, 0.089936,
		30.089031, 32.610649, 31.663641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563278, 31.984123, 31.488600>,  <30.779762, 32.705135, 31.600685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563278, 31.984123, 31.488600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215847, 32.172596, 31.427200>,  <30.007389, 32.285679, 31.390360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215847, 32.172596, 31.427200>,  <30.563278, 31.984123, 31.488600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215847, 32.172596, 31.427200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207914, -0.627670, -0.750201,
		-0.449826, -0.619694, 0.643146,
		-0.868578, 0.471179, -0.153499,
		29.955275, 32.313950, 31.381151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060202, 31.405577, 31.276781>,  <30.563278, 31.984123, 31.488600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060202, 31.405577, 31.276781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.921749, 31.759995, 31.153419>,  <29.838676, 31.972645, 31.079403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.921749, 31.759995, 31.153419>,  <30.060202, 31.405577, 31.276781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921749, 31.759995, 31.153419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303742, -0.416854, -0.856722,
		-0.887656, -0.202864, 0.413417,
		-0.346132, 0.886047, -0.308405,
		29.817909, 32.025810, 31.060898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428934, 31.201159, 31.045958>,  <30.060202, 31.405577, 31.276781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428934, 31.201159, 31.045958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524113, 31.556995, 30.890005>,  <29.581219, 31.770498, 30.796434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524113, 31.556995, 30.890005>,  <29.428934, 31.201159, 31.045958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524113, 31.556995, 30.890005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401481, -0.275429, -0.873471,
		-0.884418, 0.364369, 0.291617,
		0.237946, 0.889592, -0.389881,
		29.595497, 31.823874, 30.773041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990780, 31.073801, 30.552586>,  <29.428934, 31.201159, 31.045958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990780, 31.073801, 30.552586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.173639, 31.425573, 30.499491>,  <29.283356, 31.636637, 30.467634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.173639, 31.425573, 30.499491>,  <28.990780, 31.073801, 30.552586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173639, 31.425573, 30.499491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328322, 0.028167, -0.944146,
		-0.826571, 0.475195, 0.301613,
		0.457149, 0.879430, -0.132735,
		29.310783, 31.689402, 30.459671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535881, 31.580431, 30.404009>,  <28.990780, 31.073801, 30.552586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535881, 31.580431, 30.404009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882685, 31.673191, 30.227592>,  <29.090767, 31.728848, 30.121742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882685, 31.673191, 30.227592>,  <28.535881, 31.580431, 30.404009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882685, 31.673191, 30.227592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469267, 0.082327, -0.879210,
		-0.167579, 0.969250, 0.180201,
		0.867010, 0.231900, -0.441040,
		29.142788, 31.742762, 30.095280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380142, 32.257618, 29.950947>,  <28.535881, 31.580431, 30.404009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380142, 32.257618, 29.950947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728426, 32.106659, 29.824814>,  <28.937397, 32.016083, 29.749134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728426, 32.106659, 29.824814>,  <28.380142, 32.257618, 29.950947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728426, 32.106659, 29.824814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259195, 0.192759, -0.946394,
		0.417950, 0.905768, 0.070018,
		0.870710, -0.377398, -0.315334,
		28.989639, 31.993439, 29.730213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816202, 32.750465, 29.485611>,  <28.380142, 32.257618, 29.950947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816202, 32.750465, 29.485611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919983, 32.374634, 29.396286>,  <28.982250, 32.149136, 29.342691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919983, 32.374634, 29.396286>,  <28.816202, 32.750465, 29.485611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919983, 32.374634, 29.396286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121376, 0.197674, -0.972725,
		0.958099, 0.279479, -0.062756,
		0.259450, -0.939583, -0.223313,
		28.997818, 32.092758, 29.329292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110472, 32.840233, 28.866953>,  <28.816202, 32.750465, 29.485611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110472, 32.840233, 28.866953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045853, 32.446423, 28.894098>,  <29.007082, 32.210136, 28.910385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045853, 32.446423, 28.894098>,  <29.110472, 32.840233, 28.866953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045853, 32.446423, 28.894098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337658, -0.009473, -0.941221,
		0.927302, -0.174964, -0.330904,
		-0.161545, -0.984529, 0.067863,
		28.997389, 32.151062, 28.914457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396753, 32.545071, 28.300411>,  <29.110472, 32.840233, 28.866953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396753, 32.545071, 28.300411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124804, 32.282928, 28.432037>,  <28.961634, 32.125645, 28.511013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124804, 32.282928, 28.432037>,  <29.396753, 32.545071, 28.300411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124804, 32.282928, 28.432037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317806, -0.141093, -0.937599,
		0.660887, -0.742028, -0.112349,
		-0.679873, -0.655353, 0.329068,
		28.920841, 32.086323, 28.530758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.884235, 37.785965, 48.768578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600697, 37.549515, 48.614639>,  <35.430573, 37.407646, 48.522278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600697, 37.549515, 48.614639>,  <35.884235, 37.785965, 48.768578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600697, 37.549515, 48.614639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598586, 0.215502, 0.771527,
		-0.373135, 0.777257, -0.506598,
		-0.708848, -0.591126, -0.384844,
		35.388042, 37.372177, 48.499187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325405, 38.156765, 48.814781>,  <35.884235, 37.785965, 48.768578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325405, 38.156765, 48.814781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226509, 37.769531, 48.798355>,  <35.167171, 37.537189, 48.788502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226509, 37.769531, 48.798355>,  <35.325405, 38.156765, 48.814781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226509, 37.769531, 48.798355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641483, 0.131772, 0.755735,
		-0.726205, 0.213186, -0.653588,
		-0.247237, -0.968085, -0.041062,
		35.152336, 37.479107, 48.786037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597767, 38.148651, 48.976822>,  <35.325405, 38.156765, 48.814781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597767, 38.148651, 48.976822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691769, 37.762829, 49.024834>,  <34.748169, 37.531334, 49.053638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691769, 37.762829, 49.024834>,  <34.597767, 38.148651, 48.976822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691769, 37.762829, 49.024834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635403, -0.059002, 0.769924,
		-0.735552, -0.257198, -0.626747,
		0.235002, -0.964556, 0.120025,
		34.762268, 37.473461, 49.060841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941437, 37.807526, 49.057838>,  <34.597767, 38.148651, 48.976822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941437, 37.807526, 49.057838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217522, 37.550953, 49.191811>,  <34.383171, 37.397011, 49.272194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217522, 37.550953, 49.191811>,  <33.941437, 37.807526, 49.057838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217522, 37.550953, 49.191811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513284, -0.107739, 0.851429,
		-0.510050, -0.759577, -0.403599,
		0.690209, -0.641433, 0.334927,
		34.424583, 37.358524, 49.292290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587227, 37.171970, 49.237442>,  <33.941437, 37.807526, 49.057838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587227, 37.171970, 49.237442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939175, 37.171410, 49.427528>,  <34.150341, 37.171074, 49.541580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939175, 37.171410, 49.427528>,  <33.587227, 37.171970, 49.237442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939175, 37.171410, 49.427528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464288, -0.215823, 0.858986,
		0.101359, -0.976431, -0.190546,
		0.879866, -0.001403, 0.475221,
		34.203133, 37.170990, 49.570095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691101, 36.513622, 49.611790>,  <33.587227, 37.171970, 49.237442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691101, 36.513622, 49.611790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923489, 36.760723, 49.823772>,  <34.062920, 36.908985, 49.950962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923489, 36.760723, 49.823772>,  <33.691101, 36.513622, 49.611790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923489, 36.760723, 49.823772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358433, -0.390393, 0.848009,
		0.730754, -0.682620, -0.005381,
		0.580968, 0.617757, 0.529955,
		34.097778, 36.946049, 49.982758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755966, 36.203030, 50.292397>,  <33.691101, 36.513622, 49.611790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755966, 36.203030, 50.292397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893681, 36.570511, 50.369816>,  <33.976311, 36.791000, 50.416267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893681, 36.570511, 50.369816>,  <33.755966, 36.203030, 50.292397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893681, 36.570511, 50.369816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263873, -0.103152, 0.959026,
		0.901021, -0.381249, 0.206906,
		0.344285, 0.918699, 0.193544,
		33.996967, 36.846119, 50.427879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163284, 36.175266, 51.005264>,  <33.755966, 36.203030, 50.292397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163284, 36.175266, 51.005264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052299, 36.554546, 50.943394>,  <33.985710, 36.782116, 50.906273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052299, 36.554546, 50.943394>,  <34.163284, 36.175266, 51.005264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052299, 36.554546, 50.943394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330368, 0.057011, 0.942129,
		0.902149, 0.312502, 0.297438,
		-0.277460, 0.948205, -0.154673,
		33.969063, 36.839008, 50.896992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253677, 36.422607, 51.655098>,  <34.163284, 36.175266, 51.005264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253677, 36.422607, 51.655098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022228, 36.692768, 51.472221>,  <33.883358, 36.854866, 51.362495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022228, 36.692768, 51.472221>,  <34.253677, 36.422607, 51.655098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022228, 36.692768, 51.472221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480585, 0.170562, 0.860201,
		0.658961, 0.717455, 0.225895,
		-0.578627, 0.675401, -0.457192,
		33.848640, 36.895390, 51.335064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304619, 37.011131, 52.022091>,  <34.253677, 36.422607, 51.655098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304619, 37.011131, 52.022091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959221, 37.027939, 51.821049>,  <33.751984, 37.038025, 51.700424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959221, 37.027939, 51.821049>,  <34.304619, 37.011131, 52.022091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959221, 37.027939, 51.821049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480840, 0.232154, 0.845516,
		0.152210, 0.971771, -0.180259,
		-0.863496, 0.042020, -0.502602,
		33.700172, 37.040546, 51.670269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950191, 37.496357, 52.378780>,  <34.304619, 37.011131, 52.022091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950191, 37.496357, 52.378780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.658833, 37.324734, 52.165112>,  <33.484016, 37.221760, 52.036911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.658833, 37.324734, 52.165112>,  <33.950191, 37.496357, 52.378780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658833, 37.324734, 52.165112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627169, 0.103646, 0.771956,
		-0.275847, 0.897312, -0.344587,
		-0.728400, -0.429056, -0.534176,
		33.440311, 37.196018, 52.004860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340965, 37.793056, 52.671318>,  <33.950191, 37.496357, 52.378780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340965, 37.793056, 52.671318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203712, 37.455742, 52.505844>,  <33.121361, 37.253353, 52.406559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203712, 37.455742, 52.505844>,  <33.340965, 37.793056, 52.671318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203712, 37.455742, 52.505844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631860, -0.118644, 0.765948,
		-0.694994, 0.524208, -0.492128,
		-0.343128, -0.843285, -0.413683,
		33.100773, 37.202755, 52.381741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588280, 37.803928, 52.652660>,  <33.340965, 37.793056, 52.671318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588280, 37.803928, 52.652660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729576, 37.431618, 52.690365>,  <32.814354, 37.208233, 52.712986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729576, 37.431618, 52.690365>,  <32.588280, 37.803928, 52.652660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729576, 37.431618, 52.690365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530999, -0.116520, 0.839323,
		-0.770236, -0.346531, -0.535399,
		0.353236, -0.930773, 0.094260,
		32.835548, 37.152386, 52.718643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070431, 37.551487, 53.128635>,  <32.588280, 37.803928, 52.652660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070431, 37.551487, 53.128635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390587, 37.312561, 53.108261>,  <32.582680, 37.169205, 53.096039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390587, 37.312561, 53.108261>,  <32.070431, 37.551487, 53.128635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390587, 37.312561, 53.108261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259829, -0.422217, 0.868459,
		-0.540250, -0.681869, -0.493137,
		0.800386, -0.597317, -0.050934,
		32.630703, 37.133366, 53.092979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701530, 38.204662, 53.131695>,  <32.070431, 37.551487, 53.128635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701530, 38.204662, 53.131695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.363966, 38.395691, 53.033928>,  <31.161427, 38.510307, 52.975269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.363966, 38.395691, 53.033928>,  <31.701530, 38.204662, 53.131695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363966, 38.395691, 53.033928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463843, 0.420609, -0.779704,
		-0.269563, -0.771370, -0.576476,
		-0.843911, 0.477573, -0.244414,
		31.110792, 38.538963, 52.960606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527098, 37.947899, 52.460636>,  <31.701530, 38.204662, 53.131695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527098, 37.947899, 52.460636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.320141, 38.287960, 52.499706>,  <31.195967, 38.491997, 52.523148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.320141, 38.287960, 52.499706>,  <31.527098, 37.947899, 52.460636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320141, 38.287960, 52.499706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256626, 0.263032, -0.930031,
		-0.816362, -0.456125, -0.354263,
		-0.517393, 0.850155, 0.097676,
		31.164923, 38.543007, 52.529011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195440, 38.096596, 51.780182>,  <31.527098, 37.947899, 52.460636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195440, 38.096596, 51.780182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167616, 38.454353, 51.956913>,  <31.150921, 38.669010, 52.062950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167616, 38.454353, 51.956913>,  <31.195440, 38.096596, 51.780182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167616, 38.454353, 51.956913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324828, 0.439072, -0.837677,
		-0.943211, 0.085248, -0.321069,
		-0.069562, 0.894399, 0.441829,
		31.146748, 38.722672, 52.089462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697638, 38.548397, 51.478916>,  <31.195440, 38.096596, 51.780182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697638, 38.548397, 51.478916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943699, 38.802269, 51.666008>,  <31.091335, 38.954594, 51.778263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943699, 38.802269, 51.666008>,  <30.697638, 38.548397, 51.478916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943699, 38.802269, 51.666008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262566, 0.394470, -0.880598,
		-0.743402, 0.664511, 0.076014,
		0.615152, 0.634680, 0.467728,
		31.128244, 38.992672, 51.806328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635174, 39.223122, 51.141846>,  <30.697638, 38.548397, 51.478916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635174, 39.223122, 51.141846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.987364, 39.264877, 51.326828>,  <31.198677, 39.289932, 51.437817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.987364, 39.264877, 51.326828>,  <30.635174, 39.223122, 51.141846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987364, 39.264877, 51.326828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415735, 0.298857, -0.858982,
		-0.227876, 0.948571, 0.219738,
		0.880476, 0.104388, 0.462456,
		31.251507, 39.296192, 51.465565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988201, 39.776855, 50.844959>,  <30.635174, 39.223122, 51.141846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988201, 39.776855, 50.844959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.280918, 39.574989, 51.028172>,  <31.456549, 39.453869, 51.138100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.280918, 39.574989, 51.028172>,  <30.988201, 39.776855, 50.844959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280918, 39.574989, 51.028172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584078, 0.118088, -0.803062,
		0.351186, 0.855203, 0.381177,
		0.731793, -0.504661, 0.458034,
		31.500456, 39.423592, 51.165581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560783, 40.223793, 50.754436>,  <30.988201, 39.776855, 50.844959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560783, 40.223793, 50.754436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713528, 39.859661, 50.818283>,  <31.805174, 39.641182, 50.856590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713528, 39.859661, 50.818283>,  <31.560783, 40.223793, 50.754436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713528, 39.859661, 50.818283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570469, 0.096281, -0.815656,
		0.727149, 0.402524, 0.556083,
		0.381862, -0.910332, 0.159617,
		31.828087, 39.586563, 50.866169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215584, 40.265110, 50.546806>,  <31.560783, 40.223793, 50.754436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215584, 40.265110, 50.546806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157906, 39.869289, 50.546844>,  <32.123299, 39.631798, 50.546867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157906, 39.869289, 50.546844>,  <32.215584, 40.265110, 50.546806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157906, 39.869289, 50.546844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419419, -0.061203, -0.905728,
		0.896268, -0.130557, 0.423861,
		-0.144191, -0.989550, 0.000096,
		32.114647, 39.572426, 50.546875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748413, 40.007030, 50.149708>,  <32.215584, 40.265110, 50.546806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748413, 40.007030, 50.149708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510067, 39.685825, 50.145287>,  <32.367062, 39.493103, 50.142632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510067, 39.685825, 50.145287>,  <32.748413, 40.007030, 50.149708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510067, 39.685825, 50.145287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327351, -0.230287, -0.916411,
		0.733343, -0.549673, 0.400086,
		-0.595861, -0.803012, -0.011056,
		32.331310, 39.444923, 50.141968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198483, 39.549515, 49.786674>,  <32.748413, 40.007030, 50.149708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198483, 39.549515, 49.786674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831188, 39.391964, 49.770126>,  <32.610813, 39.297436, 49.760197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831188, 39.391964, 49.770126>,  <33.198483, 39.549515, 49.786674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831188, 39.391964, 49.770126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126019, -0.191544, -0.973360,
		0.375458, -0.898985, 0.225517,
		-0.918232, -0.393875, -0.041372,
		32.555717, 39.273800, 49.757713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207897, 38.781746, 49.635567>,  <33.198483, 39.549515, 49.786674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207897, 38.781746, 49.635567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848572, 38.906879, 49.512165>,  <32.632977, 38.981960, 49.438126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848572, 38.906879, 49.512165>,  <33.207897, 38.781746, 49.635567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848572, 38.906879, 49.512165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166981, -0.406395, -0.898310,
		-0.406395, -0.858475, 0.312832,
		0.898310, -0.312832, 0.308506,
		32.579079, 39.000729, 49.419613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849960, 38.223549, 49.097172>,  <33.207897, 38.781746, 49.635567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849960, 38.223549, 49.097172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715668, 38.597294, 49.049435>,  <32.635090, 38.821541, 49.020794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715668, 38.597294, 49.049435>,  <32.849960, 38.223549, 49.097172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715668, 38.597294, 49.049435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392654, 0.023662, -0.919382,
		-0.856216, -0.355527, -0.374827,
		-0.335734, 0.934367, -0.119339,
		32.614948, 38.877605, 49.013634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504158, 38.229580, 48.450661>,  <32.849960, 38.223549, 49.097172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504158, 38.229580, 48.450661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500042, 38.628765, 48.475819>,  <32.497574, 38.868279, 48.490913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500042, 38.628765, 48.475819>,  <32.504158, 38.229580, 48.450661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500042, 38.628765, 48.475819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235833, 0.063547, -0.969714,
		-0.971739, 0.004854, -0.236007,
		-0.010290, 0.997967, 0.062895,
		32.496956, 38.928154, 48.494686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071163, 38.579105, 47.798298>,  <32.504158, 38.229580, 48.450661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071163, 38.579105, 47.798298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.345448, 38.826664, 47.951534>,  <32.510017, 38.975201, 48.043476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.345448, 38.826664, 47.951534>,  <32.071163, 38.579105, 47.798298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345448, 38.826664, 47.951534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376732, 0.148558, -0.914332,
		-0.622790, 0.771295, -0.131291,
		0.685716, 0.618898, 0.383092,
		32.551163, 39.012333, 48.066463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346611, 38.646576, 47.512508>,  <32.071163, 38.579105, 47.798298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346611, 38.646576, 47.512508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.015179, 38.584663, 47.297287>,  <30.816319, 38.547516, 47.168156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.015179, 38.584663, 47.297287>,  <31.346611, 38.646576, 47.512508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015179, 38.584663, 47.297287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548703, 0.033515, 0.835345,
		-0.111261, 0.987381, -0.112698,
		-0.828580, -0.154779, -0.538050,
		30.766605, 38.538231, 47.135872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842951, 39.133301, 47.642345>,  <31.346611, 38.646576, 47.512508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842951, 39.133301, 47.642345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.665646, 38.788891, 47.542629>,  <30.559261, 38.582245, 47.482800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.665646, 38.788891, 47.542629>,  <30.842951, 39.133301, 47.642345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665646, 38.788891, 47.542629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406849, -0.054563, 0.911865,
		-0.798743, 0.505622, -0.326122,
		-0.443265, -0.861028, -0.249293,
		30.532665, 38.530582, 47.467842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117180, 39.067234, 47.971695>,  <30.842951, 39.133301, 47.642345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117180, 39.067234, 47.971695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.148472, 38.688179, 47.847855>,  <30.167246, 38.460747, 47.773548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.148472, 38.688179, 47.847855>,  <30.117180, 39.067234, 47.971695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148472, 38.688179, 47.847855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535236, -0.301926, 0.788900,
		-0.841073, 0.103997, -0.530831,
		0.078228, -0.947642, -0.309604,
		30.171940, 38.403885, 47.754974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392729, 38.732044, 47.840343>,  <30.117180, 39.067234, 47.971695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392729, 38.732044, 47.840343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.679443, 38.472797, 47.943233>,  <29.851471, 38.317249, 48.004967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.679443, 38.472797, 47.943233>,  <29.392729, 38.732044, 47.840343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679443, 38.472797, 47.943233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546067, -0.292338, 0.785080,
		-0.433628, -0.703194, -0.563458,
		0.716784, -0.648118, 0.257225,
		29.894478, 38.278362, 48.020401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061304, 38.176083, 47.945370>,  <29.392729, 38.732044, 47.840343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061304, 38.176083, 47.945370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.409981, 38.114510, 48.131470>,  <29.619186, 38.077568, 48.243130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.409981, 38.114510, 48.131470>,  <29.061304, 38.176083, 47.945370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409981, 38.114510, 48.131470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486702, -0.382809, 0.785225,
		0.057233, -0.910913, -0.408609,
		0.871691, -0.153931, 0.465252,
		29.671488, 38.068329, 48.271046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928566, 37.448196, 48.316162>,  <29.061304, 38.176083, 47.945370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928566, 37.448196, 48.316162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.246561, 37.616646, 48.490818>,  <29.437357, 37.717716, 48.595612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.246561, 37.616646, 48.490818>,  <28.928566, 37.448196, 48.316162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246561, 37.616646, 48.490818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409933, -0.157624, 0.898393,
		0.447159, -0.893202, 0.047324,
		0.794987, 0.421124, 0.436636,
		29.485058, 37.742985, 48.621807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095592, 36.943890, 48.860714>,  <28.928566, 37.448196, 48.316162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095592, 36.943890, 48.860714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.262774, 37.297535, 48.944286>,  <29.363083, 37.509724, 48.994431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.262774, 37.297535, 48.944286>,  <29.095592, 36.943890, 48.860714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262774, 37.297535, 48.944286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269325, -0.099057, 0.957941,
		0.867628, -0.456645, 0.196714,
		0.417953, 0.884117, 0.208931,
		29.388159, 37.562771, 49.006966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463993, 36.275238, 48.773342>,  <29.095592, 36.943890, 48.860714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463993, 36.275238, 48.773342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.284670, 35.917820, 48.763649>,  <29.177074, 35.703369, 48.757832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.284670, 35.917820, 48.763649>,  <29.463993, 36.275238, 48.773342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284670, 35.917820, 48.763649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070862, -0.008504, -0.997450,
		0.891065, -0.448884, 0.067131,
		-0.448310, -0.893550, -0.024231,
		29.150177, 35.649754, 48.756378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872103, 35.946037, 48.303799>,  <29.463993, 36.275238, 48.773342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872103, 35.946037, 48.303799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.558237, 35.700600, 48.339138>,  <29.369917, 35.553337, 48.360344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.558237, 35.700600, 48.339138>,  <29.872103, 35.946037, 48.303799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558237, 35.700600, 48.339138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048134, -0.081788, -0.995487,
		0.618050, -0.785375, 0.034641,
		-0.784664, -0.613593, 0.088352,
		29.322838, 35.516521, 48.365643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007454, 35.480778, 47.776493>,  <29.872103, 35.946037, 48.303799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007454, 35.480778, 47.776493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.616385, 35.437992, 47.848835>,  <29.381742, 35.412319, 47.892242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.616385, 35.437992, 47.848835>,  <30.007454, 35.480778, 47.776493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616385, 35.437992, 47.848835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157209, -0.198725, -0.967364,
		0.139418, -0.974200, 0.177472,
		-0.977675, -0.106968, 0.180859,
		29.323082, 35.405903, 47.903091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893812, 34.789322, 47.586258>,  <30.007454, 35.480778, 47.776493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893812, 34.789322, 47.586258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.548470, 34.990719, 47.572922>,  <29.341265, 35.111557, 47.564919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.548470, 34.990719, 47.572922>,  <29.893812, 34.789322, 47.586258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548470, 34.990719, 47.572922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013906, -0.089789, -0.995864,
		-0.504407, -0.859320, 0.084521,
		-0.863354, 0.503496, -0.033341,
		29.289463, 35.141766, 47.562920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451670, 34.365051, 47.148678>,  <29.893812, 34.789322, 47.586258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451670, 34.365051, 47.148678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.289871, 34.730694, 47.159916>,  <29.192791, 34.950081, 47.166660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.289871, 34.730694, 47.159916>,  <29.451670, 34.365051, 47.148678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289871, 34.730694, 47.159916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040130, 0.048436, -0.998020,
		-0.913658, -0.402569, -0.056276,
		-0.404498, 0.914108, 0.028099,
		29.168522, 35.004925, 47.168346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021793, 34.332001, 46.597626>,  <29.451670, 34.365051, 47.148678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021793, 34.332001, 46.597626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.102592, 34.716877, 46.670708>,  <29.151072, 34.947803, 46.714558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.102592, 34.716877, 46.670708>,  <29.021793, 34.332001, 46.597626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102592, 34.716877, 46.670708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148254, 0.154360, -0.976828,
		-0.968100, 0.224404, -0.111469,
		0.201998, 0.962193, 0.182704,
		29.163193, 35.005535, 46.725517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599791, 34.722298, 46.216045>,  <29.021793, 34.332001, 46.597626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599791, 34.722298, 46.216045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.954733, 34.899658, 46.266624>,  <29.167698, 35.006077, 46.296970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.954733, 34.899658, 46.266624>,  <28.599791, 34.722298, 46.216045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954733, 34.899658, 46.266624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172427, -0.064779, -0.982890,
		-0.427627, 0.893978, -0.133937,
		0.887358, 0.443405, 0.126445,
		29.220940, 35.032681, 46.304558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.620052, 34.396461, 51.577904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.844149, 34.716873, 51.493542>,  <31.978605, 34.909122, 51.442924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.844149, 34.716873, 51.493542>,  <31.620052, 34.396461, 51.577904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844149, 34.716873, 51.493542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264347, -0.414198, -0.870954,
		-0.785017, 0.432191, -0.443800,
		0.560240, 0.801031, -0.210904,
		32.012222, 34.957184, 51.430271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395987, 34.705566, 50.915710>,  <31.620052, 34.396461, 51.577904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395987, 34.705566, 50.915710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.766670, 34.843414, 50.975636>,  <31.989080, 34.926125, 51.011593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.766670, 34.843414, 50.975636>,  <31.395987, 34.705566, 50.915710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766670, 34.843414, 50.975636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297417, -0.428970, -0.852953,
		-0.229678, 0.834998, -0.500026,
		0.926710, 0.344621, 0.149817,
		32.044682, 34.946800, 51.020580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496168, 34.890190, 50.294926>,  <31.395987, 34.705566, 50.915710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496168, 34.890190, 50.294926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.860060, 34.840027, 50.453247>,  <32.078396, 34.809929, 50.548241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.860060, 34.840027, 50.453247>,  <31.496168, 34.890190, 50.294926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860060, 34.840027, 50.453247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313169, -0.418659, -0.852438,
		0.272610, 0.899443, -0.341594,
		0.909730, -0.125406, 0.395808,
		32.132980, 34.802406, 50.571991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898670, 35.091408, 49.785976>,  <31.496168, 34.890190, 50.294926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898670, 35.091408, 49.785976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.169266, 34.889729, 50.000698>,  <32.331623, 34.768723, 50.129532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.169266, 34.889729, 50.000698>,  <31.898670, 35.091408, 49.785976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169266, 34.889729, 50.000698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502427, -0.216965, -0.836955,
		0.538454, 0.835892, 0.106547,
		0.676487, -0.504194, 0.536801,
		32.372211, 34.738472, 50.161739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531971, 35.243706, 49.529331>,  <31.898670, 35.091408, 49.785976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531971, 35.243706, 49.529331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.615009, 34.901146, 49.718426>,  <32.664833, 34.695610, 49.831882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.615009, 34.901146, 49.718426>,  <32.531971, 35.243706, 49.529331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615009, 34.901146, 49.718426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511323, -0.316988, -0.798791,
		0.833938, 0.407546, 0.372093,
		0.207595, -0.856403, 0.472736,
		32.677288, 34.644226, 49.860245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228691, 35.043785, 49.354130>,  <32.531971, 35.243706, 49.529331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228691, 35.043785, 49.354130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.071522, 34.695705, 49.473034>,  <32.977222, 34.486858, 49.544376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.071522, 34.695705, 49.473034>,  <33.228691, 35.043785, 49.354130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071522, 34.695705, 49.473034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547114, -0.481046, -0.685027,
		0.739108, -0.106523, 0.665111,
		-0.392920, -0.870200, 0.297265,
		32.953648, 34.434647, 49.562214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710041, 34.550568, 49.424858>,  <33.228691, 35.043785, 49.354130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710041, 34.550568, 49.424858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378342, 34.334774, 49.366467>,  <33.179321, 34.205299, 49.331432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378342, 34.334774, 49.366467>,  <33.710041, 34.550568, 49.424858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378342, 34.334774, 49.366467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486787, -0.568880, -0.662883,
		0.274568, -0.620754, 0.734354,
		-0.829247, -0.539481, -0.145979,
		33.129566, 34.172932, 49.322674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010044, 33.905346, 49.310291>,  <33.710041, 34.550568, 49.424858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010044, 33.905346, 49.310291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.635990, 33.921436, 49.169491>,  <33.411556, 33.931091, 49.085011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.635990, 33.921436, 49.169491>,  <34.010044, 33.905346, 49.310291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635990, 33.921436, 49.169491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301784, -0.430052, -0.850871,
		-0.185604, -0.901907, 0.390018,
		-0.935135, 0.040224, -0.352000,
		33.355450, 33.933502, 49.063892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911518, 33.300201, 48.925636>,  <34.010044, 33.905346, 49.310291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911518, 33.300201, 48.925636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.589779, 33.505077, 48.805183>,  <33.396736, 33.628002, 48.732910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.589779, 33.505077, 48.805183>,  <33.911518, 33.300201, 48.925636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589779, 33.505077, 48.805183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037071, -0.462575, -0.885805,
		-0.592997, -0.723662, 0.353085,
		-0.804351, 0.512190, -0.301132,
		33.348473, 33.658733, 48.714844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447823, 32.806854, 48.593494>,  <33.911518, 33.300201, 48.925636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447823, 32.806854, 48.593494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.331959, 33.164680, 48.457344>,  <33.262440, 33.379375, 48.375656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.331959, 33.164680, 48.457344>,  <33.447823, 32.806854, 48.593494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331959, 33.164680, 48.457344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023072, -0.348990, -0.936842,
		-0.956851, -0.279219, 0.080449,
		-0.289660, 0.894563, -0.340373,
		33.245060, 33.433048, 48.355232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907177, 32.709248, 48.129879>,  <33.447823, 32.806854, 48.593494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907177, 32.709248, 48.129879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051353, 33.069954, 48.034458>,  <33.137859, 33.286377, 47.977203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051353, 33.069954, 48.034458>,  <32.907177, 32.709248, 48.129879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051353, 33.069954, 48.034458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038316, -0.269842, -0.962142,
		-0.931995, 0.337655, -0.131814,
		0.360441, 0.901762, -0.238554,
		33.159485, 33.340481, 47.962891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595772, 33.014240, 47.545753>,  <32.907177, 32.709248, 48.129879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595772, 33.014240, 47.545753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.956806, 33.186283, 47.553265>,  <33.173428, 33.289509, 47.557774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.956806, 33.186283, 47.553265>,  <32.595772, 33.014240, 47.545753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956806, 33.186283, 47.553265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135758, -0.242955, -0.960491,
		-0.408548, 0.869473, -0.277677,
		0.902584, 0.430104, 0.018780,
		33.227581, 33.315315, 47.558899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994720, 33.465988, 47.274353>,  <32.595772, 33.014240, 47.545753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994720, 33.465988, 47.274353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.681778, 33.293266, 47.094814>,  <31.494013, 33.189632, 46.987091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.681778, 33.293266, 47.094814>,  <31.994720, 33.465988, 47.274353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681778, 33.293266, 47.094814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435700, -0.135532, 0.889830,
		-0.445069, 0.891725, -0.082105,
		-0.782355, -0.431809, -0.448845,
		31.447071, 33.163723, 46.960159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345335, 33.730499, 47.563053>,  <31.994720, 33.465988, 47.274353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345335, 33.730499, 47.563053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.196356, 33.402054, 47.390053>,  <31.106968, 33.204987, 47.286251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.196356, 33.402054, 47.390053>,  <31.345335, 33.730499, 47.563053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196356, 33.402054, 47.390053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429669, -0.260509, 0.864592,
		-0.822597, 0.507849, -0.255780,
		-0.372450, -0.821112, -0.432501,
		31.084621, 33.155720, 47.260303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637482, 33.814228, 47.659500>,  <31.345335, 33.730499, 47.563053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637482, 33.814228, 47.659500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.737314, 33.430565, 47.606255>,  <30.797215, 33.200367, 47.574306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.737314, 33.430565, 47.606255>,  <30.637482, 33.814228, 47.659500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737314, 33.430565, 47.606255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259505, -0.198684, 0.945083,
		-0.932935, -0.201331, -0.298495,
		0.249581, -0.959162, -0.133113,
		30.812189, 33.142815, 47.566322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959265, 33.494949, 47.803482>,  <30.637482, 33.814228, 47.659500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959265, 33.494949, 47.803482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.224401, 33.198277, 47.844570>,  <30.383484, 33.020275, 47.869221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.224401, 33.198277, 47.844570>,  <29.959265, 33.494949, 47.803482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224401, 33.198277, 47.844570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424115, -0.258846, 0.867828,
		-0.617063, -0.618796, -0.486132,
		0.662842, -0.741681, 0.102717,
		30.423254, 32.975773, 47.875385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590591, 32.974403, 48.038502>,  <29.959265, 33.494949, 47.803482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590591, 32.974403, 48.038502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.954649, 32.840103, 48.135586>,  <30.173084, 32.759525, 48.193836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.954649, 32.840103, 48.135586>,  <29.590591, 32.974403, 48.038502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954649, 32.840103, 48.135586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354761, -0.329057, 0.875138,
		-0.213957, -0.882608, -0.418600,
		0.910147, -0.335745, 0.242710,
		30.227694, 32.739380, 48.208397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465410, 32.334244, 48.360367>,  <29.590591, 32.974403, 48.038502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465410, 32.334244, 48.360367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.819258, 32.466648, 48.491749>,  <30.031567, 32.546089, 48.570580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.819258, 32.466648, 48.491749>,  <29.465410, 32.334244, 48.360367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819258, 32.466648, 48.491749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274769, -0.199092, 0.940672,
		0.376762, -0.922386, -0.085170,
		0.884620, 0.331007, 0.328454,
		30.084644, 32.565948, 48.590286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392786, 32.194611, 49.012199>,  <29.465410, 32.334244, 48.360367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392786, 32.194611, 49.012199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.772474, 32.318436, 49.034657>,  <30.000286, 32.392731, 49.048130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.772474, 32.318436, 49.034657>,  <29.392786, 32.194611, 49.012199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772474, 32.318436, 49.034657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043711, -0.046946, 0.997941,
		0.311563, -0.949719, -0.031030,
		0.949220, 0.309565, 0.056140,
		30.057240, 32.411304, 49.051498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908054, 31.774767, 49.428761>,  <29.392786, 32.194611, 49.012199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908054, 31.774767, 49.428761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.038170, 32.152969, 49.434464>,  <30.116240, 32.379890, 49.437885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.038170, 32.152969, 49.434464>,  <29.908054, 31.774767, 49.428761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038170, 32.152969, 49.434464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215257, -0.088722, 0.972519,
		0.920789, -0.313280, -0.232387,
		0.325288, 0.945507, 0.014259,
		30.135756, 32.436623, 49.438740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545162, 31.780100, 49.866272>,  <29.908054, 31.774767, 49.428761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545162, 31.780100, 49.866272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.385090, 32.146671, 49.864708>,  <30.289047, 32.366615, 49.863770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.385090, 32.146671, 49.864708>,  <30.545162, 31.780100, 49.866272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385090, 32.146671, 49.864708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204850, 0.093605, 0.974307,
		0.893248, 0.389098, -0.225189,
		-0.400179, 0.916429, -0.003906,
		30.265036, 32.421600, 49.863537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067255, 32.155003, 50.235233>,  <30.545162, 31.780100, 49.866272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067255, 32.155003, 50.235233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.721704, 32.355453, 50.255592>,  <30.514374, 32.475723, 50.267807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.721704, 32.355453, 50.255592>,  <31.067255, 32.155003, 50.235233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721704, 32.355453, 50.255592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232437, 0.306958, 0.922903,
		0.446868, 0.809104, -0.381654,
		-0.863876, 0.501126, 0.050896,
		30.462542, 32.505791, 50.270863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261990, 32.844475, 50.420460>,  <31.067255, 32.155003, 50.235233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261990, 32.844475, 50.420460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874975, 32.789536, 50.505325>,  <30.642767, 32.756573, 50.556244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874975, 32.789536, 50.505325>,  <31.261990, 32.844475, 50.420460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874975, 32.789536, 50.505325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180322, 0.213041, 0.960259,
		-0.177089, 0.967341, -0.181357,
		-0.967535, -0.137349, 0.212160,
		30.584715, 32.748329, 50.568974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162529, 33.423168, 50.901562>,  <31.261990, 32.844475, 50.420460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162529, 33.423168, 50.901562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.858963, 33.171452, 50.968540>,  <30.676823, 33.020420, 51.008728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.858963, 33.171452, 50.968540>,  <31.162529, 33.423168, 50.901562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858963, 33.171452, 50.968540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009597, 0.246297, 0.969147,
		-0.651117, 0.737109, -0.180879,
		-0.758916, -0.629292, 0.167442,
		30.631289, 32.982662, 51.018772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946722, 33.734901, 51.460705>,  <31.162529, 33.423168, 50.901562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946722, 33.734901, 51.460705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.768192, 33.376984, 51.465332>,  <30.661074, 33.162231, 51.468109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.768192, 33.376984, 51.465332>,  <30.946722, 33.734901, 51.460705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768192, 33.376984, 51.465332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000492, 0.013178, 0.999913,
		-0.894870, 0.446282, -0.006322,
		-0.446327, -0.894795, 0.011573,
		30.634295, 33.108543, 51.468803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303598, 33.810661, 51.799007>,  <30.946722, 33.734901, 51.460705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303598, 33.810661, 51.799007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.404678, 33.424244, 51.820549>,  <30.465326, 33.192394, 51.833473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.404678, 33.424244, 51.820549>,  <30.303598, 33.810661, 51.799007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404678, 33.424244, 51.820549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100491, 0.081566, 0.991589,
		-0.962312, -0.245161, 0.117691,
		0.252699, -0.966045, 0.053856,
		30.480488, 33.134430, 51.836704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292658, 34.614189, 51.507427>,  <30.303598, 33.810661, 51.799007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292658, 34.614189, 51.507427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.009525, 34.896221, 51.490295>,  <29.839645, 35.065441, 51.480015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.009525, 34.896221, 51.490295>,  <30.292658, 34.614189, 51.507427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009525, 34.896221, 51.490295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127705, -0.187370, -0.973953,
		-0.694744, -0.683922, 0.222669,
		-0.707829, 0.705084, -0.042834,
		29.797176, 35.107746, 51.477444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602482, 34.312008, 51.184071>,  <30.292658, 34.614189, 51.507427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602482, 34.312008, 51.184071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.584789, 34.710449, 51.153564>,  <29.574173, 34.949516, 51.135262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.584789, 34.710449, 51.153564>,  <29.602482, 34.312008, 51.184071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584789, 34.710449, 51.153564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153272, -0.082201, -0.984759,
		-0.987194, -0.031868, 0.156311,
		-0.044231, 0.996106, -0.076264,
		29.571520, 35.009281, 51.130684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001959, 34.406788, 50.798233>,  <29.602482, 34.312008, 51.184071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001959, 34.406788, 50.798233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.215830, 34.741131, 50.748482>,  <29.344152, 34.941734, 50.718632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.215830, 34.741131, 50.748482>,  <29.001959, 34.406788, 50.798233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215830, 34.741131, 50.748482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230803, 0.002859, -0.972996,
		-0.812927, 0.548945, 0.194446,
		0.534677, 0.835854, -0.124374,
		29.376232, 34.991886, 50.711170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549219, 34.826759, 50.505230>,  <29.001959, 34.406788, 50.798233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549219, 34.826759, 50.505230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.890236, 35.016666, 50.417809>,  <29.094847, 35.130611, 50.365356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.890236, 35.016666, 50.417809>,  <28.549219, 34.826759, 50.505230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890236, 35.016666, 50.417809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257027, 0.016742, -0.966259,
		-0.455090, 0.879952, 0.136301,
		0.852544, 0.474768, -0.218552,
		29.146000, 35.159096, 50.352242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326502, 35.450119, 50.065926>,  <28.549219, 34.826759, 50.505230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326502, 35.450119, 50.065926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.711498, 35.443047, 49.957634>,  <28.942497, 35.438805, 49.892658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.711498, 35.443047, 49.957634>,  <28.326502, 35.450119, 50.065926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711498, 35.443047, 49.957634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269666, 0.047237, -0.961795,
		0.029790, 0.998727, 0.040699,
		0.962493, -0.017677, -0.270730,
		29.000246, 35.437744, 49.876415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394138, 35.961658, 49.644588>,  <28.326502, 35.450119, 50.065926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394138, 35.961658, 49.644588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.723940, 35.743126, 49.585644>,  <28.921820, 35.612007, 49.550278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.723940, 35.743126, 49.585644>,  <28.394138, 35.961658, 49.644588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723940, 35.743126, 49.585644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086946, 0.135015, -0.987021,
		0.559139, 0.826614, 0.063819,
		0.824502, -0.546334, -0.147364,
		28.971291, 35.579227, 49.541435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916063, 36.257648, 49.286751>,  <28.394138, 35.961658, 49.644588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916063, 36.257648, 49.286751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.984859, 35.868885, 49.222492>,  <29.026136, 35.635628, 49.183937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.984859, 35.868885, 49.222492>,  <28.916063, 36.257648, 49.286751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984859, 35.868885, 49.222492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012321, 0.165188, -0.986185,
		0.985022, 0.167633, 0.040385,
		0.171989, -0.971911, -0.160648,
		29.036455, 35.577312, 49.174297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460712, 36.769970, 49.495525>,  <28.916063, 36.257648, 49.286751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460712, 36.769970, 49.495525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.444710, 37.169506, 49.506287>,  <29.435108, 37.409225, 49.512741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.444710, 37.169506, 49.506287>,  <29.460712, 36.769970, 49.495525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444710, 37.169506, 49.506287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159593, -0.032963, 0.986632,
		0.986372, 0.035179, 0.160727,
		-0.040007, 0.998837, 0.026900,
		29.432707, 37.469158, 49.514355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824520, 36.982708, 50.106373>,  <29.460712, 36.769970, 49.495525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824520, 36.982708, 50.106373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.596968, 37.299809, 50.018814>,  <29.460436, 37.490070, 49.966278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.596968, 37.299809, 50.018814>,  <29.824520, 36.982708, 50.106373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596968, 37.299809, 50.018814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073499, 0.216087, 0.973604,
		0.819129, 0.569954, -0.064661,
		-0.568882, 0.792754, -0.218894,
		29.426304, 37.537636, 49.953144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014820, 37.453415, 50.566605>,  <29.824520, 36.982708, 50.106373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014820, 37.453415, 50.566605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650545, 37.572216, 50.451756>,  <29.431980, 37.643497, 50.382847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650545, 37.572216, 50.451756>,  <30.014820, 37.453415, 50.566605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650545, 37.572216, 50.451756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211102, 0.262858, 0.941457,
		0.355085, 0.917985, -0.176684,
		-0.910687, 0.296999, -0.287126,
		29.377338, 37.661316, 50.365616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949057, 38.056610, 50.894909>,  <30.014820, 37.453415, 50.566605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949057, 38.056610, 50.894909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.574015, 37.956490, 50.798370>,  <29.348989, 37.896416, 50.740448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.574015, 37.956490, 50.798370>,  <29.949057, 38.056610, 50.894909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574015, 37.956490, 50.798370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314523, 0.314591, 0.895604,
		-0.148244, 0.915632, -0.373687,
		-0.937603, -0.250301, -0.241351,
		29.292734, 37.881401, 50.725964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527222, 38.664406, 51.059299>,  <29.949057, 38.056610, 50.894909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527222, 38.664406, 51.059299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.271839, 38.356560, 51.056137>,  <29.118608, 38.171852, 51.054237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.271839, 38.356560, 51.056137>,  <29.527222, 38.664406, 51.059299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271839, 38.356560, 51.056137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371093, 0.298817, 0.879204,
		-0.674287, 0.564269, -0.476381,
		-0.638458, -0.769617, -0.007908,
		29.080301, 38.125675, 51.053764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897604, 38.965878, 51.243484>,  <29.527222, 38.664406, 51.059299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897604, 38.965878, 51.243484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.801634, 38.579948, 51.286480>,  <28.744051, 38.348392, 51.312279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.801634, 38.579948, 51.286480>,  <28.897604, 38.965878, 51.243484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801634, 38.579948, 51.286480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549489, 0.226250, 0.804284,
		-0.800311, 0.133903, -0.584442,
		-0.239926, -0.964822, 0.107492,
		28.729656, 38.290501, 51.318729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110771, 38.870022, 51.208389>,  <28.897604, 38.965878, 51.243484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110771, 38.870022, 51.208389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.295324, 38.592113, 51.429089>,  <28.406057, 38.425369, 51.561508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.295324, 38.592113, 51.429089>,  <28.110771, 38.870022, 51.208389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295324, 38.592113, 51.429089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547410, 0.266471, 0.793306,
		-0.698188, -0.668050, -0.257377,
		0.461385, -0.694767, 0.551744,
		28.433741, 38.383682, 51.594612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590553, 38.527802, 51.611324>,  <28.110771, 38.870022, 51.208389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590553, 38.527802, 51.611324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.936220, 38.460621, 51.801064>,  <28.143620, 38.420311, 51.914909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.936220, 38.460621, 51.801064>,  <27.590553, 38.527802, 51.611324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936220, 38.460621, 51.801064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435840, 0.221350, 0.872380,
		-0.251516, -0.960623, 0.118082,
		0.864166, -0.167953, 0.474351,
		28.195471, 38.410236, 51.943367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334076, 38.300983, 52.200947>,  <27.590553, 38.527802, 51.611324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334076, 38.300983, 52.200947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.711674, 38.416553, 52.264687>,  <27.938232, 38.485897, 52.302929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.711674, 38.416553, 52.264687>,  <27.334076, 38.300983, 52.200947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711674, 38.416553, 52.264687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263419, 0.369091, 0.891281,
		0.198701, -0.883342, 0.424530,
		0.943996, 0.288928, 0.159350,
		27.994873, 38.503231, 52.312492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.001179, 38.634403, 37.472370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258465, 38.817581, 37.717831>,  <35.412838, 38.927486, 37.865105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258465, 38.817581, 37.717831>,  <35.001179, 38.634403, 37.472370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258465, 38.817581, 37.717831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547645, -0.284962, 0.786690,
		0.535127, -0.842070, 0.067500,
		0.643214, 0.457945, 0.613646,
		35.451427, 38.954964, 37.901924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207912, 38.207199, 38.007572>,  <35.001179, 38.634403, 37.472370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207912, 38.207199, 38.007572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259975, 38.574375, 38.157475>,  <35.291214, 38.794682, 38.247417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259975, 38.574375, 38.157475>,  <35.207912, 38.207199, 38.007572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259975, 38.574375, 38.157475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415063, -0.292813, 0.861384,
		0.900433, -0.267666, 0.342891,
		0.130161, 0.917941, 0.374757,
		35.299023, 38.849758, 38.269901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584545, 38.166382, 38.727333>,  <35.207912, 38.207199, 38.007572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584545, 38.166382, 38.727333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397308, 38.519497, 38.711433>,  <35.284966, 38.731365, 38.701893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397308, 38.519497, 38.711433>,  <35.584545, 38.166382, 38.727333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397308, 38.519497, 38.711433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287803, -0.109765, 0.951379,
		0.835501, 0.456771, 0.305448,
		-0.468090, 0.882787, -0.039751,
		35.256882, 38.784332, 38.699509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645126, 38.423237, 39.362144>,  <35.584545, 38.166382, 38.727333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645126, 38.423237, 39.362144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339680, 38.632339, 39.210556>,  <35.156414, 38.757801, 39.119602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339680, 38.632339, 39.210556>,  <35.645126, 38.423237, 39.362144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339680, 38.632339, 39.210556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522134, -0.154666, 0.838722,
		0.379833, 0.838334, 0.391054,
		-0.763612, 0.522756, -0.378976,
		35.110596, 38.789165, 39.096863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603687, 38.882431, 39.820538>,  <35.645126, 38.423237, 39.362144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603687, 38.882431, 39.820538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260921, 38.878925, 39.614388>,  <35.055260, 38.876823, 39.490696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260921, 38.878925, 39.614388>,  <35.603687, 38.882431, 39.820538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260921, 38.878925, 39.614388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513962, -0.061493, 0.855606,
		-0.039191, 0.998069, 0.048190,
		-0.856917, -0.008764, -0.515380,
		35.003845, 38.876297, 39.459774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206226, 39.457108, 40.111805>,  <35.603687, 38.882431, 39.820538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206226, 39.457108, 40.111805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937984, 39.230206, 39.920597>,  <34.777039, 39.094063, 39.805870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937984, 39.230206, 39.920597>,  <35.206226, 39.457108, 40.111805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937984, 39.230206, 39.920597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657095, 0.155199, 0.737658,
		-0.344253, 0.808785, -0.476819,
		-0.670609, -0.567256, -0.478021,
		34.736801, 39.060028, 39.777191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585480, 39.804920, 40.159771>,  <35.206226, 39.457108, 40.111805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585480, 39.804920, 40.159771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493908, 39.419209, 40.106461>,  <34.438965, 39.187782, 40.074474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493908, 39.419209, 40.106461>,  <34.585480, 39.804920, 40.159771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493908, 39.419209, 40.106461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654466, 0.051117, 0.754362,
		-0.720600, 0.259922, -0.642788,
		-0.228932, -0.964276, -0.133275,
		34.425228, 39.129925, 40.066479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844151, 39.723297, 40.207684>,  <34.585480, 39.804920, 40.159771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844151, 39.723297, 40.207684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962868, 39.347473, 40.275963>,  <34.034096, 39.121979, 40.316929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962868, 39.347473, 40.275963>,  <33.844151, 39.723297, 40.207684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962868, 39.347473, 40.275963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693049, -0.088956, 0.715381,
		-0.656961, -0.330618, -0.677564,
		0.296791, -0.939563, 0.170694,
		34.051907, 39.065605, 40.327171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379562, 39.547672, 40.732147>,  <33.844151, 39.723297, 40.207684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379562, 39.547672, 40.732147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592915, 39.209343, 40.728569>,  <33.720928, 39.006344, 40.726421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592915, 39.209343, 40.728569>,  <33.379562, 39.547672, 40.732147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592915, 39.209343, 40.728569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532409, -0.343918, 0.773474,
		-0.657300, -0.407796, -0.633766,
		0.533383, -0.845827, -0.008943,
		33.752930, 38.955593, 40.725887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871063, 38.993256, 40.597607>,  <33.379562, 39.547672, 40.732147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871063, 38.993256, 40.597607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203991, 38.877789, 40.786884>,  <33.403748, 38.808506, 40.900452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203991, 38.877789, 40.786884>,  <32.871063, 38.993256, 40.597607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203991, 38.877789, 40.786884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534754, -0.193476, 0.822560,
		-0.145887, -0.937680, -0.315395,
		0.832319, -0.288660, 0.473202,
		33.453686, 38.791187, 40.928844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664993, 38.357132, 40.795265>,  <32.871063, 38.993256, 40.597607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664993, 38.357132, 40.795265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985210, 38.443462, 41.018890>,  <33.177341, 38.495262, 41.153065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985210, 38.443462, 41.018890>,  <32.664993, 38.357132, 40.795265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985210, 38.443462, 41.018890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558538, -0.069375, 0.826573,
		0.217185, -0.973963, 0.065012,
		0.800541, 0.215831, 0.559063,
		33.225372, 38.508213, 41.186607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722458, 37.852600, 41.193047>,  <32.664993, 38.357132, 40.795265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722458, 37.852600, 41.193047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878448, 38.176132, 41.369099>,  <32.972042, 38.370251, 41.474728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878448, 38.176132, 41.369099>,  <32.722458, 37.852600, 41.193047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878448, 38.176132, 41.369099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570398, -0.163040, 0.805024,
		0.722886, -0.564988, 0.397774,
		0.389976, 0.808830, 0.440128,
		32.995441, 38.418781, 41.501137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454296, 37.260803, 41.176403>,  <32.722458, 37.852600, 41.193047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454296, 37.260803, 41.176403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179573, 37.001232, 41.045437>,  <32.014740, 36.845490, 40.966858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179573, 37.001232, 41.045437>,  <32.454296, 37.260803, 41.176403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179573, 37.001232, 41.045437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458665, -0.037492, -0.887818,
		0.563850, -0.759930, 0.323388,
		-0.686803, -0.648923, -0.327414,
		31.973532, 36.806557, 40.947212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854271, 36.776485, 40.875488>,  <32.454296, 37.260803, 41.176403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854271, 36.776485, 40.875488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502686, 36.712929, 40.695629>,  <32.291737, 36.674797, 40.587715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502686, 36.712929, 40.695629>,  <32.854271, 36.776485, 40.875488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502686, 36.712929, 40.695629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430748, 0.140106, -0.891531,
		0.204652, -0.977305, -0.054707,
		-0.878962, -0.158889, -0.449644,
		32.238998, 36.665260, 40.560738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947472, 36.228943, 40.385159>,  <32.854271, 36.776485, 40.875488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947472, 36.228943, 40.385159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633968, 36.445396, 40.263241>,  <32.445866, 36.575268, 40.190090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633968, 36.445396, 40.263241>,  <32.947472, 36.228943, 40.385159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633968, 36.445396, 40.263241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408233, 0.079029, -0.909451,
		-0.468047, -0.837215, -0.282848,
		-0.783759, 0.541134, -0.304790,
		32.398842, 36.607735, 40.171803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635029, 35.824406, 39.910084>,  <32.947472, 36.228943, 40.385159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635029, 35.824406, 39.910084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496792, 36.185551, 39.807785>,  <32.413849, 36.402237, 39.746407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496792, 36.185551, 39.807785>,  <32.635029, 35.824406, 39.910084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496792, 36.185551, 39.807785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362977, -0.122713, -0.923683,
		-0.865342, -0.412046, -0.285310,
		-0.345588, 0.902862, -0.255751,
		32.393116, 36.456409, 39.731060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116188, 35.751472, 39.349976>,  <32.635029, 35.824406, 39.910084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116188, 35.751472, 39.349976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220993, 36.133114, 39.291969>,  <32.283875, 36.362099, 39.257168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220993, 36.133114, 39.291969>,  <32.116188, 35.751472, 39.349976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220993, 36.133114, 39.291969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087822, -0.173211, -0.980961,
		-0.961061, 0.244286, -0.129174,
		0.262009, 0.954108, -0.145013,
		32.299595, 36.419346, 39.248466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823555, 35.929474, 38.700470>,  <32.116188, 35.751472, 39.349976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823555, 35.929474, 38.700470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107948, 36.199223, 38.780190>,  <32.278584, 36.361073, 38.828022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107948, 36.199223, 38.780190>,  <31.823555, 35.929474, 38.700470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107948, 36.199223, 38.780190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278818, -0.010164, -0.960290,
		-0.645570, 0.738319, -0.195255,
		0.710985, 0.674375, 0.199295,
		32.321243, 36.401535, 38.839977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724173, 36.447906, 38.256504>,  <31.823555, 35.929474, 38.700470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724173, 36.447906, 38.256504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102825, 36.503281, 38.372936>,  <32.330017, 36.536503, 38.442795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102825, 36.503281, 38.372936>,  <31.724173, 36.447906, 38.256504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102825, 36.503281, 38.372936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295851, -0.014798, -0.955119,
		-0.127912, 0.990261, -0.054964,
		0.946631, 0.138432, 0.291077,
		32.386814, 36.544811, 38.460258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037132, 36.996468, 37.894135>,  <31.724173, 36.447906, 38.256504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037132, 36.996468, 37.894135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347176, 36.794899, 38.046593>,  <32.533203, 36.673958, 38.138069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347176, 36.794899, 38.046593>,  <32.037132, 36.996468, 37.894135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347176, 36.794899, 38.046593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382805, -0.105373, -0.917800,
		0.502662, 0.857298, 0.111229,
		0.775107, -0.503922, 0.381145,
		32.579708, 36.643723, 38.160934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628277, 37.197262, 37.427170>,  <32.037132, 36.996468, 37.894135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628277, 37.197262, 37.427170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764099, 36.871159, 37.614811>,  <32.845592, 36.675495, 37.727394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764099, 36.871159, 37.614811>,  <32.628277, 37.197262, 37.427170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764099, 36.871159, 37.614811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432651, -0.307464, -0.847514,
		0.835174, 0.490735, 0.248321,
		0.339554, -0.815258, 0.469103,
		32.865967, 36.626583, 37.755543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389118, 37.099823, 37.157574>,  <32.628277, 37.197262, 37.427170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389118, 37.099823, 37.157574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300953, 36.749969, 37.330284>,  <33.248055, 36.540058, 37.433910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300953, 36.749969, 37.330284>,  <33.389118, 37.099823, 37.157574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300953, 36.749969, 37.330284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653495, -0.461043, -0.600320,
		0.724129, 0.149849, 0.673188,
		-0.220411, -0.874634, 0.431780,
		33.234829, 36.487579, 37.459820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039204, 36.780331, 37.345009>,  <33.389118, 37.099823, 37.157574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039204, 36.780331, 37.345009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762321, 36.492935, 37.317783>,  <33.596191, 36.320499, 37.301449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762321, 36.492935, 37.317783>,  <34.039204, 36.780331, 37.345009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762321, 36.492935, 37.317783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534684, -0.447197, -0.717027,
		0.484735, -0.532723, 0.693714,
		-0.692204, -0.718486, -0.068066,
		33.554661, 36.277390, 37.297363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409161, 36.074570, 37.245441>,  <34.039204, 36.780331, 37.345009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409161, 36.074570, 37.245441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036629, 36.035927, 37.104992>,  <33.813110, 36.012741, 37.020721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036629, 36.035927, 37.104992>,  <34.409161, 36.074570, 37.245441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036629, 36.035927, 37.104992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363623, -0.299756, -0.882000,
		-0.020042, -0.949112, 0.314302,
		-0.931331, -0.096610, -0.351127,
		33.757229, 36.006943, 36.999653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306282, 35.457569, 36.966240>,  <34.409161, 36.074570, 37.245441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306282, 35.457569, 36.966240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065121, 35.694534, 36.752491>,  <33.920425, 35.836712, 36.624241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065121, 35.694534, 36.752491>,  <34.306282, 35.457569, 36.966240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065121, 35.694534, 36.752491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496163, -0.246102, -0.832620,
		-0.624766, -0.767125, -0.145558,
		-0.602902, 0.592413, -0.534375,
		33.884251, 35.872257, 36.592178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821083, 35.013245, 36.986275>,  <34.306282, 35.457569, 36.966240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821083, 35.013245, 36.986275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075844, 35.224060, 37.211334>,  <35.228703, 35.350552, 37.346371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075844, 35.224060, 37.211334>,  <34.821083, 35.013245, 36.986275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075844, 35.224060, 37.211334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339336, -0.463676, 0.818447,
		0.692245, -0.712201, -0.116472,
		0.636905, 0.527043, 0.562653,
		35.266914, 35.382172, 37.380131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400043, 34.572586, 37.227371>,  <34.821083, 35.013245, 36.986275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400043, 34.572586, 37.227371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268665, 34.868023, 37.462864>,  <35.189838, 35.045284, 37.604160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268665, 34.868023, 37.462864>,  <35.400043, 34.572586, 37.227371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268665, 34.868023, 37.462864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127290, -0.652240, 0.747248,
		0.935908, 0.170487, 0.308238,
		-0.328441, 0.738591, 0.588736,
		35.170132, 35.089600, 37.639484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839897, 34.073139, 37.131535>,  <35.400043, 34.572586, 37.227371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839897, 34.073139, 37.131535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487392, 34.260971, 37.110081>,  <34.275890, 34.373669, 37.097206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487392, 34.260971, 37.110081>,  <34.839897, 34.073139, 37.131535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487392, 34.260971, 37.110081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332504, -0.696632, -0.635724,
		-0.335887, -0.542404, 0.770051,
		-0.881261, 0.469577, -0.053638,
		34.223015, 34.401844, 37.093990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931171, 33.293571, 37.203213>,  <34.839897, 34.073139, 37.131535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931171, 33.293571, 37.203213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251629, 33.469952, 37.365067>,  <35.443905, 33.575779, 37.462177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251629, 33.469952, 37.365067>,  <34.931171, 33.293571, 37.203213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251629, 33.469952, 37.365067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386037, -0.135895, 0.912419,
		0.457316, -0.887186, 0.061350,
		0.801148, 0.440947, 0.404633,
		35.491974, 33.602234, 37.486458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023514, 32.918610, 37.758636>,  <34.931171, 33.293571, 37.203213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023514, 32.918610, 37.758636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230625, 33.250092, 37.843628>,  <35.354893, 33.448982, 37.894623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230625, 33.250092, 37.843628>,  <35.023514, 32.918610, 37.758636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230625, 33.250092, 37.843628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278612, -0.071480, 0.957740,
		0.808874, -0.555099, 0.193877,
		0.517782, 0.828707, 0.212475,
		35.385960, 33.498703, 37.907372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321568, 32.885769, 38.451645>,  <35.023514, 32.918610, 37.758636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321568, 32.885769, 38.451645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384567, 33.278805, 38.412220>,  <35.422367, 33.514626, 38.388565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384567, 33.278805, 38.412220>,  <35.321568, 32.885769, 38.451645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384567, 33.278805, 38.412220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257672, 0.137245, 0.956435,
		0.953309, -0.125242, 0.274801,
		0.157501, 0.982587, -0.098566,
		35.431816, 33.573582, 38.382648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742386, 33.150940, 39.060879>,  <35.321568, 32.885769, 38.451645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742386, 33.150940, 39.060879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558491, 33.471939, 38.908756>,  <35.448154, 33.664539, 38.817482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558491, 33.471939, 38.908756>,  <35.742386, 33.150940, 39.060879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558491, 33.471939, 38.908756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083901, 0.387086, 0.918219,
		0.884081, 0.454051, -0.110629,
		-0.459741, 0.802498, -0.380311,
		35.420570, 33.712688, 38.794662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015091, 33.699947, 39.373669>,  <35.742386, 33.150940, 39.060879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015091, 33.699947, 39.373669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660278, 33.833508, 39.246120>,  <35.447392, 33.913643, 39.169594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660278, 33.833508, 39.246120>,  <36.015091, 33.699947, 39.373669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660278, 33.833508, 39.246120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203877, 0.336380, 0.919392,
		0.414250, 0.880543, -0.230306,
		-0.887035, 0.333905, -0.318868,
		35.394169, 33.933678, 39.150459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947834, 34.411087, 39.760090>,  <36.015091, 33.699947, 39.373669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947834, 34.411087, 39.760090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588333, 34.310341, 39.616528>,  <35.372631, 34.249893, 39.530392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588333, 34.310341, 39.616528>,  <35.947834, 34.411087, 39.760090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588333, 34.310341, 39.616528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429887, 0.345107, 0.834325,
		-0.086274, 0.904139, -0.418437,
		-0.898751, -0.251861, -0.358904,
		35.318707, 34.234783, 39.508858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487057, 35.097031, 39.827217>,  <35.947834, 34.411087, 39.760090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487057, 35.097031, 39.827217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290848, 34.748489, 39.822643>,  <35.173122, 34.539364, 39.819897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290848, 34.748489, 39.822643>,  <35.487057, 35.097031, 39.827217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290848, 34.748489, 39.822643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516031, 0.279870, 0.809558,
		-0.702211, 0.403008, -0.586928,
		-0.490523, -0.871354, -0.011437,
		35.143692, 34.487083, 39.819214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841766, 35.338604, 39.962906>,  <35.487057, 35.097031, 39.827217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841766, 35.338604, 39.962906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858604, 34.950871, 40.059761>,  <34.868706, 34.718231, 40.117874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858604, 34.950871, 40.059761>,  <34.841766, 35.338604, 39.962906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858604, 34.950871, 40.059761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501069, 0.189188, 0.844475,
		-0.864383, -0.156874, -0.477737,
		0.042094, -0.969329, 0.242135,
		34.871231, 34.660072, 40.132401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123280, 35.114792, 40.063759>,  <34.841766, 35.338604, 39.962906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123280, 35.114792, 40.063759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346073, 34.865257, 40.283066>,  <34.479752, 34.715538, 40.414650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346073, 34.865257, 40.283066>,  <34.123280, 35.114792, 40.063759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346073, 34.865257, 40.283066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612673, 0.137053, 0.778363,
		-0.560713, -0.769443, -0.305872,
		0.556985, -0.623838, 0.548264,
		34.513168, 34.678104, 40.447544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490883, 34.799824, 40.541737>,  <34.123280, 35.114792, 40.063759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490883, 34.799824, 40.541737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830921, 34.657925, 40.697422>,  <34.034943, 34.572784, 40.790833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830921, 34.657925, 40.697422>,  <33.490883, 34.799824, 40.541737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830921, 34.657925, 40.697422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485140, -0.240008, 0.840854,
		-0.204869, -0.903635, -0.376129,
		0.850099, -0.354741, 0.389218,
		34.085949, 34.551498, 40.814186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366550, 34.081593, 40.910580>,  <33.490883, 34.799824, 40.541737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366550, 34.081593, 40.910580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712074, 34.230652, 41.046207>,  <33.919388, 34.320087, 41.127583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712074, 34.230652, 41.046207>,  <33.366550, 34.081593, 40.910580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712074, 34.230652, 41.046207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287150, -0.188837, 0.939088,
		0.413979, -0.908555, -0.056113,
		0.863810, 0.372650, 0.339066,
		33.971218, 34.342445, 41.147926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506256, 33.576969, 41.275299>,  <33.366550, 34.081593, 40.910580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506256, 33.576969, 41.275299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716267, 33.888279, 41.413071>,  <33.842274, 34.075066, 41.495735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716267, 33.888279, 41.413071>,  <33.506256, 33.576969, 41.275299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716267, 33.888279, 41.413071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285604, -0.220114, 0.932727,
		0.801733, -0.588079, 0.106713,
		0.525029, 0.778275, 0.344430,
		33.873775, 34.121761, 41.516399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994911, 33.323551, 41.712315>,  <33.506256, 33.576969, 41.275299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994911, 33.323551, 41.712315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970028, 33.704235, 41.832565>,  <33.955097, 33.932648, 41.904716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970028, 33.704235, 41.832565>,  <33.994911, 33.323551, 41.712315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970028, 33.704235, 41.832565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380161, -0.301095, 0.874540,
		0.922826, -0.059884, 0.380534,
		-0.062206, 0.951712, 0.300624,
		33.951366, 33.989750, 41.922752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234585, 33.386959, 42.440399>,  <33.994911, 33.323551, 41.712315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234585, 33.386959, 42.440399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005009, 33.710552, 42.389580>,  <33.867264, 33.904709, 42.359089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005009, 33.710552, 42.389580>,  <34.234585, 33.386959, 42.440399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005009, 33.710552, 42.389580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454083, -0.185294, 0.871479,
		0.681471, 0.557864, 0.473693,
		-0.573939, 0.808983, -0.127044,
		33.832829, 33.953247, 42.351467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128433, 33.555248, 43.103580>,  <34.234585, 33.386959, 42.440399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128433, 33.555248, 43.103580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855190, 33.788349, 42.927505>,  <33.691242, 33.928207, 42.821861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855190, 33.788349, 42.927505>,  <34.128433, 33.555248, 43.103580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855190, 33.788349, 42.927505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565919, -0.041398, 0.823421,
		0.461624, 0.811598, 0.358067,
		-0.683110, 0.582748, -0.440188,
		33.650257, 33.963173, 42.795448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052891, 34.160736, 43.493267>,  <34.128433, 33.555248, 43.103580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052891, 34.160736, 43.493267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716145, 34.152512, 43.277550>,  <33.514095, 34.147575, 43.148117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716145, 34.152512, 43.277550>,  <34.052891, 34.160736, 43.493267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716145, 34.152512, 43.277550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538607, 0.095259, 0.837155,
		0.034157, 0.995240, -0.091272,
		-0.841864, -0.020565, -0.539297,
		33.463585, 34.146343, 43.115761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635582, 34.599079, 43.798153>,  <34.052891, 34.160736, 43.493267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635582, 34.599079, 43.798153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365200, 34.412449, 43.569977>,  <33.202972, 34.300472, 43.433071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365200, 34.412449, 43.569977>,  <33.635582, 34.599079, 43.798153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365200, 34.412449, 43.569977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595062, -0.111056, 0.795970,
		-0.434729, 0.877482, -0.202572,
		-0.675952, -0.466574, -0.570436,
		33.162415, 34.272476, 43.398846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951405, 34.907021, 43.862125>,  <33.635582, 34.599079, 43.798153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951405, 34.907021, 43.862125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886097, 34.523773, 43.768013>,  <32.846912, 34.293827, 43.711544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886097, 34.523773, 43.768013>,  <32.951405, 34.907021, 43.862125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886097, 34.523773, 43.768013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665535, -0.069086, 0.743163,
		-0.728290, 0.277924, -0.626380,
		-0.163269, -0.958116, -0.235283,
		32.837116, 34.236340, 43.697430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202026, 34.840332, 43.940155>,  <32.951405, 34.907021, 43.862125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202026, 34.840332, 43.940155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356155, 34.471222, 43.941250>,  <32.448631, 34.249756, 43.941906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356155, 34.471222, 43.941250>,  <32.202026, 34.840332, 43.940155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356155, 34.471222, 43.941250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519262, -0.214373, 0.827292,
		-0.762819, -0.320197, -0.561766,
		0.385324, -0.922777, 0.002738,
		32.471752, 34.194389, 43.942070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573883, 34.429863, 43.991657>,  <32.202026, 34.840332, 43.940155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573883, 34.429863, 43.991657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877708, 34.201839, 44.116936>,  <32.060005, 34.065025, 44.192104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877708, 34.201839, 44.116936>,  <31.573883, 34.429863, 43.991657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877708, 34.201839, 44.116936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494007, -0.192372, 0.847909,
		-0.423110, -0.798763, -0.427733,
		0.759562, -0.570062, 0.313199,
		32.105576, 34.030819, 44.210896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216288, 33.902298, 44.205265>,  <31.573883, 34.429863, 43.991657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216288, 33.902298, 44.205265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574673, 33.851257, 44.375427>,  <31.789703, 33.820633, 44.477524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574673, 33.851257, 44.375427>,  <31.216288, 33.902298, 44.205265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574673, 33.851257, 44.375427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437658, -0.416609, 0.796801,
		0.075557, -0.900086, -0.429111,
		0.895961, -0.127600, 0.425407,
		31.843462, 33.812977, 44.503048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176926, 33.190548, 44.432076>,  <31.216288, 33.902298, 44.205265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176926, 33.190548, 44.432076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460632, 33.361362, 44.656425>,  <31.630857, 33.463852, 44.791035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460632, 33.361362, 44.656425>,  <31.176926, 33.190548, 44.432076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460632, 33.361362, 44.656425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398190, -0.413853, 0.818639,
		0.581707, -0.803970, -0.123492,
		0.709269, 0.427035, 0.560874,
		31.673412, 33.489471, 44.824688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362717, 32.625984, 45.038589>,  <31.176926, 33.190548, 44.432076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362717, 32.625984, 45.038589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513908, 32.977894, 45.153915>,  <31.604624, 33.189041, 45.223110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513908, 32.977894, 45.153915>,  <31.362717, 32.625984, 45.038589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513908, 32.977894, 45.153915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188783, -0.231630, 0.954311,
		0.906363, -0.415136, 0.078535,
		0.377978, 0.879778, 0.288312,
		31.627302, 33.241829, 45.240410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967014, 32.518276, 45.572723>,  <31.362717, 32.625984, 45.038589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967014, 32.518276, 45.572723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781721, 32.870354, 45.614059>,  <31.670546, 33.081600, 45.638859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781721, 32.870354, 45.614059>,  <31.967014, 32.518276, 45.572723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781721, 32.870354, 45.614059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110457, -0.173033, 0.978702,
		0.879325, 0.441955, 0.177378,
		-0.463235, 0.880190, 0.103335,
		31.642750, 33.134411, 45.645061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033035, 32.604374, 46.233177>,  <31.967014, 32.518276, 45.572723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033035, 32.604374, 46.233177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805429, 32.929333, 46.182217>,  <31.668867, 33.124310, 46.151638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805429, 32.929333, 46.182217>,  <32.033035, 32.604374, 46.233177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805429, 32.929333, 46.182217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049621, 0.188570, 0.980805,
		0.820830, 0.551769, -0.147611,
		-0.569013, 0.812399, -0.127405,
		31.634726, 33.173054, 46.143993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294201, 33.150288, 46.677246>,  <32.033035, 32.604374, 46.233177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294201, 33.150288, 46.677246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903482, 33.183773, 46.598400>,  <31.669050, 33.203865, 46.551094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903482, 33.183773, 46.598400>,  <32.294201, 33.150288, 46.677246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903482, 33.183773, 46.598400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192027, 0.065100, 0.979228,
		0.094807, 0.994361, -0.047514,
		-0.976799, 0.083713, -0.197116,
		31.610443, 33.208885, 46.539265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829895, 33.670475, 46.516422>,  <32.294201, 33.150288, 46.677246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829895, 33.670475, 46.516422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163651, 33.669888, 46.736889>,  <33.363903, 33.669537, 46.869167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163651, 33.669888, 46.736889>,  <32.829895, 33.670475, 46.516422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163651, 33.669888, 46.736889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541929, -0.180168, -0.820885,
		0.100507, 0.983635, -0.149537,
		0.834393, -0.001466, 0.551168,
		33.413967, 33.669449, 46.902241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296581, 34.331696, 46.357830>,  <32.829895, 33.670475, 46.516422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296581, 34.331696, 46.357830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538429, 34.057274, 46.519695>,  <33.683540, 33.892620, 46.616814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538429, 34.057274, 46.519695>,  <33.296581, 34.331696, 46.357830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538429, 34.057274, 46.519695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710407, 0.234724, -0.663496,
		0.360211, 0.688644, 0.629300,
		0.604624, -0.686057, 0.404667,
		33.719818, 33.851456, 46.641094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910480, 34.688843, 46.521015>,  <33.296581, 34.331696, 46.357830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910480, 34.688843, 46.521015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000969, 34.301903, 46.475307>,  <34.055260, 34.069740, 46.447884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000969, 34.301903, 46.475307>,  <33.910480, 34.688843, 46.521015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000969, 34.301903, 46.475307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772614, 0.249636, -0.583737,
		0.593205, 0.043764, 0.803861,
		0.226219, -0.967350, -0.114273,
		34.068836, 34.011696, 46.441025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601475, 34.700424, 46.422314>,  <33.910480, 34.688843, 46.521015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601475, 34.700424, 46.422314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514114, 34.325310, 46.314346>,  <34.461697, 34.100239, 46.249565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514114, 34.325310, 46.314346>,  <34.601475, 34.700424, 46.422314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514114, 34.325310, 46.314346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846848, -0.044689, -0.529954,
		0.484923, -0.344319, 0.803924,
		-0.218400, -0.937788, -0.269915,
		34.448593, 34.043972, 46.233372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289742, 34.430187, 46.390923>,  <34.601475, 34.700424, 46.422314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289742, 34.430187, 46.390923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045155, 34.195107, 46.178989>,  <34.898403, 34.054058, 46.051830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045155, 34.195107, 46.178989>,  <35.289742, 34.430187, 46.390923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045155, 34.195107, 46.178989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718421, -0.131699, -0.683028,
		0.331635, -0.798290, 0.502744,
		-0.611465, -0.587698, -0.529832,
		34.861713, 34.018799, 46.020039>
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
