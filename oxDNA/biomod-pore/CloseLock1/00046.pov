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
	<24.408335, 35.108589, 35.373707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.230413, 35.022766, 35.025887>,  <24.123661, 34.971272, 34.817196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.230413, 35.022766, 35.025887>,  <24.408335, 35.108589, 35.373707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.230413, 35.022766, 35.025887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727689, 0.479428, -0.490528,
		0.522132, -0.850950, -0.057121,
		-0.444800, -0.214554, -0.869551,
		24.096973, 34.958401, 34.765022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927563, 34.866096, 34.996777>,  <24.408335, 35.108589, 35.373707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927563, 34.866096, 34.996777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661741, 35.022400, 34.742004>,  <24.502249, 35.116180, 34.589142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661741, 35.022400, 34.742004>,  <24.927563, 34.866096, 34.996777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.661741, 35.022400, 34.742004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745053, 0.411672, -0.524808,
		0.057134, -0.823308, -0.564711,
		-0.664554, 0.390755, -0.636929,
		24.462376, 35.139626, 34.550926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119165, 34.615582, 34.329651>,  <24.927563, 34.866096, 34.996777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119165, 34.615582, 34.329651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912128, 34.957829, 34.327915>,  <24.787907, 35.163177, 34.326874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912128, 34.957829, 34.327915>,  <25.119165, 34.615582, 34.329651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912128, 34.957829, 34.327915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683021, 0.410120, -0.604387,
		-0.515345, -0.315787, -0.796679,
		-0.517592, 0.855617, -0.004336,
		24.756851, 35.214512, 34.326614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915031, 34.789665, 33.593121>,  <25.119165, 34.615582, 34.329651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915031, 34.789665, 33.593121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944588, 35.111313, 33.829063>,  <24.962322, 35.304302, 33.970631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944588, 35.111313, 33.829063>,  <24.915031, 34.789665, 33.593121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944588, 35.111313, 33.829063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661499, 0.403106, -0.632396,
		-0.746297, 0.436919, -0.502138,
		0.073891, 0.804119, 0.589858,
		24.966755, 35.352547, 34.006020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.952530, 35.395626, 33.220173>,  <24.915031, 34.789665, 33.593121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.952530, 35.395626, 33.220173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140787, 35.500969, 33.557014>,  <25.253742, 35.564175, 33.759121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140787, 35.500969, 33.557014>,  <24.952530, 35.395626, 33.220173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140787, 35.500969, 33.557014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667316, 0.518138, -0.534997,
		-0.577220, 0.813743, 0.068117,
		0.470644, 0.263356, 0.842104,
		25.281981, 35.579975, 33.809647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929987, 36.065865, 33.343796>,  <24.952530, 35.395626, 33.220173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929987, 36.065865, 33.343796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276888, 35.952045, 33.507214>,  <25.485027, 35.883755, 33.605263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276888, 35.952045, 33.507214>,  <24.929987, 36.065865, 33.343796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276888, 35.952045, 33.507214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476778, 0.710976, -0.516910,
		-0.143381, 0.643076, 0.752261,
		0.867251, -0.284546, 0.408545,
		25.537064, 35.866680, 33.629776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399042, 36.622692, 33.425774>,  <24.929987, 36.065865, 33.343796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399042, 36.622692, 33.425774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658041, 36.318356, 33.443024>,  <25.813440, 36.135754, 33.453373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658041, 36.318356, 33.443024>,  <25.399042, 36.622692, 33.425774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658041, 36.318356, 33.443024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608655, 0.482268, -0.630045,
		0.458567, 0.434204, 0.775360,
		0.647499, -0.760845, 0.043128,
		25.852291, 36.090103, 33.455963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.063829, 36.974117, 33.556759>,  <25.399042, 36.622692, 33.425774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.063829, 36.974117, 33.556759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126558, 36.615067, 33.391994>,  <26.164196, 36.399635, 33.293137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126558, 36.615067, 33.391994>,  <26.063829, 36.974117, 33.556759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126558, 36.615067, 33.391994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516990, 0.429974, -0.740164,
		0.841503, -0.096878, 0.531495,
		0.156824, -0.897628, -0.411909,
		26.173605, 36.345779, 33.268421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730738, 36.995880, 33.290657>,  <26.063829, 36.974117, 33.556759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730738, 36.995880, 33.290657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581585, 36.679451, 33.096680>,  <26.492094, 36.489594, 32.980293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581585, 36.679451, 33.096680>,  <26.730738, 36.995880, 33.290657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581585, 36.679451, 33.096680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384819, 0.343726, -0.856602,
		0.844319, -0.506025, 0.176249,
		-0.372881, -0.791069, -0.484943,
		26.469721, 36.442131, 32.951199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305580, 36.773865, 32.866962>,  <26.730738, 36.995880, 33.290657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305580, 36.773865, 32.866962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969208, 36.626953, 32.707993>,  <26.767385, 36.538807, 32.612610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969208, 36.626953, 32.707993>,  <27.305580, 36.773865, 32.866962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969208, 36.626953, 32.707993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230470, 0.421397, -0.877102,
		0.489615, -0.829174, -0.269717,
		-0.840929, -0.367281, -0.397422,
		26.716928, 36.516769, 32.588764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525139, 36.368118, 32.271225>,  <27.305580, 36.773865, 32.866962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525139, 36.368118, 32.271225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138226, 36.454536, 32.218029>,  <26.906078, 36.506386, 32.186111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138226, 36.454536, 32.218029>,  <27.525139, 36.368118, 32.271225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138226, 36.454536, 32.218029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198815, 0.319917, -0.926351,
		-0.157591, -0.922484, -0.352404,
		-0.967284, 0.216047, -0.132988,
		26.848040, 36.519352, 32.178131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340069, 35.980690, 31.673311>,  <27.525139, 36.368118, 32.271225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340069, 35.980690, 31.673311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064341, 36.269581, 31.696033>,  <26.898905, 36.442917, 31.709667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064341, 36.269581, 31.696033>,  <27.340069, 35.980690, 31.673311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064341, 36.269581, 31.696033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143407, 0.212894, -0.966494,
		-0.710122, -0.658076, -0.250324,
		-0.689319, 0.722227, 0.056808,
		26.857546, 36.486248, 31.713076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987505, 35.935108, 31.060057>,  <27.340069, 35.980690, 31.673311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987505, 35.935108, 31.060057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898802, 36.290691, 31.220343>,  <26.845579, 36.504044, 31.316513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898802, 36.290691, 31.220343>,  <26.987505, 35.935108, 31.060057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898802, 36.290691, 31.220343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419999, 0.457949, -0.783507,
		-0.880014, -0.005449, -0.474917,
		-0.221757, 0.888961, 0.400713,
		26.832275, 36.557381, 31.340557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742357, 36.326111, 30.521877>,  <26.987505, 35.935108, 31.060057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742357, 36.326111, 30.521877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835554, 36.607403, 30.790556>,  <26.891472, 36.776180, 30.951763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835554, 36.607403, 30.790556>,  <26.742357, 36.326111, 30.521877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835554, 36.607403, 30.790556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402745, 0.558911, -0.724855,
		-0.885161, 0.439409, -0.153002,
		0.232994, 0.703234, 0.671696,
		26.905453, 36.818375, 30.992065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399061, 37.005119, 30.305586>,  <26.742357, 36.326111, 30.521877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399061, 37.005119, 30.305586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729336, 37.067963, 30.522310>,  <26.927500, 37.105671, 30.652346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729336, 37.067963, 30.522310>,  <26.399061, 37.005119, 30.305586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729336, 37.067963, 30.522310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376495, 0.561775, -0.736655,
		-0.420112, 0.812235, 0.404698,
		0.825686, 0.157111, 0.541810,
		26.977041, 37.115097, 30.684853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590975, 37.679100, 30.098070>,  <26.399061, 37.005119, 30.305586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590975, 37.679100, 30.098070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913347, 37.560143, 30.302828>,  <27.106770, 37.488770, 30.425682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913347, 37.560143, 30.302828>,  <26.590975, 37.679100, 30.098070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913347, 37.560143, 30.302828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588012, 0.502450, -0.633866,
		-0.068696, 0.811852, 0.579809,
		0.805930, -0.297390, 0.511895,
		27.155127, 37.470924, 30.456396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047689, 38.291527, 30.384869>,  <26.590975, 37.679100, 30.098070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047689, 38.291527, 30.384869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286863, 37.972683, 30.351191>,  <27.430368, 37.781376, 30.330984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286863, 37.972683, 30.351191>,  <27.047689, 38.291527, 30.384869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286863, 37.972683, 30.351191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636859, 0.536236, -0.553951,
		0.486709, 0.277607, 0.828281,
		0.597934, -0.797111, -0.084194,
		27.466244, 37.733551, 30.325932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712101, 38.544701, 30.421631>,  <27.047689, 38.291527, 30.384869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712101, 38.544701, 30.421631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751364, 38.200821, 30.221115>,  <27.774921, 37.994495, 30.100805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751364, 38.200821, 30.221115>,  <27.712101, 38.544701, 30.421631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751364, 38.200821, 30.221115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764418, 0.387663, -0.515153,
		0.637206, -0.332630, 0.695217,
		0.098155, -0.859694, -0.501289,
		27.780809, 37.942913, 30.070728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393618, 38.403603, 30.442926>,  <27.712101, 38.544701, 30.421631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393618, 38.403603, 30.442926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250937, 38.199249, 30.130066>,  <28.165329, 38.076637, 29.942348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250937, 38.199249, 30.130066>,  <28.393618, 38.403603, 30.442926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250937, 38.199249, 30.130066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796417, 0.271357, -0.540449,
		0.488349, -0.815699, 0.310082,
		-0.356700, -0.510882, -0.782153,
		28.143927, 38.045986, 29.895420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847160, 37.931442, 30.269823>,  <28.393618, 38.403603, 30.442926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847160, 37.931442, 30.269823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635057, 37.984989, 29.934942>,  <28.507795, 38.017117, 29.734015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635057, 37.984989, 29.934942>,  <28.847160, 37.931442, 30.269823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635057, 37.984989, 29.934942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841125, 0.207063, -0.499633,
		0.106469, -0.969126, -0.222394,
		-0.530257, 0.133866, -0.837202,
		28.475981, 38.025150, 29.683781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097284, 37.529053, 29.787834>,  <28.847160, 37.931442, 30.269823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097284, 37.529053, 29.787834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876558, 37.744999, 29.533575>,  <28.744123, 37.874565, 29.381020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876558, 37.744999, 29.533575>,  <29.097284, 37.529053, 29.787834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876558, 37.744999, 29.533575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794514, 0.108656, -0.597446,
		-0.253473, -0.834710, -0.488887,
		-0.551815, 0.539864, -0.635647,
		28.711014, 37.906960, 29.342880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138826, 37.259838, 29.111200>,  <29.097284, 37.529053, 29.787834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138826, 37.259838, 29.111200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052334, 37.648384, 29.071810>,  <29.000439, 37.881512, 29.048176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052334, 37.648384, 29.071810>,  <29.138826, 37.259838, 29.111200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052334, 37.648384, 29.071810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810550, 0.122369, -0.572743,
		-0.544290, -0.203667, -0.813798,
		-0.216233, 0.971363, -0.098479,
		28.987465, 37.939793, 29.042267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197981, 37.398064, 28.330687>,  <29.138826, 37.259838, 29.111200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197981, 37.398064, 28.330687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243881, 37.759953, 28.494785>,  <29.271421, 37.977085, 28.593245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243881, 37.759953, 28.494785>,  <29.197981, 37.398064, 28.330687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243881, 37.759953, 28.494785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794432, 0.164368, -0.584689,
		-0.596415, 0.393007, -0.699881,
		0.114749, 0.904726, 0.410249,
		29.278305, 38.031372, 28.617861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344017, 37.792805, 27.736170>,  <29.197981, 37.398064, 28.330687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344017, 37.792805, 27.736170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455561, 38.014133, 28.050131>,  <29.522486, 38.146931, 28.238506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455561, 38.014133, 28.050131>,  <29.344017, 37.792805, 27.736170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455561, 38.014133, 28.050131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751760, 0.382809, -0.536949,
		-0.597575, 0.739789, -0.309219,
		0.278857, 0.553325, 0.784901,
		29.539217, 38.180130, 28.285601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409706, 38.522285, 27.501427>,  <29.344017, 37.792805, 27.736170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409706, 38.522285, 27.501427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637276, 38.429974, 27.817165>,  <29.773817, 38.374588, 28.006609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637276, 38.429974, 27.817165>,  <29.409706, 38.522285, 27.501427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637276, 38.429974, 27.817165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807918, 0.336113, -0.484042,
		-0.153605, 0.913111, 0.377670,
		0.568924, -0.230775, 0.789347,
		29.807953, 38.360741, 28.053970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786743, 39.140827, 27.658321>,  <29.409706, 38.522285, 27.501427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786743, 39.140827, 27.658321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981396, 38.813999, 27.781986>,  <30.098186, 38.617901, 27.856186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981396, 38.813999, 27.781986>,  <29.786743, 39.140827, 27.658321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981396, 38.813999, 27.781986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840936, 0.342243, -0.419163,
		0.236678, 0.463963, 0.853652,
		0.486632, -0.817073, 0.309161,
		30.127386, 38.568878, 27.874735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531378, 39.316391, 27.745159>,  <29.786743, 39.140827, 27.658321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531378, 39.316391, 27.745159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517052, 38.919838, 27.694748>,  <30.508457, 38.681908, 27.664501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517052, 38.919838, 27.694748>,  <30.531378, 39.316391, 27.745159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517052, 38.919838, 27.694748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742339, 0.058040, -0.667506,
		0.669067, -0.117461, 0.733861,
		-0.035813, -0.991380, -0.126029,
		30.506308, 38.622425, 27.656939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234449, 38.917034, 27.917597>,  <30.531378, 39.316391, 27.745159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234449, 38.917034, 27.917597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999855, 38.793861, 27.617941>,  <30.859098, 38.719959, 27.438147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999855, 38.793861, 27.617941>,  <31.234449, 38.917034, 27.917597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999855, 38.793861, 27.617941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711894, 0.245167, -0.658103,
		0.386316, -0.919277, 0.075428,
		-0.586487, -0.307933, -0.749140,
		30.823910, 38.701481, 27.393198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857510, 39.156322, 27.560194>,  <31.234449, 38.917034, 27.917597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857510, 39.156322, 27.560194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079723, 39.338379, 27.281849>,  <32.213051, 39.447613, 27.114841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079723, 39.338379, 27.281849>,  <31.857510, 39.156322, 27.560194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079723, 39.338379, 27.281849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771445, -0.594386, 0.227107,
		-0.310244, -0.662986, -0.681321,
		0.555536, 0.455143, -0.695862,
		32.246384, 39.474922, 27.073090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966227, 38.731339, 26.953030>,  <31.857510, 39.156322, 27.560194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966227, 38.731339, 26.953030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268608, 38.975380, 27.047949>,  <32.450035, 39.121803, 27.104900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268608, 38.975380, 27.047949>,  <31.966227, 38.731339, 26.953030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268608, 38.975380, 27.047949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564087, -0.791036, 0.236787,
		0.332176, -0.045143, -0.942137,
		0.755953, 0.610102, 0.237298,
		32.495396, 39.158409, 27.119139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513035, 38.401817, 26.676840>,  <31.966227, 38.731339, 26.953030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513035, 38.401817, 26.676840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669231, 38.636562, 26.960562>,  <32.762947, 38.777409, 27.130795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669231, 38.636562, 26.960562>,  <32.513035, 38.401817, 26.676840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669231, 38.636562, 26.960562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487469, -0.785406, 0.381460,
		0.780956, 0.196810, -0.592767,
		0.390488, 0.586859, 0.709306,
		32.786377, 38.812618, 27.173353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191826, 38.611694, 26.538195>,  <32.513035, 38.401817, 26.676840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191826, 38.611694, 26.538195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101345, 38.570988, 26.925694>,  <33.047054, 38.546562, 27.158194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101345, 38.570988, 26.925694>,  <33.191826, 38.611694, 26.538195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101345, 38.570988, 26.925694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575867, -0.816089, 0.048736,
		0.785626, 0.568895, 0.243207,
		-0.226204, -0.101767, 0.968749,
		33.033485, 38.540459, 27.216318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730534, 38.599785, 26.983706>,  <33.191826, 38.611694, 26.538195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730534, 38.599785, 26.983706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430443, 38.385696, 27.138983>,  <33.250389, 38.257244, 27.232149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430443, 38.385696, 27.138983>,  <33.730534, 38.599785, 26.983706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430443, 38.385696, 27.138983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574959, -0.818013, -0.016647,
		0.326458, 0.210707, 0.921427,
		-0.750232, -0.535217, 0.388195,
		33.205372, 38.225132, 27.255442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652573, 38.442028, 27.722059>,  <33.730534, 38.599785, 26.983706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652573, 38.442028, 27.722059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546726, 38.142025, 27.479584>,  <33.483219, 37.962025, 27.334099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546726, 38.142025, 27.479584>,  <33.652573, 38.442028, 27.722059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546726, 38.142025, 27.479584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853605, -0.474646, 0.214639,
		-0.448706, -0.460650, 0.765810,
		-0.264615, -0.750009, -0.606189,
		33.467342, 37.917023, 27.297728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694065, 38.349796, 28.404324>,  <33.652573, 38.442028, 27.722059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694065, 38.349796, 28.404324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504395, 38.682613, 28.519470>,  <33.390591, 38.882301, 28.588558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504395, 38.682613, 28.519470>,  <33.694065, 38.349796, 28.404324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504395, 38.682613, 28.519470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381821, -0.488952, 0.784308,
		0.793327, 0.261988, 0.549540,
		-0.474178, 0.832039, 0.287866,
		33.362141, 38.932224, 28.605829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798496, 38.564545, 29.012207>,  <33.694065, 38.349796, 28.404324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798496, 38.564545, 29.012207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429935, 38.676140, 28.903992>,  <33.208801, 38.743095, 28.839064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429935, 38.676140, 28.903992>,  <33.798496, 38.564545, 29.012207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429935, 38.676140, 28.903992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372317, -0.434218, 0.820265,
		0.111369, 0.856517, 0.503959,
		-0.921400, 0.278985, -0.270537,
		33.153515, 38.759834, 28.822830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468151, 38.987385, 29.623486>,  <33.798496, 38.564545, 29.012207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468151, 38.987385, 29.623486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190620, 38.823994, 29.386251>,  <33.024101, 38.725960, 29.243912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190620, 38.823994, 29.386251>,  <33.468151, 38.987385, 29.623486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190620, 38.823994, 29.386251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398310, -0.468449, 0.788609,
		-0.599961, 0.783389, 0.162321,
		-0.693827, -0.408481, -0.593083,
		32.982471, 38.701450, 29.208326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916039, 39.078621, 30.085154>,  <33.468151, 38.987385, 29.623486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916039, 39.078621, 30.085154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809395, 38.811913, 29.806776>,  <32.745407, 38.651886, 29.639750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809395, 38.811913, 29.806776>,  <32.916039, 39.078621, 30.085154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809395, 38.811913, 29.806776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529559, -0.501976, 0.683804,
		-0.805287, 0.550850, -0.219263,
		-0.266609, -0.666772, -0.695942,
		32.729412, 38.611881, 29.597994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273975, 38.977978, 30.255953>,  <32.916039, 39.078621, 30.085154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273975, 38.977978, 30.255953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310143, 38.662708, 30.012440>,  <32.331844, 38.473549, 29.866333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310143, 38.662708, 30.012440>,  <32.273975, 38.977978, 30.255953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310143, 38.662708, 30.012440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583694, -0.537228, 0.608841,
		-0.806924, 0.300292, -0.508624,
		0.090417, -0.788169, -0.608781,
		32.337269, 38.426258, 29.829805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558891, 38.718487, 30.154675>,  <32.273975, 38.977978, 30.255953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558891, 38.718487, 30.154675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824850, 38.424355, 30.102213>,  <31.984425, 38.247875, 30.070736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824850, 38.424355, 30.102213>,  <31.558891, 38.718487, 30.154675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824850, 38.424355, 30.102213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536629, -0.592403, 0.600906,
		-0.519559, -0.329161, -0.788487,
		0.664897, -0.735331, -0.131151,
		32.024319, 38.203754, 30.062868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243692, 38.150177, 29.810011>,  <31.558891, 38.718487, 30.154675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243692, 38.150177, 29.810011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542099, 38.051563, 30.057457>,  <31.721144, 37.992397, 30.205925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542099, 38.051563, 30.057457>,  <31.243692, 38.150177, 29.810011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542099, 38.051563, 30.057457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622321, -0.588724, 0.515868,
		0.237017, -0.769823, -0.592618,
		0.746016, -0.246529, 0.618614,
		31.765903, 37.977604, 30.243042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945885, 37.638920, 30.209187>,  <31.243692, 38.150177, 29.810011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945885, 37.638920, 30.209187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294497, 37.618904, 30.404301>,  <31.503664, 37.606895, 30.521370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294497, 37.618904, 30.404301>,  <30.945885, 37.638920, 30.209187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294497, 37.618904, 30.404301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365606, -0.729222, 0.578418,
		0.326759, -0.682445, -0.653833,
		0.871528, -0.050042, 0.487786,
		31.555954, 37.603893, 30.550636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171692, 36.907139, 30.004906>,  <30.945885, 37.638920, 30.209187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171692, 36.907139, 30.004906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337849, 37.023113, 30.349785>,  <31.437542, 37.092697, 30.556713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337849, 37.023113, 30.349785>,  <31.171692, 36.907139, 30.004906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337849, 37.023113, 30.349785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471860, -0.741665, 0.476739,
		0.777688, -0.604870, -0.171270,
		0.415391, 0.289939, 0.862198,
		31.462465, 37.110096, 30.608444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180176, 36.304371, 30.340355>,  <31.171692, 36.907139, 30.004906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180176, 36.304371, 30.340355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253721, 36.554066, 30.644072>,  <31.297850, 36.703884, 30.826302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253721, 36.554066, 30.644072>,  <31.180176, 36.304371, 30.340355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253721, 36.554066, 30.644072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370564, -0.671445, 0.641751,
		0.910426, -0.399361, 0.107864,
		0.183866, 0.624238, 0.759289,
		31.308882, 36.741337, 30.871859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309978, 35.888714, 30.898281>,  <31.180176, 36.304371, 30.340355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309978, 35.888714, 30.898281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229242, 36.242973, 31.065557>,  <31.180799, 36.455528, 31.165924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229242, 36.242973, 31.065557>,  <31.309978, 35.888714, 30.898281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229242, 36.242973, 31.065557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515607, -0.459109, 0.723442,
		0.832712, -0.069602, 0.549315,
		-0.201843, 0.885649, 0.418193,
		31.168690, 36.508667, 31.191015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385881, 35.789677, 31.577078>,  <31.309978, 35.888714, 30.898281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385881, 35.789677, 31.577078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139708, 36.103867, 31.550913>,  <30.992004, 36.292381, 31.535213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139708, 36.103867, 31.550913>,  <31.385881, 35.789677, 31.577078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139708, 36.103867, 31.550913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588923, -0.403099, 0.700486,
		0.523843, 0.469625, 0.710662,
		-0.615433, 0.785470, -0.065413,
		30.955078, 36.339508, 31.531288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221973, 35.980515, 32.256893>,  <31.385881, 35.789677, 31.577078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221973, 35.980515, 32.256893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919008, 36.110863, 32.030571>,  <30.737230, 36.189072, 31.894777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919008, 36.110863, 32.030571>,  <31.221973, 35.980515, 32.256893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919008, 36.110863, 32.030571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626669, -0.119477, 0.770072,
		0.183344, 0.937834, 0.294707,
		-0.757411, 0.325871, -0.565806,
		30.691786, 36.208626, 31.860828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740171, 36.377098, 32.695805>,  <31.221973, 35.980515, 32.256893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740171, 36.377098, 32.695805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529558, 36.305729, 32.363316>,  <30.403191, 36.262905, 32.163822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529558, 36.305729, 32.363316>,  <30.740171, 36.377098, 32.695805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529558, 36.305729, 32.363316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829827, -0.104667, 0.548116,
		-0.184800, 0.978370, -0.092953,
		-0.526531, -0.178427, -0.831221,
		30.371599, 36.252201, 32.113949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132967, 36.482952, 32.916405>,  <30.740171, 36.377098, 32.695805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132967, 36.482952, 32.916405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032101, 36.289852, 32.580936>,  <29.971581, 36.173992, 32.379658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032101, 36.289852, 32.580936>,  <30.132967, 36.482952, 32.916405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032101, 36.289852, 32.580936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820889, -0.352199, 0.449551,
		-0.512399, 0.801816, -0.307472,
		-0.252166, -0.482750, -0.838669,
		29.956451, 36.145027, 32.329334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387075, 36.555084, 32.770016>,  <30.132967, 36.482952, 32.916405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387075, 36.555084, 32.770016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489521, 36.234943, 32.553188>,  <29.550989, 36.042858, 32.423092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489521, 36.234943, 32.553188>,  <29.387075, 36.555084, 32.770016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489521, 36.234943, 32.553188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740337, -0.522976, 0.422371,
		-0.621536, 0.293138, -0.726473,
		0.256115, -0.800354, -0.542069,
		29.566357, 35.994839, 32.390568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800673, 36.204979, 32.760986>,  <29.387075, 36.555084, 32.770016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800673, 36.204979, 32.760986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044649, 35.910946, 32.642578>,  <29.191034, 35.734528, 32.571533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044649, 35.910946, 32.642578>,  <28.800673, 36.204979, 32.760986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044649, 35.910946, 32.642578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559215, -0.663934, 0.496457,
		-0.561473, -0.137271, -0.816029,
		0.609939, -0.735083, -0.296017,
		29.227631, 35.690422, 32.553772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418411, 35.752602, 32.421986>,  <28.800673, 36.204979, 32.760986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418411, 35.752602, 32.421986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743025, 35.561871, 32.557072>,  <28.937794, 35.447433, 32.638123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743025, 35.561871, 32.557072>,  <28.418411, 35.752602, 32.421986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743025, 35.561871, 32.557072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581297, -0.600297, 0.549307,
		-0.059197, -0.642092, -0.764339,
		0.811536, -0.476825, 0.337711,
		28.986486, 35.418823, 32.658386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264776, 35.163052, 32.270607>,  <28.418411, 35.752602, 32.421986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264776, 35.163052, 32.270607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537746, 35.147053, 32.562550>,  <28.701529, 35.137455, 32.737717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537746, 35.147053, 32.562550>,  <28.264776, 35.163052, 32.270607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537746, 35.147053, 32.562550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592998, -0.614096, 0.520807,
		0.427376, -0.788217, -0.442790,
		0.682424, -0.039993, 0.729861,
		28.742474, 35.135056, 32.781509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254023, 34.539715, 32.428970>,  <28.264776, 35.163052, 32.270607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254023, 34.539715, 32.428970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415232, 34.725372, 32.744476>,  <28.511957, 34.836765, 32.933781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415232, 34.725372, 32.744476>,  <28.254023, 34.539715, 32.428970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415232, 34.725372, 32.744476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592615, -0.524413, 0.611391,
		0.697410, -0.713835, 0.063709,
		0.403022, 0.464145, 0.788760,
		28.536139, 34.864616, 32.981106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550819, 33.983696, 32.892803>,  <28.254023, 34.539715, 32.428970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550819, 33.983696, 32.892803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479658, 34.306206, 33.118462>,  <28.436962, 34.499714, 33.253857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479658, 34.306206, 33.118462>,  <28.550819, 33.983696, 32.892803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479658, 34.306206, 33.118462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510684, -0.565698, 0.647447,
		0.841161, -0.172920, 0.512393,
		-0.177904, 0.806278, 0.564151,
		28.426287, 34.548088, 33.287708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918293, 33.946148, 33.528114>,  <28.550819, 33.983696, 32.892803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918293, 33.946148, 33.528114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602417, 34.182392, 33.594536>,  <28.412891, 34.324139, 33.634388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602417, 34.182392, 33.594536>,  <28.918293, 33.946148, 33.528114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602417, 34.182392, 33.594536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298234, -0.606076, 0.737379,
		0.536142, 0.532778, 0.654751,
		-0.789689, 0.590609, 0.166050,
		28.365511, 34.359573, 33.644352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820286, 33.849274, 34.234596>,  <28.918293, 33.946148, 33.528114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820286, 33.849274, 34.234596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482174, 34.037556, 34.133453>,  <28.279306, 34.150524, 34.072769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482174, 34.037556, 34.133453>,  <28.820286, 33.849274, 34.234596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482174, 34.037556, 34.133453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464611, -0.413775, 0.782896,
		0.263890, 0.779246, 0.568452,
		-0.845280, 0.470708, -0.252855,
		28.228590, 34.178768, 34.057598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391254, 33.721165, 34.705399>,  <28.820286, 33.849274, 34.234596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391254, 33.721165, 34.705399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535532, 34.065945, 34.847912>,  <29.622099, 34.272812, 34.933418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535532, 34.065945, 34.847912>,  <29.391254, 33.721165, 34.705399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535532, 34.065945, 34.847912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087771, 0.411671, -0.907096,
		-0.928544, 0.295915, 0.224142,
		0.360696, 0.861952, 0.356282,
		29.643742, 34.324532, 34.954796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122683, 33.645557, 34.243092>,  <29.391254, 33.721165, 34.705399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122683, 33.645557, 34.243092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104660, 33.853222, 33.901695>,  <30.093845, 33.977821, 33.696857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104660, 33.853222, 33.901695>,  <30.122683, 33.645557, 34.243092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104660, 33.853222, 33.901695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208489, 0.840428, 0.500212,
		0.976986, -0.155405, -0.146108,
		-0.045058, 0.519162, -0.853487,
		30.091143, 34.008972, 33.645649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726200, 33.887619, 34.177326>,  <30.122683, 33.645557, 34.243092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726200, 33.887619, 34.177326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463264, 34.120979, 33.986519>,  <30.305502, 34.260998, 33.872036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463264, 34.120979, 33.986519>,  <30.726200, 33.887619, 34.177326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463264, 34.120979, 33.986519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265746, 0.771777, 0.577701,
		0.705183, 0.252982, -0.662358,
		-0.657340, 0.583404, -0.477015,
		30.266062, 34.296001, 33.843414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055309, 34.510418, 33.941906>,  <30.726200, 33.887619, 34.177326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055309, 34.510418, 33.941906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670969, 34.565987, 34.037792>,  <30.440365, 34.599327, 34.095325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670969, 34.565987, 34.037792>,  <31.055309, 34.510418, 33.941906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670969, 34.565987, 34.037792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260088, 0.750459, 0.607590,
		-0.095491, 0.646152, -0.757212,
		-0.960851, 0.138922, 0.239718,
		30.382713, 34.607662, 34.109707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809059, 35.199753, 33.750977>,  <31.055309, 34.510418, 33.941906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809059, 35.199753, 33.750977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625853, 35.036152, 34.066681>,  <30.515928, 34.937992, 34.256104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625853, 35.036152, 34.066681>,  <30.809059, 35.199753, 33.750977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625853, 35.036152, 34.066681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293518, 0.768490, 0.568568,
		-0.839087, 0.492077, -0.231932,
		-0.458017, -0.409002, 0.789264,
		30.488447, 34.913452, 34.303459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574768, 35.743389, 34.169315>,  <30.809059, 35.199753, 33.750977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574768, 35.743389, 34.169315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543461, 35.435684, 34.422962>,  <30.524675, 35.251060, 34.575150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543461, 35.435684, 34.422962>,  <30.574768, 35.743389, 34.169315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543461, 35.435684, 34.422962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172023, 0.616111, 0.768645,
		-0.981979, 0.169245, 0.084107,
		-0.078270, -0.769262, 0.634121,
		30.519979, 35.204906, 34.613197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104843, 35.891239, 34.698002>,  <30.574768, 35.743389, 34.169315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104843, 35.891239, 34.698002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359819, 35.622276, 34.848484>,  <30.512806, 35.460899, 34.938774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359819, 35.622276, 34.848484>,  <30.104843, 35.891239, 34.698002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359819, 35.622276, 34.848484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058970, 0.529406, 0.846317,
		-0.768238, -0.517293, 0.377118,
		0.637442, -0.672412, 0.376205,
		30.551052, 35.420551, 34.961346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798172, 35.820267, 35.298370>,  <30.104843, 35.891239, 34.698002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798172, 35.820267, 35.298370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169294, 35.671619, 35.311512>,  <30.391968, 35.582432, 35.319397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169294, 35.671619, 35.311512>,  <29.798172, 35.820267, 35.298370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169294, 35.671619, 35.311512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125679, 0.394258, 0.910366,
		-0.351262, -0.840512, 0.412499,
		0.927804, -0.371620, 0.032853,
		30.447636, 35.560135, 35.321369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902643, 35.620014, 35.956249>,  <29.798172, 35.820267, 35.298370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902643, 35.620014, 35.956249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281631, 35.642719, 35.830341>,  <30.509024, 35.656342, 35.754795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281631, 35.642719, 35.830341>,  <29.902643, 35.620014, 35.956249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281631, 35.642719, 35.830341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228887, 0.567086, 0.791217,
		0.223409, -0.821700, 0.524306,
		0.947470, 0.056758, -0.314769,
		30.565872, 35.659748, 35.735912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379774, 35.531841, 36.573841>,  <29.902643, 35.620014, 35.956249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379774, 35.531841, 36.573841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614250, 35.714867, 36.306404>,  <30.754936, 35.824684, 36.145943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614250, 35.714867, 36.306404>,  <30.379774, 35.531841, 36.573841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614250, 35.714867, 36.306404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253158, 0.680472, 0.687655,
		0.769604, -0.572356, 0.283050,
		0.586192, 0.457566, -0.668591,
		30.790108, 35.852135, 36.105827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036400, 35.533123, 36.789314>,  <30.379774, 35.531841, 36.573841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036400, 35.533123, 36.789314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054497, 35.843494, 36.537632>,  <31.065355, 36.029716, 36.386623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054497, 35.843494, 36.537632>,  <31.036400, 35.533123, 36.789314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054497, 35.843494, 36.537632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450170, 0.546434, 0.706228,
		0.891796, -0.315200, -0.324575,
		0.045244, 0.775925, -0.629201,
		31.068069, 36.076271, 36.348873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716940, 35.705803, 36.639587>,  <31.036400, 35.533123, 36.789314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716940, 35.705803, 36.639587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503290, 36.039448, 36.584496>,  <31.375101, 36.239635, 36.551441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503290, 36.039448, 36.584496>,  <31.716940, 35.705803, 36.639587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503290, 36.039448, 36.584496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572656, 0.476814, 0.666868,
		0.621914, 0.277317, -0.732337,
		-0.534123, 0.834112, -0.137730,
		31.343054, 36.289680, 36.543175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217850, 36.243923, 36.541935>,  <31.716940, 35.705803, 36.639587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217850, 36.243923, 36.541935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877514, 36.433414, 36.632843>,  <31.673311, 36.547108, 36.687389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877514, 36.433414, 36.632843>,  <32.217850, 36.243923, 36.541935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877514, 36.433414, 36.632843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511081, 0.645830, 0.567186,
		0.121911, 0.598739, -0.791611,
		-0.850843, 0.473724, 0.227271,
		31.622261, 36.575531, 36.701023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404835, 36.869862, 36.808319>,  <32.217850, 36.243923, 36.541935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404835, 36.869862, 36.808319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028885, 36.856052, 36.944229>,  <31.803316, 36.847767, 37.025776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028885, 36.856052, 36.944229>,  <32.404835, 36.869862, 36.808319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028885, 36.856052, 36.944229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258357, 0.578798, 0.773463,
		-0.223362, 0.814740, -0.535078,
		-0.939873, -0.034521, 0.339775,
		31.746923, 36.845695, 37.046162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123177, 37.563137, 36.894791>,  <32.404835, 36.869862, 36.808319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123177, 37.563137, 36.894791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888521, 37.339527, 37.129173>,  <31.747728, 37.205360, 37.269802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888521, 37.339527, 37.129173>,  <32.123177, 37.563137, 36.894791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888521, 37.339527, 37.129173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200264, 0.600932, 0.773806,
		-0.784696, 0.571291, -0.240578,
		-0.586640, -0.559023, 0.585958,
		31.712530, 37.171822, 37.304962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732639, 37.967152, 37.316753>,  <32.123177, 37.563137, 36.894791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732639, 37.967152, 37.316753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737629, 37.623722, 37.521770>,  <31.740622, 37.417664, 37.644783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737629, 37.623722, 37.521770>,  <31.732639, 37.967152, 37.316753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737629, 37.623722, 37.521770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151869, 0.508265, 0.847705,
		-0.988322, 0.067266, 0.136729,
		0.012473, -0.858570, 0.512545,
		31.741371, 37.366150, 37.675533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439655, 38.104679, 37.946198>,  <31.732639, 37.967152, 37.316753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439655, 38.104679, 37.946198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595631, 37.757893, 38.070343>,  <31.689215, 37.549820, 38.144829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595631, 37.757893, 38.070343>,  <31.439655, 38.104679, 37.946198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595631, 37.757893, 38.070343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234508, 0.419423, 0.876978,
		-0.890480, -0.269183, 0.366858,
		0.389937, -0.866963, 0.310362,
		31.712612, 37.497803, 38.163452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176699, 38.073902, 38.604469>,  <31.439655, 38.104679, 37.946198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176699, 38.073902, 38.604469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461330, 37.793102, 38.616158>,  <31.632111, 37.624622, 38.623169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461330, 37.793102, 38.616158>,  <31.176699, 38.073902, 38.604469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461330, 37.793102, 38.616158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291137, 0.332450, 0.897060,
		-0.639447, -0.629824, 0.440943,
		0.711581, -0.701997, 0.029219,
		31.674805, 37.582504, 38.624924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027451, 37.758625, 39.234489>,  <31.176699, 38.073902, 38.604469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027451, 37.758625, 39.234489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400633, 37.694839, 39.105392>,  <31.624542, 37.656567, 39.027935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400633, 37.694839, 39.105392>,  <31.027451, 37.758625, 39.234489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400633, 37.694839, 39.105392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358141, 0.320511, 0.876931,
		-0.036398, -0.933726, 0.356134,
		0.932958, -0.159465, -0.322739,
		31.680521, 37.646999, 39.008572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431013, 37.386040, 39.732204>,  <31.027451, 37.758625, 39.234489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431013, 37.386040, 39.732204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746370, 37.542557, 39.542332>,  <31.935585, 37.636467, 39.428406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746370, 37.542557, 39.542332>,  <31.431013, 37.386040, 39.732204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746370, 37.542557, 39.542332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497821, 0.047504, 0.865978,
		0.361403, -0.919038, -0.157344,
		0.788392, 0.391297, -0.474684,
		31.982887, 37.659946, 39.399925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948786, 36.956329, 39.743076>,  <31.431013, 37.386040, 39.732204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948786, 36.956329, 39.743076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095505, 37.327553, 39.717258>,  <32.183537, 37.550285, 39.701767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095505, 37.327553, 39.717258>,  <31.948786, 36.956329, 39.743076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095505, 37.327553, 39.717258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342880, -0.070365, 0.936740,
		0.864808, -0.365726, -0.344023,
		0.366798, 0.928059, -0.064549,
		32.205544, 37.605972, 39.697895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691235, 36.936230, 40.009678>,  <31.948786, 36.956329, 39.743076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691235, 36.936230, 40.009678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508865, 37.291355, 40.034710>,  <32.399445, 37.504429, 40.049728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508865, 37.291355, 40.034710>,  <32.691235, 36.936230, 40.009678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508865, 37.291355, 40.034710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177494, 0.021802, 0.983880,
		0.872139, 0.459684, -0.167522,
		-0.455927, 0.887815, 0.062577,
		32.372086, 37.557701, 40.053482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189804, 37.348518, 40.425560>,  <32.691235, 36.936230, 40.009678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189804, 37.348518, 40.425560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819500, 37.497234, 40.453094>,  <32.597317, 37.586464, 40.469616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819500, 37.497234, 40.453094>,  <33.189804, 37.348518, 40.425560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819500, 37.497234, 40.453094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181431, 0.277058, 0.943568,
		0.331737, 0.886008, -0.323944,
		-0.925761, 0.371790, 0.068839,
		32.541771, 37.608772, 40.473747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234276, 37.770222, 40.956055>,  <33.189804, 37.348518, 40.425560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234276, 37.770222, 40.956055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838070, 37.778870, 40.901768>,  <32.600346, 37.784058, 40.869198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838070, 37.778870, 40.901768>,  <33.234276, 37.770222, 40.956055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838070, 37.778870, 40.901768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129488, 0.183898, 0.974379,
		0.046025, 0.982708, -0.179353,
		-0.990512, 0.021622, -0.135713,
		32.540916, 37.785355, 40.861053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929630, 38.381554, 41.289658>,  <33.234276, 37.770222, 40.956055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929630, 38.381554, 41.289658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636654, 38.113438, 41.241924>,  <32.460869, 37.952568, 41.213284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636654, 38.113438, 41.241924>,  <32.929630, 38.381554, 41.289658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636654, 38.113438, 41.241924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394346, 0.274797, 0.876914,
		-0.554993, 0.689348, -0.465599,
		-0.732443, -0.670288, -0.119332,
		32.416920, 37.912350, 41.206123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397003, 38.634468, 41.607273>,  <32.929630, 38.381554, 41.289658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397003, 38.634468, 41.607273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283104, 38.251034, 41.605160>,  <32.214764, 38.020973, 41.603889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283104, 38.251034, 41.605160>,  <32.397003, 38.634468, 41.607273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283104, 38.251034, 41.605160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364726, 0.103240, 0.925374,
		-0.886505, 0.265430, -0.379020,
		-0.284751, -0.958587, -0.005287,
		32.197678, 37.963459, 41.603573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905848, 38.715759, 42.030487>,  <32.397003, 38.634468, 41.607273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905848, 38.715759, 42.030487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985533, 38.323795, 42.034237>,  <32.033344, 38.088615, 42.036488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985533, 38.323795, 42.034237>,  <31.905848, 38.715759, 42.030487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985533, 38.323795, 42.034237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261002, -0.043840, 0.964342,
		-0.944559, -0.194556, -0.264493,
		0.199214, -0.979911, 0.009370,
		32.045296, 38.029823, 42.037048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372408, 38.462875, 42.384422>,  <31.905848, 38.715759, 42.030487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372408, 38.462875, 42.384422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664555, 38.190170, 42.401211>,  <31.839844, 38.026546, 42.411285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664555, 38.190170, 42.401211>,  <31.372408, 38.462875, 42.384422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664555, 38.190170, 42.401211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137844, -0.086932, 0.986632,
		-0.669000, -0.726390, -0.157469,
		0.730369, -0.681763, 0.041971,
		31.883665, 37.985641, 42.413803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149357, 37.990833, 42.822048>,  <31.372408, 38.462875, 42.384422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149357, 37.990833, 42.822048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539673, 37.904022, 42.832897>,  <31.773863, 37.851936, 42.839405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539673, 37.904022, 42.832897>,  <31.149357, 37.990833, 42.822048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539673, 37.904022, 42.832897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007007, 0.092917, 0.995649,
		-0.218601, -0.971734, 0.089147,
		0.975789, -0.217026, 0.027120,
		31.832409, 37.838913, 42.841034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191305, 37.507225, 43.339191>,  <31.149357, 37.990833, 42.822048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191305, 37.507225, 43.339191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563021, 37.649902, 43.300850>,  <31.786051, 37.735508, 43.277843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563021, 37.649902, 43.300850>,  <31.191305, 37.507225, 43.339191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563021, 37.649902, 43.300850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056992, 0.117938, 0.991384,
		0.364930, -0.926745, 0.089269,
		0.929289, 0.356699, -0.095856,
		31.841808, 37.756912, 43.272095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528391, 37.230244, 43.912312>,  <31.191305, 37.507225, 43.339191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528391, 37.230244, 43.912312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787846, 37.507359, 43.786251>,  <31.943518, 37.673626, 43.710613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787846, 37.507359, 43.786251>,  <31.528391, 37.230244, 43.912312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787846, 37.507359, 43.786251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343464, 0.103081, 0.933492,
		0.679195, -0.713740, -0.171084,
		0.648635, 0.692784, -0.315155,
		31.982437, 37.715195, 43.691704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256786, 37.020149, 44.238483>,  <31.528391, 37.230244, 43.912312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256786, 37.020149, 44.238483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226231, 37.409031, 44.149956>,  <32.207897, 37.642361, 44.096840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226231, 37.409031, 44.149956>,  <32.256786, 37.020149, 44.238483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226231, 37.409031, 44.149956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221045, 0.232960, 0.947032,
		0.972267, 0.023420, -0.232696,
		-0.076388, 0.972204, -0.221323,
		32.203316, 37.700691, 44.083557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742569, 37.400658, 44.708981>,  <32.256786, 37.020149, 44.238483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742569, 37.400658, 44.708981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515591, 37.716187, 44.614513>,  <32.379406, 37.905502, 44.557835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515591, 37.716187, 44.614513>,  <32.742569, 37.400658, 44.708981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515591, 37.716187, 44.614513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138509, 0.374169, 0.916958,
		0.811679, 0.487611, -0.321578,
		-0.567443, 0.788817, -0.236167,
		32.345356, 37.952831, 44.543663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128990, 38.078053, 44.819271>,  <32.742569, 37.400658, 44.708981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128990, 38.078053, 44.819271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738094, 38.158516, 44.846245>,  <32.503559, 38.206795, 44.862427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738094, 38.158516, 44.846245>,  <33.128990, 38.078053, 44.819271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738094, 38.158516, 44.846245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131980, 0.327553, 0.935570,
		0.166107, 0.923172, -0.346645,
		-0.977236, 0.201155, 0.067432,
		32.444923, 38.218861, 44.866474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020447, 38.892143, 44.956169>,  <33.128990, 38.078053, 44.819271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020447, 38.892143, 44.956169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677639, 38.718987, 45.067966>,  <32.471954, 38.615093, 45.135044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677639, 38.718987, 45.067966>,  <33.020447, 38.892143, 44.956169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677639, 38.718987, 45.067966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009722, 0.528730, 0.848734,
		-0.515188, 0.730101, -0.448925,
		-0.857022, -0.432894, 0.279494,
		32.420532, 38.589119, 45.151814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549297, 39.425865, 45.194923>,  <33.020447, 38.892143, 44.956169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549297, 39.425865, 45.194923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410778, 39.076817, 45.332680>,  <32.327667, 38.867386, 45.415333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410778, 39.076817, 45.332680>,  <32.549297, 39.425865, 45.194923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410778, 39.076817, 45.332680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058379, 0.346351, 0.936287,
		-0.936306, 0.344340, -0.068997,
		-0.346298, -0.872623, 0.344393,
		32.306889, 38.815029, 45.435997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132553, 39.553581, 45.766430>,  <32.549297, 39.425865, 45.194923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132553, 39.553581, 45.766430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258610, 39.178104, 45.822342>,  <32.334244, 38.952816, 45.855888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258610, 39.178104, 45.822342>,  <32.132553, 39.553581, 45.766430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258610, 39.178104, 45.822342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247249, 0.223407, 0.942845,
		-0.916271, -0.262570, 0.302496,
		0.315143, -0.938694, 0.139781,
		32.353153, 38.896496, 45.864277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776028, 39.361908, 46.366547>,  <32.132553, 39.553581, 45.766430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776028, 39.361908, 46.366547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088223, 39.114803, 46.328156>,  <32.275539, 38.966541, 46.305122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088223, 39.114803, 46.328156>,  <31.776028, 39.361908, 46.366547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088223, 39.114803, 46.328156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224212, 0.133285, 0.965383,
		-0.583584, -0.774988, 0.242537,
		0.780486, -0.617761, -0.095978,
		32.322369, 38.929474, 46.299362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812342, 39.092205, 47.000832>,  <31.776028, 39.361908, 46.366547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812342, 39.092205, 47.000832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176281, 39.021797, 46.850529>,  <32.394646, 38.979553, 46.760345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176281, 39.021797, 46.850529>,  <31.812342, 39.092205, 47.000832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176281, 39.021797, 46.850529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409291, 0.231721, 0.882489,
		-0.068268, -0.956724, 0.282875,
		0.909846, -0.176024, -0.375759,
		32.449234, 38.968990, 46.737801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267860, 38.647556, 47.470955>,  <31.812342, 39.092205, 47.000832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267860, 38.647556, 47.470955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544579, 38.819115, 47.238586>,  <32.710609, 38.922050, 47.099167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544579, 38.819115, 47.238586>,  <32.267860, 38.647556, 47.470955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544579, 38.819115, 47.238586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557516, 0.194030, 0.807173,
		0.458913, -0.882268, -0.104890,
		0.691791, 0.428900, -0.580922,
		32.752117, 38.947784, 47.064308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890270, 38.368599, 47.620926>,  <32.267860, 38.647556, 47.470955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890270, 38.368599, 47.620926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005539, 38.704723, 47.437256>,  <33.074699, 38.906399, 47.327053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005539, 38.704723, 47.437256>,  <32.890270, 38.368599, 47.620926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005539, 38.704723, 47.437256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585332, 0.224923, 0.778971,
		0.757855, -0.493244, -0.427044,
		0.288170, 0.840310, -0.459171,
		33.091991, 38.956818, 47.299503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512497, 38.366585, 47.774433>,  <32.890270, 38.368599, 47.620926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512497, 38.366585, 47.774433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501087, 38.753819, 47.674839>,  <33.494244, 38.986160, 47.615082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501087, 38.753819, 47.674839>,  <33.512497, 38.366585, 47.774433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501087, 38.753819, 47.674839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725808, 0.191327, 0.660755,
		0.687306, -0.161872, -0.708102,
		-0.028522, 0.968086, -0.248988,
		33.492531, 39.044243, 47.600143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059418, 38.585266, 48.188717>,  <33.512497, 38.366585, 47.774433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059418, 38.585266, 48.188717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935543, 38.930328, 48.028759>,  <33.861217, 39.137367, 47.932785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935543, 38.930328, 48.028759>,  <34.059418, 38.585266, 48.188717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935543, 38.930328, 48.028759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512450, 0.505688, 0.694028,
		0.800929, 0.010009, -0.598675,
		-0.309689, 0.862659, -0.399891,
		33.842636, 39.189125, 47.908791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651752, 38.931599, 48.117222>,  <34.059418, 38.585266, 48.188717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651752, 38.931599, 48.117222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352173, 39.195423, 48.142685>,  <34.172424, 39.353718, 48.157963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352173, 39.195423, 48.142685>,  <34.651752, 38.931599, 48.117222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352173, 39.195423, 48.142685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519049, 0.524236, 0.675104,
		0.411898, 0.538664, -0.734971,
		-0.748952, 0.659560, 0.063661,
		34.127487, 39.393291, 48.161785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966534, 39.616886, 48.125950>,  <34.651752, 38.931599, 48.117222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966534, 39.616886, 48.125950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623692, 39.648865, 48.329514>,  <34.417988, 39.668053, 48.451653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623692, 39.648865, 48.329514>,  <34.966534, 39.616886, 48.125950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623692, 39.648865, 48.329514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454297, 0.583062, 0.673538,
		-0.242879, 0.808485, -0.536061,
		-0.857102, 0.079943, 0.508906,
		34.366562, 39.672848, 48.482185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019432, 40.323734, 48.484737>,  <34.966534, 39.616886, 48.125950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019432, 40.323734, 48.484737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689140, 40.188667, 48.665466>,  <34.490963, 40.107628, 48.773903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689140, 40.188667, 48.665466>,  <35.019432, 40.323734, 48.484737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689140, 40.188667, 48.665466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288548, 0.435404, 0.852739,
		-0.484670, 0.834507, -0.262094,
		-0.825733, -0.337671, 0.451822,
		34.441422, 40.087368, 48.801014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720047, 40.863049, 48.833614>,  <35.019432, 40.323734, 48.484737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720047, 40.863049, 48.833614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619873, 40.526131, 49.024536>,  <34.559769, 40.323978, 49.139091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619873, 40.526131, 49.024536>,  <34.720047, 40.863049, 48.833614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619873, 40.526131, 49.024536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317202, 0.394416, 0.862450,
		-0.914694, 0.367390, 0.168401,
		-0.250436, -0.842295, 0.477307,
		34.544743, 40.273441, 49.167728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481319, 41.142239, 49.512981>,  <34.720047, 40.863049, 48.833614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481319, 41.142239, 49.512981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554764, 40.756351, 49.588463>,  <34.598831, 40.524818, 49.633751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554764, 40.756351, 49.588463>,  <34.481319, 41.142239, 49.512981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554764, 40.756351, 49.588463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237472, 0.229813, 0.943819,
		-0.953884, -0.128484, 0.271289,
		0.183611, -0.964717, 0.188704,
		34.609848, 40.466938, 49.645073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060577, 40.815826, 50.058372>,  <34.481319, 41.142239, 49.512981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060577, 40.815826, 50.058372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379208, 40.574078, 50.064018>,  <34.570385, 40.429028, 50.067406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379208, 40.574078, 50.064018>,  <34.060577, 40.815826, 50.058372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379208, 40.574078, 50.064018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154454, 0.226027, 0.961798,
		-0.584475, -0.763966, 0.273396,
		0.796576, -0.604374, 0.014110,
		34.618179, 40.392765, 50.068253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359379, 41.193779, 50.600983>,  <34.060577, 40.815826, 50.058372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359379, 41.193779, 50.600983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707737, 41.325043, 50.747326>,  <34.916752, 41.403801, 50.835133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707737, 41.325043, 50.747326>,  <34.359379, 41.193779, 50.600983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707737, 41.325043, 50.747326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457219, -0.814015, -0.358231,
		0.180257, 0.479259, -0.858963,
		0.870895, 0.328161, 0.365858,
		34.969006, 41.423492, 50.857082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960876, 41.384541, 50.094727>,  <34.359379, 41.193779, 50.600983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960876, 41.384541, 50.094727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045994, 41.200069, 50.439293>,  <35.097065, 41.089386, 50.646030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045994, 41.200069, 50.439293>,  <34.960876, 41.384541, 50.094727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045994, 41.200069, 50.439293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431460, -0.746645, -0.506323,
		0.876676, 0.479408, 0.040099,
		0.212796, -0.461182, 0.861411,
		35.109833, 41.061714, 50.697716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673054, 41.227886, 50.127659>,  <34.960876, 41.384541, 50.094727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673054, 41.227886, 50.127659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473904, 40.968895, 50.358448>,  <35.354412, 40.813499, 50.496922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473904, 40.968895, 50.358448>,  <35.673054, 41.227886, 50.127659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473904, 40.968895, 50.358448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455456, -0.761370, -0.461384,
		0.738024, 0.033073, 0.673964,
		-0.497876, -0.647473, 0.576972,
		35.324539, 40.774654, 50.531540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177734, 40.957718, 50.487686>,  <35.673054, 41.227886, 50.127659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177734, 40.957718, 50.487686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866760, 40.708607, 50.452507>,  <35.680176, 40.559139, 50.431400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866760, 40.708607, 50.452507>,  <36.177734, 40.957718, 50.487686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866760, 40.708607, 50.452507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612132, -0.717071, -0.333322,
		0.144520, -0.312975, 0.938702,
		-0.777437, -0.622781, -0.087951,
		35.633530, 40.521774, 50.426121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205872, 40.311504, 50.966949>,  <36.177734, 40.957718, 50.487686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205872, 40.311504, 50.966949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999168, 40.247704, 50.630493>,  <35.875145, 40.209423, 50.428619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999168, 40.247704, 50.630493>,  <36.205872, 40.311504, 50.966949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999168, 40.247704, 50.630493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676189, -0.678639, -0.286735,
		-0.525099, -0.716944, 0.458543,
		-0.516758, -0.159498, -0.841143,
		35.844139, 40.199856, 50.378151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047146, 39.575062, 50.836189>,  <36.205872, 40.311504, 50.966949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047146, 39.575062, 50.836189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041157, 39.750748, 50.476887>,  <36.037563, 39.856159, 50.261307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041157, 39.750748, 50.476887>,  <36.047146, 39.575062, 50.836189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041157, 39.750748, 50.476887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582523, -0.726324, -0.364857,
		-0.812676, -0.528715, -0.244984,
		-0.014968, 0.439219, -0.898255,
		36.036667, 39.882515, 50.207409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707268, 39.126724, 50.261215>,  <36.047146, 39.575062, 50.836189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707268, 39.126724, 50.261215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008610, 39.375629, 50.176132>,  <36.189415, 39.524975, 50.125080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008610, 39.375629, 50.176132>,  <35.707268, 39.126724, 50.261215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008610, 39.375629, 50.176132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568827, -0.778917, -0.264053,
		-0.329996, 0.077929, -0.940760,
		0.753352, 0.622266, -0.212711,
		36.234615, 39.562309, 50.112320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415085, 38.860516, 50.850056>,  <35.707268, 39.126724, 50.261215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415085, 38.860516, 50.850056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088634, 38.633949, 50.895859>,  <34.892765, 38.498009, 50.923340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088634, 38.633949, 50.895859>,  <35.415085, 38.860516, 50.850056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088634, 38.633949, 50.895859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324372, -0.613013, -0.720415,
		0.478247, -0.550807, 0.684026,
		-0.816127, -0.566415, 0.114505,
		34.843796, 38.464024, 50.930210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611729, 38.202576, 50.911419>,  <35.415085, 38.860516, 50.850056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611729, 38.202576, 50.911419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231514, 38.185844, 50.788300>,  <35.003387, 38.175804, 50.714428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231514, 38.185844, 50.788300>,  <35.611729, 38.202576, 50.911419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231514, 38.185844, 50.788300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229852, -0.761233, -0.606376,
		-0.208941, -0.647128, 0.733191,
		-0.950532, -0.041828, -0.307796,
		34.946354, 38.173294, 50.695961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565296, 37.534168, 50.878529>,  <35.611729, 38.202576, 50.911419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565296, 37.534168, 50.878529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300358, 37.736252, 50.657238>,  <35.141396, 37.857502, 50.524464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300358, 37.736252, 50.657238>,  <35.565296, 37.534168, 50.878529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300358, 37.736252, 50.657238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158397, -0.627307, -0.762493,
		-0.732262, -0.592664, 0.335472,
		-0.662346, 0.505207, -0.553230,
		35.101654, 37.887814, 50.491268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029690, 37.154427, 50.591915>,  <35.565296, 37.534168, 50.878529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029690, 37.154427, 50.591915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080509, 37.444443, 50.321159>,  <35.111000, 37.618454, 50.158707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080509, 37.444443, 50.321159>,  <35.029690, 37.154427, 50.591915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080509, 37.444443, 50.321159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061733, -0.686871, -0.724152,
		-0.989973, 0.050217, -0.132025,
		0.127049, 0.725042, -0.676885,
		35.118626, 37.661957, 50.118095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644958, 36.939316, 50.021992>,  <35.029690, 37.154427, 50.591915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644958, 36.939316, 50.021992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919201, 37.197296, 49.886948>,  <35.083748, 37.352085, 49.805923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919201, 37.197296, 49.886948>,  <34.644958, 36.939316, 50.021992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919201, 37.197296, 49.886948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092534, -0.537215, -0.838354,
		-0.722066, 0.543542, -0.427999,
		0.685608, 0.644951, -0.337608,
		35.124882, 37.390781, 49.785664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412712, 37.165115, 49.345402>,  <34.644958, 36.939316, 50.021992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412712, 37.165115, 49.345402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804848, 37.241280, 49.366100>,  <35.040131, 37.286976, 49.378521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804848, 37.241280, 49.366100>,  <34.412712, 37.165115, 49.345402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804848, 37.241280, 49.366100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136972, -0.467949, -0.873076,
		-0.142024, 0.863000, -0.484830,
		0.980341, 0.190406, 0.051747,
		35.098949, 37.298401, 49.381626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558975, 37.437595, 48.683964>,  <34.412712, 37.165115, 49.345402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558975, 37.437595, 48.683964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912006, 37.328175, 48.836922>,  <35.123825, 37.262520, 48.928696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912006, 37.328175, 48.836922>,  <34.558975, 37.437595, 48.683964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912006, 37.328175, 48.836922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178025, -0.558331, -0.810292,
		0.435165, 0.783220, -0.444069,
		0.882575, -0.273555, 0.382399,
		35.176781, 37.246109, 48.951641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095814, 37.823116, 48.260345>,  <34.558975, 37.437595, 48.683964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095814, 37.823116, 48.260345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226719, 37.490162, 48.439243>,  <35.305264, 37.290390, 48.546581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226719, 37.490162, 48.439243>,  <35.095814, 37.823116, 48.260345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226719, 37.490162, 48.439243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295127, -0.359596, -0.885207,
		0.897663, 0.421691, 0.127977,
		0.327264, -0.832386, 0.447248,
		35.324898, 37.240444, 48.573418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748989, 37.675270, 47.878330>,  <35.095814, 37.823116, 48.260345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748989, 37.675270, 47.878330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676460, 37.323223, 48.053837>,  <35.632942, 37.111996, 48.159142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676460, 37.323223, 48.053837>,  <35.748989, 37.675270, 47.878330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676460, 37.323223, 48.053837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323607, -0.474712, -0.818490,
		0.928656, -0.006422, 0.370888,
		-0.181321, -0.880118, 0.438766,
		35.622063, 37.059189, 48.185467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367546, 37.262905, 47.828278>,  <35.748989, 37.675270, 47.878330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367546, 37.262905, 47.828278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072754, 37.007057, 47.915680>,  <35.895878, 36.853546, 47.968121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072754, 37.007057, 47.915680>,  <36.367546, 37.262905, 47.828278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072754, 37.007057, 47.915680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116321, -0.438468, -0.891187,
		0.665830, -0.631371, 0.397544,
		-0.736980, -0.639622, 0.218504,
		35.851662, 36.815170, 47.981232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667568, 36.574303, 47.879696>,  <36.367546, 37.262905, 47.828278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667568, 36.574303, 47.879696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280102, 36.527111, 47.792274>,  <36.047623, 36.498795, 47.739822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280102, 36.527111, 47.792274>,  <36.667568, 36.574303, 47.879696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280102, 36.527111, 47.792274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247772, -0.398555, -0.883042,
		0.017076, -0.909525, 0.415299,
		-0.968668, -0.117978, -0.218549,
		35.989502, 36.491718, 47.726711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584274, 35.951019, 47.518345>,  <36.667568, 36.574303, 47.879696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584274, 35.951019, 47.518345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235306, 36.115921, 47.413334>,  <36.025925, 36.214863, 47.350327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235306, 36.115921, 47.413334>,  <36.584274, 35.951019, 47.518345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235306, 36.115921, 47.413334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160094, -0.266469, -0.950455,
		-0.461787, -0.871228, 0.166475,
		-0.872424, 0.412256, -0.262530,
		35.973579, 36.239597, 47.334576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183392, 35.438595, 47.150871>,  <36.584274, 35.951019, 47.518345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183392, 35.438595, 47.150871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001217, 35.767479, 47.014317>,  <35.891911, 35.964809, 46.932384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001217, 35.767479, 47.014317>,  <36.183392, 35.438595, 47.150871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001217, 35.767479, 47.014317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120746, -0.436967, -0.891336,
		-0.882041, -0.364728, 0.298290,
		-0.455438, 0.822212, -0.341384,
		35.864586, 36.014141, 46.911900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632359, 35.203709, 46.881618>,  <36.183392, 35.438595, 47.150871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632359, 35.203709, 46.881618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683250, 35.557583, 46.702225>,  <35.713787, 35.769909, 46.594589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683250, 35.557583, 46.702225>,  <35.632359, 35.203709, 46.881618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683250, 35.557583, 46.702225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240636, -0.411123, -0.879245,
		-0.962240, 0.219790, 0.160580,
		0.127231, 0.884686, -0.448489,
		35.721420, 35.822990, 46.567677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992748, 35.331116, 46.567307>,  <35.632359, 35.203709, 46.881618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992748, 35.331116, 46.567307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259422, 35.560146, 46.376438>,  <35.419426, 35.697563, 46.261917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259422, 35.560146, 46.376438>,  <34.992748, 35.331116, 46.567307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259422, 35.560146, 46.376438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450336, -0.200697, -0.870010,
		-0.593911, 0.794910, 0.124049,
		0.666683, 0.572572, -0.477173,
		35.459427, 35.731918, 46.233288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628616, 35.508842, 46.092117>,  <34.992748, 35.331116, 46.567307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628616, 35.508842, 46.092117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973980, 35.640720, 45.939365>,  <35.181198, 35.719845, 45.847713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973980, 35.640720, 45.939365>,  <34.628616, 35.508842, 46.092117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973980, 35.640720, 45.939365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362445, -0.121182, -0.924094,
		-0.350942, 0.936279, 0.014866,
		0.863408, 0.329691, -0.381877,
		35.233002, 35.739628, 45.824802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468689, 36.087238, 45.599762>,  <34.628616, 35.508842, 46.092117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468689, 36.087238, 45.599762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823471, 35.933998, 45.496578>,  <35.036339, 35.842052, 45.434669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823471, 35.933998, 45.496578>,  <34.468689, 36.087238, 45.599762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823471, 35.933998, 45.496578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288965, -0.024603, -0.957023,
		0.360292, 0.923378, -0.132525,
		0.886955, -0.383103, -0.257960,
		35.089558, 35.819069, 45.419189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641865, 36.363281, 44.991039>,  <34.468689, 36.087238, 45.599762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641865, 36.363281, 44.991039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878147, 36.040531, 44.989342>,  <35.019917, 35.846882, 44.988323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878147, 36.040531, 44.989342>,  <34.641865, 36.363281, 44.991039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878147, 36.040531, 44.989342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199938, -0.141275, -0.969570,
		0.781721, 0.573582, -0.244777,
		0.590709, -0.806874, -0.004244,
		35.055359, 35.798470, 44.988068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152668, 36.487061, 44.464008>,  <34.641865, 36.363281, 44.991039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152668, 36.487061, 44.464008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170765, 36.088776, 44.496288>,  <35.181625, 35.849804, 44.515656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170765, 36.088776, 44.496288>,  <35.152668, 36.487061, 44.464008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170765, 36.088776, 44.496288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103440, -0.085018, -0.990996,
		0.993606, 0.036492, -0.106844,
		0.045247, -0.995711, 0.080700,
		35.184338, 35.790062, 44.520500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411827, 36.255692, 43.802792>,  <35.152668, 36.487061, 44.464008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411827, 36.255692, 43.802792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268295, 35.923531, 43.973286>,  <35.182178, 35.724236, 44.075584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268295, 35.923531, 43.973286>,  <35.411827, 36.255692, 43.802792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268295, 35.923531, 43.973286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355120, -0.300856, -0.885085,
		0.863211, -0.468957, -0.186937,
		-0.358826, -0.830401, 0.426238,
		35.160648, 35.674412, 44.101158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678257, 35.634579, 43.413754>,  <35.411827, 36.255692, 43.802792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678257, 35.634579, 43.413754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344139, 35.495678, 43.584259>,  <35.143669, 35.412338, 43.686562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344139, 35.495678, 43.584259>,  <35.678257, 35.634579, 43.413754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344139, 35.495678, 43.584259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302009, -0.358064, -0.883505,
		0.459429, -0.866721, 0.194215,
		-0.835294, -0.347253, 0.426263,
		35.093552, 35.391502, 43.712139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563190, 35.071449, 43.059387>,  <35.678257, 35.634579, 43.413754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563190, 35.071449, 43.059387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225346, 35.182343, 43.242592>,  <35.022640, 35.248878, 43.352516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225346, 35.182343, 43.242592>,  <35.563190, 35.071449, 43.059387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225346, 35.182343, 43.242592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531510, -0.331508, -0.779487,
		-0.064266, -0.901800, 0.427348,
		-0.844610, 0.277234, 0.458011,
		34.971962, 35.265514, 43.379993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153587, 34.541721, 43.043007>,  <35.563190, 35.071449, 43.059387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153587, 34.541721, 43.043007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886322, 34.828480, 43.122631>,  <34.725964, 35.000534, 43.170406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886322, 34.828480, 43.122631>,  <35.153587, 34.541721, 43.043007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886322, 34.828480, 43.122631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525155, -0.264899, -0.808728,
		-0.527040, -0.644899, 0.553475,
		-0.668163, 0.716892, 0.199059,
		34.685875, 35.043549, 43.182350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561684, 34.277222, 42.795025>,  <35.153587, 34.541721, 43.043007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561684, 34.277222, 42.795025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467323, 34.665852, 42.802963>,  <34.410706, 34.899029, 42.807728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467323, 34.665852, 42.802963>,  <34.561684, 34.277222, 42.795025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467323, 34.665852, 42.802963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604627, -0.130755, -0.785703,
		-0.760774, -0.197346, 0.618286,
		-0.235900, 0.971575, 0.019846,
		34.396553, 34.957325, 42.808918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767746, 34.276623, 42.682369>,  <34.561684, 34.277222, 42.795025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767746, 34.276623, 42.682369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914406, 34.640152, 42.602757>,  <34.002403, 34.858269, 42.554989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914406, 34.640152, 42.602757>,  <33.767746, 34.276623, 42.682369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914406, 34.640152, 42.602757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421668, -0.028368, -0.906307,
		-0.829314, 0.416226, 0.372819,
		0.366652, 0.908819, -0.199035,
		34.024403, 34.912796, 42.543045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219166, 34.687279, 42.478802>,  <33.767746, 34.276623, 42.682369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219166, 34.687279, 42.478802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548512, 34.827629, 42.300381>,  <33.746117, 34.911839, 42.193329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548512, 34.827629, 42.300381>,  <33.219166, 34.687279, 42.478802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548512, 34.827629, 42.300381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470731, -0.016784, -0.882117,
		-0.317001, 0.936271, 0.151350,
		0.823361, 0.350877, -0.446052,
		33.795521, 34.932892, 42.166565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930813, 35.191463, 41.990372>,  <33.219166, 34.687279, 42.478802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930813, 35.191463, 41.990372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305241, 35.179737, 41.850136>,  <33.529896, 35.172703, 41.765995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305241, 35.179737, 41.850136>,  <32.930813, 35.191463, 41.990372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305241, 35.179737, 41.850136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346307, 0.098862, -0.932897,
		0.062008, 0.994669, 0.082390,
		0.936070, -0.029315, -0.350591,
		33.586063, 35.170944, 41.744957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105453, 35.795353, 41.531826>,  <32.930813, 35.191463, 41.990372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105453, 35.795353, 41.531826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353535, 35.497765, 41.432343>,  <33.502384, 35.319210, 41.372654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353535, 35.497765, 41.432343>,  <33.105453, 35.795353, 41.531826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353535, 35.497765, 41.432343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231652, 0.129212, -0.964179,
		0.749458, 0.655600, -0.092205,
		0.620202, -0.743971, -0.248710,
		33.539597, 35.274574, 41.357731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421043, 36.000416, 40.896854>,  <33.105453, 35.795353, 41.531826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421043, 36.000416, 40.896854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490639, 35.607475, 40.924343>,  <33.532394, 35.371712, 40.940838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490639, 35.607475, 40.924343>,  <33.421043, 36.000416, 40.896854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490639, 35.607475, 40.924343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206430, -0.104621, -0.972852,
		0.962868, 0.155077, -0.220988,
		0.173987, -0.982347, 0.068724,
		33.542835, 35.312771, 40.944962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876816, 35.861816, 40.329624>,  <33.421043, 36.000416, 40.896854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876816, 35.861816, 40.329624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718216, 35.505676, 40.419132>,  <33.623058, 35.291992, 40.472836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718216, 35.505676, 40.419132>,  <33.876816, 35.861816, 40.329624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718216, 35.505676, 40.419132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262782, -0.123474, -0.956922,
		0.879624, -0.438216, -0.185011,
		-0.396495, -0.890349, 0.223766,
		33.599266, 35.238571, 40.486263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046894, 35.346889, 39.866688>,  <33.876816, 35.861816, 40.329624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046894, 35.346889, 39.866688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763897, 35.103710, 40.010826>,  <33.594101, 34.957802, 40.097309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763897, 35.103710, 40.010826>,  <34.046894, 35.346889, 39.866688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763897, 35.103710, 40.010826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247704, -0.264227, -0.932109,
		0.661892, -0.748717, 0.036346,
		-0.707489, -0.607953, 0.360351,
		33.551651, 34.921326, 40.118931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112663, 34.644005, 39.556274>,  <34.046894, 35.346889, 39.866688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112663, 34.644005, 39.556274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737606, 34.700485, 39.683323>,  <33.512569, 34.734371, 39.759552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737606, 34.700485, 39.683323>,  <34.112663, 34.644005, 39.556274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737606, 34.700485, 39.683323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342586, -0.220924, -0.913142,
		-0.058760, -0.965017, 0.255520,
		-0.937647, 0.141193, 0.317620,
		33.456310, 34.742844, 39.778610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831078, 34.122078, 39.412876>,  <34.112663, 34.644005, 39.556274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831078, 34.122078, 39.412876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499855, 34.341957, 39.456974>,  <33.301121, 34.473885, 39.483433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499855, 34.341957, 39.456974>,  <33.831078, 34.122078, 39.412876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499855, 34.341957, 39.456974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379872, -0.405477, -0.831436,
		-0.412351, -0.730346, 0.544575,
		-0.828048, 0.549712, 0.110239,
		33.251438, 34.506866, 39.490047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264122, 33.673756, 39.297020>,  <33.831078, 34.122078, 39.412876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264122, 33.673756, 39.297020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125076, 34.041042, 39.221085>,  <33.041649, 34.261414, 39.175522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125076, 34.041042, 39.221085>,  <33.264122, 33.673756, 39.297020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125076, 34.041042, 39.221085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440921, -0.338762, -0.831161,
		-0.827498, -0.205218, 0.522620,
		-0.347613, 0.918219, -0.189839,
		33.020794, 34.316509, 39.164131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575302, 33.524574, 39.109116>,  <33.264122, 33.673756, 39.297020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575302, 33.524574, 39.109116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623417, 33.898125, 38.974411>,  <32.652287, 34.122253, 38.893589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623417, 33.898125, 38.974411>,  <32.575302, 33.524574, 39.109116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623417, 33.898125, 38.974411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309864, -0.286961, -0.906442,
		-0.943142, 0.213381, 0.254857,
		0.120283, 0.933875, -0.336764,
		32.659500, 34.178288, 38.873383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951653, 33.640491, 38.691414>,  <32.575302, 33.524574, 39.109116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951653, 33.640491, 38.691414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224773, 33.903584, 38.564182>,  <32.388645, 34.061440, 38.487843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224773, 33.903584, 38.564182>,  <31.951653, 33.640491, 38.691414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224773, 33.903584, 38.564182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134395, -0.314857, -0.939576,
		-0.718135, 0.684293, -0.126590,
		0.682803, 0.657730, -0.318075,
		32.429615, 34.100903, 38.468761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635799, 33.975166, 38.274334>,  <31.951653, 33.640491, 38.691414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635799, 33.975166, 38.274334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020763, 34.021423, 38.176029>,  <32.251740, 34.049179, 38.117046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020763, 34.021423, 38.176029>,  <31.635799, 33.975166, 38.274334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020763, 34.021423, 38.176029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188208, -0.368432, -0.910404,
		-0.195829, 0.922434, -0.332816,
		0.962408, 0.115645, -0.245759,
		32.309486, 34.056118, 38.102303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559118, 34.267975, 37.676525>,  <31.635799, 33.975166, 38.274334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559118, 34.267975, 37.676525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933298, 34.126671, 37.681263>,  <32.157806, 34.041889, 37.684105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933298, 34.126671, 37.681263>,  <31.559118, 34.267975, 37.676525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933298, 34.126671, 37.681263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094772, -0.282969, -0.954435,
		0.340521, 0.891702, -0.298183,
		0.935448, -0.353265, 0.011848,
		32.213932, 34.020691, 37.684818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831430, 34.523228, 37.083801>,  <31.559118, 34.267975, 37.676525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831430, 34.523228, 37.083801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115128, 34.247803, 37.144279>,  <32.285347, 34.082546, 37.180565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115128, 34.247803, 37.144279>,  <31.831430, 34.523228, 37.083801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115128, 34.247803, 37.144279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081573, -0.132870, -0.987771,
		0.700230, 0.712902, -0.038069,
		0.709242, -0.688561, 0.151193,
		32.327900, 34.041233, 37.189636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351635, 34.664013, 36.601944>,  <31.831430, 34.523228, 37.083801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351635, 34.664013, 36.601944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390648, 34.277924, 36.698963>,  <32.414055, 34.046268, 36.757175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390648, 34.277924, 36.698963>,  <32.351635, 34.664013, 36.601944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390648, 34.277924, 36.698963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133745, -0.228791, -0.964244,
		0.986204, 0.126490, 0.106778,
		0.097537, -0.965223, 0.242552,
		32.419910, 33.988358, 36.771729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858597, 34.547695, 36.269627>,  <32.351635, 34.664013, 36.601944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858597, 34.547695, 36.269627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697308, 34.186714, 36.330273>,  <32.600533, 33.970127, 36.366661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697308, 34.186714, 36.330273>,  <32.858597, 34.547695, 36.269627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697308, 34.186714, 36.330273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161028, -0.233074, -0.959034,
		0.900821, -0.362294, 0.239302,
		-0.403227, -0.902452, 0.151619,
		32.576340, 33.915977, 36.375759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328503, 34.000397, 35.929859>,  <32.858597, 34.547695, 36.269627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328503, 34.000397, 35.929859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943405, 33.901611, 35.973911>,  <32.712345, 33.842342, 36.000343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943405, 33.901611, 35.973911>,  <33.328503, 34.000397, 35.929859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943405, 33.901611, 35.973911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077478, -0.138261, -0.987361,
		0.259066, -0.959111, 0.113977,
		-0.962747, -0.246961, 0.110129,
		32.654579, 33.827522, 36.006950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854733, 33.604069, 35.505760>,  <33.328503, 34.000397, 35.929859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854733, 33.604069, 35.505760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136559, 33.736797, 35.254848>,  <34.305653, 33.816433, 35.104301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136559, 33.736797, 35.254848>,  <33.854733, 33.604069, 35.505760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136559, 33.736797, 35.254848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652197, 0.045613, 0.756676,
		0.279694, -0.942239, -0.184276,
		0.704564, 0.331822, -0.627283,
		34.347927, 33.836346, 35.066662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453632, 33.153507, 35.408836>,  <33.854733, 33.604069, 35.505760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453632, 33.153507, 35.408836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531113, 33.545929, 35.409920>,  <34.577602, 33.781384, 35.410572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531113, 33.545929, 35.409920>,  <34.453632, 33.153507, 35.408836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531113, 33.545929, 35.409920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459808, -0.093227, 0.883112,
		0.866635, -0.169813, -0.469156,
		0.193702, 0.981057, 0.002713,
		34.589222, 33.840244, 35.410732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246429, 33.253975, 35.569817>,  <34.453632, 33.153507, 35.408836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246429, 33.253975, 35.569817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072193, 33.601231, 35.664974>,  <34.967651, 33.809586, 35.722069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072193, 33.601231, 35.664974>,  <35.246429, 33.253975, 35.569817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072193, 33.601231, 35.664974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637323, 0.110803, 0.762589,
		0.635675, 0.483791, -0.601551,
		-0.435587, 0.868141, 0.237897,
		34.941517, 33.861671, 35.736343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761414, 33.665619, 35.790672>,  <35.246429, 33.253975, 35.569817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761414, 33.665619, 35.790672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461166, 33.884193, 35.939259>,  <35.281017, 34.015339, 36.028412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461166, 33.884193, 35.939259>,  <35.761414, 33.665619, 35.790672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461166, 33.884193, 35.939259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542720, 0.189216, 0.818323,
		0.376870, 0.815849, -0.438588,
		-0.750616, 0.546432, 0.371468,
		35.235981, 34.048122, 36.050697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088718, 34.235558, 36.108898>,  <35.761414, 33.665619, 35.790672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088718, 34.235558, 36.108898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728443, 34.216320, 36.281616>,  <35.512276, 34.204781, 36.385246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728443, 34.216320, 36.281616>,  <36.088718, 34.235558, 36.108898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728443, 34.216320, 36.281616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431407, 0.018656, 0.901964,
		-0.051430, 0.998669, 0.003943,
		-0.900690, -0.048089, 0.431792,
		35.458237, 34.201893, 36.411156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087936, 34.810982, 36.563717>,  <36.088718, 34.235558, 36.108898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087936, 34.810982, 36.563717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820503, 34.542515, 36.691795>,  <35.660042, 34.381435, 36.768642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820503, 34.542515, 36.691795>,  <36.087936, 34.810982, 36.563717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820503, 34.542515, 36.691795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237256, 0.215560, 0.947229,
		-0.704775, 0.709270, 0.015120,
		-0.668582, -0.671171, 0.320200,
		35.619930, 34.341164, 36.787857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709995, 35.092537, 37.188728>,  <36.087936, 34.810982, 36.563717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709995, 35.092537, 37.188728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633102, 34.704407, 37.247410>,  <35.586967, 34.471531, 37.282619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633102, 34.704407, 37.247410>,  <35.709995, 35.092537, 37.188728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633102, 34.704407, 37.247410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094684, 0.130460, 0.986922,
		-0.976771, 0.203609, 0.066795,
		-0.192232, -0.970321, 0.146708,
		35.575432, 34.413311, 37.291424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261494, 35.147579, 37.699196>,  <35.709995, 35.092537, 37.188728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261494, 35.147579, 37.699196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388996, 34.769642, 37.729328>,  <35.465496, 34.542881, 37.747410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388996, 34.769642, 37.729328>,  <35.261494, 35.147579, 37.699196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388996, 34.769642, 37.729328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144535, 0.127002, 0.981315,
		-0.936752, -0.301911, 0.177045,
		0.318755, -0.944839, 0.075333,
		35.484623, 34.486191, 37.751926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976101, 34.910255, 38.332096>,  <35.261494, 35.147579, 37.699196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976101, 34.910255, 38.332096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257473, 34.634869, 38.261444>,  <35.426296, 34.469635, 38.219051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257473, 34.634869, 38.261444>,  <34.976101, 34.910255, 38.332096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257473, 34.634869, 38.261444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326977, 0.092800, 0.940465,
		-0.631090, -0.719304, 0.290392,
		0.703428, -0.688469, -0.176631,
		35.468502, 34.428329, 38.208454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972187, 34.384472, 38.903736>,  <34.976101, 34.910255, 38.332096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972187, 34.384472, 38.903736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332378, 34.416119, 38.732677>,  <35.548492, 34.435104, 38.630043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332378, 34.416119, 38.732677>,  <34.972187, 34.384472, 38.903736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332378, 34.416119, 38.732677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411020, 0.166548, 0.896284,
		0.142126, -0.982855, 0.117459,
		0.900479, 0.079107, -0.427643,
		35.602524, 34.439854, 38.604385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446644, 33.977936, 39.390484>,  <34.972187, 34.384472, 38.903736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446644, 33.977936, 39.390484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665798, 34.237640, 39.179474>,  <35.797291, 34.393463, 39.052868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665798, 34.237640, 39.179474>,  <35.446644, 33.977936, 39.390484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665798, 34.237640, 39.179474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457657, 0.295227, 0.838684,
		0.700267, -0.700925, -0.135390,
		0.547884, 0.649265, -0.527521,
		35.830162, 34.432419, 39.021217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058437, 33.775787, 39.579971>,  <35.446644, 33.977936, 39.390484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058437, 33.775787, 39.579971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118504, 34.143394, 39.434177>,  <36.154545, 34.363960, 39.346703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118504, 34.143394, 39.434177>,  <36.058437, 33.775787, 39.579971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118504, 34.143394, 39.434177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555986, 0.226347, 0.799779,
		0.817514, -0.322748, -0.476974,
		0.150166, 0.919022, -0.364485,
		36.163555, 34.419102, 39.324833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785954, 33.909992, 39.645947>,  <36.058437, 33.775787, 39.579971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785954, 33.909992, 39.645947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590519, 34.258968, 39.650410>,  <36.473259, 34.468353, 39.653088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590519, 34.258968, 39.650410>,  <36.785954, 33.909992, 39.645947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590519, 34.258968, 39.650410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515608, 0.278386, 0.810339,
		0.703867, 0.401679, -0.585855,
		-0.488590, 0.872442, 0.011162,
		36.443943, 34.520702, 39.653759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294628, 34.335537, 39.863113>,  <36.785954, 33.909992, 39.645947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294628, 34.335537, 39.863113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973492, 34.565762, 39.925301>,  <36.780807, 34.703896, 39.962612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973492, 34.565762, 39.925301>,  <37.294628, 34.335537, 39.863113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973492, 34.565762, 39.925301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452056, 0.417671, 0.788161,
		0.388698, 0.703052, -0.595510,
		-0.802845, 0.575560, 0.155471,
		36.732639, 34.738430, 39.971943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513504, 34.909588, 40.195549>,  <37.294628, 34.335537, 39.863113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513504, 34.909588, 40.195549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129433, 34.984386, 40.278580>,  <36.898991, 35.029266, 40.328396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129433, 34.984386, 40.278580>,  <37.513504, 34.909588, 40.195549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129433, 34.984386, 40.278580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274647, 0.495583, 0.823995,
		0.051212, 0.848193, -0.527206,
		-0.960181, 0.186994, 0.207573,
		36.841377, 35.040485, 40.340851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421001, 35.635490, 40.407085>,  <37.513504, 34.909588, 40.195549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421001, 35.635490, 40.407085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100952, 35.444309, 40.552059>,  <36.908920, 35.329601, 40.639046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100952, 35.444309, 40.552059>,  <37.421001, 35.635490, 40.407085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100952, 35.444309, 40.552059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065308, 0.531228, 0.844708,
		-0.596265, 0.699544, -0.393835,
		-0.800126, -0.477950, 0.362439,
		36.860912, 35.300926, 40.660789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976849, 36.234837, 40.697475>,  <37.421001, 35.635490, 40.407085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976849, 36.234837, 40.697475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875256, 35.887802, 40.868488>,  <36.814301, 35.679581, 40.971096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875256, 35.887802, 40.868488>,  <36.976849, 36.234837, 40.697475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875256, 35.887802, 40.868488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048956, 0.429932, 0.901533,
		-0.965970, 0.249901, -0.066721,
		-0.253980, -0.867588, 0.427535,
		36.799061, 35.627525, 40.996750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568661, 36.461170, 41.235184>,  <36.976849, 36.234837, 40.697475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568661, 36.461170, 41.235184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687298, 36.086670, 41.310513>,  <36.758480, 35.861969, 41.355709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687298, 36.086670, 41.310513>,  <36.568661, 36.461170, 41.235184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687298, 36.086670, 41.310513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048642, 0.211748, 0.976113,
		-0.953764, -0.280351, 0.108344,
		0.296596, -0.936251, 0.188321,
		36.776276, 35.805794, 41.367008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208694, 36.362156, 41.836605>,  <36.568661, 36.461170, 41.235184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208694, 36.362156, 41.836605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508877, 36.100777, 41.796951>,  <36.688984, 35.943951, 41.773159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508877, 36.100777, 41.796951>,  <36.208694, 36.362156, 41.836605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508877, 36.100777, 41.796951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135043, 0.004769, 0.990828,
		-0.646981, -0.756957, 0.091823,
		0.750452, -0.653448, -0.099136,
		36.734013, 35.904743, 41.767212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059551, 35.861717, 42.275486>,  <36.208694, 36.362156, 41.836605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059551, 35.861717, 42.275486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455723, 35.836357, 42.226444>,  <36.693424, 35.821140, 42.197021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455723, 35.836357, 42.226444>,  <36.059551, 35.861717, 42.275486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455723, 35.836357, 42.226444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121182, -0.025778, 0.992296,
		-0.066080, -0.997655, -0.017847,
		0.990429, -0.063408, -0.122602,
		36.752850, 35.817337, 42.189663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355534, 35.387253, 42.707077>,  <36.059551, 35.861717, 42.275486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355534, 35.387253, 42.707077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704792, 35.559784, 42.616234>,  <36.914349, 35.663303, 42.561729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704792, 35.559784, 42.616234>,  <36.355534, 35.387253, 42.707077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704792, 35.559784, 42.616234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202750, 0.102336, 0.973868,
		0.443294, -0.896374, 0.001904,
		0.873145, 0.431324, -0.227105,
		36.966736, 35.689182, 42.548103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839653, 35.116806, 43.162697>,  <36.355534, 35.387253, 42.707077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839653, 35.116806, 43.162697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965263, 35.478298, 43.046314>,  <37.040630, 35.695194, 42.976486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965263, 35.478298, 43.046314>,  <36.839653, 35.116806, 43.162697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965263, 35.478298, 43.046314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279814, 0.204749, 0.937967,
		0.907244, -0.375961, -0.188580,
		0.314027, 0.903732, -0.290956,
		37.059471, 35.749416, 42.959026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470829, 35.160145, 43.436554>,  <36.839653, 35.116806, 43.162697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470829, 35.160145, 43.436554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350288, 35.537571, 43.381603>,  <37.277966, 35.764027, 43.348633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350288, 35.537571, 43.381603>,  <37.470829, 35.160145, 43.436554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350288, 35.537571, 43.381603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266370, 0.221641, 0.938042,
		0.915552, 0.246086, -0.318129,
		-0.301350, 0.943566, -0.137374,
		37.259884, 35.820641, 43.340389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939419, 35.498161, 43.812870>,  <37.470829, 35.160145, 43.436554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939419, 35.498161, 43.812870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624485, 35.741470, 43.772655>,  <37.435524, 35.887455, 43.748528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624485, 35.741470, 43.772655>,  <37.939419, 35.498161, 43.812870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624485, 35.741470, 43.772655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028829, 0.199209, 0.979533,
		0.615846, 0.768326, -0.174381,
		-0.787339, 0.608268, -0.100532,
		37.388283, 35.923950, 43.742496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242840, 36.104980, 44.069111>,  <37.939419, 35.498161, 43.812870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242840, 36.104980, 44.069111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859215, 36.217541, 44.056347>,  <37.629040, 36.285076, 44.048687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859215, 36.217541, 44.056347>,  <38.242840, 36.104980, 44.069111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859215, 36.217541, 44.056347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110417, 0.475296, 0.872870,
		0.260796, 0.833610, -0.486908,
		-0.959059, 0.281404, -0.031911,
		37.571499, 36.301964, 44.046772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248989, 36.923302, 44.140041>,  <38.242840, 36.104980, 44.069111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248989, 36.923302, 44.140041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894669, 36.778175, 44.255783>,  <37.682076, 36.691101, 44.325226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894669, 36.778175, 44.255783>,  <38.248989, 36.923302, 44.140041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894669, 36.778175, 44.255783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001037, 0.621964, 0.783045,
		-0.464063, 0.693922, -0.550561,
		-0.885801, -0.362811, 0.289350,
		37.628929, 36.669331, 44.342587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889248, 37.490414, 44.239243>,  <38.248989, 36.923302, 44.140041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889248, 37.490414, 44.239243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726723, 37.198872, 44.459675>,  <37.629208, 37.023949, 44.591934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726723, 37.198872, 44.459675>,  <37.889248, 37.490414, 44.239243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726723, 37.198872, 44.459675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156768, 0.538558, 0.827876,
		-0.900186, 0.422767, -0.104561,
		-0.406311, -0.728851, 0.551079,
		37.604828, 36.980217, 44.625000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285648, 37.721607, 44.614204>,  <37.889248, 37.490414, 44.239243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285648, 37.721607, 44.614204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430290, 37.411907, 44.821964>,  <37.517075, 37.226086, 44.946621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430290, 37.411907, 44.821964>,  <37.285648, 37.721607, 44.614204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430290, 37.411907, 44.821964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076234, 0.530682, 0.844136,
		-0.929210, -0.344838, 0.132872,
		0.361603, -0.774250, 0.519403,
		37.538773, 37.179630, 44.977787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770092, 37.605804, 45.235439>,  <37.285648, 37.721607, 44.614204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770092, 37.605804, 45.235439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117920, 37.448074, 45.354336>,  <37.326618, 37.353436, 45.425674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117920, 37.448074, 45.354336>,  <36.770092, 37.605804, 45.235439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117920, 37.448074, 45.354336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071799, 0.494571, 0.866167,
		-0.488557, -0.774537, 0.401753,
		0.869573, -0.394326, 0.297237,
		37.378792, 37.329777, 45.443508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638012, 37.360008, 45.927406>,  <36.770092, 37.605804, 45.235439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638012, 37.360008, 45.927406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036629, 37.383202, 45.903576>,  <37.275799, 37.397118, 45.889278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036629, 37.383202, 45.903576>,  <36.638012, 37.360008, 45.927406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036629, 37.383202, 45.903576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048064, 0.182855, 0.981964,
		0.067834, -0.981428, 0.179435,
		0.996538, 0.057986, -0.059576,
		37.335590, 37.400597, 45.885704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892433, 37.067272, 46.569820>,  <36.638012, 37.360008, 45.927406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892433, 37.067272, 46.569820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174126, 37.306244, 46.416386>,  <37.343140, 37.449627, 46.324326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174126, 37.306244, 46.416386>,  <36.892433, 37.067272, 46.569820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174126, 37.306244, 46.416386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108611, 0.443263, 0.889787,
		0.701617, -0.668275, 0.247270,
		0.704228, 0.597433, -0.383583,
		37.385395, 37.485474, 46.301311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344326, 37.213913, 47.085217>,  <36.892433, 37.067272, 46.569820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344326, 37.213913, 47.085217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428795, 37.514748, 46.835491>,  <37.479477, 37.695248, 46.685654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428795, 37.514748, 46.835491>,  <37.344326, 37.213913, 47.085217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428795, 37.514748, 46.835491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030325, 0.633374, 0.773252,
		0.976978, -0.182224, 0.110947,
		0.211176, 0.752085, -0.624318,
		37.492149, 37.740372, 46.648197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674500, 37.794117, 47.589939>,  <37.344326, 37.213913, 47.085217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674500, 37.794117, 47.589939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630131, 37.970268, 47.233566>,  <37.603508, 38.075958, 47.019741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630131, 37.970268, 47.233566>,  <37.674500, 37.794117, 47.589939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630131, 37.970268, 47.233566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124209, 0.895581, 0.427207,
		0.986036, -0.063274, -0.154042,
		-0.110926, 0.440375, -0.890935,
		37.596851, 38.102379, 46.966286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268417, 38.198879, 47.395046>,  <37.674500, 37.794117, 47.589939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268417, 38.198879, 47.395046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922977, 38.326561, 47.238941>,  <37.715714, 38.403172, 47.145279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922977, 38.326561, 47.238941>,  <38.268417, 38.198879, 47.395046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922977, 38.326561, 47.238941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014389, 0.758136, 0.651937,
		0.503971, 0.568629, -0.650134,
		-0.863601, 0.319203, -0.390261,
		37.663898, 38.422321, 47.121864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298920, 39.004326, 47.401474>,  <38.268417, 38.198879, 47.395046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298920, 39.004326, 47.401474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911747, 38.936451, 47.327381>,  <37.679443, 38.895725, 47.282925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911747, 38.936451, 47.327381>,  <38.298920, 39.004326, 47.401474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911747, 38.936451, 47.327381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244669, 0.803888, 0.542126,
		0.056913, 0.570062, -0.819628,
		-0.967935, -0.169684, -0.185228,
		37.621368, 38.885548, 47.271812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997360, 39.575272, 47.122852>,  <38.298920, 39.004326, 47.401474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997360, 39.575272, 47.122852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670170, 39.384064, 47.250862>,  <37.473854, 39.269341, 47.327667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670170, 39.384064, 47.250862>,  <37.997360, 39.575272, 47.122852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670170, 39.384064, 47.250862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370905, 0.863497, 0.341764,
		-0.439712, 0.160854, -0.883617,
		-0.817975, -0.478015, 0.320029,
		37.424778, 39.240658, 47.346870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447815, 40.143990, 47.002155>,  <37.997360, 39.575272, 47.122852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447815, 40.143990, 47.002155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297630, 39.858654, 47.238861>,  <37.207520, 39.687454, 47.380882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297630, 39.858654, 47.238861>,  <37.447815, 40.143990, 47.002155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297630, 39.858654, 47.238861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511762, 0.691879, 0.509316,
		-0.772740, -0.111611, -0.624833,
		-0.375464, -0.713335, 0.591760,
		37.184990, 39.644653, 47.416389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806278, 40.262703, 47.167164>,  <37.447815, 40.143990, 47.002155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806278, 40.262703, 47.167164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869709, 40.004414, 47.465935>,  <36.907768, 39.849442, 47.645195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869709, 40.004414, 47.465935>,  <36.806278, 40.262703, 47.167164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869709, 40.004414, 47.465935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662444, 0.491373, 0.565439,
		-0.732135, -0.584460, -0.349835,
		0.158577, -0.645724, 0.746923,
		36.917282, 39.810696, 47.690010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080688, 40.854588, 47.515850>,  <36.806278, 40.262703, 47.167164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080688, 40.854588, 47.515850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158485, 41.102360, 47.211620>,  <37.205162, 41.251022, 47.029083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158485, 41.102360, 47.211620>,  <37.080688, 40.854588, 47.515850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158485, 41.102360, 47.211620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561281, -0.565618, -0.604186,
		-0.804448, 0.544406, 0.237669,
		0.194493, 0.619435, -0.760574,
		37.216835, 41.288189, 46.983448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412739, 41.142616, 47.237869>,  <37.080688, 40.854588, 47.515850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412739, 41.142616, 47.237869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697582, 41.155956, 46.957359>,  <36.868488, 41.163960, 46.789055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697582, 41.155956, 46.957359>,  <36.412739, 41.142616, 47.237869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697582, 41.155956, 46.957359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634328, -0.397506, -0.663036,
		-0.300870, 0.916993, -0.261917,
		0.712113, 0.033346, -0.701272,
		36.911217, 41.165958, 46.746979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005192, 41.345592, 46.711903>,  <36.412739, 41.142616, 47.237869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005192, 41.345592, 46.711903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339821, 41.203495, 46.545078>,  <36.540600, 41.118237, 46.444984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339821, 41.203495, 46.545078>,  <36.005192, 41.345592, 46.711903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339821, 41.203495, 46.545078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541504, -0.420635, -0.727901,
		0.083153, 0.834785, -0.544261,
		0.836576, -0.355246, -0.417062,
		36.590794, 41.096920, 46.419960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118546, 41.599976, 45.974209>,  <36.005192, 41.345592, 46.711903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118546, 41.599976, 45.974209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331947, 41.262539, 45.998642>,  <36.459988, 41.060078, 46.013302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331947, 41.262539, 45.998642>,  <36.118546, 41.599976, 45.974209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331947, 41.262539, 45.998642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590715, -0.423324, -0.686915,
		0.605333, 0.330388, -0.724166,
		0.533505, -0.843588, 0.061087,
		36.492001, 41.009464, 46.016968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405838, 41.486534, 45.341084>,  <36.118546, 41.599976, 45.974209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405838, 41.486534, 45.341084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429493, 41.119881, 45.499214>,  <36.443684, 40.899887, 45.594093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429493, 41.119881, 45.499214>,  <36.405838, 41.486534, 45.341084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429493, 41.119881, 45.499214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215746, -0.398398, -0.891478,
		0.974657, -0.032572, -0.221319,
		0.059136, -0.916634, 0.395329,
		36.447235, 40.844891, 45.617813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752598, 41.163982, 44.848480>,  <36.405838, 41.486534, 45.341084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752598, 41.163982, 44.848480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581699, 40.861549, 45.046791>,  <36.479160, 40.680088, 45.165779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581699, 40.861549, 45.046791>,  <36.752598, 41.163982, 44.848480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581699, 40.861549, 45.046791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279952, -0.410768, -0.867696,
		0.859702, -0.509513, -0.036169,
		-0.427246, -0.756086, 0.495777,
		36.453526, 40.634724, 45.195522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838600, 40.542786, 44.393398>,  <36.752598, 41.163982, 44.848480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838600, 40.542786, 44.393398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558380, 40.431141, 44.656101>,  <36.390247, 40.364155, 44.813725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558380, 40.431141, 44.656101>,  <36.838600, 40.542786, 44.393398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558380, 40.431141, 44.656101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466435, -0.517426, -0.717432,
		0.540067, -0.808930, 0.232294,
		-0.700547, -0.279111, 0.656758,
		36.348217, 40.347408, 44.853130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797596, 39.924107, 44.286098>,  <36.838600, 40.542786, 44.393398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797596, 39.924107, 44.286098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444313, 39.975368, 44.466557>,  <36.232346, 40.006126, 44.574829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444313, 39.975368, 44.466557>,  <36.797596, 39.924107, 44.286098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444313, 39.975368, 44.466557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403633, -0.697544, -0.592041,
		0.238817, -0.704988, 0.667801,
		-0.883203, 0.128157, 0.451141,
		36.179352, 40.013817, 44.601898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487415, 39.236694, 44.346294>,  <36.797596, 39.924107, 44.286098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487415, 39.236694, 44.346294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175266, 39.483471, 44.387081>,  <35.987976, 39.631538, 44.411552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175266, 39.483471, 44.387081>,  <36.487415, 39.236694, 44.346294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175266, 39.483471, 44.387081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530388, -0.566675, -0.630530,
		-0.331220, -0.546131, 0.769438,
		-0.780373, 0.616945, 0.101967,
		35.941154, 39.668556, 44.417671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896114, 38.789665, 44.405128>,  <36.487415, 39.236694, 44.346294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896114, 38.789665, 44.405128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778309, 39.149147, 44.275143>,  <35.707626, 39.364834, 44.197151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778309, 39.149147, 44.275143>,  <35.896114, 38.789665, 44.405128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778309, 39.149147, 44.275143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657997, -0.437299, -0.613033,
		-0.693038, 0.033276, 0.720133,
		-0.294515, 0.898700, -0.324960,
		35.689953, 39.418758, 44.177654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133999, 38.761230, 44.355030>,  <35.896114, 38.789665, 44.405128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133999, 38.761230, 44.355030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246880, 39.083084, 44.146065>,  <35.314610, 39.276196, 44.020683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246880, 39.083084, 44.146065>,  <35.133999, 38.761230, 44.355030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246880, 39.083084, 44.146065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578883, -0.291421, -0.761556,
		-0.765020, 0.517332, 0.383551,
		0.282203, 0.804637, -0.522417,
		35.331539, 39.324474, 43.989338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588600, 38.949287, 43.989532>,  <35.133999, 38.761230, 44.355030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588600, 38.949287, 43.989532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900414, 39.097736, 43.787701>,  <35.087502, 39.186806, 43.666603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900414, 39.097736, 43.787701>,  <34.588600, 38.949287, 43.989532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900414, 39.097736, 43.787701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440497, -0.247881, -0.862854,
		-0.445299, 0.894888, -0.029754,
		0.779533, 0.371122, -0.504576,
		35.134274, 39.209072, 43.636330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307457, 39.245232, 43.375141>,  <34.588600, 38.949287, 43.989532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307457, 39.245232, 43.375141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701794, 39.204090, 43.322178>,  <34.938396, 39.179405, 43.290401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701794, 39.204090, 43.322178>,  <34.307457, 39.245232, 43.375141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701794, 39.204090, 43.322178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162141, -0.383811, -0.909065,
		0.042683, 0.917665, -0.395055,
		0.985844, -0.102856, -0.132409,
		34.997547, 39.173233, 43.282455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479324, 39.503719, 42.655350>,  <34.307457, 39.245232, 43.375141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479324, 39.503719, 42.655350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795418, 39.281036, 42.757797>,  <34.985073, 39.147427, 42.819267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795418, 39.281036, 42.757797>,  <34.479324, 39.503719, 42.655350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795418, 39.281036, 42.757797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033001, -0.378681, -0.924938,
		0.611912, 0.739373, -0.280876,
		0.790237, -0.556711, 0.256120,
		35.032490, 39.114021, 42.834633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922447, 39.637524, 42.060696>,  <34.479324, 39.503719, 42.655350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922447, 39.637524, 42.060696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058220, 39.308228, 42.242714>,  <35.139683, 39.110649, 42.351925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058220, 39.308228, 42.242714>,  <34.922447, 39.637524, 42.060696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058220, 39.308228, 42.242714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079537, -0.456913, -0.885949,
		0.937263, 0.336909, -0.089611,
		0.339429, -0.823239, 0.455044,
		35.160049, 39.061256, 42.379227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491497, 39.450363, 41.691967>,  <34.922447, 39.637524, 42.060696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491497, 39.450363, 41.691967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412186, 39.107487, 41.882088>,  <35.364597, 38.901760, 41.996159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412186, 39.107487, 41.882088>,  <35.491497, 39.450363, 41.691967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412186, 39.107487, 41.882088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195958, -0.509804, -0.837676,
		0.960357, -0.072955, 0.269057,
		-0.198279, -0.857192, 0.475298,
		35.352703, 38.850330, 42.024677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073067, 38.936199, 41.632271>,  <35.491497, 39.450363, 41.691967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073067, 38.936199, 41.632271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734226, 38.738960, 41.711548>,  <35.530922, 38.620617, 41.759113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734226, 38.738960, 41.711548>,  <36.073067, 38.936199, 41.632271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734226, 38.738960, 41.711548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155792, -0.586968, -0.794479,
		0.508084, -0.642128, 0.574041,
		-0.847101, -0.493094, 0.198191,
		35.480095, 38.591034, 41.771004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275803, 38.275013, 41.687214>,  <36.073067, 38.936199, 41.632271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275803, 38.275013, 41.687214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877895, 38.252235, 41.653301>,  <35.639149, 38.238571, 41.632954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877895, 38.252235, 41.653301>,  <36.275803, 38.275013, 41.687214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877895, 38.252235, 41.653301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102087, -0.530858, -0.841290,
		0.002897, -0.845546, 0.533895,
		-0.994771, -0.056941, -0.084782,
		35.579464, 38.235153, 41.627869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159748, 37.583969, 41.670288>,  <36.275803, 38.275013, 41.687214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159748, 37.583969, 41.670288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851460, 37.769043, 41.495060>,  <35.666485, 37.880089, 41.389923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851460, 37.769043, 41.495060>,  <36.159748, 37.583969, 41.670288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851460, 37.769043, 41.495060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079618, -0.612198, -0.786686,
		-0.632185, -0.641190, 0.434992,
		-0.770716, 0.462697, -0.438072,
		35.620243, 37.907848, 41.363640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918468, 37.120823, 41.191910>,  <36.159748, 37.583969, 41.670288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918468, 37.120823, 41.191910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737362, 37.459236, 41.079315>,  <35.628696, 37.662285, 41.011757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737362, 37.459236, 41.079315>,  <35.918468, 37.120823, 41.191910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737362, 37.459236, 41.079315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038471, -0.333944, -0.941808,
		-0.890798, -0.415591, 0.183746,
		-0.452768, 0.846029, -0.281488,
		35.601532, 37.713043, 40.994869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297565, 36.957497, 40.743767>,  <35.918468, 37.120823, 41.191910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297565, 36.957497, 40.743767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419407, 37.334034, 40.685677>,  <35.492512, 37.559956, 40.650822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419407, 37.334034, 40.685677>,  <35.297565, 36.957497, 40.743767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419407, 37.334034, 40.685677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365971, -0.256434, -0.894599,
		-0.879366, 0.219346, -0.422614,
		0.304600, 0.941344, -0.145225,
		35.510788, 37.616436, 40.642109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079960, 37.081573, 40.086384>,  <35.297565, 36.957497, 40.743767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079960, 37.081573, 40.086384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380917, 37.337662, 40.148380>,  <35.561489, 37.491314, 40.185577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380917, 37.337662, 40.148380>,  <35.079960, 37.081573, 40.086384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380917, 37.337662, 40.148380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468248, -0.354320, -0.809445,
		-0.463309, 0.681593, -0.566370,
		0.752388, 0.640225, 0.154995,
		35.606632, 37.529728, 40.194878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150536, 37.450344, 39.480686>,  <35.079960, 37.081573, 40.086384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150536, 37.450344, 39.480686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495155, 37.474728, 39.682285>,  <35.701927, 37.489357, 39.803246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495155, 37.474728, 39.682285>,  <35.150536, 37.450344, 39.480686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495155, 37.474728, 39.682285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507670, -0.106864, -0.854898,
		0.001743, 0.992403, -0.123017,
		0.861550, 0.060962, 0.504000,
		35.753620, 37.493015, 39.833485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571770, 37.742126, 38.950401>,  <35.150536, 37.450344, 39.480686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571770, 37.742126, 38.950401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848480, 37.616585, 39.210537>,  <36.014507, 37.541260, 39.366619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848480, 37.616585, 39.210537>,  <35.571770, 37.742126, 38.950401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848480, 37.616585, 39.210537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629552, -0.179020, -0.756053,
		0.353714, 0.932442, 0.073746,
		0.691774, -0.313853, 0.650342,
		36.056011, 37.522430, 39.405640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259579, 38.073074, 38.857098>,  <35.571770, 37.742126, 38.950401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259579, 38.073074, 38.857098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345497, 37.752666, 39.080608>,  <36.397049, 37.560421, 39.214714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345497, 37.752666, 39.080608>,  <36.259579, 38.073074, 38.857098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345497, 37.752666, 39.080608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707498, -0.266796, -0.654420,
		0.673282, 0.535903, 0.509411,
		0.214797, -0.801017, 0.558779,
		36.409935, 37.512360, 39.248241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915359, 38.055344, 38.944557>,  <36.259579, 38.073074, 38.857098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915359, 38.055344, 38.944557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851688, 37.664501, 39.001015>,  <36.813488, 37.429996, 39.034889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851688, 37.664501, 39.001015>,  <36.915359, 38.055344, 38.944557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851688, 37.664501, 39.001015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806382, -0.211159, -0.552413,
		0.569572, 0.025886, 0.821534,
		-0.159175, -0.977109, 0.141145,
		36.803936, 37.371368, 39.043358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598942, 37.812775, 39.004864>,  <36.915359, 38.055344, 38.944557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598942, 37.812775, 39.004864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365810, 37.492691, 38.948318>,  <37.225933, 37.300640, 38.914391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365810, 37.492691, 38.948318>,  <37.598942, 37.812775, 39.004864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365810, 37.492691, 38.948318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763953, -0.480292, -0.430923,
		0.276931, -0.359149, 0.891247,
		-0.582825, -0.800207, -0.141365,
		37.190964, 37.252628, 38.905910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951385, 37.246025, 39.307560>,  <37.598942, 37.812775, 39.004864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951385, 37.246025, 39.307560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696407, 37.088554, 39.042625>,  <37.543419, 36.994072, 38.883667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696407, 37.088554, 39.042625>,  <37.951385, 37.246025, 39.307560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696407, 37.088554, 39.042625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747053, -0.526218, -0.406211,
		-0.188616, -0.753734, 0.629532,
		-0.637445, -0.393676, -0.662332,
		37.505173, 36.970451, 38.843925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205151, 36.582863, 39.288727>,  <37.951385, 37.246025, 39.307560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205151, 36.582863, 39.288727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984287, 36.620419, 38.957352>,  <37.851768, 36.642952, 38.758526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984287, 36.620419, 38.957352>,  <38.205151, 36.582863, 39.288727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984287, 36.620419, 38.957352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706530, -0.474842, -0.524729,
		-0.442643, -0.875048, 0.195852,
		-0.552162, 0.093892, -0.828433,
		37.818638, 36.648586, 38.708820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014809, 35.914482, 38.969975>,  <38.205151, 36.582863, 39.288727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014809, 35.914482, 38.969975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004898, 36.186569, 38.676941>,  <37.998951, 36.349823, 38.501122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004898, 36.186569, 38.676941>,  <38.014809, 35.914482, 38.969975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004898, 36.186569, 38.676941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689005, -0.519345, -0.505521,
		-0.724333, -0.517281, -0.455810,
		-0.024774, 0.680221, -0.732588,
		37.997467, 36.390636, 38.457165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037598, 35.528290, 38.468815>,  <38.014809, 35.914482, 38.969975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037598, 35.528290, 38.468815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130089, 35.884258, 38.311550>,  <38.185581, 36.097839, 38.217190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130089, 35.884258, 38.311550>,  <38.037598, 35.528290, 38.468815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130089, 35.884258, 38.311550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681551, -0.436548, -0.587294,
		-0.694279, -0.132161, -0.707468,
		0.231226, 0.889921, -0.393161,
		38.199455, 36.151234, 38.193604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927879, 35.477840, 37.701084>,  <38.037598, 35.528290, 38.468815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927879, 35.477840, 37.701084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160519, 35.795811, 37.770184>,  <38.300102, 35.986591, 37.811642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160519, 35.795811, 37.770184>,  <37.927879, 35.477840, 37.701084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160519, 35.795811, 37.770184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663095, -0.340256, -0.666731,
		-0.471222, 0.502317, -0.725001,
		0.581597, 0.794923, 0.172748,
		38.334999, 36.034286, 37.822006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174782, 35.774117, 36.979912>,  <37.927879, 35.477840, 37.701084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174782, 35.774117, 36.979912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424038, 35.923512, 37.254780>,  <38.573593, 36.013149, 37.419701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424038, 35.923512, 37.254780>,  <38.174782, 35.774117, 36.979912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424038, 35.923512, 37.254780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759485, -0.079152, -0.645692,
		-0.186764, 0.924254, -0.332978,
		0.623139, 0.373484, 0.687174,
		38.610981, 36.035557, 37.460934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444862, 36.300053, 36.661198>,  <38.174782, 35.774117, 36.979912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444862, 36.300053, 36.661198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713608, 36.228222, 36.948627>,  <38.874855, 36.185123, 37.121086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713608, 36.228222, 36.948627>,  <38.444862, 36.300053, 36.661198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713608, 36.228222, 36.948627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722816, -0.052776, -0.689022,
		0.161657, 0.982327, 0.094344,
		0.671866, -0.179579, 0.718573,
		38.915169, 36.174347, 37.164200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938263, 36.843300, 36.575874>,  <38.444862, 36.300053, 36.661198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938263, 36.843300, 36.575874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110428, 36.566936, 36.808216>,  <39.213726, 36.401119, 36.947620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110428, 36.566936, 36.808216>,  <38.938263, 36.843300, 36.575874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110428, 36.566936, 36.808216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828023, 0.046040, -0.558800,
		0.359335, 0.721479, 0.591901,
		0.430414, -0.690904, 0.580858,
		39.239552, 36.359665, 36.982475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481979, 37.081333, 36.814579>,  <38.938263, 36.843300, 36.575874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481979, 37.081333, 36.814579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550900, 36.687820, 36.834549>,  <39.592251, 36.451714, 36.846531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550900, 36.687820, 36.834549>,  <39.481979, 37.081333, 36.814579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550900, 36.687820, 36.834549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914306, 0.140861, -0.379740,
		0.366547, 0.111074, 0.923745,
		0.172299, -0.983779, 0.049923,
		39.602589, 36.392685, 36.849525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229439, 37.027760, 37.183720>,  <39.481979, 37.081333, 36.814579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229439, 37.027760, 37.183720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131092, 36.699440, 36.977482>,  <40.072083, 36.502449, 36.853741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131092, 36.699440, 36.977482>,  <40.229439, 37.027760, 37.183720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131092, 36.699440, 36.977482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922651, -0.035142, -0.384031,
		0.297095, -0.570133, 0.765953,
		-0.245866, -0.820801, -0.515593,
		40.057331, 36.453201, 36.822803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798851, 36.838825, 36.883102>,  <40.229439, 37.027760, 37.183720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798851, 36.838825, 36.883102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585663, 36.536743, 36.730465>,  <40.457752, 36.355495, 36.638882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585663, 36.536743, 36.730465>,  <40.798851, 36.838825, 36.883102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585663, 36.536743, 36.730465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765946, -0.238971, -0.596841,
		0.359546, -0.610377, 0.705808,
		-0.532966, -0.755203, -0.381595,
		40.425774, 36.310181, 36.615986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215916, 36.204479, 37.083637>,  <40.798851, 36.838825, 36.883102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215916, 36.204479, 37.083637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981804, 36.181030, 36.760155>,  <40.841335, 36.166962, 36.566063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981804, 36.181030, 36.760155>,  <41.215916, 36.204479, 37.083637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981804, 36.181030, 36.760155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782744, -0.301081, -0.544666,
		-0.211557, -0.951795, 0.222105,
		-0.585282, -0.058623, -0.808708,
		40.806221, 36.163445, 36.517544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454563, 35.674866, 36.678280>,  <41.215916, 36.204479, 37.083637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454563, 35.674866, 36.678280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267029, 35.874695, 36.386906>,  <41.154507, 35.994591, 36.212082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267029, 35.874695, 36.386906>,  <41.454563, 35.674866, 36.678280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267029, 35.874695, 36.386906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795278, -0.120104, -0.594230,
		-0.384348, -0.857906, -0.340988,
		-0.468839, 0.499571, -0.728436,
		41.126377, 36.024567, 36.168373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403034, 35.287731, 35.939091>,  <41.454563, 35.674866, 36.678280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403034, 35.287731, 35.939091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402077, 35.685272, 35.894806>,  <41.401505, 35.923798, 35.868233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402077, 35.685272, 35.894806>,  <41.403034, 35.287731, 35.939091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402077, 35.685272, 35.894806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730902, -0.073824, -0.678478,
		-0.682478, -0.082543, -0.726230,
		-0.002390, 0.993849, -0.110714,
		41.401360, 35.983429, 35.861591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478310, 35.522144, 35.262997>,  <41.403034, 35.287731, 35.939091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478310, 35.522144, 35.262997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654278, 35.788898, 35.503571>,  <41.759857, 35.948952, 35.647915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654278, 35.788898, 35.503571>,  <41.478310, 35.522144, 35.262997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654278, 35.788898, 35.503571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872420, -0.158550, -0.462326,
		-0.212962, 0.728095, -0.651556,
		0.439921, 0.666888, 0.601439,
		41.786255, 35.988964, 35.684002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925457, 36.093716, 34.964821>,  <41.478310, 35.522144, 35.262997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925457, 36.093716, 34.964821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076832, 35.989330, 35.320053>,  <42.167656, 35.926701, 35.533192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076832, 35.989330, 35.320053>,  <41.925457, 36.093716, 34.964821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076832, 35.989330, 35.320053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873733, -0.216021, -0.435804,
		0.305573, 0.940868, 0.146261,
		0.378439, -0.260963, 0.888078,
		42.190365, 35.911041, 35.586475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609337, 36.434711, 34.999939>,  <41.925457, 36.093716, 34.964821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609337, 36.434711, 34.999939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624325, 36.135330, 35.264790>,  <42.633320, 35.955700, 35.423698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624325, 36.135330, 35.264790>,  <42.609337, 36.434711, 34.999939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624325, 36.135330, 35.264790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944345, -0.190173, -0.268413,
		0.326814, 0.635334, 0.699674,
		0.037473, -0.748455, 0.662126,
		42.635567, 35.910793, 35.463428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206131, 36.545383, 35.483414>,  <42.609337, 36.434711, 34.999939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206131, 36.545383, 35.483414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108566, 36.157471, 35.485714>,  <43.050030, 35.924725, 35.487095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108566, 36.157471, 35.485714>,  <43.206131, 36.545383, 35.483414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108566, 36.157471, 35.485714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967931, -0.243803, -0.060580,
		0.060152, -0.009210, 0.998147,
		-0.243909, -0.969781, 0.005751,
		43.035393, 35.866535, 35.487438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563904, 37.087997, 35.090679>,  <43.206131, 36.545383, 35.483414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563904, 37.087997, 35.090679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515587, 37.076031, 34.693787>,  <43.486599, 37.068851, 34.455650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515587, 37.076031, 34.693787>,  <43.563904, 37.087997, 35.090679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515587, 37.076031, 34.693787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989080, 0.081403, -0.122859,
		0.084446, -0.996232, 0.019754,
		-0.120788, -0.029913, -0.992228,
		43.479351, 37.067059, 34.396118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031895, 36.585018, 34.663273>,  <43.563904, 37.087997, 35.090679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031895, 36.585018, 34.663273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904045, 36.814541, 34.361656>,  <43.827335, 36.952255, 34.180687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904045, 36.814541, 34.361656>,  <44.031895, 36.585018, 34.663273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904045, 36.814541, 34.361656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821726, -0.228394, -0.522113,
		-0.471814, -0.786496, -0.398516,
		-0.319621, 0.573811, -0.754045,
		43.808159, 36.986683, 34.135445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315884, 35.982143, 35.122150>,  <44.031895, 36.585018, 34.663273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315884, 35.982143, 35.122150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607059, 35.857067, 34.878075>,  <44.781765, 35.782021, 34.731628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607059, 35.857067, 34.878075>,  <44.315884, 35.982143, 35.122150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607059, 35.857067, 34.878075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418040, -0.907810, -0.033511,
		-0.543457, 0.279477, -0.791547,
		0.727940, -0.312686, -0.610188,
		44.825443, 35.763260, 34.695019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931850, 35.515518, 34.840054>,  <44.315884, 35.982143, 35.122150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931850, 35.515518, 34.840054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317429, 35.436634, 34.768600>,  <44.548775, 35.389305, 34.725727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317429, 35.436634, 34.768600>,  <43.931850, 35.515518, 34.840054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317429, 35.436634, 34.768600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213942, -0.973595, -0.079639,
		-0.158212, 0.114985, -0.980687,
		0.963949, -0.197210, -0.178635,
		44.606613, 35.377472, 34.715012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036617, 34.981544, 34.273022>,  <43.931850, 35.515518, 34.840054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036617, 34.981544, 34.273022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379601, 34.967945, 34.478397>,  <44.585388, 34.959785, 34.601624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379601, 34.967945, 34.478397>,  <44.036617, 34.981544, 34.273022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379601, 34.967945, 34.478397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031165, -0.999414, -0.014123,
		0.513615, -0.003891, -0.858012,
		0.857454, -0.033994, 0.513436,
		44.636837, 34.957748, 34.632427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461319, 34.440765, 33.932697>,  <44.036617, 34.981544, 34.273022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461319, 34.440765, 33.932697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613480, 34.479282, 34.300617>,  <44.704777, 34.502392, 34.521370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613480, 34.479282, 34.300617>,  <44.461319, 34.440765, 33.932697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613480, 34.479282, 34.300617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070615, -0.988637, 0.132706,
		0.922123, -0.115433, -0.369276,
		0.380398, 0.096295, 0.919796,
		44.727600, 34.508171, 34.576557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106007, 34.007053, 33.950748>,  <44.461319, 34.440765, 33.932697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106007, 34.007053, 33.950748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964760, 34.064812, 34.320496>,  <44.880013, 34.099468, 34.542343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964760, 34.064812, 34.320496>,  <45.106007, 34.007053, 33.950748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964760, 34.064812, 34.320496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018637, -0.988907, 0.147359,
		0.935393, 0.034808, 0.351892,
		-0.353117, 0.144397, 0.924369,
		44.858826, 34.108131, 34.597805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594128, 33.800037, 34.375530>,  <45.106007, 34.007053, 33.950748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594128, 33.800037, 34.375530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273777, 33.789650, 34.614838>,  <45.081566, 33.783417, 34.758423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273777, 33.789650, 34.614838>,  <45.594128, 33.800037, 34.375530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273777, 33.789650, 34.614838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036507, -0.999318, 0.005491,
		0.597718, 0.026238, 0.801277,
		-0.800875, -0.025970, 0.598268,
		45.033516, 33.781860, 34.794319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.772335, 33.514965, 34.897427>,  <45.594128, 33.800037, 34.375530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.772335, 33.514965, 34.897427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377300, 33.491940, 34.955887>,  <45.140278, 33.478127, 34.990963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377300, 33.491940, 34.955887>,  <45.772335, 33.514965, 34.897427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377300, 33.491940, 34.955887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052465, -0.997880, -0.038497,
		0.148053, -0.030352, 0.988514,
		-0.987587, -0.057562, 0.146146,
		45.081024, 33.474670, 34.999729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765156, 32.890217, 35.281002>,  <45.772335, 33.514965, 34.897427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765156, 32.890217, 35.281002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383202, 32.933128, 35.170231>,  <45.154030, 32.958878, 35.103767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383202, 32.933128, 35.170231>,  <45.765156, 32.890217, 35.281002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383202, 32.933128, 35.170231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061836, -0.983859, -0.167924,
		-0.290469, -0.143224, 0.946105,
		-0.954884, 0.107280, -0.276924,
		45.096737, 32.965313, 35.087154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307384, 32.463921, 35.797153>,  <45.765156, 32.890217, 35.281002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307384, 32.463921, 35.797153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103405, 32.521034, 35.457844>,  <44.981018, 32.555302, 35.254257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103405, 32.521034, 35.457844>,  <45.307384, 32.463921, 35.797153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103405, 32.521034, 35.457844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081077, -0.989716, -0.117853,
		-0.856375, 0.008676, 0.516282,
		-0.509950, 0.142785, -0.848271,
		44.950420, 32.563869, 35.203362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801392, 31.981630, 35.871929>,  <45.307384, 32.463921, 35.797153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801392, 31.981630, 35.871929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812355, 32.097008, 35.489086>,  <44.818932, 32.166233, 35.259380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812355, 32.097008, 35.489086>,  <44.801392, 31.981630, 35.871929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812355, 32.097008, 35.489086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051123, -0.956616, -0.286833,
		-0.998316, -0.041070, -0.040961,
		0.027404, 0.288444, -0.957105,
		44.820576, 32.183540, 35.201954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376743, 31.408991, 35.633923>,  <44.801392, 31.981630, 35.871929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376743, 31.408991, 35.633923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561028, 31.556957, 35.311207>,  <44.671597, 31.645737, 35.117577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561028, 31.556957, 35.311207>,  <44.376743, 31.408991, 35.633923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561028, 31.556957, 35.311207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003580, -0.909773, -0.415090,
		-0.887544, 0.188348, -0.420465,
		0.460709, 0.369916, -0.806789,
		44.699242, 31.667933, 35.069172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900780, 31.402405, 35.061501>,  <44.376743, 31.408991, 35.633923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900780, 31.402405, 35.061501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260689, 31.397549, 34.887024>,  <44.476635, 31.394634, 34.782337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260689, 31.397549, 34.887024>,  <43.900780, 31.402405, 35.061501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260689, 31.397549, 34.887024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277600, -0.787169, -0.550729,
		-0.336667, 0.616617, -0.711645,
		0.899774, -0.012140, -0.436187,
		44.530621, 31.393908, 34.756168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757645, 31.360571, 34.311646>,  <43.900780, 31.402405, 35.061501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757645, 31.360571, 34.311646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132862, 31.236084, 34.372585>,  <44.357994, 31.161392, 34.409149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132862, 31.236084, 34.372585>,  <43.757645, 31.360571, 34.311646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132862, 31.236084, 34.372585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187916, -0.826312, -0.530939,
		0.291125, 0.469417, -0.833603,
		0.938048, -0.311217, 0.152349,
		44.414276, 31.142719, 34.418289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969799, 31.233477, 33.668961>,  <43.757645, 31.360571, 34.311646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969799, 31.233477, 33.668961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217617, 31.015993, 33.895428>,  <44.366306, 30.885502, 34.031307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217617, 31.015993, 33.895428>,  <43.969799, 31.233477, 33.668961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217617, 31.015993, 33.895428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151983, -0.790705, -0.593032,
		0.770108, 0.281362, -0.572511,
		0.619544, -0.543710, 0.566166,
		44.403481, 30.852880, 34.065277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324207, 30.742649, 33.192680>,  <43.969799, 31.233477, 33.668961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324207, 30.742649, 33.192680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392452, 30.580662, 33.551991>,  <44.433399, 30.483469, 33.767574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392452, 30.580662, 33.551991>,  <44.324207, 30.742649, 33.192680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392452, 30.580662, 33.551991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153537, -0.911429, -0.381737,
		0.973303, -0.072791, -0.217675,
		0.170608, -0.404967, 0.898273,
		44.443634, 30.459171, 33.821472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765751, 30.281637, 33.086483>,  <44.324207, 30.742649, 33.192680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765751, 30.281637, 33.086483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655754, 30.110178, 33.430725>,  <44.589756, 30.007301, 33.637272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655754, 30.110178, 33.430725>,  <44.765751, 30.281637, 33.086483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655754, 30.110178, 33.430725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071291, -0.901741, -0.426358,
		0.958801, -0.055889, 0.278526,
		-0.274987, -0.428649, 0.860606,
		44.573257, 29.981583, 33.688908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253632, 29.719749, 33.172077>,  <44.765751, 30.281637, 33.086483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253632, 29.719749, 33.172077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931141, 29.663614, 33.401966>,  <44.737648, 29.629932, 33.539898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931141, 29.663614, 33.401966>,  <45.253632, 29.719749, 33.172077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931141, 29.663614, 33.401966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115949, -0.915134, -0.386116,
		0.580132, -0.377935, 0.721535,
		-0.806228, -0.140337, 0.574719,
		44.689274, 29.621513, 33.574383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206383, 28.986315, 33.399097>,  <45.253632, 29.719749, 33.172077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206383, 28.986315, 33.399097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826672, 29.102049, 33.448338>,  <44.598846, 29.171490, 33.477882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826672, 29.102049, 33.448338>,  <45.206383, 28.986315, 33.399097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826672, 29.102049, 33.448338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314192, -0.888187, -0.335272,
		0.012335, -0.356945, 0.934044,
		-0.949279, 0.289334, 0.123105,
		44.541889, 29.188848, 33.485268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839375, 28.558815, 33.890820>,  <45.206383, 28.986315, 33.399097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839375, 28.558815, 33.890820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544788, 28.720631, 33.673946>,  <44.368034, 28.817720, 33.543823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544788, 28.720631, 33.673946>,  <44.839375, 28.558815, 33.890820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544788, 28.720631, 33.673946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244119, -0.906412, -0.344709,
		-0.630888, -0.121511, 0.766300,
		-0.736469, 0.404541, -0.542181,
		44.323849, 28.841993, 33.511292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345657, 28.082876, 33.872288>,  <44.839375, 28.558815, 33.890820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345657, 28.082876, 33.872288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202030, 28.321890, 33.585506>,  <44.115856, 28.465298, 33.413437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202030, 28.321890, 33.585506>,  <44.345657, 28.082876, 33.872288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202030, 28.321890, 33.585506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244459, -0.801576, -0.545633,
		-0.900730, -0.020650, 0.433889,
		-0.359063, 0.597536, -0.716955,
		44.094311, 28.501150, 33.370419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635090, 27.943289, 33.736126>,  <44.345657, 28.082876, 33.872288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635090, 27.943289, 33.736126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805893, 28.088499, 33.404854>,  <43.908375, 28.175625, 33.206089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805893, 28.088499, 33.404854>,  <43.635090, 27.943289, 33.736126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805893, 28.088499, 33.404854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228249, -0.842946, -0.487181,
		-0.874969, 0.397059, -0.277081,
		0.427004, 0.363024, -0.828179,
		43.933994, 28.197407, 33.156399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150017, 27.860552, 33.268692>,  <43.635090, 27.943289, 33.736126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150017, 27.860552, 33.268692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518719, 27.820307, 33.118896>,  <43.739941, 27.796160, 33.029018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518719, 27.820307, 33.118896>,  <43.150017, 27.860552, 33.268692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518719, 27.820307, 33.118896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271333, -0.857296, -0.437517,
		-0.277031, 0.504896, -0.817517,
		0.921755, -0.100614, -0.374492,
		43.795246, 27.790123, 33.006550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819996, 28.186705, 32.619694>,  <43.150017, 27.860552, 33.268692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819996, 28.186705, 32.619694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440914, 28.175886, 32.492489>,  <42.213467, 28.169395, 32.416164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440914, 28.175886, 32.492489>,  <42.819996, 28.186705, 32.619694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440914, 28.175886, 32.492489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193839, -0.840364, -0.506177,
		-0.253556, -0.541348, 0.801656,
		-0.947700, -0.027048, -0.318014,
		42.156605, 28.167772, 32.397083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280952, 27.656256, 32.661041>,  <42.819996, 28.186705, 32.619694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280952, 27.656256, 32.661041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049873, 27.967438, 32.759876>,  <41.911228, 28.154146, 32.819180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049873, 27.967438, 32.759876>,  <42.280952, 27.656256, 32.661041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049873, 27.967438, 32.759876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588048, -0.186714, -0.786980,
		-0.566100, -0.599936, 0.565338,
		-0.577694, 0.777956, 0.247092,
		41.876564, 28.200825, 32.834003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591293, 27.439054, 32.442101>,  <42.280952, 27.656256, 32.661041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591293, 27.439054, 32.442101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577644, 27.833508, 32.507069>,  <41.569454, 28.070179, 32.546051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577644, 27.833508, 32.507069>,  <41.591293, 27.439054, 32.442101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577644, 27.833508, 32.507069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758714, 0.080222, -0.646466,
		-0.650530, -0.145294, 0.745453,
		-0.034126, 0.986131, 0.162423,
		41.567406, 28.129347, 32.555794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878807, 27.656794, 32.585598>,  <41.591293, 27.439054, 32.442101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878807, 27.656794, 32.585598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035839, 27.998260, 32.448704>,  <41.130058, 28.203140, 32.366566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035839, 27.998260, 32.448704>,  <40.878807, 27.656794, 32.585598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035839, 27.998260, 32.448704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678242, 0.017394, -0.734633,
		-0.621180, 0.520525, 0.585823,
		0.392585, 0.853669, -0.342237,
		41.153614, 28.254362, 32.346031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293957, 28.104773, 32.266579>,  <40.878807, 27.656794, 32.585598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293957, 28.104773, 32.266579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659332, 28.203962, 32.137497>,  <40.878559, 28.263477, 32.060047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659332, 28.203962, 32.137497>,  <40.293957, 28.104773, 32.266579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659332, 28.203962, 32.137497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281826, -0.186629, -0.941140,
		-0.293606, 0.950620, -0.100589,
		0.913438, 0.247976, -0.322704,
		40.933365, 28.278355, 32.040684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203037, 28.581415, 31.716270>,  <40.293957, 28.104773, 32.266579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203037, 28.581415, 31.716270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523666, 28.344187, 31.685949>,  <40.716045, 28.201851, 31.667757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523666, 28.344187, 31.685949>,  <40.203037, 28.581415, 31.716270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523666, 28.344187, 31.685949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351718, -0.365206, -0.861927,
		0.483499, 0.717560, -0.501334,
		0.801575, -0.593070, -0.075802,
		40.764137, 28.166265, 31.663208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649860, 28.890377, 31.270782>,  <40.203037, 28.581415, 31.716270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649860, 28.890377, 31.270782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661175, 28.490774, 31.284529>,  <40.667965, 28.251013, 31.292776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661175, 28.490774, 31.284529>,  <40.649860, 28.890377, 31.270782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661175, 28.490774, 31.284529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603348, -0.044474, -0.796237,
		0.796976, 0.001791, -0.604008,
		0.028289, -0.999009, 0.034364,
		40.669662, 28.191071, 31.294838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822826, 28.852959, 31.105829>,  <40.649860, 28.890377, 31.270782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822826, 28.852959, 31.105829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586292, 29.171286, 31.053671>,  <39.444374, 29.362282, 31.022375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586292, 29.171286, 31.053671>,  <39.822826, 28.852959, 31.105829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586292, 29.171286, 31.053671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714286, 0.591933, 0.373378,
		0.374326, 0.127649, -0.918469,
		-0.591333, 0.795815, -0.130398,
		39.408894, 29.410030, 31.014551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286591, 29.423712, 30.877934>,  <39.822826, 28.852959, 31.105829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286591, 29.423712, 30.877934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962471, 29.604446, 31.027206>,  <39.768002, 29.712887, 31.116770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962471, 29.604446, 31.027206>,  <40.286591, 29.423712, 30.877934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962471, 29.604446, 31.027206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580052, 0.709049, 0.400984,
		-0.083425, 0.541381, -0.836628,
		-0.810296, 0.451836, 0.373182,
		39.719383, 29.739998, 31.139160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194721, 30.014202, 30.552553>,  <40.286591, 29.423712, 30.877934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194721, 30.014202, 30.552553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041321, 30.047777, 30.920441>,  <39.949280, 30.067923, 31.141172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041321, 30.047777, 30.920441>,  <40.194721, 30.014202, 30.552553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041321, 30.047777, 30.920441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662979, 0.718320, 0.210893,
		-0.642949, 0.690631, -0.331128,
		-0.383505, 0.083937, 0.919716,
		39.926270, 30.072958, 31.196356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381847, 30.799232, 30.706062>,  <40.194721, 30.014202, 30.552553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381847, 30.799232, 30.706062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243778, 30.642874, 31.047367>,  <40.160938, 30.549059, 31.252150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243778, 30.642874, 31.047367>,  <40.381847, 30.799232, 30.706062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243778, 30.642874, 31.047367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465479, 0.718144, 0.517298,
		-0.814975, 0.575733, -0.065930,
		-0.345173, -0.390896, 0.853262,
		40.140224, 30.525604, 31.303345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114231, 31.338205, 31.056978>,  <40.381847, 30.799232, 30.706062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114231, 31.338205, 31.056978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230331, 31.062553, 31.322567>,  <40.299992, 30.897163, 31.481920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230331, 31.062553, 31.322567>,  <40.114231, 31.338205, 31.056978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230331, 31.062553, 31.322567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603664, 0.670223, 0.431731,
		-0.742526, 0.275506, 0.610534,
		0.290250, -0.689128, 0.663971,
		40.317406, 30.855814, 31.521759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242405, 31.714664, 31.717323>,  <40.114231, 31.338205, 31.056978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242405, 31.714664, 31.717323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447170, 31.372778, 31.751755>,  <40.570030, 31.167646, 31.772413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447170, 31.372778, 31.751755>,  <40.242405, 31.714664, 31.717323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447170, 31.372778, 31.751755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698217, 0.472356, 0.537934,
		-0.500441, -0.215270, 0.838580,
		0.511910, -0.854716, 0.086081,
		40.600742, 31.116364, 31.777578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668694, 31.817343, 32.346722>,  <40.242405, 31.714664, 31.717323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668694, 31.817343, 32.346722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828232, 31.500784, 32.161415>,  <40.923954, 31.310848, 32.050232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828232, 31.500784, 32.161415>,  <40.668694, 31.817343, 32.346722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828232, 31.500784, 32.161415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916906, 0.352011, 0.188075,
		0.014232, -0.499782, 0.866034,
		0.398850, -0.791395, -0.463263,
		40.947887, 31.263365, 32.022438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194584, 31.672958, 32.786949>,  <40.668694, 31.817343, 32.346722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194584, 31.672958, 32.786949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311180, 31.457602, 32.470680>,  <41.381138, 31.328388, 32.280918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311180, 31.457602, 32.470680>,  <41.194584, 31.672958, 32.786949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311180, 31.457602, 32.470680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944079, 0.295076, 0.147121,
		0.154101, -0.789345, 0.594296,
		0.291492, -0.538391, -0.790676,
		41.398628, 31.296085, 32.233479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746181, 31.178242, 33.031857>,  <41.194584, 31.672958, 32.786949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746181, 31.178242, 33.031857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767292, 31.277912, 32.645050>,  <41.779961, 31.337713, 32.412964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767292, 31.277912, 32.645050>,  <41.746181, 31.178242, 33.031857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767292, 31.277912, 32.645050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946666, 0.295755, 0.127875,
		0.317865, -0.922193, -0.220276,
		0.052778, 0.249175, -0.967019,
		41.783127, 31.352665, 32.354946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390179, 30.917347, 32.740440>,  <41.746181, 31.178242, 33.031857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390179, 30.917347, 32.740440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281105, 31.218746, 32.501144>,  <42.215660, 31.399586, 32.357567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281105, 31.218746, 32.501144>,  <42.390179, 30.917347, 32.740440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281105, 31.218746, 32.501144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890739, 0.432728, 0.139031,
		0.363634, -0.494961, -0.789167,
		-0.272680, 0.753498, -0.598236,
		42.199303, 31.444796, 32.321674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943035, 30.982187, 32.258678>,  <42.390179, 30.917347, 32.740440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943035, 30.982187, 32.258678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745991, 31.329107, 32.230045>,  <42.627766, 31.537260, 32.212864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745991, 31.329107, 32.230045>,  <42.943035, 30.982187, 32.258678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745991, 31.329107, 32.230045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870179, 0.491945, -0.027891,
		0.011026, -0.076030, -0.997045,
		-0.492611, 0.867300, -0.071584,
		42.598206, 31.589298, 32.208569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377266, 31.435751, 31.815672>,  <42.943035, 30.982187, 32.258678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377266, 31.435751, 31.815672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125999, 31.706211, 31.969677>,  <42.975239, 31.868486, 32.062080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125999, 31.706211, 31.969677>,  <43.377266, 31.435751, 31.815672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125999, 31.706211, 31.969677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720052, 0.692669, -0.041651,
		-0.294848, 0.251065, -0.921971,
		-0.628164, 0.676148, 0.385012,
		42.937550, 31.909056, 32.085182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412525, 31.946751, 31.366489>,  <43.377266, 31.435751, 31.815672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412525, 31.946751, 31.366489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299221, 32.100967, 31.717743>,  <43.231239, 32.193497, 31.928495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299221, 32.100967, 31.717743>,  <43.412525, 31.946751, 31.366489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299221, 32.100967, 31.717743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784923, 0.619310, -0.018711,
		-0.551051, 0.683968, -0.478048,
		-0.283263, 0.385542, 0.878134,
		43.214241, 32.216629, 31.981184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473396, 32.802692, 31.431223>,  <43.412525, 31.946751, 31.366489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473396, 32.802692, 31.431223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480690, 32.663422, 31.806124>,  <43.485065, 32.579861, 32.031063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480690, 32.663422, 31.806124>,  <43.473396, 32.802692, 31.431223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480690, 32.663422, 31.806124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690591, 0.682259, 0.240014,
		-0.723016, 0.642883, 0.252884,
		0.018231, -0.348173, 0.937253,
		43.486160, 32.558971, 32.087299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753063, 33.332432, 31.738792>,  <43.473396, 32.802692, 31.431223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753063, 33.332432, 31.738792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749329, 33.060730, 32.032330>,  <43.747089, 32.897709, 32.208450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749329, 33.060730, 32.032330>,  <43.753063, 33.332432, 31.738792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749329, 33.060730, 32.032330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754364, 0.476945, 0.451064,
		-0.656390, 0.557796, 0.507952,
		-0.009336, -0.679255, 0.733843,
		43.746529, 32.856953, 32.252483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692142, 33.739174, 32.299427>,  <43.753063, 33.332432, 31.738792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692142, 33.739174, 32.299427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862339, 33.389389, 32.392605>,  <43.964458, 33.179516, 32.448513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862339, 33.389389, 32.392605>,  <43.692142, 33.739174, 32.299427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862339, 33.389389, 32.392605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796887, 0.484043, 0.361488,
		-0.428865, 0.031820, 0.902808,
		0.425495, -0.874465, 0.232946,
		43.989986, 33.127048, 32.462490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010628, 33.920475, 32.953156>,  <43.692142, 33.739174, 32.299427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010628, 33.920475, 32.953156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167332, 33.577671, 32.819256>,  <44.261353, 33.371990, 32.738914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167332, 33.577671, 32.819256>,  <44.010628, 33.920475, 32.953156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167332, 33.577671, 32.819256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901100, 0.283894, 0.327756,
		-0.185857, -0.430043, 0.883470,
		0.391761, -0.857010, -0.334748,
		44.284859, 33.320568, 32.718830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482456, 33.599205, 33.513561>,  <44.010628, 33.920475, 32.953156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482456, 33.599205, 33.513561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600357, 33.450241, 33.161552>,  <44.671097, 33.360863, 32.950348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600357, 33.450241, 33.161552>,  <44.482456, 33.599205, 33.513561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600357, 33.450241, 33.161552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953537, 0.174702, 0.245449,
		0.062334, -0.911478, 0.406599,
		0.294755, -0.372408, -0.880018,
		44.688782, 33.338520, 32.897549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990433, 33.203674, 33.773212>,  <44.482456, 33.599205, 33.513561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990433, 33.203674, 33.773212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060509, 33.258453, 33.383228>,  <45.102554, 33.291321, 33.149239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060509, 33.258453, 33.383228>,  <44.990433, 33.203674, 33.773212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060509, 33.258453, 33.383228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981685, 0.050981, 0.183563,
		0.074844, -0.989265, -0.125512,
		0.175194, 0.136951, -0.974962,
		45.113068, 33.299538, 33.090740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539749, 32.803562, 33.660339>,  <44.990433, 33.203674, 33.773212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539749, 32.803562, 33.660339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535515, 33.070061, 33.362076>,  <45.532974, 33.229958, 33.183117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535515, 33.070061, 33.362076>,  <45.539749, 32.803562, 33.660339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535515, 33.070061, 33.362076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942709, 0.255319, 0.214739,
		0.333449, -0.700665, -0.630778,
		-0.010589, 0.666244, -0.745659,
		45.532337, 33.269936, 33.138378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193329, 32.756557, 33.366718>,  <45.539749, 32.803562, 33.660339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193329, 32.756557, 33.366718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084682, 33.104477, 33.201950>,  <46.019493, 33.313229, 33.103088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084682, 33.104477, 33.201950>,  <46.193329, 32.756557, 33.366718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084682, 33.104477, 33.201950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927753, 0.350459, 0.128270,
		0.255929, -0.347317, -0.902148,
		-0.271616, 0.869798, -0.411917,
		46.003197, 33.365417, 33.078377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549675, 32.893467, 32.795891>,  <46.193329, 32.756557, 33.366718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549675, 32.893467, 32.795891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422279, 33.248886, 32.927982>,  <46.345840, 33.462135, 33.007236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422279, 33.248886, 32.927982>,  <46.549675, 32.893467, 32.795891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422279, 33.248886, 32.927982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918580, 0.203287, 0.338949,
		0.234040, 0.411294, -0.880944,
		-0.318492, 0.888545, 0.330229,
		46.326733, 33.515450, 33.027050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.074764, 33.240158, 32.725876>,  <46.549675, 32.893467, 32.795891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.074764, 33.240158, 32.725876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854591, 33.442245, 32.991741>,  <46.722488, 33.563496, 33.151260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854591, 33.442245, 32.991741>,  <47.074764, 33.240158, 32.725876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.854591, 33.442245, 32.991741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813886, 0.147308, 0.562041,
		0.186040, 0.850329, -0.492270,
		-0.550434, 0.505214, 0.664666,
		46.689461, 33.593811, 33.191139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.272820, 33.906361, 32.893154>,  <47.074764, 33.240158, 32.725876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.272820, 33.906361, 32.893154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.091064, 33.776299, 33.224892>,  <46.982010, 33.698261, 33.423935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.091064, 33.776299, 33.224892>,  <47.272820, 33.906361, 32.893154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.091064, 33.776299, 33.224892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701749, 0.442812, 0.558092,
		-0.548706, 0.835580, 0.026965,
		-0.454390, -0.325151, 0.829341,
		46.954746, 33.678753, 33.473694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072708, 34.509796, 33.379757>,  <47.272820, 33.906361, 32.893154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.072708, 34.509796, 33.379757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161388, 34.153782, 33.539097>,  <47.214596, 33.940174, 33.634701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161388, 34.153782, 33.539097>,  <47.072708, 34.509796, 33.379757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.161388, 34.153782, 33.539097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624380, 0.443364, 0.643101,
		-0.748997, 0.106146, 0.654015,
		0.221704, -0.890035, 0.398354,
		47.227901, 33.886772, 33.658604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.038109, 34.568516, 34.118576>,  <47.072708, 34.509796, 33.379757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.038109, 34.568516, 34.118576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296200, 34.280052, 34.017693>,  <47.451054, 34.106972, 33.957161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296200, 34.280052, 34.017693>,  <47.038109, 34.568516, 34.118576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.296200, 34.280052, 34.017693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700451, 0.426586, 0.572182,
		-0.305045, -0.545849, 0.780383,
		0.645225, -0.721161, -0.252213,
		47.489769, 34.063705, 33.942028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.551437, 34.813396, 34.643860>,  <47.038109, 34.568516, 34.118576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.551437, 34.813396, 34.643860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520794, 34.949978, 35.018566>,  <47.502407, 35.031929, 35.243389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520794, 34.949978, 35.018566>,  <47.551437, 34.813396, 34.643860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.520794, 34.949978, 35.018566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954023, 0.298160, -0.030659,
		-0.289776, 0.891351, -0.348602,
		-0.076611, 0.341458, 0.936769,
		47.497810, 35.052414, 35.299599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.220646, 41.484306, 41.936703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.959759, 41.190235, 42.010605>,  <32.803226, 41.013794, 42.054947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.959759, 41.190235, 42.010605>,  <33.220646, 41.484306, 41.936703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959759, 41.190235, 42.010605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006463, -0.238321, -0.971165,
		0.758008, -0.634601, 0.150684,
		-0.652213, -0.735177, 0.184751,
		32.764095, 40.969681, 42.066029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460098, 40.807175, 41.562447>,  <33.220646, 41.484306, 41.936703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460098, 40.807175, 41.562447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067955, 40.761337, 41.626667>,  <32.832668, 40.733837, 41.665199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067955, 40.761337, 41.626667>,  <33.460098, 40.807175, 41.562447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067955, 40.761337, 41.626667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091230, -0.458234, -0.884137,
		0.174882, -0.881414, 0.438777,
		-0.980354, -0.114590, 0.160548,
		32.773849, 40.726959, 41.674831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255833, 40.167812, 41.430145>,  <33.460098, 40.807175, 41.562447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255833, 40.167812, 41.430145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915253, 40.373844, 41.390686>,  <32.710907, 40.497463, 41.367012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915253, 40.373844, 41.390686>,  <33.255833, 40.167812, 41.430145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915253, 40.373844, 41.390686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137956, -0.401456, -0.905429,
		-0.505970, -0.757316, 0.412877,
		-0.851448, 0.515078, -0.098648,
		32.659817, 40.528366, 41.361092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835453, 39.783463, 41.139153>,  <33.255833, 40.167812, 41.430145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835453, 39.783463, 41.139153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.659100, 40.132378, 41.054543>,  <32.553288, 40.341728, 41.003777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.659100, 40.132378, 41.054543>,  <32.835453, 39.783463, 41.139153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659100, 40.132378, 41.054543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096903, -0.280542, -0.954938,
		-0.892320, -0.400515, 0.208213,
		-0.440879, 0.872287, -0.211522,
		32.526836, 40.394062, 40.991085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267529, 39.639637, 40.789604>,  <32.835453, 39.783463, 41.139153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267529, 39.639637, 40.789604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334591, 40.022316, 40.694420>,  <32.374828, 40.251923, 40.637310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334591, 40.022316, 40.694420>,  <32.267529, 39.639637, 40.789604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334591, 40.022316, 40.694420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178835, -0.207861, -0.961671,
		-0.969490, 0.203784, 0.136242,
		0.167653, 0.956695, -0.237963,
		32.384888, 40.309326, 40.623032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819374, 39.740326, 40.107220>,  <32.267529, 39.639637, 40.789604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819374, 39.740326, 40.107220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.050873, 40.064323, 40.145077>,  <32.189774, 40.258724, 40.167789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.050873, 40.064323, 40.145077>,  <31.819374, 39.740326, 40.107220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050873, 40.064323, 40.145077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283250, -0.090829, -0.954735,
		-0.764736, 0.579358, -0.281999,
		0.578747, 0.809997, 0.094643,
		32.224495, 40.307323, 40.173470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660530, 40.256195, 39.526775>,  <31.819374, 39.740326, 40.107220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660530, 40.256195, 39.526775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042919, 40.273678, 39.642845>,  <32.272354, 40.284168, 39.712486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.042919, 40.273678, 39.642845>,  <31.660530, 40.256195, 39.526775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042919, 40.273678, 39.642845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291759, -0.247561, -0.923900,
		0.031453, 0.967886, -0.249415,
		0.955975, 0.043710, 0.290176,
		32.329712, 40.286789, 39.729897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942543, 40.091373, 38.913258>,  <31.660530, 40.256195, 39.526775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942543, 40.091373, 38.913258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.260880, 40.089874, 39.155457>,  <32.451881, 40.088974, 39.300774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.260880, 40.089874, 39.155457>,  <31.942543, 40.091373, 38.913258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260880, 40.089874, 39.155457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592994, -0.197400, -0.780635,
		0.122447, 0.980316, -0.154878,
		0.795842, -0.003745, 0.605493,
		32.499634, 40.088753, 39.337105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413746, 40.610596, 38.568394>,  <31.942543, 40.091373, 38.913258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413746, 40.610596, 38.568394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.631855, 40.352135, 38.781998>,  <32.762722, 40.197060, 38.910160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.631855, 40.352135, 38.781998>,  <32.413746, 40.610596, 38.568394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631855, 40.352135, 38.781998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631330, -0.102533, -0.768707,
		0.551452, 0.756293, 0.352024,
		0.545274, -0.646148, 0.534012,
		32.795437, 40.158291, 38.942200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106007, 40.709522, 38.484566>,  <32.413746, 40.610596, 38.568394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106007, 40.709522, 38.484566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.129890, 40.336590, 38.627220>,  <33.144222, 40.112831, 38.712811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.129890, 40.336590, 38.627220>,  <33.106007, 40.709522, 38.484566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129890, 40.336590, 38.627220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596093, -0.253270, -0.761923,
		0.800692, 0.258082, 0.540635,
		0.059713, -0.932335, 0.356632,
		33.147804, 40.056889, 38.734211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783913, 40.502151, 38.353088>,  <33.106007, 40.709522, 38.484566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783913, 40.502151, 38.353088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.603092, 40.151459, 38.418804>,  <33.494598, 39.941044, 38.458233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.603092, 40.151459, 38.418804>,  <33.783913, 40.502151, 38.353088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603092, 40.151459, 38.418804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636911, -0.446206, -0.628685,
		0.624493, -0.179564, 0.760109,
		-0.452054, -0.876731, 0.164286,
		33.467476, 39.888439, 38.468090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349762, 40.117752, 38.511021>,  <33.783913, 40.502151, 38.353088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349762, 40.117752, 38.511021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066463, 39.847237, 38.430016>,  <33.896484, 39.684925, 38.381413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066463, 39.847237, 38.430016>,  <34.349762, 40.117752, 38.511021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066463, 39.847237, 38.430016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668839, -0.551010, -0.499042,
		0.225911, -0.488895, 0.842583,
		-0.708251, -0.676291, -0.202512,
		33.853989, 39.644348, 38.369263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516098, 39.400787, 38.755096>,  <34.349762, 40.117752, 38.511021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516098, 39.400787, 38.755096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.261433, 39.345173, 38.451694>,  <34.108635, 39.311802, 38.269653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.261433, 39.345173, 38.451694>,  <34.516098, 39.400787, 38.755096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261433, 39.345173, 38.451694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670228, -0.586241, -0.455100,
		-0.381391, -0.798116, 0.466425,
		-0.636660, -0.139040, -0.758506,
		34.070435, 39.303459, 38.224144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669792, 38.774673, 38.570873>,  <34.516098, 39.400787, 38.755096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669792, 38.774673, 38.570873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.455898, 38.860199, 38.243862>,  <34.327564, 38.911514, 38.047657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.455898, 38.860199, 38.243862>,  <34.669792, 38.774673, 38.570873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455898, 38.860199, 38.243862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643954, -0.523333, -0.558074,
		-0.547164, -0.824866, 0.142152,
		-0.534729, 0.213819, -0.817525,
		34.295479, 38.924343, 37.998604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505505, 38.155712, 38.177662>,  <34.669792, 38.774673, 38.570873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505505, 38.155712, 38.177662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.485149, 38.459324, 37.918034>,  <34.472935, 38.641491, 37.762257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.485149, 38.459324, 37.918034>,  <34.505505, 38.155712, 38.177662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485149, 38.459324, 37.918034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619091, -0.486001, -0.616870,
		-0.783669, -0.433223, -0.445175,
		-0.050887, 0.759026, -0.649069,
		34.469883, 38.687031, 37.723312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308769, 37.856190, 37.638985>,  <34.505505, 38.155712, 38.177662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308769, 37.856190, 37.638985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476631, 38.188828, 37.493473>,  <34.577351, 38.388409, 37.406166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476631, 38.188828, 37.493473>,  <34.308769, 37.856190, 37.638985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476631, 38.188828, 37.493473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598981, -0.554845, -0.577380,
		-0.681988, 0.024406, -0.730956,
		0.419659, 0.831596, -0.363779,
		34.602528, 38.438305, 37.384338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224316, 37.792919, 36.897491>,  <34.308769, 37.856190, 37.638985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224316, 37.792919, 36.897491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.518677, 38.046429, 36.992805>,  <34.695293, 38.198532, 37.049995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.518677, 38.046429, 36.992805>,  <34.224316, 37.792919, 36.897491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518677, 38.046429, 36.992805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622196, -0.494176, -0.607176,
		-0.267054, 0.595084, -0.757995,
		0.735904, 0.633770, 0.238287,
		34.739449, 38.236561, 37.064293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482754, 37.786942, 36.285278>,  <34.224316, 37.792919, 36.897491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482754, 37.786942, 36.285278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768066, 37.974533, 36.493618>,  <34.939255, 38.087090, 36.618622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768066, 37.974533, 36.493618>,  <34.482754, 37.786942, 36.285278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768066, 37.974533, 36.493618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686725, -0.319059, -0.653153,
		-0.140136, 0.823563, -0.549642,
		0.713281, 0.468983, 0.520850,
		34.982052, 38.115227, 36.649872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885082, 38.086033, 35.804310>,  <34.482754, 37.786942, 36.285278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885082, 38.086033, 35.804310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120865, 38.090477, 36.127399>,  <35.262333, 38.093143, 36.321255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120865, 38.090477, 36.127399>,  <34.885082, 38.086033, 35.804310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120865, 38.090477, 36.127399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778562, -0.274392, -0.564403,
		0.215363, 0.961554, -0.170391,
		0.589457, 0.011108, 0.807723,
		35.297703, 38.093811, 36.369717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529465, 38.424660, 35.630608>,  <34.885082, 38.086033, 35.804310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529465, 38.424660, 35.630608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.607601, 38.172340, 35.930988>,  <35.654484, 38.020947, 36.111217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.607601, 38.172340, 35.930988>,  <35.529465, 38.424660, 35.630608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607601, 38.172340, 35.930988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689664, -0.456048, -0.562480,
		0.697284, 0.627783, 0.345954,
		0.195344, -0.630800, 0.750954,
		35.666203, 37.983101, 36.156273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242832, 38.291656, 35.551220>,  <35.529465, 38.424660, 35.630608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242832, 38.291656, 35.551220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123672, 37.992680, 35.788734>,  <36.052177, 37.813293, 35.931244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123672, 37.992680, 35.788734>,  <36.242832, 38.291656, 35.551220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123672, 37.992680, 35.788734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594411, -0.631966, -0.497287,
		0.746947, 0.204810, 0.632553,
		-0.297903, -0.747443, 0.593786,
		36.034302, 37.768448, 35.966869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561451, 37.820087, 35.230202>,  <36.242832, 38.291656, 35.551220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561451, 37.820087, 35.230202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349079, 37.595039, 35.483681>,  <36.221657, 37.460011, 35.635769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349079, 37.595039, 35.483681>,  <36.561451, 37.820087, 35.230202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349079, 37.595039, 35.483681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350037, -0.826624, -0.440643,
		0.771743, -0.012134, 0.635819,
		-0.530930, -0.562623, 0.633694,
		36.189800, 37.426254, 35.673790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321270, 37.706360, 35.354446>,  <36.561451, 37.820087, 35.230202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321270, 37.706360, 35.354446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707886, 37.801422, 35.315834>,  <37.939854, 37.858459, 35.292667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707886, 37.801422, 35.315834>,  <37.321270, 37.706360, 35.354446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707886, 37.801422, 35.315834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010107, 0.411312, 0.911438,
		0.256314, -0.879966, 0.399952,
		0.966540, 0.237656, -0.096531,
		37.997849, 37.872719, 35.286873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811344, 37.409721, 35.969082>,  <37.321270, 37.706360, 35.354446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811344, 37.409721, 35.969082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988674, 37.733540, 35.815151>,  <38.095074, 37.927830, 35.722794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988674, 37.733540, 35.815151>,  <37.811344, 37.409721, 35.969082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988674, 37.733540, 35.815151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093204, 0.385362, 0.918046,
		0.891501, -0.442863, 0.095389,
		0.443328, 0.809548, -0.384827,
		38.121674, 37.976402, 35.699703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287086, 37.534744, 36.518505>,  <37.811344, 37.409721, 35.969082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287086, 37.534744, 36.518505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263046, 37.868191, 36.298882>,  <38.248623, 38.068260, 36.167107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263046, 37.868191, 36.298882>,  <38.287086, 37.534744, 36.518505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263046, 37.868191, 36.298882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086826, 0.543602, 0.834840,
		0.994409, 0.097849, 0.039708,
		-0.060103, 0.833620, -0.549058,
		38.245014, 38.118279, 36.134163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687901, 38.012508, 36.878094>,  <38.287086, 37.534744, 36.518505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687901, 38.012508, 36.878094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435535, 38.213223, 36.641392>,  <38.284119, 38.333649, 36.499371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435535, 38.213223, 36.641392>,  <38.687901, 38.012508, 36.878094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435535, 38.213223, 36.641392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172259, 0.653077, 0.737440,
		0.756492, 0.567193, -0.325596,
		-0.630910, 0.501781, -0.591751,
		38.246262, 38.363758, 36.463867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933243, 38.712723, 36.974152>,  <38.687901, 38.012508, 36.878094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933243, 38.712723, 36.974152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.549702, 38.689381, 36.863014>,  <38.319576, 38.675377, 36.796333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.549702, 38.689381, 36.863014>,  <38.933243, 38.712723, 36.974152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549702, 38.689381, 36.863014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238580, 0.696099, 0.677146,
		0.153891, 0.715571, -0.681378,
		-0.958852, -0.058356, -0.277844,
		38.262047, 38.671875, 36.779659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761711, 39.374317, 37.027134>,  <38.933243, 38.712723, 36.974152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761711, 39.374317, 37.027134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396576, 39.214363, 36.994091>,  <38.177494, 39.118389, 36.974266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396576, 39.214363, 36.994091>,  <38.761711, 39.374317, 37.027134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396576, 39.214363, 36.994091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332703, 0.611100, 0.718237,
		-0.236732, 0.683115, -0.690877,
		-0.912834, -0.399887, -0.082608,
		38.122726, 39.094398, 36.969307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218735, 39.858807, 36.859344>,  <38.761711, 39.374317, 37.027134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218735, 39.858807, 36.859344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029694, 39.550449, 37.030163>,  <37.916271, 39.365437, 37.132656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029694, 39.550449, 37.030163>,  <38.218735, 39.858807, 36.859344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029694, 39.550449, 37.030163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355478, 0.610163, 0.708051,
		-0.806402, 0.182818, -0.562400,
		-0.472600, -0.770895, 0.427049,
		37.887913, 39.319180, 37.158276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495594, 40.195671, 36.937328>,  <38.218735, 39.858807, 36.859344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495594, 40.195671, 36.937328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458107, 39.860771, 37.152817>,  <37.435616, 39.659832, 37.282112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458107, 39.860771, 37.152817>,  <37.495594, 40.195671, 36.937328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458107, 39.860771, 37.152817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556330, 0.492785, 0.669074,
		-0.825659, -0.237003, -0.511973,
		-0.093720, -0.837253, 0.538724,
		37.429993, 39.609596, 37.314434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778606, 40.184727, 37.172649>,  <37.495594, 40.195671, 36.937328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778606, 40.184727, 37.172649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001411, 39.935120, 37.391861>,  <37.135094, 39.785355, 37.523388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001411, 39.935120, 37.391861>,  <36.778606, 40.184727, 37.172649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001411, 39.935120, 37.391861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536790, 0.233004, 0.810904,
		-0.633714, -0.745860, -0.205182,
		0.557012, -0.624021, 0.548028,
		37.168514, 39.747913, 37.556271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324177, 39.620552, 37.422344>,  <36.778606, 40.184727, 37.172649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324177, 39.620552, 37.422344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.641098, 39.666008, 37.662128>,  <36.831249, 39.693279, 37.806000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.641098, 39.666008, 37.662128>,  <36.324177, 39.620552, 37.422344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641098, 39.666008, 37.662128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610013, 0.166899, 0.774615,
		-0.012025, -0.979404, 0.201553,
		0.792300, 0.113635, 0.599456,
		36.878788, 39.700100, 37.841965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105415, 39.305698, 38.114449>,  <36.324177, 39.620552, 37.422344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105415, 39.305698, 38.114449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428955, 39.530704, 38.182957>,  <36.623081, 39.665710, 38.224060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428955, 39.530704, 38.182957>,  <36.105415, 39.305698, 38.114449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428955, 39.530704, 38.182957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428101, 0.363677, 0.827326,
		0.403102, -0.742502, 0.534975,
		0.808849, 0.562520, 0.171267,
		36.671612, 39.699459, 38.234337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335552, 39.102325, 38.819832>,  <36.105415, 39.305698, 38.114449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335552, 39.102325, 38.819832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511997, 39.456894, 38.763721>,  <36.617863, 39.669636, 38.730057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511997, 39.456894, 38.763721>,  <36.335552, 39.102325, 38.819832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511997, 39.456894, 38.763721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546228, 0.389198, 0.741728,
		0.712080, -0.250561, 0.655867,
		0.441110, 0.886422, -0.140277,
		36.644329, 39.722820, 38.721638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608681, 39.345867, 39.507526>,  <36.335552, 39.102325, 38.819832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608681, 39.345867, 39.507526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555397, 39.668140, 39.276657>,  <36.523426, 39.861504, 39.138138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555397, 39.668140, 39.276657>,  <36.608681, 39.345867, 39.507526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555397, 39.668140, 39.276657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487594, 0.453733, 0.745909,
		0.862849, 0.380786, 0.332406,
		-0.133208, 0.805685, -0.577172,
		36.515434, 39.909847, 39.103504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797089, 39.862110, 39.870663>,  <36.608681, 39.345867, 39.507526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797089, 39.862110, 39.870663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565697, 40.037033, 39.595234>,  <36.426861, 40.141987, 39.429977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565697, 40.037033, 39.595234>,  <36.797089, 39.862110, 39.870663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565697, 40.037033, 39.595234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384489, 0.598303, 0.702995,
		0.719399, 0.671412, -0.177963,
		-0.578475, 0.437309, -0.688569,
		36.392155, 40.168224, 39.388664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903172, 40.661930, 39.805523>,  <36.797089, 39.862110, 39.870663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903172, 40.661930, 39.805523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.540592, 40.560295, 39.670589>,  <36.323044, 40.499313, 39.589630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.540592, 40.560295, 39.670589>,  <36.903172, 40.661930, 39.805523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540592, 40.560295, 39.670589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419940, 0.626997, 0.656144,
		0.044788, 0.736419, -0.675041,
		-0.906446, -0.254089, -0.337334,
		36.268658, 40.484070, 39.569389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507732, 41.294922, 39.623531>,  <36.903172, 40.661930, 39.805523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507732, 41.294922, 39.623531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256081, 40.996792, 39.711792>,  <36.105091, 40.817913, 39.764748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256081, 40.996792, 39.711792>,  <36.507732, 41.294922, 39.623531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256081, 40.996792, 39.711792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502800, 0.606691, 0.615725,
		-0.592783, 0.276428, -0.756436,
		-0.629127, -0.745328, 0.220648,
		36.067341, 40.773193, 39.777985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975304, 41.594215, 39.848949>,  <36.507732, 41.294922, 39.623531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975304, 41.594215, 39.848949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881493, 41.228149, 39.980083>,  <35.825207, 41.008511, 40.058765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881493, 41.228149, 39.980083>,  <35.975304, 41.594215, 39.848949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881493, 41.228149, 39.980083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557525, 0.402891, 0.725841,
		-0.796344, -0.012547, -0.604714,
		-0.234527, -0.915162, 0.327835,
		35.811134, 40.953602, 40.078434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300743, 41.679966, 40.009384>,  <35.975304, 41.594215, 39.848949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300743, 41.679966, 40.009384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388817, 41.330616, 40.183159>,  <35.441662, 41.121006, 40.287426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388817, 41.330616, 40.183159>,  <35.300743, 41.679966, 40.009384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388817, 41.330616, 40.183159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515771, 0.273783, 0.811802,
		-0.827949, -0.402815, -0.390180,
		0.220181, -0.873374, 0.434439,
		35.454872, 41.068604, 40.313492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.596573, 41.458172, 40.332130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883072, 41.249352, 40.517368>,  <35.054970, 41.124062, 40.628510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883072, 41.249352, 40.517368>,  <34.596573, 41.458172, 40.332130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883072, 41.249352, 40.517368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390410, 0.250280, 0.885969,
		-0.578420, -0.815369, -0.024550,
		0.716247, -0.522047, 0.463095,
		35.097946, 41.092739, 40.656296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227207, 41.083744, 40.799854>,  <34.596573, 41.458172, 40.332130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227207, 41.083744, 40.799854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603661, 41.120972, 40.929844>,  <34.829533, 41.143307, 41.007835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603661, 41.120972, 40.929844>,  <34.227207, 41.083744, 40.799854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603661, 41.120972, 40.929844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338030, 0.255078, 0.905909,
		0.001416, -0.962431, 0.271521,
		0.941134, 0.093066, 0.324970,
		34.886002, 41.148891, 41.027336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211357, 40.865952, 41.567802>,  <34.227207, 41.083744, 40.799854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211357, 40.865952, 41.567802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554317, 41.065937, 41.518967>,  <34.760094, 41.185928, 41.489666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554317, 41.065937, 41.518967>,  <34.211357, 40.865952, 41.567802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554317, 41.065937, 41.518967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088248, 0.376527, 0.922193,
		0.507033, -0.779911, 0.366954,
		0.857397, 0.499965, -0.122086,
		34.811539, 41.215927, 41.482342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598469, 40.876122, 42.207649>,  <34.211357, 40.865952, 41.567802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598469, 40.876122, 42.207649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.743099, 41.180428, 41.992054>,  <34.829876, 41.363010, 41.862698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.743099, 41.180428, 41.992054>,  <34.598469, 40.876122, 42.207649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743099, 41.180428, 41.992054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027894, 0.586665, 0.809349,
		0.931925, -0.277607, 0.233345,
		0.361576, 0.760762, -0.538984,
		34.851570, 41.408657, 41.830360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032192, 41.177952, 42.704666>,  <34.598469, 40.876122, 42.207649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032192, 41.177952, 42.704666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995869, 41.459713, 42.423080>,  <34.974075, 41.628769, 42.254128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995869, 41.459713, 42.423080>,  <35.032192, 41.177952, 42.704666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995869, 41.459713, 42.423080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158955, 0.687571, 0.708505,
		0.983100, 0.176240, 0.049529,
		-0.090812, 0.704404, -0.703966,
		34.968624, 41.671036, 42.211891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495399, 41.666645, 42.927864>,  <35.032192, 41.177952, 42.704666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495399, 41.666645, 42.927864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187485, 41.801498, 42.711063>,  <35.002735, 41.882412, 42.580982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187485, 41.801498, 42.711063>,  <35.495399, 41.666645, 42.927864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187485, 41.801498, 42.711063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244521, 0.628598, 0.738292,
		0.589605, 0.700859, -0.401451,
		-0.769789, 0.337137, -0.541999,
		34.956547, 41.902641, 42.548462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609428, 42.355034, 43.048344>,  <35.495399, 41.666645, 42.927864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609428, 42.355034, 43.048344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238159, 42.283928, 42.917564>,  <35.015396, 42.241264, 42.839096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238159, 42.283928, 42.917564>,  <35.609428, 42.355034, 43.048344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238159, 42.283928, 42.917564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368429, 0.562823, 0.739926,
		0.052479, 0.807236, -0.587891,
		-0.928173, -0.177765, -0.326945,
		34.959705, 42.230598, 42.819481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322773, 42.972198, 43.101250>,  <35.609428, 42.355034, 43.048344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322773, 42.972198, 43.101250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992565, 42.747356, 43.080997>,  <34.794441, 42.612453, 43.068844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992565, 42.747356, 43.080997>,  <35.322773, 42.972198, 43.101250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992565, 42.747356, 43.080997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333314, 0.413172, 0.847461,
		-0.455440, 0.716469, -0.528437,
		-0.825516, -0.562103, -0.050634,
		34.744911, 42.578724, 43.065807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706219, 43.399494, 43.065125>,  <35.322773, 42.972198, 43.101250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706219, 43.399494, 43.065125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593395, 43.038887, 43.196404>,  <34.525700, 42.822525, 43.275169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593395, 43.038887, 43.196404>,  <34.706219, 43.399494, 43.065125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593395, 43.038887, 43.196404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274401, 0.403603, 0.872816,
		-0.919318, 0.156129, -0.361217,
		-0.282061, -0.901514, 0.328197,
		34.508778, 42.768433, 43.294861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173138, 43.495026, 43.404640>,  <34.706219, 43.399494, 43.065125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173138, 43.495026, 43.404640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294975, 43.141216, 43.545975>,  <34.368076, 42.928932, 43.630775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294975, 43.141216, 43.545975>,  <34.173138, 43.495026, 43.404640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294975, 43.141216, 43.545975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080399, 0.345768, 0.934869,
		-0.949084, -0.313160, 0.034203,
		0.304590, -0.884520, 0.353341,
		34.386353, 42.875862, 43.651978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758919, 43.454231, 43.967209>,  <34.173138, 43.495026, 43.404640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758919, 43.454231, 43.967209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.078495, 43.219074, 44.017914>,  <34.270241, 43.077980, 44.048336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.078495, 43.219074, 44.017914>,  <33.758919, 43.454231, 43.967209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078495, 43.219074, 44.017914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014554, 0.191810, 0.981324,
		-0.601228, -0.785869, 0.144690,
		0.798945, -0.587894, 0.126759,
		34.318180, 43.042706, 44.055943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605885, 43.269650, 44.625797>,  <33.758919, 43.454231, 43.967209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605885, 43.269650, 44.625797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.982590, 43.154671, 44.555992>,  <34.208614, 43.085686, 44.514111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.982590, 43.154671, 44.555992>,  <33.605885, 43.269650, 44.625797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982590, 43.154671, 44.555992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190465, 0.028266, 0.981287,
		-0.277133, -0.957380, 0.081368,
		0.941765, -0.287444, -0.174514,
		34.265118, 43.068439, 44.503639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804268, 42.657162, 45.052380>,  <33.605885, 43.269650, 44.625797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804268, 42.657162, 45.052380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.155754, 42.825291, 44.961880>,  <34.366646, 42.926167, 44.907578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.155754, 42.825291, 44.961880>,  <33.804268, 42.657162, 45.052380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155754, 42.825291, 44.961880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291965, -0.098265, 0.951367,
		0.377650, -0.902038, -0.209067,
		0.878713, 0.420324, -0.226253,
		34.419369, 42.951389, 44.894005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307568, 42.435165, 45.516190>,  <33.804268, 42.657162, 45.052380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307568, 42.435165, 45.516190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593464, 42.683636, 45.387638>,  <34.765003, 42.832718, 45.310505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593464, 42.683636, 45.387638>,  <34.307568, 42.435165, 45.516190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593464, 42.683636, 45.387638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576912, -0.263881, 0.773006,
		0.395364, -0.737910, -0.546969,
		0.714744, 0.621172, -0.321381,
		34.807888, 42.869987, 45.291225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995117, 42.182323, 45.686874>,  <34.307568, 42.435165, 45.516190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995117, 42.182323, 45.686874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.057968, 42.571159, 45.617188>,  <35.095680, 42.804462, 45.575375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.057968, 42.571159, 45.617188>,  <34.995117, 42.182323, 45.686874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057968, 42.571159, 45.617188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685352, 0.019677, 0.727946,
		0.711057, -0.233781, -0.663132,
		0.157131, 0.972090, -0.174214,
		35.105106, 42.862785, 45.564922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673382, 42.235409, 45.822624>,  <34.995117, 42.182323, 45.686874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673382, 42.235409, 45.822624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552528, 42.613968, 45.868317>,  <35.480019, 42.841103, 45.895733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552528, 42.613968, 45.868317>,  <35.673382, 42.235409, 45.822624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552528, 42.613968, 45.868317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719931, 0.147989, 0.678084,
		0.624832, 0.287109, -0.726053,
		-0.302132, 0.946397, 0.114230,
		35.461887, 42.897888, 45.902584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223278, 42.684498, 45.824150>,  <35.673382, 42.235409, 45.822624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223278, 42.684498, 45.824150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955448, 42.909126, 46.018597>,  <35.794750, 43.043903, 46.135265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955448, 42.909126, 46.018597>,  <36.223278, 42.684498, 45.824150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955448, 42.909126, 46.018597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710271, 0.292712, 0.640183,
		0.217217, 0.773924, -0.594860,
		-0.669576, 0.561571, 0.486114,
		35.754574, 43.077599, 46.164433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570393, 43.257633, 46.047951>,  <36.223278, 42.684498, 45.824150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570393, 43.257633, 46.047951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250458, 43.236557, 46.287109>,  <36.058495, 43.223911, 46.430603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250458, 43.236557, 46.287109>,  <36.570393, 43.257633, 46.047951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250458, 43.236557, 46.287109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584810, 0.155809, 0.796066,
		-0.135102, 0.986381, -0.093809,
		-0.799840, -0.052690, 0.597896,
		36.010506, 43.220749, 46.466476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489304, 43.841721, 46.519035>,  <36.570393, 43.257633, 46.047951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489304, 43.841721, 46.519035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.235725, 43.605316, 46.718563>,  <36.083580, 43.463474, 46.838280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.235725, 43.605316, 46.718563>,  <36.489304, 43.841721, 46.519035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235725, 43.605316, 46.718563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395776, 0.306205, 0.865794,
		-0.664437, 0.746284, 0.039793,
		-0.633943, -0.591015, 0.498816,
		36.045544, 43.428013, 46.868206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193817, 44.241230, 47.073093>,  <36.489304, 43.841721, 46.519035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193817, 44.241230, 47.073093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.142101, 43.864517, 47.197243>,  <36.111073, 43.638489, 47.271732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.142101, 43.864517, 47.197243>,  <36.193817, 44.241230, 47.073093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142101, 43.864517, 47.197243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344979, 0.250725, 0.904504,
		-0.929663, 0.224016, 0.292479,
		-0.129292, -0.941782, 0.310370,
		36.103313, 43.581982, 47.290356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837337, 44.284920, 47.670147>,  <36.193817, 44.241230, 47.073093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837337, 44.284920, 47.670147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010998, 43.926659, 47.708755>,  <36.115196, 43.711700, 47.731918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010998, 43.926659, 47.708755>,  <35.837337, 44.284920, 47.670147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010998, 43.926659, 47.708755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334565, 0.259793, 0.905855,
		-0.836408, -0.360987, 0.412445,
		0.434152, -0.895654, 0.096519,
		36.141243, 43.657963, 47.737713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577332, 43.936897, 48.308964>,  <35.837337, 44.284920, 47.670147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577332, 43.936897, 48.308964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954590, 43.858295, 48.201740>,  <36.180946, 43.811134, 48.137405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954590, 43.858295, 48.201740>,  <35.577332, 43.936897, 48.308964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954590, 43.858295, 48.201740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328687, 0.431611, 0.840046,
		-0.049377, -0.880396, 0.471662,
		0.943147, -0.196508, -0.268063,
		36.237534, 43.799343, 48.121323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433891, 44.433750, 48.821308>,  <35.577332, 43.936897, 48.308964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433891, 44.433750, 48.821308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546959, 44.627785, 48.490299>,  <35.614799, 44.744205, 48.291695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546959, 44.627785, 48.490299>,  <35.433891, 44.433750, 48.821308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546959, 44.627785, 48.490299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541537, 0.792772, 0.279731,
		0.791729, 0.369063, 0.486782,
		0.282669, 0.485082, -0.827523,
		35.631760, 44.773308, 48.242043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708485, 44.362488, 48.879429>,  <35.433891, 44.433750, 48.821308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708485, 44.362488, 48.879429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.613533, 44.052097, 49.113186>,  <34.556564, 43.865864, 49.253441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.613533, 44.052097, 49.113186>,  <34.708485, 44.362488, 48.879429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613533, 44.052097, 49.113186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056411, -0.589561, -0.805751,
		0.969779, -0.224232, 0.096174,
		-0.237376, -0.775975, 0.584393,
		34.542320, 43.819305, 49.288506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872768, 43.853565, 48.417870>,  <34.708485, 44.362488, 48.879429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872768, 43.853565, 48.417870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635292, 43.688053, 48.693932>,  <34.492805, 43.588745, 48.859570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635292, 43.688053, 48.693932>,  <34.872768, 43.853565, 48.417870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635292, 43.688053, 48.693932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165362, -0.776626, -0.607872,
		0.787518, -0.475014, 0.392653,
		-0.593693, -0.413780, 0.690156,
		34.457184, 43.563919, 48.900978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055580, 43.118893, 48.426247>,  <34.872768, 43.853565, 48.417870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055580, 43.118893, 48.426247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688877, 43.156776, 48.581467>,  <34.468857, 43.179504, 48.674599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.688877, 43.156776, 48.581467>,  <35.055580, 43.118893, 48.426247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688877, 43.156776, 48.581467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322595, -0.748438, -0.579460,
		0.235552, -0.656408, 0.716689,
		-0.916760, 0.094707, 0.388051,
		34.413849, 43.185188, 48.697884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817711, 42.530865, 48.511505>,  <35.055580, 43.118893, 48.426247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817711, 42.530865, 48.511505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.467064, 42.723278, 48.506603>,  <34.256676, 42.838726, 48.503662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.467064, 42.723278, 48.506603>,  <34.817711, 42.530865, 48.511505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467064, 42.723278, 48.506603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381576, -0.710424, -0.591352,
		-0.293164, -0.513715, 0.806320,
		-0.876616, 0.481035, -0.012250,
		34.204079, 42.867588, 48.502930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247093, 41.973953, 48.506454>,  <34.817711, 42.530865, 48.511505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247093, 41.973953, 48.506454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047443, 42.308559, 48.416016>,  <33.927654, 42.509323, 48.361752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047443, 42.308559, 48.416016>,  <34.247093, 41.973953, 48.506454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047443, 42.308559, 48.416016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520773, -0.498115, -0.693309,
		-0.692585, -0.228302, 0.684254,
		-0.499121, 0.836517, -0.226093,
		33.897705, 42.559513, 48.348186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659836, 41.734413, 48.503574>,  <34.247093, 41.973953, 48.506454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659836, 41.734413, 48.503574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.643368, 42.068245, 48.283833>,  <33.633488, 42.268543, 48.151989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.643368, 42.068245, 48.283833>,  <33.659836, 41.734413, 48.503574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643368, 42.068245, 48.283833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339481, -0.528791, -0.777903,
		-0.939712, 0.154469, 0.305092,
		-0.041168, 0.834578, -0.549350,
		33.631016, 42.318619, 48.119026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093693, 41.602371, 48.253178>,  <33.659836, 41.734413, 48.503574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093693, 41.602371, 48.253178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.254459, 41.883198, 48.018036>,  <33.350918, 42.051693, 47.876953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.254459, 41.883198, 48.018036>,  <33.093693, 41.602371, 48.253178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254459, 41.883198, 48.018036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370677, -0.462287, -0.805537,
		-0.837294, 0.541662, 0.074437,
		0.401918, 0.702063, -0.587852,
		33.375034, 42.093819, 47.841679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528519, 41.816551, 47.742817>,  <33.093693, 41.602371, 48.253178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528519, 41.816551, 47.742817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.886562, 41.914558, 47.593826>,  <33.101391, 41.973362, 47.504433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.886562, 41.914558, 47.593826>,  <32.528519, 41.816551, 47.742817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886562, 41.914558, 47.593826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208482, -0.508455, -0.835469,
		-0.394096, 0.825493, -0.404041,
		0.895111, 0.245020, -0.372481,
		33.155094, 41.988064, 47.482082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329651, 42.128666, 47.080723>,  <32.528519, 41.816551, 47.742817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329651, 42.128666, 47.080723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718491, 42.042526, 47.043510>,  <32.951794, 41.990841, 47.021183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718491, 42.042526, 47.043510>,  <32.329651, 42.128666, 47.080723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718491, 42.042526, 47.043510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182142, -0.442990, -0.877829,
		0.147829, 0.870278, -0.469853,
		0.972096, -0.215349, -0.093027,
		33.010120, 41.977921, 47.015602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564747, 42.497169, 46.457920>,  <32.329651, 42.128666, 47.080723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564747, 42.497169, 46.457920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815811, 42.193237, 46.525681>,  <32.966450, 42.010876, 46.566338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815811, 42.193237, 46.525681>,  <32.564747, 42.497169, 46.457920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815811, 42.193237, 46.525681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137652, -0.322498, -0.936508,
		0.766222, 0.564489, -0.307011,
		0.627659, -0.759834, 0.169402,
		33.004108, 41.965286, 46.576500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138325, 42.494785, 45.899765>,  <32.564747, 42.497169, 46.457920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138325, 42.494785, 45.899765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.133934, 42.125618, 46.053699>,  <33.131302, 41.904118, 46.146061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.133934, 42.125618, 46.053699>,  <33.138325, 42.494785, 45.899765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133934, 42.125618, 46.053699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079807, -0.382826, -0.920367,
		0.996750, -0.040812, -0.069455,
		-0.010972, -0.922918, 0.384839,
		33.130642, 41.848743, 46.169151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660114, 42.152225, 45.606285>,  <33.138325, 42.494785, 45.899765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660114, 42.152225, 45.606285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.394585, 41.872181, 45.711502>,  <33.235268, 41.704155, 45.774632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.394585, 41.872181, 45.711502>,  <33.660114, 42.152225, 45.606285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394585, 41.872181, 45.711502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064678, -0.404136, -0.912409,
		0.745091, -0.588662, 0.313555,
		-0.663820, -0.700108, 0.263044,
		33.195438, 41.662148, 45.790417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827080, 41.616024, 45.247692>,  <33.660114, 42.152225, 45.606285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827080, 41.616024, 45.247692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459412, 41.496902, 45.350796>,  <33.238811, 41.425430, 45.412659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459412, 41.496902, 45.350796>,  <33.827080, 41.616024, 45.247692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459412, 41.496902, 45.350796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170649, -0.288710, -0.942086,
		0.354976, -0.909922, 0.214553,
		-0.919168, -0.297805, 0.257763,
		33.183662, 41.407562, 45.428123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782436, 40.927082, 45.020847>,  <33.827080, 41.616024, 45.247692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782436, 40.927082, 45.020847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.411816, 41.065205, 45.080524>,  <33.189442, 41.148079, 45.116329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.411816, 41.065205, 45.080524>,  <33.782436, 40.927082, 45.020847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411816, 41.065205, 45.080524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243320, -0.247735, -0.937775,
		-0.286868, -0.905200, 0.313561,
		-0.926554, 0.345313, 0.149186,
		33.133850, 41.168797, 45.125282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372551, 40.384651, 44.770439>,  <33.782436, 40.927082, 45.020847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372551, 40.384651, 44.770439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144043, 40.712948, 44.767944>,  <33.006939, 40.909927, 44.766445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144043, 40.712948, 44.767944>,  <33.372551, 40.384651, 44.770439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144043, 40.712948, 44.767944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297522, -0.214161, -0.930385,
		-0.764941, -0.529641, 0.366532,
		-0.571266, 0.820741, -0.006241,
		32.972664, 40.959171, 44.766071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648956, 40.239056, 44.641724>,  <33.372551, 40.384651, 44.770439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648956, 40.239056, 44.641724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701073, 40.617188, 44.522137>,  <32.732342, 40.844067, 44.450382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701073, 40.617188, 44.522137>,  <32.648956, 40.239056, 44.641724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701073, 40.617188, 44.522137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515206, -0.193079, -0.835036,
		-0.847105, 0.262830, 0.461880,
		0.130293, 0.945326, -0.298969,
		32.740162, 40.900784, 44.432446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039177, 40.457191, 44.360947>,  <32.648956, 40.239056, 44.641724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039177, 40.457191, 44.360947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304317, 40.704315, 44.191742>,  <32.463402, 40.852589, 44.090221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304317, 40.704315, 44.191742>,  <32.039177, 40.457191, 44.360947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304317, 40.704315, 44.191742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332807, -0.262977, -0.905584,
		-0.670719, 0.741051, 0.031296,
		0.662854, 0.617808, -0.423010,
		32.503174, 40.889656, 44.064838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700111, 40.687229, 43.784401>,  <32.039177, 40.457191, 44.360947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700111, 40.687229, 43.784401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086391, 40.773571, 43.726673>,  <32.318161, 40.825375, 43.692036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086391, 40.773571, 43.726673>,  <31.700111, 40.687229, 43.784401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086391, 40.773571, 43.726673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128987, -0.083591, -0.988117,
		-0.225349, 0.972842, -0.052882,
		0.965702, 0.215850, -0.144321,
		32.376102, 40.838326, 43.683376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689911, 41.205128, 43.315968>,  <31.700111, 40.687229, 43.784401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689911, 41.205128, 43.315968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060501, 41.058395, 43.282318>,  <32.282856, 40.970356, 43.262127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060501, 41.058395, 43.282318>,  <31.689911, 41.205128, 43.315968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060501, 41.058395, 43.282318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121378, -0.079658, -0.989405,
		0.356244, 0.926870, -0.118327,
		0.926476, -0.366832, -0.084124,
		32.338444, 40.948345, 43.257080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073418, 41.602657, 42.901936>,  <31.689911, 41.205128, 43.315968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073418, 41.602657, 42.901936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251835, 41.244724, 42.894855>,  <32.358887, 41.029964, 42.890606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251835, 41.244724, 42.894855>,  <32.073418, 41.602657, 42.901936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251835, 41.244724, 42.894855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055420, -0.007876, -0.998432,
		0.893295, 0.446323, -0.053105,
		0.446042, -0.894837, -0.017699,
		32.385647, 40.976273, 42.889545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755306, 41.758804, 42.407238>,  <32.073418, 41.602657, 42.901936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755306, 41.758804, 42.407238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680401, 41.367058, 42.437641>,  <32.635456, 41.132011, 42.455883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680401, 41.367058, 42.437641>,  <32.755306, 41.758804, 42.407238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680401, 41.367058, 42.437641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106043, -0.097077, -0.989612,
		0.976569, -0.177259, 0.122034,
		-0.187264, -0.979365, 0.076005,
		32.624222, 41.073250, 42.460442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.591953, 28.905750, 32.267559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365314, 28.696291, 32.522041>,  <44.229332, 28.570616, 32.674732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365314, 28.696291, 32.522041>,  <44.591953, 28.905750, 32.267559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365314, 28.696291, 32.522041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109983, 0.813253, 0.571422,
		-0.816623, 0.253793, -0.518378,
		-0.566595, -0.523649, 0.636209,
		44.195335, 28.539196, 32.712902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931633, 29.219091, 32.333027>,  <44.591953, 28.905750, 32.267559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931633, 29.219091, 32.333027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961906, 29.004372, 32.669151>,  <43.980072, 28.875540, 32.870827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961906, 29.004372, 32.669151>,  <43.931633, 29.219091, 32.333027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961906, 29.004372, 32.669151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146810, 0.827543, 0.541867,
		-0.986265, -0.164377, -0.016174,
		0.075686, -0.536799, 0.840309,
		43.984612, 28.843332, 32.921246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457153, 29.474211, 32.814781>,  <43.931633, 29.219091, 32.333027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457153, 29.474211, 32.814781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.700832, 29.265612, 33.053753>,  <43.847038, 29.140453, 33.197136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.700832, 29.265612, 33.053753>,  <43.457153, 29.474211, 32.814781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700832, 29.265612, 33.053753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075806, 0.788205, 0.610727,
		-0.789388, -0.326764, 0.519704,
		0.609196, -0.521497, 0.597429,
		43.883591, 29.109163, 33.232983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332577, 29.664091, 33.582581>,  <43.457153, 29.474211, 32.814781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332577, 29.664091, 33.582581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.705223, 29.525599, 33.538383>,  <43.928810, 29.442503, 33.511868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.705223, 29.525599, 33.538383>,  <43.332577, 29.664091, 33.582581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705223, 29.525599, 33.538383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333457, 0.693408, 0.638742,
		-0.144541, -0.631908, 0.761446,
		0.931619, -0.346234, -0.110488,
		43.984711, 29.421728, 33.505238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578671, 29.480305, 34.276905>,  <43.332577, 29.664091, 33.582581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578671, 29.480305, 34.276905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918045, 29.531773, 34.071537>,  <44.121670, 29.562654, 33.948315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918045, 29.531773, 34.071537>,  <43.578671, 29.480305, 34.276905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918045, 29.531773, 34.071537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257637, 0.746943, 0.612944,
		0.462365, -0.652319, 0.600581,
		0.848435, 0.128672, -0.513422,
		44.172577, 29.570374, 33.917511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008930, 29.667902, 34.754894>,  <43.578671, 29.480305, 34.276905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008930, 29.667902, 34.754894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215061, 29.773991, 34.428925>,  <44.338741, 29.837645, 34.233345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215061, 29.773991, 34.428925>,  <44.008930, 29.667902, 34.754894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215061, 29.773991, 34.428925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328968, 0.816837, 0.473875,
		0.791342, -0.512282, 0.333684,
		0.515323, 0.265226, -0.814922,
		44.369659, 29.853558, 34.184448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707420, 29.800858, 34.884956>,  <44.008930, 29.667902, 34.754894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707420, 29.800858, 34.884956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.638577, 30.009319, 34.550587>,  <44.597271, 30.134396, 34.349964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.638577, 30.009319, 34.550587>,  <44.707420, 29.800858, 34.884956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638577, 30.009319, 34.550587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240237, 0.845175, 0.477457,
		0.955335, -0.118646, -0.270663,
		-0.172110, 0.521155, -0.835928,
		44.586945, 30.165667, 34.299809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237831, 30.158705, 34.772934>,  <44.707420, 29.800858, 34.884956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237831, 30.158705, 34.772934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.985245, 30.378128, 34.553722>,  <44.833691, 30.509783, 34.422195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.985245, 30.378128, 34.553722>,  <45.237831, 30.158705, 34.772934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985245, 30.378128, 34.553722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372135, 0.834447, 0.406464,
		0.680267, 0.052730, -0.731065,
		-0.631468, 0.548559, -0.548025,
		44.795803, 30.542696, 34.389317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628021, 30.685659, 34.468132>,  <45.237831, 30.158705, 34.772934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628021, 30.685659, 34.468132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.256371, 30.833521, 34.471851>,  <45.033382, 30.922237, 34.474083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.256371, 30.833521, 34.471851>,  <45.628021, 30.685659, 34.468132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256371, 30.833521, 34.471851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332551, 0.824345, 0.458110,
		0.161674, 0.428734, -0.888847,
		-0.929124, 0.369652, 0.009301,
		44.977634, 30.944416, 34.474640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682388, 31.338144, 34.126553>,  <45.628021, 30.685659, 34.468132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682388, 31.338144, 34.126553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.336918, 31.343790, 34.328091>,  <45.129635, 31.347178, 34.449013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.336918, 31.343790, 34.328091>,  <45.682388, 31.338144, 34.126553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336918, 31.343790, 34.328091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235433, 0.895162, 0.378493,
		-0.445680, 0.445518, -0.776455,
		-0.863678, 0.014116, 0.503846,
		45.077816, 31.348024, 34.479244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518784, 31.995293, 34.121845>,  <45.682388, 31.338144, 34.126553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518784, 31.995293, 34.121845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.259842, 31.905567, 34.413219>,  <45.104477, 31.851732, 34.588043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.259842, 31.905567, 34.413219>,  <45.518784, 31.995293, 34.121845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259842, 31.905567, 34.413219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107493, 0.973029, 0.204106,
		-0.754573, 0.053827, -0.654005,
		-0.647352, -0.224314, 0.728435,
		45.065636, 31.838272, 34.631748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976700, 32.342754, 33.890503>,  <45.518784, 31.995293, 34.121845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976700, 32.342754, 33.890503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.916828, 32.294708, 34.283066>,  <44.880905, 32.265881, 34.518604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.916828, 32.294708, 34.283066>,  <44.976700, 32.342754, 33.890503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916828, 32.294708, 34.283066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114049, 0.988066, 0.103532,
		-0.982135, -0.096432, -0.161592,
		-0.149680, -0.120112, 0.981412,
		44.871925, 32.258675, 34.577488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307739, 32.774754, 34.067780>,  <44.976700, 32.342754, 33.890503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307739, 32.774754, 34.067780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.487835, 32.690758, 34.414925>,  <44.595890, 32.640362, 34.623211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.487835, 32.690758, 34.414925>,  <44.307739, 32.774754, 34.067780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487835, 32.690758, 34.414925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151365, 0.939938, 0.305949,
		-0.879986, -0.269114, 0.391410,
		0.450236, -0.209985, 0.867867,
		44.622906, 32.627762, 34.675285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911617, 33.011986, 34.575184>,  <44.307739, 32.774754, 34.067780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911617, 33.011986, 34.575184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271011, 33.010616, 34.750782>,  <44.486649, 33.009796, 34.856140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271011, 33.010616, 34.750782>,  <43.911617, 33.011986, 34.575184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271011, 33.010616, 34.750782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093848, 0.975358, 0.199675,
		-0.428862, -0.220603, 0.876020,
		0.898482, -0.003421, 0.438997,
		44.540554, 33.009590, 34.882481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811481, 33.320541, 35.171253>,  <43.911617, 33.011986, 34.575184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811481, 33.320541, 35.171253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197395, 33.381222, 35.085304>,  <44.428944, 33.417629, 35.033733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197395, 33.381222, 35.085304>,  <43.811481, 33.320541, 35.171253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197395, 33.381222, 35.085304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111349, 0.975670, 0.188862,
		0.238295, -0.158286, 0.958207,
		0.964788, 0.151700, -0.214872,
		44.486832, 33.426731, 35.020844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095688, 33.849735, 35.694336>,  <43.811481, 33.320541, 35.171253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095688, 33.849735, 35.694336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343456, 33.837776, 35.380539>,  <44.492115, 33.830601, 35.192261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343456, 33.837776, 35.380539>,  <44.095688, 33.849735, 35.694336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343456, 33.837776, 35.380539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056136, 0.998403, 0.006272,
		0.783053, -0.047924, 0.620106,
		0.619417, -0.029899, -0.784493,
		44.529282, 33.828808, 35.145191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571072, 34.402294, 35.860634>,  <44.095688, 33.849735, 35.694336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571072, 34.402294, 35.860634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.648006, 34.333141, 35.474243>,  <44.694168, 34.291649, 35.242409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.648006, 34.333141, 35.474243>,  <44.571072, 34.402294, 35.860634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.648006, 34.333141, 35.474243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268618, 0.956038, -0.117622,
		0.943849, -0.236856, 0.230322,
		0.192337, -0.172886, -0.965980,
		44.705708, 34.281277, 35.184448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114494, 34.801674, 35.756618>,  <44.571072, 34.402294, 35.860634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114494, 34.801674, 35.756618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.018295, 34.689716, 35.384850>,  <44.960575, 34.622540, 35.161789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.018295, 34.689716, 35.384850>,  <45.114494, 34.801674, 35.756618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018295, 34.689716, 35.384850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272405, 0.899578, -0.341399,
		0.931641, -0.335285, -0.140103,
		-0.240500, -0.279897, -0.929418,
		44.946144, 34.605747, 35.106026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.782368, 34.870174, 35.267403>,  <45.114494, 34.801674, 35.756618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.782368, 34.870174, 35.267403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.420780, 34.898895, 35.098793>,  <45.203827, 34.916126, 34.997627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.420780, 34.898895, 35.098793>,  <45.782368, 34.870174, 35.267403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420780, 34.898895, 35.098793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262771, 0.870973, -0.415159,
		0.337324, -0.486056, -0.806202,
		-0.903971, 0.071804, -0.421522,
		45.149590, 34.920437, 34.972336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.872444, 35.015171, 34.669285>,  <45.782368, 34.870174, 35.267403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.872444, 35.015171, 34.669285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.487629, 35.124332, 34.668114>,  <45.256741, 35.189831, 34.667412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.487629, 35.124332, 34.668114>,  <45.872444, 35.015171, 34.669285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487629, 35.124332, 34.668114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235770, 0.825639, -0.512574,
		-0.137471, -0.493804, -0.858638,
		-0.962036, 0.272906, -0.002923,
		45.199017, 35.206203, 34.667236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716934, 35.118843, 34.002838>,  <45.872444, 35.015171, 34.669285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716934, 35.118843, 34.002838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.473343, 35.349506, 34.220688>,  <45.327187, 35.487904, 34.351398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.473343, 35.349506, 34.220688>,  <45.716934, 35.118843, 34.002838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473343, 35.349506, 34.220688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282957, 0.799390, -0.530011,
		-0.741001, -0.168659, -0.649979,
		-0.608977, 0.576654, 0.544625,
		45.290649, 35.522503, 34.384075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007187, 34.404827, 33.988518>,  <45.716934, 35.118843, 34.002838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007187, 34.404827, 33.988518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.218422, 34.186409, 33.728374>,  <46.345161, 34.055359, 33.572289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.218422, 34.186409, 33.728374>,  <46.007187, 34.404827, 33.988518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218422, 34.186409, 33.728374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823125, -0.140857, -0.550113,
		0.208778, 0.825832, -0.523845,
		0.528088, -0.546041, -0.650355,
		46.376850, 34.022598, 33.533268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007977, 34.683659, 33.235893>,  <46.007187, 34.404827, 33.988518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007977, 34.683659, 33.235893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.081512, 34.290489, 33.232922>,  <46.125633, 34.054588, 33.231140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.081512, 34.290489, 33.232922>,  <46.007977, 34.683659, 33.235893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081512, 34.290489, 33.232922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840949, -0.153362, -0.518926,
		0.508927, 0.101647, -0.854787,
		0.183839, -0.982928, -0.007430,
		46.136665, 33.995609, 33.230694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.578186, 34.529858, 32.743782>,  <46.007977, 34.683659, 33.235893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.578186, 34.529858, 32.743782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.702095, 34.163754, 32.846809>,  <45.776440, 33.944092, 32.908627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.702095, 34.163754, 32.846809>,  <45.578186, 34.529858, 32.743782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702095, 34.163754, 32.846809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724153, -0.402655, -0.559885,
		0.616152, -0.013084, -0.787519,
		0.309773, -0.915258, 0.257571,
		45.795029, 33.889175, 32.924080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487099, 34.142185, 32.195782>,  <45.578186, 34.529858, 32.743782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487099, 34.142185, 32.195782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.526043, 33.838394, 32.453064>,  <45.549408, 33.656120, 32.607433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.526043, 33.838394, 32.453064>,  <45.487099, 34.142185, 32.195782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526043, 33.838394, 32.453064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829968, -0.418619, -0.368662,
		0.549249, -0.497950, -0.671097,
		0.097359, -0.759476, 0.643209,
		45.555252, 33.610550, 32.646027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430660, 33.526733, 31.830532>,  <45.487099, 34.142185, 32.195782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430660, 33.526733, 31.830532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331928, 33.439537, 32.208221>,  <45.272690, 33.387218, 32.434834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331928, 33.439537, 32.208221>,  <45.430660, 33.526733, 31.830532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331928, 33.439537, 32.208221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811242, -0.486479, -0.324382,
		0.530055, -0.846061, -0.056760,
		-0.246834, -0.217987, 0.944222,
		45.257877, 33.374142, 32.491489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.162346, 32.886398, 31.789865>,  <45.430660, 33.526733, 31.830532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.162346, 32.886398, 31.789865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.039227, 33.006687, 32.150936>,  <44.965355, 33.078861, 32.367577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.039227, 33.006687, 32.150936>,  <45.162346, 32.886398, 31.789865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039227, 33.006687, 32.150936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850180, -0.512856, -0.119046,
		0.427143, -0.804079, 0.413528,
		-0.307803, 0.300724, 0.902675,
		44.946884, 33.096905, 32.421738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930229, 32.261234, 32.185478>,  <45.162346, 32.886398, 31.789865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930229, 32.261234, 32.185478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.746006, 32.576008, 32.349735>,  <44.635471, 32.764870, 32.448292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.746006, 32.576008, 32.349735>,  <44.930229, 32.261234, 32.185478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746006, 32.576008, 32.349735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858600, -0.512301, 0.018775,
		0.225148, -0.343933, 0.911602,
		-0.460558, 0.786929, 0.410644,
		44.607838, 32.812088, 32.472927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581100, 31.990480, 32.721691>,  <44.930229, 32.261234, 32.185478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581100, 31.990480, 32.721691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389435, 32.334824, 32.653183>,  <44.274437, 32.541428, 32.612080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389435, 32.334824, 32.653183>,  <44.581100, 31.990480, 32.721691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389435, 32.334824, 32.653183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877559, -0.473687, 0.074238,
		-0.017219, 0.185869, 0.982424,
		-0.479160, 0.860856, -0.171268,
		44.245686, 32.593079, 32.601803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970608, 31.874359, 33.114986>,  <44.581100, 31.990480, 32.721691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970608, 31.874359, 33.114986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903622, 32.179207, 32.864822>,  <43.863430, 32.362114, 32.714725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903622, 32.179207, 32.864822>,  <43.970608, 31.874359, 33.114986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903622, 32.179207, 32.864822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952729, -0.288219, -0.096114,
		-0.253504, 0.579747, 0.774357,
		-0.167462, 0.762118, -0.625406,
		43.853382, 32.407841, 32.677200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396664, 32.234535, 33.312008>,  <43.970608, 31.874359, 33.114986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396664, 32.234535, 33.312008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439419, 32.316456, 32.922829>,  <43.465073, 32.365608, 32.689320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439419, 32.316456, 32.922829>,  <43.396664, 32.234535, 33.312008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439419, 32.316456, 32.922829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916967, -0.357997, -0.176096,
		-0.384378, 0.910985, 0.149534,
		0.106888, 0.204805, -0.972949,
		43.471485, 32.377899, 32.630943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830933, 32.619514, 33.187462>,  <43.396664, 32.234535, 33.312008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830933, 32.619514, 33.187462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.941299, 32.481857, 32.828476>,  <43.007519, 32.399265, 32.613087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.941299, 32.481857, 32.828476>,  <42.830933, 32.619514, 33.187462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941299, 32.481857, 32.828476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960300, -0.138678, -0.242059,
		-0.041156, 0.928620, -0.368742,
		0.275918, -0.344141, -0.897461,
		43.024075, 32.378616, 32.559238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244442, 32.735863, 32.751595>,  <42.830933, 32.619514, 33.187462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244442, 32.735863, 32.751595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446594, 32.481598, 32.518177>,  <42.567886, 32.329037, 32.378128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446594, 32.481598, 32.518177>,  <42.244442, 32.735863, 32.751595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446594, 32.481598, 32.518177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862449, -0.393879, -0.317871,
		-0.027786, 0.663921, -0.747287,
		0.505382, -0.635664, -0.583542,
		42.598209, 32.290897, 32.343113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940174, 32.681664, 32.107201>,  <42.244442, 32.735863, 32.751595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940174, 32.681664, 32.107201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147617, 32.340481, 32.130920>,  <42.272083, 32.135773, 32.145153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147617, 32.340481, 32.130920>,  <41.940174, 32.681664, 32.107201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147617, 32.340481, 32.130920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793437, -0.505944, -0.338347,
		0.318596, 0.128420, -0.939151,
		0.518608, -0.852953, 0.059299,
		42.303200, 32.084595, 32.148708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047760, 32.313126, 31.352465>,  <41.940174, 32.681664, 32.107201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047760, 32.313126, 31.352465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.097950, 32.042503, 31.642714>,  <42.128063, 31.880131, 31.816862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.097950, 32.042503, 31.642714>,  <42.047760, 32.313126, 31.352465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097950, 32.042503, 31.642714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735627, -0.554194, -0.389514,
		0.665664, -0.484913, -0.567231,
		0.125476, -0.676556, 0.725623,
		42.135593, 31.839537, 31.860401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939270, 31.648827, 31.115705>,  <42.047760, 32.313126, 31.352465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939270, 31.648827, 31.115705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.892784, 31.537556, 31.497095>,  <41.864891, 31.470793, 31.725929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.892784, 31.537556, 31.497095>,  <41.939270, 31.648827, 31.115705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892784, 31.537556, 31.497095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777798, -0.571512, -0.261541,
		0.617676, -0.772005, -0.149947,
		-0.116214, -0.278176, 0.953474,
		41.857922, 31.454103, 31.783136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845829, 30.916803, 31.092630>,  <41.939270, 31.648827, 31.115705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845829, 30.916803, 31.092630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698776, 31.015928, 31.451170>,  <41.610546, 31.075403, 31.666294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698776, 31.015928, 31.451170>,  <41.845829, 30.916803, 31.092630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698776, 31.015928, 31.451170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745047, -0.655308, -0.124403,
		0.556554, -0.713555, 0.425542,
		-0.367630, 0.247812, 0.896347,
		41.588486, 31.090271, 31.720074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684063, 30.363008, 31.427235>,  <41.845829, 30.916803, 31.092630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684063, 30.363008, 31.427235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.452564, 30.625578, 31.620794>,  <41.313663, 30.783119, 31.736931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.452564, 30.625578, 31.620794>,  <41.684063, 30.363008, 31.427235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452564, 30.625578, 31.620794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812469, -0.515269, -0.272750,
		0.070298, -0.551007, 0.831535,
		-0.578751, 0.656422, 0.483898,
		41.278938, 30.822504, 31.765965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245403, 30.030325, 31.905582>,  <41.684063, 30.363008, 31.427235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245403, 30.030325, 31.905582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038040, 30.367329, 31.847027>,  <40.913624, 30.569530, 31.811893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038040, 30.367329, 31.847027>,  <41.245403, 30.030325, 31.905582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038040, 30.367329, 31.847027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855134, -0.510888, 0.087969,
		-0.000675, 0.170788, 0.985308,
		-0.518406, 0.842511, -0.146391,
		40.882519, 30.620083, 31.803110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708347, 30.018166, 32.425209>,  <41.245403, 30.030325, 31.905582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708347, 30.018166, 32.425209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604660, 30.269180, 32.131542>,  <40.542446, 30.419788, 31.955341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604660, 30.269180, 32.131542>,  <40.708347, 30.018166, 32.425209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604660, 30.269180, 32.131542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899818, -0.433097, -0.052489,
		-0.350905, 0.647012, 0.676935,
		-0.259217, 0.627537, -0.734169,
		40.526894, 30.457441, 31.911291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058029, 30.084040, 32.516376>,  <40.708347, 30.018166, 32.425209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058029, 30.084040, 32.516376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.085922, 30.207308, 32.136868>,  <40.102657, 30.281269, 31.909163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.085922, 30.207308, 32.136868>,  <40.058029, 30.084040, 32.516376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085922, 30.207308, 32.136868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838927, -0.496492, -0.222927,
		-0.539757, 0.811497, 0.223908,
		0.069736, 0.308169, -0.948772,
		40.106842, 30.299759, 31.852236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427620, 30.012838, 32.368702>,  <40.058029, 30.084040, 32.516376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427620, 30.012838, 32.368702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.577793, 30.052004, 32.000038>,  <39.667896, 30.075502, 31.778839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.577793, 30.052004, 32.000038>,  <39.427620, 30.012838, 32.368702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577793, 30.052004, 32.000038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741356, -0.565097, -0.362017,
		-0.556276, 0.819194, -0.139566,
		0.375431, 0.097913, -0.921664,
		39.690422, 30.081377, 31.723539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.074100, 40.934460, 38.396240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932911, 40.568230, 38.473324>,  <36.848198, 40.348492, 38.519573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932911, 40.568230, 38.473324>,  <37.074100, 40.934460, 38.396240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932911, 40.568230, 38.473324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795767, -0.402096, -0.452851,
		0.492104, -0.006495, 0.870512,
		-0.352971, -0.915575, 0.192705,
		36.827019, 40.293556, 38.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669342, 40.462635, 38.604786>,  <37.074100, 40.934460, 38.396240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669342, 40.462635, 38.604786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355659, 40.257927, 38.464436>,  <37.167450, 40.135101, 38.380226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355659, 40.257927, 38.464436>,  <37.669342, 40.462635, 38.604786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355659, 40.257927, 38.464436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618534, -0.599713, -0.507701,
		0.049405, -0.615168, 0.786847,
		-0.784204, -0.511775, -0.350873,
		37.120399, 40.104393, 38.359173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867260, 39.740532, 38.655712>,  <37.669342, 40.462635, 38.604786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867260, 39.740532, 38.655712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578262, 39.743862, 38.379181>,  <37.404865, 39.745861, 38.213261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578262, 39.743862, 38.379181>,  <37.867260, 39.740532, 38.655712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578262, 39.743862, 38.379181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534256, -0.627952, -0.565904,
		-0.438833, -0.778208, 0.449241,
		-0.722493, 0.008328, -0.691328,
		37.361515, 39.746361, 38.171783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928391, 39.150299, 38.379082>,  <37.867260, 39.740532, 38.655712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928391, 39.150299, 38.379082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676472, 39.321476, 38.119785>,  <37.525318, 39.424183, 37.964207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676472, 39.321476, 38.119785>,  <37.928391, 39.150299, 38.379082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676472, 39.321476, 38.119785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331267, -0.606867, -0.722478,
		-0.702577, -0.669757, 0.240439,
		-0.629799, 0.427947, -0.648239,
		37.487534, 39.449860, 37.925312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626690, 38.548794, 38.087708>,  <37.928391, 39.150299, 38.379082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626690, 38.548794, 38.087708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578976, 38.868519, 37.852127>,  <37.550346, 39.060356, 37.710777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578976, 38.868519, 37.852127>,  <37.626690, 38.548794, 38.087708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578976, 38.868519, 37.852127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301743, -0.535946, -0.788488,
		-0.945898, -0.271766, -0.177258,
		-0.119284, 0.799316, -0.588953,
		37.543190, 39.108315, 37.675442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189392, 38.310551, 37.504478>,  <37.626690, 38.548794, 38.087708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189392, 38.310551, 37.504478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376575, 38.645947, 37.392799>,  <37.488884, 38.847183, 37.325794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376575, 38.645947, 37.392799>,  <37.189392, 38.310551, 37.504478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376575, 38.645947, 37.392799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121361, -0.373899, -0.919495,
		-0.875378, 0.396402, -0.276729,
		0.467959, 0.838489, -0.279195,
		37.516964, 38.897491, 37.309040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918861, 38.643448, 36.767220>,  <37.189392, 38.310551, 37.504478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918861, 38.643448, 36.767220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292236, 38.774334, 36.826046>,  <37.516262, 38.852867, 36.861343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292236, 38.774334, 36.826046>,  <36.918861, 38.643448, 36.767220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292236, 38.774334, 36.826046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242400, -0.273059, -0.930957,
		-0.264463, 0.904638, -0.334199,
		0.933435, 0.327214, 0.147070,
		37.572266, 38.872498, 36.870167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092968, 38.882004, 36.136986>,  <36.918861, 38.643448, 36.767220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092968, 38.882004, 36.136986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440998, 38.840027, 36.329636>,  <37.649815, 38.814842, 36.445225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440998, 38.840027, 36.329636>,  <37.092968, 38.882004, 36.136986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440998, 38.840027, 36.329636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420152, -0.353082, -0.835946,
		0.257777, 0.929689, -0.263116,
		0.870071, -0.104939, 0.481627,
		37.702019, 38.808544, 36.474125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591679, 39.172832, 35.729900>,  <37.092968, 38.882004, 36.136986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591679, 39.172832, 35.729900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800529, 38.926575, 35.965988>,  <37.925838, 38.778820, 36.107643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800529, 38.926575, 35.965988>,  <37.591679, 39.172832, 35.729900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800529, 38.926575, 35.965988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337043, -0.486769, -0.805890,
		0.783445, 0.619707, -0.046656,
		0.522127, -0.615645, 0.590224,
		37.957169, 38.741882, 36.143055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228920, 39.230949, 35.476746>,  <37.591679, 39.172832, 35.729900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228920, 39.230949, 35.476746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231358, 38.884869, 35.677299>,  <38.232819, 38.677219, 35.797630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231358, 38.884869, 35.677299>,  <38.228920, 39.230949, 35.476746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231358, 38.884869, 35.677299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204789, -0.489686, -0.847508,
		0.978787, 0.107843, 0.174200,
		0.006095, -0.865204, 0.501383,
		38.233185, 38.625309, 35.827713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825008, 38.946648, 35.290649>,  <38.228920, 39.230949, 35.476746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825008, 38.946648, 35.290649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618809, 38.632233, 35.427120>,  <38.495090, 38.443584, 35.509003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618809, 38.632233, 35.427120>,  <38.825008, 38.946648, 35.290649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618809, 38.632233, 35.427120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220844, -0.506582, -0.833428,
		0.827943, -0.354284, 0.434735,
		-0.515499, -0.786039, 0.341180,
		38.464161, 38.396420, 35.529472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222950, 38.355122, 35.015671>,  <38.825008, 38.946648, 35.290649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222950, 38.355122, 35.015671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848869, 38.233997, 35.089104>,  <38.624420, 38.161324, 35.133163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848869, 38.233997, 35.089104>,  <39.222950, 38.355122, 35.015671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848869, 38.233997, 35.089104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096367, -0.716486, -0.690914,
		0.340754, -0.628451, 0.699239,
		-0.935200, -0.302815, 0.183583,
		38.568310, 38.143154, 35.144180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259983, 37.616180, 35.340603>,  <39.222950, 38.355122, 35.015671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259983, 37.616180, 35.340603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994999, 37.736332, 35.066109>,  <38.836006, 37.808422, 34.901413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994999, 37.736332, 35.066109>,  <39.259983, 37.616180, 35.340603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994999, 37.736332, 35.066109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300243, -0.732809, -0.610611,
		-0.686291, -0.610544, 0.395273,
		-0.662464, 0.300379, -0.686232,
		38.796261, 37.826447, 34.860237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028194, 37.271576, 35.372238>,  <39.259983, 37.616180, 35.340603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028194, 37.271576, 35.372238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902130, 36.948288, 35.571213>,  <39.826492, 36.754314, 35.690598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902130, 36.948288, 35.571213>,  <40.028194, 37.271576, 35.372238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902130, 36.948288, 35.571213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062805, 0.505240, 0.860690,
		-0.946958, 0.302498, -0.108472,
		-0.315162, -0.808224, 0.497440,
		39.807583, 36.705822, 35.720444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432999, 36.623100, 35.261810>,  <40.028194, 37.271576, 35.372238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432999, 36.623100, 35.261810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649536, 36.427475, 35.535385>,  <40.779457, 36.310101, 35.699532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649536, 36.427475, 35.535385>,  <40.432999, 36.623100, 35.261810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649536, 36.427475, 35.535385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782454, 0.004724, 0.622691,
		-0.307764, -0.872238, -0.380109,
		0.541339, -0.489060, 0.683939,
		40.811939, 36.280758, 35.740566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079769, 36.059547, 35.402367>,  <40.432999, 36.623100, 35.261810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079769, 36.059547, 35.402367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304703, 36.125217, 35.726547>,  <40.439663, 36.164619, 35.921055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304703, 36.125217, 35.726547>,  <40.079769, 36.059547, 35.402367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304703, 36.125217, 35.726547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798555, -0.146637, 0.583786,
		0.214686, -0.975471, 0.048646,
		0.562333, 0.164177, 0.810449,
		40.473404, 36.174469, 35.969681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570786, 35.913605, 35.792908>,  <40.079769, 36.059547, 35.402367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570786, 35.913605, 35.792908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886959, 35.999542, 36.022358>,  <40.076664, 36.051105, 36.160030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886959, 35.999542, 36.022358>,  <39.570786, 35.913605, 35.792908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886959, 35.999542, 36.022358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568179, -0.092745, 0.817662,
		0.228872, -0.972235, 0.048761,
		0.790437, 0.214845, 0.573629,
		40.124092, 36.063995, 36.194447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680389, 35.369087, 36.260735>,  <39.570786, 35.913605, 35.792908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680389, 35.369087, 36.260735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787121, 35.703869, 36.451859>,  <39.851158, 35.904739, 36.566532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787121, 35.703869, 36.451859>,  <39.680389, 35.369087, 36.260735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787121, 35.703869, 36.451859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581622, -0.255477, 0.772300,
		0.768452, -0.483978, 0.418625,
		0.266827, 0.836957, 0.477814,
		39.867168, 35.954956, 36.595203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757847, 35.100632, 36.974998>,  <39.680389, 35.369087, 36.260735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757847, 35.100632, 36.974998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706013, 35.495571, 36.938427>,  <39.674911, 35.732533, 36.916485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706013, 35.495571, 36.938427>,  <39.757847, 35.100632, 36.974998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706013, 35.495571, 36.938427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714175, -0.028968, 0.699368,
		0.687868, 0.155922, 0.708890,
		-0.129582, 0.987344, -0.091429,
		39.667137, 35.791775, 36.910999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855560, 35.381615, 37.723820>,  <39.757847, 35.100632, 36.974998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855560, 35.381615, 37.723820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667946, 35.661537, 37.508312>,  <39.555378, 35.829491, 37.379005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667946, 35.661537, 37.508312>,  <39.855560, 35.381615, 37.723820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667946, 35.661537, 37.508312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549893, 0.245963, 0.798198,
		0.691104, 0.670649, 0.269454,
		-0.469035, 0.699809, -0.538771,
		39.527237, 35.871479, 37.346680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765095, 35.972546, 38.127113>,  <39.855560, 35.381615, 37.723820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765095, 35.972546, 38.127113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503906, 36.032410, 37.830135>,  <39.347191, 36.068329, 37.651947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503906, 36.032410, 37.830135>,  <39.765095, 35.972546, 38.127113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503906, 36.032410, 37.830135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639261, 0.416796, 0.646240,
		0.406164, 0.896596, -0.176487,
		-0.652975, 0.149658, -0.742446,
		39.308014, 36.077309, 37.607403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504539, 36.648117, 38.221092>,  <39.765095, 35.972546, 38.127113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504539, 36.648117, 38.221092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251904, 36.451637, 37.981155>,  <39.100323, 36.333748, 37.837193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251904, 36.451637, 37.981155>,  <39.504539, 36.648117, 38.221092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251904, 36.451637, 37.981155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773387, 0.344803, 0.531962,
		-0.054473, 0.799895, -0.597663,
		-0.631590, -0.491202, -0.599845,
		39.062428, 36.304276, 37.801201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021030, 37.141777, 38.056911>,  <39.504539, 36.648117, 38.221092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021030, 37.141777, 38.056911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828053, 36.800758, 37.976498>,  <38.712265, 36.596149, 37.928249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828053, 36.800758, 37.976498>,  <39.021030, 37.141777, 38.056911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828053, 36.800758, 37.976498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838187, 0.382697, 0.388568,
		-0.254336, 0.355967, -0.899222,
		-0.482447, -0.852544, -0.201033,
		38.683319, 36.544994, 37.916187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407887, 37.394215, 37.788189>,  <39.021030, 37.141777, 38.056911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407887, 37.394215, 37.788189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354004, 37.011948, 37.892925>,  <38.321674, 36.782589, 37.955769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354004, 37.011948, 37.892925>,  <38.407887, 37.394215, 37.788189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354004, 37.011948, 37.892925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938250, 0.207997, 0.276449,
		-0.318654, -0.208431, -0.924671,
		-0.134708, -0.955664, 0.261839,
		38.313591, 36.725250, 37.971478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796772, 37.228535, 37.462906>,  <38.407887, 37.394215, 37.788189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796772, 37.228535, 37.462906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864838, 36.969181, 37.759727>,  <37.905678, 36.813568, 37.937820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864838, 36.969181, 37.759727>,  <37.796772, 37.228535, 37.462906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864838, 36.969181, 37.759727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946477, 0.102057, 0.306211,
		-0.274274, -0.754442, -0.596314,
		0.170161, -0.648384, 0.742054,
		37.915886, 36.774666, 37.982346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144573, 36.900105, 37.588505>,  <37.796772, 37.228535, 37.462906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144573, 36.900105, 37.588505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338833, 36.810886, 37.926590>,  <37.455391, 36.757355, 38.129440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338833, 36.810886, 37.926590>,  <37.144573, 36.900105, 37.588505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338833, 36.810886, 37.926590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865395, 0.013839, 0.500899,
		-0.123420, -0.974710, -0.186301,
		0.485653, -0.223045, 0.845217,
		37.484528, 36.743973, 38.180157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698318, 36.564484, 37.946434>,  <37.144573, 36.900105, 37.588505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698318, 36.564484, 37.946434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951649, 36.701813, 38.223858>,  <37.103645, 36.784210, 38.390312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951649, 36.701813, 38.223858>,  <36.698318, 36.564484, 37.946434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951649, 36.701813, 38.223858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765915, 0.149772, 0.625255,
		0.110782, -0.927202, 0.357804,
		0.633327, 0.343314, 0.693566,
		37.141647, 36.804810, 38.431927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521412, 36.202805, 38.502232>,  <36.698318, 36.564484, 37.946434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521412, 36.202805, 38.502232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727985, 36.505444, 38.662659>,  <36.851929, 36.687027, 38.758915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727985, 36.505444, 38.662659>,  <36.521412, 36.202805, 38.502232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727985, 36.505444, 38.662659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738859, 0.156935, 0.655331,
		0.432883, -0.634765, 0.640067,
		0.516430, 0.756600, 0.401067,
		36.882915, 36.732422, 38.782978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390896, 35.621521, 38.860157>,  <36.521412, 36.202805, 38.502232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390896, 35.621521, 38.860157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282272, 35.261662, 38.996918>,  <36.217098, 35.045746, 39.078976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282272, 35.261662, 38.996918>,  <36.390896, 35.621521, 38.860157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282272, 35.261662, 38.996918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123056, -0.319880, -0.939433,
		0.954524, -0.297180, -0.023842,
		-0.271554, -0.899645, 0.341902,
		36.200806, 34.991768, 39.099487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670712, 35.189388, 38.339073>,  <36.390896, 35.621521, 38.860157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670712, 35.189388, 38.339073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391300, 34.969780, 38.522652>,  <36.223656, 34.838013, 38.632797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391300, 34.969780, 38.522652>,  <36.670712, 35.189388, 38.339073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391300, 34.969780, 38.522652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148072, -0.516581, -0.843338,
		0.700097, -0.657051, 0.279550,
		-0.698526, -0.549025, 0.458948,
		36.181744, 34.805073, 38.660336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803612, 34.498722, 38.109173>,  <36.670712, 35.189388, 38.339073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803612, 34.498722, 38.109173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428711, 34.486668, 38.248112>,  <36.203770, 34.479435, 38.331474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428711, 34.486668, 38.248112>,  <36.803612, 34.498722, 38.109173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428711, 34.486668, 38.248112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291683, -0.477976, -0.828529,
		0.190991, -0.877856, 0.439194,
		-0.937253, -0.030136, 0.347345,
		36.147533, 34.477627, 38.352314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519176, 33.687424, 37.997295>,  <36.803612, 34.498722, 38.109173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519176, 33.687424, 37.997295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193531, 33.915981, 38.038738>,  <35.998146, 34.053116, 38.063606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193531, 33.915981, 38.038738>,  <36.519176, 33.687424, 37.997295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193531, 33.915981, 38.038738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402255, -0.426193, -0.810278,
		-0.418819, -0.701341, 0.576812,
		-0.814114, 0.571385, 0.103620,
		35.949299, 34.087399, 38.069820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968548, 33.286510, 37.812130>,  <36.519176, 33.687424, 37.997295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968548, 33.286510, 37.812130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850311, 33.666672, 37.773449>,  <35.779369, 33.894768, 37.750240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850311, 33.666672, 37.773449>,  <35.968548, 33.286510, 37.812130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850311, 33.666672, 37.773449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433529, -0.223659, -0.872943,
		-0.851279, -0.216114, 0.478141,
		-0.295595, 0.950406, -0.096704,
		35.761631, 33.951794, 37.744438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306324, 33.207855, 37.512150>,  <35.968548, 33.286510, 37.812130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306324, 33.207855, 37.512150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407135, 33.588249, 37.440475>,  <35.467621, 33.816486, 37.397472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407135, 33.588249, 37.440475>,  <35.306324, 33.207855, 37.512150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407135, 33.588249, 37.440475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510867, -0.026514, -0.859251,
		-0.821886, 0.308095, 0.479145,
		0.252027, 0.950986, -0.179187,
		35.482742, 33.873547, 37.386719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657719, 33.548115, 37.315037>,  <35.306324, 33.207855, 37.512150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657719, 33.548115, 37.315037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940945, 33.791832, 37.172260>,  <35.110878, 33.938065, 37.086594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940945, 33.791832, 37.172260>,  <34.657719, 33.548115, 37.315037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940945, 33.791832, 37.172260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536109, 0.134839, -0.833310,
		-0.459602, 0.781395, 0.422123,
		0.708062, 0.609295, -0.356941,
		35.153362, 33.974621, 37.065178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313168, 34.094101, 37.016087>,  <34.657719, 33.548115, 37.315037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313168, 34.094101, 37.016087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653461, 34.096752, 36.805866>,  <34.857639, 34.098343, 36.679733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653461, 34.096752, 36.805866>,  <34.313168, 34.094101, 37.016087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653461, 34.096752, 36.805866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521731, 0.131628, -0.842894,
		0.063593, 0.991277, 0.115437,
		0.850736, 0.006625, -0.525551,
		34.908684, 34.098740, 36.648201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264641, 34.688717, 36.562775>,  <34.313168, 34.094101, 37.016087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264641, 34.688717, 36.562775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554024, 34.463394, 36.403130>,  <34.727654, 34.328201, 36.307343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554024, 34.463394, 36.403130>,  <34.264641, 34.688717, 36.562775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554024, 34.463394, 36.403130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379623, 0.158256, -0.911505,
		0.576621, 0.810949, -0.099354,
		0.723460, -0.563310, -0.399108,
		34.771061, 34.294403, 36.283398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504162, 35.026718, 36.012520>,  <34.264641, 34.688717, 36.562775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504162, 35.026718, 36.012520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614491, 34.651768, 35.927429>,  <34.680687, 34.426796, 35.876373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614491, 34.651768, 35.927429>,  <34.504162, 35.026718, 36.012520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614491, 34.651768, 35.927429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255624, 0.141812, -0.956319,
		0.926596, 0.318148, -0.200501,
		0.275817, -0.937375, -0.212729,
		34.697235, 34.370556, 35.863609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657009, 35.103607, 35.305172>,  <34.504162, 35.026718, 36.012520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657009, 35.103607, 35.305172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655453, 34.705204, 35.340839>,  <34.654518, 34.466164, 35.362240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655453, 34.705204, 35.340839>,  <34.657009, 35.103607, 35.305172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655453, 34.705204, 35.340839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444801, -0.078144, -0.892214,
		0.895621, -0.043133, -0.442722,
		-0.003888, -0.996009, 0.089173,
		34.654285, 34.406403, 35.367592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986004, 34.845142, 34.704224>,  <34.657009, 35.103607, 35.305172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986004, 34.845142, 34.704224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742641, 34.566559, 34.856422>,  <34.596622, 34.399406, 34.947742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742641, 34.566559, 34.856422>,  <34.986004, 34.845142, 34.704224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742641, 34.566559, 34.856422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496443, -0.040068, -0.867144,
		0.619180, -0.716473, -0.321377,
		-0.608408, -0.696464, 0.380497,
		34.560120, 34.357620, 34.970573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.031155, 36.340782, 42.336861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.690510, 36.139854, 42.396782>,  <37.486122, 36.019299, 42.432735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.690510, 36.139854, 42.396782>,  <38.031155, 36.340782, 42.336861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690510, 36.139854, 42.396782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105896, -0.444762, -0.889367,
		0.513372, -0.741527, 0.431956,
		-0.851607, -0.502318, 0.149804,
		37.435028, 35.989159, 42.441723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027374, 35.690617, 42.042824>,  <38.031155, 36.340782, 42.336861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027374, 35.690617, 42.042824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633873, 35.747955, 42.086060>,  <37.397774, 35.782360, 42.112003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633873, 35.747955, 42.086060>,  <38.027374, 35.690617, 42.042824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633873, 35.747955, 42.086060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161585, -0.444510, -0.881080,
		-0.078253, -0.884230, 0.460450,
		-0.983752, 0.143349, 0.108094,
		37.338749, 35.790958, 42.118488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776295, 35.073345, 41.673164>,  <38.027374, 35.690617, 42.042824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776295, 35.073345, 41.673164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449139, 35.299255, 41.717140>,  <37.252846, 35.434799, 41.743526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449139, 35.299255, 41.717140>,  <37.776295, 35.073345, 41.673164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449139, 35.299255, 41.717140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305501, -0.264357, -0.914759,
		-0.487570, -0.781758, 0.388754,
		-0.817891, 0.564773, 0.109935,
		37.203770, 35.468689, 41.750122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191181, 34.628963, 41.727608>,  <37.776295, 35.073345, 41.673164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191181, 34.628963, 41.727608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065918, 34.987705, 41.602657>,  <36.990761, 35.202950, 41.527687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065918, 34.987705, 41.602657>,  <37.191181, 34.628963, 41.727608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065918, 34.987705, 41.602657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413836, -0.424922, -0.805097,
		-0.854793, -0.122850, 0.504220,
		-0.313160, 0.896855, -0.312381,
		36.971970, 35.256763, 41.508942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374268, 34.551796, 41.594284>,  <37.191181, 34.628963, 41.727608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374268, 34.551796, 41.594284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477173, 34.890961, 41.408871>,  <36.538918, 35.094460, 41.297623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477173, 34.890961, 41.408871>,  <36.374268, 34.551796, 41.594284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477173, 34.890961, 41.408871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327077, -0.374959, -0.867425,
		-0.909306, 0.374765, 0.180870,
		0.257262, 0.847913, -0.463529,
		36.554352, 35.145336, 41.269814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817169, 34.704018, 41.149761>,  <36.374268, 34.551796, 41.594284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817169, 34.704018, 41.149761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.142567, 34.878708, 40.996136>,  <36.337803, 34.983521, 40.903961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.142567, 34.878708, 40.996136>,  <35.817169, 34.704018, 41.149761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142567, 34.878708, 40.996136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225274, -0.372206, -0.900397,
		-0.536174, 0.818985, -0.204404,
		0.813491, 0.436723, -0.384064,
		36.386616, 35.009724, 40.880917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616756, 35.158463, 40.641090>,  <35.817169, 34.704018, 41.149761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616756, 35.158463, 40.641090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.998962, 35.101395, 40.537834>,  <36.228287, 35.067154, 40.475880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.998962, 35.101395, 40.537834>,  <35.616756, 35.158463, 40.641090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998962, 35.101395, 40.537834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288906, -0.276519, -0.916554,
		0.059378, 0.950360, -0.305434,
		0.955514, -0.142665, -0.258145,
		36.285618, 35.058594, 40.460392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705345, 35.536079, 40.044922>,  <35.616756, 35.158463, 40.641090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705345, 35.536079, 40.044922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.024918, 35.296417, 40.024044>,  <36.216660, 35.152622, 40.011517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.024918, 35.296417, 40.024044>,  <35.705345, 35.536079, 40.044922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024918, 35.296417, 40.024044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160494, -0.128759, -0.978602,
		0.579612, 0.790213, -0.199030,
		0.798932, -0.599153, -0.052194,
		36.264599, 35.116673, 40.008385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032726, 35.744427, 39.465012>,  <35.705345, 35.536079, 40.044922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032726, 35.744427, 39.465012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.133671, 35.362843, 39.529839>,  <36.194237, 35.133892, 39.568733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.133671, 35.362843, 39.529839>,  <36.032726, 35.744427, 39.465012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133671, 35.362843, 39.529839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206597, -0.216742, -0.954118,
		0.945321, 0.207302, -0.251784,
		0.252363, -0.953965, 0.162063,
		36.209381, 35.076653, 39.578457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709454, 36.101425, 39.376556>,  <36.032726, 35.744427, 39.465012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709454, 36.101425, 39.376556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722099, 36.484177, 39.261051>,  <36.729687, 36.713829, 39.191750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722099, 36.484177, 39.261051>,  <36.709454, 36.101425, 39.376556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722099, 36.484177, 39.261051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670877, 0.234474, 0.703524,
		0.740895, 0.171481, 0.649361,
		0.031618, 0.956879, -0.288763,
		36.731586, 36.771240, 39.174423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581081, 36.416161, 39.965935>,  <36.709454, 36.101425, 39.376556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581081, 36.416161, 39.965935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.551250, 36.732220, 39.722591>,  <36.533352, 36.921856, 39.576584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.551250, 36.732220, 39.722591>,  <36.581081, 36.416161, 39.965935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551250, 36.732220, 39.722591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564317, 0.469539, 0.679028,
		0.822183, 0.393948, 0.410878,
		-0.074578, 0.790151, -0.608359,
		36.528877, 36.969265, 39.540085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925564, 37.037189, 40.184624>,  <36.581081, 36.416161, 39.965935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925564, 37.037189, 40.184624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.625774, 37.158981, 39.949482>,  <36.445900, 37.232056, 39.808395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.625774, 37.158981, 39.949482>,  <36.925564, 37.037189, 40.184624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625774, 37.158981, 39.949482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414588, 0.476414, 0.775336,
		0.516139, 0.824814, -0.230827,
		-0.749478, 0.304483, -0.587855,
		36.400932, 37.250328, 39.773125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882778, 37.832474, 40.311859>,  <36.925564, 37.037189, 40.184624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882778, 37.832474, 40.311859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.538563, 37.705193, 40.152748>,  <36.332035, 37.628826, 40.057281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.538563, 37.705193, 40.152748>,  <36.882778, 37.832474, 40.311859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538563, 37.705193, 40.152748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498342, 0.364167, 0.786789,
		-0.105499, 0.875290, -0.471951,
		-0.860538, -0.318199, -0.397774,
		36.280403, 37.609734, 40.033417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502224, 38.477325, 40.269749>,  <36.882778, 37.832474, 40.311859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502224, 38.477325, 40.269749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249409, 38.167412, 40.263691>,  <36.097717, 37.981464, 40.260056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249409, 38.167412, 40.263691>,  <36.502224, 38.477325, 40.269749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249409, 38.167412, 40.263691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637780, 0.508979, 0.578080,
		-0.440180, 0.375030, -0.815840,
		-0.632043, -0.774785, -0.015145,
		36.059795, 37.934975, 40.259148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864567, 38.855679, 40.393925>,  <36.502224, 38.477325, 40.269749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864567, 38.855679, 40.393925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.760197, 38.472141, 40.438725>,  <35.697575, 38.242020, 40.465607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.760197, 38.472141, 40.438725>,  <35.864567, 38.855679, 40.393925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760197, 38.472141, 40.438725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614160, 0.254394, 0.747056,
		-0.744799, 0.126139, -0.655258,
		-0.260926, -0.958839, 0.112003,
		35.681919, 38.184490, 40.472324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235603, 38.871307, 40.588692>,  <35.864567, 38.855679, 40.393925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235603, 38.871307, 40.588692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336067, 38.498154, 40.691959>,  <35.396343, 38.274261, 40.753922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.336067, 38.498154, 40.691959>,  <35.235603, 38.871307, 40.588692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336067, 38.498154, 40.691959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490674, 0.107205, 0.864723,
		-0.834362, -0.343859, -0.430815,
		0.251157, -0.932881, 0.258171,
		35.411415, 38.218288, 40.769409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544895, 38.512676, 40.805649>,  <35.235603, 38.871307, 40.588692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544895, 38.512676, 40.805649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852436, 38.315166, 40.968155>,  <35.036961, 38.196659, 41.065659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852436, 38.315166, 40.968155>,  <34.544895, 38.512676, 40.805649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852436, 38.315166, 40.968155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349930, 0.206848, 0.913653,
		-0.535176, -0.844628, -0.013752,
		0.768853, -0.493778, 0.406261,
		35.083092, 38.167034, 41.090034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327591, 38.044201, 41.400463>,  <34.544895, 38.512676, 40.805649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327591, 38.044201, 41.400463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.712261, 38.107880, 41.489765>,  <34.943062, 38.146088, 41.543346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.712261, 38.107880, 41.489765>,  <34.327591, 38.044201, 41.400463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712261, 38.107880, 41.489765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255930, 0.228876, 0.939210,
		0.098422, -0.960350, 0.260847,
		0.961672, 0.159197, 0.223256,
		35.000763, 38.155640, 41.556744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459038, 37.847664, 42.139267>,  <34.327591, 38.044201, 41.400463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459038, 37.847664, 42.139267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.775799, 38.063183, 42.024315>,  <34.965855, 38.192493, 41.955345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.775799, 38.063183, 42.024315>,  <34.459038, 37.847664, 42.139267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775799, 38.063183, 42.024315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033298, 0.431810, 0.901350,
		0.609737, -0.723351, 0.324012,
		0.791904, 0.538797, -0.287377,
		35.013371, 38.224823, 41.938103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991043, 37.795277, 42.619869>,  <34.459038, 37.847664, 42.139267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991043, 37.795277, 42.619869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.092579, 38.134525, 42.433853>,  <35.153500, 38.338074, 42.322243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.092579, 38.134525, 42.433853>,  <34.991043, 37.795277, 42.619869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092579, 38.134525, 42.433853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115049, 0.450900, 0.885129,
		0.960381, -0.278180, 0.016879,
		0.253836, 0.848119, -0.465040,
		35.168728, 38.388962, 42.294342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615215, 37.934406, 42.833549>,  <34.991043, 37.795277, 42.619869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615215, 37.934406, 42.833549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.460876, 38.279915, 42.703926>,  <35.368275, 38.487221, 42.626152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.460876, 38.279915, 42.703926>,  <35.615215, 37.934406, 42.833549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460876, 38.279915, 42.703926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167362, 0.410970, 0.896155,
		0.907257, 0.291539, -0.303133,
		-0.385843, 0.863776, -0.324063,
		35.345123, 38.539047, 42.606709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035324, 38.408337, 43.169849>,  <35.615215, 37.934406, 42.833549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035324, 38.408337, 43.169849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.722187, 38.636993, 43.071560>,  <35.534306, 38.774189, 43.012585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.722187, 38.636993, 43.071560>,  <36.035324, 38.408337, 43.169849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722187, 38.636993, 43.071560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085032, 0.489499, 0.867848,
		0.616384, 0.658492, -0.431808,
		-0.782841, 0.571646, -0.245726,
		35.487335, 38.808487, 42.997841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257778, 39.047638, 43.026783>,  <36.035324, 38.408337, 43.169849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257778, 39.047638, 43.026783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873837, 39.061932, 43.138069>,  <35.643471, 39.070507, 43.204842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873837, 39.061932, 43.138069>,  <36.257778, 39.047638, 43.026783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873837, 39.061932, 43.138069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222043, 0.702862, 0.675783,
		-0.171394, 0.710428, -0.682580,
		-0.959855, 0.035737, 0.278212,
		35.585880, 39.072651, 43.221531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.172215, 38.515602, 44.940269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.556293, 38.403996, 44.935036>,  <31.786741, 38.337032, 44.931896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.556293, 38.403996, 44.935036>,  <31.172215, 38.515602, 44.940269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556293, 38.403996, 44.935036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038549, -0.085974, -0.995551,
		0.276647, 0.956431, -0.093308,
		0.960198, -0.279014, -0.013085,
		31.844353, 38.320290, 44.931110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501255, 38.900433, 44.419460>,  <31.172215, 38.515602, 44.940269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501255, 38.900433, 44.419460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758089, 38.595661, 44.453365>,  <31.912189, 38.412796, 44.473709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758089, 38.595661, 44.453365>,  <31.501255, 38.900433, 44.419460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758089, 38.595661, 44.453365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093098, -0.032254, -0.995134,
		0.760959, 0.646853, 0.050225,
		0.642086, -0.761932, 0.084765,
		31.950714, 38.367081, 44.478794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061726, 39.013084, 43.946102>,  <31.501255, 38.900433, 44.419460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061726, 39.013084, 43.946102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112812, 38.617054, 43.969543>,  <32.143463, 38.379436, 43.983608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112812, 38.617054, 43.969543>,  <32.061726, 39.013084, 43.946102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112812, 38.617054, 43.969543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111148, -0.044425, -0.992810,
		0.985563, 0.133310, 0.104372,
		0.127715, -0.990078, 0.058601,
		32.151127, 38.320030, 43.987125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552677, 38.835899, 43.483879>,  <32.061726, 39.013084, 43.946102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552677, 38.835899, 43.483879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.414890, 38.465740, 43.547104>,  <32.332218, 38.243645, 43.585037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.414890, 38.465740, 43.547104>,  <32.552677, 38.835899, 43.483879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414890, 38.465740, 43.547104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215957, -0.241956, -0.945949,
		0.913621, -0.291717, 0.283192,
		-0.344469, -0.925396, 0.158058,
		32.311550, 38.188122, 43.594521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103935, 38.160732, 43.411560>,  <32.552677, 38.835899, 43.483879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103935, 38.160732, 43.411560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727478, 38.053272, 43.329517>,  <32.501602, 37.988796, 43.280293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727478, 38.053272, 43.329517>,  <33.103935, 38.160732, 43.411560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727478, 38.053272, 43.329517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290832, -0.334461, -0.896411,
		0.172219, -0.903306, 0.392909,
		-0.941146, -0.268650, -0.205110,
		32.445133, 37.972679, 43.267982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088001, 37.539268, 42.887589>,  <33.103935, 38.160732, 43.411560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088001, 37.539268, 42.887589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.707115, 37.658039, 42.858982>,  <32.478584, 37.729301, 42.841820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.707115, 37.658039, 42.858982>,  <33.088001, 37.539268, 42.887589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707115, 37.658039, 42.858982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017751, -0.287557, -0.957599,
		-0.304914, -0.910570, 0.279087,
		-0.952214, 0.296939, -0.071516,
		32.421448, 37.747116, 42.837528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795475, 37.079418, 42.363678>,  <33.088001, 37.539268, 42.887589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795475, 37.079418, 42.363678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516258, 37.365410, 42.379375>,  <32.348728, 37.537006, 42.388794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516258, 37.365410, 42.379375>,  <32.795475, 37.079418, 42.363678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516258, 37.365410, 42.379375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279509, -0.221607, -0.934219,
		-0.659249, -0.663096, 0.354534,
		-0.698045, 0.714978, 0.039247,
		32.306847, 37.579903, 42.391151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251450, 36.732025, 42.064842>,  <32.795475, 37.079418, 42.363678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251450, 36.732025, 42.064842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.202385, 37.128677, 42.048737>,  <32.172947, 37.366669, 42.039074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.202385, 37.128677, 42.048737>,  <32.251450, 36.732025, 42.064842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202385, 37.128677, 42.048737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085111, -0.050930, -0.995069,
		-0.988792, -0.118629, 0.090646,
		-0.122660, 0.991631, -0.040262,
		32.165588, 37.426167, 42.036659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682980, 36.753738, 41.578526>,  <32.251450, 36.732025, 42.064842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682980, 36.753738, 41.578526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.869944, 37.107319, 41.573425>,  <31.982122, 37.319466, 41.570366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.869944, 37.107319, 41.573425>,  <31.682980, 36.753738, 41.578526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869944, 37.107319, 41.573425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041812, 0.007700, -0.999096,
		-0.883051, 0.467521, 0.040559,
		0.467411, 0.883949, -0.012748,
		32.010166, 37.372505, 41.569599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508352, 36.974094, 40.991726>,  <31.682980, 36.753738, 41.578526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508352, 36.974094, 40.991726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754766, 37.277542, 41.076584>,  <31.902615, 37.459610, 41.127499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754766, 37.277542, 41.076584>,  <31.508352, 36.974094, 40.991726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754766, 37.277542, 41.076584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098301, 0.193170, -0.976229,
		-0.781561, 0.622245, 0.044426,
		0.616035, 0.758615, 0.212142,
		31.939577, 37.505127, 41.140224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275587, 37.613522, 40.685745>,  <31.508352, 36.974094, 40.991726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275587, 37.613522, 40.685745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.669205, 37.665226, 40.734653>,  <31.905375, 37.696247, 40.763996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.669205, 37.665226, 40.734653>,  <31.275587, 37.613522, 40.685745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669205, 37.665226, 40.734653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101923, 0.153737, -0.982841,
		-0.145836, 0.979621, 0.138110,
		0.984044, 0.129258, 0.122266,
		31.964418, 37.704002, 40.771332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416252, 38.307102, 40.465981>,  <31.275587, 37.613522, 40.685745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416252, 38.307102, 40.465981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.769394, 38.120728, 40.489548>,  <31.981279, 38.008904, 40.503689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.769394, 38.120728, 40.489548>,  <31.416252, 38.307102, 40.465981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769394, 38.120728, 40.489548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201332, 0.262146, -0.943793,
		0.424302, 0.845094, 0.325244,
		0.882855, -0.465935, 0.058916,
		32.034252, 37.980946, 40.507221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830395, 38.714905, 39.940399>,  <31.416252, 38.307102, 40.465981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830395, 38.714905, 39.940399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.027031, 38.372505, 40.004414>,  <32.145012, 38.167065, 40.042820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.027031, 38.372505, 40.004414>,  <31.830395, 38.714905, 39.940399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027031, 38.372505, 40.004414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431341, 0.079704, -0.898661,
		0.756496, 0.510800, 0.408408,
		0.491588, -0.855997, 0.160033,
		32.174507, 38.115707, 40.052425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521042, 38.864586, 39.653660>,  <31.830395, 38.714905, 39.940399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521042, 38.864586, 39.653660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.421730, 38.477379, 39.668053>,  <32.362141, 38.245056, 39.676689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.421730, 38.477379, 39.668053>,  <32.521042, 38.864586, 39.653660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421730, 38.477379, 39.668053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102511, -0.063197, -0.992722,
		0.963248, -0.242788, 0.114924,
		-0.248283, -0.968019, 0.035986,
		32.347244, 38.186974, 39.678848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133652, 38.896000, 39.271805>,  <32.521042, 38.864586, 39.653660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133652, 38.896000, 39.271805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.155300, 39.255962, 39.098721>,  <33.168289, 39.471939, 38.994869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.155300, 39.255962, 39.098721>,  <33.133652, 38.896000, 39.271805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155300, 39.255962, 39.098721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232068, 0.432813, 0.871101,
		0.971192, 0.053269, 0.232266,
		0.054124, 0.899908, -0.432706,
		33.171539, 39.525936, 38.968910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596642, 39.333561, 39.566048>,  <33.133652, 38.896000, 39.271805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596642, 39.333561, 39.566048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344711, 39.593014, 39.395123>,  <33.193554, 39.748684, 39.292568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344711, 39.593014, 39.395123>,  <33.596642, 39.333561, 39.566048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344711, 39.593014, 39.395123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183915, 0.409957, 0.893370,
		0.754646, 0.641259, -0.138910,
		-0.629829, 0.648630, -0.427310,
		33.155762, 39.787601, 39.266930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654743, 39.958946, 39.845921>,  <33.596642, 39.333561, 39.566048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654743, 39.958946, 39.845921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291298, 40.023926, 39.692024>,  <33.073231, 40.062912, 39.599686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291298, 40.023926, 39.692024>,  <33.654743, 39.958946, 39.845921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291298, 40.023926, 39.692024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239295, 0.552514, 0.798415,
		0.342277, 0.817520, -0.463150,
		-0.908617, 0.162450, -0.384741,
		33.018711, 40.072662, 39.576603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558609, 40.518040, 40.180935>,  <33.654743, 39.958946, 39.845921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558609, 40.518040, 40.180935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.193344, 40.442730, 40.036335>,  <32.974186, 40.397545, 39.949577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.193344, 40.442730, 40.036335>,  <33.558609, 40.518040, 40.180935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193344, 40.442730, 40.036335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401130, 0.257880, 0.878972,
		-0.072264, 0.947655, -0.311010,
		-0.913166, -0.188274, -0.361498,
		32.919395, 40.386250, 39.927887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239040, 41.151443, 40.233566>,  <33.558609, 40.518040, 40.180935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239040, 41.151443, 40.233566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.935764, 40.891273, 40.215256>,  <32.753799, 40.735172, 40.204269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.935764, 40.891273, 40.215256>,  <33.239040, 41.151443, 40.233566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935764, 40.891273, 40.215256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380762, 0.384660, 0.840867,
		-0.529313, 0.654966, -0.539302,
		-0.758187, -0.650428, -0.045781,
		32.708309, 40.696144, 40.201523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541737, 41.579514, 40.408455>,  <33.239040, 41.151443, 40.233566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541737, 41.579514, 40.408455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505646, 41.186222, 40.471859>,  <32.483994, 40.950249, 40.509903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505646, 41.186222, 40.471859>,  <32.541737, 41.579514, 40.408455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505646, 41.186222, 40.471859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354531, 0.180442, 0.917469,
		-0.930681, 0.026582, -0.364864,
		-0.090225, -0.983227, 0.158509,
		32.478577, 40.891254, 40.519413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862167, 41.456295, 40.684040>,  <32.541737, 41.579514, 40.408455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862167, 41.456295, 40.684040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.074116, 41.130234, 40.777645>,  <32.201286, 40.934597, 40.833809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.074116, 41.130234, 40.777645>,  <31.862167, 41.456295, 40.684040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074116, 41.130234, 40.777645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209709, 0.141430, 0.967481,
		-0.821740, -0.561717, -0.096005,
		0.529872, -0.815151, 0.234016,
		32.233078, 40.885689, 40.847851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583616, 41.255192, 41.314224>,  <31.862167, 41.456295, 40.684040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583616, 41.255192, 41.314224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.914989, 41.031227, 41.308685>,  <32.113815, 40.896847, 41.305363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.914989, 41.031227, 41.308685>,  <31.583616, 41.255192, 41.314224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914989, 41.031227, 41.308685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082890, -0.147018, 0.985655,
		-0.553918, -0.815403, -0.168206,
		0.828435, -0.559914, -0.013847,
		32.163521, 40.863255, 41.304531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515009, 40.616367, 41.739796>,  <31.583616, 41.255192, 41.314224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515009, 40.616367, 41.739796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912960, 40.650909, 41.718773>,  <32.151730, 40.671635, 41.706161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912960, 40.650909, 41.718773>,  <31.515009, 40.616367, 41.739796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912960, 40.650909, 41.718773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053752, -0.011595, 0.998487,
		0.085616, -0.996197, -0.016178,
		0.994878, 0.086356, -0.052555,
		32.211422, 40.676815, 41.703007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802597, 40.062660, 42.151020>,  <31.515009, 40.616367, 41.739796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802597, 40.062660, 42.151020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.102074, 40.325817, 42.118420>,  <32.281757, 40.483711, 42.098858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.102074, 40.325817, 42.118420>,  <31.802597, 40.062660, 42.151020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102074, 40.325817, 42.118420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183009, -0.086956, 0.979258,
		0.637159, -0.748075, -0.185504,
		0.748689, 0.657892, -0.081500,
		32.326679, 40.523186, 42.093971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303886, 39.786934, 42.552258>,  <31.802597, 40.062660, 42.151020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303886, 39.786934, 42.552258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404255, 40.173027, 42.522957>,  <32.464478, 40.404682, 42.505375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404255, 40.173027, 42.522957>,  <32.303886, 39.786934, 42.552258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404255, 40.173027, 42.522957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174388, 0.029360, 0.984239,
		0.952170, -0.259739, -0.160958,
		0.250920, 0.965233, -0.073251,
		32.479530, 40.462597, 42.500980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997112, 39.810913, 42.938274>,  <32.303886, 39.786934, 42.552258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997112, 39.810913, 42.938274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.806946, 40.161037, 42.902916>,  <32.692848, 40.371113, 42.881702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.806946, 40.161037, 42.902916>,  <32.997112, 39.810913, 42.938274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806946, 40.161037, 42.902916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203449, 0.207140, 0.956923,
		0.855915, 0.436950, -0.276558,
		-0.475413, 0.875310, -0.088397,
		32.664322, 40.423630, 42.876396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478622, 40.352100, 43.114880>,  <32.997112, 39.810913, 42.938274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478622, 40.352100, 43.114880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.125626, 40.535454, 43.157021>,  <32.913830, 40.645466, 43.182304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.125626, 40.535454, 43.157021>,  <33.478622, 40.352100, 43.114880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125626, 40.535454, 43.157021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240438, 0.247150, 0.938673,
		0.404229, 0.853701, -0.328319,
		-0.882490, 0.458380, 0.105357,
		32.860878, 40.672966, 43.188629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601772, 41.109196, 43.387817>,  <33.478622, 40.352100, 43.114880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601772, 41.109196, 43.387817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226509, 41.029438, 43.501022>,  <33.001350, 40.981583, 43.568947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226509, 41.029438, 43.501022>,  <33.601772, 41.109196, 43.387817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226509, 41.029438, 43.501022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137551, 0.535498, 0.833260,
		-0.317702, 0.820660, -0.474956,
		-0.938160, -0.199398, 0.283012,
		32.945061, 40.969620, 43.585926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692986, 41.802166, 42.988605>,  <33.601772, 41.109196, 43.387817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692986, 41.802166, 42.988605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.024609, 42.025059, 43.007164>,  <34.223583, 42.158794, 43.018299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.024609, 42.025059, 43.007164>,  <33.692986, 41.802166, 42.988605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024609, 42.025059, 43.007164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286191, -0.351574, -0.891342,
		-0.480374, 0.752252, -0.450951,
		0.829057, 0.557236, 0.046401,
		34.273327, 42.192230, 43.021084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728321, 41.993095, 42.292252>,  <33.692986, 41.802166, 42.988605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728321, 41.993095, 42.292252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.074493, 42.070095, 42.477280>,  <34.282196, 42.116295, 42.588299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.074493, 42.070095, 42.477280>,  <33.728321, 41.993095, 42.292252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074493, 42.070095, 42.477280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490117, -0.516908, -0.701849,
		0.104003, 0.834116, -0.541695,
		0.865430, 0.192500, 0.462575,
		34.334122, 42.127846, 42.616051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022152, 42.339729, 41.793640>,  <33.728321, 41.993095, 42.292252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022152, 42.339729, 41.793640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311192, 42.200890, 42.032764>,  <34.484615, 42.117588, 42.176239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311192, 42.200890, 42.032764>,  <34.022152, 42.339729, 41.793640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311192, 42.200890, 42.032764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510152, -0.315803, -0.800008,
		0.466470, 0.883058, -0.051127,
		0.722600, -0.347097, 0.597807,
		34.527973, 42.096760, 42.212105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625755, 42.655949, 41.462090>,  <34.022152, 42.339729, 41.793640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625755, 42.655949, 41.462090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.721519, 42.334770, 41.680431>,  <34.778980, 42.142063, 41.811436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.721519, 42.334770, 41.680431>,  <34.625755, 42.655949, 41.462090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721519, 42.334770, 41.680431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451320, -0.405738, -0.794787,
		0.859646, 0.436639, 0.265246,
		0.239415, -0.802946, 0.545855,
		34.793343, 42.093887, 41.844189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388870, 42.441715, 41.343357>,  <34.625755, 42.655949, 41.462090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388870, 42.441715, 41.343357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.211369, 42.112915, 41.486134>,  <35.104866, 41.915634, 41.571800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.211369, 42.112915, 41.486134>,  <35.388870, 42.441715, 41.343357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211369, 42.112915, 41.486134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450927, -0.549018, -0.703736,
		0.774433, -0.151333, 0.614289,
		-0.443754, -0.821996, 0.356938,
		35.078243, 41.866318, 41.593216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912762, 41.961216, 41.411045>,  <35.388870, 42.441715, 41.343357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912762, 41.961216, 41.411045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576588, 41.744869, 41.424488>,  <35.374882, 41.615059, 41.432552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576588, 41.744869, 41.424488>,  <35.912762, 41.961216, 41.411045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576588, 41.744869, 41.424488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359659, -0.603096, -0.711984,
		0.405356, -0.586291, 0.701391,
		-0.840436, -0.540869, 0.033604,
		35.324455, 41.582607, 41.434570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071934, 41.142899, 41.531212>,  <35.912762, 41.961216, 41.411045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071934, 41.142899, 41.531212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.710892, 41.159069, 41.359787>,  <35.494267, 41.168774, 41.256931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.710892, 41.159069, 41.359787>,  <36.071934, 41.142899, 41.531212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710892, 41.159069, 41.359787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347033, -0.520717, -0.780014,
		-0.254697, -0.852772, 0.455972,
		-0.902606, 0.040430, -0.428565,
		35.440109, 41.171200, 41.231216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060699, 40.479919, 41.258610>,  <36.071934, 41.142899, 41.531212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060699, 40.479919, 41.258610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.754459, 40.669369, 41.084465>,  <35.570713, 40.783039, 40.979977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.754459, 40.669369, 41.084465>,  <36.060699, 40.479919, 41.258610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754459, 40.669369, 41.084465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188350, -0.482067, -0.855650,
		-0.615125, -0.737087, 0.279865,
		-0.765602, 0.473619, -0.435361,
		35.524780, 40.811455, 40.953857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659145, 39.964840, 40.931133>,  <36.060699, 40.479919, 41.258610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659145, 39.964840, 40.931133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596710, 40.310081, 40.739010>,  <35.559250, 40.517227, 40.623737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596710, 40.310081, 40.739010>,  <35.659145, 39.964840, 40.931133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596710, 40.310081, 40.739010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261959, -0.432682, -0.862649,
		-0.952373, -0.260470, -0.158560,
		-0.156088, 0.863100, -0.480307,
		35.549885, 40.569012, 40.594917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291241, 39.798695, 40.316307>,  <35.659145, 39.964840, 40.931133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291241, 39.798695, 40.316307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460842, 40.153961, 40.245445>,  <35.562603, 40.367119, 40.202930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460842, 40.153961, 40.245445>,  <35.291241, 39.798695, 40.316307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460842, 40.153961, 40.245445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114022, -0.246399, -0.962438,
		-0.898452, 0.387882, -0.205746,
		0.424008, 0.888164, -0.177151,
		35.588043, 40.420410, 40.192299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004398, 39.990902, 39.706951>,  <35.291241, 39.798695, 40.316307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004398, 39.990902, 39.706951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327343, 40.224823, 39.738358>,  <35.521111, 40.365177, 39.757202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327343, 40.224823, 39.738358>,  <35.004398, 39.990902, 39.706951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327343, 40.224823, 39.738358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304455, -0.298890, -0.904418,
		-0.505440, 0.754100, -0.419360,
		0.807364, 0.584806, 0.078519,
		35.569553, 40.400265, 39.761913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093575, 40.353245, 39.009602>,  <35.004398, 39.990902, 39.706951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093575, 40.353245, 39.009602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.452240, 40.411030, 39.176998>,  <35.667439, 40.445702, 39.277435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.452240, 40.411030, 39.176998>,  <35.093575, 40.353245, 39.009602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452240, 40.411030, 39.176998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442535, -0.265156, -0.856654,
		-0.012787, 0.953323, -0.301683,
		0.896660, 0.144459, 0.418488,
		35.721237, 40.454369, 39.302544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616707, 40.655167, 38.500961>,  <35.093575, 40.353245, 39.009602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616707, 40.655167, 38.500961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.856331, 40.493114, 38.777222>,  <36.000107, 40.395882, 38.942978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.856331, 40.493114, 38.777222>,  <35.616707, 40.655167, 38.500961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856331, 40.493114, 38.777222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635438, -0.284265, -0.717922,
		0.487182, 0.868941, 0.087147,
		0.599059, -0.405135, 0.690647,
		36.036049, 40.371574, 38.984417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256821, 40.991707, 38.433861>,  <35.616707, 40.655167, 38.500961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256821, 40.991707, 38.433861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336086, 40.645363, 38.617607>,  <36.383644, 40.437557, 38.727856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336086, 40.645363, 38.617607>,  <36.256821, 40.991707, 38.433861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336086, 40.645363, 38.617607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646757, -0.236649, -0.725054,
		0.736504, 0.440776, 0.513106,
		0.198160, -0.865860, 0.459368,
		36.395535, 40.385605, 38.755417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.460537, 38.273167, 29.169588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.260283, 38.367031, 28.836290>,  <30.140131, 38.423351, 28.636311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.260283, 38.367031, 28.836290>,  <30.460537, 38.273167, 29.169588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260283, 38.367031, 28.836290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862219, -0.049452, 0.504116,
		0.077092, 0.970818, 0.227090,
		-0.500634, 0.234664, -0.833245,
		30.110092, 38.437431, 28.586317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020945, 38.836166, 29.256409>,  <30.460537, 38.273167, 29.169588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020945, 38.836166, 29.256409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852777, 38.631550, 28.956656>,  <29.751877, 38.508781, 28.776804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852777, 38.631550, 28.956656>,  <30.020945, 38.836166, 29.256409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852777, 38.631550, 28.956656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856339, -0.049272, 0.514058,
		-0.299885, 0.857846, -0.417337,
		-0.420419, -0.511540, -0.749383,
		29.726652, 38.478088, 28.731840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386902, 39.253689, 29.099977>,  <30.020945, 38.836166, 29.256409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386902, 39.253689, 29.099977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349615, 38.882332, 28.956093>,  <29.327244, 38.659515, 28.869762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349615, 38.882332, 28.956093>,  <29.386902, 39.253689, 29.099977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349615, 38.882332, 28.956093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893613, -0.081305, 0.441412,
		-0.439051, 0.362591, -0.822047,
		-0.093216, -0.928395, -0.359713,
		29.321650, 38.603813, 28.848179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658440, 39.152077, 28.823935>,  <29.386902, 39.253689, 29.099977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658440, 39.152077, 28.823935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794765, 38.782200, 28.891798>,  <28.876562, 38.560272, 28.932516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794765, 38.782200, 28.891798>,  <28.658440, 39.152077, 28.823935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794765, 38.782200, 28.891798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811641, -0.198336, 0.549456,
		-0.474430, -0.324967, -0.818116,
		0.340817, -0.924694, 0.169660,
		28.897011, 38.504791, 28.942696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989647, 38.775848, 28.781183>,  <28.658440, 39.152077, 28.823935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989647, 38.775848, 28.781183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247223, 38.522507, 28.952862>,  <28.401768, 38.370502, 29.055868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247223, 38.522507, 28.952862>,  <27.989647, 38.775848, 28.781183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247223, 38.522507, 28.952862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765071, -0.530864, 0.364486,
		-0.003003, -0.563072, -0.826402,
		0.643939, -0.633351, 0.429195,
		28.440405, 38.332500, 29.081621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660915, 37.972790, 28.659426>,  <27.989647, 38.775848, 28.781183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660915, 37.972790, 28.659426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.905497, 38.029598, 28.970798>,  <28.052246, 38.063683, 29.157621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.905497, 38.029598, 28.970798>,  <27.660915, 37.972790, 28.659426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905497, 38.029598, 28.970798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574659, -0.596579, 0.560233,
		0.543958, -0.789889, -0.283170,
		0.611455, 0.142017, 0.778430,
		28.088934, 38.072205, 29.204329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893322, 37.275436, 28.904184>,  <27.660915, 37.972790, 28.659426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893322, 37.275436, 28.904184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.943150, 37.523968, 29.213619>,  <27.973047, 37.673084, 29.399281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.943150, 37.523968, 29.213619>,  <27.893322, 37.275436, 28.904184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943150, 37.523968, 29.213619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532231, -0.616157, 0.580587,
		0.837384, -0.484051, 0.253934,
		0.124570, 0.621326, 0.773587,
		27.980520, 37.710365, 29.445696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048578, 36.815407, 29.511944>,  <27.893322, 37.275436, 28.904184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048578, 36.815407, 29.511944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936291, 37.161430, 29.678255>,  <27.868919, 37.369045, 29.778042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936291, 37.161430, 29.678255>,  <28.048578, 36.815407, 29.511944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936291, 37.161430, 29.678255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406018, -0.499555, 0.765241,
		0.869682, 0.046003, 0.491463,
		-0.280717, 0.865060, 0.415776,
		27.852076, 37.420948, 29.802988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214867, 36.753517, 30.146719>,  <28.048578, 36.815407, 29.511944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214867, 36.753517, 30.146719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.948383, 37.049206, 30.186161>,  <27.788494, 37.226620, 30.209826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.948383, 37.049206, 30.186161>,  <28.214867, 36.753517, 30.146719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948383, 37.049206, 30.186161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421028, -0.481941, 0.768420,
		0.615552, 0.470412, 0.632304,
		-0.666207, 0.739220, 0.098603,
		27.748522, 37.270973, 30.215742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162895, 36.883339, 30.938251>,  <28.214867, 36.753517, 30.146719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162895, 36.883339, 30.938251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.857594, 37.102009, 30.800508>,  <27.674412, 37.233212, 30.717863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.857594, 37.102009, 30.800508>,  <28.162895, 36.883339, 30.938251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857594, 37.102009, 30.800508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535652, -0.237394, 0.810383,
		0.361270, 0.802986, 0.474022,
		-0.763257, 0.546678, -0.344358,
		27.628616, 37.266014, 30.697201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875336, 37.280163, 31.592115>,  <28.162895, 36.883339, 30.938251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875336, 37.280163, 31.592115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596323, 37.254601, 31.306637>,  <27.428915, 37.239265, 31.135349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596323, 37.254601, 31.306637>,  <27.875336, 37.280163, 31.592115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596323, 37.254601, 31.306637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713193, -0.034439, 0.700121,
		-0.069317, 0.997362, -0.021552,
		-0.697532, -0.063901, -0.713699,
		27.387064, 37.235432, 31.092527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307737, 37.839531, 31.697138>,  <27.875336, 37.280163, 31.592115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307737, 37.839531, 31.697138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.171373, 37.529316, 31.484600>,  <27.089556, 37.343189, 31.357079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.171373, 37.529316, 31.484600>,  <27.307737, 37.839531, 31.697138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171373, 37.529316, 31.484600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513896, -0.319547, 0.796117,
		-0.787206, 0.544458, -0.289608,
		-0.340909, -0.775536, -0.531343,
		27.069101, 37.296654, 31.325197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641193, 37.727062, 31.913717>,  <27.307737, 37.839531, 31.697138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641193, 37.727062, 31.913717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688589, 37.373993, 31.731798>,  <26.717026, 37.162151, 31.622646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688589, 37.373993, 31.731798>,  <26.641193, 37.727062, 31.913717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688589, 37.373993, 31.731798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461589, -0.454489, 0.761823,
		-0.879145, 0.119663, -0.461286,
		0.118487, -0.882678, -0.454797,
		26.724134, 37.109188, 31.595360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963844, 37.438171, 32.037273>,  <26.641193, 37.727062, 31.913717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963844, 37.438171, 32.037273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199200, 37.139034, 31.914293>,  <26.340412, 36.959553, 31.840506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199200, 37.139034, 31.914293>,  <25.963844, 37.438171, 32.037273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199200, 37.139034, 31.914293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353712, -0.579979, 0.733834,
		-0.727110, -0.323030, -0.605774,
		0.588387, -0.747848, -0.307449,
		26.375715, 36.914680, 31.822060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606270, 36.808933, 31.984711>,  <25.963844, 37.438171, 32.037273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606270, 36.808933, 31.984711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.986231, 36.697815, 32.042000>,  <26.214209, 36.631145, 32.076374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.986231, 36.697815, 32.042000>,  <25.606270, 36.808933, 31.984711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986231, 36.697815, 32.042000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291616, -0.622909, 0.725910,
		-0.112439, -0.731310, -0.672713,
		0.949904, -0.277794, 0.143222,
		26.271202, 36.614475, 32.084965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644154, 36.075294, 31.974752>,  <25.606270, 36.808933, 31.984711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644154, 36.075294, 31.974752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.972172, 36.201363, 32.165829>,  <26.168983, 36.277004, 32.280476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.972172, 36.201363, 32.165829>,  <25.644154, 36.075294, 31.974752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972172, 36.201363, 32.165829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242963, -0.564011, 0.789215,
		0.518161, -0.763256, -0.385940,
		0.820047, 0.315171, 0.477692,
		26.218185, 36.295914, 32.309135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938992, 35.432781, 32.311085>,  <25.644154, 36.075294, 31.974752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938992, 35.432781, 32.311085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098221, 35.738934, 32.513363>,  <26.193758, 35.922626, 32.634731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098221, 35.738934, 32.513363>,  <25.938992, 35.432781, 32.311085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098221, 35.738934, 32.513363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163758, -0.483111, 0.860109,
		0.902620, -0.425196, -0.066975,
		0.398071, 0.765383, 0.505695,
		26.217642, 35.968548, 32.665070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405643, 35.105595, 32.788673>,  <25.938992, 35.432781, 32.311085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405643, 35.105595, 32.788673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350212, 35.465908, 32.953304>,  <26.316954, 35.682095, 33.052082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350212, 35.465908, 32.953304>,  <26.405643, 35.105595, 32.788673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350212, 35.465908, 32.953304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283447, -0.434274, 0.855023,
		0.948922, 0.001829, 0.315504,
		-0.138579, 0.900779, 0.411574,
		26.308638, 35.736141, 33.076778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639887, 35.039890, 33.398056>,  <26.405643, 35.105595, 32.788673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639887, 35.039890, 33.398056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.394583, 35.355694, 33.407810>,  <26.247400, 35.545174, 33.413662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.394583, 35.355694, 33.407810>,  <26.639887, 35.039890, 33.398056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394583, 35.355694, 33.407810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514969, -0.423033, 0.745553,
		0.598932, 0.444662, 0.666000,
		-0.613259, 0.789505, 0.024381,
		26.210606, 35.592545, 33.415123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600235, 35.317642, 34.087631>,  <26.639887, 35.039890, 33.398056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600235, 35.317642, 34.087631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.271217, 35.493057, 33.942795>,  <26.073807, 35.598305, 33.855892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.271217, 35.493057, 33.942795>,  <26.600235, 35.317642, 34.087631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271217, 35.493057, 33.942795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541259, -0.408265, 0.735090,
		0.174536, 0.800628, 0.573178,
		-0.822542, 0.438537, -0.362090,
		26.024454, 35.624619, 33.834167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164696, 34.878342, 33.915115>,  <26.600235, 35.317642, 34.087631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164696, 34.878342, 33.915115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.492937, 34.651497, 33.943398>,  <27.689882, 34.515392, 33.960365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.492937, 34.651497, 33.943398>,  <27.164696, 34.878342, 33.915115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492937, 34.651497, 33.943398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434168, 0.538174, -0.722403,
		0.371631, 0.623503, 0.687848,
		0.820602, -0.567109, 0.070702,
		27.739119, 34.481365, 33.964607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635187, 35.418652, 33.908867>,  <27.164696, 34.878342, 33.915115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635187, 35.418652, 33.908867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.824902, 35.076214, 33.826740>,  <27.938730, 34.870750, 33.777466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.824902, 35.076214, 33.826740>,  <27.635187, 35.418652, 33.908867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824902, 35.076214, 33.826740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659496, 0.499989, -0.561315,
		0.583195, 0.130820, 0.801730,
		0.474287, -0.856094, -0.205316,
		27.967188, 34.819386, 33.765144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341125, 35.493103, 34.153248>,  <27.635187, 35.418652, 33.908867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341125, 35.493103, 34.153248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326626, 35.220798, 33.860603>,  <28.317926, 35.057415, 33.685017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326626, 35.220798, 33.860603>,  <28.341125, 35.493103, 34.153248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326626, 35.220798, 33.860603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734438, 0.478321, -0.481467,
		0.677707, -0.554772, 0.482640,
		-0.036247, -0.680762, -0.731607,
		28.315752, 35.016571, 33.641121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109627, 35.254627, 34.111328>,  <28.341125, 35.493103, 34.153248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109627, 35.254627, 34.111328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.920210, 35.153595, 33.773815>,  <28.806561, 35.092976, 33.571308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.920210, 35.153595, 33.773815>,  <29.109627, 35.254627, 34.111328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920210, 35.153595, 33.773815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812426, 0.244748, -0.529209,
		0.340181, -0.936110, 0.089304,
		-0.473540, -0.252580, -0.843779,
		28.778149, 35.077820, 33.520683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676542, 34.943550, 33.720612>,  <29.109627, 35.254627, 34.111328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676542, 34.943550, 33.720612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385668, 35.027771, 33.459270>,  <29.211143, 35.078304, 33.302467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.385668, 35.027771, 33.459270>,  <29.676542, 34.943550, 33.720612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385668, 35.027771, 33.459270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676996, 0.377303, -0.631917,
		0.113462, -0.901838, -0.416910,
		-0.727188, 0.210548, -0.653350,
		29.167511, 35.090935, 33.263264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031914, 34.767624, 33.084003>,  <29.676542, 34.943550, 33.720612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031914, 34.767624, 33.084003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.705240, 34.963810, 32.962364>,  <29.509237, 35.081520, 32.889381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.705240, 34.963810, 32.962364>,  <30.031914, 34.767624, 33.084003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705240, 34.963810, 32.962364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496367, 0.328222, -0.803673,
		-0.294364, -0.807288, -0.511504,
		-0.816682, 0.490466, -0.304094,
		29.460236, 35.110950, 32.871136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106716, 34.727882, 32.406254>,  <30.031914, 34.767624, 33.084003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106716, 34.727882, 32.406254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.848064, 35.030815, 32.442738>,  <29.692873, 35.212574, 32.464630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.848064, 35.030815, 32.442738>,  <30.106716, 34.727882, 32.406254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848064, 35.030815, 32.442738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438631, 0.466987, -0.767806,
		-0.624079, -0.456477, -0.634156,
		-0.646628, 0.757332, 0.091212,
		29.654076, 35.258015, 32.470100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120047, 34.950806, 31.812113>,  <30.106716, 34.727882, 32.406254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120047, 34.950806, 31.812113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947937, 35.267208, 31.986092>,  <29.844671, 35.457050, 32.090481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947937, 35.267208, 31.986092>,  <30.120047, 34.950806, 31.812113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947937, 35.267208, 31.986092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434709, 0.603847, -0.668129,
		-0.791133, -0.098402, -0.603676,
		-0.430274, 0.791003, 0.434947,
		29.818855, 35.504509, 32.116577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807154, 35.441364, 31.273590>,  <30.120047, 34.950806, 31.812113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807154, 35.441364, 31.273590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883366, 35.654236, 31.603556>,  <29.929092, 35.781960, 31.801535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883366, 35.654236, 31.603556>,  <29.807154, 35.441364, 31.273590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883366, 35.654236, 31.603556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438908, 0.705464, -0.556489,
		-0.878099, 0.468090, -0.099164,
		0.190530, 0.532176, 0.824916,
		29.940525, 35.813889, 31.851030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750933, 36.149422, 31.018307>,  <29.807154, 35.441364, 31.273590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750933, 36.149422, 31.018307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947248, 36.156498, 31.366747>,  <30.065037, 36.160744, 31.575811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947248, 36.156498, 31.366747>,  <29.750933, 36.149422, 31.018307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947248, 36.156498, 31.366747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545339, 0.773502, -0.322956,
		-0.679509, 0.633548, 0.369980,
		0.490788, 0.017688, 0.871100,
		30.094484, 36.161804, 31.628077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751547, 36.892151, 31.313314>,  <29.750933, 36.149422, 31.018307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751547, 36.892151, 31.313314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.045704, 36.685257, 31.488432>,  <30.222198, 36.561119, 31.593502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.045704, 36.685257, 31.488432>,  <29.751547, 36.892151, 31.313314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045704, 36.685257, 31.488432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675242, 0.613655, -0.409238,
		-0.056980, 0.596567, 0.800538,
		0.735392, -0.517238, 0.437793,
		30.266321, 36.530087, 31.619770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202965, 37.370361, 31.656668>,  <29.751547, 36.892151, 31.313314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202965, 37.370361, 31.656668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.431181, 37.049866, 31.584564>,  <30.568111, 36.857567, 31.541302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.431181, 37.049866, 31.584564>,  <30.202965, 37.370361, 31.656668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431181, 37.049866, 31.584564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727339, 0.594895, -0.342167,
		0.381393, 0.064113, 0.922187,
		0.570542, -0.801242, -0.180257,
		30.602345, 36.809494, 31.530487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745178, 37.696053, 31.599344>,  <30.202965, 37.370361, 31.656668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745178, 37.696053, 31.599344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888958, 37.338753, 31.491350>,  <30.975225, 37.124371, 31.426554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888958, 37.338753, 31.491350>,  <30.745178, 37.696053, 31.599344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888958, 37.338753, 31.491350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792108, 0.445017, -0.417761,
		0.493314, -0.063692, 0.867516,
		0.359452, -0.893254, -0.269985,
		30.996794, 37.070778, 31.410355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541494, 37.607727, 31.816442>,  <30.745178, 37.696053, 31.599344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541494, 37.607727, 31.816442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.468672, 37.348156, 31.520943>,  <31.424978, 37.192413, 31.343643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.468672, 37.348156, 31.520943>,  <31.541494, 37.607727, 31.816442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468672, 37.348156, 31.520943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766112, 0.377350, -0.520268,
		0.616382, -0.660684, 0.428450,
		-0.182057, -0.648925, -0.738750,
		31.414055, 37.153477, 31.299318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171143, 37.225204, 31.544149>,  <31.541494, 37.607727, 31.816442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171143, 37.225204, 31.544149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.900454, 37.270325, 31.253132>,  <31.738039, 37.297398, 31.078522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.900454, 37.270325, 31.253132>,  <32.171143, 37.225204, 31.544149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900454, 37.270325, 31.253132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667512, 0.510896, -0.541677,
		0.310595, -0.852210, -0.421034,
		-0.676727, 0.112803, -0.727541,
		31.697435, 37.304165, 31.034870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489788, 37.780231, 31.172968>,  <32.171143, 37.225204, 31.544149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489788, 37.780231, 31.172968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.232018, 37.650574, 30.895943>,  <32.077354, 37.572781, 30.729727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.232018, 37.650574, 30.895943>,  <32.489788, 37.780231, 31.172968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232018, 37.650574, 30.895943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505608, 0.498831, -0.703938,
		0.573650, -0.803802, -0.157570,
		-0.644428, -0.324145, -0.692563,
		32.038689, 37.553329, 30.688173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837223, 37.574802, 30.606268>,  <32.489788, 37.780231, 31.172968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837223, 37.574802, 30.606268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.484886, 37.610218, 30.420244>,  <32.273483, 37.631466, 30.308630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.484886, 37.610218, 30.420244>,  <32.837223, 37.574802, 30.606268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484886, 37.610218, 30.420244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449662, 0.463711, -0.763397,
		0.148064, -0.881551, -0.448268,
		-0.880841, 0.088538, -0.465059,
		32.220634, 37.636780, 30.280725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895992, 37.270473, 29.838058>,  <32.837223, 37.574802, 30.606268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895992, 37.270473, 29.838058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.610199, 37.549244, 29.862782>,  <32.438725, 37.716507, 29.877615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.610199, 37.549244, 29.862782>,  <32.895992, 37.270473, 29.838058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610199, 37.549244, 29.862782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433862, 0.510625, -0.742311,
		-0.548893, -0.503550, -0.667198,
		-0.714479, 0.696922, 0.061808,
		32.395855, 37.758320, 29.881323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601425, 37.385460, 29.166370>,  <32.895992, 37.270473, 29.838058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601425, 37.385460, 29.166370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.511463, 37.720608, 29.365326>,  <32.457485, 37.921696, 29.484699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.511463, 37.720608, 29.365326>,  <32.601425, 37.385460, 29.166370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511463, 37.720608, 29.365326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270380, 0.544086, -0.794270,
		-0.936115, -0.044155, -0.348912,
		-0.224909, 0.837867, 0.497389,
		32.443989, 37.971970, 29.514542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129532, 37.837421, 28.762365>,  <32.601425, 37.385460, 29.166370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129532, 37.837421, 28.762365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323856, 38.082409, 29.011805>,  <32.440453, 38.229401, 29.161469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323856, 38.082409, 29.011805>,  <32.129532, 37.837421, 28.762365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323856, 38.082409, 29.011805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228892, 0.599404, -0.767023,
		-0.843561, 0.515365, 0.151009,
		0.485812, 0.612465, 0.623597,
		32.469601, 38.266148, 29.198883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886921, 38.477386, 28.534685>,  <32.129532, 37.837421, 28.762365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886921, 38.477386, 28.534685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.228004, 38.535679, 28.735346>,  <32.432655, 38.570656, 28.855742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.228004, 38.535679, 28.735346>,  <31.886921, 38.477386, 28.534685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228004, 38.535679, 28.735346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297642, 0.653636, -0.695823,
		-0.429302, 0.742645, 0.513983,
		0.852707, 0.145735, 0.501650,
		32.483818, 38.579399, 28.885841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960243, 39.205139, 28.599234>,  <31.886921, 38.477386, 28.534685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960243, 39.205139, 28.599234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.327934, 39.051353, 28.633202>,  <32.548550, 38.959084, 28.653584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.327934, 39.051353, 28.633202>,  <31.960243, 39.205139, 28.599234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327934, 39.051353, 28.633202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337602, 0.658643, -0.672469,
		0.202608, 0.646820, 0.735237,
		0.919225, -0.384465, 0.084921,
		32.603703, 38.936012, 28.658678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.036953, 39.750381, 42.984173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772926, 39.568386, 43.223270>,  <35.614510, 39.459187, 43.366730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772926, 39.568386, 43.223270>,  <36.036953, 39.750381, 42.984173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772926, 39.568386, 43.223270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124712, 0.718297, 0.684468,
		-0.740784, 0.526339, -0.417379,
		-0.660065, -0.454991, 0.597744,
		35.574905, 39.431889, 43.402596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631432, 40.294518, 43.243469>,  <36.036953, 39.750381, 42.984173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631432, 40.294518, 43.243469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596008, 39.975182, 43.481735>,  <35.574753, 39.783581, 43.624695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596008, 39.975182, 43.481735>,  <35.631432, 40.294518, 43.243469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596008, 39.975182, 43.481735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184636, 0.574492, 0.797414,
		-0.978809, 0.180599, 0.096526,
		-0.088558, -0.798338, 0.595663,
		35.569439, 39.735680, 43.660435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311096, 40.596794, 43.754391>,  <35.631432, 40.294518, 43.243469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311096, 40.596794, 43.754391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444054, 40.247501, 43.896927>,  <35.523827, 40.037926, 43.982449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444054, 40.247501, 43.896927>,  <35.311096, 40.596794, 43.754391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444054, 40.247501, 43.896927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270865, 0.450292, 0.850805,
		-0.903408, -0.186282, 0.386203,
		0.332394, -0.873233, 0.356340,
		35.543774, 39.985531, 44.003830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922585, 40.468838, 44.405930>,  <35.311096, 40.596794, 43.754391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922585, 40.468838, 44.405930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245316, 40.232807, 44.417564>,  <35.438953, 40.091190, 44.424545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245316, 40.232807, 44.417564>,  <34.922585, 40.468838, 44.405930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245316, 40.232807, 44.417564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186973, 0.301735, 0.934878,
		-0.560426, -0.748843, 0.353775,
		0.806823, -0.590076, 0.029087,
		35.487362, 40.055786, 44.426292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006218, 40.220531, 45.061138>,  <34.922585, 40.468838, 44.405930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006218, 40.220531, 45.061138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377556, 40.137604, 44.937729>,  <35.600361, 40.087849, 44.863682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377556, 40.137604, 44.937729>,  <35.006218, 40.220531, 45.061138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377556, 40.137604, 44.937729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371527, 0.491513, 0.787644,
		-0.011651, -0.845833, 0.533320,
		0.928349, -0.207320, -0.308523,
		35.656059, 40.075409, 44.845173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355724, 39.969566, 45.593594>,  <35.006218, 40.220531, 45.061138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355724, 39.969566, 45.593594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672756, 40.071350, 45.371941>,  <35.862976, 40.132420, 45.238949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672756, 40.071350, 45.371941>,  <35.355724, 39.969566, 45.593594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672756, 40.071350, 45.371941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413642, 0.443334, 0.795208,
		0.448055, -0.859467, 0.246095,
		0.792557, 0.254502, -0.554150,
		35.910530, 40.147690, 45.205700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952621, 39.704006, 45.988392>,  <35.355724, 39.969566, 45.593594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952621, 39.704006, 45.988392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.118526, 39.961891, 45.731544>,  <36.218071, 40.116623, 45.577435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.118526, 39.961891, 45.731544>,  <35.952621, 39.704006, 45.988392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118526, 39.961891, 45.731544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609316, 0.327319, 0.722216,
		0.675800, -0.690802, -0.257075,
		0.414763, 0.644714, -0.642119,
		36.242954, 40.155304, 45.538910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608368, 39.638752, 46.122807>,  <35.952621, 39.704006, 45.988392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608368, 39.638752, 46.122807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562561, 40.004211, 45.966793>,  <36.535076, 40.223488, 45.873184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562561, 40.004211, 45.966793>,  <36.608368, 39.638752, 46.122807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562561, 40.004211, 45.966793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583818, 0.379556, 0.717700,
		0.803767, -0.145521, -0.576872,
		-0.114515, 0.913653, -0.390032,
		36.528206, 40.278309, 45.849785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272442, 39.914124, 46.139942>,  <36.608368, 39.638752, 46.122807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272442, 39.914124, 46.139942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041271, 40.237045, 46.092167>,  <36.902569, 40.430798, 46.063499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041271, 40.237045, 46.092167>,  <37.272442, 39.914124, 46.139942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041271, 40.237045, 46.092167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663385, 0.549969, 0.507399,
		0.475314, 0.214003, -0.853393,
		-0.577925, 0.807302, -0.119442,
		36.867893, 40.479237, 46.056335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731716, 40.485394, 45.932682>,  <37.272442, 39.914124, 46.139942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731716, 40.485394, 45.932682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407513, 40.670372, 46.076473>,  <37.212990, 40.781361, 46.162746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407513, 40.670372, 46.076473>,  <37.731716, 40.485394, 45.932682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407513, 40.670372, 46.076473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584941, 0.607268, 0.537652,
		0.030337, 0.646042, -0.762698,
		-0.810508, 0.462445, 0.359474,
		37.164360, 40.809105, 46.184315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833839, 41.283653, 45.895367>,  <37.731716, 40.485394, 45.932682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833839, 41.283653, 45.895367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529633, 41.258987, 46.153919>,  <37.347107, 41.244186, 46.309052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529633, 41.258987, 46.153919>,  <37.833839, 41.283653, 45.895367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529633, 41.258987, 46.153919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412865, 0.722400, 0.554689,
		-0.501153, 0.688720, -0.523938,
		-0.760519, -0.061668, 0.646381,
		37.301476, 41.240486, 46.347832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578968, 41.933792, 45.987816>,  <37.833839, 41.283653, 45.895367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578968, 41.933792, 45.987816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.501514, 41.717529, 46.315277>,  <37.455040, 41.587772, 46.511753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.501514, 41.717529, 46.315277>,  <37.578968, 41.933792, 45.987816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501514, 41.717529, 46.315277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491502, 0.668719, 0.557889,
		-0.849076, 0.510400, 0.136243,
		-0.193638, -0.540654, 0.818656,
		37.443424, 41.555332, 46.560875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182251, 42.359196, 46.554321>,  <37.578968, 41.933792, 45.987816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182251, 42.359196, 46.554321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.453552, 42.087383, 46.666183>,  <37.616333, 41.924297, 46.733303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.453552, 42.087383, 46.666183>,  <37.182251, 42.359196, 46.554321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453552, 42.087383, 46.666183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472038, 0.694583, 0.542895,
		-0.563159, -0.236212, 0.791869,
		0.678256, -0.679528, 0.279659,
		37.657028, 41.883526, 46.750080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504513, 42.616505, 47.236240>,  <37.182251, 42.359196, 46.554321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504513, 42.616505, 47.236240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.763916, 42.342003, 47.104488>,  <37.919559, 42.177303, 47.025436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.763916, 42.342003, 47.104488>,  <37.504513, 42.616505, 47.236240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763916, 42.342003, 47.104488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750124, 0.502573, 0.429809,
		-0.129419, -0.525813, 0.840697,
		0.648510, -0.686252, -0.329382,
		37.958469, 42.136127, 47.005672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195957, 43.077663, 47.733711>,  <37.504513, 42.616505, 47.236240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195957, 43.077663, 47.733711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.858143, 43.200600, 47.909119>,  <36.655453, 43.274361, 48.014362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.858143, 43.200600, 47.909119>,  <37.195957, 43.077663, 47.733711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858143, 43.200600, 47.909119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522213, -0.291413, -0.801481,
		-0.118538, -0.905881, 0.406606,
		-0.844537, 0.307341, 0.438519,
		36.604782, 43.292801, 48.040672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721020, 42.527313, 47.833717>,  <37.195957, 43.077663, 47.733711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721020, 42.527313, 47.833717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536720, 42.880116, 47.794167>,  <36.426140, 43.091797, 47.770435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536720, 42.880116, 47.794167>,  <36.721020, 42.527313, 47.833717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536720, 42.880116, 47.794167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326559, -0.272067, -0.905174,
		-0.825268, -0.384771, 0.413381,
		-0.460752, 0.882004, -0.098878,
		36.398495, 43.144718, 47.764503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956680, 42.378204, 47.700874>,  <36.721020, 42.527313, 47.833717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956680, 42.378204, 47.700874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986168, 42.753574, 47.565865>,  <36.003860, 42.978798, 47.484859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986168, 42.753574, 47.565865>,  <35.956680, 42.378204, 47.700874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986168, 42.753574, 47.565865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434618, -0.274384, -0.857800,
		-0.897593, 0.209933, 0.387628,
		0.073721, 0.938425, -0.337526,
		36.008286, 43.035103, 47.464607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336281, 42.494221, 47.442810>,  <35.956680, 42.378204, 47.700874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336281, 42.494221, 47.442810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556580, 42.780300, 47.270687>,  <35.688759, 42.951946, 47.167412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556580, 42.780300, 47.270687>,  <35.336281, 42.494221, 47.442810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556580, 42.780300, 47.270687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515039, -0.114492, -0.849486,
		-0.656816, 0.689482, 0.305297,
		0.550751, 0.715196, -0.430311,
		35.721806, 42.994858, 47.141594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932953, 42.980598, 47.089485>,  <35.336281, 42.494221, 47.442810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932953, 42.980598, 47.089485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274792, 43.087326, 46.911285>,  <35.479893, 43.151363, 46.804363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274792, 43.087326, 46.911285>,  <34.932953, 42.980598, 47.089485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274792, 43.087326, 46.911285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505551, 0.231416, -0.831183,
		-0.118681, 0.935549, 0.332659,
		0.854595, 0.266822, -0.445503,
		35.531170, 43.167374, 46.777634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837635, 43.663273, 46.810169>,  <34.932953, 42.980598, 47.089485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837635, 43.663273, 46.810169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134422, 43.488338, 46.606911>,  <35.312496, 43.383377, 46.484955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134422, 43.488338, 46.606911>,  <34.837635, 43.663273, 46.810169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134422, 43.488338, 46.606911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503659, 0.136648, -0.853027,
		0.442499, 0.888854, -0.118881,
		0.741972, -0.437339, -0.508147,
		35.357014, 43.357136, 46.454468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084492, 44.071198, 46.201069>,  <34.837635, 43.663273, 46.810169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084492, 44.071198, 46.201069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185249, 43.693668, 46.115517>,  <35.245705, 43.467152, 46.064186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185249, 43.693668, 46.115517>,  <35.084492, 44.071198, 46.201069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185249, 43.693668, 46.115517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280552, 0.140299, -0.949530,
		0.926195, 0.299190, -0.229450,
		0.251898, -0.943823, -0.213883,
		35.260818, 43.410522, 46.051353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175915, 44.155869, 45.512493>,  <35.084492, 44.071198, 46.201069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175915, 44.155869, 45.512493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147846, 43.758556, 45.549328>,  <35.131004, 43.520168, 45.571426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147846, 43.758556, 45.549328>,  <35.175915, 44.155869, 45.512493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147846, 43.758556, 45.549328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199364, -0.076486, -0.976936,
		0.977410, -0.086909, -0.192656,
		-0.070169, -0.993276, 0.092084,
		35.126797, 43.460575, 45.576954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166756, 43.957520, 44.846424>,  <35.175915, 44.155869, 45.512493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166756, 43.957520, 44.846424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049698, 43.614685, 45.016018>,  <34.979462, 43.408985, 45.117775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049698, 43.614685, 45.016018>,  <35.166756, 43.957520, 44.846424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049698, 43.614685, 45.016018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302164, -0.337788, -0.891401,
		0.907224, -0.388978, -0.160127,
		-0.292647, -0.857085, 0.423985,
		34.961903, 43.357559, 45.143215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529224, 43.429447, 44.533543>,  <35.166756, 43.957520, 44.846424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529224, 43.429447, 44.533543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177074, 43.275356, 44.644211>,  <34.965786, 43.182903, 44.710613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177074, 43.275356, 44.644211>,  <35.529224, 43.429447, 44.533543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177074, 43.275356, 44.644211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136890, -0.352141, -0.925882,
		0.454102, -0.852993, 0.257281,
		-0.880371, -0.385226, 0.276674,
		34.912964, 43.159790, 44.727215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567791, 42.739460, 44.267578>,  <35.529224, 43.429447, 44.533543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567791, 42.739460, 44.267578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184311, 42.824173, 44.343517>,  <34.954224, 42.875000, 44.389080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184311, 42.824173, 44.343517>,  <35.567791, 42.739460, 44.267578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184311, 42.824173, 44.343517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267767, -0.447060, -0.853486,
		-0.095880, -0.869072, 0.485305,
		-0.958701, 0.211781, 0.189845,
		34.896702, 42.887707, 44.400471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258972, 42.084846, 44.211498>,  <35.567791, 42.739460, 44.267578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258972, 42.084846, 44.211498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951115, 42.340122, 44.219131>,  <34.766399, 42.493290, 44.223713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951115, 42.340122, 44.219131>,  <35.258972, 42.084846, 44.211498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951115, 42.340122, 44.219131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424713, -0.489420, -0.761634,
		-0.476716, -0.594300, 0.647726,
		-0.769650, 0.638181, 0.019093,
		34.720222, 42.531578, 44.224857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635002, 41.704655, 44.113434>,  <35.258972, 42.084846, 44.211498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635002, 41.704655, 44.113434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539177, 42.066334, 43.971992>,  <34.481682, 42.283340, 43.887127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539177, 42.066334, 43.971992>,  <34.635002, 41.704655, 44.113434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539177, 42.066334, 43.971992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214100, -0.404443, -0.889150,
		-0.946980, -0.137299, 0.290478,
		-0.239561, 0.904198, -0.353604,
		34.467308, 42.337593, 43.865910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150249, 41.580547, 43.618610>,  <34.635002, 41.704655, 44.113434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150249, 41.580547, 43.618610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228207, 41.963863, 43.535004>,  <34.274982, 42.193855, 43.484840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228207, 41.963863, 43.535004>,  <34.150249, 41.580547, 43.618610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228207, 41.963863, 43.535004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019687, -0.216884, -0.975999,
		-0.980627, 0.186101, -0.061135,
		0.194894, 0.958294, -0.209019,
		34.286674, 42.251350, 43.472298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438957, 41.775692, 43.736370>,  <34.150249, 41.580547, 43.618610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438957, 41.775692, 43.736370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157242, 41.506428, 43.826557>,  <32.988213, 41.344872, 43.880669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157242, 41.506428, 43.826557>,  <33.438957, 41.775692, 43.736370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157242, 41.506428, 43.826557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046701, 0.360842, 0.931457,
		-0.708375, 0.645486, -0.285574,
		-0.704289, -0.673158, 0.225467,
		32.945953, 41.304482, 43.894196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818455, 42.133881, 44.073475>,  <33.438957, 41.775692, 43.736370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818455, 42.133881, 44.073475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.819481, 41.749424, 44.183891>,  <32.820095, 41.518749, 44.250141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.819481, 41.749424, 44.183891>,  <32.818455, 42.133881, 44.073475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819481, 41.749424, 44.183891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076765, 0.275042, 0.958363,
		-0.997046, -0.023649, -0.073077,
		0.002565, -0.961141, 0.276045,
		32.820251, 41.461082, 44.266705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410854, 42.110439, 44.710114>,  <32.818455, 42.133881, 44.073475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410854, 42.110439, 44.710114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.579868, 41.748001, 44.718609>,  <32.681278, 41.530537, 44.723705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.579868, 41.748001, 44.718609>,  <32.410854, 42.110439, 44.710114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579868, 41.748001, 44.718609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075779, 0.058670, 0.995397,
		-0.903173, -0.418982, 0.093453,
		0.422536, -0.906097, 0.021239,
		32.706631, 41.476173, 44.724979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954428, 41.646175, 45.223804>,  <32.410854, 42.110439, 44.710114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954428, 41.646175, 45.223804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324127, 41.498116, 45.186382>,  <32.545948, 41.409279, 45.163929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324127, 41.498116, 45.186382>,  <31.954428, 41.646175, 45.223804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324127, 41.498116, 45.186382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116829, 0.040913, 0.992309,
		-0.363477, -0.928070, 0.081058,
		0.924249, -0.370151, -0.093555,
		32.601402, 41.387070, 45.158318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971409, 41.135586, 45.727501>,  <31.954428, 41.646175, 45.223804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971409, 41.135586, 45.727501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.346554, 41.226151, 45.622318>,  <32.571640, 41.280491, 45.559208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.346554, 41.226151, 45.622318>,  <31.971409, 41.135586, 45.727501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346554, 41.226151, 45.622318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234460, 0.145177, 0.961224,
		0.255812, -0.963151, 0.083071,
		0.937864, 0.226416, -0.262959,
		32.627914, 41.294075, 45.543430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316841, 40.795788, 46.209938>,  <31.971409, 41.135586, 45.727501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316841, 40.795788, 46.209938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.579773, 41.064587, 46.073505>,  <32.737534, 41.225864, 45.991646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.579773, 41.064587, 46.073505>,  <32.316841, 40.795788, 46.209938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579773, 41.064587, 46.073505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256583, 0.225987, 0.939731,
		0.708577, -0.705230, -0.023874,
		0.657331, 0.671998, -0.341079,
		32.776974, 41.266186, 45.971180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953232, 40.682785, 46.751041>,  <32.316841, 40.795788, 46.209938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953232, 40.682785, 46.751041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029408, 41.024826, 46.558155>,  <33.075115, 41.230049, 46.442421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029408, 41.024826, 46.558155>,  <32.953232, 40.682785, 46.751041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029408, 41.024826, 46.558155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545960, 0.315986, 0.775939,
		0.815880, -0.411044, -0.406673,
		0.190442, 0.855100, -0.482220,
		33.086540, 41.281357, 46.413490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329216, 39.964996, 46.471485>,  <32.953232, 40.682785, 46.751041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329216, 39.964996, 46.471485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307674, 39.665123, 46.735325>,  <33.294750, 39.485199, 46.893627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307674, 39.665123, 46.735325>,  <33.329216, 39.964996, 46.471485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307674, 39.665123, 46.735325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187228, -0.641263, -0.744129,
		0.980839, -0.163568, -0.105829,
		-0.053852, -0.749685, 0.659600,
		33.291519, 39.440216, 46.933205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590725, 39.430653, 46.131786>,  <33.329216, 39.964996, 46.471485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590725, 39.430653, 46.131786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.348843, 39.271194, 46.407589>,  <33.203712, 39.175518, 46.573071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.348843, 39.271194, 46.407589>,  <33.590725, 39.430653, 46.131786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348843, 39.271194, 46.407589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417363, -0.578727, -0.700630,
		0.678337, -0.711448, 0.183579,
		-0.604704, -0.398644, 0.689504,
		33.167431, 39.151600, 46.614441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646996, 38.704510, 46.126232>,  <33.590725, 39.430653, 46.131786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646996, 38.704510, 46.126232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280170, 38.768131, 46.272491>,  <33.060074, 38.806305, 46.360245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280170, 38.768131, 46.272491>,  <33.646996, 38.704510, 46.126232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280170, 38.768131, 46.272491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394280, -0.498483, -0.772048,
		0.059470, -0.852183, 0.519853,
		-0.917064, 0.159054, 0.365643,
		33.005051, 38.815849, 46.382183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289791, 38.049316, 46.046227>,  <33.646996, 38.704510, 46.126232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289791, 38.049316, 46.046227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000496, 38.316032, 46.118145>,  <32.826920, 38.476063, 46.161297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000496, 38.316032, 46.118145>,  <33.289791, 38.049316, 46.046227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000496, 38.316032, 46.118145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484892, -0.304909, -0.819701,
		-0.491744, -0.680019, 0.543840,
		-0.723234, 0.666787, 0.179799,
		32.783524, 38.516068, 46.172085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634323, 37.658722, 45.989250>,  <33.289791, 38.049316, 46.046227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634323, 37.658722, 45.989250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535561, 38.045517, 45.964035>,  <32.476303, 38.277596, 45.948906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535561, 38.045517, 45.964035>,  <32.634323, 37.658722, 45.989250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535561, 38.045517, 45.964035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531694, -0.189570, -0.825448,
		-0.810147, -0.170294, 0.560947,
		-0.246908, 0.966987, -0.063035,
		32.461487, 38.335613, 45.945126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915613, 37.656776, 45.948875>,  <32.634323, 37.658722, 45.989250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915613, 37.656776, 45.948875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048580, 37.993797, 45.779354>,  <32.128361, 38.196011, 45.677643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048580, 37.993797, 45.779354>,  <31.915613, 37.656776, 45.948875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048580, 37.993797, 45.779354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585941, -0.167616, -0.792829,
		-0.739035, 0.511871, 0.437967,
		0.332416, 0.842551, -0.423800,
		32.148304, 38.246563, 45.652214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302675, 37.984432, 45.577618>,  <31.915613, 37.656776, 45.948875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302675, 37.984432, 45.577618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646809, 38.130093, 45.434944>,  <31.853289, 38.217487, 45.349339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646809, 38.130093, 45.434944>,  <31.302675, 37.984432, 45.577618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646809, 38.130093, 45.434944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324782, -0.147708, -0.934183,
		-0.392869, 0.919552, -0.008808,
		0.860332, 0.364151, -0.356684,
		31.904907, 38.239338, 45.327938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.424652, 39.016609, 48.556328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.183182, 39.288094, 48.389034>,  <37.038300, 39.450985, 48.288658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.183182, 39.288094, 48.389034>,  <37.424652, 39.016609, 48.556328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183182, 39.288094, 48.389034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311412, -0.683685, -0.659998,
		-0.733893, -0.268181, 0.624084,
		-0.603675, 0.678714, -0.418237,
		37.002079, 39.491707, 48.263565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652767, 38.827278, 48.344597>,  <37.424652, 39.016609, 48.556328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652767, 38.827278, 48.344597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.810623, 39.072002, 48.070385>,  <36.905334, 39.218838, 47.905857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.810623, 39.072002, 48.070385>,  <36.652767, 38.827278, 48.344597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810623, 39.072002, 48.070385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092789, -0.768808, -0.632712,
		-0.914139, 0.186083, -0.360170,
		0.394638, 0.611807, -0.685531,
		36.929016, 39.255543, 47.864727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418209, 38.547222, 47.739262>,  <36.652767, 38.827278, 48.344597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418209, 38.547222, 47.739262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.731834, 38.772976, 47.635952>,  <36.920010, 38.908428, 47.573967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.731834, 38.772976, 47.635952>,  <36.418209, 38.547222, 47.739262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731834, 38.772976, 47.635952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114945, -0.540959, -0.833157,
		-0.609942, 0.623562, -0.489021,
		0.784066, 0.564388, -0.258278,
		36.967052, 38.942291, 47.558468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364834, 38.604645, 47.052299>,  <36.418209, 38.547222, 47.739262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364834, 38.604645, 47.052299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.747917, 38.682831, 47.136772>,  <36.977768, 38.729744, 47.187454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.747917, 38.682831, 47.136772>,  <36.364834, 38.604645, 47.052299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747917, 38.682831, 47.136772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278698, -0.447409, -0.849796,
		-0.071623, 0.872708, -0.482961,
		0.957704, 0.195466, 0.211177,
		37.035229, 38.741470, 47.200127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641815, 38.788605, 46.416000>,  <36.364834, 38.604645, 47.052299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641815, 38.788605, 46.416000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.947113, 38.664421, 46.642654>,  <37.130291, 38.589912, 46.778645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.947113, 38.664421, 46.642654>,  <36.641815, 38.788605, 46.416000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947113, 38.664421, 46.642654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363490, -0.518720, -0.773825,
		0.534162, 0.796584, -0.283063,
		0.763247, -0.310457, 0.566631,
		37.176086, 38.571285, 46.812645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194405, 38.869785, 45.998360>,  <36.641815, 38.788605, 46.416000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194405, 38.869785, 45.998360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.291550, 38.595947, 46.273270>,  <37.349834, 38.431644, 46.438217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.291550, 38.595947, 46.273270>,  <37.194405, 38.869785, 45.998360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291550, 38.595947, 46.273270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365826, -0.591543, -0.718504,
		0.898438, 0.425920, 0.106780,
		0.242860, -0.684594, 0.687277,
		37.364407, 38.390568, 46.479454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818985, 38.520149, 45.714916>,  <37.194405, 38.869785, 45.998360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818985, 38.520149, 45.714916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.699703, 38.281425, 46.012882>,  <37.628132, 38.138191, 46.191662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.699703, 38.281425, 46.012882>,  <37.818985, 38.520149, 45.714916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699703, 38.281425, 46.012882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357732, -0.793417, -0.492461,
		0.884929, 0.119623, 0.450101,
		-0.298208, -0.596809, 0.744910,
		37.610241, 38.102383, 46.236355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395473, 38.022980, 45.706985>,  <37.818985, 38.520149, 45.714916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395473, 38.022980, 45.706985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.080074, 37.875305, 45.903751>,  <37.890835, 37.786701, 46.021809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.080074, 37.875305, 45.903751>,  <38.395473, 38.022980, 45.706985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080074, 37.875305, 45.903751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020363, -0.815038, -0.579050,
		0.614701, -0.446563, 0.650173,
		-0.788497, -0.369182, 0.491911,
		37.843525, 37.764549, 46.051323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657379, 37.327877, 45.958241>,  <38.395473, 38.022980, 45.706985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657379, 37.327877, 45.958241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.259319, 37.350979, 45.926403>,  <38.020481, 37.364838, 45.907299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.259319, 37.350979, 45.926403>,  <38.657379, 37.327877, 45.958241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259319, 37.350979, 45.926403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002150, -0.821979, -0.569513,
		-0.098315, -0.566582, 0.818119,
		-0.995153, 0.057750, -0.079594,
		37.960773, 37.368305, 45.902523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342663, 36.589886, 45.886154>,  <38.657379, 37.327877, 45.958241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342663, 36.589886, 45.886154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.042168, 36.822514, 45.761307>,  <37.861870, 36.962090, 45.686398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.042168, 36.822514, 45.761307>,  <38.342663, 36.589886, 45.886154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042168, 36.822514, 45.761307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179561, -0.635135, -0.751240,
		-0.635135, -0.508317, 0.581565,
		0.751240, -0.581565, 0.312123,
		37.816795, 36.996983, 45.667671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666115, 36.227814, 45.826530>,  <38.342663, 36.589886, 45.886154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666115, 36.227814, 45.826530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.648735, 36.520004, 45.553909>,  <37.638306, 36.695320, 45.390339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.648735, 36.520004, 45.553909>,  <37.666115, 36.227814, 45.826530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648735, 36.520004, 45.553909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358492, -0.648163, -0.671840,
		-0.932521, 0.215138, 0.290035,
		-0.043452, 0.730480, -0.681550,
		37.635700, 36.739147, 45.349445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130722, 36.063519, 45.427994>,  <37.666115, 36.227814, 45.826530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130722, 36.063519, 45.427994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270576, 36.350487, 45.186974>,  <37.354488, 36.522667, 45.042362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270576, 36.350487, 45.186974>,  <37.130722, 36.063519, 45.427994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270576, 36.350487, 45.186974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455919, -0.431567, -0.778388,
		-0.818470, 0.546866, 0.176193,
		0.349635, 0.717417, -0.602551,
		37.375465, 36.565712, 45.006207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468456, 35.954956, 45.522469>,  <37.130722, 36.063519, 45.427994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468456, 35.954956, 45.522469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.078468, 35.890831, 45.584091>,  <35.844475, 35.852356, 45.621063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.078468, 35.890831, 45.584091>,  <36.468456, 35.954956, 45.522469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078468, 35.890831, 45.584091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018604, 0.631637, 0.775041,
		-0.221557, 0.758507, -0.612845,
		-0.974970, -0.160315, 0.154055,
		35.785976, 35.842735, 45.630306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134125, 36.644394, 45.627457>,  <36.468456, 35.954956, 45.522469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134125, 36.644394, 45.627457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.937386, 36.346512, 45.807907>,  <35.819344, 36.167782, 45.916176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.937386, 36.346512, 45.807907>,  <36.134125, 36.644394, 45.627457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937386, 36.346512, 45.807907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019263, 0.527304, 0.849458,
		-0.870470, 0.409111, -0.273697,
		-0.491844, -0.744700, 0.451122,
		35.789833, 36.123100, 45.943245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699917, 37.001225, 46.021198>,  <36.134125, 36.644394, 45.627457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699917, 37.001225, 46.021198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.720943, 36.639713, 46.191105>,  <35.733559, 36.422806, 46.293049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.720943, 36.639713, 46.191105>,  <35.699917, 37.001225, 46.021198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720943, 36.639713, 46.191105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144292, 0.414016, 0.898760,
		-0.988138, -0.108536, -0.108644,
		0.052568, -0.903776, 0.424766,
		35.736713, 36.368580, 46.318535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149719, 36.981216, 46.470642>,  <35.699917, 37.001225, 46.021198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149719, 36.981216, 46.470642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.388039, 36.689587, 46.605385>,  <35.531033, 36.514606, 46.686230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.388039, 36.689587, 46.605385>,  <35.149719, 36.981216, 46.470642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388039, 36.689587, 46.605385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083028, 0.361262, 0.928761,
		-0.798830, -0.581324, 0.154706,
		0.595800, -0.729077, 0.336853,
		35.566780, 36.470863, 46.706440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825500, 36.700817, 46.995476>,  <35.149719, 36.981216, 46.470642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825500, 36.700817, 46.995476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.192844, 36.597115, 47.115082>,  <35.413250, 36.534893, 47.186844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.192844, 36.597115, 47.115082>,  <34.825500, 36.700817, 46.995476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192844, 36.597115, 47.115082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265766, 0.155831, 0.951360,
		-0.293240, -0.953155, 0.074207,
		0.918357, -0.259255, 0.299012,
		35.468353, 36.519337, 47.204784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686180, 36.301647, 47.568085>,  <34.825500, 36.700817, 46.995476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686180, 36.301647, 47.568085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.076012, 36.386436, 47.597080>,  <35.309910, 36.437309, 47.614479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.076012, 36.386436, 47.597080>,  <34.686180, 36.301647, 47.568085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076012, 36.386436, 47.597080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066873, -0.033561, 0.997197,
		0.213816, -0.976698, -0.018532,
		0.974583, 0.211977, 0.072491,
		35.368385, 36.450027, 47.618828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947632, 35.876766, 48.143372>,  <34.686180, 36.301647, 47.568085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947632, 35.876766, 48.143372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.195995, 36.185688, 48.089684>,  <35.345013, 36.371040, 48.057472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.195995, 36.185688, 48.089684>,  <34.947632, 35.876766, 48.143372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195995, 36.185688, 48.089684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091824, 0.241705, 0.965995,
		0.778488, -0.587468, 0.220992,
		0.620907, 0.772308, -0.134221,
		35.382267, 36.417381, 48.049416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348961, 35.965263, 48.796494>,  <34.947632, 35.876766, 48.143372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348961, 35.965263, 48.796494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.444511, 36.310036, 48.617607>,  <35.501842, 36.516899, 48.510273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.444511, 36.310036, 48.617607>,  <35.348961, 35.965263, 48.796494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444511, 36.310036, 48.617607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046065, 0.470092, 0.881415,
		0.969956, -0.189951, 0.152001,
		0.238879, 0.861935, -0.447218,
		35.516174, 36.568615, 48.483440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861195, 36.219406, 49.303417>,  <35.348961, 35.965263, 48.796494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861195, 36.219406, 49.303417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.712315, 36.507195, 49.068867>,  <35.622986, 36.679867, 48.928139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.712315, 36.507195, 49.068867>,  <35.861195, 36.219406, 49.303417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712315, 36.507195, 49.068867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113139, 0.662223, 0.740716,
		0.921231, 0.209353, -0.327880,
		-0.372201, 0.719466, -0.586374,
		35.600655, 36.723034, 48.892956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324623, 36.815456, 49.327320>,  <35.861195, 36.219406, 49.303417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324623, 36.815456, 49.327320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.957531, 36.945099, 49.235462>,  <35.737278, 37.022884, 49.180347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.957531, 36.945099, 49.235462>,  <36.324623, 36.815456, 49.327320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957531, 36.945099, 49.235462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062242, 0.688327, 0.722725,
		0.392306, 0.648970, -0.651869,
		-0.917727, 0.324103, -0.229642,
		35.682213, 37.042328, 49.166569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372616, 37.475121, 49.394791>,  <36.324623, 36.815456, 49.327320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372616, 37.475121, 49.394791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.977699, 37.411598, 49.397320>,  <35.740749, 37.373486, 49.398838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.977699, 37.411598, 49.397320>,  <36.372616, 37.475121, 49.394791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977699, 37.411598, 49.397320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119532, 0.768187, 0.628968,
		-0.104738, 0.620218, -0.777406,
		-0.987290, -0.158802, 0.006322,
		35.681511, 37.363956, 49.399216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142666, 38.125664, 49.449844>,  <36.372616, 37.475121, 49.394791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142666, 38.125664, 49.449844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.827057, 37.911392, 49.570168>,  <35.637691, 37.782829, 49.642361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.827057, 37.911392, 49.570168>,  <36.142666, 38.125664, 49.449844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827057, 37.911392, 49.570168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233882, 0.714672, 0.659199,
		-0.568100, 0.449770, -0.689180,
		-0.789026, -0.535678, 0.300812,
		35.590351, 37.750690, 49.660412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446392, 38.531582, 49.496830>,  <36.142666, 38.125664, 49.449844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446392, 38.531582, 49.496830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.461357, 38.226360, 49.754932>,  <35.470337, 38.043228, 49.909794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.461357, 38.226360, 49.754932>,  <35.446392, 38.531582, 49.496830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461357, 38.226360, 49.754932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222797, 0.623087, 0.749749,
		-0.974147, -0.171808, -0.146697,
		0.037408, -0.763050, 0.645256,
		35.472580, 37.997444, 49.948509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877300, 38.435650, 49.910702>,  <35.446392, 38.531582, 49.496830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877300, 38.435650, 49.910702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.192841, 38.315849, 50.125370>,  <35.382164, 38.243969, 50.254169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.192841, 38.315849, 50.125370>,  <34.877300, 38.435650, 49.910702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192841, 38.315849, 50.125370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150231, 0.752760, 0.640923,
		-0.595940, -0.586217, 0.548822,
		0.788852, -0.299501, 0.536668,
		35.429497, 38.225998, 50.286369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795227, 39.223034, 49.887127>,  <34.877300, 38.435650, 49.910702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795227, 39.223034, 49.887127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.698536, 39.606228, 49.825367>,  <34.640522, 39.836143, 49.788311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.698536, 39.606228, 49.825367>,  <34.795227, 39.223034, 49.887127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698536, 39.606228, 49.825367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414703, -0.245845, -0.876117,
		-0.877261, -0.147756, 0.456706,
		-0.241731, 0.957981, -0.154396,
		34.626015, 39.893623, 49.779049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105167, 39.287472, 49.739918>,  <34.795227, 39.223034, 49.887127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105167, 39.287472, 49.739918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314503, 39.566021, 49.543476>,  <34.440105, 39.733150, 49.425610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314503, 39.566021, 49.543476>,  <34.105167, 39.287472, 49.739918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314503, 39.566021, 49.543476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464554, -0.249992, -0.849526,
		-0.714356, 0.672736, 0.192670,
		0.523341, 0.696369, -0.491105,
		34.471504, 39.774933, 49.396145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503773, 39.554607, 49.503468>,  <34.105167, 39.287472, 49.739918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503773, 39.554607, 49.503468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.788834, 39.704315, 49.266132>,  <33.959869, 39.794140, 49.123730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.788834, 39.704315, 49.266132>,  <33.503773, 39.554607, 49.503468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788834, 39.704315, 49.266132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540638, -0.245962, -0.804495,
		-0.447037, 0.894106, 0.027059,
		0.712649, 0.374268, -0.593342,
		34.002628, 39.816597, 49.088131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187130, 40.015377, 48.999672>,  <33.503773, 39.554607, 49.503468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187130, 40.015377, 48.999672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542301, 39.913918, 48.846184>,  <33.755405, 39.853043, 48.754089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542301, 39.913918, 48.846184>,  <33.187130, 40.015377, 48.999672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542301, 39.913918, 48.846184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437632, -0.209011, -0.874524,
		0.141620, 0.944445, -0.296592,
		0.887931, -0.253648, -0.383719,
		33.808681, 39.837822, 48.731068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219456, 40.263752, 48.361069>,  <33.187130, 40.015377, 48.999672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219456, 40.263752, 48.361069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.502674, 39.990547, 48.289326>,  <33.672604, 39.826626, 48.246281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.502674, 39.990547, 48.289326>,  <33.219456, 40.263752, 48.361069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502674, 39.990547, 48.289326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481975, -0.281773, -0.829641,
		0.516116, 0.673868, -0.528702,
		0.708043, -0.683012, -0.179360,
		33.715088, 39.785645, 48.235519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202053, 40.300240, 47.631977>,  <33.219456, 40.263752, 48.361069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202053, 40.300240, 47.631977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397015, 39.961185, 47.715843>,  <33.513992, 39.757755, 47.766163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397015, 39.961185, 47.715843>,  <33.202053, 40.300240, 47.631977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397015, 39.961185, 47.715843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307596, -0.391404, -0.867287,
		0.817205, 0.358224, -0.451500,
		0.487402, -0.847631, 0.209669,
		33.543236, 39.706898, 47.778744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717731, 40.227802, 47.083630>,  <33.202053, 40.300240, 47.631977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717731, 40.227802, 47.083630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.610508, 39.877422, 47.244053>,  <33.546173, 39.667194, 47.340309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.610508, 39.877422, 47.244053>,  <33.717731, 40.227802, 47.083630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610508, 39.877422, 47.244053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201795, -0.356012, -0.912433,
		0.942031, -0.325520, -0.081330,
		-0.268061, -0.875952, 0.401062,
		33.530090, 39.614635, 47.364372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708748, 40.927116, 46.842426>,  <33.717731, 40.227802, 47.083630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708748, 40.927116, 46.842426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.502525, 41.255783, 46.745213>,  <33.378792, 41.452984, 46.686882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.502525, 41.255783, 46.745213>,  <33.708748, 40.927116, 46.842426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502525, 41.255783, 46.745213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401683, 0.482302, 0.778482,
		0.756870, 0.303727, -0.578703,
		-0.515556, 0.821666, -0.243038,
		33.347858, 41.502281, 46.672302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189701, 41.531929, 46.809811>,  <33.708748, 40.927116, 46.842426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189701, 41.531929, 46.809811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.819714, 41.665440, 46.882500>,  <33.597721, 41.745544, 46.926113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.819714, 41.665440, 46.882500>,  <34.189701, 41.531929, 46.809811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819714, 41.665440, 46.882500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348559, 0.554519, 0.755655,
		0.151451, 0.762300, -0.629254,
		-0.924970, 0.333777, 0.181724,
		33.542221, 41.765572, 46.937016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237530, 42.265823, 46.843212>,  <34.189701, 41.531929, 46.809811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237530, 42.265823, 46.843212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.891163, 42.201401, 47.032631>,  <33.683342, 42.162746, 47.146282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.891163, 42.201401, 47.032631>,  <34.237530, 42.265823, 46.843212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891163, 42.201401, 47.032631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323235, 0.542315, 0.775509,
		-0.381710, 0.824594, -0.417542,
		-0.865920, -0.161055, 0.473545,
		33.631386, 42.153084, 47.174694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968361, 42.862717, 46.967819>,  <34.237530, 42.265823, 46.843212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968361, 42.862717, 46.967819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.800701, 42.625553, 47.242855>,  <33.700104, 42.483253, 47.407875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.800701, 42.625553, 47.242855>,  <33.968361, 42.862717, 46.967819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800701, 42.625553, 47.242855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216228, 0.670342, 0.709850,
		-0.881793, 0.446208, -0.152770,
		-0.419149, -0.592908, 0.687586,
		33.674957, 42.447681, 47.449131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528629, 43.344528, 47.332027>,  <33.968361, 42.862717, 46.967819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528629, 43.344528, 47.332027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.560356, 43.032108, 47.579788>,  <33.579391, 42.844654, 47.728447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.560356, 43.032108, 47.579788>,  <33.528629, 43.344528, 47.332027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560356, 43.032108, 47.579788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128247, 0.624195, 0.770670,
		-0.988565, 0.018309, 0.149678,
		0.079318, -0.781054, 0.619406,
		33.584152, 42.797791, 47.765610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187634, 43.543888, 47.945759>,  <33.528629, 43.344528, 47.332027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187634, 43.543888, 47.945759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.416584, 43.239429, 48.067772>,  <33.553955, 43.056755, 48.140980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.416584, 43.239429, 48.067772>,  <33.187634, 43.543888, 47.945759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416584, 43.239429, 48.067772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308021, 0.544327, 0.780276,
		-0.759942, -0.352653, 0.546007,
		0.572373, -0.761147, 0.305033,
		33.588295, 43.011086, 48.159283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028545, 43.416405, 48.638878>,  <33.187634, 43.543888, 47.945759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028545, 43.416405, 48.638878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.392338, 43.255512, 48.596821>,  <33.610615, 43.158978, 48.571587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.392338, 43.255512, 48.596821>,  <33.028545, 43.416405, 48.638878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392338, 43.255512, 48.596821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232665, 0.282852, 0.930517,
		-0.344540, -0.870752, 0.350833,
		0.909483, -0.402227, -0.105140,
		33.665184, 43.134846, 48.565277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218418, 43.373814, 49.284019>,  <33.028545, 43.416405, 48.638878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218418, 43.373814, 49.284019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.568054, 43.303112, 49.103035>,  <33.777836, 43.260693, 48.994442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.568054, 43.303112, 49.103035>,  <33.218418, 43.373814, 49.284019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568054, 43.303112, 49.103035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483721, 0.231394, 0.844080,
		-0.044496, -0.956669, 0.287758,
		0.874091, -0.176753, -0.452464,
		33.830280, 43.250088, 48.967297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590809, 42.933212, 49.727188>,  <33.218418, 43.373814, 49.284019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590809, 42.933212, 49.727188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.845818, 43.128819, 49.489052>,  <33.998821, 43.246181, 49.346169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.845818, 43.128819, 49.489052>,  <33.590809, 42.933212, 49.727188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845818, 43.128819, 49.489052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375004, 0.478057, 0.794250,
		0.673007, -0.729607, 0.121390,
		0.637522, 0.489014, -0.595341,
		34.037075, 43.275524, 49.310448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.395027, 36.633297, 35.972778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735821, 36.842285, 35.959187>,  <35.940296, 36.967678, 35.951031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735821, 36.842285, 35.959187>,  <35.395027, 36.633297, 35.972778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735821, 36.842285, 35.959187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374764, 0.653868, 0.657273,
		0.365623, -0.547249, 0.752886,
		0.851981, 0.522469, -0.033980,
		35.991413, 36.999027, 35.948994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683025, 36.767647, 36.678627>,  <35.395027, 36.633297, 35.972778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683025, 36.767647, 36.678627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788612, 37.086586, 36.461533>,  <35.851967, 37.277950, 36.331276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788612, 37.086586, 36.461533>,  <35.683025, 36.767647, 36.678627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788612, 37.086586, 36.461533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302713, 0.602748, 0.738281,
		0.915798, -0.030590, 0.400473,
		0.263969, 0.797345, -0.542736,
		35.867802, 37.325790, 36.298714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964344, 37.137978, 37.095253>,  <35.683025, 36.767647, 36.678627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964344, 37.137978, 37.095253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855186, 37.404087, 36.817280>,  <35.789692, 37.563755, 36.650494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855186, 37.404087, 36.817280>,  <35.964344, 37.137978, 37.095253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855186, 37.404087, 36.817280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392098, 0.582721, 0.711825,
		0.878514, 0.466736, 0.101833,
		-0.272894, 0.665277, -0.694935,
		35.773319, 37.603672, 36.608799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040047, 37.862408, 37.432789>,  <35.964344, 37.137978, 37.095253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040047, 37.862408, 37.432789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827175, 37.925938, 37.100151>,  <35.699451, 37.964054, 36.900566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827175, 37.925938, 37.100151>,  <36.040047, 37.862408, 37.432789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827175, 37.925938, 37.100151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536785, 0.696284, 0.476499,
		0.654709, 0.699974, -0.285294,
		-0.532183, 0.158826, -0.831598,
		35.667519, 37.973587, 36.850670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925373, 38.528549, 37.459274>,  <36.040047, 37.862408, 37.432789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925373, 38.528549, 37.459274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649479, 38.410782, 37.194675>,  <35.483944, 38.340122, 37.035915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649479, 38.410782, 37.194675>,  <35.925373, 38.528549, 37.459274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649479, 38.410782, 37.194675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654606, 0.644005, 0.395915,
		0.309444, 0.706098, -0.636921,
		-0.689735, -0.294419, -0.661500,
		35.442558, 38.322456, 36.996227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659603, 39.158798, 37.256485>,  <35.925373, 38.528549, 37.459274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659603, 39.158798, 37.256485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390732, 38.869278, 37.194145>,  <35.229408, 38.695568, 37.156742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390732, 38.869278, 37.194145>,  <35.659603, 39.158798, 37.256485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390732, 38.869278, 37.194145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696112, 0.546127, 0.466019,
		-0.252191, 0.421736, -0.870941,
		-0.672181, -0.723798, -0.155847,
		35.189079, 38.652138, 37.147392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044590, 39.537903, 36.972767>,  <35.659603, 39.158798, 37.256485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044590, 39.537903, 36.972767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912727, 39.183887, 37.104240>,  <34.833611, 38.971478, 37.183125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912727, 39.183887, 37.104240>,  <35.044590, 39.537903, 36.972767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912727, 39.183887, 37.104240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823258, 0.439898, 0.358797,
		-0.462136, -0.152310, -0.873631,
		-0.329661, -0.885037, 0.328684,
		34.813828, 38.918377, 37.202847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317078, 39.494045, 36.767708>,  <35.044590, 39.537903, 36.972767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317078, 39.494045, 36.767708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372463, 39.243195, 37.074314>,  <34.405693, 39.092686, 37.258278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372463, 39.243195, 37.074314>,  <34.317078, 39.494045, 36.767708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372463, 39.243195, 37.074314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849508, 0.322640, 0.417420,
		-0.509082, -0.708955, -0.488075,
		0.138459, -0.627125, 0.766514,
		34.414001, 39.055058, 37.304268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657097, 39.238728, 36.921432>,  <34.317078, 39.494045, 36.767708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657097, 39.238728, 36.921432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865196, 39.153069, 37.252125>,  <33.990055, 39.101673, 37.450539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865196, 39.153069, 37.252125>,  <33.657097, 39.238728, 36.921432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865196, 39.153069, 37.252125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798901, 0.220085, 0.559750,
		-0.301821, -0.951684, -0.056586,
		0.520251, -0.214151, 0.826728,
		34.021271, 39.088825, 37.500141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166252, 39.083397, 37.351685>,  <33.657097, 39.238728, 36.921432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166252, 39.083397, 37.351685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447140, 39.171402, 37.622532>,  <33.615673, 39.224205, 37.785038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447140, 39.171402, 37.622532>,  <33.166252, 39.083397, 37.351685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447140, 39.171402, 37.622532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710603, 0.275314, 0.647491,
		-0.043965, -0.935841, 0.349670,
		0.702218, 0.220010, 0.677116,
		33.657806, 39.237404, 37.825668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811760, 38.835121, 37.985954>,  <33.166252, 39.083397, 37.351685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811760, 38.835121, 37.985954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106895, 39.082153, 38.094898>,  <33.283978, 39.230373, 38.160263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106895, 39.082153, 38.094898>,  <32.811760, 38.835121, 37.985954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106895, 39.082153, 38.094898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564610, 0.343607, 0.750433,
		0.369880, -0.707470, 0.602225,
		0.737838, 0.617592, 0.272351,
		33.328247, 39.267429, 38.176605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701443, 38.837936, 38.643330>,  <32.811760, 38.835121, 37.985954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701443, 38.837936, 38.643330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932781, 39.157265, 38.576160>,  <33.071587, 39.348862, 38.535858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932781, 39.157265, 38.576160>,  <32.701443, 38.837936, 38.643330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932781, 39.157265, 38.576160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364478, 0.437020, 0.822295,
		0.729842, -0.414366, 0.543719,
		0.578348, 0.798320, -0.167928,
		33.106285, 39.396759, 38.525784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996422, 38.128017, 38.745148>,  <32.701443, 38.837936, 38.643330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996422, 38.128017, 38.745148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705544, 37.944420, 38.949306>,  <32.531017, 37.834259, 39.071804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705544, 37.944420, 38.949306>,  <32.996422, 38.128017, 38.745148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705544, 37.944420, 38.949306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437278, -0.263403, -0.859888,
		0.529127, -0.848493, -0.009164,
		-0.727196, -0.458997, 0.510401,
		32.487385, 37.806721, 39.102428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958614, 37.600060, 38.509121>,  <32.996422, 38.128017, 38.745148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958614, 37.600060, 38.509121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588394, 37.611320, 38.660152>,  <32.366264, 37.618076, 38.750771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588394, 37.611320, 38.660152>,  <32.958614, 37.600060, 38.509121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588394, 37.611320, 38.660152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324508, -0.572783, -0.752738,
		0.195079, -0.819223, 0.539275,
		-0.925547, 0.028156, 0.377583,
		32.310730, 37.619766, 38.773426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756351, 36.833244, 38.540863>,  <32.958614, 37.600060, 38.509121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756351, 36.833244, 38.540863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422440, 37.052002, 38.566334>,  <32.222092, 37.183258, 38.581615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422440, 37.052002, 38.566334>,  <32.756351, 36.833244, 38.540863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422440, 37.052002, 38.566334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393673, -0.512013, -0.763455,
		-0.384927, -0.662381, 0.642715,
		-0.834777, 0.546894, 0.063674,
		32.172005, 37.216072, 38.585438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270195, 36.356453, 38.379700>,  <32.756351, 36.833244, 38.540863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270195, 36.356453, 38.379700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111874, 36.716835, 38.308575>,  <32.016880, 36.933064, 38.265900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111874, 36.716835, 38.308575>,  <32.270195, 36.356453, 38.379700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111874, 36.716835, 38.308575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464435, -0.363421, -0.807605,
		-0.792236, -0.237073, 0.562280,
		-0.395805, 0.900956, -0.177810,
		31.993132, 36.987122, 38.255230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563251, 36.206161, 38.274746>,  <32.270195, 36.356453, 38.379700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563251, 36.206161, 38.274746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640703, 36.559406, 38.103809>,  <31.687174, 36.771355, 38.001247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640703, 36.559406, 38.103809>,  <31.563251, 36.206161, 38.274746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640703, 36.559406, 38.103809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567280, -0.254602, -0.783181,
		-0.800439, 0.394067, 0.451674,
		0.193628, 0.883113, -0.427339,
		31.698792, 36.824341, 37.975609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938625, 36.394962, 38.046364>,  <31.563251, 36.206161, 38.274746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938625, 36.394962, 38.046364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194120, 36.616241, 37.832455>,  <31.347418, 36.749008, 37.704109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194120, 36.616241, 37.832455>,  <30.938625, 36.394962, 38.046364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194120, 36.616241, 37.832455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524287, -0.195774, -0.828731,
		-0.563150, 0.809716, 0.164988,
		0.638737, 0.553202, -0.534774,
		31.385742, 36.782204, 37.672024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554407, 36.763557, 37.476952>,  <30.938625, 36.394962, 38.046364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554407, 36.763557, 37.476952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926914, 36.785854, 37.332935>,  <31.150419, 36.799232, 37.246525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926914, 36.785854, 37.332935>,  <30.554407, 36.763557, 37.476952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926914, 36.785854, 37.332935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358956, -0.028776, -0.932911,
		-0.062367, 0.998030, -0.006787,
		0.931269, 0.055746, -0.360043,
		31.206295, 36.802578, 37.224922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549459, 37.251457, 36.932587>,  <30.554407, 36.763557, 37.476952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549459, 37.251457, 36.932587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867865, 37.026642, 36.842716>,  <31.058908, 36.891754, 36.788795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867865, 37.026642, 36.842716>,  <30.549459, 37.251457, 36.932587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867865, 37.026642, 36.842716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386699, -0.186657, -0.903119,
		0.465646, 0.805777, -0.365919,
		0.796014, -0.562034, -0.224678,
		31.106668, 36.858032, 36.775314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681671, 37.355751, 36.151062>,  <30.549459, 37.251457, 36.932587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681671, 37.355751, 36.151062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869604, 37.021324, 36.264378>,  <30.982365, 36.820667, 36.332367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869604, 37.021324, 36.264378>,  <30.681671, 37.355751, 36.151062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869604, 37.021324, 36.264378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154923, -0.394032, -0.905946,
		0.869055, 0.381755, -0.314654,
		0.469833, -0.836064, 0.283293,
		31.010553, 36.770504, 36.349365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063107, 37.045967, 35.496777>,  <30.681671, 37.355751, 36.151062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063107, 37.045967, 35.496777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042110, 36.755844, 35.771347>,  <31.029512, 36.581772, 35.936089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042110, 36.755844, 35.771347>,  <31.063107, 37.045967, 35.496777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042110, 36.755844, 35.771347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118209, -0.678025, -0.725472,
		0.991600, -0.119221, -0.050149,
		-0.052490, -0.725306, 0.686422,
		31.026363, 36.538254, 35.977272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520149, 36.512039, 35.253109>,  <31.063107, 37.045967, 35.496777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520149, 36.512039, 35.253109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269358, 36.321918, 35.500004>,  <31.118883, 36.207844, 35.648140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269358, 36.321918, 35.500004>,  <31.520149, 36.512039, 35.253109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269358, 36.321918, 35.500004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015961, -0.784307, -0.620168,
		0.778873, -0.398684, 0.484157,
		-0.626979, -0.475304, 0.617239,
		31.081264, 36.179329, 35.685177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828081, 35.865604, 35.418449>,  <31.520149, 36.512039, 35.253109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828081, 35.865604, 35.418449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437317, 35.820118, 35.490795>,  <31.202858, 35.792824, 35.534203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437317, 35.820118, 35.490795>,  <31.828081, 35.865604, 35.418449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437317, 35.820118, 35.490795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007797, -0.864977, -0.501751,
		0.213498, -0.488756, 0.845894,
		-0.976913, -0.113719, 0.180860,
		31.144243, 35.786003, 35.545052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748657, 35.208797, 35.561382>,  <31.828081, 35.865604, 35.418449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748657, 35.208797, 35.561382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369883, 35.309464, 35.481407>,  <31.142618, 35.369865, 35.433422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369883, 35.309464, 35.481407>,  <31.748657, 35.208797, 35.561382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369883, 35.309464, 35.481407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071903, -0.772144, -0.631366,
		-0.313277, -0.583487, 0.749267,
		-0.946936, 0.251667, -0.199940,
		31.085802, 35.384964, 35.421425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476318, 34.606586, 35.368423>,  <31.748657, 35.208797, 35.561382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476318, 34.606586, 35.368423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190042, 34.861317, 35.253712>,  <31.018276, 35.014156, 35.184883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190042, 34.861317, 35.253712>,  <31.476318, 34.606586, 35.368423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190042, 34.861317, 35.253712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203333, -0.582811, -0.786757,
		-0.668165, -0.504762, 0.546599,
		-0.715689, 0.636826, -0.286779,
		30.975336, 35.052364, 35.167679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798893, 34.251488, 35.380878>,  <31.476318, 34.606586, 35.368423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798893, 34.251488, 35.380878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819242, 34.555405, 35.121609>,  <30.831453, 34.737755, 34.966045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819242, 34.555405, 35.121609>,  <30.798893, 34.251488, 35.380878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819242, 34.555405, 35.121609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236171, -0.621457, -0.747004,
		-0.970379, 0.191085, 0.147823,
		0.050876, 0.759788, -0.648178,
		30.834505, 34.783340, 34.927155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210960, 33.752075, 35.766613>,  <30.798893, 34.251488, 35.380878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210960, 33.752075, 35.766613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532650, 33.926746, 35.605350>,  <31.725664, 34.031548, 35.508595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532650, 33.926746, 35.605350>,  <31.210960, 33.752075, 35.766613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532650, 33.926746, 35.605350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447646, -0.001144, -0.894210,
		-0.390943, 0.899617, 0.194558,
		0.804224, 0.436678, -0.403157,
		31.773916, 34.057751, 35.484402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735659, 33.216885, 35.900196>,  <31.210960, 33.752075, 35.766613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735659, 33.216885, 35.900196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107594, 33.335587, 35.987228>,  <32.330753, 33.406807, 36.039448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107594, 33.335587, 35.987228>,  <31.735659, 33.216885, 35.900196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107594, 33.335587, 35.987228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216777, -0.036040, 0.975556,
		0.297343, -0.954273, 0.030818,
		0.929836, 0.296755, 0.217580,
		32.386543, 33.424614, 36.052502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100552, 32.711552, 36.487720>,  <31.735659, 33.216885, 35.900196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100552, 32.711552, 36.487720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230701, 33.089691, 36.479313>,  <32.308792, 33.316574, 36.474270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230701, 33.089691, 36.479313>,  <32.100552, 32.711552, 36.487720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230701, 33.089691, 36.479313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044794, 0.037609, 0.998288,
		0.944524, -0.323875, 0.054583,
		0.325374, 0.945352, -0.021015,
		32.328312, 33.373299, 36.473007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589230, 32.735970, 37.055332>,  <32.100552, 32.711552, 36.487720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589230, 32.735970, 37.055332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519337, 33.119518, 36.965855>,  <32.477402, 33.349648, 36.912167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519337, 33.119518, 36.965855>,  <32.589230, 32.735970, 37.055332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519337, 33.119518, 36.965855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065927, 0.215290, 0.974322,
		0.982407, 0.184989, 0.025598,
		-0.174728, 0.958869, -0.223698,
		32.466919, 33.407181, 36.898746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026661, 33.026028, 37.527565>,  <32.589230, 32.735970, 37.055332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026661, 33.026028, 37.527565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821552, 33.352146, 37.419964>,  <32.698486, 33.547817, 37.355404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821552, 33.352146, 37.419964>,  <33.026661, 33.026028, 37.527565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821552, 33.352146, 37.419964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087468, 0.361316, 0.928332,
		0.854058, 0.452493, -0.256585,
		-0.512772, 0.815292, -0.269006,
		32.667721, 33.596733, 37.339264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453663, 33.626743, 37.583725>,  <33.026661, 33.026028, 37.527565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453663, 33.626743, 37.583725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077755, 33.760086, 37.613960>,  <32.852211, 33.840092, 37.632099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077755, 33.760086, 37.613960>,  <33.453663, 33.626743, 37.583725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077755, 33.760086, 37.613960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230317, 0.454157, 0.860637,
		0.252568, 0.826207, -0.503579,
		-0.939767, 0.333353, 0.075584,
		32.795826, 33.860092, 37.636635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516090, 34.377785, 37.753365>,  <33.453663, 33.626743, 37.583725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516090, 34.377785, 37.753365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149044, 34.260933, 37.861172>,  <32.928818, 34.190823, 37.925858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149044, 34.260933, 37.861172>,  <33.516090, 34.377785, 37.753365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149044, 34.260933, 37.861172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182077, 0.293815, 0.938361,
		-0.353309, 0.910129, -0.216420,
		-0.917617, -0.292126, 0.269521,
		32.873760, 34.173294, 37.942028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287174, 35.018879, 38.083935>,  <33.516090, 34.377785, 37.753365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287174, 35.018879, 38.083935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039688, 34.725628, 38.196865>,  <32.891197, 34.549675, 38.264622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039688, 34.725628, 38.196865>,  <33.287174, 35.018879, 38.083935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039688, 34.725628, 38.196865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101176, 0.430738, 0.896788,
		-0.779071, 0.526294, -0.340680,
		-0.618718, -0.733130, 0.282327,
		32.854073, 34.505688, 38.281563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710854, 35.358150, 38.320213>,  <33.287174, 35.018879, 38.083935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710854, 35.358150, 38.320213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750034, 34.994400, 38.481926>,  <32.773540, 34.776150, 38.578953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750034, 34.994400, 38.481926>,  <32.710854, 35.358150, 38.320213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750034, 34.994400, 38.481926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059292, 0.410850, 0.909773,
		-0.993424, -0.065139, 0.094160,
		0.097947, -0.909373, 0.404286,
		32.779419, 34.721588, 38.603210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640659, 35.552872, 38.948792>,  <32.710854, 35.358150, 38.320213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640659, 35.552872, 38.948792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738029, 35.169369, 39.007469>,  <32.796452, 34.939266, 39.042675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738029, 35.169369, 39.007469>,  <32.640659, 35.552872, 38.948792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738029, 35.169369, 39.007469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078183, 0.170149, 0.982312,
		-0.966763, -0.227653, 0.116378,
		0.243427, -0.958761, 0.146695,
		32.811058, 34.881741, 39.051479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317249, 35.380386, 39.580601>,  <32.640659, 35.552872, 38.948792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317249, 35.380386, 39.580601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591148, 35.090477, 39.550079>,  <32.755486, 34.916531, 39.531769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591148, 35.090477, 39.550079>,  <32.317249, 35.380386, 39.580601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591148, 35.090477, 39.550079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151131, 0.038798, 0.987752,
		-0.712939, -0.687891, 0.136103,
		0.684746, -0.724777, -0.076301,
		32.796574, 34.873043, 39.527187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288269, 34.981667, 40.193310>,  <32.317249, 35.380386, 39.580601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288269, 34.981667, 40.193310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645149, 34.860519, 40.059296>,  <32.859276, 34.787830, 39.978889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645149, 34.860519, 40.059296>,  <32.288269, 34.981667, 40.193310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645149, 34.860519, 40.059296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334138, -0.056435, 0.940833,
		-0.303857, -0.951360, 0.050849,
		0.892201, -0.302869, -0.335033,
		32.912811, 34.769657, 39.958786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459305, 34.340923, 40.631760>,  <32.288269, 34.981667, 40.193310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459305, 34.340923, 40.631760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777210, 34.522415, 40.470524>,  <32.967953, 34.631310, 40.373783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777210, 34.522415, 40.470524>,  <32.459305, 34.340923, 40.631760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777210, 34.522415, 40.470524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474421, -0.050237, 0.878864,
		0.378517, -0.889722, -0.255186,
		0.794764, 0.453730, -0.403087,
		33.015640, 34.658535, 40.349598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012890, 34.091057, 40.885227>,  <32.459305, 34.340923, 40.631760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012890, 34.091057, 40.885227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185730, 34.420532, 40.738354>,  <33.289433, 34.618217, 40.650230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185730, 34.420532, 40.738354>,  <33.012890, 34.091057, 40.885227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185730, 34.420532, 40.738354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606873, 0.035593, 0.794001,
		0.667079, -0.565925, -0.484495,
		0.432100, 0.823688, -0.367188,
		33.315361, 34.667637, 40.628197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817196, 34.042969, 40.836266>,  <33.012890, 34.091057, 40.885227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817196, 34.042969, 40.836266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694736, 34.422604, 40.865959>,  <33.621262, 34.650383, 40.883774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694736, 34.422604, 40.865959>,  <33.817196, 34.042969, 40.836266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694736, 34.422604, 40.865959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471383, 0.083383, 0.877978,
		0.827086, 0.303785, -0.472910,
		-0.306150, 0.949085, 0.074234,
		33.602890, 34.707329, 40.888229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454369, 34.379047, 41.181210>,  <33.817196, 34.042969, 40.836266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454369, 34.379047, 41.181210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145885, 34.624016, 41.250690>,  <33.960796, 34.770996, 41.292381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145885, 34.624016, 41.250690>,  <34.454369, 34.379047, 41.181210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145885, 34.624016, 41.250690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414442, 0.275919, 0.867241,
		0.483188, 0.740817, -0.466605,
		-0.771211, 0.612421, 0.173705,
		33.914520, 34.807743, 41.302803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842049, 34.900383, 41.543037>,  <34.454369, 34.379047, 41.181210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842049, 34.900383, 41.543037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457447, 34.999485, 41.590569>,  <34.226685, 35.058949, 41.619087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457447, 34.999485, 41.590569>,  <34.842049, 34.900383, 41.543037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457447, 34.999485, 41.590569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216126, 0.414816, 0.883865,
		0.169692, 0.875525, -0.452395,
		-0.961506, 0.247759, 0.118833,
		34.168995, 35.073814, 41.626217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848946, 35.565762, 41.720093>,  <34.842049, 34.900383, 41.543037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848946, 35.565762, 41.720093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506523, 35.412800, 41.859192>,  <34.301071, 35.321022, 41.942650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506523, 35.412800, 41.859192>,  <34.848946, 35.565762, 41.720093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506523, 35.412800, 41.859192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245167, 0.291878, 0.924500,
		-0.455037, 0.876682, -0.156110,
		-0.856057, -0.382409, 0.347749,
		34.249706, 35.298077, 41.963516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605972, 36.094032, 42.212078>,  <34.848946, 35.565762, 41.720093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605972, 36.094032, 42.212078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439491, 35.740623, 42.298023>,  <34.339603, 35.528580, 42.349590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439491, 35.740623, 42.298023>,  <34.605972, 36.094032, 42.212078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439491, 35.740623, 42.298023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184605, 0.149272, 0.971411,
		-0.890334, 0.443971, 0.100974,
		-0.416206, -0.883520, 0.214862,
		34.314629, 35.475567, 42.362480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325550, 36.213890, 42.859051>,  <34.605972, 36.094032, 42.212078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325550, 36.213890, 42.859051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332401, 35.814674, 42.834984>,  <34.336510, 35.575146, 42.820545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332401, 35.814674, 42.834984>,  <34.325550, 36.213890, 42.859051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332401, 35.814674, 42.834984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034893, -0.059543, 0.997616,
		-0.999244, -0.019185, 0.033805,
		0.017126, -0.998041, -0.060167,
		34.337540, 35.515263, 42.816933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887440, 36.069187, 43.343094>,  <34.325550, 36.213890, 42.859051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887440, 36.069187, 43.343094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135365, 35.756485, 43.315681>,  <34.284119, 35.568863, 43.299236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135365, 35.756485, 43.315681>,  <33.887440, 36.069187, 43.343094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135365, 35.756485, 43.315681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120983, 0.008909, 0.992614,
		-0.775368, -0.623526, 0.100101,
		0.619812, -0.781752, -0.068528,
		34.321308, 35.521961, 43.295124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760601, 35.549309, 43.863266>,  <33.887440, 36.069187, 43.343094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760601, 35.549309, 43.863266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131599, 35.457378, 43.745327>,  <34.354198, 35.402222, 43.674564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131599, 35.457378, 43.745327>,  <33.760601, 35.549309, 43.863266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131599, 35.457378, 43.745327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266251, -0.147535, 0.952546,
		-0.262423, -0.961983, -0.075645,
		0.927493, -0.229829, -0.294846,
		34.409847, 35.388432, 43.656872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019676, 34.913181, 44.234432>,  <33.760601, 35.549309, 43.863266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019676, 34.913181, 44.234432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366577, 35.048187, 44.088032>,  <34.574718, 35.129192, 44.000191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366577, 35.048187, 44.088032>,  <34.019676, 34.913181, 44.234432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366577, 35.048187, 44.088032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411546, -0.072287, 0.908518,
		0.280183, -0.938540, -0.201595,
		0.867253, 0.337517, -0.365999,
		34.626755, 35.149441, 43.978233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595963, 34.625126, 44.635159>,  <34.019676, 34.913181, 44.234432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595963, 34.625126, 44.635159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797417, 34.918758, 44.452957>,  <34.918289, 35.094936, 44.343636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797417, 34.918758, 44.452957>,  <34.595963, 34.625126, 44.635159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797417, 34.918758, 44.452957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585403, 0.097765, 0.804826,
		0.635336, -0.671992, -0.380493,
		0.503638, 0.734077, -0.455500,
		34.948509, 35.138981, 44.316307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280308, 34.485809, 44.786194>,  <34.595963, 34.625126, 44.635159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280308, 34.485809, 44.786194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244072, 34.871822, 44.687805>,  <35.222328, 35.103432, 44.628773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244072, 34.871822, 44.687805>,  <35.280308, 34.485809, 44.786194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244072, 34.871822, 44.687805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412497, 0.261168, 0.872718,
		0.906443, -0.022402, -0.421733,
		-0.090593, 0.965033, -0.245975,
		35.216896, 35.161331, 44.614014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862476, 34.765148, 45.008862>,  <35.280308, 34.485809, 44.786194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862476, 34.765148, 45.008862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613453, 35.076431, 44.975845>,  <35.464039, 35.263203, 44.956036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613453, 35.076431, 44.975845>,  <35.862476, 34.765148, 45.008862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613453, 35.076431, 44.975845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437355, 0.433451, 0.787934,
		0.648958, 0.454431, -0.610202,
		-0.622555, 0.778211, -0.082544,
		35.426685, 35.309895, 44.951080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265278, 35.275326, 45.100094>,  <35.862476, 34.765148, 45.008862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265278, 35.275326, 45.100094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903122, 35.411572, 45.201481>,  <35.685829, 35.493320, 45.262314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903122, 35.411572, 45.201481>,  <36.265278, 35.275326, 45.100094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903122, 35.411572, 45.201481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344063, 0.238808, 0.908070,
		0.248771, 0.909369, -0.333408,
		-0.905391, 0.340615, 0.253472,
		35.631504, 35.513756, 45.277523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541008, 36.007523, 44.811775>,  <36.265278, 35.275326, 45.100094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541008, 36.007523, 44.811775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852795, 36.226967, 44.690804>,  <37.039867, 36.358635, 44.618221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852795, 36.226967, 44.690804>,  <36.541008, 36.007523, 44.811775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852795, 36.226967, 44.690804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179549, -0.266865, -0.946861,
		-0.600167, 0.792343, -0.109509,
		0.779463, 0.548612, -0.302428,
		37.086632, 36.391552, 44.600075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291397, 36.441528, 44.144726>,  <36.541008, 36.007523, 44.811775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291397, 36.441528, 44.144726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689865, 36.414009, 44.123169>,  <36.928947, 36.397495, 44.110233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689865, 36.414009, 44.123169>,  <36.291397, 36.441528, 44.144726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689865, 36.414009, 44.123169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056349, -0.034211, -0.997825,
		0.066808, 0.997044, -0.037957,
		0.996173, -0.068801, -0.053897,
		36.988716, 36.393368, 44.106998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473530, 36.763298, 43.546085>,  <36.291397, 36.441528, 44.144726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473530, 36.763298, 43.546085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796230, 36.537926, 43.617290>,  <36.989853, 36.402702, 43.660015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796230, 36.537926, 43.617290>,  <36.473530, 36.763298, 43.546085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796230, 36.537926, 43.617290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076334, -0.199366, -0.976947,
		0.585936, 0.801745, -0.117830,
		0.806754, -0.563434, 0.178016,
		37.038258, 36.368896, 43.670696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003845, 37.047482, 43.056499>,  <36.473530, 36.763298, 43.546085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003845, 37.047482, 43.056499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085640, 36.669144, 43.157345>,  <37.134716, 36.442142, 43.217854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085640, 36.669144, 43.157345>,  <37.003845, 37.047482, 43.056499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085640, 36.669144, 43.157345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008889, -0.259340, -0.965745,
		0.978828, 0.195246, -0.061440,
		0.204491, -0.945845, 0.252113,
		37.146988, 36.385391, 43.232979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594376, 36.874249, 42.575577>,  <37.003845, 37.047482, 43.056499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594376, 36.874249, 42.575577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427097, 36.529064, 42.689007>,  <37.326733, 36.321953, 42.757065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427097, 36.529064, 42.689007>,  <37.594376, 36.874249, 42.575577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427097, 36.529064, 42.689007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035778, -0.296289, -0.954428,
		0.907654, -0.409279, 0.093030,
		-0.418191, -0.862962, 0.283571,
		37.301640, 36.270176, 42.774078>
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
