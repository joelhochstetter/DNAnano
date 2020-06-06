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
	<24.213501, 34.918377, 34.669075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270948, 34.926121, 35.064854>,  <24.305416, 34.930767, 35.302319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270948, 34.926121, 35.064854>,  <24.213501, 34.918377, 34.669075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270948, 34.926121, 35.064854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974288, 0.172618, -0.144795,
		-0.173598, 0.984799, 0.005933,
		0.143618, 0.019356, 0.989444,
		24.314034, 34.931927, 35.361687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672821, 35.459335, 34.792667>,  <24.213501, 34.918377, 34.669075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672821, 35.459335, 34.792667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694262, 35.174747, 35.072933>,  <24.707127, 35.003994, 35.241093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694262, 35.174747, 35.072933>,  <24.672821, 35.459335, 34.792667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.694262, 35.174747, 35.072933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993366, 0.109486, 0.035179,
		-0.101742, 0.694132, 0.712622,
		0.053603, -0.711473, 0.700666,
		24.710342, 34.961304, 35.283134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992382, 35.740768, 35.400059>,  <24.672821, 35.459335, 34.792667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992382, 35.740768, 35.400059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030785, 35.360558, 35.281887>,  <25.053825, 35.132431, 35.210983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030785, 35.360558, 35.281887>,  <24.992382, 35.740768, 35.400059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030785, 35.360558, 35.281887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967864, 0.158448, -0.195276,
		0.232425, -0.267186, 0.935195,
		0.096004, -0.950529, -0.295427,
		25.059586, 35.075397, 35.193260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421516, 35.429096, 35.864258>,  <24.992382, 35.740768, 35.400059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421516, 35.429096, 35.864258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463106, 35.324337, 35.480465>,  <25.488060, 35.261482, 35.250191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463106, 35.324337, 35.480465>,  <25.421516, 35.429096, 35.864258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463106, 35.324337, 35.480465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948825, 0.315357, 0.016739,
		0.298195, -0.912119, 0.281282,
		0.103972, -0.261896, -0.959479,
		25.494297, 35.245770, 35.192619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897209, 35.835861, 36.442249>,  <25.421516, 35.429096, 35.864258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897209, 35.835861, 36.442249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756521, 36.206898, 36.492626>,  <25.672108, 36.429520, 36.522850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756521, 36.206898, 36.492626>,  <25.897209, 35.835861, 36.442249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756521, 36.206898, 36.492626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670390, 0.343493, -0.657716,
		-0.653354, -0.146902, -0.742663,
		-0.351720, 0.927595, 0.125941,
		25.651005, 36.485176, 36.530407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890253, 36.162560, 35.851936>,  <25.897209, 35.835861, 36.442249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890253, 36.162560, 35.851936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845093, 36.505215, 36.053303>,  <25.817997, 36.710808, 36.174122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845093, 36.505215, 36.053303>,  <25.890253, 36.162560, 35.851936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845093, 36.505215, 36.053303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399158, 0.503080, -0.766540,
		-0.909904, 0.114400, -0.398731,
		-0.112901, 0.856634, 0.503419,
		25.811222, 36.762203, 36.204327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468153, 36.787964, 35.457962>,  <25.890253, 36.162560, 35.851936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468153, 36.787964, 35.457962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738724, 36.949169, 35.704548>,  <25.901066, 37.045891, 35.852501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738724, 36.949169, 35.704548>,  <25.468153, 36.787964, 35.457962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738724, 36.949169, 35.704548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432049, 0.460739, -0.775276,
		-0.596473, 0.790762, 0.137537,
		0.676427, 0.403009, 0.616466,
		25.941652, 37.070072, 35.889488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461819, 37.481697, 35.249859>,  <25.468153, 36.787964, 35.457962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461819, 37.481697, 35.249859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796890, 37.444580, 35.465149>,  <25.997932, 37.422310, 35.594322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796890, 37.444580, 35.465149>,  <25.461819, 37.481697, 35.249859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796890, 37.444580, 35.465149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503527, 0.512924, -0.695247,
		-0.211552, 0.853404, 0.476391,
		0.837679, -0.092795, 0.538222,
		26.048195, 37.416740, 35.626617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678564, 38.127743, 35.270573>,  <25.461819, 37.481697, 35.249859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678564, 38.127743, 35.270573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003313, 37.906631, 35.345730>,  <26.198162, 37.773964, 35.390823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003313, 37.906631, 35.345730>,  <25.678564, 38.127743, 35.270573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003313, 37.906631, 35.345730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542440, 0.595163, -0.592908,
		0.215920, 0.583284, 0.783044,
		0.811873, -0.552775, 0.187889,
		26.246876, 37.740799, 35.402096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289633, 38.622803, 35.591785>,  <25.678564, 38.127743, 35.270573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289633, 38.622803, 35.591785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486610, 38.296658, 35.470005>,  <26.604797, 38.100971, 35.396938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486610, 38.296658, 35.470005>,  <26.289633, 38.622803, 35.591785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486610, 38.296658, 35.470005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409594, 0.525753, -0.745531,
		0.767940, 0.242431, 0.592870,
		0.492443, -0.815360, -0.304448,
		26.634344, 38.052048, 35.378670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961412, 38.755184, 35.615894>,  <26.289633, 38.622803, 35.591785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961412, 38.755184, 35.615894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946676, 38.467621, 35.338242>,  <26.937834, 38.295082, 35.171650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946676, 38.467621, 35.338242>,  <26.961412, 38.755184, 35.615894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946676, 38.467621, 35.338242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669991, 0.497597, -0.550917,
		0.741455, -0.485357, 0.463328,
		-0.036841, -0.718906, -0.694131,
		26.935623, 38.251949, 35.130001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610300, 38.504181, 35.455616>,  <26.961412, 38.755184, 35.615894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610300, 38.504181, 35.455616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390665, 38.488045, 35.121700>,  <27.258884, 38.478363, 34.921349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390665, 38.488045, 35.121700>,  <27.610300, 38.504181, 35.455616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390665, 38.488045, 35.121700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753461, 0.408334, -0.515324,
		0.361660, -0.911941, -0.193819,
		-0.549088, -0.040337, -0.834791,
		27.225939, 38.475945, 34.871262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721107, 39.031773, 34.906918>,  <27.610300, 38.504181, 35.455616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721107, 39.031773, 34.906918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601210, 39.035370, 34.525326>,  <27.529272, 39.037529, 34.296371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601210, 39.035370, 34.525326>,  <27.721107, 39.031773, 34.906918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601210, 39.035370, 34.525326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573219, -0.801027, 0.172557,
		-0.762610, 0.598561, 0.245257,
		-0.299744, 0.008992, -0.953977,
		27.511286, 39.038067, 34.239132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997869, 39.054214, 34.630672>,  <27.721107, 39.031773, 34.906918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997869, 39.054214, 34.630672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235239, 38.823360, 34.406258>,  <27.377661, 38.684849, 34.271606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235239, 38.823360, 34.406258>,  <26.997869, 39.054214, 34.630672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235239, 38.823360, 34.406258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475881, -0.813734, 0.333728,
		-0.649142, 0.068945, -0.757536,
		0.593424, -0.577134, -0.561038,
		27.413265, 38.650219, 34.237946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517429, 38.582848, 34.218559>,  <26.997869, 39.054214, 34.630672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517429, 38.582848, 34.218559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883768, 38.453865, 34.314266>,  <27.103571, 38.376476, 34.371689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883768, 38.453865, 34.314266>,  <26.517429, 38.582848, 34.218559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883768, 38.453865, 34.314266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380128, -0.888234, 0.257959,
		0.129346, -0.327203, -0.936060,
		0.915845, -0.322457, 0.239268,
		27.158522, 38.357128, 34.386047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359131, 37.884209, 34.106892>,  <26.517429, 38.582848, 34.218559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359131, 37.884209, 34.106892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704826, 37.947796, 34.297813>,  <26.912245, 37.985947, 34.412365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704826, 37.947796, 34.297813>,  <26.359131, 37.884209, 34.106892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704826, 37.947796, 34.297813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197554, -0.765311, 0.612594,
		0.462668, -0.623721, -0.630008,
		0.864240, 0.158968, 0.477303,
		26.964098, 37.995487, 34.441006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761198, 37.221104, 34.294331>,  <26.359131, 37.884209, 34.106892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761198, 37.221104, 34.294331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832817, 37.508995, 34.562637>,  <26.875788, 37.681732, 34.723621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832817, 37.508995, 34.562637>,  <26.761198, 37.221104, 34.294331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832817, 37.508995, 34.562637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283530, -0.615111, 0.735696,
		0.942100, -0.321906, 0.093932,
		0.179047, 0.719732, 0.670767,
		26.886532, 37.724915, 34.763866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180641, 36.967411, 34.863064>,  <26.761198, 37.221104, 34.294331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180641, 36.967411, 34.863064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996531, 37.284378, 35.023174>,  <26.886065, 37.474556, 35.119240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996531, 37.284378, 35.023174>,  <27.180641, 36.967411, 34.863064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996531, 37.284378, 35.023174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203422, -0.533022, 0.821284,
		0.864156, 0.296591, 0.406532,
		-0.460276, 0.792415, 0.400281,
		26.858448, 37.522102, 35.143257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224831, 36.878574, 35.514183>,  <27.180641, 36.967411, 34.863064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224831, 36.878574, 35.514183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916182, 37.132065, 35.492332>,  <26.730991, 37.284161, 35.479221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916182, 37.132065, 35.492332>,  <27.224831, 36.878574, 35.514183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916182, 37.132065, 35.492332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356119, -0.359256, 0.862621,
		0.527044, 0.685071, 0.502894,
		-0.771624, 0.633729, -0.054623,
		26.684694, 37.322182, 35.475945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195742, 37.281506, 36.178757>,  <27.224831, 36.878574, 35.514183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195742, 37.281506, 36.178757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835443, 37.306461, 36.006817>,  <26.619265, 37.321434, 35.903652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835443, 37.306461, 36.006817>,  <27.195742, 37.281506, 36.178757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835443, 37.306461, 36.006817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423296, -0.347935, 0.836518,
		-0.097367, 0.935440, 0.339811,
		-0.900744, 0.062391, -0.429845,
		26.565220, 37.325180, 35.877865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765175, 37.570122, 36.688126>,  <27.195742, 37.281506, 36.178757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765175, 37.570122, 36.688126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511311, 37.375130, 36.448269>,  <26.358992, 37.258133, 36.304356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511311, 37.375130, 36.448269>,  <26.765175, 37.570122, 36.688126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511311, 37.375130, 36.448269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562900, -0.240025, 0.790906,
		-0.529478, 0.839495, -0.122067,
		-0.634663, -0.487479, -0.599640,
		26.320911, 37.228886, 36.268375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883593, 37.025417, 37.187214>,  <26.765175, 37.570122, 36.688126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883593, 37.025417, 37.187214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708868, 36.852833, 36.871483>,  <26.604034, 36.749283, 36.682045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708868, 36.852833, 36.871483>,  <26.883593, 37.025417, 37.187214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708868, 36.852833, 36.871483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519391, -0.837394, 0.170308,
		-0.734459, -0.335577, 0.589880,
		-0.436810, -0.431462, -0.789327,
		26.577826, 36.723392, 36.634686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366409, 36.422127, 37.243362>,  <26.883593, 37.025417, 37.187214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366409, 36.422127, 37.243362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629757, 36.466602, 36.945587>,  <26.787766, 36.493290, 36.766922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629757, 36.466602, 36.945587>,  <26.366409, 36.422127, 37.243362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629757, 36.466602, 36.945587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449053, -0.851762, 0.269912,
		-0.604073, -0.511993, -0.610703,
		0.658367, 0.111192, -0.744439,
		26.827267, 36.499958, 36.722256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498312, 35.767700, 37.017605>,  <26.366409, 36.422127, 37.243362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498312, 35.767700, 37.017605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802225, 35.959377, 36.841827>,  <26.984573, 36.074383, 36.736362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802225, 35.959377, 36.841827>,  <26.498312, 35.767700, 37.017605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802225, 35.959377, 36.841827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534941, -0.844881, 0.003600,
		-0.369549, -0.237810, -0.898265,
		0.759784, 0.479189, -0.439439,
		27.030161, 36.103134, 36.709995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826220, 35.547050, 36.244358>,  <26.498312, 35.767700, 37.017605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826220, 35.547050, 36.244358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109304, 35.711407, 36.474247>,  <27.279156, 35.810020, 36.612183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109304, 35.711407, 36.474247>,  <26.826220, 35.547050, 36.244358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109304, 35.711407, 36.474247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546882, -0.833619, -0.077448,
		0.447280, 0.369119, -0.814673,
		0.707714, 0.410889, 0.574726,
		27.321619, 35.834675, 36.646664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485647, 35.551090, 35.943169>,  <26.826220, 35.547050, 36.244358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485647, 35.551090, 35.943169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503294, 35.516747, 36.341301>,  <27.513882, 35.496140, 36.580181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503294, 35.516747, 36.341301>,  <27.485647, 35.551090, 35.943169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503294, 35.516747, 36.341301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501469, -0.859789, -0.096392,
		0.864050, 0.503380, 0.005121,
		0.044118, -0.085855, 0.995330,
		27.516529, 35.490990, 36.639900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174799, 35.267643, 36.157665>,  <27.485647, 35.551090, 35.943169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174799, 35.267643, 36.157665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878004, 35.198269, 36.416702>,  <27.699926, 35.156643, 36.572124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878004, 35.198269, 36.416702>,  <28.174799, 35.267643, 36.157665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878004, 35.198269, 36.416702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198582, -0.979466, -0.034794,
		0.640327, 0.102783, 0.761195,
		-0.741989, -0.173439, 0.647589,
		27.655407, 35.146236, 36.610977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764978, 35.450214, 35.793217>,  <28.174799, 35.267643, 36.157665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764978, 35.450214, 35.793217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442583, 35.684692, 35.826092>,  <28.249146, 35.825378, 35.845818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442583, 35.684692, 35.826092>,  <28.764978, 35.450214, 35.793217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442583, 35.684692, 35.826092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580417, 0.755406, 0.304101,
		0.116177, 0.292805, -0.949088,
		-0.805989, 0.586196, 0.082189,
		28.200787, 35.860550, 35.850750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753990, 36.122681, 35.369957>,  <28.764978, 35.450214, 35.793217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753990, 36.122681, 35.369957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577751, 36.130966, 35.728943>,  <28.472008, 36.135937, 35.944336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577751, 36.130966, 35.728943>,  <28.753990, 36.122681, 35.369957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577751, 36.130966, 35.728943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661783, 0.682996, 0.309129,
		-0.606562, 0.730129, -0.314635,
		-0.440598, 0.020714, 0.897465,
		28.445572, 36.137180, 35.998184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477427, 36.876541, 35.435162>,  <28.753990, 36.122681, 35.369957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477427, 36.876541, 35.435162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570200, 36.661991, 35.759754>,  <28.625864, 36.533260, 35.954510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570200, 36.661991, 35.759754>,  <28.477427, 36.876541, 35.435162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570200, 36.661991, 35.759754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637023, 0.714210, 0.290010,
		-0.735125, 0.449673, 0.507331,
		0.231931, -0.536375, 0.811486,
		28.639780, 36.501080, 36.003201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462471, 37.336590, 35.960396>,  <28.477427, 36.876541, 35.435162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462471, 37.336590, 35.960396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670813, 37.022442, 36.094208>,  <28.795818, 36.833954, 36.174496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670813, 37.022442, 36.094208>,  <28.462471, 37.336590, 35.960396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670813, 37.022442, 36.094208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660367, 0.619031, 0.425108,
		-0.540948, -0.000510, 0.841056,
		0.520856, -0.785367, 0.334527,
		28.827070, 36.786831, 36.194565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811420, 37.597523, 36.551350>,  <28.462471, 37.336590, 35.960396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811420, 37.597523, 36.551350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993221, 37.243912, 36.507660>,  <29.102303, 37.031746, 36.481445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993221, 37.243912, 36.507660>,  <28.811420, 37.597523, 36.551350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993221, 37.243912, 36.507660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783358, 0.338322, 0.521430,
		-0.424003, -0.322553, 0.846275,
		0.454502, -0.884024, -0.109225,
		29.129572, 36.978706, 36.474892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178520, 37.452389, 37.164959>,  <28.811420, 37.597523, 36.551350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178520, 37.452389, 37.164959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345087, 37.175838, 36.928795>,  <29.445026, 37.009907, 36.787094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345087, 37.175838, 36.928795>,  <29.178520, 37.452389, 37.164959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345087, 37.175838, 36.928795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905665, 0.258447, 0.336119,
		-0.079795, -0.674684, 0.733781,
		0.416418, -0.691381, -0.590414,
		29.470013, 36.968426, 36.751671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660694, 37.088615, 37.529335>,  <29.178520, 37.452389, 37.164959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660694, 37.088615, 37.529335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775640, 37.022919, 37.151882>,  <29.844608, 36.983501, 36.925411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775640, 37.022919, 37.151882>,  <29.660694, 37.088615, 37.529335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775640, 37.022919, 37.151882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856247, 0.485573, 0.176242,
		0.429257, -0.858630, 0.280166,
		0.287367, -0.164238, -0.943635,
		29.861851, 36.973648, 36.868793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398964, 36.861408, 37.442158>,  <29.660694, 37.088615, 37.529335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398964, 36.861408, 37.442158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294436, 37.086620, 37.128544>,  <30.231718, 37.221748, 36.940376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294436, 37.086620, 37.128544>,  <30.398964, 36.861408, 37.442158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294436, 37.086620, 37.128544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835936, 0.538130, 0.107827,
		0.482621, -0.627222, -0.611285,
		-0.261319, 0.563035, -0.784030,
		30.216040, 37.255531, 36.893333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069090, 36.750263, 37.880356>,  <30.398964, 36.861408, 37.442158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069090, 36.750263, 37.880356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286102, 36.762936, 37.544582>,  <31.416309, 36.770538, 37.343117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286102, 36.762936, 37.544582>,  <31.069090, 36.750263, 37.880356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286102, 36.762936, 37.544582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832225, 0.156221, -0.531975,
		0.114283, 0.987214, 0.111122,
		0.542532, 0.031683, -0.839437,
		31.448862, 36.772442, 37.292751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878410, 37.396622, 37.405693>,  <31.069090, 36.750263, 37.880356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878410, 37.396622, 37.405693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017178, 37.150833, 37.122265>,  <31.100437, 37.003361, 36.952209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017178, 37.150833, 37.122265>,  <30.878410, 37.396622, 37.405693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017178, 37.150833, 37.122265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882782, 0.041233, -0.467970,
		0.316773, 0.787857, -0.528143,
		0.346917, -0.614476, -0.708568,
		31.121252, 36.966492, 36.909695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705561, 37.670132, 36.673008>,  <30.878410, 37.396622, 37.405693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705561, 37.670132, 36.673008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749075, 37.272984, 36.653484>,  <30.775183, 37.034695, 36.641769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749075, 37.272984, 36.653484>,  <30.705561, 37.670132, 36.673008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749075, 37.272984, 36.653484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959157, -0.091940, -0.267514,
		0.261118, 0.075922, -0.962317,
		0.108785, -0.992866, -0.048814,
		30.781710, 36.975124, 36.638840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410055, 37.461681, 36.005466>,  <30.705561, 37.670132, 36.673008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410055, 37.461681, 36.005466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391628, 37.157772, 36.264889>,  <30.380571, 36.975426, 36.420544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391628, 37.157772, 36.264889>,  <30.410055, 37.461681, 36.005466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391628, 37.157772, 36.264889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977225, -0.100355, -0.186979,
		0.207147, -0.642398, -0.737845,
		-0.046068, -0.759772, 0.648555,
		30.377808, 36.929840, 36.459454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246975, 36.804554, 35.666874>,  <30.410055, 37.461681, 36.005466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246975, 36.804554, 35.666874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134514, 36.845856, 36.048512>,  <30.067038, 36.870636, 36.277493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134514, 36.845856, 36.048512>,  <30.246975, 36.804554, 35.666874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134514, 36.845856, 36.048512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928688, -0.279825, -0.243384,
		0.241849, -0.954483, 0.174561,
		-0.281152, 0.103250, 0.954092,
		30.050167, 36.876831, 36.334740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925806, 36.164574, 35.860348>,  <30.246975, 36.804554, 35.666874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925806, 36.164574, 35.860348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795244, 36.427250, 36.132294>,  <29.716908, 36.584858, 36.295460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795244, 36.427250, 36.132294>,  <29.925806, 36.164574, 35.860348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795244, 36.427250, 36.132294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941762, -0.287494, -0.174446,
		0.080900, -0.697210, 0.712288,
		-0.326404, 0.656693, 0.679864,
		29.697323, 36.624256, 36.336254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595848, 35.786476, 36.203190>,  <29.925806, 36.164574, 35.860348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595848, 35.786476, 36.203190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442490, 36.141010, 36.307056>,  <29.350475, 36.353729, 36.369377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442490, 36.141010, 36.307056>,  <29.595848, 35.786476, 36.203190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442490, 36.141010, 36.307056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922822, -0.379047, -0.068723,
		0.037514, -0.265972, 0.963250,
		-0.383395, 0.886331, 0.259665,
		29.327471, 36.406910, 36.384956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504414, 35.807537, 36.964085>,  <29.595848, 35.786476, 36.203190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504414, 35.807537, 36.964085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308884, 35.645138, 37.272945>,  <29.191565, 35.547699, 37.458260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308884, 35.645138, 37.272945>,  <29.504414, 35.807537, 36.964085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308884, 35.645138, 37.272945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758571, 0.634935, -0.146380,
		-0.430835, -0.657284, -0.618352,
		-0.488827, -0.405998, 0.772149,
		29.162235, 35.523338, 37.504589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905931, 36.237377, 37.458023>,  <29.504414, 35.807537, 36.964085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905931, 36.237377, 37.458023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969128, 36.313316, 37.070415>,  <30.007046, 36.358879, 36.837852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969128, 36.313316, 37.070415>,  <29.905931, 36.237377, 37.458023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969128, 36.313316, 37.070415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944745, 0.256383, 0.204264,
		0.287219, -0.947747, -0.138853,
		0.157992, 0.189849, -0.969018,
		30.016525, 36.370270, 36.779709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461950, 35.851318, 37.130322>,  <29.905931, 36.237377, 37.458023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461950, 35.851318, 37.130322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438393, 36.175751, 36.897541>,  <30.424257, 36.370411, 36.757874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438393, 36.175751, 36.897541>,  <30.461950, 35.851318, 37.130322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438393, 36.175751, 36.897541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963389, 0.198925, 0.179753,
		0.261560, -0.550063, -0.793106,
		-0.058894, 0.811085, -0.581956,
		30.420725, 36.419075, 36.722954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006330, 35.709423, 36.521374>,  <30.461950, 35.851318, 37.130322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006330, 35.709423, 36.521374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919615, 36.093945, 36.589367>,  <30.867586, 36.324657, 36.630165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919615, 36.093945, 36.589367>,  <31.006330, 35.709423, 36.521374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919615, 36.093945, 36.589367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953344, 0.171000, 0.248785,
		0.210091, 0.215988, -0.953525,
		-0.216788, 0.961305, 0.169985,
		30.854578, 36.382336, 36.640362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599642, 36.007969, 36.302887>,  <31.006330, 35.709423, 36.521374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599642, 36.007969, 36.302887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426514, 36.283356, 36.535671>,  <31.322636, 36.448589, 36.675343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426514, 36.283356, 36.535671>,  <31.599642, 36.007969, 36.302887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426514, 36.283356, 36.535671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900995, 0.309227, 0.304279,
		0.029530, 0.656040, -0.754148,
		-0.432823, 0.688470, 0.581957,
		31.296667, 36.489895, 36.710258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845114, 36.574200, 36.085197>,  <31.599642, 36.007969, 36.302887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845114, 36.574200, 36.085197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727718, 36.638538, 36.462132>,  <31.657282, 36.677139, 36.688293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727718, 36.638538, 36.462132>,  <31.845114, 36.574200, 36.085197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727718, 36.638538, 36.462132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874914, 0.442410, 0.196976,
		-0.385216, 0.882271, -0.270565,
		-0.293487, 0.160843, 0.942335,
		31.639671, 36.686790, 36.744831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177872, 37.194950, 36.324795>,  <31.845114, 36.574200, 36.085197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177872, 37.194950, 36.324795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501152, 37.094677, 36.537949>,  <32.695122, 37.034515, 36.665840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501152, 37.094677, 36.537949>,  <32.177872, 37.194950, 36.324795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501152, 37.094677, 36.537949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191962, 0.743316, 0.640806,
		-0.556739, -0.620196, 0.552629,
		0.808203, -0.250678, 0.532887,
		32.743614, 37.019474, 36.697815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998051, 37.338005, 37.038933>,  <32.177872, 37.194950, 36.324795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998051, 37.338005, 37.038933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396938, 37.330582, 37.067795>,  <32.636272, 37.326126, 37.085110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396938, 37.330582, 37.067795>,  <31.998051, 37.338005, 37.038933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396938, 37.330582, 37.067795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040218, 0.681108, 0.731078,
		-0.062715, -0.731948, 0.678468,
		0.997221, -0.018563, 0.072153,
		32.696106, 37.325012, 37.089439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288368, 37.164860, 37.752007>,  <31.998051, 37.338005, 37.038933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288368, 37.164860, 37.752007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572636, 37.377216, 37.567352>,  <32.743195, 37.504631, 37.456558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572636, 37.377216, 37.567352>,  <32.288368, 37.164860, 37.752007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572636, 37.377216, 37.567352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182969, 0.494122, 0.849921,
		0.679321, -0.688474, 0.254019,
		0.710665, 0.530892, -0.461637,
		32.785835, 37.536484, 37.428860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971985, 37.127171, 37.959023>,  <32.288368, 37.164860, 37.752007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971985, 37.127171, 37.959023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972092, 37.503395, 37.823174>,  <32.972157, 37.729130, 37.741665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972092, 37.503395, 37.823174>,  <32.971985, 37.127171, 37.959023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972092, 37.503395, 37.823174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189640, 0.333410, 0.923512,
		0.981854, -0.064649, -0.178280,
		0.000264, 0.940563, -0.339620,
		32.972172, 37.785564, 37.721287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647213, 37.472706, 38.135612>,  <32.971985, 37.127171, 37.959023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647213, 37.472706, 38.135612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381092, 37.762978, 38.065453>,  <33.221420, 37.937141, 38.023357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381092, 37.762978, 38.065453>,  <33.647213, 37.472706, 38.135612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381092, 37.762978, 38.065453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074185, 0.298036, 0.951667,
		0.742879, 0.620135, -0.252119,
		-0.665303, 0.725677, -0.175400,
		33.181499, 37.980682, 38.012833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945621, 38.032368, 38.311764>,  <33.647213, 37.472706, 38.135612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945621, 38.032368, 38.311764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549614, 38.044987, 38.366699>,  <33.312008, 38.052559, 38.399662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549614, 38.044987, 38.366699>,  <33.945621, 38.032368, 38.311764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549614, 38.044987, 38.366699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140451, 0.299979, 0.943550,
		-0.011432, 0.953424, -0.301416,
		-0.990022, 0.031548, 0.137338,
		33.252609, 38.054451, 38.407902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970497, 38.483955, 38.819412>,  <33.945621, 38.032368, 38.311764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970497, 38.483955, 38.819412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579346, 38.468204, 38.737244>,  <33.344654, 38.458755, 38.687943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579346, 38.468204, 38.737244>,  <33.970497, 38.483955, 38.819412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579346, 38.468204, 38.737244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146707, 0.829146, 0.539438,
		0.149086, 0.557643, -0.816583,
		-0.977881, -0.039376, -0.205424,
		33.285980, 38.456390, 38.675617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047451, 39.268845, 39.034653>,  <33.970497, 38.483955, 38.819412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047451, 39.268845, 39.034653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270073, 38.968769, 39.177460>,  <34.403645, 38.788723, 39.263145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270073, 38.968769, 39.177460>,  <34.047451, 39.268845, 39.034653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270073, 38.968769, 39.177460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789285, -0.611586, -0.054702,
		0.259384, -0.251344, -0.932495,
		0.556552, -0.750193, 0.357017,
		34.437038, 38.743710, 39.284565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093567, 38.972351, 39.751980>,  <34.047451, 39.268845, 39.034653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093567, 38.972351, 39.751980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696625, 39.021664, 39.754211>,  <33.458458, 39.051250, 39.755550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696625, 39.021664, 39.754211>,  <34.093567, 38.972351, 39.751980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696625, 39.021664, 39.754211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061345, -0.453590, -0.889097,
		-0.107080, -0.882643, 0.457685,
		-0.992356, 0.123281, 0.005575,
		33.398918, 39.058647, 39.755882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832890, 38.374294, 39.551163>,  <34.093567, 38.972351, 39.751980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832890, 38.374294, 39.551163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590336, 38.670166, 39.434429>,  <33.444801, 38.847691, 39.364391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590336, 38.670166, 39.434429>,  <33.832890, 38.374294, 39.551163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590336, 38.670166, 39.434429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055578, -0.405531, -0.912390,
		-0.793225, -0.537041, 0.287019,
		-0.606386, 0.739683, -0.291830,
		33.408421, 38.892071, 39.346882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176888, 38.097836, 39.223648>,  <33.832890, 38.374294, 39.551163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176888, 38.097836, 39.223648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286457, 38.461987, 39.099602>,  <33.352200, 38.680477, 39.025173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286457, 38.461987, 39.099602>,  <33.176888, 38.097836, 39.223648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286457, 38.461987, 39.099602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118655, -0.288000, -0.950251,
		-0.954403, 0.297096, 0.029130,
		0.273927, 0.910379, -0.310121,
		33.368633, 38.735100, 39.006565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674599, 38.506649, 38.754498>,  <33.176888, 38.097836, 39.223648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674599, 38.506649, 38.754498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047108, 38.619633, 38.662460>,  <33.270615, 38.687424, 38.607239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047108, 38.619633, 38.662460>,  <32.674599, 38.506649, 38.754498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047108, 38.619633, 38.662460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177743, -0.199044, -0.963737,
		-0.318017, 0.938401, -0.135160,
		0.931275, 0.282461, -0.230094,
		33.326488, 38.704372, 38.593433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630882, 38.846466, 38.095921>,  <32.674599, 38.506649, 38.754498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630882, 38.846466, 38.095921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012608, 38.730556, 38.125107>,  <33.241642, 38.661011, 38.142616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012608, 38.730556, 38.125107>,  <32.630882, 38.846466, 38.095921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012608, 38.730556, 38.125107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070310, -0.455062, -0.887680,
		0.290428, 0.841992, -0.454644,
		0.954310, -0.289773, 0.072962,
		33.298901, 38.643623, 38.146996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907028, 38.835300, 37.382969>,  <32.630882, 38.846466, 38.095921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907028, 38.835300, 37.382969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118473, 38.570084, 37.594986>,  <33.245338, 38.410954, 37.722195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118473, 38.570084, 37.594986>,  <32.907028, 38.835300, 37.382969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118473, 38.570084, 37.594986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022174, -0.634985, -0.772206,
		0.848574, 0.396444, -0.350363,
		0.528611, -0.663043, 0.530041,
		33.277058, 38.371170, 37.753998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466740, 38.497688, 37.011265>,  <32.907028, 38.835300, 37.382969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466740, 38.497688, 37.011265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380314, 38.246929, 37.310680>,  <33.328457, 38.096474, 37.490330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380314, 38.246929, 37.310680>,  <33.466740, 38.497688, 37.011265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380314, 38.246929, 37.310680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008416, -0.767817, -0.640614,
		0.976342, -0.132116, 0.171176,
		-0.216068, -0.626899, 0.748540,
		33.315495, 38.058861, 37.535244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858955, 37.860104, 36.983906>,  <33.466740, 38.497688, 37.011265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858955, 37.860104, 36.983906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528954, 37.738125, 37.174221>,  <33.330952, 37.664936, 37.288410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528954, 37.738125, 37.174221>,  <33.858955, 37.860104, 36.983906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528954, 37.738125, 37.174221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072656, -0.777694, -0.624430,
		0.560434, -0.549728, 0.619446,
		-0.825006, -0.304945, 0.475787,
		33.281452, 37.646641, 37.316956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960361, 37.186214, 37.222500>,  <33.858955, 37.860104, 36.983906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960361, 37.186214, 37.222500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562054, 37.208973, 37.193657>,  <33.323067, 37.222630, 37.176350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562054, 37.208973, 37.193657>,  <33.960361, 37.186214, 37.222500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562054, 37.208973, 37.193657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010610, -0.851051, -0.524975,
		-0.091237, -0.521991, 0.848057,
		-0.995772, 0.056895, -0.072109,
		33.263321, 37.226040, 37.172024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706108, 36.573689, 37.554619>,  <33.960361, 37.186214, 37.222500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706108, 36.573689, 37.554619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419014, 36.700104, 37.306435>,  <33.246758, 36.775955, 37.157524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419014, 36.700104, 37.306435>,  <33.706108, 36.573689, 37.554619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419014, 36.700104, 37.306435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005177, -0.893461, -0.449110,
		-0.696292, -0.319132, 0.642909,
		-0.717739, 0.316040, -0.620458,
		33.203693, 36.794914, 37.120296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135826, 36.034031, 37.460506>,  <33.706108, 36.573689, 37.554619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135826, 36.034031, 37.460506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152149, 36.257401, 37.129086>,  <33.161945, 36.391422, 36.930233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152149, 36.257401, 37.129086>,  <33.135826, 36.034031, 37.460506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152149, 36.257401, 37.129086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092443, -0.823572, -0.559628,
		-0.994881, 0.099432, 0.018013,
		0.040810, 0.558429, -0.828548,
		33.164391, 36.424931, 36.880520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960190, 35.449215, 36.880100>,  <33.135826, 36.034031, 37.460506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960190, 35.449215, 36.880100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048290, 35.784702, 36.680885>,  <33.101151, 35.985996, 36.561356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048290, 35.784702, 36.680885>,  <32.960190, 35.449215, 36.880100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048290, 35.784702, 36.680885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143650, -0.477120, -0.867018,
		-0.964807, 0.262507, 0.015394,
		0.220254, 0.838717, -0.498038,
		33.114365, 36.036316, 36.531475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432491, 35.557793, 36.388725>,  <32.960190, 35.449215, 36.880100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432491, 35.557793, 36.388725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758114, 35.755692, 36.267048>,  <32.953487, 35.874432, 36.194042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758114, 35.755692, 36.267048>,  <32.432491, 35.557793, 36.388725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758114, 35.755692, 36.267048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063291, -0.596212, -0.800328,
		-0.577322, 0.632263, -0.516665,
		0.814060, 0.494747, -0.304190,
		33.002331, 35.904114, 36.175793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341763, 35.860310, 35.760445>,  <32.432491, 35.557793, 36.388725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341763, 35.860310, 35.760445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740265, 35.826710, 35.768536>,  <32.979366, 35.806549, 35.773392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740265, 35.826710, 35.768536>,  <32.341763, 35.860310, 35.760445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740265, 35.826710, 35.768536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019411, -0.445728, -0.894958,
		0.084195, 0.891218, -0.445691,
		0.996260, -0.084002, 0.020229,
		33.039143, 35.801510, 35.774605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588566, 36.101006, 35.066616>,  <32.341763, 35.860310, 35.760445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588566, 36.101006, 35.066616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874996, 35.868336, 35.220963>,  <33.046852, 35.728733, 35.313572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874996, 35.868336, 35.220963>,  <32.588566, 36.101006, 35.066616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874996, 35.868336, 35.220963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126750, -0.435258, -0.891339,
		0.686420, 0.687173, -0.237950,
		0.716074, -0.581673, 0.385869,
		33.089817, 35.693832, 35.336723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018986, 35.975086, 34.394230>,  <32.588566, 36.101006, 35.066616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018986, 35.975086, 34.394230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145065, 35.706745, 34.662735>,  <33.220715, 35.545738, 34.823837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145065, 35.706745, 34.662735>,  <33.018986, 35.975086, 34.394230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145065, 35.706745, 34.662735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476807, -0.499624, -0.723209,
		0.820550, 0.548022, 0.162386,
		0.315202, -0.670856, 0.671267,
		33.239624, 35.505489, 34.864117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556549, 35.763042, 34.151211>,  <33.018986, 35.975086, 34.394230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556549, 35.763042, 34.151211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509144, 35.465679, 34.414513>,  <33.480701, 35.287262, 34.572495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509144, 35.465679, 34.414513>,  <33.556549, 35.763042, 34.151211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509144, 35.465679, 34.414513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430646, -0.635821, -0.640527,
		0.894705, 0.207563, 0.395500,
		-0.118518, -0.743404, 0.658259,
		33.473587, 35.242657, 34.611992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181393, 35.296238, 34.327972>,  <33.556549, 35.763042, 34.151211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181393, 35.296238, 34.327972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854664, 35.079372, 34.406826>,  <33.658627, 34.949253, 34.454140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854664, 35.079372, 34.406826>,  <34.181393, 35.296238, 34.327972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854664, 35.079372, 34.406826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250125, -0.640764, -0.725850,
		0.519845, -0.543582, 0.658998,
		-0.816822, -0.542162, 0.197135,
		33.609615, 34.916725, 34.465965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372437, 34.681282, 34.166119>,  <34.181393, 35.296238, 34.327972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372437, 34.681282, 34.166119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974709, 34.639153, 34.159939>,  <33.736073, 34.613876, 34.156231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974709, 34.639153, 34.159939>,  <34.372437, 34.681282, 34.166119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974709, 34.639153, 34.159939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073158, -0.570694, -0.817898,
		0.077323, -0.814381, 0.575156,
		-0.994318, -0.105319, -0.015451,
		33.676414, 34.607555, 34.155304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209656, 34.022617, 34.134640>,  <34.372437, 34.681282, 34.166119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209656, 34.022617, 34.134640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886150, 34.207001, 33.988533>,  <33.692047, 34.317631, 33.900871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886150, 34.207001, 33.988533>,  <34.209656, 34.022617, 34.134640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886150, 34.207001, 33.988533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089108, -0.517848, -0.850819,
		-0.581342, -0.720661, 0.377742,
		-0.808765, 0.460957, -0.365264,
		33.643520, 34.345287, 33.878956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819527, 33.497311, 33.736088>,  <34.209656, 34.022617, 34.134640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819527, 33.497311, 33.736088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672802, 33.841801, 33.595383>,  <33.584766, 34.048496, 33.510960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672802, 33.841801, 33.595383>,  <33.819527, 33.497311, 33.736088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672802, 33.841801, 33.595383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063007, -0.354250, -0.933026,
		-0.928158, -0.364411, 0.075681,
		-0.366814, 0.861227, -0.351760,
		33.562759, 34.100170, 33.489853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100330, 33.304420, 33.393635>,  <33.819527, 33.497311, 33.736088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100330, 33.304420, 33.393635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279968, 33.622078, 33.229855>,  <33.387753, 33.812672, 33.131584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279968, 33.622078, 33.229855>,  <33.100330, 33.304420, 33.393635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279968, 33.622078, 33.229855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040002, -0.439936, -0.897138,
		-0.892589, 0.419277, -0.165806,
		0.449094, 0.794143, -0.409454,
		33.414696, 33.860321, 33.107018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878891, 33.266376, 32.735416>,  <33.100330, 33.304420, 33.393635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878891, 33.266376, 32.735416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132629, 33.573444, 32.699001>,  <33.284870, 33.757687, 32.677155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132629, 33.573444, 32.699001>,  <32.878891, 33.266376, 32.735416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132629, 33.573444, 32.699001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136670, -0.004537, -0.990606,
		-0.760875, 0.640826, 0.102040,
		0.634343, 0.767673, -0.091034,
		33.322933, 33.803745, 32.671692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574570, 33.795006, 32.346455>,  <32.878891, 33.266376, 32.735416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574570, 33.795006, 32.346455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968864, 33.854404, 32.314793>,  <33.205441, 33.890045, 32.295795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968864, 33.854404, 32.314793>,  <32.574570, 33.795006, 32.346455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968864, 33.854404, 32.314793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100222, 0.140205, -0.985037,
		-0.135175, 0.978924, 0.153088,
		0.985740, 0.148495, -0.079157,
		33.264587, 33.898952, 32.291046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497562, 34.195595, 31.869061>,  <32.574570, 33.795006, 32.346455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497562, 34.195595, 31.869061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880451, 34.082088, 31.846453>,  <33.110184, 34.013985, 31.832888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880451, 34.082088, 31.846453>,  <32.497562, 34.195595, 31.869061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880451, 34.082088, 31.846453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027612, 0.104860, -0.994104,
		0.288020, 0.953143, 0.092540,
		0.957226, -0.283766, -0.056520,
		33.167618, 33.996960, 31.829496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830490, 34.665440, 31.393906>,  <32.497562, 34.195595, 31.869061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830490, 34.665440, 31.393906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091934, 34.362915, 31.382639>,  <33.248798, 34.181400, 31.375879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091934, 34.362915, 31.382639>,  <32.830490, 34.665440, 31.393906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091934, 34.362915, 31.382639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054243, 0.083934, -0.994994,
		0.754888, 0.648806, 0.095884,
		0.653606, -0.756310, -0.028167,
		33.288017, 34.136021, 31.374189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445869, 34.764835, 30.908037>,  <32.830490, 34.665440, 31.393906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445869, 34.764835, 30.908037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390293, 34.369812, 30.937498>,  <33.356949, 34.132797, 30.955175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390293, 34.369812, 30.937498>,  <33.445869, 34.764835, 30.908037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390293, 34.369812, 30.937498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013990, -0.076326, -0.996985,
		0.990202, -0.137491, 0.024421,
		-0.138940, -0.987558, 0.073654,
		33.348610, 34.073544, 30.959595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880379, 34.519417, 30.368690>,  <33.445869, 34.764835, 30.908037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880379, 34.519417, 30.368690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656742, 34.198635, 30.452864>,  <33.522560, 34.006165, 30.503366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656742, 34.198635, 30.452864>,  <33.880379, 34.519417, 30.368690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656742, 34.198635, 30.452864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072748, -0.205377, -0.975975,
		0.825906, -0.560971, 0.056484,
		-0.559095, -0.801955, 0.210432,
		33.489014, 33.958050, 30.515993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129681, 34.018330, 29.828230>,  <33.880379, 34.519417, 30.368690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129681, 34.018330, 29.828230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764572, 33.930439, 29.965963>,  <33.545506, 33.877705, 30.048603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764572, 33.930439, 29.965963>,  <34.129681, 34.018330, 29.828230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764572, 33.930439, 29.965963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264861, -0.323361, -0.908453,
		0.310956, -0.920411, 0.236958,
		-0.912773, -0.219728, 0.344332,
		33.490742, 33.864521, 30.069263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958187, 33.426517, 29.430136>,  <34.129681, 34.018330, 29.828230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958187, 33.426517, 29.430136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629440, 33.561718, 29.613564>,  <33.432190, 33.642838, 29.723619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629440, 33.561718, 29.613564>,  <33.958187, 33.426517, 29.430136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629440, 33.561718, 29.613564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506928, -0.066659, -0.859407,
		-0.259914, -0.938782, 0.226127,
		-0.821869, 0.338002, 0.458569,
		33.382881, 33.663116, 29.751135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438454, 32.876675, 29.356071>,  <33.958187, 33.426517, 29.430136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438454, 32.876675, 29.356071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282784, 33.240120, 29.416689>,  <33.189381, 33.458187, 29.453060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282784, 33.240120, 29.416689>,  <33.438454, 32.876675, 29.356071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282784, 33.240120, 29.416689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406441, -0.021739, -0.913418,
		-0.826649, -0.417073, 0.377758,
		-0.389174, 0.908613, 0.151545,
		33.166031, 33.512703, 29.462152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770836, 32.818680, 29.048727>,  <33.438454, 32.876675, 29.356071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770836, 32.818680, 29.048727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853374, 33.208492, 29.083860>,  <32.902897, 33.442379, 29.104940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853374, 33.208492, 29.083860>,  <32.770836, 32.818680, 29.048727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853374, 33.208492, 29.083860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387699, 0.163845, -0.907107,
		-0.898394, 0.153123, 0.411632,
		0.206343, 0.974529, 0.087832,
		32.915276, 33.500851, 29.110210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141415, 33.201157, 28.895496>,  <32.770836, 32.818680, 29.048727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141415, 33.201157, 28.895496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455734, 33.445736, 28.858286>,  <32.644325, 33.592484, 28.835958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455734, 33.445736, 28.858286>,  <32.141415, 33.201157, 28.895496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455734, 33.445736, 28.858286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388308, 0.370665, -0.843697,
		-0.481397, 0.699096, 0.528698,
		0.785795, 0.611450, -0.093027,
		32.691471, 33.629169, 28.830378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936411, 33.728355, 28.518744>,  <32.141415, 33.201157, 28.895496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936411, 33.728355, 28.518744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330063, 33.778957, 28.468975>,  <32.566254, 33.809319, 28.439114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330063, 33.778957, 28.468975>,  <31.936411, 33.728355, 28.518744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330063, 33.778957, 28.468975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158830, 0.315469, -0.935549,
		-0.079103, 0.940465, 0.330556,
		0.984132, 0.126507, -0.124419,
		32.625301, 33.816910, 28.431650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980330, 34.323532, 28.103394>,  <31.936411, 33.728355, 28.518744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980330, 34.323532, 28.103394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322182, 34.116852, 28.082901>,  <32.527294, 33.992844, 28.070606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322182, 34.116852, 28.082901>,  <31.980330, 34.323532, 28.103394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322182, 34.116852, 28.082901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053274, 0.185399, -0.981218,
		0.516498, 0.835849, 0.185975,
		0.854630, -0.516704, -0.051229,
		32.578571, 33.961842, 28.067532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445492, 34.750206, 27.650837>,  <31.980330, 34.323532, 28.103394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445492, 34.750206, 27.650837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560040, 34.367714, 27.626797>,  <32.628769, 34.138218, 27.612371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560040, 34.367714, 27.626797>,  <32.445492, 34.750206, 27.650837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560040, 34.367714, 27.626797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108968, 0.094828, -0.989512,
		0.951902, 0.276818, 0.131355,
		0.286371, -0.956232, -0.060102,
		32.645950, 34.080845, 27.608767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910843, 34.719765, 27.147711>,  <32.445492, 34.750206, 27.650837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910843, 34.719765, 27.147711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867115, 34.324993, 27.195089>,  <32.840878, 34.088131, 27.223516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867115, 34.324993, 27.195089>,  <32.910843, 34.719765, 27.147711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867115, 34.324993, 27.195089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301943, -0.146502, -0.942002,
		0.947038, -0.067214, 0.314010,
		-0.109318, -0.986924, 0.118448,
		32.834320, 34.028915, 27.230623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489040, 34.315872, 27.063856>,  <32.910843, 34.719765, 27.147711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489040, 34.315872, 27.063856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203480, 34.047436, 26.983879>,  <33.032143, 33.886375, 26.935894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203480, 34.047436, 26.983879>,  <33.489040, 34.315872, 27.063856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203480, 34.047436, 26.983879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270374, -0.000786, -0.962755,
		0.645940, -0.741374, 0.182007,
		-0.713905, -0.671092, -0.199941,
		32.989307, 33.846107, 26.923897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825535, 33.788467, 26.694914>,  <33.489040, 34.315872, 27.063856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825535, 33.788467, 26.694914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438568, 33.730812, 26.611647>,  <33.206390, 33.696217, 26.561686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438568, 33.730812, 26.611647>,  <33.825535, 33.788467, 26.694914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438568, 33.730812, 26.611647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234301, -0.197941, -0.951800,
		0.095988, -0.969558, 0.225263,
		-0.967414, -0.144141, -0.208168,
		33.148342, 33.687569, 26.549196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852615, 33.218571, 26.357365>,  <33.825535, 33.788467, 26.694914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852615, 33.218571, 26.357365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507130, 33.385422, 26.244225>,  <33.299839, 33.485535, 26.176340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507130, 33.385422, 26.244225>,  <33.852615, 33.218571, 26.357365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507130, 33.385422, 26.244225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267854, -0.095476, -0.958717,
		-0.426917, -0.903817, -0.029267,
		-0.863710, 0.417132, -0.282851,
		33.248016, 33.510563, 26.159369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483917, 32.768944, 25.822378>,  <33.852615, 33.218571, 26.357365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483917, 32.768944, 25.822378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324516, 33.132542, 25.773499>,  <33.228878, 33.350700, 25.744171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324516, 33.132542, 25.773499>,  <33.483917, 32.768944, 25.822378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324516, 33.132542, 25.773499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132384, -0.074833, -0.988370,
		-0.907565, -0.410041, -0.090515,
		-0.398499, 0.908992, -0.122199,
		33.204967, 33.405239, 25.736839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016872, 32.740803, 25.264141>,  <33.483917, 32.768944, 25.822378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016872, 32.740803, 25.264141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096310, 33.132332, 25.283974>,  <33.143974, 33.367249, 25.295874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096310, 33.132332, 25.283974>,  <33.016872, 32.740803, 25.264141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096310, 33.132332, 25.283974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305694, -0.013799, -0.952030,
		-0.931188, 0.204227, -0.301961,
		0.198597, 0.978826, 0.049582,
		33.155888, 33.425980, 25.298849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774567, 32.923836, 24.702553>,  <33.016872, 32.740803, 25.264141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774567, 32.923836, 24.702553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002483, 33.243156, 24.780575>,  <33.139233, 33.434750, 24.827389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002483, 33.243156, 24.780575>,  <32.774567, 32.923836, 24.702553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002483, 33.243156, 24.780575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158828, 0.125903, -0.979246,
		-0.806292, 0.588950, -0.055054,
		0.569796, 0.798302, 0.195057,
		33.173424, 33.482647, 24.839092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573174, 33.322937, 24.139341>,  <32.774567, 32.923836, 24.702553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573174, 33.322937, 24.139341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909485, 33.469185, 24.299046>,  <33.111271, 33.556934, 24.394869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909485, 33.469185, 24.299046>,  <32.573174, 33.322937, 24.139341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909485, 33.469185, 24.299046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299860, 0.299525, -0.905742,
		-0.450746, 0.881253, 0.142200,
		0.840781, 0.365619, 0.399262,
		33.161720, 33.578869, 24.418825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532551, 34.068989, 24.133680>,  <32.573174, 33.322937, 24.139341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532551, 34.068989, 24.133680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927299, 34.004829, 24.126177>,  <33.164150, 33.966335, 24.121674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927299, 34.004829, 24.126177>,  <32.532551, 34.068989, 24.133680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927299, 34.004829, 24.126177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060409, 0.474395, -0.878237,
		0.149768, 0.865576, 0.477858,
		0.986874, -0.160399, -0.018761,
		33.223362, 33.956711, 24.120548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847183, 34.686558, 23.931931>,  <32.532551, 34.068989, 24.133680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847183, 34.686558, 23.931931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114941, 34.401867, 23.846745>,  <33.275597, 34.231052, 23.795633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114941, 34.401867, 23.846745>,  <32.847183, 34.686558, 23.931931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114941, 34.401867, 23.846745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169422, 0.425361, -0.889024,
		0.723332, 0.559026, 0.405316,
		0.669393, -0.711729, -0.212966,
		33.315758, 34.188347, 23.782854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501190, 35.014534, 23.764057>,  <32.847183, 34.686558, 23.931931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501190, 35.014534, 23.764057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477982, 34.657234, 23.585733>,  <33.464058, 34.442856, 23.478739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477982, 34.657234, 23.585733>,  <33.501190, 35.014534, 23.764057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477982, 34.657234, 23.585733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011592, 0.445928, -0.894994,
		0.998248, -0.057098, -0.015519,
		-0.058023, -0.893246, -0.445808,
		33.460575, 34.389259, 23.451990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798012, 35.129848, 23.204750>,  <33.501190, 35.014534, 23.764057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798012, 35.129848, 23.204750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656136, 34.777424, 23.079582>,  <33.571011, 34.565968, 23.004482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656136, 34.777424, 23.079582>,  <33.798012, 35.129848, 23.204750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656136, 34.777424, 23.079582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080191, 0.304778, -0.949041,
		0.931537, -0.361713, -0.037449,
		-0.354694, -0.881064, -0.312919,
		33.549728, 34.513103, 22.985706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999695, 35.157196, 22.513479>,  <33.798012, 35.129848, 23.204750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999695, 35.157196, 22.513479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766968, 34.833431, 22.481636>,  <33.627331, 34.639172, 22.462530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766968, 34.833431, 22.481636>,  <33.999695, 35.157196, 22.513479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766968, 34.833431, 22.481636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222623, 0.252632, -0.941603,
		0.782258, -0.530119, -0.327180,
		-0.581817, -0.809414, -0.079607,
		33.592422, 34.590607, 22.457754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145504, 34.826069, 21.874205>,  <33.999695, 35.157196, 22.513479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145504, 34.826069, 21.874205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784767, 34.681259, 21.968546>,  <33.568325, 34.594372, 22.025150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784767, 34.681259, 21.968546>,  <34.145504, 34.826069, 21.874205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784767, 34.681259, 21.968546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311922, 0.167780, -0.935176,
		0.298989, -0.916944, -0.264235,
		-0.901837, -0.362028, 0.235851,
		33.514217, 34.572651, 22.039301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935730, 34.276161, 21.278246>,  <34.145504, 34.826069, 21.874205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935730, 34.276161, 21.278246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603470, 34.424858, 21.444056>,  <33.404114, 34.514076, 21.543541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603470, 34.424858, 21.444056>,  <33.935730, 34.276161, 21.278246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603470, 34.424858, 21.444056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410903, 0.093131, -0.906910,
		-0.375739, -0.923654, 0.075389,
		-0.830650, 0.371739, 0.414525,
		33.354275, 34.536381, 21.568413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440922, 34.007126, 20.932255>,  <33.935730, 34.276161, 21.278246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440922, 34.007126, 20.932255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247131, 34.315609, 21.097433>,  <33.130859, 34.500698, 21.196539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247131, 34.315609, 21.097433>,  <33.440922, 34.007126, 20.932255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247131, 34.315609, 21.097433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386428, 0.234827, -0.891925,
		-0.784830, -0.591687, 0.184249,
		-0.484474, 0.771208, 0.412944,
		33.101788, 34.546970, 21.221317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720215, 33.959267, 20.733809>,  <33.440922, 34.007126, 20.932255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720215, 33.959267, 20.733809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797962, 34.341499, 20.822420>,  <32.844612, 34.570839, 20.875587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797962, 34.341499, 20.822420>,  <32.720215, 33.959267, 20.733809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797962, 34.341499, 20.822420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383995, 0.281936, -0.879239,
		-0.902646, 0.085830, 0.421739,
		0.194368, 0.955586, 0.221530,
		32.856274, 34.628174, 20.888880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086056, 34.324711, 20.749517>,  <32.720215, 33.959267, 20.733809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086056, 34.324711, 20.749517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351040, 34.623142, 20.722645>,  <32.510029, 34.802200, 20.706522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351040, 34.623142, 20.722645>,  <32.086056, 34.324711, 20.749517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351040, 34.623142, 20.722645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429143, 0.304473, -0.850372,
		-0.613991, 0.592165, 0.521876,
		0.662458, 0.746081, -0.067180,
		32.549778, 34.846966, 20.702492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734245, 34.982723, 20.784502>,  <32.086056, 34.324711, 20.749517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734245, 34.982723, 20.784502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053715, 34.923183, 20.551277>,  <32.245396, 34.887459, 20.411343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053715, 34.923183, 20.551277>,  <31.734245, 34.982723, 20.784502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053715, 34.923183, 20.551277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490795, 0.399520, -0.774277,
		0.348196, 0.904560, 0.246032,
		0.798674, -0.148849, -0.583064,
		32.293316, 34.878529, 20.376358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797705, 35.599022, 20.504852>,  <31.734245, 34.982723, 20.784502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797705, 35.599022, 20.504852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911339, 35.283875, 20.286293>,  <31.979519, 35.094784, 20.155157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911339, 35.283875, 20.286293>,  <31.797705, 35.599022, 20.504852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911339, 35.283875, 20.286293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675838, 0.239685, -0.696990,
		0.680103, 0.567281, -0.464384,
		0.284083, -0.787873, -0.546400,
		31.996563, 35.047512, 20.122374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998051, 35.977051, 19.858295>,  <31.797705, 35.599022, 20.504852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998051, 35.977051, 19.858295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943514, 35.598904, 19.739843>,  <31.910791, 35.372017, 19.668772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943514, 35.598904, 19.739843>,  <31.998051, 35.977051, 19.858295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943514, 35.598904, 19.739843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570227, 0.319328, -0.756882,
		0.810094, 0.065669, -0.582611,
		-0.136340, -0.945366, -0.296132,
		31.902613, 35.315292, 19.651003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240505, 35.969513, 19.090092>,  <31.998051, 35.977051, 19.858295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240505, 35.969513, 19.090092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973553, 35.708130, 19.232979>,  <31.813383, 35.551300, 19.318712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973553, 35.708130, 19.232979>,  <32.240505, 35.969513, 19.090092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973553, 35.708130, 19.232979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720027, 0.443678, -0.533583,
		0.190182, -0.613308, -0.766605,
		-0.667377, -0.653454, 0.357219,
		31.773340, 35.512093, 19.340145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879164, 35.573704, 18.467733>,  <32.240505, 35.969513, 19.090092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879164, 35.573704, 18.467733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655951, 35.550339, 18.798838>,  <31.522022, 35.536320, 18.997499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655951, 35.550339, 18.798838>,  <31.879164, 35.573704, 18.467733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655951, 35.550339, 18.798838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807976, 0.265607, -0.525954,
		-0.189136, -0.962310, -0.195415,
		-0.558035, -0.058414, 0.827759,
		31.488541, 35.532814, 19.047165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558411, 35.657913, 18.157330>,  <31.879164, 35.573704, 18.467733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558411, 35.657913, 18.157330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605999, 35.266968, 18.227308>,  <32.634552, 35.032402, 18.269295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605999, 35.266968, 18.227308>,  <32.558411, 35.657913, 18.157330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605999, 35.266968, 18.227308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777421, -0.017905, -0.628726,
		0.617626, 0.210810, 0.757692,
		0.118975, -0.977363, 0.174946,
		32.641693, 34.973759, 18.279793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382141, 35.861099, 18.319519>,  <32.558411, 35.657913, 18.157330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382141, 35.861099, 18.319519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568462, 36.207970, 18.249058>,  <33.680256, 36.416092, 18.206781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568462, 36.207970, 18.249058>,  <33.382141, 35.861099, 18.319519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568462, 36.207970, 18.249058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299210, 0.341697, 0.890908,
		0.832764, -0.362284, 0.418633,
		0.465808, 0.867175, -0.176154,
		33.708206, 36.468121, 18.196211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006706, 36.045631, 18.825489>,  <33.382141, 35.861099, 18.319519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006706, 36.045631, 18.825489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848419, 36.379917, 18.673174>,  <33.753448, 36.580486, 18.581785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848419, 36.379917, 18.673174>,  <34.006706, 36.045631, 18.825489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848419, 36.379917, 18.673174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217007, 0.317800, 0.922990,
		0.892367, 0.447873, 0.055597,
		-0.395714, 0.835711, -0.380786,
		33.729706, 36.630630, 18.558939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449123, 36.664478, 19.026489>,  <34.006706, 36.045631, 18.825489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449123, 36.664478, 19.026489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057545, 36.736938, 18.988861>,  <33.822598, 36.780415, 18.966284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057545, 36.736938, 18.988861>,  <34.449123, 36.664478, 19.026489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057545, 36.736938, 18.988861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024620, 0.352707, 0.935410,
		0.202632, 0.918031, -0.340821,
		-0.978945, 0.181153, -0.094072,
		33.763863, 36.791283, 18.960640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287457, 37.409565, 19.092724>,  <34.449123, 36.664478, 19.026489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287457, 37.409565, 19.092724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983051, 37.185791, 19.224112>,  <33.800407, 37.051525, 19.302944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983051, 37.185791, 19.224112>,  <34.287457, 37.409565, 19.092724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983051, 37.185791, 19.224112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089027, 0.411475, 0.907063,
		-0.642600, 0.719528, -0.263332,
		-0.761012, -0.559435, 0.328471,
		33.754749, 37.017960, 19.322653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865021, 37.909073, 19.342543>,  <34.287457, 37.409565, 19.092724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865021, 37.909073, 19.342543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803085, 37.549904, 19.507353>,  <33.765923, 37.334404, 19.606239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803085, 37.549904, 19.507353>,  <33.865021, 37.909073, 19.342543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803085, 37.549904, 19.507353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108468, 0.399082, 0.910477,
		-0.981967, 0.185670, 0.035602,
		-0.154840, -0.897920, 0.412024,
		33.756634, 37.280529, 19.630960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399845, 37.984154, 19.855585>,  <33.865021, 37.909073, 19.342543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399845, 37.984154, 19.855585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555637, 37.630344, 19.958292>,  <33.649113, 37.418060, 20.019917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555637, 37.630344, 19.958292>,  <33.399845, 37.984154, 19.855585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555637, 37.630344, 19.958292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096262, 0.238162, 0.966443,
		-0.915991, -0.401127, 0.007614,
		0.389480, -0.884520, 0.256767,
		33.672482, 37.364990, 20.035322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998783, 37.690197, 20.460812>,  <33.399845, 37.984154, 19.855585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998783, 37.690197, 20.460812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358887, 37.518166, 20.487822>,  <33.574951, 37.414948, 20.504028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358887, 37.518166, 20.487822>,  <32.998783, 37.690197, 20.460812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358887, 37.518166, 20.487822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008790, 0.173031, 0.984877,
		-0.435259, -0.886054, 0.159554,
		0.900262, -0.430079, 0.067525,
		33.628967, 37.389141, 20.508080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963646, 37.160019, 21.058100>,  <32.998783, 37.690197, 20.460812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963646, 37.160019, 21.058100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357632, 37.214901, 21.016115>,  <33.594025, 37.247829, 20.990925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357632, 37.214901, 21.016115>,  <32.963646, 37.160019, 21.058100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357632, 37.214901, 21.016115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093612, 0.086722, 0.991825,
		0.145192, -0.986738, 0.072574,
		0.984965, 0.137212, -0.104962,
		33.653122, 37.256065, 20.984627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366547, 36.642864, 21.477398>,  <32.963646, 37.160019, 21.058100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366547, 36.642864, 21.477398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624573, 36.944534, 21.428244>,  <33.779388, 37.125538, 21.398750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624573, 36.944534, 21.428244>,  <33.366547, 36.642864, 21.477398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624573, 36.944534, 21.428244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242952, -0.049953, 0.968751,
		0.724473, -0.654767, -0.215452,
		0.645069, 0.754178, -0.122887,
		33.818092, 37.170788, 21.391378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060314, 36.331230, 21.594833>,  <33.366547, 36.642864, 21.477398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060314, 36.331230, 21.594833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037945, 36.726646, 21.650909>,  <34.024521, 36.963898, 21.684555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037945, 36.726646, 21.650909>,  <34.060314, 36.331230, 21.594833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037945, 36.726646, 21.650909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375399, -0.109287, 0.920397,
		0.925174, 0.104102, -0.364987,
		-0.055927, 0.988544, 0.140190,
		34.021168, 37.023209, 21.692966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566116, 36.478359, 21.999676>,  <34.060314, 36.331230, 21.594833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566116, 36.478359, 21.999676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374771, 36.825645, 22.052399>,  <34.259964, 37.034016, 22.084032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374771, 36.825645, 22.052399>,  <34.566116, 36.478359, 21.999676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374771, 36.825645, 22.052399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267656, 0.001196, 0.963514,
		0.836380, 0.496185, -0.232955,
		-0.478360, 0.868216, 0.131806,
		34.231262, 37.086109, 22.091940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952663, 36.776138, 22.436928>,  <34.566116, 36.478359, 21.999676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952663, 36.776138, 22.436928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621605, 36.998169, 22.470131>,  <34.422970, 37.131390, 22.490053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621605, 36.998169, 22.470131>,  <34.952663, 36.776138, 22.436928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621605, 36.998169, 22.470131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037824, -0.092395, 0.995004,
		0.559975, 0.826650, 0.055475,
		-0.827646, 0.555079, 0.083006,
		34.373310, 37.164692, 22.495033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032276, 37.261246, 23.006866>,  <34.952663, 36.776138, 22.436928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032276, 37.261246, 23.006866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634541, 37.240234, 22.969938>,  <34.395897, 37.227627, 22.947783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634541, 37.240234, 22.969938>,  <35.032276, 37.261246, 23.006866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634541, 37.240234, 22.969938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091317, -0.021160, 0.995597,
		-0.054254, 0.998395, 0.016243,
		-0.994343, -0.052532, -0.092319,
		34.336239, 37.224476, 22.942244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694244, 37.804005, 23.337883>,  <35.032276, 37.261246, 23.006866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694244, 37.804005, 23.337883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389496, 37.545628, 23.318665>,  <34.206646, 37.390602, 23.307133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389496, 37.545628, 23.318665>,  <34.694244, 37.804005, 23.337883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389496, 37.545628, 23.318665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183567, 0.144183, 0.972375,
		-0.621171, 0.749646, -0.228423,
		-0.761872, -0.645942, -0.048048,
		34.160934, 37.351845, 23.304251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180244, 38.022293, 23.716562>,  <34.694244, 37.804005, 23.337883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180244, 38.022293, 23.716562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080734, 37.635006, 23.706272>,  <34.021027, 37.402634, 23.700098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080734, 37.635006, 23.706272>,  <34.180244, 38.022293, 23.716562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080734, 37.635006, 23.706272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149235, 0.012072, 0.988728,
		-0.956995, 0.249811, -0.147495,
		-0.248776, -0.968219, -0.025727,
		34.006100, 37.344540, 23.698553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592091, 37.972126, 24.125498>,  <34.180244, 38.022293, 23.716562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592091, 37.972126, 24.125498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735954, 37.599789, 24.099648>,  <33.822273, 37.376385, 24.084137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735954, 37.599789, 24.099648>,  <33.592091, 37.972126, 24.125498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735954, 37.599789, 24.099648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132474, -0.119501, 0.983956,
		-0.923631, -0.345330, -0.166292,
		0.359662, -0.930842, -0.064627,
		33.843853, 37.320538, 24.080259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061913, 37.509434, 24.495018>,  <33.592091, 37.972126, 24.125498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061913, 37.509434, 24.495018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423607, 37.340050, 24.472977>,  <33.640625, 37.238419, 24.459751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423607, 37.340050, 24.472977>,  <33.061913, 37.509434, 24.495018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423607, 37.340050, 24.472977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049307, -0.231713, 0.971534,
		-0.424174, -0.875780, -0.230403,
		0.904237, -0.423460, -0.055105,
		33.694878, 37.213013, 24.456446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925655, 36.941303, 24.902699>,  <33.061913, 37.509434, 24.495018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925655, 36.941303, 24.902699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323750, 36.976601, 24.886086>,  <33.562607, 36.997780, 24.876118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323750, 36.976601, 24.886086>,  <32.925655, 36.941303, 24.902699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323750, 36.976601, 24.886086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059026, -0.205989, 0.976772,
		0.077635, -0.974568, -0.210216,
		0.995233, 0.088240, -0.041533,
		33.622318, 37.003071, 24.873625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243557, 36.282963, 25.149717>,  <32.925655, 36.941303, 24.902699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243557, 36.282963, 25.149717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512848, 36.574989, 25.196636>,  <33.674423, 36.750206, 25.224787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512848, 36.574989, 25.196636>,  <33.243557, 36.282963, 25.149717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512848, 36.574989, 25.196636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006327, -0.152938, 0.988216,
		0.739407, -0.666038, -0.098343,
		0.673229, 0.730071, 0.117297,
		33.714817, 36.794010, 25.231825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701904, 35.914074, 25.604679>,  <33.243557, 36.282963, 25.149717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701904, 35.914074, 25.604679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751820, 36.310894, 25.611139>,  <33.781769, 36.548988, 25.615015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751820, 36.310894, 25.611139>,  <33.701904, 35.914074, 25.604679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751820, 36.310894, 25.611139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039993, -0.021295, 0.998973,
		0.991378, -0.124010, -0.042332,
		0.124785, 0.992053, 0.016152,
		33.789253, 36.608509, 25.615984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032654, 35.975552, 26.247087>,  <33.701904, 35.914074, 25.604679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032654, 35.975552, 26.247087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931221, 36.350666, 26.152218>,  <33.870361, 36.575733, 26.095297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931221, 36.350666, 26.152218>,  <34.032654, 35.975552, 26.247087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931221, 36.350666, 26.152218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191616, 0.191629, 0.962581,
		0.948145, 0.289542, 0.131101,
		-0.253584, 0.937787, -0.237173,
		33.855145, 36.632004, 26.081066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354687, 36.346535, 26.706566>,  <34.032654, 35.975552, 26.247087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354687, 36.346535, 26.706566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075520, 36.605377, 26.583818>,  <33.908020, 36.760681, 26.510170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075520, 36.605377, 26.583818>,  <34.354687, 36.346535, 26.706566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075520, 36.605377, 26.583818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075834, 0.359297, 0.930137,
		0.712155, 0.672427, -0.201686,
		-0.697915, 0.647107, -0.306867,
		33.866146, 36.799511, 26.491758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617764, 37.008183, 26.807619>,  <34.354687, 36.346535, 26.706566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617764, 37.008183, 26.807619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218437, 37.029110, 26.817581>,  <33.978840, 37.041668, 26.823559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218437, 37.029110, 26.817581>,  <34.617764, 37.008183, 26.807619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218437, 37.029110, 26.817581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046513, 0.467208, 0.882923,
		0.034561, 0.882598, -0.468856,
		-0.998320, 0.052323, 0.024905,
		33.918941, 37.044807, 26.825052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544636, 37.571087, 27.152157>,  <34.617764, 37.008183, 26.807619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544636, 37.571087, 27.152157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176506, 37.415367, 27.167345>,  <33.955627, 37.321934, 27.176458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176506, 37.415367, 27.167345>,  <34.544636, 37.571087, 27.152157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176506, 37.415367, 27.167345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167422, 0.479805, 0.861253,
		-0.353504, 0.786279, -0.506755,
		-0.920329, -0.389298, 0.037973,
		33.900406, 37.298576, 27.178738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085300, 38.124111, 27.382229>,  <34.544636, 37.571087, 27.152157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085300, 38.124111, 27.382229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861996, 37.803257, 27.467007>,  <33.728012, 37.610744, 27.517874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861996, 37.803257, 27.467007>,  <34.085300, 38.124111, 27.382229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861996, 37.803257, 27.467007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224701, 0.392090, 0.892062,
		-0.798656, 0.450382, -0.399130,
		-0.558264, -0.802135, 0.211944,
		33.694515, 37.562614, 27.530590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450333, 38.403500, 27.764542>,  <34.085300, 38.124111, 27.382229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450333, 38.403500, 27.764542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478764, 38.009857, 27.829634>,  <33.495823, 37.773670, 27.868689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478764, 38.009857, 27.829634>,  <33.450333, 38.403500, 27.764542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478764, 38.009857, 27.829634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300544, 0.134431, 0.944247,
		-0.951116, -0.116019, -0.286213,
		0.071075, -0.984108, 0.162729,
		33.500088, 37.714626, 27.878452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779900, 38.204292, 28.194273>,  <33.450333, 38.403500, 27.764542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779900, 38.204292, 28.194273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044312, 37.908035, 28.242424>,  <33.202961, 37.730282, 28.271315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044312, 37.908035, 28.242424>,  <32.779900, 38.204292, 28.194273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044312, 37.908035, 28.242424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204041, -0.023043, 0.978691,
		-0.722083, -0.671508, -0.166353,
		0.661032, -0.740639, 0.120376,
		33.242622, 37.685844, 28.278538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454781, 37.636829, 28.505289>,  <32.779900, 38.204292, 28.194273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454781, 37.636829, 28.505289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841747, 37.580883, 28.589714>,  <33.073925, 37.547314, 28.640369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841747, 37.580883, 28.589714>,  <32.454781, 37.636829, 28.505289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841747, 37.580883, 28.589714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231664, -0.152521, 0.960765,
		-0.102186, -0.978353, -0.179953,
		0.967414, -0.139865, 0.211064,
		33.131973, 37.538921, 28.653032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434967, 37.027824, 28.977461>,  <32.454781, 37.636829, 28.505289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434967, 37.027824, 28.977461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783318, 37.215073, 29.037378>,  <32.992329, 37.327423, 29.073330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783318, 37.215073, 29.037378>,  <32.434967, 37.027824, 28.977461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783318, 37.215073, 29.037378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152713, -0.031973, 0.987754,
		0.467178, -0.883086, 0.043643,
		0.870875, 0.468121, 0.149795,
		33.044579, 37.355511, 29.082317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708660, 36.594646, 29.476044>,  <32.434967, 37.027824, 28.977461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708660, 36.594646, 29.476044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916019, 36.936550, 29.486183>,  <33.040436, 37.141693, 29.492266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916019, 36.936550, 29.486183>,  <32.708660, 36.594646, 29.476044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916019, 36.936550, 29.486183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080516, 0.019279, 0.996567,
		0.851338, -0.518663, 0.078817,
		0.518402, 0.854761, 0.025347,
		33.071541, 37.192978, 29.493788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187923, 36.521343, 29.976801>,  <32.708660, 36.594646, 29.476044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187923, 36.521343, 29.976801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166328, 36.919670, 29.947290>,  <33.153370, 37.158665, 29.929585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166328, 36.919670, 29.947290>,  <33.187923, 36.521343, 29.976801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166328, 36.919670, 29.947290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005177, 0.074162, 0.997233,
		0.998528, 0.053457, -0.009159,
		-0.053988, 0.995812, -0.073776,
		33.150131, 37.218414, 29.925158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737183, 36.771854, 30.281874>,  <33.187923, 36.521343, 29.976801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737183, 36.771854, 30.281874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461941, 37.062061, 30.286486>,  <33.296795, 37.236187, 30.289253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461941, 37.062061, 30.286486>,  <33.737183, 36.771854, 30.281874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461941, 37.062061, 30.286486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243147, 0.215582, 0.945729,
		0.683656, 0.653568, -0.324751,
		-0.688109, 0.725516, 0.011529,
		33.255508, 37.279716, 30.289944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977497, 37.340897, 30.597916>,  <33.737183, 36.771854, 30.281874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977497, 37.340897, 30.597916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594093, 37.450169, 30.630505>,  <33.364052, 37.515732, 30.650059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594093, 37.450169, 30.630505>,  <33.977497, 37.340897, 30.597916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594093, 37.450169, 30.630505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159543, 0.277208, 0.947471,
		0.236247, 0.921155, -0.309290,
		-0.958506, 0.273182, 0.081474,
		33.306541, 37.532124, 30.654947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885471, 38.098511, 30.766848>,  <33.977497, 37.340897, 30.597916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885471, 38.098511, 30.766848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559471, 37.902893, 30.891182>,  <33.363873, 37.785522, 30.965782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559471, 37.902893, 30.891182>,  <33.885471, 38.098511, 30.766848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559471, 37.902893, 30.891182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218078, 0.238129, 0.946434,
		-0.536864, 0.839127, -0.087426,
		-0.814996, -0.489041, 0.310838,
		33.314972, 37.756180, 30.984434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750271, 38.511147, 31.302769>,  <33.885471, 38.098511, 30.766848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750271, 38.511147, 31.302769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507675, 38.198456, 31.360838>,  <33.362118, 38.010841, 31.395679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507675, 38.198456, 31.360838>,  <33.750271, 38.511147, 31.302769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507675, 38.198456, 31.360838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031169, 0.159070, 0.986775,
		-0.794480, 0.602994, -0.072108,
		-0.606490, -0.781726, 0.145173,
		33.325729, 37.963940, 31.404390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282234, 38.780590, 31.820763>,  <33.750271, 38.511147, 31.302769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282234, 38.780590, 31.820763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278366, 38.380817, 31.833725>,  <33.276047, 38.140953, 31.841503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278366, 38.380817, 31.833725>,  <33.282234, 38.780590, 31.820763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278366, 38.380817, 31.833725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233089, 0.033769, 0.971869,
		-0.972407, 0.001845, -0.233282,
		-0.009671, -0.999428, 0.032407,
		33.275463, 38.080990, 31.843447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706699, 38.564240, 32.244137>,  <33.282234, 38.780590, 31.820763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706699, 38.564240, 32.244137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983799, 38.276031, 32.256458>,  <33.150059, 38.103107, 32.263851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983799, 38.276031, 32.256458>,  <32.706699, 38.564240, 32.244137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983799, 38.276031, 32.256458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011517, 0.031660, 0.999432,
		-0.721083, -0.692715, 0.013635,
		0.692753, -0.720517, 0.030808,
		33.191624, 38.059875, 32.265701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485481, 37.988651, 32.808620>,  <32.706699, 38.564240, 32.244137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485481, 37.988651, 32.808620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878963, 37.926815, 32.771889>,  <33.115051, 37.889713, 32.749851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878963, 37.926815, 32.771889>,  <32.485481, 37.988651, 32.808620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878963, 37.926815, 32.771889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065517, -0.167446, 0.983702,
		-0.167446, -0.973686, -0.154589,
		-0.983702, 0.154589, 0.091831,
		33.174072, 37.880440, 32.744339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613914, 37.381603, 33.208267>,  <32.485481, 37.988651, 32.808620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613914, 37.381603, 33.208267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977135, 37.540112, 33.153992>,  <33.195068, 37.635216, 33.121426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977135, 37.540112, 33.153992>,  <32.613914, 37.381603, 33.208267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977135, 37.540112, 33.153992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268938, -0.303252, 0.914172,
		0.321111, -0.866608, -0.381941,
		0.908053, 0.396269, -0.135686,
		33.249550, 37.658993, 33.113285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136539, 36.857285, 33.421196>,  <32.613914, 37.381603, 33.208267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136539, 36.857285, 33.421196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296101, 37.223686, 33.438244>,  <33.391838, 37.443527, 33.448471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296101, 37.223686, 33.438244>,  <33.136539, 36.857285, 33.421196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296101, 37.223686, 33.438244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361510, -0.199803, 0.910708,
		0.842724, -0.347882, -0.410846,
		0.398907, 0.916001, 0.042616,
		33.415771, 37.498486, 33.451027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786167, 36.759411, 33.914391>,  <33.136539, 36.857285, 33.421196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786167, 36.759411, 33.914391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658146, 37.138351, 33.910583>,  <33.581333, 37.365715, 33.908298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658146, 37.138351, 33.910583>,  <33.786167, 36.759411, 33.914391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658146, 37.138351, 33.910583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175306, 0.069097, 0.982087,
		0.931039, 0.312650, -0.188191,
		-0.320053, 0.947352, -0.009522,
		33.562130, 37.422558, 33.907726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439461, 37.110519, 34.277390>,  <33.786167, 36.759411, 33.914391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439461, 37.110519, 34.277390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098610, 37.318924, 34.297085>,  <33.894100, 37.443966, 34.308903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098610, 37.318924, 34.297085>,  <34.439461, 37.110519, 34.277390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098610, 37.318924, 34.297085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057302, -0.000627, 0.998357,
		0.520181, 0.853552, -0.029320,
		-0.852131, 0.521007, 0.049236,
		33.842972, 37.475227, 34.311855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278500, 37.604439, 34.775826>,  <34.439461, 37.110519, 34.277390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278500, 37.604439, 34.775826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425205, 37.445763, 35.112427>,  <34.513229, 37.350555, 35.314388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425205, 37.445763, 35.112427>,  <34.278500, 37.604439, 34.775826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425205, 37.445763, 35.112427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417009, -0.878671, -0.232466,
		0.831618, -0.265653, -0.487688,
		0.366762, -0.396693, 0.841499,
		34.535233, 37.326756, 35.364876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063519, 37.448780, 34.757252>,  <34.278500, 37.604439, 34.775826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063519, 37.448780, 34.757252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457092, 37.381367, 34.780838>,  <35.693237, 37.340919, 34.794991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457092, 37.381367, 34.780838>,  <35.063519, 37.448780, 34.757252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457092, 37.381367, 34.780838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083711, 0.143750, -0.986067,
		0.157706, 0.975158, 0.155548,
		0.983932, -0.168530, 0.058961,
		35.752274, 37.330807, 34.798527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426006, 38.024780, 34.362141>,  <35.063519, 37.448780, 34.757252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426006, 38.024780, 34.362141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669304, 37.707310, 34.366535>,  <35.815281, 37.516827, 34.369171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669304, 37.707310, 34.366535>,  <35.426006, 38.024780, 34.362141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669304, 37.707310, 34.366535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205219, 0.143874, -0.968083,
		0.766765, 0.591082, 0.250387,
		0.608241, -0.793677, 0.010984,
		35.851776, 37.469208, 34.369831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062695, 38.234825, 33.958561>,  <35.426006, 38.024780, 34.362141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062695, 38.234825, 33.958561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072277, 37.834942, 33.959843>,  <36.078026, 37.595013, 33.960609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072277, 37.834942, 33.959843>,  <36.062695, 38.234825, 33.958561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072277, 37.834942, 33.959843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413619, 0.006999, -0.910423,
		0.910135, 0.023138, 0.413666,
		0.023960, -0.999708, 0.003201,
		36.079464, 37.535030, 33.960804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627632, 38.133537, 33.615704>,  <36.062695, 38.234825, 33.958561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627632, 38.133537, 33.615704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470440, 37.766418, 33.593006>,  <36.376125, 37.546146, 33.579388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470440, 37.766418, 33.593006>,  <36.627632, 38.133537, 33.615704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470440, 37.766418, 33.593006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404069, -0.116919, -0.907226,
		0.826011, -0.379452, 0.416799,
		-0.392980, -0.917794, -0.056748,
		36.352547, 37.491081, 33.575981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177017, 37.621918, 33.512119>,  <36.627632, 38.133537, 33.615704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177017, 37.621918, 33.512119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841808, 37.452053, 33.375080>,  <36.640682, 37.350136, 33.292854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841808, 37.452053, 33.375080>,  <37.177017, 37.621918, 33.512119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841808, 37.452053, 33.375080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461187, -0.215748, -0.860674,
		0.291579, -0.879270, 0.376651,
		-0.838026, -0.424661, -0.342601,
		36.590401, 37.324654, 33.272301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360306, 36.991570, 33.185043>,  <37.177017, 37.621918, 33.512119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360306, 36.991570, 33.185043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003654, 37.083992, 33.029297>,  <36.789661, 37.139446, 32.935848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003654, 37.083992, 33.029297>,  <37.360306, 36.991570, 33.185043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003654, 37.083992, 33.029297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361355, -0.154986, -0.919458,
		-0.272795, -0.960516, 0.054697,
		-0.891631, 0.231058, -0.389366,
		36.736164, 37.153309, 32.912487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113018, 36.414600, 32.694069>,  <37.360306, 36.991570, 33.185043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113018, 36.414600, 32.694069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883984, 36.730019, 32.604324>,  <36.746563, 36.919270, 32.550476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883984, 36.730019, 32.604324>,  <37.113018, 36.414600, 32.694069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883984, 36.730019, 32.604324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127777, -0.184491, -0.974493,
		-0.809824, -0.586653, 0.004879,
		-0.572589, 0.788544, -0.224366,
		36.712208, 36.966583, 32.537014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724804, 36.174564, 32.171719>,  <37.113018, 36.414600, 32.694069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724804, 36.174564, 32.171719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720688, 36.573879, 32.148689>,  <36.718216, 36.813469, 32.134872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720688, 36.573879, 32.148689>,  <36.724804, 36.174564, 32.171719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720688, 36.573879, 32.148689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200847, -0.054338, -0.978114,
		-0.979568, -0.021633, -0.199944,
		-0.010295, 0.998288, -0.057572,
		36.717598, 36.873367, 32.131416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265293, 36.260799, 31.637869>,  <36.724804, 36.174564, 32.171719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265293, 36.260799, 31.637869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465515, 36.604336, 31.681398>,  <36.585648, 36.810455, 31.707516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465515, 36.604336, 31.681398>,  <36.265293, 36.260799, 31.637869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465515, 36.604336, 31.681398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081836, 0.078201, -0.993573,
		-0.861829, 0.506241, -0.031141,
		0.500553, 0.858839, 0.108824,
		36.615681, 36.861988, 31.714046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993923, 36.706619, 31.137789>,  <36.265293, 36.260799, 31.637869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993923, 36.706619, 31.137789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358521, 36.841007, 31.232702>,  <36.577278, 36.921638, 31.289650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358521, 36.841007, 31.232702>,  <35.993923, 36.706619, 31.137789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358521, 36.841007, 31.232702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291355, -0.120191, -0.949035,
		-0.290325, 0.934174, -0.207439,
		0.911495, 0.335967, 0.237281,
		36.631969, 36.941795, 31.303886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122101, 37.141556, 30.615238>,  <35.993923, 36.706619, 31.137789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122101, 37.141556, 30.615238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480408, 37.060081, 30.773277>,  <36.695393, 37.011196, 30.868101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480408, 37.060081, 30.773277>,  <36.122101, 37.141556, 30.615238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480408, 37.060081, 30.773277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365770, -0.167327, -0.915540,
		0.252598, 0.964630, -0.075383,
		0.895772, -0.203690, 0.395099,
		36.749138, 36.998974, 30.891808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599072, 37.657131, 30.230215>,  <36.122101, 37.141556, 30.615238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599072, 37.657131, 30.230215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830772, 37.366371, 30.377769>,  <36.969791, 37.191914, 30.466303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830772, 37.366371, 30.377769>,  <36.599072, 37.657131, 30.230215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830772, 37.366371, 30.377769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450335, -0.091842, -0.888124,
		0.679460, 0.680570, 0.274151,
		0.579252, -0.726904, 0.368887,
		37.004547, 37.148300, 30.488436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353226, 37.834541, 30.039154>,  <36.599072, 37.657131, 30.230215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353226, 37.834541, 30.039154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335960, 37.441200, 30.109766>,  <37.325600, 37.205196, 30.152134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335960, 37.441200, 30.109766>,  <37.353226, 37.834541, 30.039154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335960, 37.441200, 30.109766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166763, -0.181307, -0.969184,
		0.985052, -0.012395, 0.171811,
		-0.043163, -0.983348, 0.176530,
		37.323009, 37.146194, 30.162725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972431, 37.535828, 29.655886>,  <37.353226, 37.834541, 30.039154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972431, 37.535828, 29.655886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744541, 37.215282, 29.728796>,  <37.607807, 37.022953, 29.772541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744541, 37.215282, 29.728796>,  <37.972431, 37.535828, 29.655886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744541, 37.215282, 29.728796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019460, -0.208573, -0.977813,
		0.821605, -0.560632, 0.103234,
		-0.569725, -0.801367, 0.182274,
		37.573624, 36.974873, 29.783478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338978, 36.944469, 29.326246>,  <37.972431, 37.535828, 29.655886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338978, 36.944469, 29.326246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951042, 36.852676, 29.359097>,  <37.718281, 36.797600, 29.378807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951042, 36.852676, 29.359097>,  <38.338978, 36.944469, 29.326246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951042, 36.852676, 29.359097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039075, -0.186198, -0.981735,
		0.240583, -0.955337, 0.171616,
		-0.969841, -0.229482, 0.082126,
		37.660091, 36.783833, 29.383734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277821, 36.435280, 28.798246>,  <38.338978, 36.944469, 29.326246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277821, 36.435280, 28.798246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899326, 36.538216, 28.876637>,  <37.672230, 36.599979, 28.923670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899326, 36.538216, 28.876637>,  <38.277821, 36.435280, 28.798246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899326, 36.538216, 28.876637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225918, -0.092181, -0.969775,
		-0.231501, -0.961913, 0.145364,
		-0.946239, 0.257345, 0.195974,
		37.615456, 36.615417, 28.935429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757256, 35.819340, 28.692677>,  <38.277821, 36.435280, 28.798246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757256, 35.819340, 28.692677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539982, 36.152859, 28.653217>,  <37.409618, 36.352970, 28.629541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539982, 36.152859, 28.653217>,  <37.757256, 35.819340, 28.692677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539982, 36.152859, 28.653217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094012, -0.177155, -0.979682,
		-0.834331, -0.522878, 0.174616,
		-0.543189, 0.833795, -0.098649,
		37.377026, 36.402996, 28.623623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134403, 35.635201, 28.326410>,  <37.757256, 35.819340, 28.692677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134403, 35.635201, 28.326410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175232, 36.031307, 28.288555>,  <37.199730, 36.268970, 28.265842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175232, 36.031307, 28.288555>,  <37.134403, 35.635201, 28.326410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175232, 36.031307, 28.288555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239023, -0.067935, -0.968634,
		-0.965635, 0.121488, 0.229762,
		0.102068, 0.990265, -0.094639,
		37.205853, 36.328388, 28.260164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474316, 35.808743, 28.080957>,  <37.134403, 35.635201, 28.326410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474316, 35.808743, 28.080957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694515, 36.131184, 27.994091>,  <36.826633, 36.324646, 27.941971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694515, 36.131184, 27.994091>,  <36.474316, 35.808743, 28.080957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694515, 36.131184, 27.994091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432587, 0.052948, -0.900036,
		-0.714020, 0.589408, 0.377855,
		0.550495, 0.806099, -0.217165,
		36.859665, 36.373013, 27.928942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984535, 36.280823, 27.928841>,  <36.474316, 35.808743, 28.080957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984535, 36.280823, 27.928841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332249, 36.380039, 27.757807>,  <36.540874, 36.439568, 27.655186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332249, 36.380039, 27.757807>,  <35.984535, 36.280823, 27.928841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332249, 36.380039, 27.757807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482837, 0.240692, -0.841983,
		-0.105927, 0.938374, 0.328991,
		0.869280, 0.248038, -0.427586,
		36.593033, 36.454449, 27.629532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827438, 36.951256, 27.440908>,  <35.984535, 36.280823, 27.928841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827438, 36.951256, 27.440908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178078, 36.811523, 27.308519>,  <36.388462, 36.727684, 27.229086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178078, 36.811523, 27.308519>,  <35.827438, 36.951256, 27.440908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178078, 36.811523, 27.308519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369031, -0.046563, -0.928250,
		0.308852, 0.935843, -0.169730,
		0.876599, -0.349327, -0.330974,
		36.441059, 36.706726, 27.209227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022751, 37.331043, 26.863789>,  <35.827438, 36.951256, 27.440908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022751, 37.331043, 26.863789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197769, 36.974499, 26.816427>,  <36.302780, 36.760571, 26.788012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197769, 36.974499, 26.816427>,  <36.022751, 37.331043, 26.863789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197769, 36.974499, 26.816427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178514, 0.042946, -0.983000,
		0.881296, 0.451248, -0.140330,
		0.437550, -0.891365, -0.118402,
		36.329033, 36.707088, 26.780907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109501, 37.410568, 26.192581>,  <36.022751, 37.331043, 26.863789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109501, 37.410568, 26.192581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201691, 37.027008, 26.258785>,  <36.257004, 36.796871, 26.298508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201691, 37.027008, 26.258785>,  <36.109501, 37.410568, 26.192581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201691, 37.027008, 26.258785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274058, -0.227167, -0.934498,
		0.933689, 0.170015, -0.315149,
		0.230471, -0.958900, 0.165509,
		36.270832, 36.739338, 26.308437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613327, 37.248329, 25.632891>,  <36.109501, 37.410568, 26.192581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613327, 37.248329, 25.632891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419708, 36.926525, 25.770567>,  <36.303539, 36.733444, 25.853172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419708, 36.926525, 25.770567>,  <36.613327, 37.248329, 25.632891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419708, 36.926525, 25.770567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267549, -0.238432, -0.933578,
		0.833139, -0.543979, -0.099835,
		-0.484042, -0.804511, 0.344188,
		36.274494, 36.685173, 25.873823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921963, 36.792835, 25.172916>,  <36.613327, 37.248329, 25.632891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921963, 36.792835, 25.172916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626053, 36.587257, 25.346628>,  <36.448509, 36.463909, 25.450855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626053, 36.587257, 25.346628>,  <36.921963, 36.792835, 25.172916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626053, 36.587257, 25.346628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138548, -0.515245, -0.845770,
		0.658440, -0.685845, 0.309957,
		-0.739771, -0.513946, 0.434280,
		36.404121, 36.433075, 25.476912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100121, 36.054951, 25.175436>,  <36.921963, 36.792835, 25.172916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100121, 36.054951, 25.175436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701538, 36.083782, 25.192780>,  <36.462387, 36.101082, 25.203186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701538, 36.083782, 25.192780>,  <37.100121, 36.054951, 25.175436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701538, 36.083782, 25.192780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073404, -0.493467, -0.866661,
		-0.041071, -0.866773, 0.497009,
		-0.996456, 0.072077, 0.043358,
		36.402599, 36.105404, 25.205788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889263, 35.423973, 25.068865>,  <37.100121, 36.054951, 25.175436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889263, 35.423973, 25.068865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591732, 35.677193, 24.983110>,  <36.413212, 35.829124, 24.931658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591732, 35.677193, 24.983110>,  <36.889263, 35.423973, 25.068865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591732, 35.677193, 24.983110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195171, -0.512508, -0.836208,
		-0.639237, -0.580155, 0.504772,
		-0.743831, 0.633052, -0.214385,
		36.368584, 35.867107, 24.918795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374344, 34.896935, 24.911345>,  <36.889263, 35.423973, 25.068865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374344, 34.896935, 24.911345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255383, 35.250160, 24.766157>,  <36.184006, 35.462097, 24.679045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255383, 35.250160, 24.766157>,  <36.374344, 34.896935, 24.911345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255383, 35.250160, 24.766157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314820, -0.449608, -0.835908,
		-0.901355, -0.134331, 0.411721,
		-0.297401, 0.883067, -0.362966,
		36.166161, 35.515079, 24.657267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712788, 34.800179, 24.867546>,  <36.374344, 34.896935, 24.911345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712788, 34.800179, 24.867546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830215, 35.077648, 24.604448>,  <35.900673, 35.244129, 24.446590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830215, 35.077648, 24.604448>,  <35.712788, 34.800179, 24.867546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830215, 35.077648, 24.604448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334388, -0.570074, -0.750467,
		-0.895545, 0.440256, 0.064601,
		0.293571, 0.693679, -0.657743,
		35.918285, 35.285751, 24.407125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308182, 34.683086, 24.330498>,  <35.712788, 34.800179, 24.867546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308182, 34.683086, 24.330498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583263, 34.916458, 24.157675>,  <35.748314, 35.056480, 24.053982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583263, 34.916458, 24.157675>,  <35.308182, 34.683086, 24.330498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583263, 34.916458, 24.157675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052176, -0.553869, -0.830967,
		-0.724113, 0.594003, -0.350458,
		0.687705, 0.583429, -0.432057,
		35.789574, 35.091488, 24.028057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928562, 35.042809, 23.785837>,  <35.308182, 34.683086, 24.330498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928562, 35.042809, 23.785837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319633, 35.022644, 23.704243>,  <35.554276, 35.010544, 23.655287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319633, 35.022644, 23.704243>,  <34.928562, 35.042809, 23.785837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319633, 35.022644, 23.704243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205550, -0.430893, -0.878681,
		-0.043600, 0.900994, -0.431636,
		0.977675, -0.050412, -0.203986,
		35.612934, 35.007519, 23.643047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940048, 35.127361, 23.079056>,  <34.928562, 35.042809, 23.785837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940048, 35.127361, 23.079056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304428, 34.975651, 23.143953>,  <35.523056, 34.884624, 23.182892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304428, 34.975651, 23.143953>,  <34.940048, 35.127361, 23.079056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304428, 34.975651, 23.143953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010277, -0.414039, -0.910201,
		0.412392, 0.827479, -0.381066,
		0.910949, -0.379276, 0.162242,
		35.577713, 34.861870, 23.192627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314587, 35.269840, 22.516378>,  <34.940048, 35.127361, 23.079056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314587, 35.269840, 22.516378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516575, 34.973377, 22.693325>,  <35.637768, 34.795502, 22.799494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516575, 34.973377, 22.693325>,  <35.314587, 35.269840, 22.516378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516575, 34.973377, 22.693325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193979, -0.596852, -0.778550,
		0.841055, 0.307337, -0.445163,
		0.504973, -0.741156, 0.442369,
		35.668068, 34.751030, 22.826036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729904, 34.950962, 21.986506>,  <35.314587, 35.269840, 22.516378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729904, 34.950962, 21.986506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714771, 34.680206, 22.280552>,  <35.705692, 34.517754, 22.456980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714771, 34.680206, 22.280552>,  <35.729904, 34.950962, 21.986506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714771, 34.680206, 22.280552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093920, -0.729978, -0.676987,
		0.994861, -0.094652, -0.035958,
		-0.037830, -0.676885, 0.735116,
		35.703423, 34.477142, 22.501087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341454, 34.593258, 21.848984>,  <35.729904, 34.950962, 21.986506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341454, 34.593258, 21.848984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108959, 34.355595, 22.071384>,  <35.969463, 34.212997, 22.204824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108959, 34.355595, 22.071384>,  <36.341454, 34.593258, 21.848984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108959, 34.355595, 22.071384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096286, -0.728688, -0.678043,
		0.808018, -0.340568, 0.480750,
		-0.581236, -0.594160, 0.556001,
		35.934589, 34.177345, 22.238184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591423, 33.859554, 21.786144>,  <36.341454, 34.593258, 21.848984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591423, 33.859554, 21.786144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215858, 33.802605, 21.911478>,  <35.990520, 33.768433, 21.986679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215858, 33.802605, 21.911478>,  <36.591423, 33.859554, 21.786144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215858, 33.802605, 21.911478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108227, -0.742092, -0.661503,
		0.326709, -0.655002, 0.681347,
		-0.938908, -0.142379, 0.313337,
		35.934185, 33.759892, 22.005480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554062, 33.132004, 21.837389>,  <36.591423, 33.859554, 21.786144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554062, 33.132004, 21.837389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173985, 33.242256, 21.779196>,  <35.945938, 33.308407, 21.744280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173985, 33.242256, 21.779196>,  <36.554062, 33.132004, 21.837389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173985, 33.242256, 21.779196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138249, -0.791089, -0.595873,
		-0.279331, -0.546080, 0.789791,
		-0.950190, 0.275634, -0.145481,
		35.888927, 33.324947, 21.735552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708038, 32.903427, 21.079771>,  <36.554062, 33.132004, 21.837389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708038, 32.903427, 21.079771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798027, 32.522640, 20.996689>,  <36.852020, 32.294167, 20.946838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798027, 32.522640, 20.996689>,  <36.708038, 32.903427, 21.079771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798027, 32.522640, 20.996689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330619, -0.125944, 0.935323,
		-0.916559, -0.279090, 0.286406,
		0.224968, -0.951970, -0.207708,
		36.865517, 32.237049, 20.934376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269661, 32.494606, 21.543001>,  <36.708038, 32.903427, 21.079771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269661, 32.494606, 21.543001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590504, 32.276661, 21.445229>,  <36.783009, 32.145893, 21.386564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590504, 32.276661, 21.445229>,  <36.269661, 32.494606, 21.543001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590504, 32.276661, 21.445229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193378, -0.150275, 0.969547,
		-0.565003, -0.824949, -0.015172,
		0.802107, -0.544863, -0.244433,
		36.831135, 32.113201, 21.371899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291168, 31.888008, 21.943638>,  <36.269661, 32.494606, 21.543001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291168, 31.888008, 21.943638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672718, 31.959152, 21.846897>,  <36.901649, 32.001839, 21.788853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672718, 31.959152, 21.846897>,  <36.291168, 31.888008, 21.943638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672718, 31.959152, 21.846897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246322, -0.003154, 0.969183,
		0.171616, -0.984051, -0.046819,
		0.953873, 0.177860, -0.241852,
		36.958881, 32.012508, 21.774342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714794, 31.574532, 22.468422>,  <36.291168, 31.888008, 21.943638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714794, 31.574532, 22.468422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988239, 31.796293, 22.278553>,  <37.152306, 31.929350, 22.164633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988239, 31.796293, 22.278553>,  <36.714794, 31.574532, 22.468422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988239, 31.796293, 22.278553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543219, 0.047853, 0.838226,
		0.487430, -0.830871, -0.268449,
		0.683612, 0.554403, -0.474670,
		37.193321, 31.962614, 22.136152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418537, 31.253031, 22.601906>,  <36.714794, 31.574532, 22.468422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418537, 31.253031, 22.601906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449398, 31.636635, 22.492840>,  <37.467915, 31.866796, 22.427401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449398, 31.636635, 22.492840>,  <37.418537, 31.253031, 22.601906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449398, 31.636635, 22.492840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679864, 0.149432, 0.717952,
		0.729268, -0.240770, -0.640467,
		0.077155, 0.959010, -0.272667,
		37.472546, 31.924337, 22.411039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133129, 31.296690, 22.646183>,  <37.418537, 31.253031, 22.601906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133129, 31.296690, 22.646183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969940, 31.661709, 22.657602>,  <37.872025, 31.880720, 22.664454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969940, 31.661709, 22.657602>,  <38.133129, 31.296690, 22.646183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969940, 31.661709, 22.657602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474073, 0.185017, 0.860827,
		0.780262, 0.364731, -0.508096,
		-0.407977, 0.912546, 0.028547,
		37.847546, 31.935472, 22.666166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675255, 31.717201, 22.787617>,  <38.133129, 31.296690, 22.646183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675255, 31.717201, 22.787617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350426, 31.928263, 22.887312>,  <38.155529, 32.054897, 22.947130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350426, 31.928263, 22.887312>,  <38.675255, 31.717201, 22.787617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350426, 31.928263, 22.887312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469723, 0.337614, 0.815707,
		0.346262, 0.779488, -0.522017,
		-0.812073, 0.527651, 0.249240,
		38.106804, 32.086559, 22.962084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866104, 32.457886, 22.807150>,  <38.675255, 31.717201, 22.787617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866104, 32.457886, 22.807150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549301, 32.371605, 23.035604>,  <38.359219, 32.319836, 23.172678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549301, 32.371605, 23.035604>,  <38.866104, 32.457886, 22.807150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549301, 32.371605, 23.035604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520819, 0.249405, 0.816422,
		-0.318546, 0.944071, -0.085190,
		-0.792008, -0.215700, 0.571137,
		38.311699, 32.306896, 23.206945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869179, 32.995262, 23.389763>,  <38.866104, 32.457886, 22.807150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869179, 32.995262, 23.389763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615490, 32.724800, 23.539738>,  <38.463276, 32.562523, 23.629723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615490, 32.724800, 23.539738>,  <38.869179, 32.995262, 23.389763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615490, 32.724800, 23.539738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146577, 0.370997, 0.916993,
		-0.759133, 0.636531, -0.136184,
		-0.634218, -0.676158, 0.374937,
		38.425224, 32.521954, 23.652218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640789, 33.415733, 23.918749>,  <38.869179, 32.995262, 23.389763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640789, 33.415733, 23.918749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535690, 33.039818, 24.006168>,  <38.472633, 32.814270, 24.058620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535690, 33.039818, 24.006168>,  <38.640789, 33.415733, 23.918749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535690, 33.039818, 24.006168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151091, 0.183640, 0.971313,
		-0.952962, 0.288229, 0.093743,
		-0.262745, -0.939788, 0.218550,
		38.456867, 32.757881, 24.071733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282833, 33.486771, 24.541222>,  <38.640789, 33.415733, 23.918749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282833, 33.486771, 24.541222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375259, 33.097710, 24.531771>,  <38.430714, 32.864273, 24.526100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375259, 33.097710, 24.531771>,  <38.282833, 33.486771, 24.541222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375259, 33.097710, 24.531771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246561, 0.035049, 0.968493,
		-0.941178, -0.229610, 0.247916,
		0.231065, -0.972651, -0.023626,
		38.444580, 32.805916, 24.524683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764454, 33.126747, 24.888935>,  <38.282833, 33.486771, 24.541222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764454, 33.126747, 24.888935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107830, 32.922165, 24.904438>,  <38.313854, 32.799416, 24.913740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107830, 32.922165, 24.904438>,  <37.764454, 33.126747, 24.888935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107830, 32.922165, 24.904438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073387, -0.047688, 0.996163,
		-0.507643, -0.857986, -0.078471,
		0.858436, -0.511454, 0.038757,
		38.365360, 32.768730, 24.916065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636028, 32.640285, 25.465084>,  <37.764454, 33.126747, 24.888935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636028, 32.640285, 25.465084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031269, 32.634193, 25.403875>,  <38.268414, 32.630539, 25.367151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031269, 32.634193, 25.403875>,  <37.636028, 32.640285, 25.465084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031269, 32.634193, 25.403875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152653, -0.022931, 0.988014,
		-0.018567, -0.999621, -0.020332,
		0.988105, -0.015240, -0.153021,
		38.327702, 32.629623, 25.357969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842224, 32.111244, 25.929310>,  <37.636028, 32.640285, 25.465084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842224, 32.111244, 25.929310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154213, 32.350761, 25.856556>,  <38.341408, 32.494473, 25.812904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154213, 32.350761, 25.856556>,  <37.842224, 32.111244, 25.929310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154213, 32.350761, 25.856556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190487, 0.049682, 0.980432,
		0.596116, -0.799358, -0.075312,
		0.779974, 0.598797, -0.181883,
		38.388206, 32.530399, 25.801991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362560, 31.928469, 26.438704>,  <37.842224, 32.111244, 25.929310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362560, 31.928469, 26.438704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478573, 32.285931, 26.301727>,  <38.548180, 32.500408, 26.219542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478573, 32.285931, 26.301727>,  <38.362560, 31.928469, 26.438704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478573, 32.285931, 26.301727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359222, 0.229999, 0.904467,
		0.887040, -0.385337, -0.254313,
		0.290033, 0.893653, -0.342440,
		38.565582, 32.554028, 26.198996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090324, 31.985031, 26.615540>,  <38.362560, 31.928469, 26.438704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090324, 31.985031, 26.615540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906769, 32.338142, 26.575296>,  <38.796635, 32.550011, 26.551151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906769, 32.338142, 26.575296>,  <39.090324, 31.985031, 26.615540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906769, 32.338142, 26.575296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078843, 0.153246, 0.985038,
		0.884989, 0.444090, -0.139923,
		-0.458888, 0.882779, -0.100608,
		38.769104, 32.602978, 26.545115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438065, 32.417458, 27.023977>,  <39.090324, 31.985031, 26.615540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438065, 32.417458, 27.023977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098946, 32.626427, 26.987490>,  <38.895473, 32.751808, 26.965597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098946, 32.626427, 26.987490>,  <39.438065, 32.417458, 27.023977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098946, 32.626427, 26.987490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120379, 0.357091, 0.926280,
		0.516484, 0.774313, -0.365629,
		-0.847793, 0.522423, -0.091221,
		38.844608, 32.783154, 26.960123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581577, 33.086926, 27.365755>,  <39.438065, 32.417458, 27.023977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581577, 33.086926, 27.365755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182758, 33.102337, 27.339209>,  <38.943466, 33.111584, 27.323280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182758, 33.102337, 27.339209>,  <39.581577, 33.086926, 27.365755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182758, 33.102337, 27.339209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025432, 0.650071, 0.759448,
		0.072403, 0.758896, -0.647174,
		-0.997051, 0.038527, -0.066367,
		38.883644, 33.113895, 27.319298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320465, 33.824276, 27.230494>,  <39.581577, 33.086926, 27.365755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320465, 33.824276, 27.230494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054760, 33.600929, 27.429287>,  <38.895336, 33.466923, 27.548563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054760, 33.600929, 27.429287>,  <39.320465, 33.824276, 27.230494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054760, 33.600929, 27.429287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164619, 0.757806, 0.631373,
		-0.729150, 0.337583, -0.595296,
		-0.664259, -0.558362, 0.496982,
		38.855484, 33.433422, 27.578382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810143, 34.260399, 27.230833>,  <39.320465, 33.824276, 27.230494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810143, 34.260399, 27.230833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721680, 33.999001, 27.520391>,  <38.668602, 33.842159, 27.694126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721680, 33.999001, 27.520391>,  <38.810143, 34.260399, 27.230833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721680, 33.999001, 27.520391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335757, 0.747922, 0.572608,
		-0.915617, -0.116416, -0.384827,
		-0.221160, -0.653498, 0.723898,
		38.655331, 33.802952, 27.737560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234638, 34.546062, 27.626869>,  <38.810143, 34.260399, 27.230833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234638, 34.546062, 27.626869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356224, 34.251045, 27.868078>,  <38.429176, 34.074036, 28.012804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356224, 34.251045, 27.868078>,  <38.234638, 34.546062, 27.626869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356224, 34.251045, 27.868078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351419, 0.501530, 0.790552,
		-0.885500, -0.452213, -0.106739,
		0.303966, -0.737544, 0.603021,
		38.447414, 34.029781, 28.048985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803764, 34.482388, 28.177454>,  <38.234638, 34.546062, 27.626869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803764, 34.482388, 28.177454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111874, 34.305099, 28.360859>,  <38.296741, 34.198727, 28.470901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111874, 34.305099, 28.360859>,  <37.803764, 34.482388, 28.177454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111874, 34.305099, 28.360859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226919, 0.481440, 0.846595,
		-0.595972, -0.756156, 0.270267,
		0.770276, -0.443219, 0.458511,
		38.342957, 34.172134, 28.498413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604385, 34.260750, 28.916662>,  <37.803764, 34.482388, 28.177454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604385, 34.260750, 28.916662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003708, 34.283405, 28.922070>,  <38.243301, 34.297001, 28.925314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003708, 34.283405, 28.922070>,  <37.604385, 34.260750, 28.916662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003708, 34.283405, 28.922070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030566, 0.312112, 0.949553,
		0.049566, -0.948355, 0.313314,
		0.998303, 0.056642, 0.013517,
		38.303200, 34.300400, 28.926125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825420, 33.972118, 29.618929>,  <37.604385, 34.260750, 28.916662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825420, 33.972118, 29.618929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131939, 34.197609, 29.495632>,  <38.315849, 34.332901, 29.421654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131939, 34.197609, 29.495632>,  <37.825420, 33.972118, 29.618929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131939, 34.197609, 29.495632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139040, 0.322890, 0.936168,
		0.627268, -0.760236, 0.169048,
		0.766292, 0.563723, -0.308242,
		38.361828, 34.366726, 29.403160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228691, 34.009090, 30.154341>,  <37.825420, 33.972118, 29.618929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228691, 34.009090, 30.154341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381222, 34.301506, 29.928007>,  <38.472740, 34.476955, 29.792208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381222, 34.301506, 29.928007>,  <38.228691, 34.009090, 30.154341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381222, 34.301506, 29.928007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419278, 0.408741, 0.810640,
		0.823892, -0.546357, -0.150648,
		0.381323, 0.731043, -0.565834,
		38.495617, 34.520821, 29.758257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938145, 34.076908, 30.435633>,  <38.228691, 34.009090, 30.154341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938145, 34.076908, 30.435633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857700, 34.419949, 30.246286>,  <38.809433, 34.625774, 30.132679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857700, 34.419949, 30.246286>,  <38.938145, 34.076908, 30.435633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857700, 34.419949, 30.246286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318820, 0.514234, 0.796189,
		0.926234, 0.009201, -0.376837,
		-0.201108, 0.857601, -0.473367,
		38.797367, 34.677227, 30.104277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476547, 34.518631, 30.432430>,  <38.938145, 34.076908, 30.435633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476547, 34.518631, 30.432430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189133, 34.789875, 30.370630>,  <39.016685, 34.952621, 30.333549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189133, 34.789875, 30.370630>,  <39.476547, 34.518631, 30.432430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189133, 34.789875, 30.370630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294311, 0.497738, 0.815866,
		0.630151, 0.540756, -0.557219,
		-0.718533, 0.678115, -0.154500,
		38.973572, 34.993309, 30.324280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741028, 35.276455, 30.435015>,  <39.476547, 34.518631, 30.432430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741028, 35.276455, 30.435015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349148, 35.295097, 30.513014>,  <39.114021, 35.306282, 30.559814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349148, 35.295097, 30.513014>,  <39.741028, 35.276455, 30.435015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349148, 35.295097, 30.513014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190066, 0.525438, 0.829331,
		-0.063809, 0.849554, -0.523627,
		-0.979696, 0.046605, 0.194999,
		39.055241, 35.309078, 30.571514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504883, 36.063400, 30.525627>,  <39.741028, 35.276455, 30.435015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504883, 36.063400, 30.525627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268513, 35.810226, 30.725706>,  <39.126690, 35.658321, 30.845755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268513, 35.810226, 30.725706>,  <39.504883, 36.063400, 30.525627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268513, 35.810226, 30.725706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077873, 0.572388, 0.816277,
		-0.802958, 0.521311, -0.288951,
		-0.590926, -0.632935, 0.500199,
		39.091236, 35.620346, 30.875767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172794, 36.464211, 31.116400>,  <39.504883, 36.063400, 30.525627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172794, 36.464211, 31.116400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096584, 36.093346, 31.245441>,  <39.050858, 35.870827, 31.322866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096584, 36.093346, 31.245441>,  <39.172794, 36.464211, 31.116400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096584, 36.093346, 31.245441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123893, 0.348707, 0.929007,
		-0.973833, 0.137029, -0.181306,
		-0.190524, -0.927160, 0.322606,
		39.039429, 35.815197, 31.342224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739273, 36.613785, 31.719656>,  <39.172794, 36.464211, 31.116400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739273, 36.613785, 31.719656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910732, 36.253937, 31.753000>,  <39.013607, 36.038029, 31.773006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910732, 36.253937, 31.753000>,  <38.739273, 36.613785, 31.719656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910732, 36.253937, 31.753000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311018, 0.233563, 0.921258,
		-0.848249, -0.368972, 0.379913,
		0.428652, -0.899616, 0.083363,
		39.039330, 35.984051, 31.778009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495575, 36.370419, 32.409592>,  <38.739273, 36.613785, 31.719656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495575, 36.370419, 32.409592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839409, 36.179165, 32.337475>,  <39.045708, 36.064415, 32.294205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839409, 36.179165, 32.337475>,  <38.495575, 36.370419, 32.409592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839409, 36.179165, 32.337475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211568, 0.011842, 0.977292,
		-0.465138, -0.878209, 0.111336,
		0.859585, -0.478130, -0.180293,
		39.097286, 36.035725, 32.283386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473331, 35.909737, 32.892605>,  <38.495575, 36.370419, 32.409592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473331, 35.909737, 32.892605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856800, 35.900818, 32.779148>,  <39.086880, 35.895466, 32.711075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856800, 35.900818, 32.779148>,  <38.473331, 35.909737, 32.892605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856800, 35.900818, 32.779148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280730, -0.088028, 0.955742,
		-0.046275, -0.995869, -0.078131,
		0.958670, -0.022294, -0.283643,
		39.144402, 35.894127, 32.694054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705524, 35.422222, 33.294456>,  <38.473331, 35.909737, 32.892605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705524, 35.422222, 33.294456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029530, 35.619343, 33.167316>,  <39.223934, 35.737614, 33.091034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029530, 35.619343, 33.167316>,  <38.705524, 35.422222, 33.294456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029530, 35.619343, 33.167316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454638, -0.185402, 0.871166,
		0.370382, -0.850160, -0.374225,
		0.810013, 0.492801, -0.317846,
		39.272533, 35.767181, 33.071964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215805, 34.981846, 33.521923>,  <38.705524, 35.422222, 33.294456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215805, 34.981846, 33.521923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404049, 35.328945, 33.457996>,  <39.516994, 35.537205, 33.419640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404049, 35.328945, 33.457996>,  <39.215805, 34.981846, 33.521923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404049, 35.328945, 33.457996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425663, -0.064624, 0.902571,
		0.772876, -0.492786, -0.399781,
		0.470609, 0.867748, -0.159814,
		39.545231, 35.589268, 33.410053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955036, 34.930313, 33.669762>,  <39.215805, 34.981846, 33.521923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955036, 34.930313, 33.669762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902153, 35.325760, 33.698479>,  <39.870422, 35.563030, 33.715710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902153, 35.325760, 33.698479>,  <39.955036, 34.930313, 33.669762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902153, 35.325760, 33.698479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374216, -0.017289, 0.927181,
		0.917870, 0.149444, -0.367671,
		-0.132205, 0.988619, 0.071793,
		39.862492, 35.622345, 33.720016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590462, 35.286884, 33.828720>,  <39.955036, 34.930313, 33.669762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590462, 35.286884, 33.828720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308731, 35.535992, 33.965008>,  <40.139694, 35.685455, 34.046780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308731, 35.535992, 33.965008>,  <40.590462, 35.286884, 33.828720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308731, 35.535992, 33.965008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569399, 0.208996, 0.795050,
		0.423921, 0.753979, -0.501803,
		-0.704326, 0.622765, 0.340717,
		40.097435, 35.722820, 34.067223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968540, 35.822247, 34.066952>,  <40.590462, 35.286884, 33.828720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968540, 35.822247, 34.066952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601730, 35.894058, 34.209408>,  <40.381645, 35.937145, 34.294880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601730, 35.894058, 34.209408>,  <40.968540, 35.822247, 34.066952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601730, 35.894058, 34.209408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394149, 0.271526, 0.878021,
		0.060928, 0.945539, -0.319757,
		-0.917025, 0.179528, 0.356139,
		40.326622, 35.947918, 34.316250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013535, 36.416420, 34.351036>,  <40.968540, 35.822247, 34.066952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013535, 36.416420, 34.351036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700035, 36.229240, 34.514385>,  <40.511936, 36.116932, 34.612396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700035, 36.229240, 34.514385>,  <41.013535, 36.416420, 34.351036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700035, 36.229240, 34.514385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304450, 0.283647, 0.909315,
		-0.541346, 0.837001, -0.079840,
		-0.783744, -0.467947, 0.408376,
		40.464912, 36.088856, 34.636898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911514, 36.730373, 34.992722>,  <41.013535, 36.416420, 34.351036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911514, 36.730373, 34.992722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664978, 36.420692, 35.050323>,  <40.517056, 36.234886, 35.084885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664978, 36.420692, 35.050323>,  <40.911514, 36.730373, 34.992722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664978, 36.420692, 35.050323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118196, 0.089844, 0.988917,
		-0.778556, 0.626534, 0.036132,
		-0.616344, -0.774198, 0.144002,
		40.480076, 36.188435, 35.093525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626816, 36.897110, 35.562447>,  <40.911514, 36.730373, 34.992722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626816, 36.897110, 35.562447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575363, 36.500706, 35.547699>,  <40.544491, 36.262863, 35.538853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575363, 36.500706, 35.547699>,  <40.626816, 36.897110, 35.562447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575363, 36.500706, 35.547699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080691, -0.047510, 0.995606,
		-0.988405, 0.125088, 0.086076,
		-0.128628, -0.991007, -0.036866,
		40.536774, 36.203403, 35.536640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072971, 36.561977, 36.106693>,  <40.626816, 36.897110, 35.562447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072971, 36.561977, 36.106693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361683, 36.303707, 36.006985>,  <40.534912, 36.148746, 35.947159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361683, 36.303707, 36.006985>,  <40.072971, 36.561977, 36.106693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361683, 36.303707, 36.006985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160492, -0.194196, 0.967745,
		-0.673257, -0.738505, -0.036541,
		0.721781, -0.645677, -0.249268,
		40.578217, 36.110004, 35.932205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028202, 36.060863, 36.649796>,  <40.072971, 36.561977, 36.106693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028202, 36.060863, 36.649796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360916, 35.941319, 36.462688>,  <40.560547, 35.869591, 36.350426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360916, 35.941319, 36.462688>,  <40.028202, 36.060863, 36.649796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360916, 35.941319, 36.462688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381688, -0.303911, 0.872899,
		-0.403040, -0.904609, -0.138716,
		0.831789, -0.298867, -0.467766,
		40.610455, 35.851658, 36.322357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200592, 35.394096, 36.879581>,  <40.028202, 36.060863, 36.649796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200592, 35.394096, 36.879581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547707, 35.531055, 36.735523>,  <40.755978, 35.613232, 36.649090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547707, 35.531055, 36.735523>,  <40.200592, 35.394096, 36.879581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547707, 35.531055, 36.735523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459998, -0.279305, 0.842847,
		0.187999, -0.897080, -0.399881,
		0.867790, 0.342399, -0.360146,
		40.808044, 35.633774, 36.627480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755760, 34.882145, 37.045525>,  <40.200592, 35.394096, 36.879581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755760, 34.882145, 37.045525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943253, 35.227856, 36.972515>,  <41.055748, 35.435284, 36.928707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943253, 35.227856, 36.972515>,  <40.755760, 34.882145, 37.045525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943253, 35.227856, 36.972515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692508, -0.231259, 0.683339,
		0.548384, -0.446703, -0.706917,
		0.468731, 0.864277, -0.182526,
		41.083870, 35.487141, 36.917759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433571, 34.705254, 36.915722>,  <40.755760, 34.882145, 37.045525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433571, 34.705254, 36.915722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455788, 35.088017, 37.029736>,  <41.469116, 35.317673, 37.098145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455788, 35.088017, 37.029736>,  <41.433571, 34.705254, 36.915722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455788, 35.088017, 37.029736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711018, -0.238326, 0.661554,
		0.700977, 0.165923, -0.693614,
		0.055539, 0.956906, 0.285035,
		41.472450, 35.375088, 37.115246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848999, 34.786736, 37.458897>,  <41.433571, 34.705254, 36.915722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848999, 34.786736, 37.458897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738468, 35.160404, 37.549206>,  <41.672150, 35.384605, 37.603390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738468, 35.160404, 37.549206>,  <41.848999, 34.786736, 37.458897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738468, 35.160404, 37.549206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543821, -0.041707, 0.838164,
		0.792402, 0.354391, -0.496495,
		-0.276330, 0.934167, 0.225773,
		41.655571, 35.440655, 37.616940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420364, 35.148083, 37.841846>,  <41.848999, 34.786736, 37.458897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420364, 35.148083, 37.841846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065933, 35.304958, 37.940681>,  <41.853275, 35.399082, 37.999985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065933, 35.304958, 37.940681>,  <42.420364, 35.148083, 37.841846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065933, 35.304958, 37.940681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242912, -0.061132, 0.968120,
		0.394788, 0.917852, -0.041099,
		-0.886079, 0.392186, 0.247092,
		41.800110, 35.422615, 38.014809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535652, 35.628143, 38.334332>,  <42.420364, 35.148083, 37.841846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535652, 35.628143, 38.334332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148285, 35.569813, 38.415234>,  <41.915867, 35.534817, 38.463776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148285, 35.569813, 38.415234>,  <42.535652, 35.628143, 38.334332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148285, 35.569813, 38.415234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191503, 0.084492, 0.977848,
		-0.159682, 0.985696, -0.053898,
		-0.968415, -0.145823, 0.202256,
		41.857761, 35.526066, 38.475910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309769, 36.162125, 38.814377>,  <42.535652, 35.628143, 38.334332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309769, 36.162125, 38.814377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084385, 35.831707, 38.819420>,  <41.949154, 35.633457, 38.822445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084385, 35.831707, 38.819420>,  <42.309769, 36.162125, 38.814377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084385, 35.831707, 38.819420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094050, -0.048979, 0.994362,
		-0.820773, 0.561469, 0.105288,
		-0.563460, -0.826047, 0.012606,
		41.915348, 35.583893, 38.823200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744518, 36.326069, 39.153366>,  <42.309769, 36.162125, 38.814377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744518, 36.326069, 39.153366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726013, 35.926533, 39.158604>,  <41.714909, 35.686810, 39.161747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726013, 35.926533, 39.158604>,  <41.744518, 36.326069, 39.153366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726013, 35.926533, 39.158604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340786, 0.028106, 0.939721,
		-0.939002, 0.039015, -0.341692,
		-0.046267, -0.998843, 0.013095,
		41.712132, 35.626881, 39.162533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033749, 36.137318, 39.348785>,  <41.744518, 36.326069, 39.153366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033749, 36.137318, 39.348785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332756, 35.886982, 39.437817>,  <41.512161, 35.736782, 39.491234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332756, 35.886982, 39.437817>,  <41.033749, 36.137318, 39.348785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332756, 35.886982, 39.437817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283272, 0.002726, 0.959036,
		-0.600808, -0.779948, -0.175245,
		0.747520, -0.625839, 0.222575,
		41.557011, 35.699230, 39.504589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667633, 35.856152, 39.826809>,  <41.033749, 36.137318, 39.348785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667633, 35.856152, 39.826809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041428, 35.740040, 39.909252>,  <41.265705, 35.670372, 39.958717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041428, 35.740040, 39.909252>,  <40.667633, 35.856152, 39.826809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041428, 35.740040, 39.909252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211748, 0.012205, 0.977248,
		-0.286193, -0.956863, -0.050062,
		0.934482, -0.290282, 0.206107,
		41.321774, 35.652954, 39.971085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500038, 35.173386, 40.125664>,  <40.667633, 35.856152, 39.826809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500038, 35.173386, 40.125664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835251, 35.357414, 40.242992>,  <41.036381, 35.467831, 40.313389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835251, 35.357414, 40.242992>,  <40.500038, 35.173386, 40.125664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835251, 35.357414, 40.242992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177952, -0.277726, 0.944034,
		0.515783, -0.843330, -0.150874,
		0.838034, 0.460069, 0.293319,
		41.086662, 35.495434, 40.330990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833801, 34.737991, 40.487339>,  <40.500038, 35.173386, 40.125664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833801, 34.737991, 40.487339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935627, 35.109386, 40.595490>,  <40.996723, 35.332222, 40.660381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935627, 35.109386, 40.595490>,  <40.833801, 34.737991, 40.487339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935627, 35.109386, 40.595490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132827, -0.310511, 0.941244,
		0.957890, -0.203694, -0.202374,
		0.254565, 0.928489, 0.270379,
		41.011997, 35.387932, 40.676605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399738, 34.559746, 40.781826>,  <40.833801, 34.737991, 40.487339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399738, 34.559746, 40.781826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300533, 34.919487, 40.925858>,  <41.241009, 35.135330, 41.012276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300533, 34.919487, 40.925858>,  <41.399738, 34.559746, 40.781826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300533, 34.919487, 40.925858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188856, -0.319679, 0.928514,
		0.950170, 0.298287, -0.090563,
		-0.248013, 0.899350, 0.360083,
		41.226128, 35.189293, 41.033882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873074, 34.554440, 41.407135>,  <41.399738, 34.559746, 40.781826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873074, 34.554440, 41.407135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695782, 34.911819, 41.436237>,  <41.589405, 35.126247, 41.453697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695782, 34.911819, 41.436237>,  <41.873074, 34.554440, 41.407135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695782, 34.911819, 41.436237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276282, 0.058948, 0.959267,
		0.852769, 0.445278, -0.272972,
		-0.443231, 0.893450, 0.072753,
		41.562813, 35.179855, 41.458065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361019, 35.035934, 41.746532>,  <41.873074, 34.554440, 41.407135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361019, 35.035934, 41.746532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971516, 35.119362, 41.782944>,  <41.737812, 35.169418, 41.804790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971516, 35.119362, 41.782944>,  <42.361019, 35.035934, 41.746532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971516, 35.119362, 41.782944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024478, -0.301677, 0.953096,
		0.226244, 0.930318, 0.288657,
		-0.973763, 0.208567, 0.091025,
		41.679386, 35.181931, 41.810249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204937, 35.435772, 42.362034>,  <42.361019, 35.035934, 41.746532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204937, 35.435772, 42.362034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837387, 35.292164, 42.296585>,  <41.616856, 35.205997, 42.257317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837387, 35.292164, 42.296585>,  <42.204937, 35.435772, 42.362034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837387, 35.292164, 42.296585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150335, -0.064816, 0.986508,
		-0.364784, 0.931075, 0.005584,
		-0.918875, -0.359023, -0.163617,
		41.561726, 35.184456, 42.247501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812637, 35.797676, 42.806843>,  <42.204937, 35.435772, 42.362034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812637, 35.797676, 42.806843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634197, 35.454571, 42.704674>,  <41.527134, 35.248707, 42.643372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634197, 35.454571, 42.704674>,  <41.812637, 35.797676, 42.806843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634197, 35.454571, 42.704674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204231, -0.180304, 0.962175,
		-0.871370, 0.481391, -0.094748,
		-0.446098, -0.857761, -0.255426,
		41.500366, 35.197243, 42.628044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042801, 35.852497, 42.816196>,  <41.812637, 35.797676, 42.806843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042801, 35.852497, 42.816196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186588, 35.489861, 42.904621>,  <41.272861, 35.272278, 42.957676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186588, 35.489861, 42.904621>,  <41.042801, 35.852497, 42.816196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186588, 35.489861, 42.904621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291609, 0.115900, 0.949490,
		-0.886423, -0.405777, -0.222709,
		0.359469, -0.906594, 0.221065,
		41.294430, 35.217884, 42.970940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484856, 35.296192, 43.079788>,  <41.042801, 35.852497, 42.816196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484856, 35.296192, 43.079788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856701, 35.269310, 43.224731>,  <41.079807, 35.253181, 43.311699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856701, 35.269310, 43.224731>,  <40.484856, 35.296192, 43.079788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856701, 35.269310, 43.224731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366707, -0.070670, 0.927649,
		-0.036726, -0.995234, -0.090337,
		0.929611, -0.067197, 0.362363,
		41.135586, 35.249149, 43.333439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467815, 34.652023, 43.469273>,  <40.484856, 35.296192, 43.079788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467815, 34.652023, 43.469273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708134, 34.951443, 43.581493>,  <40.852325, 35.131096, 43.648827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708134, 34.951443, 43.581493>,  <40.467815, 34.652023, 43.469273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708134, 34.951443, 43.581493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359869, -0.060122, 0.931064,
		0.713817, -0.660345, 0.233259,
		0.600799, 0.748551, 0.280554,
		40.888374, 35.176006, 43.665661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041172, 34.494381, 43.972118>,  <40.467815, 34.652023, 43.469273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041172, 34.494381, 43.972118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841946, 34.840023, 44.001133>,  <40.722412, 35.047409, 44.018543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841946, 34.840023, 44.001133>,  <41.041172, 34.494381, 43.972118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841946, 34.840023, 44.001133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348631, -0.276137, 0.895658,
		0.793970, 0.420806, 0.438787,
		-0.498063, 0.864101, 0.072539,
		40.692528, 35.099255, 44.022896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762413, 34.619377, 43.718636>,  <41.041172, 34.494381, 43.972118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762413, 34.619377, 43.718636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408039, 34.480541, 43.595581>,  <41.195415, 34.397240, 43.521748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408039, 34.480541, 43.595581>,  <41.762413, 34.619377, 43.718636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408039, 34.480541, 43.595581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223219, 0.262337, -0.938804,
		0.406559, -0.900392, -0.154936,
		-0.885937, -0.347095, -0.307640,
		41.142258, 34.376411, 43.503288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821842, 34.112740, 43.176823>,  <41.762413, 34.619377, 43.718636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821842, 34.112740, 43.176823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452843, 34.265770, 43.156300>,  <41.231441, 34.357590, 43.143986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452843, 34.265770, 43.156300>,  <41.821842, 34.112740, 43.176823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452843, 34.265770, 43.156300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120005, 0.157914, -0.980134,
		-0.366873, -0.910329, -0.191586,
		-0.922498, 0.382575, -0.051309,
		41.176094, 34.380543, 43.140907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374599, 33.952721, 42.692974>,  <41.821842, 34.112740, 43.176823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374599, 33.952721, 42.692974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231167, 34.318573, 42.767670>,  <41.145107, 34.538086, 42.812489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231167, 34.318573, 42.767670>,  <41.374599, 33.952721, 42.692974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231167, 34.318573, 42.767670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048387, 0.217985, -0.974752,
		-0.932244, -0.340490, -0.122421,
		-0.358579, 0.914630, 0.186740,
		41.123592, 34.592960, 42.823692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747501, 34.142235, 42.320862>,  <41.374599, 33.952721, 42.692974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747501, 34.142235, 42.320862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975117, 34.457413, 42.414959>,  <41.111687, 34.646519, 42.471416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975117, 34.457413, 42.414959>,  <40.747501, 34.142235, 42.320862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975117, 34.457413, 42.414959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055361, 0.248712, -0.966994,
		-0.820448, 0.563276, 0.097904,
		0.569035, 0.787948, 0.235239,
		41.145828, 34.693798, 42.485531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442024, 34.622383, 42.029934>,  <40.747501, 34.142235, 42.320862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442024, 34.622383, 42.029934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796764, 34.793598, 42.099541>,  <41.009609, 34.896328, 42.141304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796764, 34.793598, 42.099541>,  <40.442024, 34.622383, 42.029934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796764, 34.793598, 42.099541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087236, 0.524943, -0.846655,
		-0.453749, 0.735675, 0.502886,
		0.886849, 0.428038, 0.174015,
		41.062820, 34.922009, 42.151745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362217, 35.282749, 42.025566>,  <40.442024, 34.622383, 42.029934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362217, 35.282749, 42.025566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746220, 35.249031, 41.918777>,  <40.976624, 35.228798, 41.854702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746220, 35.249031, 41.918777>,  <40.362217, 35.282749, 42.025566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746220, 35.249031, 41.918777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165589, 0.597947, -0.784244,
		0.225748, 0.797090, 0.560076,
		0.960009, -0.084299, -0.266975,
		41.034222, 35.223740, 41.838684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582237, 35.931309, 41.870167>,  <40.362217, 35.282749, 42.025566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582237, 35.931309, 41.870167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840252, 35.673149, 41.706512>,  <40.995060, 35.518253, 41.608322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840252, 35.673149, 41.706512>,  <40.582237, 35.931309, 41.870167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840252, 35.673149, 41.706512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080959, 0.590113, -0.803251,
		0.759850, 0.485004, 0.432896,
		0.645037, -0.645397, -0.409132,
		41.033764, 35.479530, 41.583775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992393, 36.360165, 41.516434>,  <40.582237, 35.931309, 41.870167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992393, 36.360165, 41.516434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054947, 35.998898, 41.356522>,  <41.092480, 35.782135, 41.260574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054947, 35.998898, 41.356522>,  <40.992393, 36.360165, 41.516434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054947, 35.998898, 41.356522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074733, 0.392779, -0.916592,
		0.984865, 0.173220, -0.006071,
		0.156387, -0.903172, -0.399779,
		41.101864, 35.727947, 41.236588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462879, 36.533516, 41.003994>,  <40.992393, 36.360165, 41.516434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462879, 36.533516, 41.003994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305950, 36.180115, 40.901623>,  <41.211792, 35.968075, 40.840199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305950, 36.180115, 40.901623>,  <41.462879, 36.533516, 41.003994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305950, 36.180115, 40.901623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009510, 0.274327, -0.961589,
		0.919778, -0.379689, -0.099223,
		-0.392324, -0.883505, -0.255931,
		41.188251, 35.915062, 40.824844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913578, 36.337040, 40.383377>,  <41.462879, 36.533516, 41.003994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913578, 36.337040, 40.383377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554535, 36.166107, 40.426613>,  <41.339108, 36.063549, 40.452553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554535, 36.166107, 40.426613>,  <41.913578, 36.337040, 40.383377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554535, 36.166107, 40.426613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201089, 0.178773, -0.963122,
		0.392251, -0.886243, -0.246400,
		-0.897609, -0.427334, 0.108090,
		41.285252, 36.037907, 40.459042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246311, 35.703976, 39.946003>,  <41.913578, 36.337040, 40.383377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246311, 35.703976, 39.946003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921040, 35.478733, 40.004864>,  <41.725876, 35.343586, 40.040180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921040, 35.478733, 40.004864>,  <42.246311, 35.703976, 39.946003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921040, 35.478733, 40.004864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042999, -0.194022, -0.980054,
		0.580429, -0.803283, 0.133561,
		-0.813175, -0.563109, 0.147156,
		41.677086, 35.309799, 40.049011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189728, 34.941936, 39.652977>,  <42.246311, 35.703976, 39.946003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189728, 34.941936, 39.652977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815018, 35.081886, 39.655479>,  <41.590191, 35.165855, 39.656979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815018, 35.081886, 39.655479>,  <42.189728, 34.941936, 39.652977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815018, 35.081886, 39.655479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104750, -0.263328, -0.959002,
		-0.333886, -0.899024, 0.283329,
		-0.936775, 0.349877, 0.006251,
		41.533985, 35.186848, 39.657356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630676, 34.339981, 39.339371>,  <42.189728, 34.941936, 39.652977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630676, 34.339981, 39.339371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633030, 34.733093, 39.265503>,  <41.634441, 34.968960, 39.221184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633030, 34.733093, 39.265503>,  <41.630676, 34.339981, 39.339371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633030, 34.733093, 39.265503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150850, -0.183430, -0.971389,
		-0.988539, -0.022140, -0.149332,
		0.005885, 0.982783, -0.184667,
		41.634796, 35.027927, 39.210102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264744, 34.393021, 38.680508>,  <41.630676, 34.339981, 39.339371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264744, 34.393021, 38.680508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460968, 34.738529, 38.726562>,  <41.578701, 34.945835, 38.754196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460968, 34.738529, 38.726562>,  <41.264744, 34.393021, 38.680508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460968, 34.738529, 38.726562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294789, -0.040153, -0.954718,
		-0.820033, 0.502286, -0.274327,
		0.490557, 0.863769, 0.115141,
		41.608135, 34.997662, 38.761105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935814, 34.889904, 39.144009>,  <41.264744, 34.393021, 38.680508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935814, 34.889904, 39.144009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165356, 35.199738, 39.037643>,  <41.303082, 35.385639, 38.973824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165356, 35.199738, 39.037643>,  <40.935814, 34.889904, 39.144009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165356, 35.199738, 39.037643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339878, -0.070161, -0.937849,
		-0.745103, 0.628562, 0.223004,
		0.573850, 0.774588, -0.265911,
		41.337509, 35.432114, 38.957870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572693, 35.420467, 38.650753>,  <40.935814, 34.889904, 39.144009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572693, 35.420467, 38.650753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963223, 35.479496, 38.587494>,  <41.197540, 35.514915, 38.549538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963223, 35.479496, 38.587494>,  <40.572693, 35.420467, 38.650753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963223, 35.479496, 38.587494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183621, 0.179013, -0.966560,
		-0.114331, 0.972716, 0.201873,
		0.976326, 0.147576, -0.158145,
		41.256119, 35.523769, 38.540051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694847, 36.041374, 38.274223>,  <40.572693, 35.420467, 38.650753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694847, 36.041374, 38.274223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035618, 35.852108, 38.184486>,  <41.240082, 35.738548, 38.130646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035618, 35.852108, 38.184486>,  <40.694847, 36.041374, 38.274223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035618, 35.852108, 38.184486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146732, 0.195552, -0.969654,
		0.502681, 0.858994, 0.097167,
		0.851928, -0.473169, -0.224342,
		41.291195, 35.710155, 38.117184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049854, 36.480068, 37.822792>,  <40.694847, 36.041374, 38.274223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049854, 36.480068, 37.822792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217037, 36.124844, 37.746212>,  <41.317348, 35.911709, 37.700264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217037, 36.124844, 37.746212>,  <41.049854, 36.480068, 37.822792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217037, 36.124844, 37.746212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047039, 0.189304, -0.980791,
		0.907248, 0.418935, 0.037348,
		0.417958, -0.888064, -0.191452,
		41.342426, 35.858425, 37.688778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658428, 36.572235, 37.457294>,  <41.049854, 36.480068, 37.822792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658428, 36.572235, 37.457294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534184, 36.203709, 37.363750>,  <41.459637, 35.982594, 37.307625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534184, 36.203709, 37.363750>,  <41.658428, 36.572235, 37.457294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534184, 36.203709, 37.363750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136315, 0.286661, -0.948285,
		0.940712, -0.262671, -0.214630,
		-0.310612, -0.921320, -0.233860,
		41.440998, 35.927311, 37.293594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820427, 36.504959, 36.807575>,  <41.658428, 36.572235, 37.457294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820427, 36.504959, 36.807575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578934, 36.186844, 36.829552>,  <41.434036, 35.995975, 36.842735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578934, 36.186844, 36.829552>,  <41.820427, 36.504959, 36.807575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578934, 36.186844, 36.829552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460832, 0.291938, -0.838097,
		0.650492, -0.531305, -0.542748,
		-0.603734, -0.795291, 0.054939,
		41.397812, 35.948257, 36.846035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904743, 36.159588, 36.087891>,  <41.820427, 36.504959, 36.807575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904743, 36.159588, 36.087891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574486, 35.993286, 36.240444>,  <41.376331, 35.893505, 36.331978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574486, 35.993286, 36.240444>,  <41.904743, 36.159588, 36.087891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574486, 35.993286, 36.240444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353190, -0.146256, -0.924049,
		0.439959, -0.897639, -0.026085,
		-0.825647, -0.415756, 0.381384,
		41.326790, 35.868561, 36.354858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695232, 35.608295, 35.651714>,  <41.904743, 36.159588, 36.087891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695232, 35.608295, 35.651714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364624, 35.667675, 35.868904>,  <41.166260, 35.703304, 35.999218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364624, 35.667675, 35.868904>,  <41.695232, 35.608295, 35.651714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364624, 35.667675, 35.868904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557257, -0.079519, -0.826524,
		-0.079519, -0.985718, 0.148448,
		0.826524, -0.148448, -0.542975,
		41.116669, 35.712208, 36.031796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216064, 35.094437, 35.459877>,  <41.695232, 35.608295, 35.651714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216064, 35.094437, 35.459877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031651, 35.429008, 35.578426>,  <40.921001, 35.629749, 35.649555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031651, 35.429008, 35.578426>,  <41.216064, 35.094437, 35.459877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031651, 35.429008, 35.578426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568607, -0.022040, -0.822314,
		-0.681274, -0.547634, 0.485760,
		-0.461033, 0.836428, 0.296373,
		40.893341, 35.679935, 35.667339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794647, 34.782906, 35.789940>,  <41.216064, 35.094437, 35.459877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794647, 34.782906, 35.789940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178268, 34.673275, 35.761356>,  <42.408440, 34.607494, 35.744205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178268, 34.673275, 35.761356>,  <41.794647, 34.782906, 35.789940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178268, 34.673275, 35.761356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069368, 0.017328, -0.997441,
		0.274617, 0.961551, -0.002394,
		0.959048, -0.274080, -0.071460,
		42.465984, 34.591049, 35.739918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277260, 35.266361, 35.347404>,  <41.794647, 34.782906, 35.789940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277260, 35.266361, 35.347404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386421, 34.881618, 35.339886>,  <42.451920, 34.650772, 35.335373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386421, 34.881618, 35.339886>,  <42.277260, 35.266361, 35.347404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386421, 34.881618, 35.339886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219060, -0.043105, -0.974759,
		0.936770, 0.270131, -0.222468,
		0.272902, -0.961858, -0.018796,
		42.468292, 34.593060, 35.334248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488674, 35.253407, 34.689957>,  <42.277260, 35.266361, 35.347404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488674, 35.253407, 34.689957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375900, 34.904240, 34.849224>,  <42.308235, 34.694740, 34.944782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375900, 34.904240, 34.849224>,  <42.488674, 35.253407, 34.689957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375900, 34.904240, 34.849224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266005, -0.327614, -0.906593,
		0.921821, -0.361513, -0.139833,
		-0.281934, -0.872913, 0.398166,
		42.291321, 34.642365, 34.968674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378948, 35.430222, 34.026188>,  <42.488674, 35.253407, 34.689957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378948, 35.430222, 34.026188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522907, 35.200985, 33.731697>,  <42.609283, 35.063442, 33.555000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522907, 35.200985, 33.731697>,  <42.378948, 35.430222, 34.026188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522907, 35.200985, 33.731697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520131, 0.531859, -0.668274,
		0.774554, 0.623448, -0.106667,
		0.359902, -0.573095, -0.736229,
		42.630878, 35.029057, 33.510830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765125, 35.900642, 33.436172>,  <42.378948, 35.430222, 34.026188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765125, 35.900642, 33.436172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586342, 35.556683, 33.337543>,  <42.479073, 35.350307, 33.278366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586342, 35.556683, 33.337543>,  <42.765125, 35.900642, 33.436172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586342, 35.556683, 33.337543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563523, 0.484727, -0.668941,
		0.694745, -0.160036, -0.701226,
		-0.446958, -0.859900, -0.246577,
		42.452255, 35.298714, 33.263569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799892, 35.736603, 32.695202>,  <42.765125, 35.900642, 33.436172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799892, 35.736603, 32.695202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469051, 35.625614, 32.890717>,  <42.270546, 35.559021, 33.008026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469051, 35.625614, 32.890717>,  <42.799892, 35.736603, 32.695202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469051, 35.625614, 32.890717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556140, 0.529837, -0.640298,
		-0.081309, -0.801424, -0.592544,
		-0.827102, -0.277476, 0.488784,
		42.220921, 35.542370, 33.037354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301292, 36.182236, 32.653214>,  <42.799892, 35.736603, 32.695202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301292, 36.182236, 32.653214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454147, 36.311264, 32.999603>,  <43.545860, 36.388680, 33.207439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454147, 36.311264, 32.999603>,  <43.301292, 36.182236, 32.653214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454147, 36.311264, 32.999603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923134, -0.090298, -0.373724,
		-0.042357, 0.942228, -0.332284,
		0.382138, 0.322572, 0.865978,
		43.568790, 36.408035, 33.259396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713734, 36.812622, 32.706242>,  <43.301292, 36.182236, 32.653214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713734, 36.812622, 32.706242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841496, 36.512733, 32.938068>,  <43.918152, 36.332802, 33.077164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841496, 36.512733, 32.938068>,  <43.713734, 36.812622, 32.706242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841496, 36.512733, 32.938068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888782, 0.024856, -0.457655,
		0.328708, 0.661287, 0.674278,
		0.319402, -0.749721, 0.579570,
		43.937317, 36.287819, 33.111938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308281, 36.983379, 33.114635>,  <43.713734, 36.812622, 32.706242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308281, 36.983379, 33.114635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307442, 36.591839, 33.032814>,  <44.306938, 36.356915, 32.983719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307442, 36.591839, 33.032814>,  <44.308281, 36.983379, 33.114635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307442, 36.591839, 33.032814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952884, 0.060089, -0.297322,
		0.303326, -0.195545, 0.932607,
		-0.002100, -0.978852, -0.204558,
		44.306812, 36.298183, 32.971447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804195, 36.505707, 33.579906>,  <44.308281, 36.983379, 33.114635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804195, 36.505707, 33.579906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758350, 36.437187, 33.188496>,  <44.730843, 36.396076, 32.953648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758350, 36.437187, 33.188496>,  <44.804195, 36.505707, 33.579906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758350, 36.437187, 33.188496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976564, 0.161204, -0.142607,
		0.182171, -0.971941, 0.148808,
		-0.114617, -0.171299, -0.978529,
		44.723965, 36.385796, 32.894936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264687, 36.024658, 33.433891>,  <44.804195, 36.505707, 33.579906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264687, 36.024658, 33.433891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170017, 36.249420, 33.116840>,  <45.113216, 36.384277, 32.926609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170017, 36.249420, 33.116840>,  <45.264687, 36.024658, 33.433891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170017, 36.249420, 33.116840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942356, 0.331367, -0.046473,
		0.236536, -0.757933, -0.607937,
		-0.236674, 0.561901, -0.792624,
		45.099014, 36.417992, 32.879055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607506, 35.858620, 32.751347>,  <45.264687, 36.024658, 33.433891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607506, 35.858620, 32.751347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534836, 36.249992, 32.790672>,  <45.491234, 36.484818, 32.814270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534836, 36.249992, 32.790672>,  <45.607506, 35.858620, 32.751347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534836, 36.249992, 32.790672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975483, 0.191941, -0.107661,
		-0.124210, 0.076348, -0.989314,
		-0.181670, 0.978432, 0.098317,
		45.480335, 36.543522, 32.820168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933712, 36.164165, 32.225903>,  <45.607506, 35.858620, 32.751347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933712, 36.164165, 32.225903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891052, 36.377441, 32.561600>,  <45.865456, 36.505409, 32.763020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891052, 36.377441, 32.561600>,  <45.933712, 36.164165, 32.225903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891052, 36.377441, 32.561600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978509, 0.206100, -0.006590,
		-0.176482, 0.820504, -0.543716,
		-0.106652, 0.533194, 0.839243,
		45.859058, 36.537399, 32.813374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.594463, 36.435516, 32.273293>,  <45.933712, 36.164165, 32.225903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.594463, 36.435516, 32.273293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439877, 36.529728, 32.629982>,  <46.347126, 36.586254, 32.843994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439877, 36.529728, 32.629982>,  <46.594463, 36.435516, 32.273293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439877, 36.529728, 32.629982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910228, 0.253350, 0.327565,
		-0.148767, 0.938264, -0.312297,
		-0.386463, 0.235530, 0.891724,
		46.323936, 36.600388, 32.897499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.038063, 37.033928, 32.410774>,  <46.594463, 36.435516, 32.273293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.038063, 37.033928, 32.410774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.848137, 36.861794, 32.717854>,  <46.734180, 36.758514, 32.902103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.848137, 36.861794, 32.717854>,  <47.038063, 37.033928, 32.410774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.848137, 36.861794, 32.717854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752799, 0.253275, 0.607573,
		-0.455898, 0.866410, 0.203695,
		-0.474817, -0.430332, 0.767700,
		46.705692, 36.732693, 32.948162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.906414, 37.478214, 33.061035>,  <47.038063, 37.033928, 32.410774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.906414, 37.478214, 33.061035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952888, 37.097076, 33.173172>,  <46.980774, 36.868393, 33.240452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952888, 37.097076, 33.173172>,  <46.906414, 37.478214, 33.061035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.952888, 37.097076, 33.173172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897180, 0.221774, 0.381947,
		-0.426108, 0.207138, 0.880639,
		0.116187, -0.952843, 0.280340,
		46.987743, 36.811222, 33.257275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031342, 37.397671, 33.839615>,  <46.906414, 37.478214, 33.061035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031342, 37.397671, 33.839615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209484, 37.133297, 33.598011>,  <47.316368, 36.974674, 33.453049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209484, 37.133297, 33.598011>,  <47.031342, 37.397671, 33.839615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.209484, 37.133297, 33.598011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793887, -0.020443, 0.607721,
		-0.414010, -0.750168, 0.515601,
		0.445352, -0.660931, -0.604013,
		47.343090, 36.935017, 33.416809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249638, 36.693520, 34.169132>,  <47.031342, 37.397671, 33.839615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249638, 36.693520, 34.169132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492321, 36.766209, 33.859581>,  <47.637932, 36.809822, 33.673851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492321, 36.766209, 33.859581>,  <47.249638, 36.693520, 34.169132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.492321, 36.766209, 33.859581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792244, -0.058362, 0.607407,
		0.065214, -0.981617, -0.179377,
		0.606710, 0.181722, -0.773874,
		47.674335, 36.820724, 33.627419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.216541, 35.974365, 34.404297>,  <47.249638, 36.693520, 34.169132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.216541, 35.974365, 34.404297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.510792, 35.889183, 34.661510>,  <47.687344, 35.838074, 34.815838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.510792, 35.889183, 34.661510>,  <47.216541, 35.974365, 34.404297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.510792, 35.889183, 34.661510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220278, -0.972908, -0.070197,
		0.640566, -0.090008, -0.762610,
		0.735631, -0.212952, 0.643039,
		47.731480, 35.825298, 34.854424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.751682, 35.485188, 34.139278>,  <47.216541, 35.974365, 34.404297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.751682, 35.485188, 34.139278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677986, 35.465652, 34.531944>,  <47.633770, 35.453930, 34.767544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677986, 35.465652, 34.531944>,  <47.751682, 35.485188, 34.139278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.677986, 35.465652, 34.531944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239240, -0.966498, -0.092988,
		0.953320, -0.251986, 0.166384,
		-0.184242, -0.048842, 0.981667,
		47.622715, 35.451000, 34.826443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.173546, 34.973309, 34.513828>,  <47.751682, 35.485188, 34.139278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.173546, 34.973309, 34.513828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826954, 35.045612, 34.699966>,  <47.618999, 35.088993, 34.811649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826954, 35.045612, 34.699966>,  <48.173546, 34.973309, 34.513828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.826954, 35.045612, 34.699966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242458, -0.967199, -0.075766,
		0.436388, -0.178477, 0.881880,
		-0.866475, 0.180755, 0.465347,
		47.567013, 35.099838, 34.839569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.086540, 31.039101, 28.365238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753685, 31.234844, 28.260878>,  <35.553970, 31.352291, 28.198261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753685, 31.234844, 28.260878>,  <36.086540, 31.039101, 28.365238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753685, 31.234844, 28.260878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050779, 0.401246, 0.914562,
		0.552235, 0.774292, -0.309044,
		-0.832140, 0.489360, -0.260901,
		35.504044, 31.381653, 28.182608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130268, 31.839630, 28.500616>,  <36.086540, 31.039101, 28.365238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130268, 31.839630, 28.500616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.746113, 31.728838, 28.488352>,  <35.515621, 31.662363, 28.480993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.746113, 31.728838, 28.488352>,  <36.130268, 31.839630, 28.500616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746113, 31.728838, 28.488352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153818, 0.435134, 0.887130,
		-0.232376, 0.856703, -0.460501,
		-0.960386, -0.276981, -0.030661,
		35.457996, 31.645744, 28.479153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664577, 32.434795, 28.675383>,  <36.130268, 31.839630, 28.500616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664577, 32.434795, 28.675383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.427608, 32.127300, 28.771788>,  <35.285427, 31.942804, 28.829630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.427608, 32.127300, 28.771788>,  <35.664577, 32.434795, 28.675383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427608, 32.127300, 28.771788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198190, 0.429030, 0.881280,
		-0.780872, 0.474320, -0.406521,
		-0.592418, -0.768735, 0.241012,
		35.249882, 31.896679, 28.844091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027351, 32.661968, 28.934584>,  <35.664577, 32.434795, 28.675383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027351, 32.661968, 28.934584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.017231, 32.299263, 29.102934>,  <35.011158, 32.081638, 29.203945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.017231, 32.299263, 29.102934>,  <35.027351, 32.661968, 28.934584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017231, 32.299263, 29.102934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138633, 0.420127, 0.896814,
		-0.990021, -0.035655, -0.136338,
		-0.025303, -0.906765, 0.420877,
		35.009640, 32.027233, 29.229197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440689, 32.674725, 29.442511>,  <35.027351, 32.661968, 28.934584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440689, 32.674725, 29.442511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.643639, 32.355263, 29.571953>,  <34.765408, 32.163586, 29.649618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.643639, 32.355263, 29.571953>,  <34.440689, 32.674725, 29.442511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643639, 32.355263, 29.571953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085648, 0.326933, 0.941158,
		-0.857462, -0.505231, 0.097472,
		0.507369, -0.798659, 0.323604,
		34.795849, 32.115665, 29.669035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062721, 32.383438, 30.091118>,  <34.440689, 32.674725, 29.442511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062721, 32.383438, 30.091118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.443718, 32.261715, 30.086214>,  <34.672318, 32.188679, 30.083271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.443718, 32.261715, 30.086214>,  <34.062721, 32.383438, 30.091118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443718, 32.261715, 30.086214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066989, 0.170063, 0.983154,
		-0.297100, -0.937269, 0.182370,
		0.952493, -0.304312, -0.012261,
		34.729465, 32.170422, 30.082535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137592, 31.995594, 30.666025>,  <34.062721, 32.383438, 30.091118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137592, 31.995594, 30.666025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.512703, 32.089718, 30.563883>,  <34.737770, 32.146191, 30.502598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.512703, 32.089718, 30.563883>,  <34.137592, 31.995594, 30.666025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512703, 32.089718, 30.563883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278250, -0.069280, 0.958007,
		0.207738, -0.969448, -0.130444,
		0.937775, 0.235310, -0.255357,
		34.794037, 32.160313, 30.487276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396130, 31.621193, 31.146210>,  <34.137592, 31.995594, 30.666025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396130, 31.621193, 31.146210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657383, 31.892492, 31.011513>,  <34.814137, 32.055271, 30.930695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657383, 31.892492, 31.011513>,  <34.396130, 31.621193, 31.146210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657383, 31.892492, 31.011513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283692, 0.193143, 0.939263,
		0.702094, -0.708994, -0.066266,
		0.653133, 0.678249, -0.336741,
		34.853325, 32.095966, 30.910490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083332, 31.513126, 31.500177>,  <34.396130, 31.621193, 31.146210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083332, 31.513126, 31.500177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110779, 31.882488, 31.349121>,  <35.127247, 32.104107, 31.258488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110779, 31.882488, 31.349121>,  <35.083332, 31.513126, 31.500177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110779, 31.882488, 31.349121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417779, 0.317147, 0.851398,
		0.905954, -0.216190, -0.364019,
		0.068616, 0.923407, -0.377640,
		35.131363, 32.159512, 31.235828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759922, 31.759418, 31.488527>,  <35.083332, 31.513126, 31.500177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759922, 31.759418, 31.488527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539238, 32.092880, 31.498558>,  <35.406826, 32.292957, 31.504576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539238, 32.092880, 31.498558>,  <35.759922, 31.759418, 31.488527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539238, 32.092880, 31.498558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419367, 0.251296, 0.872343,
		0.720933, 0.491800, -0.488251,
		-0.551714, 0.833657, 0.025077,
		35.373722, 32.342976, 31.506081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267906, 32.423386, 31.438097>,  <35.759922, 31.759418, 31.488527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267906, 32.423386, 31.438097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901482, 32.496155, 31.581057>,  <35.681625, 32.539818, 31.666832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901482, 32.496155, 31.581057>,  <36.267906, 32.423386, 31.438097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901482, 32.496155, 31.581057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396915, 0.283832, 0.872868,
		0.057355, 0.941458, -0.332216,
		-0.916062, 0.181925, 0.357400,
		35.626663, 32.550732, 31.688276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390217, 32.980801, 31.817734>,  <36.267906, 32.423386, 31.438097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390217, 32.980801, 31.817734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024536, 32.907806, 31.962475>,  <35.805126, 32.864010, 32.049320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024536, 32.907806, 31.962475>,  <36.390217, 32.980801, 31.817734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024536, 32.907806, 31.962475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291697, 0.323553, 0.900126,
		-0.281336, 0.928447, -0.242563,
		-0.914201, -0.182483, 0.361852,
		35.750275, 32.853062, 32.071030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231266, 33.581314, 32.204453>,  <36.390217, 32.980801, 31.817734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231266, 33.581314, 32.204453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993107, 33.299026, 32.358051>,  <35.850212, 33.129654, 32.450211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993107, 33.299026, 32.358051>,  <36.231266, 33.581314, 32.204453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993107, 33.299026, 32.358051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138520, 0.380616, 0.914300,
		-0.791396, 0.597567, -0.128863,
		-0.595402, -0.705723, 0.383993,
		35.814487, 33.087311, 32.473248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905823, 33.979359, 32.683910>,  <36.231266, 33.581314, 32.204453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905823, 33.979359, 32.683910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.847355, 33.597324, 32.787014>,  <35.812275, 33.368103, 32.848877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.847355, 33.597324, 32.787014>,  <35.905823, 33.979359, 32.683910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847355, 33.597324, 32.787014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065250, 0.250682, 0.965868,
		-0.987105, 0.158002, 0.025677,
		-0.146173, -0.955088, 0.257760,
		35.803505, 33.310799, 32.864342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399940, 33.979462, 33.216766>,  <35.905823, 33.979359, 32.683910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399940, 33.979462, 33.216766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.582214, 33.627937, 33.273384>,  <35.691578, 33.417023, 33.307354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.582214, 33.627937, 33.273384>,  <35.399940, 33.979462, 33.216766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582214, 33.627937, 33.273384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011526, 0.164826, 0.986255,
		-0.890065, -0.447792, 0.085239,
		0.455687, -0.878814, 0.141545,
		35.718922, 33.364292, 33.315849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065136, 33.575996, 33.775131>,  <35.399940, 33.979462, 33.216766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065136, 33.575996, 33.775131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437035, 33.429817, 33.757130>,  <35.660172, 33.342110, 33.746330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437035, 33.429817, 33.757130>,  <35.065136, 33.575996, 33.775131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437035, 33.429817, 33.757130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124092, 0.195919, 0.972737,
		-0.346668, -0.909980, 0.227504,
		0.929743, -0.365448, -0.045002,
		35.715958, 33.320183, 33.743629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262444, 33.242859, 34.467529>,  <35.065136, 33.575996, 33.775131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262444, 33.242859, 34.467529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614117, 33.284420, 34.281525>,  <35.825119, 33.309357, 34.169922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614117, 33.284420, 34.281525>,  <35.262444, 33.242859, 34.467529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614117, 33.284420, 34.281525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452061, 0.126538, 0.882966,
		0.150598, -0.986504, 0.064273,
		0.879182, 0.103918, -0.465017,
		35.877872, 33.315590, 34.142021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703667, 32.845181, 34.939270>,  <35.262444, 33.242859, 34.467529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703667, 32.845181, 34.939270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937927, 33.086090, 34.722282>,  <36.078484, 33.230637, 34.592091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937927, 33.086090, 34.722282>,  <35.703667, 32.845181, 34.939270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937927, 33.086090, 34.722282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675851, 0.006632, 0.737008,
		0.447480, -0.798260, -0.403165,
		0.585651, 0.602276, -0.542473,
		36.113621, 33.266773, 34.559540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457443, 32.583420, 34.965492>,  <35.703667, 32.845181, 34.939270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457443, 32.583420, 34.965492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486927, 32.969906, 34.866703>,  <36.504616, 33.201797, 34.807430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486927, 32.969906, 34.866703>,  <36.457443, 32.583420, 34.965492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486927, 32.969906, 34.866703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785006, 0.096531, 0.611922,
		0.615088, -0.238978, -0.751369,
		0.073705, 0.966215, -0.246974,
		36.509037, 33.259769, 34.792610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150322, 32.788300, 34.765709>,  <36.457443, 32.583420, 34.965492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150322, 32.788300, 34.765709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982422, 33.131332, 34.884617>,  <36.881683, 33.337151, 34.955959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982422, 33.131332, 34.884617>,  <37.150322, 32.788300, 34.765709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982422, 33.131332, 34.884617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688172, 0.087155, 0.720294,
		0.591801, 0.506915, -0.626745,
		-0.419752, 0.857579, 0.297267,
		36.856495, 33.388607, 34.973797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719715, 33.195885, 35.014137>,  <37.150322, 32.788300, 34.765709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719715, 33.195885, 35.014137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393166, 33.349808, 35.186394>,  <37.197235, 33.442162, 35.289749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393166, 33.349808, 35.186394>,  <37.719715, 33.195885, 35.014137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393166, 33.349808, 35.186394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559975, 0.345013, 0.753255,
		0.141284, 0.856088, -0.497145,
		-0.816374, 0.384811, 0.430643,
		37.148254, 33.465252, 35.315586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934586, 33.816872, 35.258621>,  <37.719715, 33.195885, 35.014137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934586, 33.816872, 35.258621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.609425, 33.718052, 35.469582>,  <37.414326, 33.658760, 35.596157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.609425, 33.718052, 35.469582>,  <37.934586, 33.816872, 35.258621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609425, 33.718052, 35.469582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487391, 0.207130, 0.848261,
		-0.318804, 0.946606, -0.047967,
		-0.812905, -0.247050, 0.527402,
		37.365555, 33.643936, 35.627804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602959, 33.474098, 34.970795>,  <37.934586, 33.816872, 35.258621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602959, 33.474098, 34.970795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994888, 33.440895, 34.898075>,  <39.230045, 33.420975, 34.854446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994888, 33.440895, 34.898075>,  <38.602959, 33.474098, 34.970795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994888, 33.440895, 34.898075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184196, -0.022200, -0.982639,
		0.077528, 0.996302, -0.037042,
		0.979827, -0.083005, -0.181794,
		39.288837, 33.415993, 34.843536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824070, 33.906586, 34.251987>,  <38.602959, 33.474098, 34.970795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824070, 33.906586, 34.251987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.093601, 33.620617, 34.326649>,  <39.255322, 33.449036, 34.371445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.093601, 33.620617, 34.326649>,  <38.824070, 33.906586, 34.251987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093601, 33.620617, 34.326649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114709, -0.148329, -0.982263,
		0.729926, 0.683291, -0.017941,
		0.673832, -0.714921, 0.186649,
		39.295750, 33.406139, 34.382645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197636, 33.870831, 33.633823>,  <38.824070, 33.906586, 34.251987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197636, 33.870831, 33.633823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289707, 33.515926, 33.793716>,  <39.344952, 33.302982, 33.889652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289707, 33.515926, 33.793716>,  <39.197636, 33.870831, 33.633823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289707, 33.515926, 33.793716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268490, -0.336918, -0.902441,
		0.935376, 0.315051, 0.160667,
		0.230183, -0.887259, 0.399733,
		39.358761, 33.249748, 33.913635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835552, 33.652264, 33.355400>,  <39.197636, 33.870831, 33.633823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835552, 33.652264, 33.355400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.650627, 33.323536, 33.488594>,  <39.539673, 33.126301, 33.568512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.650627, 33.323536, 33.488594>,  <39.835552, 33.652264, 33.355400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650627, 33.323536, 33.488594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277862, -0.490881, -0.825729,
		0.842058, -0.289218, 0.455292,
		-0.462310, -0.821820, 0.332988,
		39.511932, 33.076988, 33.588490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288219, 33.100021, 33.193516>,  <39.835552, 33.652264, 33.355400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288219, 33.100021, 33.193516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.938858, 32.920517, 33.269173>,  <39.729240, 32.812813, 33.314568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.938858, 32.920517, 33.269173>,  <40.288219, 33.100021, 33.193516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938858, 32.920517, 33.269173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103412, -0.550440, -0.828446,
		0.475885, -0.704011, 0.527165,
		-0.873407, -0.448760, 0.189143,
		39.676834, 32.785889, 33.325916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374931, 32.322269, 33.007248>,  <40.288219, 33.100021, 33.193516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374931, 32.322269, 33.007248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.981525, 32.394318, 33.013744>,  <39.745483, 32.437546, 33.017643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.981525, 32.394318, 33.013744>,  <40.374931, 32.322269, 33.007248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981525, 32.394318, 33.013744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066373, -0.275952, -0.958877,
		-0.168231, -0.944144, 0.283357,
		-0.983511, 0.180120, 0.016242,
		39.686474, 32.448353, 33.018616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021584, 31.714397, 32.726318>,  <40.374931, 32.322269, 33.007248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021584, 31.714397, 32.726318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785934, 32.033318, 32.673782>,  <39.644547, 32.224670, 32.642262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785934, 32.033318, 32.673782>,  <40.021584, 31.714397, 32.726318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785934, 32.033318, 32.673782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214617, -0.311088, -0.925831,
		-0.779022, -0.517241, 0.354383,
		-0.589122, 0.797299, -0.131336,
		39.609200, 32.272507, 32.634380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326733, 31.399044, 32.615353>,  <40.021584, 31.714397, 32.726318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326733, 31.399044, 32.615353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.254005, 31.777746, 32.509068>,  <39.210369, 32.004967, 32.445297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.254005, 31.777746, 32.509068>,  <39.326733, 31.399044, 32.615353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254005, 31.777746, 32.509068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342824, -0.314288, -0.885265,
		-0.921637, -0.069863, 0.381712,
		-0.181815, 0.946754, -0.265708,
		39.199459, 32.061771, 32.429356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593655, 31.364756, 32.346493>,  <39.326733, 31.399044, 32.615353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593655, 31.364756, 32.346493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.760178, 31.689930, 32.183605>,  <38.860092, 31.885035, 32.085873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.760178, 31.689930, 32.183605>,  <38.593655, 31.364756, 32.346493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760178, 31.689930, 32.183605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396439, -0.240763, -0.885928,
		-0.818246, 0.530252, 0.222049,
		0.416304, 0.812936, -0.407216,
		38.885071, 31.933811, 32.061440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096840, 31.570147, 31.803745>,  <38.593655, 31.364756, 32.346493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096840, 31.570147, 31.803745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.433666, 31.777483, 31.744089>,  <38.635761, 31.901884, 31.708296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.433666, 31.777483, 31.744089>,  <38.096840, 31.570147, 31.803745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433666, 31.777483, 31.744089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152066, -0.037144, -0.987672,
		-0.517490, 0.854367, 0.047544,
		0.842069, 0.518341, -0.149142,
		38.686287, 31.932985, 31.699347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922485, 32.132889, 31.415482>,  <38.096840, 31.570147, 31.803745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922485, 32.132889, 31.415482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315735, 32.079342, 31.365597>,  <38.551685, 32.047215, 31.335667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315735, 32.079342, 31.365597>,  <37.922485, 32.132889, 31.415482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315735, 32.079342, 31.365597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135092, -0.071462, -0.988253,
		0.123386, 0.988419, -0.088341,
		0.983121, -0.133871, -0.124710,
		38.610672, 32.039181, 31.328184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021702, 32.508842, 30.886848>,  <37.922485, 32.132889, 31.415482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021702, 32.508842, 30.886848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323559, 32.246426, 30.882502>,  <38.504673, 32.088974, 30.879894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323559, 32.246426, 30.882502>,  <38.021702, 32.508842, 30.886848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323559, 32.246426, 30.882502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224547, -0.242664, -0.943765,
		0.616516, 0.714646, -0.330438,
		0.754643, -0.656046, -0.010865,
		38.549953, 32.049610, 30.879242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223316, 32.606846, 30.229914>,  <38.021702, 32.508842, 30.886848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223316, 32.606846, 30.229914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354279, 32.263260, 30.387384>,  <38.432858, 32.057106, 30.481867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354279, 32.263260, 30.387384>,  <38.223316, 32.606846, 30.229914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354279, 32.263260, 30.387384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194480, -0.468979, -0.861531,
		0.924652, 0.205510, -0.320599,
		0.327407, -0.858967, 0.393675,
		38.452499, 32.005569, 30.505487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849373, 32.397339, 29.792343>,  <38.223316, 32.606846, 30.229914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849373, 32.397339, 29.792343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.658329, 32.099377, 29.978674>,  <38.543701, 31.920599, 30.090473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.658329, 32.099377, 29.978674>,  <38.849373, 32.397339, 29.792343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658329, 32.099377, 29.978674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132328, -0.463171, -0.876334,
		0.868549, -0.480188, 0.122643,
		-0.477610, -0.744910, 0.465829,
		38.515045, 31.875904, 30.118423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044991, 31.777475, 29.257204>,  <38.849373, 32.397339, 29.792343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044991, 31.777475, 29.257204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804962, 31.612211, 29.531200>,  <38.660946, 31.513054, 29.695599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804962, 31.612211, 29.531200>,  <39.044991, 31.777475, 29.257204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804962, 31.612211, 29.531200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367361, -0.618333, -0.694774,
		0.710604, -0.668554, 0.219267,
		-0.600074, -0.413159, 0.684990,
		38.624939, 31.488264, 29.736698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241100, 31.014202, 29.326355>,  <39.044991, 31.777475, 29.257204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241100, 31.014202, 29.326355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861790, 31.051172, 29.447832>,  <38.634205, 31.073355, 29.520720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861790, 31.051172, 29.447832>,  <39.241100, 31.014202, 29.326355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861790, 31.051172, 29.447832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311131, -0.460491, -0.831352,
		0.063011, -0.882840, 0.465429,
		-0.948276, 0.092425, 0.303695,
		38.577309, 31.078899, 29.538940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938564, 30.381178, 29.174847>,  <39.241100, 31.014202, 29.326355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938564, 30.381178, 29.174847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.645390, 30.647915, 29.228712>,  <38.469486, 30.807957, 29.261032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.645390, 30.647915, 29.228712>,  <38.938564, 30.381178, 29.174847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645390, 30.647915, 29.228712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468449, -0.351162, -0.810704,
		-0.493322, -0.657274, 0.569759,
		-0.732932, 0.666840, 0.134663,
		38.425510, 30.847967, 29.269112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305695, 29.991528, 29.197809>,  <38.938564, 30.381178, 29.174847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305695, 29.991528, 29.197809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196781, 30.358864, 29.082911>,  <38.131432, 30.579266, 29.013971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196781, 30.358864, 29.082911>,  <38.305695, 29.991528, 29.197809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196781, 30.358864, 29.082911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384661, -0.377518, -0.842328,
		-0.881985, -0.118859, 0.456042,
		-0.272282, 0.918343, -0.287244,
		38.115097, 30.634367, 28.996737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.575737, 29.941715, 28.973862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723679, 30.276403, 28.812315>,  <37.812443, 30.477217, 28.715387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723679, 30.276403, 28.812315>,  <37.575737, 29.941715, 28.973862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723679, 30.276403, 28.812315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535435, -0.163289, -0.828641,
		-0.759288, 0.522719, 0.387617,
		0.369853, 0.836720, -0.403866,
		37.834633, 30.527420, 28.691154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037331, 30.238520, 28.621208>,  <37.575737, 29.941715, 28.973862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037331, 30.238520, 28.621208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370228, 30.381802, 28.451942>,  <37.569965, 30.467772, 28.350384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370228, 30.381802, 28.451942>,  <37.037331, 30.238520, 28.621208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370228, 30.381802, 28.451942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417386, -0.097575, -0.903476,
		-0.364919, 0.928531, 0.068303,
		0.832240, 0.358204, -0.423163,
		37.619900, 30.489264, 28.324993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801605, 30.848261, 28.160843>,  <37.037331, 30.238520, 28.621208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801605, 30.848261, 28.160843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154560, 30.721659, 28.021574>,  <37.366333, 30.645699, 27.938013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154560, 30.721659, 28.021574>,  <36.801605, 30.848261, 28.160843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154560, 30.721659, 28.021574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352756, 0.044711, -0.934646,
		0.311387, 0.947537, -0.072197,
		0.882384, -0.316505, -0.348172,
		37.419273, 30.626707, 27.917122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005074, 31.258493, 27.625364>,  <36.801605, 30.848261, 28.160843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005074, 31.258493, 27.625364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.208504, 30.920240, 27.560543>,  <37.330563, 30.717289, 27.521650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.208504, 30.920240, 27.560543>,  <37.005074, 31.258493, 27.625364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208504, 30.920240, 27.560543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270222, 0.021944, -0.962548,
		0.817516, 0.533317, -0.217348,
		0.508573, -0.845631, -0.162054,
		37.361076, 30.666552, 27.511927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376560, 31.384089, 26.946819>,  <37.005074, 31.258493, 27.625364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376560, 31.384089, 26.946819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395977, 30.988699, 27.004185>,  <37.407627, 30.751465, 27.038603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395977, 30.988699, 27.004185>,  <37.376560, 31.384089, 26.946819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395977, 30.988699, 27.004185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239235, -0.150909, -0.959163,
		0.969747, 0.012255, -0.243803,
		0.048547, -0.988471, 0.143412,
		37.410542, 30.692158, 27.047209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896889, 31.075544, 26.380346>,  <37.376560, 31.384089, 26.946819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896889, 31.075544, 26.380346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656761, 30.790318, 26.525206>,  <37.512684, 30.619181, 26.612122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656761, 30.790318, 26.525206>,  <37.896889, 31.075544, 26.380346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656761, 30.790318, 26.525206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152160, -0.342718, -0.927034,
		0.785152, -0.611621, 0.097240,
		-0.600319, -0.713067, 0.362150,
		37.476665, 30.576397, 26.633850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960629, 30.505226, 25.986553>,  <37.896889, 31.075544, 26.380346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960629, 30.505226, 25.986553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612743, 30.416182, 26.162754>,  <37.404011, 30.362755, 26.268475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612743, 30.416182, 26.162754>,  <37.960629, 30.505226, 25.986553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612743, 30.416182, 26.162754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307707, -0.453252, -0.836588,
		0.385893, -0.863137, 0.325700,
		-0.869714, -0.222613, 0.440500,
		37.351830, 30.349398, 26.294905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912071, 29.893396, 25.777687>,  <37.960629, 30.505226, 25.986553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912071, 29.893396, 25.777687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545544, 29.993704, 25.902573>,  <37.325626, 30.053888, 25.977503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545544, 29.993704, 25.902573>,  <37.912071, 29.893396, 25.777687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545544, 29.993704, 25.902573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393102, -0.414618, -0.820708,
		-0.076356, -0.874762, 0.478499,
		-0.916319, 0.250765, 0.312212,
		37.270649, 30.068933, 25.996237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376038, 29.319361, 25.562269>,  <37.912071, 29.893396, 25.777687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376038, 29.319361, 25.562269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144363, 29.633938, 25.648106>,  <37.005360, 29.822683, 25.699608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144363, 29.633938, 25.648106>,  <37.376038, 29.319361, 25.562269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144363, 29.633938, 25.648106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490082, -0.125562, -0.862586,
		-0.651429, -0.604767, 0.458145,
		-0.579189, 0.786442, 0.214591,
		36.970608, 29.869871, 25.712482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742031, 28.972748, 25.570824>,  <37.376038, 29.319361, 25.562269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742031, 28.972748, 25.570824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673069, 29.355486, 25.477255>,  <36.631691, 29.585129, 25.421114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673069, 29.355486, 25.477255>,  <36.742031, 28.972748, 25.570824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673069, 29.355486, 25.477255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519965, -0.290100, -0.803417,
		-0.836607, -0.016886, 0.547543,
		-0.172409, 0.956847, -0.233920,
		36.621346, 29.642540, 25.407080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038857, 29.005156, 25.323311>,  <36.742031, 28.972748, 25.570824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038857, 29.005156, 25.323311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166489, 29.367601, 25.212208>,  <36.243069, 29.585070, 25.145546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166489, 29.367601, 25.212208>,  <36.038857, 29.005156, 25.323311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166489, 29.367601, 25.212208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513412, -0.081082, -0.854303,
		-0.796617, 0.415190, 0.439339,
		0.319076, 0.906114, -0.277755,
		36.262211, 29.639435, 25.128881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488266, 29.216005, 25.011541>,  <36.038857, 29.005156, 25.323311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488266, 29.216005, 25.011541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771152, 29.460617, 24.869627>,  <35.940884, 29.607384, 24.784477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771152, 29.460617, 24.869627>,  <35.488266, 29.216005, 25.011541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771152, 29.460617, 24.869627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435198, -0.018931, -0.900136,
		-0.557175, 0.790996, 0.252747,
		0.707219, 0.611528, -0.354788,
		35.983318, 29.644075, 24.763191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192039, 29.751112, 24.576397>,  <35.488266, 29.216005, 25.011541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192039, 29.751112, 24.576397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574905, 29.757504, 24.460762>,  <35.804626, 29.761339, 24.391380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574905, 29.757504, 24.460762>,  <35.192039, 29.751112, 24.576397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574905, 29.757504, 24.460762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287524, 0.169785, -0.942604,
		0.034020, 0.985352, 0.167107,
		0.957169, 0.015980, -0.289089,
		35.862057, 29.762297, 24.374035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123100, 29.990244, 23.945333>,  <35.192039, 29.751112, 24.576397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123100, 29.990244, 23.945333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502594, 29.877186, 23.888750>,  <35.730289, 29.809351, 23.854799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502594, 29.877186, 23.888750>,  <35.123100, 29.990244, 23.945333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502594, 29.877186, 23.888750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077855, 0.224784, -0.971293,
		0.306330, 0.932514, 0.191255,
		0.948736, -0.282646, -0.141459,
		35.787216, 29.792393, 23.846312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549141, 30.462910, 23.556173>,  <35.123100, 29.990244, 23.945333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549141, 30.462910, 23.556173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761448, 30.129675, 23.493883>,  <35.888832, 29.929733, 23.456509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761448, 30.129675, 23.493883>,  <35.549141, 30.462910, 23.556173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761448, 30.129675, 23.493883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087923, 0.236878, -0.967553,
		0.842946, 0.499851, 0.198974,
		0.530765, -0.833089, -0.155727,
		35.920677, 29.879747, 23.447165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046833, 30.693611, 22.980215>,  <35.549141, 30.462910, 23.556173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046833, 30.693611, 22.980215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033058, 30.293955, 22.989429>,  <36.024796, 30.054161, 22.994959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033058, 30.293955, 22.989429>,  <36.046833, 30.693611, 22.980215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033058, 30.293955, 22.989429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060083, -0.025078, -0.997878,
		0.997599, -0.032977, 0.060895,
		-0.034434, -0.999142, 0.023036,
		36.022728, 29.994213, 22.996340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593853, 30.466187, 22.558472>,  <36.046833, 30.693611, 22.980215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593853, 30.466187, 22.558472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328636, 30.167738, 22.582720>,  <36.169506, 29.988668, 22.597269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328636, 30.167738, 22.582720>,  <36.593853, 30.466187, 22.558472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328636, 30.167738, 22.582720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151100, 0.054080, -0.987038,
		0.733170, -0.663612, -0.148596,
		-0.663046, -0.746120, 0.060622,
		36.129723, 29.943903, 22.600906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739960, 30.057507, 22.027721>,  <36.593853, 30.466187, 22.558472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739960, 30.057507, 22.027721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.376541, 29.910431, 22.107067>,  <36.158489, 29.822186, 22.154675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.376541, 29.910431, 22.107067>,  <36.739960, 30.057507, 22.027721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376541, 29.910431, 22.107067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150810, -0.154148, -0.976471,
		0.389616, -0.917084, 0.084599,
		-0.908546, -0.367690, 0.198364,
		36.103977, 29.800123, 22.166576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657524, 29.406452, 21.632004>,  <36.739960, 30.057507, 22.027721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657524, 29.406452, 21.632004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.278030, 29.492331, 21.724791>,  <36.050335, 29.543858, 21.780462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.278030, 29.492331, 21.724791>,  <36.657524, 29.406452, 21.632004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278030, 29.492331, 21.724791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244662, -0.034195, -0.969005,
		-0.200111, -0.976082, 0.084970,
		-0.948734, 0.214697, 0.231968,
		35.993412, 29.556740, 21.794380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128510, 28.940432, 21.329258>,  <36.657524, 29.406452, 21.632004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128510, 28.940432, 21.329258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933300, 29.284575, 21.388069>,  <35.816174, 29.491060, 21.423355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933300, 29.284575, 21.388069>,  <36.128510, 28.940432, 21.329258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933300, 29.284575, 21.388069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414501, -0.080205, -0.906508,
		-0.768130, -0.503338, 0.395761,
		-0.488021, 0.860359, 0.147026,
		35.786892, 29.542683, 21.432177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481770, 28.808313, 20.987488>,  <36.128510, 28.940432, 21.329258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481770, 28.808313, 20.987488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510693, 29.204720, 21.032495>,  <35.528046, 29.442564, 21.059500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510693, 29.204720, 21.032495>,  <35.481770, 28.808313, 20.987488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510693, 29.204720, 21.032495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127488, 0.121075, -0.984423,
		-0.989201, 0.056837, 0.135097,
		0.072308, 0.991015, 0.112521,
		35.532387, 29.502024, 21.066252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904137, 29.109192, 20.609934>,  <35.481770, 28.808313, 20.987488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904137, 29.109192, 20.609934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147934, 29.424374, 20.644911>,  <35.294212, 29.613483, 20.665897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147934, 29.424374, 20.644911>,  <34.904137, 29.109192, 20.609934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147934, 29.424374, 20.644911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008805, 0.103561, -0.994584,
		-0.792742, 0.606962, 0.056182,
		0.609493, 0.787954, 0.087441,
		35.330784, 29.660759, 20.671143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570042, 29.688166, 20.184994>,  <34.904137, 29.109192, 20.609934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570042, 29.688166, 20.184994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.966591, 29.686310, 20.237387>,  <35.204521, 29.685196, 20.268824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.966591, 29.686310, 20.237387>,  <34.570042, 29.688166, 20.184994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966591, 29.686310, 20.237387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131050, 0.019311, -0.991188,
		0.002068, 0.999803, 0.019752,
		0.991374, -0.004638, 0.130985,
		35.264004, 29.684919, 20.276682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937729, 29.676371, 20.769032>,  <34.570042, 29.688166, 20.184994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937729, 29.676371, 20.769032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858078, 29.991028, 20.535265>,  <33.810287, 30.179821, 20.395004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858078, 29.991028, 20.535265>,  <33.937729, 29.676371, 20.769032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858078, 29.991028, 20.535265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249646, 0.535965, 0.806485,
		0.947642, 0.306491, 0.089656,
		-0.199128, 0.786642, -0.584417,
		33.798340, 30.227020, 20.359940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290401, 30.070269, 21.110163>,  <33.937729, 29.676371, 20.769032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290401, 30.070269, 21.110163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.019398, 30.258240, 20.883837>,  <33.856796, 30.371021, 20.748041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.019398, 30.258240, 20.883837>,  <34.290401, 30.070269, 21.110163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019398, 30.258240, 20.883837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187647, 0.633388, 0.750738,
		0.711172, 0.614808, -0.340948,
		-0.677512, 0.469927, -0.565815,
		33.816143, 30.399218, 20.714092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507008, 30.825718, 20.916368>,  <34.290401, 30.070269, 21.110163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507008, 30.825718, 20.916368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.111607, 30.772060, 20.944302>,  <33.874367, 30.739866, 20.961061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.111607, 30.772060, 20.944302>,  <34.507008, 30.825718, 20.916368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111607, 30.772060, 20.944302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042612, 0.690090, 0.722468,
		-0.145106, 0.711183, -0.687869,
		-0.988498, -0.134145, 0.069831,
		33.815056, 30.731817, 20.965252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186188, 31.512613, 21.035023>,  <34.507008, 30.825718, 20.916368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186188, 31.512613, 21.035023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.878395, 31.286896, 21.154667>,  <33.693718, 31.151464, 21.226454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.878395, 31.286896, 21.154667>,  <34.186188, 31.512613, 21.035023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878395, 31.286896, 21.154667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061679, 0.531804, 0.844618,
		-0.635683, 0.631470, -0.444019,
		-0.769482, -0.564296, 0.299111,
		33.647549, 31.117607, 21.244400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823879, 31.993809, 21.441580>,  <34.186188, 31.512613, 21.035023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823879, 31.993809, 21.441580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.666283, 31.638727, 21.536869>,  <33.571724, 31.425678, 21.594042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.666283, 31.638727, 21.536869>,  <33.823879, 31.993809, 21.441580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666283, 31.638727, 21.536869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147173, 0.316776, 0.937012,
		-0.907254, 0.334117, -0.255454,
		-0.393994, -0.887704, 0.238223,
		33.548084, 31.372416, 21.608335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176819, 32.180698, 21.764656>,  <33.823879, 31.993809, 21.441580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176819, 32.180698, 21.764656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281040, 31.812714, 21.881807>,  <33.343575, 31.591923, 21.952099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281040, 31.812714, 21.881807>,  <33.176819, 32.180698, 21.764656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281040, 31.812714, 21.881807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196449, 0.246492, 0.949026,
		-0.945261, -0.304810, -0.116501,
		0.260556, -0.919964, 0.292879,
		33.359207, 31.536724, 21.969671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773785, 31.989580, 22.300920>,  <33.176819, 32.180698, 21.764656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773785, 31.989580, 22.300920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086811, 31.746086, 22.353127>,  <33.274628, 31.599991, 22.384451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086811, 31.746086, 22.353127>,  <32.773785, 31.989580, 22.300920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086811, 31.746086, 22.353127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036310, 0.253912, 0.966546,
		-0.621508, -0.751646, 0.220806,
		0.782566, -0.608734, 0.130516,
		33.321579, 31.563465, 22.392281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588779, 31.712009, 22.866291>,  <32.773785, 31.989580, 22.300920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588779, 31.712009, 22.866291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.986000, 31.676956, 22.834892>,  <33.224335, 31.655924, 22.816053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.986000, 31.676956, 22.834892>,  <32.588779, 31.712009, 22.866291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986000, 31.676956, 22.834892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101810, 0.305761, 0.946649,
		-0.058956, -0.948067, 0.312560,
		0.993055, -0.087633, -0.078497,
		33.283916, 31.650667, 22.811344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760826, 31.409472, 23.567823>,  <32.588779, 31.712009, 22.866291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760826, 31.409472, 23.567823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102570, 31.549417, 23.414118>,  <33.307617, 31.633385, 23.321894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102570, 31.549417, 23.414118>,  <32.760826, 31.409472, 23.567823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102570, 31.549417, 23.414118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379967, 0.083888, 0.921188,
		0.354526, -0.933037, -0.061266,
		0.854363, 0.349864, -0.384263,
		33.358879, 31.654377, 23.298840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299301, 30.993877, 23.878725>,  <32.760826, 31.409472, 23.567823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299301, 30.993877, 23.878725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459343, 31.340536, 23.759504>,  <33.555370, 31.548532, 23.687971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459343, 31.340536, 23.759504>,  <33.299301, 30.993877, 23.878725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459343, 31.340536, 23.759504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507913, 0.061019, 0.859244,
		0.762850, -0.495174, -0.415768,
		0.400106, 0.866648, -0.298054,
		33.579376, 31.600531, 23.670088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967285, 30.894743, 24.141100>,  <33.299301, 30.993877, 23.878725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967285, 30.894743, 24.141100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935009, 31.279463, 24.036465>,  <33.915642, 31.510294, 23.973682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935009, 31.279463, 24.036465>,  <33.967285, 30.894743, 24.141100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935009, 31.279463, 24.036465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699990, 0.241517, 0.672074,
		0.709580, -0.128879, -0.692739,
		-0.080692, 0.961800, -0.261589,
		33.910801, 31.568003, 23.957989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588982, 31.075464, 23.955704>,  <33.967285, 30.894743, 24.141100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588982, 31.075464, 23.955704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.397694, 31.402718, 24.083435>,  <34.282921, 31.599070, 24.160074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.397694, 31.402718, 24.083435>,  <34.588982, 31.075464, 23.955704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397694, 31.402718, 24.083435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712388, 0.148712, 0.685848,
		0.513627, 0.555468, -0.653944,
		-0.478216, 0.818132, 0.319326,
		34.254230, 31.648157, 24.179234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181183, 31.531866, 24.069933>,  <34.588982, 31.075464, 23.955704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181183, 31.531866, 24.069933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871376, 31.681026, 24.274313>,  <34.685493, 31.770523, 24.396942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871376, 31.681026, 24.274313>,  <35.181183, 31.531866, 24.069933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871376, 31.681026, 24.274313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602002, 0.186518, 0.776405,
		0.194221, 0.908931, -0.368948,
		-0.774514, 0.372902, 0.510952,
		34.639023, 31.792896, 24.427599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421711, 32.192215, 24.463917>,  <35.181183, 31.531866, 24.069933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421711, 32.192215, 24.463917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094631, 32.055374, 24.649103>,  <34.898384, 31.973270, 24.760214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094631, 32.055374, 24.649103>,  <35.421711, 32.192215, 24.463917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094631, 32.055374, 24.649103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445391, 0.133525, 0.885324,
		-0.364686, 0.930129, 0.043185,
		-0.817699, -0.342099, 0.462965,
		34.849323, 31.952744, 24.787992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456398, 32.324715, 25.153429>,  <35.421711, 32.192215, 24.463917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456398, 32.324715, 25.153429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.141151, 32.080055, 25.181051>,  <34.952003, 31.933260, 25.197624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.141151, 32.080055, 25.181051>,  <35.456398, 32.324715, 25.153429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141151, 32.080055, 25.181051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121829, -0.045034, 0.991529,
		-0.603354, 0.789850, 0.110008,
		-0.788113, -0.611645, 0.069055,
		34.904716, 31.896563, 25.201767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877647, 32.610260, 25.681456>,  <35.456398, 32.324715, 25.153429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877647, 32.610260, 25.681456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822723, 32.214382, 25.665226>,  <34.789768, 31.976854, 25.655489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822723, 32.214382, 25.665226>,  <34.877647, 32.610260, 25.681456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822723, 32.214382, 25.665226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082051, -0.029456, 0.996193,
		-0.987123, 0.140120, -0.077160,
		-0.137314, -0.989696, -0.040574,
		34.781528, 31.917473, 25.653053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467537, 32.485298, 26.309828>,  <34.877647, 32.610260, 25.681456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467537, 32.485298, 26.309828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.598129, 32.120041, 26.212198>,  <34.676487, 31.900887, 26.153620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.598129, 32.120041, 26.212198>,  <34.467537, 32.485298, 26.309828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598129, 32.120041, 26.212198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039665, -0.271234, 0.961696,
		-0.944370, -0.304296, -0.124773,
		0.326483, -0.913146, -0.244076,
		34.696075, 31.846098, 26.138975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945560, 31.975195, 26.455936>,  <34.467537, 32.485298, 26.309828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945560, 31.975195, 26.455936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306999, 31.803869, 26.459183>,  <34.523861, 31.701075, 26.461130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306999, 31.803869, 26.459183>,  <33.945560, 31.975195, 26.455936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306999, 31.803869, 26.459183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173713, -0.349022, 0.920873,
		-0.391594, -0.833504, -0.389777,
		0.903592, -0.428318, 0.008115,
		34.578079, 31.675375, 26.461618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871975, 31.314451, 26.907951>,  <33.945560, 31.975195, 26.455936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871975, 31.314451, 26.907951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269451, 31.339552, 26.870756>,  <34.507935, 31.354612, 26.848438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269451, 31.339552, 26.870756>,  <33.871975, 31.314451, 26.907951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269451, 31.339552, 26.870756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107007, -0.281339, 0.953624,
		0.033679, -0.957555, -0.286278,
		0.993688, 0.062751, -0.092990,
		34.567558, 31.358377, 26.842859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237305, 30.666948, 27.034275>,  <33.871975, 31.314451, 26.907951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237305, 30.666948, 27.034275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466972, 30.977877, 27.137119>,  <34.604771, 31.164434, 27.198826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466972, 30.977877, 27.137119>,  <34.237305, 30.666948, 27.034275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466972, 30.977877, 27.137119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110148, -0.384515, 0.916524,
		0.811296, -0.497917, -0.306395,
		0.574166, 0.777321, 0.257111,
		34.639221, 31.211073, 27.214252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867657, 30.764864, 27.099117>,  <34.237305, 30.666948, 27.034275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867657, 30.764864, 27.099117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915024, 30.945164, 26.745213>,  <34.943443, 31.053345, 26.532869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915024, 30.945164, 26.745213>,  <34.867657, 30.764864, 27.099117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915024, 30.945164, 26.745213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808408, 0.473631, 0.349500,
		0.576587, -0.756635, -0.308302,
		0.118422, 0.450751, -0.884759,
		34.950550, 31.080389, 26.479784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.519600, 31.150589, 30.982613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244427, 31.438538, 30.945663>,  <39.079323, 31.611307, 30.923494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244427, 31.438538, 30.945663>,  <39.519600, 31.150589, 30.982613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244427, 31.438538, 30.945663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352181, 0.442391, 0.824778,
		0.634598, 0.534861, -0.557861,
		-0.687935, 0.719870, -0.092372,
		39.038048, 31.654499, 30.917952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802898, 31.747250, 31.066715>,  <39.519600, 31.150589, 30.982613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802898, 31.747250, 31.066715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426716, 31.855059, 31.149555>,  <39.201004, 31.919744, 31.199259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426716, 31.855059, 31.149555>,  <39.802898, 31.747250, 31.066715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426716, 31.855059, 31.149555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323464, 0.522479, 0.788915,
		0.104424, 0.808934, -0.578551,
		-0.940461, 0.269522, 0.207101,
		39.144577, 31.935915, 31.211685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789665, 32.453671, 31.247654>,  <39.802898, 31.747250, 31.066715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789665, 32.453671, 31.247654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460629, 32.297314, 31.412846>,  <39.263206, 32.203499, 31.511961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460629, 32.297314, 31.412846>,  <39.789665, 32.453671, 31.247654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460629, 32.297314, 31.412846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148104, 0.553915, 0.819294,
		-0.549012, 0.735105, -0.397751,
		-0.822588, -0.390894, 0.412978,
		39.213852, 32.180046, 31.536739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376873, 33.026985, 31.455658>,  <39.789665, 32.453671, 31.247654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376873, 33.026985, 31.455658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261864, 32.695282, 31.647350>,  <39.192860, 32.496262, 31.762365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261864, 32.695282, 31.647350>,  <39.376873, 33.026985, 31.455658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261864, 32.695282, 31.647350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033214, 0.491426, 0.870286,
		-0.957198, 0.266144, -0.113753,
		-0.287523, -0.829258, 0.479231,
		39.175606, 32.446507, 31.791121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131676, 33.302250, 32.052708>,  <39.376873, 33.026985, 31.455658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131676, 33.302250, 32.052708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133221, 32.921764, 32.176113>,  <39.134148, 32.693474, 32.250156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133221, 32.921764, 32.176113>,  <39.131676, 33.302250, 32.052708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133221, 32.921764, 32.176113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134149, 0.306218, 0.942462,
		-0.990954, 0.037744, 0.128788,
		0.003865, -0.951213, 0.308511,
		39.134380, 32.636402, 32.268665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770065, 33.236721, 32.707851>,  <39.131676, 33.302250, 32.052708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770065, 33.236721, 32.707851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022240, 32.928909, 32.667114>,  <39.173546, 32.744221, 32.642673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022240, 32.928909, 32.667114>,  <38.770065, 33.236721, 32.707851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022240, 32.928909, 32.667114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223081, 0.053953, 0.973306,
		-0.743496, -0.636324, 0.205682,
		0.630435, -0.769533, -0.101838,
		39.211369, 32.698048, 32.636562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406281, 32.662678, 33.070419>,  <38.770065, 33.236721, 32.707851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406281, 32.662678, 33.070419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.801304, 32.604160, 33.047344>,  <39.038319, 32.569050, 33.033497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.801304, 32.604160, 33.047344>,  <38.406281, 32.662678, 33.070419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801304, 32.604160, 33.047344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084187, 0.181961, 0.979695,
		-0.132827, -0.972362, 0.192013,
		0.987557, -0.146295, -0.057691,
		39.097572, 32.560272, 33.030037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584927, 32.200897, 33.642757>,  <38.406281, 32.662678, 33.070419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584927, 32.200897, 33.642757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928379, 32.379379, 33.541836>,  <39.134449, 32.486469, 33.481285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928379, 32.379379, 33.541836>,  <38.584927, 32.200897, 33.642757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928379, 32.379379, 33.541836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210650, 0.141573, 0.967256,
		0.467316, -0.883661, 0.027565,
		0.858629, 0.446207, -0.252302,
		39.185966, 32.513241, 33.466145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224396, 31.884411, 33.996674>,  <38.584927, 32.200897, 33.642757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224396, 31.884411, 33.996674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270428, 32.267078, 33.889683>,  <39.298046, 32.496677, 33.825489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270428, 32.267078, 33.889683>,  <39.224396, 31.884411, 33.996674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270428, 32.267078, 33.889683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241926, 0.234163, 0.941615,
		0.963446, -0.173072, -0.204495,
		0.115082, 0.956668, -0.267474,
		39.304951, 32.554077, 33.809441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735191, 32.084549, 34.406166>,  <39.224396, 31.884411, 33.996674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735191, 32.084549, 34.406166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614552, 32.442562, 34.274738>,  <39.542168, 32.657368, 34.195881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614552, 32.442562, 34.274738>,  <39.735191, 32.084549, 34.406166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614552, 32.442562, 34.274738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285495, 0.413584, 0.864547,
		0.909688, 0.166937, -0.380262,
		-0.301595, 0.895031, -0.328572,
		39.524075, 32.711071, 34.176167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254379, 32.544296, 34.595367>,  <39.735191, 32.084549, 34.406166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254379, 32.544296, 34.595367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.961601, 32.809071, 34.530743>,  <39.785934, 32.967934, 34.491966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.961601, 32.809071, 34.530743>,  <40.254379, 32.544296, 34.595367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961601, 32.809071, 34.530743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083247, 0.322221, 0.942997,
		0.676260, 0.676771, -0.290952,
		-0.731944, 0.661932, -0.161566,
		39.742020, 33.007648, 34.482273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522945, 33.142708, 34.714844>,  <40.254379, 32.544296, 34.595367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522945, 33.142708, 34.714844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.137821, 33.249931, 34.728382>,  <39.906746, 33.314266, 34.736504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.137821, 33.249931, 34.728382>,  <40.522945, 33.142708, 34.714844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137821, 33.249931, 34.728382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184834, 0.562102, 0.806150,
		0.197068, 0.782424, -0.590742,
		-0.962809, 0.268056, 0.033847,
		39.848980, 33.330349, 34.738537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498466, 33.847408, 34.845291>,  <40.522945, 33.142708, 34.714844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498466, 33.847408, 34.845291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.149067, 33.718300, 34.991070>,  <39.939426, 33.640835, 35.078537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.149067, 33.718300, 34.991070>,  <40.498466, 33.847408, 34.845291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149067, 33.718300, 34.991070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077465, 0.646927, 0.758608,
		-0.480626, 0.690873, -0.540085,
		-0.873497, -0.322769, 0.364448,
		39.887016, 33.621468, 35.100403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992943, 34.474499, 35.032223>,  <40.498466, 33.847408, 34.845291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992943, 34.474499, 35.032223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860954, 34.160248, 35.241566>,  <39.781761, 33.971695, 35.367172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860954, 34.160248, 35.241566>,  <39.992943, 34.474499, 35.032223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860954, 34.160248, 35.241566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213605, 0.602168, 0.769264,
		-0.919507, 0.142043, -0.366513,
		-0.329971, -0.785632, 0.523356,
		39.761963, 33.924557, 35.398571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415237, 34.916237, 35.521980>,  <39.992943, 34.474499, 35.032223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415237, 34.916237, 35.521980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447754, 35.314812, 35.512981>,  <40.467266, 35.553955, 35.507584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447754, 35.314812, 35.512981>,  <40.415237, 34.916237, 35.521980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447754, 35.314812, 35.512981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598054, 0.030711, -0.800868,
		-0.797323, 0.078560, 0.598419,
		0.081294, 0.996436, -0.022496,
		40.472141, 35.613743, 35.506233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785477, 35.126659, 35.295998>,  <40.415237, 34.916237, 35.521980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785477, 35.126659, 35.295998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019135, 35.445919, 35.237041>,  <40.159328, 35.637474, 35.201668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019135, 35.445919, 35.237041>,  <39.785477, 35.126659, 35.295998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019135, 35.445919, 35.237041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294732, 0.039394, -0.954768,
		-0.756245, 0.601165, 0.258253,
		0.584146, 0.798154, -0.147391,
		40.194378, 35.685364, 35.192825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357357, 35.683308, 35.151321>,  <39.785477, 35.126659, 35.295998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357357, 35.683308, 35.151321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718838, 35.756241, 34.996361>,  <39.935726, 35.799999, 34.903385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718838, 35.756241, 34.996361>,  <39.357357, 35.683308, 35.151321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718838, 35.756241, 34.996361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419927, 0.200765, -0.885074,
		-0.083600, 0.962522, 0.257997,
		0.903699, 0.182332, -0.387405,
		39.989948, 35.810940, 34.880138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068657, 36.053165, 34.714664>,  <39.357357, 35.683308, 35.151321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068657, 36.053165, 34.714664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456558, 36.014481, 34.625019>,  <39.689297, 35.991268, 34.571232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456558, 36.014481, 34.625019>,  <39.068657, 36.053165, 34.714664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456558, 36.014481, 34.625019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210728, 0.131682, -0.968635,
		0.123190, 0.986563, 0.107319,
		0.969752, -0.096711, -0.224118,
		39.747482, 35.985466, 34.557785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168209, 36.588093, 34.342991>,  <39.068657, 36.053165, 34.714664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168209, 36.588093, 34.342991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.480022, 36.352577, 34.257523>,  <39.667110, 36.211266, 34.206242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.480022, 36.352577, 34.257523>,  <39.168209, 36.588093, 34.342991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480022, 36.352577, 34.257523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220811, 0.060905, -0.973413,
		0.586151, 0.805987, -0.082535,
		0.779532, -0.588791, -0.213670,
		39.713882, 36.175941, 34.193420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690262, 36.912365, 33.858150>,  <39.168209, 36.588093, 34.342991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690262, 36.912365, 33.858150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.729221, 36.516418, 33.816811>,  <39.752598, 36.278851, 33.792007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.729221, 36.516418, 33.816811>,  <39.690262, 36.912365, 33.858150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729221, 36.516418, 33.816811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338357, 0.064729, -0.938789,
		0.935964, 0.126405, -0.328624,
		0.097396, -0.989865, -0.103354,
		39.758442, 36.219460, 33.785805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027664, 36.819099, 33.263420>,  <39.690262, 36.912365, 33.858150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027664, 36.819099, 33.263420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863388, 36.455162, 33.287170>,  <39.764824, 36.236801, 33.301422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863388, 36.455162, 33.287170>,  <40.027664, 36.819099, 33.263420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863388, 36.455162, 33.287170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057031, -0.039361, -0.997596,
		0.909990, -0.413089, -0.035724,
		-0.410690, -0.909840, 0.059377,
		39.740181, 36.182209, 33.304985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330132, 36.456421, 32.665848>,  <40.027664, 36.819099, 33.263420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330132, 36.456421, 32.665848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992462, 36.265839, 32.764122>,  <39.789860, 36.151489, 32.823086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992462, 36.265839, 32.764122>,  <40.330132, 36.456421, 32.665848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992462, 36.265839, 32.764122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142328, -0.242661, -0.959614,
		0.516831, -0.845048, 0.137035,
		-0.844173, -0.476454, 0.245689,
		39.739212, 36.122902, 32.837830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377674, 35.771069, 32.268681>,  <40.330132, 36.456421, 32.665848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377674, 35.771069, 32.268681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.008118, 35.801704, 32.418640>,  <39.786385, 35.820084, 32.508617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.008118, 35.801704, 32.418640>,  <40.377674, 35.771069, 32.268681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008118, 35.801704, 32.418640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371813, -0.411162, -0.832287,
		0.090405, -0.908340, 0.408346,
		-0.923895, 0.076586, 0.374904,
		39.730949, 35.824680, 32.531113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004448, 35.153122, 31.988848>,  <40.377674, 35.771069, 32.268681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004448, 35.153122, 31.988848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739082, 35.441738, 32.068104>,  <39.579861, 35.614906, 32.115658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739082, 35.441738, 32.068104>,  <40.004448, 35.153122, 31.988848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739082, 35.441738, 32.068104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427927, -0.148643, -0.891506,
		-0.613806, -0.676228, 0.407379,
		-0.663416, 0.721541, 0.198138,
		39.540058, 35.658199, 32.127544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503437, 34.793159, 31.822895>,  <40.004448, 35.153122, 31.988848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503437, 34.793159, 31.822895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348225, 35.161690, 31.813217>,  <39.255096, 35.382809, 31.807411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348225, 35.161690, 31.813217>,  <39.503437, 34.793159, 31.822895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348225, 35.161690, 31.813217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562760, -0.257641, -0.785444,
		-0.729886, -0.291161, 0.618459,
		-0.388031, 0.921329, -0.024195,
		39.231815, 35.438087, 31.805960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796925, 34.665123, 31.824486>,  <39.503437, 34.793159, 31.822895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796925, 34.665123, 31.824486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.887920, 35.019047, 31.661827>,  <38.942516, 35.231400, 31.564232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.887920, 35.019047, 31.661827>,  <38.796925, 34.665123, 31.824486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887920, 35.019047, 31.661827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497438, -0.253410, -0.829662,
		-0.837141, 0.391018, 0.382491,
		0.227485, 0.884810, -0.406647,
		38.956165, 35.284489, 31.539833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173740, 34.914497, 31.452654>,  <38.796925, 34.665123, 31.824486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173740, 34.914497, 31.452654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.439064, 35.147392, 31.264601>,  <38.598259, 35.287128, 31.151770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.439064, 35.147392, 31.264601>,  <38.173740, 34.914497, 31.452654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439064, 35.147392, 31.264601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342779, -0.322065, -0.882484,
		-0.665227, 0.746509, -0.014049,
		0.663306, 0.582237, -0.470134,
		38.638058, 35.322063, 31.123560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832195, 35.427731, 30.842808>,  <38.173740, 34.914497, 31.452654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832195, 35.427731, 30.842808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214752, 35.345573, 30.759747>,  <38.444286, 35.296280, 30.709909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214752, 35.345573, 30.759747>,  <37.832195, 35.427731, 30.842808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214752, 35.345573, 30.759747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249596, -0.205530, -0.946287,
		0.151685, 0.956854, -0.247835,
		0.956396, -0.205396, -0.207651,
		38.501671, 35.283955, 30.697451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654354, 36.208061, 31.073532>,  <37.832195, 35.427731, 30.842808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654354, 36.208061, 31.073532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.453812, 36.489941, 30.872715>,  <37.333485, 36.659069, 30.752224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.453812, 36.489941, 30.872715>,  <37.654354, 36.208061, 31.073532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453812, 36.489941, 30.872715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178611, 0.483448, 0.856957,
		0.846606, 0.519311, -0.116513,
		-0.501355, 0.704694, -0.502045,
		37.303406, 36.701347, 30.722101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950027, 36.723480, 31.251596>,  <37.654354, 36.208061, 31.073532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950027, 36.723480, 31.251596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.576572, 36.829487, 31.155191>,  <37.352501, 36.893089, 31.097349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.576572, 36.829487, 31.155191>,  <37.950027, 36.723480, 31.251596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576572, 36.829487, 31.155191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089601, 0.478647, 0.873423,
		0.346832, 0.837056, -0.423137,
		-0.933638, 0.265017, -0.241011,
		37.296482, 36.908993, 31.082888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842739, 37.407402, 31.515903>,  <37.950027, 36.723480, 31.251596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842739, 37.407402, 31.515903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.469883, 37.273544, 31.460573>,  <37.246170, 37.193230, 31.427376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.469883, 37.273544, 31.460573>,  <37.842739, 37.407402, 31.515903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469883, 37.273544, 31.460573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225570, 0.237805, 0.944758,
		-0.283259, 0.911847, -0.297152,
		-0.932139, -0.334640, -0.138325,
		37.190243, 37.173153, 31.419075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284096, 37.952408, 31.770220>,  <37.842739, 37.407402, 31.515903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284096, 37.952408, 31.770220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114105, 37.590424, 31.778660>,  <37.012112, 37.373234, 31.783724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114105, 37.590424, 31.778660>,  <37.284096, 37.952408, 31.770220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114105, 37.590424, 31.778660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444911, 0.229122, 0.865770,
		-0.788321, 0.358543, -0.499997,
		-0.424976, -0.904959, 0.021102,
		36.986614, 37.318935, 31.784990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640095, 38.116207, 31.926622>,  <37.284096, 37.952408, 31.770220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640095, 38.116207, 31.926622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.655899, 37.721748, 31.991070>,  <36.665382, 37.485073, 32.029739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.655899, 37.721748, 31.991070>,  <36.640095, 38.116207, 31.926622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655899, 37.721748, 31.991070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504964, 0.119433, 0.854837,
		-0.862235, -0.115135, -0.493249,
		0.039511, -0.986144, 0.161118,
		36.667751, 37.425903, 32.039406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939022, 37.880474, 32.184425>,  <36.640095, 38.116207, 31.926622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939022, 37.880474, 32.184425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.205246, 37.605560, 32.300816>,  <36.364983, 37.440613, 32.370651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.205246, 37.605560, 32.300816>,  <35.939022, 37.880474, 32.184425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205246, 37.605560, 32.300816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461308, -0.072347, 0.884286,
		-0.586703, -0.722778, -0.365200,
		0.665563, -0.687283, 0.290977,
		36.404915, 37.399376, 32.388107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530159, 37.475739, 32.530312>,  <35.939022, 37.880474, 32.184425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530159, 37.475739, 32.530312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892693, 37.350689, 32.644028>,  <36.110214, 37.275658, 32.712257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892693, 37.350689, 32.644028>,  <35.530159, 37.475739, 32.530312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892693, 37.350689, 32.644028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346406, -0.164410, 0.923565,
		-0.241988, -0.935541, -0.257305,
		0.906336, -0.312624, 0.284292,
		36.164593, 37.256901, 32.729317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396622, 36.932671, 32.954147>,  <35.530159, 37.475739, 32.530312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396622, 36.932671, 32.954147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.774036, 37.025627, 33.048584>,  <36.000484, 37.081402, 33.105244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.774036, 37.025627, 33.048584>,  <35.396622, 36.932671, 32.954147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774036, 37.025627, 33.048584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240153, -0.011068, 0.970672,
		0.228188, -0.972560, 0.045366,
		0.943534, 0.232391, 0.236089,
		36.057098, 37.095345, 33.119411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662392, 36.402782, 33.338398>,  <35.396622, 36.932671, 32.954147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662392, 36.402782, 33.338398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.871109, 36.736263, 33.410698>,  <35.996342, 36.936352, 33.454079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.871109, 36.736263, 33.410698>,  <35.662392, 36.402782, 33.338398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871109, 36.736263, 33.410698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209304, -0.080288, 0.974549,
		0.826994, -0.546349, 0.132603,
		0.521797, 0.833701, 0.180750,
		36.027649, 36.986374, 33.464924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029133, 36.204960, 33.958076>,  <35.662392, 36.402782, 33.338398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029133, 36.204960, 33.958076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.051102, 36.604343, 33.961319>,  <36.064281, 36.843975, 33.963264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.051102, 36.604343, 33.961319>,  <36.029133, 36.204960, 33.958076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051102, 36.604343, 33.961319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158167, 0.000679, 0.987412,
		0.985884, -0.055510, 0.157960,
		0.054918, 0.998458, 0.008110,
		36.067577, 36.903881, 33.963753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499031, 36.332569, 34.534832>,  <36.029133, 36.204960, 33.958076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499031, 36.332569, 34.534832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305454, 36.677513, 34.475323>,  <36.189308, 36.884480, 34.439617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305454, 36.677513, 34.475323>,  <36.499031, 36.332569, 34.534832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305454, 36.677513, 34.475323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242711, 0.031066, 0.969601,
		0.840771, 0.505335, 0.194271,
		-0.483938, 0.862364, -0.148770,
		36.160275, 36.936222, 34.430691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758739, 36.871159, 34.996731>,  <36.499031, 36.332569, 34.534832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758739, 36.871159, 34.996731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.372776, 36.916241, 34.901859>,  <36.141197, 36.943291, 34.844936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.372776, 36.916241, 34.901859>,  <36.758739, 36.871159, 34.996731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372776, 36.916241, 34.901859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246503, -0.077411, 0.966045,
		0.090516, 0.990609, 0.102476,
		-0.964906, 0.112703, -0.237181,
		36.083305, 36.950050, 34.830704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.584816, 36.271141, 26.751862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242474, 36.403996, 26.910450>,  <37.037067, 36.483707, 27.005604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242474, 36.403996, 26.910450>,  <37.584816, 36.271141, 26.751862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242474, 36.403996, 26.910450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491277, 0.282368, 0.823963,
		0.161720, 0.899973, -0.404840,
		-0.855858, 0.332140, 0.396472,
		36.985718, 36.503639, 27.029392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769463, 36.850143, 27.165939>,  <37.584816, 36.271141, 26.751862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769463, 36.850143, 27.165939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398933, 36.755970, 27.283587>,  <37.176617, 36.699467, 27.354176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398933, 36.755970, 27.283587>,  <37.769463, 36.850143, 27.165939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398933, 36.755970, 27.283587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218405, 0.300534, 0.928428,
		-0.306974, 0.924257, -0.226971,
		-0.926319, -0.235431, 0.294118,
		37.121037, 36.685341, 27.371822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642029, 37.377087, 27.619001>,  <37.769463, 36.850143, 27.165939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642029, 37.377087, 27.619001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373997, 37.094967, 27.711561>,  <37.213177, 36.925694, 27.767097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373997, 37.094967, 27.711561>,  <37.642029, 37.377087, 27.619001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373997, 37.094967, 27.711561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026909, 0.288452, 0.957116,
		-0.741803, 0.647569, -0.174307,
		-0.670078, -0.705301, 0.231400,
		37.172974, 36.883377, 27.780981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060810, 37.632015, 28.124111>,  <37.642029, 37.377087, 27.619001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060810, 37.632015, 28.124111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090553, 37.235184, 28.164621>,  <37.108398, 36.997086, 28.188927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090553, 37.235184, 28.164621>,  <37.060810, 37.632015, 28.124111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090553, 37.235184, 28.164621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016246, 0.102748, 0.994575,
		-0.997099, -0.072309, 0.023757,
		0.074357, -0.992076, 0.101275,
		37.112862, 36.937561, 28.195004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552422, 37.458042, 28.615904>,  <37.060810, 37.632015, 28.124111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552422, 37.458042, 28.615904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807484, 37.149975, 28.609678>,  <36.960522, 36.965134, 28.605944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807484, 37.149975, 28.609678>,  <36.552422, 37.458042, 28.615904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807484, 37.149975, 28.609678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096360, 0.059704, 0.993554,
		-0.764272, -0.635044, 0.112284,
		0.637654, -0.770166, -0.015563,
		36.998779, 36.918926, 28.605009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369717, 37.047798, 29.168848>,  <36.552422, 37.458042, 28.615904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369717, 37.047798, 29.168848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742188, 36.923244, 29.093016>,  <36.965672, 36.848511, 29.047516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742188, 36.923244, 29.093016>,  <36.369717, 37.047798, 29.168848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742188, 36.923244, 29.093016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145807, -0.158520, 0.976530,
		-0.334127, -0.936970, -0.102209,
		0.931181, -0.311383, -0.189582,
		37.021542, 36.829830, 29.036140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416401, 36.467613, 29.522011>,  <36.369717, 37.047798, 29.168848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416401, 36.467613, 29.522011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806900, 36.551575, 29.500549>,  <37.041199, 36.601952, 29.487673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806900, 36.551575, 29.500549>,  <36.416401, 36.467613, 29.522011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806900, 36.551575, 29.500549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056309, -0.006681, 0.998391,
		0.209212, -0.977698, -0.018342,
		0.976247, 0.209908, -0.053656,
		37.099773, 36.614548, 29.484453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805470, 36.008846, 30.055561>,  <36.416401, 36.467613, 29.522011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805470, 36.008846, 30.055561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052528, 36.312222, 29.972334>,  <37.200764, 36.494247, 29.922398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052528, 36.312222, 29.972334>,  <36.805470, 36.008846, 30.055561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052528, 36.312222, 29.972334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131547, 0.161206, 0.978114,
		0.775378, -0.631498, -0.000202,
		0.617644, 0.758435, -0.208067,
		37.237823, 36.539753, 29.909914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366005, 35.877769, 30.430773>,  <36.805470, 36.008846, 30.055561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366005, 35.877769, 30.430773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342033, 36.268959, 30.350803>,  <37.327652, 36.503674, 30.302822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342033, 36.268959, 30.350803>,  <37.366005, 35.877769, 30.430773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342033, 36.268959, 30.350803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063495, 0.196144, 0.978517,
		0.996181, 0.071335, 0.050342,
		-0.059928, 0.977977, -0.199924,
		37.324055, 36.562351, 30.290827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037514, 35.824188, 30.118469>,  <37.366005, 35.877769, 30.430773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037514, 35.824188, 30.118469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315788, 35.542843, 30.176857>,  <38.482754, 35.374035, 30.211889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315788, 35.542843, 30.176857>,  <38.037514, 35.824188, 30.118469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315788, 35.542843, 30.176857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002036, -0.205132, -0.978732,
		0.718343, 0.680593, -0.144140,
		0.695686, -0.703359, 0.145970,
		38.524494, 35.331837, 30.220648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528240, 35.851742, 29.647701>,  <38.037514, 35.824188, 30.118469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528240, 35.851742, 29.647701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605839, 35.473633, 29.752642>,  <38.652397, 35.246769, 29.815605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605839, 35.473633, 29.752642>,  <38.528240, 35.851742, 29.647701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605839, 35.473633, 29.752642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172406, -0.296120, -0.939462,
		0.965733, 0.137023, -0.220417,
		0.193998, -0.945271, 0.262350,
		38.664040, 35.190052, 29.831347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767635, 35.506748, 28.926077>,  <38.528240, 35.851742, 29.647701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767635, 35.506748, 28.926077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760696, 35.203407, 29.186722>,  <38.756535, 35.021400, 29.343109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760696, 35.203407, 29.186722>,  <38.767635, 35.506748, 28.926077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760696, 35.203407, 29.186722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125883, -0.648179, -0.751010,
		0.991893, 0.068998, 0.106709,
		-0.017348, -0.758355, 0.651611,
		38.755493, 34.975903, 29.382204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438934, 35.007645, 28.939236>,  <38.767635, 35.506748, 28.926077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438934, 35.007645, 28.939236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126480, 34.807476, 29.088587>,  <38.939007, 34.687374, 29.178198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126480, 34.807476, 29.088587>,  <39.438934, 35.007645, 28.939236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126480, 34.807476, 29.088587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067444, -0.662140, -0.746339,
		0.620712, -0.557807, 0.550969,
		-0.781132, -0.500422, 0.373377,
		38.892139, 34.657349, 29.200600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590153, 34.341160, 28.961790>,  <39.438934, 35.007645, 28.939236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590153, 34.341160, 28.961790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191334, 34.320534, 28.939037>,  <38.952042, 34.308159, 28.925386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191334, 34.320534, 28.939037>,  <39.590153, 34.341160, 28.961790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191334, 34.320534, 28.939037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076369, -0.742456, -0.665528,
		-0.007912, -0.667907, 0.744203,
		-0.997048, -0.051568, -0.056882,
		38.892220, 34.305065, 28.921972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423008, 33.646950, 28.890232>,  <39.590153, 34.341160, 28.961790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423008, 33.646950, 28.890232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066479, 33.792374, 28.781881>,  <38.852562, 33.879627, 28.716871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066479, 33.792374, 28.781881>,  <39.423008, 33.646950, 28.890232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066479, 33.792374, 28.781881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065853, -0.694945, -0.716041,
		-0.448567, -0.620383, 0.643360,
		-0.891320, 0.363559, -0.270876,
		38.799084, 33.901443, 28.700619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907322, 33.063381, 28.840572>,  <39.423008, 33.646950, 28.890232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907322, 33.063381, 28.840572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781712, 33.357723, 28.600603>,  <38.706345, 33.534328, 28.456621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781712, 33.357723, 28.600603>,  <38.907322, 33.063381, 28.840572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781712, 33.357723, 28.600603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004755, -0.630662, -0.776043,
		-0.949404, -0.246547, 0.194543,
		-0.314022, 0.735853, -0.599925,
		38.687504, 33.578480, 28.420626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260017, 32.905067, 28.623590>,  <38.907322, 33.063381, 28.840572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260017, 32.905067, 28.623590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413059, 33.160442, 28.356453>,  <38.504883, 33.313667, 28.196171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413059, 33.160442, 28.356453>,  <38.260017, 32.905067, 28.623590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413059, 33.160442, 28.356453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008108, -0.720496, -0.693412,
		-0.923878, 0.270715, -0.270486,
		0.382601, 0.638435, -0.667846,
		38.527840, 33.351974, 28.156099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804558, 32.812668, 28.049973>,  <38.260017, 32.905067, 28.623590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804558, 32.812668, 28.049973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141018, 32.984955, 27.919163>,  <38.342896, 33.088326, 27.840677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141018, 32.984955, 27.919163>,  <37.804558, 32.812668, 28.049973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141018, 32.984955, 27.919163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124556, -0.434150, -0.892188,
		-0.526259, 0.791199, -0.311538,
		0.841152, 0.430719, -0.327024,
		38.393364, 33.114170, 27.821056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590046, 33.143856, 27.395704>,  <37.804558, 32.812668, 28.049973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590046, 33.143856, 27.395704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987316, 33.099564, 27.381083>,  <38.225677, 33.072987, 27.372311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987316, 33.099564, 27.381083>,  <37.590046, 33.143856, 27.395704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987316, 33.099564, 27.381083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054281, -0.161588, -0.985364,
		0.103206, 0.980626, -0.166496,
		0.993178, -0.110733, -0.036553,
		38.285271, 33.066345, 27.370117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783836, 33.462940, 26.677996>,  <37.590046, 33.143856, 27.395704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783836, 33.462940, 26.677996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123737, 33.278633, 26.780462>,  <38.327679, 33.168049, 26.841942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123737, 33.278633, 26.780462>,  <37.783836, 33.462940, 26.677996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123737, 33.278633, 26.780462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228945, -0.115170, -0.966602,
		0.474880, 0.880017, 0.007624,
		0.849749, -0.460766, 0.256167,
		38.378662, 33.140404, 26.857313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345539, 33.764015, 26.325008>,  <37.783836, 33.462940, 26.677996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345539, 33.764015, 26.325008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446545, 33.382965, 26.392828>,  <38.507149, 33.154335, 26.433519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446545, 33.382965, 26.392828>,  <38.345539, 33.764015, 26.325008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446545, 33.382965, 26.392828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041786, -0.164330, -0.985520,
		0.966691, 0.255940, -0.001689,
		0.252511, -0.952623, 0.169551,
		38.522297, 33.097179, 26.443693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831360, 33.742649, 25.757399>,  <38.345539, 33.764015, 26.325008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831360, 33.742649, 25.757399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752018, 33.376892, 25.898558>,  <38.704414, 33.157436, 25.983253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752018, 33.376892, 25.898558>,  <38.831360, 33.742649, 25.757399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752018, 33.376892, 25.898558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032096, -0.353797, -0.934772,
		0.979604, -0.196744, 0.040829,
		-0.198356, -0.914396, 0.352895,
		38.692513, 33.102573, 26.004427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466469, 33.255177, 25.572044>,  <38.831360, 33.742649, 25.757399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466469, 33.255177, 25.572044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138042, 33.037319, 25.640417>,  <38.940987, 32.906605, 25.681440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138042, 33.037319, 25.640417>,  <39.466469, 33.255177, 25.572044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138042, 33.037319, 25.640417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075780, -0.400783, -0.913034,
		0.565788, -0.736703, 0.370341,
		-0.821061, -0.544648, 0.170930,
		38.891724, 32.873924, 25.691696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.931580, 33.363998, 26.269842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.308044, 33.477348, 26.343504>,  <32.533924, 33.545357, 26.387701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.308044, 33.477348, 26.343504>,  <31.931580, 33.363998, 26.269842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308044, 33.477348, 26.343504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197943, 0.020558, 0.979998,
		0.273919, -0.958790, 0.075440,
		0.941163, 0.283373, 0.184155,
		32.590393, 33.562359, 26.398750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130676, 32.900898, 26.910229>,  <31.931580, 33.363998, 26.269842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130676, 32.900898, 26.910229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.414074, 33.182293, 26.887812>,  <32.584114, 33.351131, 26.874361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.414074, 33.182293, 26.887812>,  <32.130676, 32.900898, 26.910229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414074, 33.182293, 26.887812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017966, 0.097364, 0.995087,
		0.705486, -0.704008, 0.081621,
		0.708496, 0.703487, -0.056041,
		32.626621, 33.393337, 26.871000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669727, 32.766727, 27.318941>,  <32.130676, 32.900898, 26.910229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669727, 32.766727, 27.318941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.712219, 33.164059, 27.300955>,  <32.737713, 33.402458, 27.290163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.712219, 33.164059, 27.300955>,  <32.669727, 32.766727, 27.318941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712219, 33.164059, 27.300955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072917, 0.037317, 0.996640,
		0.991665, -0.109149, -0.068466,
		0.106228, 0.993325, -0.044964,
		32.744087, 33.462055, 27.287466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257374, 32.914391, 27.716448>,  <32.669727, 32.766727, 27.318941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257374, 32.914391, 27.716448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.065140, 33.263420, 27.681456>,  <32.949799, 33.472836, 27.660460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.065140, 33.263420, 27.681456>,  <33.257374, 32.914391, 27.716448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065140, 33.263420, 27.681456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006538, 0.103321, 0.994626,
		0.876922, 0.477434, -0.055360,
		-0.480588, 0.872572, -0.087483,
		32.920963, 33.525192, 27.655210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717506, 33.366913, 28.019543>,  <33.257374, 32.914391, 27.716448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717506, 33.366913, 28.019543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.351463, 33.528175, 28.022331>,  <33.131840, 33.624935, 28.024004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.351463, 33.528175, 28.022331>,  <33.717506, 33.366913, 28.019543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351463, 33.528175, 28.022331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071042, 0.144185, 0.986997,
		0.396913, 0.903699, -0.160585,
		-0.915103, 0.403160, 0.006971,
		33.076931, 33.649124, 28.024424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990364, 33.950268, 28.402966>,  <33.717506, 33.366913, 28.019543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990364, 33.950268, 28.402966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.591183, 33.925644, 28.409985>,  <33.351673, 33.910870, 28.414196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.591183, 33.925644, 28.409985>,  <33.990364, 33.950268, 28.402966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591183, 33.925644, 28.409985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000777, 0.285769, 0.958298,
		-0.064005, 0.956319, -0.285231,
		-0.997949, -0.061558, 0.017548,
		33.291798, 33.907177, 28.415249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778076, 34.428509, 28.808064>,  <33.990364, 33.950268, 28.402966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778076, 34.428509, 28.808064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.448475, 34.202492, 28.791351>,  <33.250713, 34.066883, 28.781324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.448475, 34.202492, 28.791351>,  <33.778076, 34.428509, 28.808064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448475, 34.202492, 28.791351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198719, 0.219157, 0.955239,
		-0.530593, 0.795423, -0.292871,
		-0.824004, -0.565042, -0.041783,
		33.201275, 34.032978, 28.778816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195881, 34.749638, 29.133411>,  <33.778076, 34.428509, 28.808064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195881, 34.749638, 29.133411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.116467, 34.357601, 29.134089>,  <33.068817, 34.122379, 29.134495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.116467, 34.357601, 29.134089>,  <33.195881, 34.749638, 29.133411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116467, 34.357601, 29.134089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110887, 0.024178, 0.993539,
		-0.973800, 0.197068, -0.113479,
		-0.198539, -0.980092, 0.001693,
		33.056904, 34.063572, 29.134596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627289, 34.663418, 29.702827>,  <33.195881, 34.749638, 29.133411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627289, 34.663418, 29.702827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.801243, 34.310341, 29.631569>,  <32.905617, 34.098495, 29.588814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.801243, 34.310341, 29.631569>,  <32.627289, 34.663418, 29.702827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801243, 34.310341, 29.631569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214657, -0.293750, 0.931468,
		-0.874527, -0.366842, -0.317223,
		0.434886, -0.882688, -0.178147,
		32.931709, 34.045536, 29.578125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212460, 34.190624, 30.144627>,  <32.627289, 34.663418, 29.702827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212460, 34.190624, 30.144627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.547459, 34.011024, 30.020046>,  <32.748459, 33.903263, 29.945299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.547459, 34.011024, 30.020046>,  <32.212460, 34.190624, 30.144627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547459, 34.011024, 30.020046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222131, -0.241006, 0.944761,
		-0.499261, -0.860415, -0.102104,
		0.837494, -0.449002, -0.311450,
		32.798706, 33.876324, 29.926611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293369, 33.463821, 30.557905>,  <32.212460, 34.190624, 30.144627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293369, 33.463821, 30.557905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.645241, 33.585606, 30.411770>,  <32.856365, 33.658676, 30.324089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.645241, 33.585606, 30.411770>,  <32.293369, 33.463821, 30.557905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645241, 33.585606, 30.411770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425700, -0.161646, 0.890309,
		0.212008, -0.938709, -0.271804,
		0.879677, 0.304459, -0.365338,
		32.909145, 33.676945, 30.302168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691277, 32.990650, 30.848593>,  <32.293369, 33.463821, 30.557905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691277, 32.990650, 30.848593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962650, 33.264725, 30.742579>,  <33.125473, 33.429169, 30.678970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962650, 33.264725, 30.742579>,  <32.691277, 32.990650, 30.848593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962650, 33.264725, 30.742579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305850, 0.064589, 0.949886,
		0.667971, -0.725495, -0.165746,
		0.678432, 0.685189, -0.265037,
		33.166180, 33.470284, 30.663067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371513, 32.784718, 31.047153>,  <32.691277, 32.990650, 30.848593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371513, 32.784718, 31.047153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.397446, 33.183399, 31.027653>,  <33.413006, 33.422607, 31.015951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.397446, 33.183399, 31.027653>,  <33.371513, 32.784718, 31.047153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397446, 33.183399, 31.027653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178798, 0.036463, 0.983210,
		0.981748, -0.072457, -0.175845,
		0.064829, 0.996705, -0.048753,
		33.416893, 33.482410, 31.013027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966469, 33.009983, 31.346855>,  <33.371513, 32.784718, 31.047153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966469, 33.009983, 31.346855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.774910, 33.361065, 31.353710>,  <33.659973, 33.571712, 31.357824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.774910, 33.361065, 31.353710>,  <33.966469, 33.009983, 31.346855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774910, 33.361065, 31.353710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245912, 0.115383, 0.962400,
		0.842724, 0.465107, -0.271094,
		-0.478899, 0.877703, 0.017140,
		33.631241, 33.624374, 31.358852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591267, 33.311707, 31.255964>,  <33.966469, 33.009983, 31.346855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591267, 33.311707, 31.255964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863224, 33.037392, 31.359844>,  <35.026398, 32.872803, 31.422173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863224, 33.037392, 31.359844>,  <34.591267, 33.311707, 31.255964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863224, 33.037392, 31.359844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001662, -0.355589, -0.934641,
		0.733312, 0.635022, -0.242901,
		0.679891, -0.685787, 0.259702,
		35.067192, 32.831657, 31.437756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232586, 33.373920, 30.770727>,  <34.591267, 33.311707, 31.255964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232586, 33.373920, 30.770727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.198078, 33.002712, 30.915691>,  <35.177376, 32.779987, 31.002670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.198078, 33.002712, 30.915691>,  <35.232586, 33.373920, 30.770727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198078, 33.002712, 30.915691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103606, -0.370151, -0.923176,
		0.990871, -0.042090, 0.128080,
		-0.086265, -0.928018, 0.362411,
		35.172199, 32.724308, 31.024414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833038, 32.946445, 30.642385>,  <35.232586, 33.373920, 30.770727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833038, 32.946445, 30.642385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.521126, 32.701424, 30.694099>,  <35.333977, 32.554409, 30.725128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.521126, 32.701424, 30.694099>,  <35.833038, 32.946445, 30.642385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521126, 32.701424, 30.694099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068768, -0.289065, -0.954836,
		0.622261, -0.735675, 0.267532,
		-0.779783, -0.612555, 0.129283,
		35.287189, 32.517658, 30.732883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988850, 32.491783, 30.150129>,  <35.833038, 32.946445, 30.642385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988850, 32.491783, 30.150129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.615402, 32.402142, 30.261936>,  <35.391335, 32.348354, 30.329021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.615402, 32.402142, 30.261936>,  <35.988850, 32.491783, 30.150129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615402, 32.402142, 30.261936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139194, -0.492003, -0.859394,
		0.330121, -0.841254, 0.428149,
		-0.933619, -0.224108, 0.279518,
		35.335316, 32.334908, 30.345791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945797, 31.763020, 30.001831>,  <35.988850, 32.491783, 30.150129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945797, 31.763020, 30.001831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574371, 31.911110, 30.012436>,  <35.351517, 31.999964, 30.018799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574371, 31.911110, 30.012436>,  <35.945797, 31.763020, 30.001831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574371, 31.911110, 30.012436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221495, -0.495376, -0.839966,
		-0.297844, -0.785834, 0.541991,
		-0.928563, 0.370227, 0.026513,
		35.295803, 32.022179, 30.020390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596199, 31.107664, 29.875967>,  <35.945797, 31.763020, 30.001831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596199, 31.107664, 29.875967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.326309, 31.400213, 29.836275>,  <35.164375, 31.575743, 29.812460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.326309, 31.400213, 29.836275>,  <35.596199, 31.107664, 29.875967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326309, 31.400213, 29.836275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120603, -0.241887, -0.962780,
		-0.728154, -0.637639, 0.251412,
		-0.674719, 0.731373, -0.099230,
		35.123894, 31.619625, 29.806505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987858, 30.792599, 29.558149>,  <35.596199, 31.107664, 29.875967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987858, 30.792599, 29.558149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.023621, 31.177629, 29.455812>,  <35.045078, 31.408648, 29.394409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.023621, 31.177629, 29.455812>,  <34.987858, 30.792599, 29.558149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023621, 31.177629, 29.455812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049769, -0.252233, -0.966386,
		-0.994751, 0.099137, 0.025354,
		0.089410, 0.962575, -0.255843,
		35.050442, 31.466402, 29.379059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452389, 30.873960, 29.076042>,  <34.987858, 30.792599, 29.558149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452389, 30.873960, 29.076042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.703983, 31.177103, 29.006727>,  <34.854942, 31.358988, 28.965139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.703983, 31.177103, 29.006727>,  <34.452389, 30.873960, 29.076042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703983, 31.177103, 29.006727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000083, -0.222966, -0.974826,
		-0.777414, 0.613141, -0.140306,
		0.628990, 0.757855, -0.173286,
		34.892681, 31.404459, 28.954741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244190, 31.186966, 28.484135>,  <34.452389, 30.873960, 29.076042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244190, 31.186966, 28.484135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.623928, 31.312654, 28.485666>,  <34.851768, 31.388067, 28.486586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.623928, 31.312654, 28.485666>,  <34.244190, 31.186966, 28.484135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623928, 31.312654, 28.485666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015437, -0.034467, -0.999287,
		-0.313867, 0.948723, -0.037572,
		0.949342, 0.314223, 0.003827,
		34.908730, 31.406921, 28.486814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295071, 31.812523, 28.028650>,  <34.244190, 31.186966, 28.484135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295071, 31.812523, 28.028650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.635139, 31.602823, 28.048128>,  <34.839180, 31.477003, 28.059814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.635139, 31.602823, 28.048128>,  <34.295071, 31.812523, 28.028650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635139, 31.602823, 28.048128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013821, -0.114675, -0.993307,
		0.526325, 0.843808, -0.104739,
		0.850172, -0.524249, 0.048694,
		34.890190, 31.445549, 28.062737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829720, 32.264206, 27.633213>,  <34.295071, 31.812523, 28.028650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829720, 32.264206, 27.633213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.941311, 31.880472, 27.650423>,  <35.008266, 31.650232, 27.660749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.941311, 31.880472, 27.650423>,  <34.829720, 32.264206, 27.633213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941311, 31.880472, 27.650423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052033, -0.029638, -0.998206,
		0.958886, 0.280718, 0.041648,
		0.278980, -0.959332, 0.043026,
		35.025005, 31.592672, 27.663330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530460, 32.118366, 27.334229>,  <34.829720, 32.264206, 27.633213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530460, 32.118366, 27.334229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.271973, 31.815319, 27.297550>,  <35.116879, 31.633490, 27.275543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.271973, 31.815319, 27.297550>,  <35.530460, 32.118366, 27.334229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271973, 31.815319, 27.297550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099941, 0.035107, -0.994374,
		0.756577, -0.651751, 0.053030,
		-0.646222, -0.757620, -0.091697,
		35.078106, 31.588034, 27.270041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801220, 31.655722, 26.841042>,  <35.530460, 32.118366, 27.334229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801220, 31.655722, 26.841042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.414333, 31.554789, 26.852560>,  <35.182201, 31.494228, 26.859472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.414333, 31.554789, 26.852560>,  <35.801220, 31.655722, 26.841042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414333, 31.554789, 26.852560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022368, -0.028310, -0.999349,
		0.252984, -0.967226, 0.021738,
		-0.967212, -0.252333, 0.028797,
		35.124168, 31.479090, 26.861198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802574, 31.067327, 26.427792>,  <35.801220, 31.655722, 26.841042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802574, 31.067327, 26.427792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.450005, 31.256102, 26.435453>,  <35.238461, 31.369366, 26.440050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.450005, 31.256102, 26.435453>,  <35.802574, 31.067327, 26.427792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450005, 31.256102, 26.435453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079866, 0.188892, -0.978745,
		-0.465521, -0.861161, -0.204186,
		-0.881425, 0.471934, 0.019156,
		35.185577, 31.397682, 26.441200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010353, 30.401573, 26.370350>,  <35.802574, 31.067327, 26.427792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010353, 30.401573, 26.370350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383232, 30.324438, 26.247833>,  <36.606960, 30.278156, 26.174322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383232, 30.324438, 26.247833>,  <36.010353, 30.401573, 26.370350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383232, 30.324438, 26.247833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338386, 0.164042, 0.926599,
		-0.128439, -0.967421, 0.218174,
		0.932201, -0.192838, -0.306293,
		36.662891, 30.266586, 26.155945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252579, 30.008041, 26.856161>,  <36.010353, 30.401573, 26.370350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252579, 30.008041, 26.856161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.590141, 30.128643, 26.678658>,  <36.792679, 30.201004, 26.572155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.590141, 30.128643, 26.678658>,  <36.252579, 30.008041, 26.856161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590141, 30.128643, 26.678658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460325, 0.017901, 0.887570,
		0.275551, -0.953296, -0.123684,
		0.843903, 0.301506, -0.443759,
		36.843311, 30.219095, 26.545530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798920, 29.561295, 27.099083>,  <36.252579, 30.008041, 26.856161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798920, 29.561295, 27.099083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.006176, 29.875132, 26.962879>,  <37.130531, 30.063433, 26.881157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.006176, 29.875132, 26.962879>,  <36.798920, 29.561295, 27.099083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006176, 29.875132, 26.962879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448423, 0.089816, 0.889297,
		0.728318, -0.613473, -0.305291,
		0.518140, 0.784591, -0.340510,
		37.161617, 30.110510, 26.860725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508305, 29.410641, 27.341276>,  <36.798920, 29.561295, 27.099083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508305, 29.410641, 27.341276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.477974, 29.799652, 27.253242>,  <37.459774, 30.033058, 27.200422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.477974, 29.799652, 27.253242>,  <37.508305, 29.410641, 27.341276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477974, 29.799652, 27.253242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524480, 0.226621, 0.820709,
		0.848040, -0.053200, -0.527256,
		-0.075826, 0.972529, -0.220086,
		37.455227, 30.091412, 27.187216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198616, 29.764704, 27.316404>,  <37.508305, 29.410641, 27.341276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198616, 29.764704, 27.316404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932644, 30.058853, 27.368713>,  <37.773060, 30.235342, 27.400099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932644, 30.058853, 27.368713>,  <38.198616, 29.764704, 27.316404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932644, 30.058853, 27.368713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483713, 0.290558, 0.825589,
		0.569118, 0.612212, -0.548909,
		-0.664926, 0.735372, 0.130773,
		37.733166, 30.279465, 27.407946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603867, 30.321194, 27.557165>,  <38.198616, 29.764704, 27.316404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603867, 30.321194, 27.557165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.228882, 30.393288, 27.676279>,  <38.003891, 30.436544, 27.747747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.228882, 30.393288, 27.676279>,  <38.603867, 30.321194, 27.557165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228882, 30.393288, 27.676279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340272, 0.294320, 0.893079,
		0.073321, 0.938558, -0.337244,
		-0.937464, 0.180236, 0.297785,
		37.947643, 30.447359, 27.765614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545841, 31.051462, 27.709312>,  <38.603867, 30.321194, 27.557165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545841, 31.051462, 27.709312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248413, 30.872946, 27.908480>,  <38.069954, 30.765837, 28.027981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248413, 30.872946, 27.908480>,  <38.545841, 31.051462, 27.709312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248413, 30.872946, 27.908480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273033, 0.477095, 0.835364,
		-0.610370, 0.757103, -0.232903,
		-0.743574, -0.446290, 0.497919,
		38.025341, 30.739059, 28.057856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197094, 31.638889, 28.159052>,  <38.545841, 31.051462, 27.709312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197094, 31.638889, 28.159052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.114857, 31.286083, 28.328653>,  <38.065514, 31.074400, 28.430414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.114857, 31.286083, 28.328653>,  <38.197094, 31.638889, 28.159052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114857, 31.286083, 28.328653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040296, 0.440521, 0.896837,
		-0.977807, 0.167299, -0.126110,
		-0.205594, -0.882016, 0.424003,
		38.053177, 31.021479, 28.455854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572128, 31.733553, 28.585518>,  <38.197094, 31.638889, 28.159052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572128, 31.733553, 28.585518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758751, 31.405083, 28.716967>,  <37.870724, 31.208000, 28.795835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.758751, 31.405083, 28.716967>,  <37.572128, 31.733553, 28.585518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758751, 31.405083, 28.716967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045632, 0.348698, 0.936123,
		-0.883313, -0.451752, 0.125216,
		0.466558, -0.821176, 0.328624,
		37.898720, 31.158730, 28.815554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376099, 31.592453, 29.302853>,  <37.572128, 31.733553, 28.585518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376099, 31.592453, 29.302853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.708939, 31.371170, 29.287016>,  <37.908642, 31.238400, 29.277514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.708939, 31.371170, 29.287016>,  <37.376099, 31.592453, 29.302853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708939, 31.371170, 29.287016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232053, 0.282424, 0.930800,
		-0.503744, -0.783708, 0.363379,
		0.832102, -0.553208, -0.039592,
		37.958569, 31.205208, 29.275139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331261, 31.259233, 29.959913>,  <37.376099, 31.592453, 29.302853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331261, 31.259233, 29.959913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711315, 31.228443, 29.839041>,  <37.939346, 31.209969, 29.766518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711315, 31.228443, 29.839041>,  <37.331261, 31.259233, 29.959913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711315, 31.228443, 29.839041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306062, 0.415748, 0.856434,
		0.059707, -0.906217, 0.418577,
		0.950137, -0.076975, -0.302181,
		37.996357, 31.205351, 29.748386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666969, 31.071611, 30.538059>,  <37.331261, 31.259233, 29.959913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666969, 31.071611, 30.538059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.962112, 31.206112, 30.303967>,  <38.139198, 31.286812, 30.163511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.962112, 31.206112, 30.303967>,  <37.666969, 31.071611, 30.538059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962112, 31.206112, 30.303967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525096, 0.258805, 0.810737,
		0.424072, -0.905514, 0.014398,
		0.737860, 0.336250, -0.585234,
		38.183472, 31.306988, 30.128397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257030, 30.781418, 30.832470>,  <37.666969, 31.071611, 30.538059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257030, 30.781418, 30.832470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358898, 31.088680, 30.597496>,  <38.420017, 31.273039, 30.456512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358898, 31.088680, 30.597496>,  <38.257030, 30.781418, 30.832470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358898, 31.088680, 30.597496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472926, 0.430932, 0.768531,
		0.843496, -0.473532, -0.253538,
		0.254666, 0.768157, -0.587435,
		38.435299, 31.319128, 30.421265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856106, 30.893999, 31.053349>,  <38.257030, 30.781418, 30.832470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856106, 30.893999, 31.053349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770603, 31.240295, 30.872328>,  <38.719299, 31.448072, 30.763716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770603, 31.240295, 30.872328>,  <38.856106, 30.893999, 31.053349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770603, 31.240295, 30.872328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628452, 0.476540, 0.614783,
		0.747900, -0.152991, -0.645940,
		-0.213760, 0.865739, -0.452552,
		38.706474, 31.500017, 30.736563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.662319, 32.518524, 25.300724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.265446, 32.566490, 25.314507>,  <39.027321, 32.595268, 25.322775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.265446, 32.566490, 25.314507>,  <39.662319, 32.518524, 25.300724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265446, 32.566490, 25.314507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080093, -0.400437, -0.912817,
		-0.095660, -0.908445, 0.406912,
		-0.992187, 0.119911, 0.034455,
		38.967789, 32.602463, 25.324842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372181, 31.956247, 24.856264>,  <39.662319, 32.518524, 25.300724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372181, 31.956247, 24.856264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.059753, 32.204231, 24.886145>,  <38.872295, 32.353024, 24.904074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.059753, 32.204231, 24.886145>,  <39.372181, 31.956247, 24.856264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059753, 32.204231, 24.886145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388004, -0.388103, -0.835960,
		-0.489272, -0.681925, 0.543683,
		-0.781067, 0.619963, 0.074702,
		38.825432, 32.390221, 24.908556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908768, 31.634192, 24.440870>,  <39.372181, 31.956247, 24.856264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908768, 31.634192, 24.440870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739174, 31.994663, 24.476910>,  <38.637417, 32.210945, 24.498533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739174, 31.994663, 24.476910>,  <38.908768, 31.634192, 24.440870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739174, 31.994663, 24.476910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425794, -0.110542, -0.898042,
		-0.799338, -0.419114, 0.430584,
		-0.423980, 0.901179, 0.090096,
		38.611980, 32.265018, 24.503939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192032, 31.477592, 24.331337>,  <38.908768, 31.634192, 24.440870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192032, 31.477592, 24.331337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.289768, 31.856731, 24.249474>,  <38.348412, 32.084213, 24.200356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.289768, 31.856731, 24.249474>,  <38.192032, 31.477592, 24.331337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289768, 31.856731, 24.249474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516864, -0.051270, -0.854531,
		-0.820457, 0.314578, 0.477380,
		0.244341, 0.947846, -0.204659,
		38.363071, 32.141087, 24.188076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518093, 31.774036, 24.179682>,  <38.192032, 31.477592, 24.331337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518093, 31.774036, 24.179682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801632, 31.995811, 24.005264>,  <37.971756, 32.128876, 23.900614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801632, 31.995811, 24.005264>,  <37.518093, 31.774036, 24.179682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801632, 31.995811, 24.005264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528681, 0.008383, -0.848779,
		-0.466938, 0.832184, 0.299062,
		0.708848, 0.554436, -0.436045,
		38.014286, 32.162144, 23.874451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169247, 32.378078, 23.840914>,  <37.518093, 31.774036, 24.179682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169247, 32.378078, 23.840914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.515614, 32.311237, 23.652332>,  <37.723434, 32.271133, 23.539183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.515614, 32.311237, 23.652332>,  <37.169247, 32.378078, 23.840914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515614, 32.311237, 23.652332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474520, 0.023649, -0.879927,
		0.158188, 0.985656, -0.058815,
		0.865914, -0.167103, -0.471454,
		37.775387, 32.261108, 23.510897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068348, 32.720634, 23.287909>,  <37.169247, 32.378078, 23.840914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068348, 32.720634, 23.287909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383102, 32.493462, 23.191353>,  <37.571957, 32.357159, 23.133419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383102, 32.493462, 23.191353>,  <37.068348, 32.720634, 23.287909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383102, 32.493462, 23.191353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288753, 0.006841, -0.957379,
		0.545375, 0.823049, -0.158608,
		0.786885, -0.567929, -0.241389,
		37.619167, 32.323082, 23.118937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395267, 33.124123, 22.734215>,  <37.068348, 32.720634, 23.287909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395267, 33.124123, 22.734215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.509777, 32.741344, 22.715038>,  <37.578484, 32.511677, 22.703533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.509777, 32.741344, 22.715038>,  <37.395267, 33.124123, 22.734215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509777, 32.741344, 22.715038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219166, -0.016692, -0.975545,
		0.932745, 0.289782, -0.214508,
		0.286276, -0.956947, -0.047941,
		37.595661, 32.454262, 22.700655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737762, 33.178402, 22.091633>,  <37.395267, 33.124123, 22.734215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737762, 33.178402, 22.091633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.672726, 32.795223, 22.186207>,  <37.633701, 32.565315, 22.242950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.672726, 32.795223, 22.186207>,  <37.737762, 33.178402, 22.091633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672726, 32.795223, 22.186207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206306, -0.201319, -0.957553,
		0.964884, -0.204472, -0.164897,
		-0.162596, -0.957947, 0.236433,
		37.623947, 32.507839, 22.257137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105255, 32.718151, 21.636414>,  <37.737762, 33.178402, 22.091633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105255, 32.718151, 21.636414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792229, 32.510529, 21.773922>,  <37.604412, 32.385956, 21.856426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.792229, 32.510529, 21.773922>,  <38.105255, 32.718151, 21.636414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792229, 32.510529, 21.773922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126403, -0.408211, -0.904094,
		0.609604, -0.750964, 0.253841,
		-0.782563, -0.519053, 0.343771,
		37.557461, 32.354813, 21.877054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181648, 32.103073, 21.428099>,  <38.105255, 32.718151, 21.636414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181648, 32.103073, 21.428099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795044, 32.104488, 21.530745>,  <37.563084, 32.105335, 21.592333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795044, 32.104488, 21.530745>,  <38.181648, 32.103073, 21.428099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795044, 32.104488, 21.530745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243373, -0.329945, -0.912089,
		0.081446, -0.943994, 0.319754,
		-0.966507, 0.003533, 0.256615,
		37.505093, 32.105549, 21.607729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928337, 31.467772, 21.097948>,  <38.181648, 32.103073, 21.428099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928337, 31.467772, 21.097948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.582207, 31.655806, 21.167488>,  <37.374527, 31.768625, 21.209211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.582207, 31.655806, 21.167488>,  <37.928337, 31.467772, 21.097948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582207, 31.655806, 21.167488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257573, -0.119536, -0.958837,
		-0.429954, -0.874489, 0.224519,
		-0.865330, 0.470085, 0.173850,
		37.322609, 31.796831, 21.219643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312675, 30.968330, 20.849913>,  <37.928337, 31.467772, 21.097948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312675, 30.968330, 20.849913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179981, 31.345600, 20.857634>,  <37.100365, 31.571962, 20.862267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179981, 31.345600, 20.857634>,  <37.312675, 30.968330, 20.849913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179981, 31.345600, 20.857634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109066, -0.018023, -0.993871,
		-0.937048, -0.331804, 0.108847,
		-0.331732, 0.943176, 0.019300,
		37.080463, 31.628553, 20.863424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735065, 30.963758, 20.382603>,  <37.312675, 30.968330, 20.849913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735065, 30.963758, 20.382603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943600, 31.304060, 20.409233>,  <37.068718, 31.508242, 20.425211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943600, 31.304060, 20.409233>,  <36.735065, 30.963758, 20.382603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943600, 31.304060, 20.409233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124047, 0.001638, -0.992275,
		-0.844290, 0.525563, -0.104679,
		0.521331, 0.850753, 0.066577,
		37.099998, 31.559286, 20.429207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256805, 30.485722, 20.699648>,  <36.735065, 30.963758, 20.382603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256805, 30.485722, 20.699648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.912071, 30.283070, 20.709177>,  <35.705231, 30.161478, 20.714895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.912071, 30.283070, 20.709177>,  <36.256805, 30.485722, 20.699648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912071, 30.283070, 20.709177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077042, -0.084339, 0.993454,
		-0.501304, 0.858029, 0.111718,
		-0.861834, -0.506630, 0.023824,
		35.653522, 30.131081, 20.716324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711231, 30.784616, 21.222450>,  <36.256805, 30.485722, 20.699648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711231, 30.784616, 21.222450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630508, 30.396301, 21.170536>,  <35.582077, 30.163313, 21.139387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630508, 30.396301, 21.170536>,  <35.711231, 30.784616, 21.222450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630508, 30.396301, 21.170536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107915, -0.153744, 0.982200,
		-0.973463, 0.184207, 0.135789,
		-0.201805, -0.970789, -0.129786,
		35.569965, 30.105064, 21.131599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089043, 30.577291, 21.610950>,  <35.711231, 30.784616, 21.222450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089043, 30.577291, 21.610950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.321293, 30.254217, 21.569925>,  <35.460644, 30.060373, 21.545309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.321293, 30.254217, 21.569925>,  <35.089043, 30.577291, 21.610950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321293, 30.254217, 21.569925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019393, -0.112219, 0.993494,
		-0.813941, -0.578835, -0.049493,
		0.580624, -0.807686, -0.102565,
		35.495480, 30.011911, 21.539156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836170, 30.059647, 22.105963>,  <35.089043, 30.577291, 21.610950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836170, 30.059647, 22.105963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.192883, 29.908382, 22.006588>,  <35.406910, 29.817623, 21.946964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.192883, 29.908382, 22.006588>,  <34.836170, 30.059647, 22.105963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192883, 29.908382, 22.006588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201184, -0.160403, 0.966331,
		-0.405280, -0.911737, -0.066965,
		0.891781, -0.378162, -0.248435,
		35.460419, 29.794933, 21.932058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890850, 29.495525, 22.511377>,  <34.836170, 30.059647, 22.105963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890850, 29.495525, 22.511377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266685, 29.568308, 22.395399>,  <35.492188, 29.611977, 22.325811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266685, 29.568308, 22.395399>,  <34.890850, 29.495525, 22.511377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266685, 29.568308, 22.395399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312963, -0.113463, 0.942964,
		0.138681, -0.976738, -0.163554,
		0.939586, 0.181957, -0.289948,
		35.548561, 29.622894, 22.308414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278446, 28.997114, 22.710989>,  <34.890850, 29.495525, 22.511377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278446, 28.997114, 22.710989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549263, 29.289337, 22.675447>,  <35.711754, 29.464670, 22.654123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549263, 29.289337, 22.675447>,  <35.278446, 28.997114, 22.710989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549263, 29.289337, 22.675447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230248, -0.095598, 0.968425,
		0.698995, -0.676127, -0.232934,
		0.677046, 0.730557, -0.088854,
		35.752377, 29.508505, 22.648790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000446, 28.729000, 22.804230>,  <35.278446, 28.997114, 22.710989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000446, 28.729000, 22.804230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979977, 29.119127, 22.890144>,  <35.967693, 29.353205, 22.941692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979977, 29.119127, 22.890144>,  <36.000446, 28.729000, 22.804230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979977, 29.119127, 22.890144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343969, -0.184693, 0.920638,
		0.937585, 0.120996, -0.326027,
		-0.051179, 0.975320, 0.214785,
		35.964622, 29.411724, 22.954580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450962, 28.711094, 23.258652>,  <36.000446, 28.729000, 22.804230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450962, 28.711094, 23.258652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.288189, 29.072943, 23.309349>,  <36.190525, 29.290052, 23.339767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.288189, 29.072943, 23.309349>,  <36.450962, 28.711094, 23.258652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288189, 29.072943, 23.309349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311049, 0.006769, 0.950370,
		0.858868, 0.426160, -0.284137,
		-0.406933, 0.904623, 0.126743,
		36.166111, 29.344330, 23.347372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855824, 29.114626, 23.637079>,  <36.450962, 28.711094, 23.258652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855824, 29.114626, 23.637079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.535946, 29.349615, 23.686651>,  <36.344017, 29.490608, 23.716394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.535946, 29.349615, 23.686651>,  <36.855824, 29.114626, 23.637079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535946, 29.349615, 23.686651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340957, 0.274451, 0.899124,
		0.494199, 0.761283, -0.419781,
		-0.799698, 0.587473, 0.123931,
		36.296036, 29.525858, 23.723831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068913, 29.666994, 23.990011>,  <36.855824, 29.114626, 23.637079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068913, 29.666994, 23.990011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688107, 29.699173, 24.108130>,  <36.459625, 29.718481, 24.179001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688107, 29.699173, 24.108130>,  <37.068913, 29.666994, 23.990011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688107, 29.699173, 24.108130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304571, 0.154075, 0.939945,
		0.030120, 0.984779, -0.171184,
		-0.952013, 0.080449, 0.295295,
		36.402504, 29.723307, 24.196718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088192, 30.157911, 24.451664>,  <37.068913, 29.666994, 23.990011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088192, 30.157911, 24.451664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716419, 30.025150, 24.516165>,  <36.493355, 29.945494, 24.554865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716419, 30.025150, 24.516165>,  <37.088192, 30.157911, 24.451664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716419, 30.025150, 24.516165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054030, 0.309879, 0.949240,
		-0.365025, 0.890963, -0.270077,
		-0.929429, -0.331904, 0.161252,
		36.437592, 29.925579, 24.564541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712391, 30.785919, 24.701611>,  <37.088192, 30.157911, 24.451664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712391, 30.785919, 24.701611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.562569, 30.436573, 24.826153>,  <36.472675, 30.226965, 24.900879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.562569, 30.436573, 24.826153>,  <36.712391, 30.785919, 24.701611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562569, 30.436573, 24.826153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169584, 0.265609, 0.949049,
		-0.911566, 0.408269, 0.048625,
		-0.374551, -0.873366, 0.311356,
		36.450203, 30.174562, 24.919559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354942, 30.969984, 25.238525>,  <36.712391, 30.785919, 24.701611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354942, 30.969984, 25.238525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421421, 30.577948, 25.281981>,  <36.461308, 30.342726, 25.308054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421421, 30.577948, 25.281981>,  <36.354942, 30.969984, 25.238525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421421, 30.577948, 25.281981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385451, 0.165974, 0.907678,
		-0.907638, -0.108975, 0.405361,
		0.166194, -0.980090, 0.108640,
		36.471279, 30.283920, 25.314573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945095, 30.799335, 25.745590>,  <36.354942, 30.969984, 25.238525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945095, 30.799335, 25.745590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.243874, 30.533394, 25.748095>,  <36.423141, 30.373829, 25.749598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.243874, 30.533394, 25.748095>,  <35.945095, 30.799335, 25.745590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243874, 30.533394, 25.748095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323339, 0.371464, 0.870325,
		-0.580964, -0.648063, 0.492438,
		0.746949, -0.664852, 0.006263,
		36.467957, 30.333939, 25.749973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180519, 30.724268, 25.966867>,  <35.945095, 30.799335, 25.745590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180519, 30.724268, 25.966867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.964710, 31.058325, 26.009687>,  <34.835224, 31.258759, 26.035379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.964710, 31.058325, 26.009687>,  <35.180519, 30.724268, 25.966867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964710, 31.058325, 26.009687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218179, -0.015868, -0.975780,
		-0.813215, -0.549808, 0.190771,
		-0.539518, 0.835140, 0.107052,
		34.802856, 31.308867, 26.041803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517208, 30.666922, 25.580793>,  <35.180519, 30.724268, 25.966867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517208, 30.666922, 25.580793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597149, 31.057804, 25.609421>,  <34.645115, 31.292334, 25.626596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597149, 31.057804, 25.609421>,  <34.517208, 30.666922, 25.580793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597149, 31.057804, 25.609421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367556, 0.142478, -0.919023,
		-0.908273, 0.157367, 0.387654,
		0.199856, 0.977208, 0.071567,
		34.657104, 31.350967, 25.630892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023502, 31.041668, 25.291658>,  <34.517208, 30.666922, 25.580793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023502, 31.041668, 25.291658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301117, 31.329214, 25.307360>,  <34.467686, 31.501741, 25.316780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301117, 31.329214, 25.307360>,  <34.023502, 31.041668, 25.291658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301117, 31.329214, 25.307360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298151, 0.336626, -0.893190,
		-0.655300, 0.608204, 0.447962,
		0.694038, 0.718868, 0.039254,
		34.509327, 31.544874, 25.319136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661980, 31.638229, 25.187870>,  <34.023502, 31.041668, 25.291658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661980, 31.638229, 25.187870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.036022, 31.730282, 25.080076>,  <34.260448, 31.785513, 25.015400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.036022, 31.730282, 25.080076>,  <33.661980, 31.638229, 25.187870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036022, 31.730282, 25.080076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337298, 0.344771, -0.875993,
		-0.108681, 0.910040, 0.400019,
		0.935103, 0.230129, -0.269485,
		34.316555, 31.799320, 24.999231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574066, 32.299583, 24.994173>,  <33.661980, 31.638229, 25.187870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574066, 32.299583, 24.994173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904469, 32.173923, 24.806971>,  <34.102711, 32.098526, 24.694649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904469, 32.173923, 24.806971>,  <33.574066, 32.299583, 24.994173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904469, 32.173923, 24.806971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400598, 0.256922, -0.879495,
		0.396536, 0.913947, 0.086370,
		0.826003, -0.314152, -0.468005,
		34.152267, 32.079678, 24.666569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718861, 32.770683, 24.549509>,  <33.574066, 32.299583, 24.994173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718861, 32.770683, 24.549509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883739, 32.431999, 24.414942>,  <33.982666, 32.228790, 24.334202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883739, 32.431999, 24.414942>,  <33.718861, 32.770683, 24.549509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883739, 32.431999, 24.414942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277068, 0.235267, -0.931602,
		0.867943, 0.477216, -0.137619,
		0.412198, -0.846708, -0.336420,
		34.007401, 32.177986, 24.314016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863266, 32.917130, 23.892715>,  <33.718861, 32.770683, 24.549509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863266, 32.917130, 23.892715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856052, 32.518173, 23.920696>,  <33.851723, 32.278801, 23.937485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856052, 32.518173, 23.920696>,  <33.863266, 32.917130, 23.892715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856052, 32.518173, 23.920696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274708, -0.062327, -0.959505,
		0.961359, -0.036523, -0.272866,
		-0.018037, -0.997387, 0.069952,
		33.850643, 32.218956, 23.941681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239559, 33.359097, 23.544743>,  <33.863266, 32.917130, 23.892715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239559, 33.359097, 23.544743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927456, 33.597023, 23.622084>,  <33.740192, 33.739780, 23.668488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927456, 33.597023, 23.622084>,  <34.239559, 33.359097, 23.544743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927456, 33.597023, 23.622084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063413, -0.232310, 0.970572,
		0.622232, 0.769560, 0.143543,
		-0.780260, 0.594819, 0.193351,
		33.693378, 33.775467, 23.680090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516773, 33.676472, 24.114100>,  <34.239559, 33.359097, 23.544743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516773, 33.676472, 24.114100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123878, 33.751137, 24.106455>,  <33.888142, 33.795937, 24.101868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123878, 33.751137, 24.106455>,  <34.516773, 33.676472, 24.114100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123878, 33.751137, 24.106455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038092, -0.098632, 0.994395,
		0.183733, 0.977460, 0.103990,
		-0.982238, 0.186664, -0.019112,
		33.829208, 33.807137, 24.100721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408863, 33.897121, 24.889381>,  <34.516773, 33.676472, 24.114100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408863, 33.897121, 24.889381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.045563, 33.822918, 24.739357>,  <33.827583, 33.778397, 24.649342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.045563, 33.822918, 24.739357>,  <34.408863, 33.897121, 24.889381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045563, 33.822918, 24.739357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369452, -0.065281, 0.926954,
		-0.196438, 0.980473, -0.009244,
		-0.908249, -0.185504, -0.375061,
		33.773087, 33.767265, 24.626839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914944, 34.477924, 25.136204>,  <34.408863, 33.897121, 24.889381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914944, 34.477924, 25.136204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.693455, 34.154362, 25.057158>,  <33.560562, 33.960224, 25.009729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.693455, 34.154362, 25.057158>,  <33.914944, 34.477924, 25.136204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693455, 34.154362, 25.057158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566769, 0.192257, 0.801131,
		-0.610050, 0.555608, -0.564923,
		-0.553726, -0.808911, -0.197615,
		33.527336, 33.911690, 24.997873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327072, 34.698555, 25.308823>,  <33.914944, 34.477924, 25.136204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327072, 34.698555, 25.308823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.264709, 34.303448, 25.308052>,  <33.227291, 34.066383, 25.307589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.264709, 34.303448, 25.308052>,  <33.327072, 34.698555, 25.308823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264709, 34.303448, 25.308052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518484, 0.080174, 0.851321,
		-0.840754, 0.133725, -0.524642,
		-0.155906, -0.987770, -0.001928,
		33.217937, 34.007118, 25.307474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629559, 34.534321, 25.490040>,  <33.327072, 34.698555, 25.308823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629559, 34.534321, 25.490040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.822754, 34.192944, 25.568375>,  <32.938671, 33.988117, 25.615376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.822754, 34.192944, 25.568375>,  <32.629559, 34.534321, 25.490040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822754, 34.192944, 25.568375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464764, -0.060317, 0.883378,
		-0.742105, -0.517676, -0.425784,
		0.482986, -0.853448, 0.195836,
		32.967651, 33.936909, 25.627125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088367, 33.983238, 25.749966>,  <32.629559, 34.534321, 25.490040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088367, 33.983238, 25.749966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.441963, 33.842339, 25.872917>,  <32.654121, 33.757797, 25.946688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.441963, 33.842339, 25.872917>,  <32.088367, 33.983238, 25.749966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441963, 33.842339, 25.872917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355116, -0.078311, 0.931537,
		-0.304062, -0.932624, -0.194315,
		0.883990, -0.352250, 0.307378,
		32.707161, 33.736664, 25.965130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.162746, 33.392075, 22.004272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.901413, 33.692669, 21.967552>,  <33.744614, 33.873024, 21.945520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.901413, 33.692669, 21.967552>,  <34.162746, 33.392075, 22.004272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901413, 33.692669, 21.967552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202880, -0.290610, -0.935086,
		-0.729382, -0.592296, 0.342325,
		-0.653331, 0.751486, -0.091801,
		33.705414, 33.918114, 21.940012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657219, 33.874554, 21.651512>,  <34.162746, 33.392075, 22.004272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657219, 33.874554, 21.651512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.022171, 33.714211, 21.684662>,  <35.241142, 33.618004, 21.704552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.022171, 33.714211, 21.684662>,  <34.657219, 33.874554, 21.651512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022171, 33.714211, 21.684662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181753, 0.578140, 0.795437,
		-0.366771, -0.710681, 0.600343,
		0.912384, -0.400858, 0.082876,
		35.295887, 33.593952, 21.709524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717705, 33.751308, 22.348827>,  <34.657219, 33.874554, 21.651512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717705, 33.751308, 22.348827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104408, 33.714470, 22.253416>,  <35.336430, 33.692368, 22.196169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104408, 33.714470, 22.253416>,  <34.717705, 33.751308, 22.348827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104408, 33.714470, 22.253416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245768, 0.592025, 0.767531,
		0.070530, -0.800640, 0.594979,
		0.966760, -0.092093, -0.238527,
		35.394436, 33.686844, 22.181858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139015, 33.574020, 23.011013>,  <34.717705, 33.751308, 22.348827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139015, 33.574020, 23.011013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.402630, 33.742569, 22.761818>,  <35.560799, 33.843700, 22.612301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.402630, 33.742569, 22.761818>,  <35.139015, 33.574020, 23.011013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402630, 33.742569, 22.761818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346339, 0.565245, 0.748697,
		0.667624, -0.709184, 0.226577,
		0.659035, 0.421376, -0.622989,
		35.600342, 33.868980, 22.574921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894577, 33.552319, 23.331913>,  <35.139015, 33.574020, 23.011013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894577, 33.552319, 23.331913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.807098, 33.855354, 23.085913>,  <35.754612, 34.037178, 22.938313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.807098, 33.855354, 23.085913>,  <35.894577, 33.552319, 23.331913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807098, 33.855354, 23.085913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193080, 0.651393, 0.733763,
		0.956501, 0.041725, -0.288731,
		-0.218694, 0.757592, -0.615001,
		35.741489, 34.082634, 22.901413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471420, 33.866096, 23.350710>,  <35.894577, 33.552319, 23.331913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471420, 33.866096, 23.350710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.202080, 34.125572, 23.208838>,  <36.040478, 34.281258, 23.123714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.202080, 34.125572, 23.208838>,  <36.471420, 33.866096, 23.350710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202080, 34.125572, 23.208838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310847, 0.683675, 0.660275,
		0.670803, 0.334343, -0.661996,
		-0.673348, 0.648693, -0.354682,
		36.000076, 34.320179, 23.102432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782406, 34.393101, 23.472565>,  <36.471420, 33.866096, 23.350710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782406, 34.393101, 23.472565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.428532, 34.549438, 23.370924>,  <36.216206, 34.643242, 23.309940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.428532, 34.549438, 23.370924>,  <36.782406, 34.393101, 23.472565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428532, 34.549438, 23.370924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178137, 0.787125, 0.590510,
		0.430807, 0.477152, -0.765984,
		-0.884688, 0.390846, -0.254100,
		36.163124, 34.666691, 23.294693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894466, 35.048237, 23.458523>,  <36.782406, 34.393101, 23.472565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894466, 35.048237, 23.458523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.495701, 35.047356, 23.489908>,  <36.256443, 35.046825, 23.508739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.495701, 35.047356, 23.489908>,  <36.894466, 35.048237, 23.458523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495701, 35.047356, 23.489908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058053, 0.652128, 0.755883,
		-0.052834, 0.758106, -0.649987,
		-0.996914, -0.002203, 0.078465,
		36.196625, 35.046696, 23.513447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615231, 35.746006, 23.346601>,  <36.894466, 35.048237, 23.458523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615231, 35.746006, 23.346601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.374336, 35.529198, 23.581043>,  <36.229797, 35.399113, 23.721708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.374336, 35.529198, 23.581043>,  <36.615231, 35.746006, 23.346601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374336, 35.529198, 23.581043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051118, 0.758852, 0.649254,
		-0.796677, 0.361046, -0.484717,
		-0.602239, -0.542024, 0.586104,
		36.193665, 35.366592, 23.756874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190727, 36.281895, 23.544235>,  <36.615231, 35.746006, 23.346601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190727, 36.281895, 23.544235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108025, 35.983818, 23.797832>,  <36.058403, 35.804974, 23.949991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108025, 35.983818, 23.797832>,  <36.190727, 36.281895, 23.544235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108025, 35.983818, 23.797832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083475, 0.632196, 0.770298,
		-0.974825, 0.212186, -0.068506,
		-0.206756, -0.745188, 0.633993,
		36.045998, 35.760262, 23.988031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955662, 36.675285, 24.109287>,  <36.190727, 36.281895, 23.544235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955662, 36.675285, 24.109287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.982769, 36.320213, 24.291470>,  <35.999031, 36.107170, 24.400778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.982769, 36.320213, 24.291470>,  <35.955662, 36.675285, 24.109287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982769, 36.320213, 24.291470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031633, 0.458186, 0.888293,
		-0.997200, -0.045787, 0.059129,
		0.067765, -0.887676, 0.455454,
		36.003098, 36.053909, 24.428106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362682, 36.581219, 24.598570>,  <35.955662, 36.675285, 24.109287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362682, 36.581219, 24.598570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.681599, 36.357574, 24.689547>,  <35.872948, 36.223389, 24.744133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.681599, 36.357574, 24.689547>,  <35.362682, 36.581219, 24.598570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681599, 36.357574, 24.689547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166429, 0.158573, 0.973220,
		-0.580204, -0.813787, 0.033376,
		0.797286, -0.559110, 0.227442,
		35.920784, 36.189842, 24.757780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725288, 36.468079, 24.450436>,  <35.362682, 36.581219, 24.598570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725288, 36.468079, 24.450436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.409626, 36.713753, 24.450603>,  <34.220226, 36.861156, 24.450705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.409626, 36.713753, 24.450603>,  <34.725288, 36.468079, 24.450436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409626, 36.713753, 24.450603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186054, -0.238406, -0.953177,
		-0.585329, -0.752288, 0.302412,
		-0.789160, 0.614187, 0.000420,
		34.172878, 36.898010, 24.450729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180202, 36.094933, 24.062675>,  <34.725288, 36.468079, 24.450436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180202, 36.094933, 24.062675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.071918, 36.479988, 24.059954>,  <34.006950, 36.711021, 24.058321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.071918, 36.479988, 24.059954>,  <34.180202, 36.094933, 24.062675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071918, 36.479988, 24.059954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242449, -0.075015, -0.967260,
		-0.931631, -0.260193, 0.253698,
		-0.270705, 0.962638, -0.006803,
		33.990707, 36.768780, 24.057913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646572, 36.085148, 23.555910>,  <34.180202, 36.094933, 24.062675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646572, 36.085148, 23.555910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.743034, 36.470970, 23.598780>,  <33.800911, 36.702461, 23.624500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.743034, 36.470970, 23.598780>,  <33.646572, 36.085148, 23.555910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743034, 36.470970, 23.598780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014050, 0.113889, -0.993394,
		-0.970386, 0.238053, 0.041017,
		0.241152, 0.964552, 0.107172,
		33.815380, 36.760334, 23.630932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288670, 36.435749, 23.053318>,  <33.646572, 36.085148, 23.555910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288670, 36.435749, 23.053318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.542320, 36.727406, 23.156263>,  <33.694511, 36.902401, 23.218031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.542320, 36.727406, 23.156263>,  <33.288670, 36.435749, 23.053318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542320, 36.727406, 23.156263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060129, 0.285335, -0.956540,
		-0.770890, 0.622040, 0.137095,
		0.634124, 0.729144, 0.257365,
		33.732559, 36.946148, 23.233473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095993, 37.137154, 22.771173>,  <33.288670, 36.435749, 23.053318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095993, 37.137154, 22.771173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.491245, 37.163429, 22.826712>,  <33.728397, 37.179195, 22.860035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.491245, 37.163429, 22.826712>,  <33.095993, 37.137154, 22.771173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491245, 37.163429, 22.826712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127806, 0.149754, -0.980428,
		-0.085196, 0.986539, 0.139582,
		0.988133, 0.065689, 0.138844,
		33.787685, 37.183136, 22.868364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253490, 37.758984, 22.412420>,  <33.095993, 37.137154, 22.771173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253490, 37.758984, 22.412420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.599098, 37.564472, 22.464567>,  <33.806465, 37.447765, 22.495855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.599098, 37.564472, 22.464567>,  <33.253490, 37.758984, 22.412420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599098, 37.564472, 22.464567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244664, 0.179254, -0.952894,
		0.440005, 0.855219, 0.273855,
		0.864022, -0.486281, 0.130369,
		33.858307, 37.418587, 22.503677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633362, 38.216125, 22.146439>,  <33.253490, 37.758984, 22.412420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633362, 38.216125, 22.146439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.832817, 37.869621, 22.134127>,  <33.952492, 37.661716, 22.126740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.832817, 37.869621, 22.134127>,  <33.633362, 38.216125, 22.146439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832817, 37.869621, 22.134127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110856, 0.098947, -0.988899,
		0.859693, 0.489689, 0.145369,
		0.498637, -0.866264, -0.030779,
		33.982407, 37.609741, 22.124893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037907, 38.333076, 21.655066>,  <33.633362, 38.216125, 22.146439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037907, 38.333076, 21.655066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.044930, 37.935734, 21.700554>,  <34.049145, 37.697327, 21.727848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.044930, 37.935734, 21.700554>,  <34.037907, 38.333076, 21.655066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044930, 37.935734, 21.700554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080310, -0.111971, -0.990461,
		0.996615, 0.026525, 0.077811,
		0.017559, -0.993357, 0.113722,
		34.050198, 37.637726, 21.734671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595131, 38.227562, 21.220249>,  <34.037907, 38.333076, 21.655066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595131, 38.227562, 21.220249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.372768, 37.900806, 21.281778>,  <34.239349, 37.704754, 21.318697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.372768, 37.900806, 21.281778>,  <34.595131, 38.227562, 21.220249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372768, 37.900806, 21.281778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046044, -0.215029, -0.975521,
		0.829967, -0.535218, 0.157149,
		-0.555908, -0.816887, 0.153824,
		34.205997, 37.655739, 21.327925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898098, 37.606670, 20.839355>,  <34.595131, 38.227562, 21.220249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898098, 37.606670, 20.839355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.521381, 37.481567, 20.888678>,  <34.295349, 37.406506, 20.918272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.521381, 37.481567, 20.888678>,  <34.898098, 37.606670, 20.839355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521381, 37.481567, 20.888678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012475, -0.334013, -0.942486,
		0.335960, -0.889166, 0.310670,
		-0.941794, -0.312762, 0.123307,
		34.238842, 37.387737, 20.925671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853325, 36.887135, 20.592138>,  <34.898098, 37.606670, 20.839355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853325, 36.887135, 20.592138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.482098, 37.032806, 20.561007>,  <34.259361, 37.120209, 20.542328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.482098, 37.032806, 20.561007>,  <34.853325, 36.887135, 20.592138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482098, 37.032806, 20.561007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074148, -0.385509, -0.919720,
		-0.364936, -0.847799, 0.384784,
		-0.928075, 0.364170, -0.077824,
		34.203678, 37.142059, 20.537657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314484, 36.344135, 20.464142>,  <34.853325, 36.887135, 20.592138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314484, 36.344135, 20.464142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.116913, 36.667736, 20.336670>,  <33.998371, 36.861897, 20.260187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.116913, 36.667736, 20.336670>,  <34.314484, 36.344135, 20.464142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116913, 36.667736, 20.336670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096636, -0.415309, -0.904533,
		-0.864118, -0.415976, 0.283310,
		-0.493925, 0.809001, -0.318678,
		33.968735, 36.910435, 20.241066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719242, 36.023434, 20.188290>,  <34.314484, 36.344135, 20.464142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719242, 36.023434, 20.188290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.763382, 36.383411, 20.019564>,  <33.789867, 36.599396, 19.918327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.763382, 36.383411, 20.019564>,  <33.719242, 36.023434, 20.188290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763382, 36.383411, 20.019564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053561, -0.418405, -0.906680,
		-0.992449, 0.122643, 0.002031,
		0.110349, 0.899942, -0.421815,
		33.796486, 36.653393, 19.893019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349106, 35.857914, 20.724609>,  <33.719242, 36.023434, 20.188290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349106, 35.857914, 20.724609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.099834, 35.545261, 20.714092>,  <32.950272, 35.357670, 20.707783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.099834, 35.545261, 20.714092>,  <33.349106, 35.857914, 20.724609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099834, 35.545261, 20.714092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284058, -0.257540, 0.923571,
		-0.728667, 0.568085, 0.382524,
		-0.623182, -0.781635, -0.026292,
		32.912880, 35.310772, 20.706205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929829, 35.846550, 21.390688>,  <33.349106, 35.857914, 20.724609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929829, 35.846550, 21.390688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.923973, 35.476620, 21.238647>,  <32.920460, 35.254662, 21.147423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.923973, 35.476620, 21.238647>,  <32.929829, 35.846550, 21.390688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923973, 35.476620, 21.238647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248112, -0.371614, 0.894619,
		-0.968621, -0.081208, 0.234903,
		-0.014643, -0.924829, -0.380102,
		32.919579, 35.199173, 21.124617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463196, 35.464863, 21.851986>,  <32.929829, 35.846550, 21.390688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463196, 35.464863, 21.851986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.626507, 35.154423, 21.659746>,  <32.724495, 34.968159, 21.544403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.626507, 35.154423, 21.659746>,  <32.463196, 35.464863, 21.851986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626507, 35.154423, 21.659746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143345, -0.465439, 0.873395,
		-0.901532, -0.425481, -0.078779,
		0.408280, -0.776101, -0.480599,
		32.748989, 34.921593, 21.515566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221367, 34.902882, 22.210876>,  <32.463196, 35.464863, 21.851986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221367, 34.902882, 22.210876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.543858, 34.769402, 22.015474>,  <32.737354, 34.689316, 21.898233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.543858, 34.769402, 22.015474>,  <32.221367, 34.902882, 22.210876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543858, 34.769402, 22.015474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359027, -0.380312, 0.852328,
		-0.470206, -0.862559, -0.186811,
		0.806229, -0.333699, -0.488507,
		32.785725, 34.669292, 21.868923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332405, 34.258358, 22.335596>,  <32.221367, 34.902882, 22.210876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332405, 34.258358, 22.335596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.707161, 34.330719, 22.215921>,  <32.932014, 34.374134, 22.144117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.707161, 34.330719, 22.215921>,  <32.332405, 34.258358, 22.335596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707161, 34.330719, 22.215921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340972, -0.283568, 0.896285,
		0.077299, -0.941735, -0.327354,
		0.936890, 0.180900, -0.299186,
		32.988228, 34.384991, 22.126165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704933, 33.674473, 22.482265>,  <32.332405, 34.258358, 22.335596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704933, 33.674473, 22.482265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.999401, 33.944977, 22.471418>,  <33.176083, 34.107277, 22.464911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.999401, 33.944977, 22.471418>,  <32.704933, 33.674473, 22.482265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999401, 33.944977, 22.471418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318228, -0.310502, 0.895723,
		0.597319, -0.668031, -0.443785,
		0.736167, 0.676257, -0.027117,
		33.220253, 34.147854, 22.463284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199707, 33.321911, 22.635279>,  <32.704933, 33.674473, 22.482265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199707, 33.321911, 22.635279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.328552, 33.684948, 22.742992>,  <33.405857, 33.902771, 22.807621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.328552, 33.684948, 22.742992>,  <33.199707, 33.321911, 22.635279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328552, 33.684948, 22.742992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123278, -0.322236, 0.938598,
		0.938642, -0.269134, -0.215681,
		0.322109, 0.907596, 0.269286,
		33.425186, 33.957226, 22.823778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815712, 33.202271, 22.948885>,  <33.199707, 33.321911, 22.635279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815712, 33.202271, 22.948885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.679924, 33.547043, 23.099525>,  <33.598450, 33.753906, 23.189909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.679924, 33.547043, 23.099525>,  <33.815712, 33.202271, 22.948885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679924, 33.547043, 23.099525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026477, -0.408973, 0.912162,
		0.940243, 0.299684, 0.161657,
		-0.339474, 0.861934, 0.376599,
		33.578083, 33.805622, 23.212505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179001, 32.671909, 23.185272>,  <33.815712, 33.202271, 22.948885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179001, 32.671909, 23.185272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.000843, 32.351540, 23.345348>,  <33.893948, 32.159317, 23.441393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.000843, 32.351540, 23.345348>,  <34.179001, 32.671909, 23.185272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000843, 32.351540, 23.345348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058474, -0.419995, -0.905641,
		0.893423, -0.426768, 0.140231,
		-0.445395, -0.800920, 0.400188,
		33.867226, 32.111263, 23.465405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551044, 32.085178, 22.957512>,  <34.179001, 32.671909, 23.185272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551044, 32.085178, 22.957512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.185329, 31.950630, 23.047783>,  <33.965900, 31.869902, 23.101946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.185329, 31.950630, 23.047783>,  <34.551044, 32.085178, 22.957512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185329, 31.950630, 23.047783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053280, -0.452433, -0.890206,
		0.401540, -0.825930, 0.395733,
		-0.914290, -0.336369, 0.225675,
		33.911041, 31.849720, 23.115486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537548, 31.491829, 22.551853>,  <34.551044, 32.085178, 22.957512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537548, 31.491829, 22.551853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.153530, 31.499784, 22.663502>,  <33.923119, 31.504559, 22.730492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.153530, 31.499784, 22.663502>,  <34.537548, 31.491829, 22.551853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153530, 31.499784, 22.663502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251878, -0.495985, -0.830997,
		0.121913, -0.868103, 0.481180,
		-0.960049, 0.019890, 0.279123,
		33.865517, 31.505751, 22.747238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309669, 30.777514, 22.498156>,  <34.537548, 31.491829, 22.551853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309669, 30.777514, 22.498156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.979717, 31.003042, 22.481810>,  <33.781746, 31.138359, 22.472002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.979717, 31.003042, 22.481810>,  <34.309669, 30.777514, 22.498156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979717, 31.003042, 22.481810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214561, -0.379149, -0.900117,
		-0.523002, -0.733723, 0.433728,
		-0.824884, 0.563824, -0.040868,
		33.732250, 31.172190, 22.469549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709553, 30.311556, 22.311121>,  <34.309669, 30.777514, 22.498156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709553, 30.311556, 22.311121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.610611, 30.683853, 22.203394>,  <33.551247, 30.907232, 22.138758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.610611, 30.683853, 22.203394>,  <33.709553, 30.311556, 22.311121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610611, 30.683853, 22.203394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271379, -0.333378, -0.902891,
		-0.930145, -0.150245, 0.335046,
		-0.247352, 0.930745, -0.269317,
		33.536404, 30.963076, 22.122599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055344, 30.193958, 21.967611>,  <33.709553, 30.311556, 22.311121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055344, 30.193958, 21.967611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.220539, 30.543718, 21.865732>,  <33.319656, 30.753574, 21.804605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.220539, 30.543718, 21.865732>,  <33.055344, 30.193958, 21.967611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220539, 30.543718, 21.865732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238761, -0.165929, -0.956797,
		-0.878883, 0.455956, 0.140246,
		0.412986, 0.874398, -0.254697,
		33.344437, 30.806038, 21.789324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614346, 30.487749, 21.567873>,  <33.055344, 30.193958, 21.967611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614346, 30.487749, 21.567873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.969746, 30.651342, 21.484644>,  <33.182987, 30.749498, 21.434708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.969746, 30.651342, 21.484644>,  <32.614346, 30.487749, 21.567873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969746, 30.651342, 21.484644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176191, -0.114618, -0.977660,
		-0.423695, 0.905315, -0.029780,
		0.888504, 0.408983, -0.208071,
		33.236298, 30.774036, 21.422222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488651, 30.657059, 20.932318>,  <32.614346, 30.487749, 21.567873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488651, 30.657059, 20.932318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.888424, 30.670441, 20.931093>,  <33.128288, 30.678471, 20.930359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.888424, 30.670441, 20.931093>,  <32.488651, 30.657059, 20.932318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888424, 30.670441, 20.931093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009486, -0.368425, -0.929609,
		-0.032227, 0.929056, -0.368534,
		0.999436, 0.033455, -0.003061,
		33.188255, 30.680477, 20.930176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692699, 30.885807, 20.246861>,  <32.488651, 30.657059, 20.932318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692699, 30.885807, 20.246861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.017269, 30.714342, 20.405777>,  <33.212009, 30.611464, 20.501127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.017269, 30.714342, 20.405777>,  <32.692699, 30.885807, 20.246861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017269, 30.714342, 20.405777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159349, -0.491754, -0.856029,
		0.562317, 0.757910, -0.330714,
		0.811423, -0.428661, 0.397293,
		33.260696, 30.585745, 20.524965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.328953, 33.425419, 36.298729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650589, 33.537769, 36.089142>,  <36.843571, 33.605179, 35.963390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650589, 33.537769, 36.089142>,  <36.328953, 33.425419, 36.298729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650589, 33.537769, 36.089142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564012, 0.081761, -0.821709,
		-0.187956, 0.956256, 0.224160,
		0.804091, 0.280874, -0.523972,
		36.891815, 33.622032, 35.931950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171417, 34.027222, 35.921696>,  <36.328953, 33.425419, 36.298729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171417, 34.027222, 35.921696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480499, 33.870239, 35.722137>,  <36.665951, 33.776051, 35.602402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480499, 33.870239, 35.722137>,  <36.171417, 34.027222, 35.921696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480499, 33.870239, 35.722137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595504, -0.176082, -0.783817,
		0.219766, 0.902759, -0.369769,
		0.772708, -0.392456, -0.498900,
		36.712311, 33.752502, 35.572468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218414, 34.409538, 35.315861>,  <36.171417, 34.027222, 35.921696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218414, 34.409538, 35.315861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433205, 34.092426, 35.200508>,  <36.562080, 33.902161, 35.131298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433205, 34.092426, 35.200508>,  <36.218414, 34.409538, 35.315861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433205, 34.092426, 35.200508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521717, -0.043449, -0.852012,
		0.662925, 0.607963, -0.436935,
		0.536976, -0.792776, -0.288381,
		36.594296, 33.854595, 35.113995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415085, 34.538090, 34.600491>,  <36.218414, 34.409538, 35.315861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415085, 34.538090, 34.600491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449780, 34.142109, 34.645172>,  <36.470596, 33.904522, 34.671982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449780, 34.142109, 34.645172>,  <36.415085, 34.538090, 34.600491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449780, 34.142109, 34.645172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405749, -0.137510, -0.903581,
		0.909860, 0.033045, -0.413597,
		0.086733, -0.989949, 0.111707,
		36.475800, 33.845123, 34.678684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779358, 34.219669, 34.012009>,  <36.415085, 34.538090, 34.600491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779358, 34.219669, 34.012009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570507, 33.916210, 34.167877>,  <36.445198, 33.734135, 34.261398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570507, 33.916210, 34.167877>,  <36.779358, 34.219669, 34.012009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570507, 33.916210, 34.167877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299767, -0.264502, -0.916613,
		0.798453, -0.595396, -0.089314,
		-0.522124, -0.758645, 0.389672,
		36.413872, 33.688618, 34.284779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028198, 33.615570, 33.623318>,  <36.779358, 34.219669, 34.012009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028198, 33.615570, 33.623318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666695, 33.542103, 33.777973>,  <36.449795, 33.498024, 33.870766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666695, 33.542103, 33.777973>,  <37.028198, 33.615570, 33.623318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666695, 33.542103, 33.777973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260165, -0.481587, -0.836892,
		0.339913, -0.856936, 0.387453,
		-0.903755, -0.183669, 0.386642,
		36.395569, 33.487003, 33.893967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957184, 32.868229, 33.531231>,  <37.028198, 33.615570, 33.623318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957184, 32.868229, 33.531231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.588181, 33.010666, 33.590813>,  <36.366779, 33.096127, 33.626560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.588181, 33.010666, 33.590813>,  <36.957184, 32.868229, 33.531231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588181, 33.010666, 33.590813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342463, -0.577054, -0.741436,
		-0.178062, -0.734989, 0.654282,
		-0.922503, 0.356089, 0.148955,
		36.311428, 33.117493, 33.635498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473179, 32.273579, 33.353298>,  <36.957184, 32.868229, 33.531231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473179, 32.273579, 33.353298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223141, 32.585663, 33.362457>,  <36.073116, 32.772915, 33.367954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223141, 32.585663, 33.362457>,  <36.473179, 32.273579, 33.353298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223141, 32.585663, 33.362457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461476, -0.345750, -0.817005,
		-0.629517, -0.521277, 0.576176,
		-0.625098, 0.780210, 0.022901,
		36.035610, 32.819725, 33.369328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765026, 32.014832, 33.249508>,  <36.473179, 32.273579, 33.353298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765026, 32.014832, 33.249508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768929, 32.397614, 33.133484>,  <35.771271, 32.627285, 33.063869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768929, 32.397614, 33.133484>,  <35.765026, 32.014832, 33.249508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768929, 32.397614, 33.133484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284707, -0.275412, -0.918199,
		-0.958565, 0.091543, 0.269765,
		0.009758, 0.956958, -0.290063,
		35.771854, 32.684700, 33.046463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093204, 32.131245, 32.964123>,  <35.765026, 32.014832, 33.249508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093204, 32.131245, 32.964123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322109, 32.422020, 32.812290>,  <35.459454, 32.596485, 32.721191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322109, 32.422020, 32.812290>,  <35.093204, 32.131245, 32.964123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322109, 32.422020, 32.812290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483176, -0.075116, -0.872295,
		-0.662613, 0.682587, 0.308251,
		0.572263, 0.726933, -0.379582,
		35.493790, 32.640099, 32.698414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655903, 32.405556, 32.541122>,  <35.093204, 32.131245, 32.964123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655903, 32.405556, 32.541122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992683, 32.555557, 32.385952>,  <35.194752, 32.645557, 32.292850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992683, 32.555557, 32.385952>,  <34.655903, 32.405556, 32.541122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992683, 32.555557, 32.385952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360681, -0.143527, -0.921580,
		-0.401276, 0.915844, 0.014415,
		0.841954, 0.375007, -0.387921,
		35.245270, 32.668060, 32.269577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442760, 32.957771, 32.038609>,  <34.655903, 32.405556, 32.541122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442760, 32.957771, 32.038609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801804, 32.807919, 31.945700>,  <35.017231, 32.718006, 31.889956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801804, 32.807919, 31.945700>,  <34.442760, 32.957771, 32.038609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801804, 32.807919, 31.945700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303010, -0.141720, -0.942391,
		0.320137, 0.916277, -0.240728,
		0.897607, -0.374637, -0.232271,
		35.071087, 32.695526, 31.876019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412777, 33.650883, 31.869616>,  <34.442760, 32.957771, 32.038609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412777, 33.650883, 31.869616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025818, 33.748783, 31.843544>,  <33.793644, 33.807522, 31.827902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025818, 33.748783, 31.843544>,  <34.412777, 33.650883, 31.869616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025818, 33.748783, 31.843544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032704, 0.375890, 0.926087,
		0.251160, 0.893759, -0.371637,
		-0.967393, 0.244750, -0.065179,
		33.735600, 33.822208, 31.823990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491756, 34.248505, 32.154320>,  <34.412777, 33.650883, 31.869616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491756, 34.248505, 32.154320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.103268, 34.157986, 32.184002>,  <33.870174, 34.103672, 32.201813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.103268, 34.157986, 32.184002>,  <34.491756, 34.248505, 32.154320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103268, 34.157986, 32.184002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014235, 0.366200, 0.930427,
		-0.237732, 0.902599, -0.358885,
		-0.971226, -0.226301, 0.074209,
		33.811901, 34.090096, 32.206264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185360, 34.742088, 32.528915>,  <34.491756, 34.248505, 32.154320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185360, 34.742088, 32.528915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895142, 34.467590, 32.549507>,  <33.721012, 34.302891, 32.561863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895142, 34.467590, 32.549507>,  <34.185360, 34.742088, 32.528915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895142, 34.467590, 32.549507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307229, 0.389934, 0.868079,
		-0.615790, 0.614015, -0.493750,
		-0.725544, -0.686248, 0.051475,
		33.677479, 34.261715, 32.564949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711555, 35.098972, 32.732998>,  <34.185360, 34.742088, 32.528915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711555, 35.098972, 32.732998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630680, 34.721237, 32.836803>,  <33.582153, 34.494595, 32.899086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630680, 34.721237, 32.836803>,  <33.711555, 35.098972, 32.732998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630680, 34.721237, 32.836803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256555, 0.306807, 0.916542,
		-0.945145, 0.118737, -0.304308,
		-0.202191, -0.944337, 0.259514,
		33.570023, 34.437935, 32.914658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104870, 35.218491, 33.047874>,  <33.711555, 35.098972, 32.732998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104870, 35.218491, 33.047874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261681, 34.876064, 33.182613>,  <33.355766, 34.670609, 33.263458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261681, 34.876064, 33.182613>,  <33.104870, 35.218491, 33.047874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261681, 34.876064, 33.182613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376840, 0.184600, 0.907698,
		-0.839232, -0.482777, -0.250232,
		0.392022, -0.856066, 0.336851,
		33.379288, 34.619244, 33.283669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535656, 34.905266, 33.411572>,  <33.104870, 35.218491, 33.047874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535656, 34.905266, 33.411572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885296, 34.758648, 33.539066>,  <33.095081, 34.670677, 33.615562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885296, 34.758648, 33.539066>,  <32.535656, 34.905266, 33.411572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885296, 34.758648, 33.539066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192958, 0.340174, 0.920353,
		-0.445778, -0.865983, 0.226618,
		0.874099, -0.366545, 0.318740,
		33.147526, 34.648685, 33.634689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460320, 34.721954, 34.137287>,  <32.535656, 34.905266, 33.411572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460320, 34.721954, 34.137287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859211, 34.706886, 34.111607>,  <33.098545, 34.697845, 34.096199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859211, 34.706886, 34.111607>,  <32.460320, 34.721954, 34.137287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859211, 34.706886, 34.111607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072815, 0.314698, 0.946395,
		-0.015452, -0.948444, 0.316568,
		0.997225, -0.037675, -0.064199,
		33.158379, 34.695583, 34.092346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602032, 34.200935, 34.750340>,  <32.460320, 34.721954, 34.137287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602032, 34.200935, 34.750340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899120, 34.453434, 34.660999>,  <33.077374, 34.604935, 34.607395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899120, 34.453434, 34.660999>,  <32.602032, 34.200935, 34.750340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899120, 34.453434, 34.660999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036805, 0.371542, 0.927686,
		0.668587, -0.680793, 0.299186,
		0.742722, 0.631251, -0.223352,
		33.121937, 34.642811, 34.593994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106373, 34.239418, 35.341061>,  <32.602032, 34.200935, 34.750340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106373, 34.239418, 35.341061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232536, 34.546211, 35.117538>,  <33.308235, 34.730286, 34.983425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232536, 34.546211, 35.117538>,  <33.106373, 34.239418, 35.341061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232536, 34.546211, 35.117538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075195, 0.566809, 0.820410,
		0.945972, -0.300785, 0.121104,
		0.315410, 0.766979, -0.558803,
		33.327160, 34.776306, 34.949898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521080, 34.627312, 35.798264>,  <33.106373, 34.239418, 35.341061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521080, 34.627312, 35.798264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442776, 34.890953, 35.507812>,  <33.395794, 35.049137, 35.333542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442776, 34.890953, 35.507812>,  <33.521080, 34.627312, 35.798264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442776, 34.890953, 35.507812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169450, 0.752048, 0.636954,
		0.965901, 0.001648, -0.258907,
		-0.195760, 0.659106, -0.726125,
		33.384048, 35.088684, 35.289974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058788, 35.119339, 35.881317>,  <33.521080, 34.627312, 35.798264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058788, 35.119339, 35.881317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760189, 35.289391, 35.676575>,  <33.581028, 35.391422, 35.553730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760189, 35.289391, 35.676575>,  <34.058788, 35.119339, 35.881317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760189, 35.289391, 35.676575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015528, 0.780189, 0.625351,
		0.665205, 0.458875, -0.589012,
		-0.746499, 0.425133, -0.511860,
		33.536240, 35.416931, 35.523018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312618, 35.848873, 35.856861>,  <34.058788, 35.119339, 35.881317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312618, 35.848873, 35.856861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.914093, 35.838299, 35.824200>,  <33.674980, 35.831955, 35.804604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.914093, 35.838299, 35.824200>,  <34.312618, 35.848873, 35.856861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914093, 35.838299, 35.824200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071707, 0.779213, 0.622644,
		0.047168, 0.626201, -0.778233,
		-0.996310, -0.026436, -0.081657,
		33.615200, 35.830368, 35.799702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076111, 36.508507, 35.742031>,  <34.312618, 35.848873, 35.856861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076111, 36.508507, 35.742031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744854, 36.330116, 35.877853>,  <33.546101, 36.223083, 35.959347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744854, 36.330116, 35.877853>,  <34.076111, 36.508507, 35.742031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744854, 36.330116, 35.877853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193773, 0.796208, 0.573153,
		-0.525964, 0.408854, -0.745788,
		-0.828139, -0.445972, 0.339551,
		33.496414, 36.196323, 35.979717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546848, 36.991474, 35.702190>,  <34.076111, 36.508507, 35.742031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546848, 36.991474, 35.702190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.423382, 36.713768, 35.962257>,  <33.349300, 36.547146, 36.118298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.423382, 36.713768, 35.962257>,  <33.546848, 36.991474, 35.702190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423382, 36.713768, 35.962257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383044, 0.716400, 0.583137,
		-0.870632, -0.069047, -0.487064,
		-0.308669, -0.694265, 0.650169,
		33.330780, 36.505489, 36.157307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802410, 37.124973, 35.871971>,  <33.546848, 36.991474, 35.702190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802410, 37.124973, 35.871971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.935596, 36.910748, 36.182404>,  <33.015507, 36.782211, 36.368664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.935596, 36.910748, 36.182404>,  <32.802410, 37.124973, 35.871971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935596, 36.910748, 36.182404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355668, 0.690918, 0.629391,
		-0.873289, -0.485592, 0.039567,
		0.332965, -0.535568, 0.776081,
		33.035484, 36.750076, 36.415226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820576, 37.948490, 35.671234>,  <32.802410, 37.124973, 35.871971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820576, 37.948490, 35.671234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781883, 38.071705, 36.049812>,  <32.758667, 38.145634, 36.276958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781883, 38.071705, 36.049812>,  <32.820576, 37.948490, 35.671234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781883, 38.071705, 36.049812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712100, -0.642937, 0.282039,
		0.695382, 0.701244, -0.157162,
		-0.096733, 0.308040, 0.946443,
		32.752865, 38.164116, 36.333744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739353, 37.763363, 34.872639>,  <32.820576, 37.948490, 35.671234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739353, 37.763363, 34.872639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130516, 37.761734, 34.789032>,  <33.365211, 37.760757, 34.738869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130516, 37.761734, 34.789032>,  <32.739353, 37.763363, 34.872639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130516, 37.761734, 34.789032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207090, 0.117973, -0.971183,
		0.028611, 0.993009, 0.114523,
		0.977904, -0.004070, -0.209017,
		33.423885, 37.760513, 34.726326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806755, 38.246727, 34.395813>,  <32.739353, 37.763363, 34.872639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806755, 38.246727, 34.395813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144535, 38.033508, 34.374760>,  <33.347202, 37.905579, 34.362129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144535, 38.033508, 34.374760>,  <32.806755, 38.246727, 34.395813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144535, 38.033508, 34.374760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018721, 0.068823, -0.997453,
		0.535309, 0.843283, 0.048139,
		0.844449, -0.533044, -0.052629,
		33.397869, 37.873596, 34.358971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423115, 38.701397, 34.005318>,  <32.806755, 38.246727, 34.395813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423115, 38.701397, 34.005318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434174, 38.302601, 33.976364>,  <33.440807, 38.063324, 33.958992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434174, 38.302601, 33.976364>,  <33.423115, 38.701397, 34.005318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434174, 38.302601, 33.976364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029847, 0.073202, -0.996870,
		0.999172, 0.025399, 0.031781,
		0.027646, -0.996994, -0.072383,
		33.442467, 38.003502, 33.954651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025246, 38.662197, 33.463219>,  <33.423115, 38.701397, 34.005318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025246, 38.662197, 33.463219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815754, 38.322529, 33.490398>,  <33.690060, 38.118729, 33.506706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.815754, 38.322529, 33.490398>,  <34.025246, 38.662197, 33.463219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815754, 38.322529, 33.490398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056210, -0.114033, -0.991886,
		0.850029, -0.515659, 0.107454,
		-0.523728, -0.849172, 0.067946,
		33.658634, 38.067776, 33.510780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420692, 38.312038, 32.925076>,  <34.025246, 38.662197, 33.463219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420692, 38.312038, 32.925076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068230, 38.133461, 32.987373>,  <33.856754, 38.026314, 33.024754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068230, 38.133461, 32.987373>,  <34.420692, 38.312038, 32.925076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068230, 38.133461, 32.987373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023357, -0.370095, -0.928700,
		0.472252, -0.814691, 0.336538,
		-0.881154, -0.446441, 0.155749,
		33.803883, 37.999527, 33.034100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457611, 37.673523, 32.556347>,  <34.420692, 38.312038, 32.925076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457611, 37.673523, 32.556347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067753, 37.746368, 32.608360>,  <33.833839, 37.790077, 32.639568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067753, 37.746368, 32.608360>,  <34.457611, 37.673523, 32.556347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067753, 37.746368, 32.608360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192763, -0.388139, -0.901216,
		-0.113650, -0.903429, 0.413401,
		-0.974642, 0.182111, 0.130036,
		33.775360, 37.801003, 32.647369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004856, 37.082481, 32.164635>,  <34.457611, 37.673523, 32.556347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004856, 37.082481, 32.164635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778793, 37.409569, 32.208328>,  <33.643154, 37.605820, 32.234543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778793, 37.409569, 32.208328>,  <34.004856, 37.082481, 32.164635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778793, 37.409569, 32.208328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417192, -0.169058, -0.892956,
		-0.711721, -0.550231, 0.436690,
		-0.565158, 0.817719, 0.109230,
		33.609245, 37.654884, 32.241096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239872, 36.823547, 32.037445>,  <34.004856, 37.082481, 32.164635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239872, 36.823547, 32.037445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266045, 37.216888, 31.969635>,  <33.281746, 37.452892, 31.928949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266045, 37.216888, 31.969635>,  <33.239872, 36.823547, 32.037445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266045, 37.216888, 31.969635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478099, -0.118224, -0.870313,
		-0.875865, 0.137993, 0.462405,
		0.065430, 0.983352, -0.169523,
		33.285675, 37.511894, 31.918777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698536, 36.903790, 31.619717>,  <33.239872, 36.823547, 32.037445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698536, 36.903790, 31.619717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.903046, 37.240593, 31.550867>,  <33.025749, 37.442673, 31.509558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.903046, 37.240593, 31.550867>,  <32.698536, 36.903790, 31.619717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903046, 37.240593, 31.550867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280619, -0.025741, -0.959474,
		-0.812314, 0.538853, 0.223122,
		0.511272, 0.842007, -0.172122,
		33.056427, 37.493195, 31.499231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148621, 37.395912, 31.248190>,  <32.698536, 36.903790, 31.619717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148621, 37.395912, 31.248190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530731, 37.482368, 31.167459>,  <32.759998, 37.534241, 31.119022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530731, 37.482368, 31.167459>,  <32.148621, 37.395912, 31.248190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530731, 37.482368, 31.167459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244597, 0.193938, -0.950032,
		-0.166199, 0.956907, 0.238132,
		0.955275, 0.216141, -0.201824,
		32.817314, 37.547211, 31.106913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084194, 37.905643, 30.700750>,  <32.148621, 37.395912, 31.248190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084194, 37.905643, 30.700750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.459976, 37.768696, 30.694864>,  <32.685444, 37.686527, 30.691332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.459976, 37.768696, 30.694864>,  <32.084194, 37.905643, 30.700750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459976, 37.768696, 30.694864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033355, 0.134101, -0.990406,
		0.341055, 0.929947, 0.137401,
		0.939451, -0.342366, -0.014717,
		32.741810, 37.665985, 30.690449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419926, 38.353470, 30.277353>,  <32.084194, 37.905643, 30.700750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419926, 38.353470, 30.277353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678757, 38.048714, 30.288721>,  <32.834057, 37.865860, 30.295542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.678757, 38.048714, 30.288721>,  <32.419926, 38.353470, 30.277353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678757, 38.048714, 30.288721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209397, 0.141755, -0.967501,
		0.733102, 0.632003, 0.251265,
		0.647081, -0.761891, 0.028419,
		32.872883, 37.820145, 30.297247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963173, 38.540085, 29.854723>,  <32.419926, 38.353470, 30.277353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963173, 38.540085, 29.854723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041786, 38.148335, 29.873486>,  <33.088955, 37.913284, 29.884743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041786, 38.148335, 29.873486>,  <32.963173, 38.540085, 29.854723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041786, 38.148335, 29.873486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287175, 0.011757, -0.957806,
		0.937500, 0.201710, 0.283562,
		0.196533, -0.979375, 0.046904,
		33.100746, 37.854523, 29.887556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612785, 38.376141, 29.572388>,  <32.963173, 38.540085, 29.854723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612785, 38.376141, 29.572388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446243, 38.013741, 29.541885>,  <33.346317, 37.796303, 29.523584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446243, 38.013741, 29.541885>,  <33.612785, 38.376141, 29.572388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446243, 38.013741, 29.541885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417272, -0.115894, -0.901362,
		0.807794, -0.407107, 0.426301,
		-0.416357, -0.905998, -0.076256,
		33.321335, 37.741940, 29.519009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144485, 37.996193, 29.352314>,  <33.612785, 38.376141, 29.572388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144485, 37.996193, 29.352314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809071, 37.794647, 29.269388>,  <33.607822, 37.673721, 29.219633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809071, 37.794647, 29.269388>,  <34.144485, 37.996193, 29.352314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809071, 37.794647, 29.269388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360250, -0.227277, -0.904746,
		0.408747, -0.833349, 0.372096,
		-0.838538, -0.503860, -0.207315,
		33.557510, 37.643490, 29.207193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372932, 37.452194, 28.934471>,  <34.144485, 37.996193, 29.352314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372932, 37.452194, 28.934471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982769, 37.460728, 28.846722>,  <33.748672, 37.465847, 28.794071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982769, 37.460728, 28.846722>,  <34.372932, 37.452194, 28.934471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982769, 37.460728, 28.846722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203538, -0.294724, -0.933654,
		-0.084570, -0.955344, 0.283135,
		-0.975408, 0.021331, -0.219374,
		33.690147, 37.467129, 28.780909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242973, 36.860218, 28.578466>,  <34.372932, 37.452194, 28.934471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242973, 36.860218, 28.578466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946674, 37.108692, 28.476156>,  <33.768894, 37.257778, 28.414770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946674, 37.108692, 28.476156>,  <34.242973, 36.860218, 28.578466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946674, 37.108692, 28.476156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188032, -0.173804, -0.966663,
		-0.644931, -0.764148, 0.011943,
		-0.740749, 0.621184, -0.255775,
		33.724449, 37.295048, 28.399424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728447, 36.496258, 28.249283>,  <34.242973, 36.860218, 28.578466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728447, 36.496258, 28.249283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.677589, 36.870914, 28.118729>,  <33.647076, 37.095711, 28.040396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.677589, 36.870914, 28.118729>,  <33.728447, 36.496258, 28.249283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677589, 36.870914, 28.118729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096714, -0.315781, -0.943890,
		-0.987158, -0.151578, -0.050436,
		-0.127146, 0.936646, -0.326385,
		33.639446, 37.151909, 28.020813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044487, 36.486336, 27.800987>,  <33.728447, 36.496258, 28.249283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044487, 36.486336, 27.800987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.247112, 36.819725, 27.712709>,  <33.368687, 37.019760, 27.659742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.247112, 36.819725, 27.712709>,  <33.044487, 36.486336, 27.800987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247112, 36.819725, 27.712709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036944, -0.276715, -0.960241,
		-0.861408, 0.478274, -0.170967,
		0.506568, 0.833476, -0.220696,
		33.399082, 37.069767, 27.646502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712456, 36.853874, 27.258921>,  <33.044487, 36.486336, 27.800987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712456, 36.853874, 27.258921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094437, 36.970974, 27.239498>,  <33.323627, 37.041233, 27.227844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094437, 36.970974, 27.239498>,  <32.712456, 36.853874, 27.258921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094437, 36.970974, 27.239498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011037, -0.128467, -0.991652,
		-0.296544, 0.947520, -0.119449,
		0.954956, 0.292750, -0.048554,
		33.380924, 37.058800, 27.224932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685467, 37.318096, 26.746019>,  <32.712456, 36.853874, 27.258921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685467, 37.318096, 26.746019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067783, 37.206268, 26.782467>,  <33.297173, 37.139172, 26.804335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067783, 37.206268, 26.782467>,  <32.685467, 37.318096, 26.746019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067783, 37.206268, 26.782467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034057, -0.202541, -0.978681,
		0.292064, 0.938519, -0.184066,
		0.955792, -0.279568, 0.091118,
		33.354523, 37.122398, 26.809803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869335, 37.537926, 26.139910>,  <32.685467, 37.318096, 26.746019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869335, 37.537926, 26.139910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185722, 37.318268, 26.247841>,  <33.375557, 37.186474, 26.312599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185722, 37.318268, 26.247841>,  <32.869335, 37.537926, 26.139910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185722, 37.318268, 26.247841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201140, -0.183114, -0.962295,
		0.577849, 0.815419, -0.034382,
		0.790970, -0.549145, 0.269826,
		33.423012, 37.153522, 26.328789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443195, 37.834141, 25.925920>,  <32.869335, 37.537926, 26.139910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443195, 37.834141, 25.925920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559605, 37.452709, 25.956894>,  <33.629448, 37.223850, 25.975479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559605, 37.452709, 25.956894>,  <33.443195, 37.834141, 25.925920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559605, 37.452709, 25.956894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287846, 0.010084, -0.957624,
		0.912388, 0.300976, 0.277418,
		0.291019, -0.953578, 0.077435,
		33.646912, 37.166637, 25.980124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104603, 37.852783, 25.755625>,  <33.443195, 37.834141, 25.925920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104603, 37.852783, 25.755625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977646, 37.477646, 25.699457>,  <33.901474, 37.252563, 25.665756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977646, 37.477646, 25.699457>,  <34.104603, 37.852783, 25.755625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977646, 37.477646, 25.699457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333770, 0.028122, -0.942235,
		0.887616, -0.345923, 0.304097,
		-0.317389, -0.937842, -0.140420,
		33.882431, 37.196293, 25.657331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710758, 37.547459, 25.419676>,  <34.104603, 37.852783, 25.755625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710758, 37.547459, 25.419676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387844, 37.324051, 25.343407>,  <34.194096, 37.190006, 25.297646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387844, 37.324051, 25.343407>,  <34.710758, 37.547459, 25.419676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387844, 37.324051, 25.343407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312027, -0.129695, -0.941179,
		0.500935, -0.819291, 0.278973,
		-0.807282, -0.558517, -0.190673,
		34.145660, 37.156494, 25.286205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945702, 37.095245, 24.896143>,  <34.710758, 37.547459, 25.419676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945702, 37.095245, 24.896143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547455, 37.058002, 24.899601>,  <34.308506, 37.035656, 24.901676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547455, 37.058002, 24.899601>,  <34.945702, 37.095245, 24.896143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547455, 37.058002, 24.899601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010636, -0.204593, -0.978789,
		0.092904, -0.974409, 0.204687,
		-0.995618, -0.093110, 0.008644,
		34.248768, 37.030071, 24.902195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130936, 36.383263, 25.316311>,  <34.945702, 37.095245, 24.896143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130936, 36.383263, 25.316311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518612, 36.292160, 25.278778>,  <35.751217, 36.237499, 25.256258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518612, 36.292160, 25.278778>,  <35.130936, 36.383263, 25.316311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518612, 36.292160, 25.278778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120479, 0.106034, 0.987037,
		-0.214853, -0.967928, 0.130206,
		0.969187, -0.227755, -0.093833,
		35.809368, 36.223835, 25.250628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237286, 35.915302, 25.871532>,  <35.130936, 36.383263, 25.316311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237286, 35.915302, 25.871532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.595409, 36.054012, 25.759705>,  <35.810284, 36.137238, 25.692608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.595409, 36.054012, 25.759705>,  <35.237286, 35.915302, 25.871532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595409, 36.054012, 25.759705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249313, 0.129994, 0.959659,
		0.369129, -0.928896, 0.029930,
		0.895314, 0.346776, -0.279570,
		35.864002, 36.158047, 25.675833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757870, 35.525448, 26.144613>,  <35.237286, 35.915302, 25.871532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757870, 35.525448, 26.144613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939068, 35.874592, 26.072044>,  <36.047787, 36.084080, 26.028503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939068, 35.874592, 26.072044>,  <35.757870, 35.525448, 26.144613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939068, 35.874592, 26.072044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309979, 0.036593, 0.950039,
		0.835889, -0.486598, -0.253992,
		0.452993, 0.872859, -0.181422,
		36.074966, 36.136448, 26.017618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435314, 35.468082, 26.372639>,  <35.757870, 35.525448, 26.144613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435314, 35.468082, 26.372639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.385571, 35.864956, 26.368563>,  <36.355724, 36.103081, 26.366117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.385571, 35.864956, 26.368563>,  <36.435314, 35.468082, 26.372639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385571, 35.864956, 26.368563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398420, 0.059337, 0.915282,
		0.908734, 0.109760, -0.402686,
		-0.124356, 0.992185, -0.010191,
		36.348263, 36.162613, 26.365505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989807, 35.620960, 26.667675>,  <36.435314, 35.468082, 26.372639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989807, 35.620960, 26.667675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788479, 35.966042, 26.687332>,  <36.667683, 36.173088, 26.699127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788479, 35.966042, 26.687332>,  <36.989807, 35.620960, 26.667675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788479, 35.966042, 26.687332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366775, 0.161802, 0.916131,
		0.782394, 0.479135, -0.397855,
		-0.503324, 0.862699, 0.049142,
		36.637482, 36.224850, 26.702074>
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
