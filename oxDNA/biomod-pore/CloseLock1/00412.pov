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
	<24.385864, 35.372364, 34.750683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168680, 35.036594, 34.741249>,  <24.038370, 34.835133, 34.735588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168680, 35.036594, 34.741249>,  <24.385864, 35.372364, 34.750683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168680, 35.036594, 34.741249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201053, -0.102672, -0.974185,
		0.815335, -0.533686, 0.224516,
		-0.542960, -0.839427, -0.023587,
		24.005793, 34.784767, 34.734173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916059, 34.946213, 34.744034>,  <24.385864, 35.372364, 34.750683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916059, 34.946213, 34.744034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885786, 34.705975, 35.062420>,  <24.867622, 34.561832, 35.253452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885786, 34.705975, 35.062420>,  <24.916059, 34.946213, 34.744034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885786, 34.705975, 35.062420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846964, 0.382556, 0.369192,
		-0.526236, 0.702094, 0.479729,
		-0.075684, -0.600595, 0.795963,
		24.863081, 34.525795, 35.301208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084806, 35.270515, 35.426399>,  <24.916059, 34.946213, 34.744034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084806, 35.270515, 35.426399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188093, 34.898907, 35.532410>,  <25.250065, 34.675941, 35.596016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188093, 34.898907, 35.532410>,  <25.084806, 35.270515, 35.426399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188093, 34.898907, 35.532410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930548, 0.312898, 0.190198,
		-0.259624, 0.197506, 0.945297,
		0.258216, -0.929025, 0.265024,
		25.265558, 34.620201, 35.611916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387671, 35.382710, 36.047749>,  <25.084806, 35.270515, 35.426399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387671, 35.382710, 36.047749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531597, 35.057980, 35.863804>,  <25.617954, 34.863144, 35.753437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531597, 35.057980, 35.863804>,  <25.387671, 35.382710, 36.047749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531597, 35.057980, 35.863804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927109, 0.255690, 0.274029,
		-0.104880, -0.524947, 0.844649,
		0.359819, -0.811821, -0.459866,
		25.639544, 34.814434, 35.725845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786682, 34.722775, 36.478497>,  <25.387671, 35.382710, 36.047749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786682, 34.722775, 36.478497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907162, 34.812057, 36.107670>,  <25.979450, 34.865627, 35.885174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907162, 34.812057, 36.107670>,  <25.786682, 34.722775, 36.478497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907162, 34.812057, 36.107670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922602, 0.177510, 0.342484,
		0.241008, -0.958473, -0.152464,
		0.301198, 0.223205, -0.927070,
		25.997520, 34.879021, 35.829548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458473, 35.066849, 36.523220>,  <25.786682, 34.722775, 36.478497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458473, 35.066849, 36.523220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848335, 34.991096, 36.475594>,  <27.082253, 34.945644, 36.447018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848335, 34.991096, 36.475594>,  <26.458473, 35.066849, 36.523220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848335, 34.991096, 36.475594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216474, -0.932687, -0.288502,
		-0.056417, 0.306966, -0.950047,
		0.974657, -0.189384, -0.119069,
		27.140732, 34.934280, 36.439873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616814, 34.694954, 35.916225>,  <26.458473, 35.066849, 36.523220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616814, 34.694954, 35.916225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946346, 34.613178, 36.127697>,  <27.144066, 34.564114, 36.254581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946346, 34.613178, 36.127697>,  <26.616814, 34.694954, 35.916225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946346, 34.613178, 36.127697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074103, -0.963535, -0.257118,
		0.561967, 0.172646, -0.808941,
		0.823833, -0.204437, 0.528681,
		27.193497, 34.551846, 36.286301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941088, 34.227005, 35.580696>,  <26.616814, 34.694954, 35.916225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941088, 34.227005, 35.580696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090456, 34.186378, 35.949532>,  <27.180077, 34.162003, 36.170834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090456, 34.186378, 35.949532>,  <26.941088, 34.227005, 35.580696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090456, 34.186378, 35.949532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115203, -0.981216, -0.154734,
		0.920482, 0.164007, -0.354704,
		0.373419, -0.101567, 0.922086,
		27.202482, 34.155907, 36.226158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476549, 33.622166, 35.506748>,  <26.941088, 34.227005, 35.580696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476549, 33.622166, 35.506748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396893, 33.658043, 35.897091>,  <27.349098, 33.679569, 36.131298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396893, 33.658043, 35.897091>,  <27.476549, 33.622166, 35.506748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396893, 33.658043, 35.897091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027444, -0.995923, 0.085932,
		0.979586, -0.009669, 0.200791,
		-0.199141, 0.089688, 0.975858,
		27.337151, 33.684948, 36.189850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787621, 32.978561, 35.758114>,  <27.476549, 33.622166, 35.506748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787621, 32.978561, 35.758114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562792, 33.121231, 36.056606>,  <27.427895, 33.206833, 36.235703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562792, 33.121231, 36.056606>,  <27.787621, 32.978561, 35.758114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562792, 33.121231, 36.056606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092591, -0.923702, 0.371756,
		0.821889, 0.139859, 0.552211,
		-0.562072, 0.356672, 0.746231,
		27.394171, 33.228233, 36.280476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014429, 32.706966, 36.316364>,  <27.787621, 32.978561, 35.758114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014429, 32.706966, 36.316364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638002, 32.822750, 36.386345>,  <27.412148, 32.892220, 36.428333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638002, 32.822750, 36.386345>,  <28.014429, 32.706966, 36.316364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638002, 32.822750, 36.386345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211042, -0.906750, 0.365057,
		0.264308, 0.306620, 0.914399,
		-0.941065, 0.289464, 0.174952,
		27.355682, 32.909588, 36.438831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828896, 32.600430, 37.058208>,  <28.014429, 32.706966, 36.316364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828896, 32.600430, 37.058208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479412, 32.610287, 36.863880>,  <27.269722, 32.616203, 36.747284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479412, 32.610287, 36.863880>,  <27.828896, 32.600430, 37.058208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479412, 32.610287, 36.863880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287878, -0.831252, 0.475548,
		-0.392123, 0.555348, 0.733367,
		-0.873708, 0.024647, -0.485825,
		27.217300, 32.617680, 36.718132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315954, 32.361755, 37.541477>,  <27.828896, 32.600430, 37.058208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315954, 32.361755, 37.541477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133312, 32.300354, 37.190948>,  <27.023727, 32.263512, 36.980629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133312, 32.300354, 37.190948>,  <27.315954, 32.361755, 37.541477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133312, 32.300354, 37.190948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198639, -0.942547, 0.268604,
		-0.867210, 0.296719, 0.399880,
		-0.456606, -0.153504, -0.876326,
		26.996330, 32.254303, 36.928051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630638, 32.002155, 37.666679>,  <27.315954, 32.361755, 37.541477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630638, 32.002155, 37.666679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664415, 31.948910, 37.271683>,  <26.684683, 31.916962, 37.034683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664415, 31.948910, 37.271683>,  <26.630638, 32.002155, 37.666679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664415, 31.948910, 37.271683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113400, -0.985881, 0.123202,
		-0.989954, 0.101578, -0.098348,
		0.084445, -0.133117, -0.987496,
		26.689749, 31.908974, 36.975433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006701, 31.562292, 37.477287>,  <26.630638, 32.002155, 37.666679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006701, 31.562292, 37.477287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284206, 31.517553, 37.192703>,  <26.450710, 31.490709, 37.021954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284206, 31.517553, 37.192703>,  <26.006701, 31.562292, 37.477287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284206, 31.517553, 37.192703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136264, -0.990410, 0.022825,
		-0.707192, 0.081112, -0.702353,
		0.693766, -0.111847, -0.711462,
		26.492336, 31.483999, 36.979263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777098, 31.058172, 37.071190>,  <26.006701, 31.562292, 37.477287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777098, 31.058172, 37.071190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163324, 31.069000, 36.967690>,  <26.395060, 31.075497, 36.905590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163324, 31.069000, 36.967690>,  <25.777098, 31.058172, 37.071190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163324, 31.069000, 36.967690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019711, -0.999325, -0.030989,
		-0.259417, 0.024822, -0.965447,
		0.965564, 0.027069, -0.258752,
		26.452993, 31.077122, 36.890064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886557, 30.499325, 36.612221>,  <25.777098, 31.058172, 37.071190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886557, 30.499325, 36.612221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253918, 30.603928, 36.730980>,  <26.474335, 30.666689, 36.802235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253918, 30.603928, 36.730980>,  <25.886557, 30.499325, 36.612221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253918, 30.603928, 36.730980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215572, -0.959993, 0.178722,
		0.331758, -0.100136, -0.938035,
		0.918404, 0.261506, 0.296899,
		26.529438, 30.682379, 36.820049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304819, 30.128799, 36.247829>,  <25.886557, 30.499325, 36.612221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304819, 30.128799, 36.247829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503815, 30.232250, 36.579037>,  <26.623211, 30.294321, 36.777763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503815, 30.232250, 36.579037>,  <26.304819, 30.128799, 36.247829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503815, 30.232250, 36.579037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133868, -0.965977, 0.221285,
		0.857080, 0.000759, -0.515182,
		0.497487, 0.258625, 0.828022,
		26.653061, 30.309837, 36.827442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650000, 29.491034, 36.355358>,  <26.304819, 30.128799, 36.247829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650000, 29.491034, 36.355358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738018, 29.671432, 36.701347>,  <26.790829, 29.779673, 36.908943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738018, 29.671432, 36.701347>,  <26.650000, 29.491034, 36.355358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738018, 29.671432, 36.701347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094046, -0.892386, 0.441364,
		0.970946, -0.015772, -0.238779,
		0.220044, 0.450997, 0.864975,
		26.804031, 29.806732, 36.960838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278425, 29.295706, 36.662792>,  <26.650000, 29.491034, 36.355358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278425, 29.295706, 36.662792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101036, 29.428732, 36.995716>,  <26.994602, 29.508547, 37.195469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101036, 29.428732, 36.995716>,  <27.278425, 29.295706, 36.662792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101036, 29.428732, 36.995716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332781, -0.801139, 0.497426,
		0.832219, 0.497570, 0.244612,
		-0.443473, 0.332566, 0.832305,
		26.967995, 29.528502, 37.245407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549870, 28.863245, 37.136909>,  <27.278425, 29.295706, 36.662792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549870, 28.863245, 37.136909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300573, 29.058481, 37.381317>,  <27.150995, 29.175623, 37.527962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300573, 29.058481, 37.381317>,  <27.549870, 28.863245, 37.136909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300573, 29.058481, 37.381317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168359, -0.679257, 0.714329,
		0.763691, 0.548070, 0.341168,
		-0.623242, 0.488088, 0.611014,
		27.113600, 29.204908, 37.564621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874090, 29.036530, 37.775238>,  <27.549870, 28.863245, 37.136909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874090, 29.036530, 37.775238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481155, 28.982283, 37.826805>,  <27.245394, 28.949734, 37.857746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481155, 28.982283, 37.826805>,  <27.874090, 29.036530, 37.775238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481155, 28.982283, 37.826805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187109, -0.709129, 0.679798,
		-0.000776, 0.691913, 0.721980,
		-0.982339, -0.135617, 0.128913,
		27.186453, 28.941597, 37.865479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941217, 28.622660, 38.393936>,  <27.874090, 29.036530, 37.775238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941217, 28.622660, 38.393936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549906, 28.582314, 38.321499>,  <27.315119, 28.558105, 38.278038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549906, 28.582314, 38.321499>,  <27.941217, 28.622660, 38.393936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549906, 28.582314, 38.321499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021322, -0.820034, 0.571918,
		-0.206190, 0.563357, 0.800072,
		-0.978280, -0.100864, -0.181095,
		27.256422, 28.552053, 38.267170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580759, 28.632084, 39.097775>,  <27.941217, 28.622660, 38.393936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580759, 28.632084, 39.097775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367973, 28.458532, 38.806911>,  <27.240301, 28.354401, 38.632393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367973, 28.458532, 38.806911>,  <27.580759, 28.632084, 39.097775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367973, 28.458532, 38.806911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037188, -0.845950, 0.531964,
		-0.845950, 0.310027, 0.433880,
		-0.531964, -0.433880, -0.727161,
		27.208384, 28.328369, 38.588764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948895, 28.356541, 39.304417>,  <27.580759, 28.632084, 39.097775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948895, 28.356541, 39.304417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076216, 28.127518, 39.002193>,  <27.152609, 27.990105, 38.820862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076216, 28.127518, 39.002193>,  <26.948895, 28.356541, 39.304417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076216, 28.127518, 39.002193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015030, -0.799955, 0.599873,
		-0.947870, -0.179585, -0.263233,
		0.318303, -0.572558, -0.755554,
		27.171707, 27.955751, 38.775528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482231, 27.736399, 39.361084>,  <26.948895, 28.356541, 39.304417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482231, 27.736399, 39.361084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827089, 27.659706, 39.173492>,  <27.034004, 27.613691, 39.060936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827089, 27.659706, 39.173492>,  <26.482231, 27.736399, 39.361084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827089, 27.659706, 39.173492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020779, -0.938234, 0.345377,
		-0.506232, -0.288021, -0.812879,
		0.862147, -0.191732, -0.468979,
		27.085733, 27.602186, 39.032799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572708, 27.294577, 38.605434>,  <26.482231, 27.736399, 39.361084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572708, 27.294577, 38.605434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843163, 27.272467, 38.899315>,  <27.005436, 27.259201, 39.075642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843163, 27.272467, 38.899315>,  <26.572708, 27.294577, 38.605434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843163, 27.272467, 38.899315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186168, -0.977641, 0.097776,
		0.712867, -0.202888, -0.671310,
		0.676138, -0.055275, 0.734699,
		27.046003, 27.255884, 39.119724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843401, 26.704746, 38.492786>,  <26.572708, 27.294577, 38.605434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843401, 26.704746, 38.492786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002256, 26.753994, 38.856571>,  <27.097569, 26.783543, 39.074841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002256, 26.753994, 38.856571>,  <26.843401, 26.704746, 38.492786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002256, 26.753994, 38.856571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042512, -0.987429, 0.152237,
		0.916774, -0.099122, -0.386911,
		0.397137, 0.123119, 0.909463,
		27.121397, 26.790930, 39.129410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453659, 26.236786, 38.534885>,  <26.843401, 26.704746, 38.492786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453659, 26.236786, 38.534885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242970, 26.321714, 38.864124>,  <27.116556, 26.372671, 39.061668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242970, 26.321714, 38.864124>,  <27.453659, 26.236786, 38.534885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242970, 26.321714, 38.864124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041850, -0.960651, 0.274586,
		0.849007, 0.179078, 0.497110,
		-0.526722, 0.212322, 0.823094,
		27.084953, 26.385410, 39.111053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819765, 26.030073, 39.213085>,  <27.453659, 26.236786, 38.534885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819765, 26.030073, 39.213085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421837, 26.000635, 39.241131>,  <27.183081, 25.982971, 39.257957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421837, 26.000635, 39.241131>,  <27.819765, 26.030073, 39.213085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421837, 26.000635, 39.241131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089876, -0.959069, 0.268531,
		0.047477, 0.273441, 0.960716,
		-0.994821, -0.073596, 0.070110,
		27.123390, 25.978556, 39.262165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900043, 25.761461, 39.950603>,  <27.819765, 26.030073, 39.213085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900043, 25.761461, 39.950603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104614, 25.534384, 39.692558>,  <28.227358, 25.398138, 39.537731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104614, 25.534384, 39.692558>,  <27.900043, 25.761461, 39.950603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104614, 25.534384, 39.692558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683754, -0.185883, 0.705640,
		-0.520501, -0.801981, 0.293096,
		0.511429, -0.567692, -0.645109,
		28.258043, 25.364077, 39.499027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065504, 26.367327, 40.359119>,  <27.900043, 25.761461, 39.950603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065504, 26.367327, 40.359119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193239, 26.427864, 40.733311>,  <28.269880, 26.464186, 40.957825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193239, 26.427864, 40.733311>,  <28.065504, 26.367327, 40.359119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193239, 26.427864, 40.733311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048648, 0.988482, -0.143310,
		-0.946391, 0.000255, 0.323022,
		0.319338, 0.151341, 0.935478,
		28.289042, 26.473267, 41.013954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789703, 27.031340, 40.460526>,  <28.065504, 26.367327, 40.359119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789703, 27.031340, 40.460526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036303, 26.996075, 40.773487>,  <28.184263, 26.974916, 40.961266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036303, 26.996075, 40.773487>,  <27.789703, 27.031340, 40.460526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036303, 26.996075, 40.773487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175781, 0.984042, -0.027626,
		-0.767482, 0.154563, 0.622158,
		0.616500, -0.088161, 0.782404,
		28.221252, 26.969625, 41.008209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597748, 27.376925, 41.212254>,  <27.789703, 27.031340, 40.460526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597748, 27.376925, 41.212254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993118, 27.358829, 41.154339>,  <28.230341, 27.347973, 41.119591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993118, 27.358829, 41.154339>,  <27.597748, 27.376925, 41.212254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993118, 27.358829, 41.154339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045024, 0.998975, -0.004742,
		0.144856, -0.001832, 0.989451,
		0.988428, -0.045236, -0.144790,
		28.289646, 27.345259, 41.110901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074348, 27.650196, 41.804443>,  <27.597748, 27.376925, 41.212254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074348, 27.650196, 41.804443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212124, 27.684572, 41.430496>,  <28.294790, 27.705198, 41.206127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212124, 27.684572, 41.430496>,  <28.074348, 27.650196, 41.804443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212124, 27.684572, 41.430496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039729, 0.993575, 0.105976,
		0.937967, -0.073643, 0.338813,
		0.344440, 0.085941, -0.934866,
		28.315456, 27.710354, 41.150036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321470, 28.339699, 41.777054>,  <28.074348, 27.650196, 41.804443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321470, 28.339699, 41.777054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354563, 28.250271, 41.388584>,  <28.374418, 28.196613, 41.155502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354563, 28.250271, 41.388584>,  <28.321470, 28.339699, 41.777054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354563, 28.250271, 41.388584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249773, 0.948058, -0.196973,
		0.964763, -0.226276, 0.134278,
		0.082733, -0.223571, -0.971170,
		28.379383, 28.183199, 41.097233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098774, 28.343296, 41.416904>,  <28.321470, 28.339699, 41.777054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098774, 28.343296, 41.416904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826841, 28.417622, 41.133129>,  <28.663683, 28.462217, 40.962864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826841, 28.417622, 41.133129>,  <29.098774, 28.343296, 41.416904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826841, 28.417622, 41.133129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505979, 0.819090, -0.270327,
		0.530865, -0.542738, -0.650860,
		-0.679829, 0.185815, -0.709440,
		28.622892, 28.473366, 40.920296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473055, 28.668133, 40.889999>,  <29.098774, 28.343296, 41.416904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473055, 28.668133, 40.889999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094006, 28.743265, 40.786671>,  <28.866575, 28.788345, 40.724674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094006, 28.743265, 40.786671>,  <29.473055, 28.668133, 40.889999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094006, 28.743265, 40.786671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266751, 0.910248, -0.316690,
		0.175649, -0.369010, -0.912677,
		-0.947624, 0.187831, -0.258317,
		28.809719, 28.799614, 40.709175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462721, 28.835266, 40.231831>,  <29.473055, 28.668133, 40.889999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462721, 28.835266, 40.231831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123098, 28.991718, 40.373886>,  <28.919325, 29.085588, 40.459118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123098, 28.991718, 40.373886>,  <29.462721, 28.835266, 40.231831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123098, 28.991718, 40.373886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271124, 0.899543, -0.342512,
		-0.453427, -0.194525, -0.869807,
		-0.849056, 0.391130, 0.355136,
		28.868382, 29.109056, 40.480427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410652, 29.431650, 39.748066>,  <29.462721, 28.835266, 40.231831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410652, 29.431650, 39.748066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147667, 29.498566, 40.041939>,  <28.989876, 29.538715, 40.218262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147667, 29.498566, 40.041939>,  <29.410652, 29.431650, 39.748066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147667, 29.498566, 40.041939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128376, 0.985656, -0.109551,
		-0.742472, 0.022290, -0.669506,
		-0.657461, 0.167287, 0.734684,
		28.950428, 29.548752, 40.262344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022881, 29.956213, 39.544895>,  <29.410652, 29.431650, 39.748066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022881, 29.956213, 39.544895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963966, 29.947123, 39.940430>,  <28.928617, 29.941668, 40.177750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963966, 29.947123, 39.940430>,  <29.022881, 29.956213, 39.544895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963966, 29.947123, 39.940430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131413, 0.990423, 0.042338,
		-0.980325, 0.136181, -0.142887,
		-0.147284, -0.022727, 0.988833,
		28.919781, 29.940304, 40.237080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397543, 30.255264, 39.795258>,  <29.022881, 29.956213, 39.544895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397543, 30.255264, 39.795258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620546, 30.276264, 40.126663>,  <28.754349, 30.288864, 40.325504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620546, 30.276264, 40.126663>,  <28.397543, 30.255264, 39.795258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620546, 30.276264, 40.126663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116022, 0.983276, -0.140379,
		-0.822025, 0.174388, 0.542092,
		0.557506, 0.052500, 0.828511,
		28.787798, 30.292015, 40.375217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138502, 30.768808, 40.057880>,  <28.397543, 30.255264, 39.795258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138502, 30.768808, 40.057880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491758, 30.748690, 40.244442>,  <28.703712, 30.736618, 40.356377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491758, 30.748690, 40.244442>,  <28.138502, 30.768808, 40.057880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491758, 30.748690, 40.244442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085322, 0.994874, -0.054275,
		-0.461281, 0.087727, 0.882907,
		0.883142, -0.050295, 0.466401,
		28.756701, 30.733601, 40.384361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188862, 31.310293, 40.495148>,  <28.138502, 30.768808, 40.057880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188862, 31.310293, 40.495148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577621, 31.220181, 40.467838>,  <28.810877, 31.166113, 40.451454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577621, 31.220181, 40.467838>,  <28.188862, 31.310293, 40.495148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577621, 31.220181, 40.467838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216961, 0.969791, -0.111503,
		0.091332, 0.093556, 0.991416,
		0.971899, -0.225282, -0.068274,
		28.869190, 31.152596, 40.447357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519842, 31.826727, 40.912392>,  <28.188862, 31.310293, 40.495148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519842, 31.826727, 40.912392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798716, 31.673592, 40.669949>,  <28.966040, 31.581711, 40.524483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798716, 31.673592, 40.669949>,  <28.519842, 31.826727, 40.912392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798716, 31.673592, 40.669949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295491, 0.923769, -0.243590,
		0.653163, -0.009274, 0.757161,
		0.697182, -0.382838, -0.606112,
		29.007870, 31.558741, 40.488113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068037, 32.274406, 40.943317>,  <28.519842, 31.826727, 40.912392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068037, 32.274406, 40.943317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121113, 32.081104, 40.597172>,  <29.152958, 31.965122, 40.389484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121113, 32.081104, 40.597172>,  <29.068037, 32.274406, 40.943317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121113, 32.081104, 40.597172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276069, 0.856555, -0.436004,
		0.951934, -0.181047, 0.247069,
		0.132691, -0.483256, -0.865365,
		29.160921, 31.936127, 40.337563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520090, 32.772766, 40.595818>,  <29.068037, 32.274406, 40.943317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520090, 32.772766, 40.595818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394192, 32.522728, 40.310108>,  <29.318653, 32.372704, 40.138683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394192, 32.522728, 40.310108>,  <29.520090, 32.772766, 40.595818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394192, 32.522728, 40.310108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312352, 0.642395, -0.699832,
		0.896310, -0.443374, -0.006940,
		-0.314745, -0.625099, -0.714274,
		29.299768, 32.335197, 40.095825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099300, 32.650719, 40.118240>,  <29.520090, 32.772766, 40.595818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099300, 32.650719, 40.118240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743895, 32.598026, 39.942429>,  <29.530651, 32.566410, 39.836941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743895, 32.598026, 39.942429>,  <30.099300, 32.650719, 40.118240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743895, 32.598026, 39.942429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207110, 0.739635, -0.640348,
		0.409442, -0.659991, -0.629896,
		-0.888517, -0.131728, -0.439529,
		29.477339, 32.558506, 39.810570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342430, 32.833294, 39.443432>,  <30.099300, 32.650719, 40.118240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342430, 32.833294, 39.443432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944160, 32.843925, 39.479053>,  <29.705198, 32.850304, 39.500427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944160, 32.843925, 39.479053>,  <30.342430, 32.833294, 39.443432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944160, 32.843925, 39.479053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045050, 0.700075, -0.712647,
		-0.081285, -0.713574, -0.695848,
		-0.995672, 0.026579, 0.089052,
		29.645458, 32.851898, 39.505768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037148, 32.684643, 38.746803>,  <30.342430, 32.833294, 39.443432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037148, 32.684643, 38.746803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763157, 32.875244, 38.967258>,  <29.598763, 32.989605, 39.099529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763157, 32.875244, 38.967258>,  <30.037148, 32.684643, 38.746803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763157, 32.875244, 38.967258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094253, 0.692156, -0.715567,
		-0.722441, -0.542094, -0.429200,
		-0.684978, 0.476502, 0.551136,
		29.557663, 33.018196, 39.132599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470135, 32.823910, 38.273537>,  <30.037148, 32.684643, 38.746803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470135, 32.823910, 38.273537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411289, 33.082283, 38.573170>,  <29.375982, 33.237309, 38.752949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411289, 33.082283, 38.573170>,  <29.470135, 32.823910, 38.273537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411289, 33.082283, 38.573170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221612, 0.716545, -0.661402,
		-0.963974, -0.263306, 0.037734,
		-0.147114, 0.645936, 0.749082,
		29.367155, 33.276062, 38.797894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914572, 33.151085, 38.061371>,  <29.470135, 32.823910, 38.273537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914572, 33.151085, 38.061371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060305, 33.387886, 38.348923>,  <29.147743, 33.529968, 38.521454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060305, 33.387886, 38.348923>,  <28.914572, 33.151085, 38.061371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060305, 33.387886, 38.348923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324364, 0.804270, -0.497934,
		-0.872955, -0.051767, 0.485046,
		0.364331, 0.592005, 0.718883,
		29.169603, 33.565487, 38.564587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474966, 33.769062, 38.103199>,  <28.914572, 33.151085, 38.061371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474966, 33.769062, 38.103199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823648, 33.880829, 38.264221>,  <29.032858, 33.947887, 38.360836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823648, 33.880829, 38.264221>,  <28.474966, 33.769062, 38.103199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823648, 33.880829, 38.264221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039512, 0.778749, -0.626090,
		-0.488433, 0.561673, 0.667800,
		0.871707, 0.279417, 0.402559,
		29.085161, 33.964653, 38.384991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406612, 34.458145, 38.281036>,  <28.474966, 33.769062, 38.103199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406612, 34.458145, 38.281036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805151, 34.424519, 38.275032>,  <29.044273, 34.404343, 38.271431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805151, 34.424519, 38.275032>,  <28.406612, 34.458145, 38.281036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805151, 34.424519, 38.275032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067842, 0.885946, -0.458799,
		0.051866, 0.456105, 0.888413,
		0.996347, -0.084067, -0.015007,
		29.104055, 34.399300, 38.270531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584784, 35.073753, 38.575638>,  <28.406612, 34.458145, 38.281036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584784, 35.073753, 38.575638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900118, 34.945618, 38.365528>,  <29.089319, 34.868736, 38.239464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900118, 34.945618, 38.365528>,  <28.584784, 35.073753, 38.575638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900118, 34.945618, 38.365528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011164, 0.846170, -0.532796,
		0.615144, 0.425886, 0.663490,
		0.788336, -0.320339, -0.525271,
		29.136618, 34.849514, 38.207947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932756, 35.691002, 38.489998>,  <28.584784, 35.073753, 38.575638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932756, 35.691002, 38.489998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135941, 35.450447, 38.243320>,  <29.257851, 35.306114, 38.095314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135941, 35.450447, 38.243320>,  <28.932756, 35.691002, 38.489998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135941, 35.450447, 38.243320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183325, 0.775011, -0.604773,
		0.841645, 0.194146, 0.503925,
		0.507961, -0.601386, -0.616693,
		29.288328, 35.270031, 38.058311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674288, 35.985806, 38.319107>,  <28.932756, 35.691002, 38.489998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674288, 35.985806, 38.319107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546225, 35.734962, 38.035072>,  <29.469387, 35.584457, 37.864651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546225, 35.734962, 38.035072>,  <29.674288, 35.985806, 38.319107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546225, 35.734962, 38.035072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281680, 0.652633, -0.703368,
		0.904520, -0.425207, -0.032300,
		-0.320157, -0.627112, -0.710092,
		29.450178, 35.546829, 37.822044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226385, 35.805286, 37.818359>,  <29.674288, 35.985806, 38.319107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226385, 35.805286, 37.818359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858915, 35.821667, 37.661201>,  <29.638433, 35.831493, 37.566906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858915, 35.821667, 37.661201>,  <30.226385, 35.805286, 37.818359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858915, 35.821667, 37.661201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292597, 0.738738, -0.607168,
		0.265382, -0.672748, -0.690639,
		-0.918673, 0.040948, -0.392892,
		29.583313, 35.833950, 37.543335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612730, 35.145222, 37.895615>,  <30.226385, 35.805286, 37.818359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612730, 35.145222, 37.895615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731554, 35.351353, 37.574070>,  <30.802849, 35.475029, 37.381142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731554, 35.351353, 37.574070>,  <30.612730, 35.145222, 37.895615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731554, 35.351353, 37.574070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879883, 0.179272, 0.440076,
		0.370892, -0.838034, -0.400172,
		0.297059, 0.515325, -0.803863,
		30.820671, 35.505951, 37.332912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300489, 34.890759, 37.583679>,  <30.612730, 35.145222, 37.895615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300489, 34.890759, 37.583679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238247, 35.284386, 37.549263>,  <31.200901, 35.520561, 37.528614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238247, 35.284386, 37.549263>,  <31.300489, 34.890759, 37.583679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238247, 35.284386, 37.549263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889898, 0.177458, 0.420227,
		0.428798, -0.011173, -0.903331,
		-0.155608, 0.984065, -0.086036,
		31.191565, 35.579605, 37.523453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790997, 35.286674, 37.086807>,  <31.300489, 34.890759, 37.583679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790997, 35.286674, 37.086807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663877, 35.486950, 37.408878>,  <31.587606, 35.607117, 37.602119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663877, 35.486950, 37.408878>,  <31.790997, 35.286674, 37.086807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663877, 35.486950, 37.408878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947325, 0.132069, 0.291777,
		0.039751, 0.855492, -0.516288,
		-0.317798, 0.500691, 0.805179,
		31.568539, 35.637157, 37.650433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079559, 34.619652, 37.197544>,  <31.790997, 35.286674, 37.086807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079559, 34.619652, 37.197544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943069, 34.343941, 37.453190>,  <31.861176, 34.178516, 37.606579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943069, 34.343941, 37.453190>,  <32.079559, 34.619652, 37.197544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943069, 34.343941, 37.453190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639574, 0.328022, 0.695232,
		-0.688848, 0.645991, 0.328913,
		-0.341222, -0.689273, 0.639116,
		31.840702, 34.137157, 37.644924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362675, 34.912678, 37.789963>,  <32.079559, 34.619652, 37.197544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362675, 34.912678, 37.789963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179989, 34.587555, 37.934608>,  <32.070377, 34.392483, 38.021397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179989, 34.587555, 37.934608>,  <32.362675, 34.912678, 37.789963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179989, 34.587555, 37.934608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383165, 0.187119, 0.904528,
		-0.802869, 0.551666, 0.225979,
		-0.456713, -0.812804, 0.361611,
		32.042976, 34.343712, 38.043091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895023, 35.087734, 38.433849>,  <32.362675, 34.912678, 37.789963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895023, 35.087734, 38.433849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024811, 34.709511, 38.423744>,  <32.102684, 34.482578, 38.417683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024811, 34.709511, 38.423744>,  <31.895023, 35.087734, 38.433849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024811, 34.709511, 38.423744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235184, 0.054777, 0.970406,
		-0.916193, -0.320807, 0.240153,
		0.324468, -0.945559, -0.025263,
		32.122150, 34.425842, 38.416164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620602, 34.654202, 39.085793>,  <31.895023, 35.087734, 38.433849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620602, 34.654202, 39.085793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949284, 34.475723, 38.943966>,  <32.146492, 34.368637, 38.858871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949284, 34.475723, 38.943966>,  <31.620602, 34.654202, 39.085793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949284, 34.475723, 38.943966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311513, -0.169341, 0.935031,
		-0.477247, -0.878769, -0.000153,
		0.821703, -0.446193, -0.354566,
		32.195793, 34.341866, 38.837597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646873, 34.004566, 39.418026>,  <31.620602, 34.654202, 39.085793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646873, 34.004566, 39.418026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035507, 34.017639, 39.324257>,  <32.268688, 34.025482, 39.267994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035507, 34.017639, 39.324257>,  <31.646873, 34.004566, 39.418026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035507, 34.017639, 39.324257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226970, -0.409545, 0.883605,
		-0.067131, -0.911705, -0.405325,
		0.971585, 0.032679, -0.234423,
		32.326984, 34.027443, 39.253929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951929, 33.409618, 39.573956>,  <31.646873, 34.004566, 39.418026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951929, 33.409618, 39.573956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270584, 33.650116, 39.598831>,  <32.461777, 33.794415, 39.613758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270584, 33.650116, 39.598831>,  <31.951929, 33.409618, 39.573956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270584, 33.650116, 39.598831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207396, -0.368523, 0.906188,
		0.567761, -0.709008, -0.418276,
		0.796640, 0.601247, 0.062188,
		32.509575, 33.830490, 39.617489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438568, 33.019241, 39.787106>,  <31.951929, 33.409618, 39.573956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438568, 33.019241, 39.787106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614719, 33.370762, 39.860622>,  <32.720409, 33.581673, 39.904732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614719, 33.370762, 39.860622>,  <32.438568, 33.019241, 39.787106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614719, 33.370762, 39.860622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291927, -0.333742, 0.896323,
		0.849028, -0.341065, -0.403517,
		0.440375, 0.878801, 0.183790,
		32.746834, 33.634403, 39.915760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971210, 32.828068, 40.330906>,  <32.438568, 33.019241, 39.787106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971210, 32.828068, 40.330906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955185, 33.226646, 40.360558>,  <32.945568, 33.465794, 40.378349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955185, 33.226646, 40.360558>,  <32.971210, 32.828068, 40.330906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955185, 33.226646, 40.360558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342051, -0.056029, 0.938010,
		0.938827, 0.062936, -0.338590,
		-0.040064, 0.996444, 0.074129,
		32.943165, 33.525581, 40.382797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652615, 33.130322, 40.367798>,  <32.971210, 32.828068, 40.330906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652615, 33.130322, 40.367798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403168, 33.406261, 40.514885>,  <33.253502, 33.571823, 40.603138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403168, 33.406261, 40.514885>,  <33.652615, 33.130322, 40.367798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403168, 33.406261, 40.514885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530809, 0.028350, 0.847017,
		0.573888, 0.723399, -0.383857,
		-0.623613, 0.689848, 0.367717,
		33.216084, 33.613216, 40.625198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050407, 33.442734, 40.855133>,  <33.652615, 33.130322, 40.367798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050407, 33.442734, 40.855133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681370, 33.559193, 40.956371>,  <33.459949, 33.629070, 41.017113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681370, 33.559193, 40.956371>,  <34.050407, 33.442734, 40.855133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681370, 33.559193, 40.956371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285405, 0.073720, 0.955568,
		0.259557, 0.953832, -0.151110,
		-0.922591, 0.291151, 0.253094,
		33.404591, 33.646538, 41.032299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148060, 34.061909, 41.205914>,  <34.050407, 33.442734, 40.855133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148060, 34.061909, 41.205914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802811, 33.896561, 41.321941>,  <33.595661, 33.797352, 41.391556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802811, 33.896561, 41.321941>,  <34.148060, 34.061909, 41.205914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802811, 33.896561, 41.321941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372038, -0.132110, 0.918768,
		-0.341473, 0.900927, 0.267817,
		-0.863124, -0.413373, 0.290068,
		33.543873, 33.772549, 41.408962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207645, 34.270027, 41.833008>,  <34.148060, 34.061909, 41.205914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207645, 34.270027, 41.833008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912014, 34.000580, 41.832687>,  <33.734634, 33.838913, 41.832493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912014, 34.000580, 41.832687>,  <34.207645, 34.270027, 41.833008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912014, 34.000580, 41.832687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320447, -0.352640, 0.879181,
		-0.592512, 0.649530, 0.476488,
		-0.739083, -0.673614, -0.000803,
		33.690289, 33.798496, 41.832447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826263, 34.340118, 42.412502>,  <34.207645, 34.270027, 41.833008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826263, 34.340118, 42.412502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736664, 33.963417, 42.312157>,  <33.682903, 33.737396, 42.251949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736664, 33.963417, 42.312157>,  <33.826263, 34.340118, 42.412502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736664, 33.963417, 42.312157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152559, -0.288110, 0.945367,
		-0.962576, 0.173487, 0.208208,
		-0.223995, -0.941751, -0.250860,
		33.669464, 33.680893, 42.236900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374264, 34.055687, 42.920616>,  <33.826263, 34.340118, 42.412502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374264, 34.055687, 42.920616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522316, 33.725327, 42.750488>,  <33.611149, 33.527111, 42.648411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522316, 33.725327, 42.750488>,  <33.374264, 34.055687, 42.920616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522316, 33.725327, 42.750488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162495, -0.508332, 0.845692,
		-0.914657, -0.243906, -0.322354,
		0.370132, -0.825899, -0.425316,
		33.633354, 33.477558, 42.622894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888611, 33.489170, 43.096172>,  <33.374264, 34.055687, 42.920616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888611, 33.489170, 43.096172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230698, 33.313229, 42.986526>,  <33.435951, 33.207664, 42.920738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230698, 33.313229, 42.986526>,  <32.888611, 33.489170, 43.096172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230698, 33.313229, 42.986526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037881, -0.474428, 0.879479,
		-0.516890, -0.762526, -0.389075,
		0.855213, -0.439855, -0.274112,
		33.487263, 33.181274, 42.904293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732082, 32.833038, 43.156025>,  <32.888611, 33.489170, 43.096172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732082, 32.833038, 43.156025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128635, 32.873245, 43.189629>,  <33.366566, 32.897369, 43.209789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128635, 32.873245, 43.189629>,  <32.732082, 32.833038, 43.156025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128635, 32.873245, 43.189629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057813, -0.239720, 0.969119,
		0.117554, -0.965624, -0.231843,
		0.991382, 0.100521, 0.084006,
		33.426048, 32.903400, 43.214832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830776, 32.411514, 43.645470>,  <32.732082, 32.833038, 43.156025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830776, 32.411514, 43.645470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187210, 32.592579, 43.632412>,  <33.401070, 32.701218, 43.624577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187210, 32.592579, 43.632412>,  <32.830776, 32.411514, 43.645470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187210, 32.592579, 43.632412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205521, -0.338354, 0.918301,
		0.404632, -0.824995, -0.394534,
		0.891086, 0.452659, -0.032645,
		33.454536, 32.728378, 43.622620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320751, 31.993935, 43.969940>,  <32.830776, 32.411514, 43.645470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320751, 31.993935, 43.969940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507088, 32.347767, 43.978977>,  <33.618889, 32.560066, 43.984398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507088, 32.347767, 43.978977>,  <33.320751, 31.993935, 43.969940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507088, 32.347767, 43.978977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129829, -0.093581, 0.987110,
		0.875294, -0.456901, -0.158438,
		0.465838, 0.884581, 0.022592,
		33.646839, 32.613140, 43.985756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951069, 31.937487, 44.339142>,  <33.320751, 31.993935, 43.969940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951069, 31.937487, 44.339142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841202, 32.321213, 44.365299>,  <33.775284, 32.551449, 44.380993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841202, 32.321213, 44.365299>,  <33.951069, 31.937487, 44.339142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841202, 32.321213, 44.365299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182181, -0.014861, 0.983153,
		0.944123, 0.281952, -0.170687,
		-0.274666, 0.959313, 0.065397,
		33.758801, 32.609005, 44.384918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557995, 32.246784, 44.700451>,  <33.951069, 31.937487, 44.339142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557995, 32.246784, 44.700451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244881, 32.492508, 44.740208>,  <34.057014, 32.639942, 44.764061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244881, 32.492508, 44.740208>,  <34.557995, 32.246784, 44.700451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244881, 32.492508, 44.740208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086155, -0.265154, 0.960349,
		0.616305, 0.743181, 0.260483,
		-0.782781, 0.614309, 0.099387,
		34.010048, 32.676800, 44.770023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700722, 32.577625, 45.294117>,  <34.557995, 32.246784, 44.700451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700722, 32.577625, 45.294117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308651, 32.632660, 45.237106>,  <34.073406, 32.665680, 45.202900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308651, 32.632660, 45.237106>,  <34.700722, 32.577625, 45.294117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308651, 32.632660, 45.237106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163919, -0.159275, 0.973531,
		0.111245, 0.977600, 0.178672,
		-0.980181, 0.137588, -0.142529,
		34.014595, 32.673935, 45.194347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535110, 33.065510, 45.832890>,  <34.700722, 32.577625, 45.294117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535110, 33.065510, 45.832890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190231, 32.906933, 45.706745>,  <33.983303, 32.811787, 45.631058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190231, 32.906933, 45.706745>,  <34.535110, 33.065510, 45.832890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190231, 32.906933, 45.706745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228099, -0.252031, 0.940453,
		-0.452318, 0.882786, 0.126871,
		-0.862194, -0.396445, -0.315361,
		33.931572, 32.787998, 45.612137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964195, 33.495384, 46.135414>,  <34.535110, 33.065510, 45.832890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964195, 33.495384, 46.135414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841629, 33.124264, 46.050293>,  <33.768089, 32.901592, 45.999222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841629, 33.124264, 46.050293>,  <33.964195, 33.495384, 46.135414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841629, 33.124264, 46.050293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241072, -0.140630, 0.960264,
		-0.920865, 0.345543, -0.180576,
		-0.306418, -0.927806, -0.212802,
		33.749702, 32.845921, 45.986454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361206, 33.399303, 46.577564>,  <33.964195, 33.495384, 46.135414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361206, 33.399303, 46.577564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466946, 33.031002, 46.462795>,  <33.530392, 32.810020, 46.393932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466946, 33.031002, 46.462795>,  <33.361206, 33.399303, 46.577564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466946, 33.031002, 46.462795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179081, -0.339195, 0.923513,
		-0.947654, -0.192750, -0.254557,
		0.264352, -0.920757, -0.286921,
		33.546249, 32.754776, 46.376720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763248, 32.904228, 46.681309>,  <33.361206, 33.399303, 46.577564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763248, 32.904228, 46.681309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087074, 32.669838, 46.695400>,  <33.281368, 32.529202, 46.703854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087074, 32.669838, 46.695400>,  <32.763248, 32.904228, 46.681309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087074, 32.669838, 46.695400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325548, -0.398209, 0.857583,
		-0.488501, -0.705730, -0.513138,
		0.809559, -0.585982, 0.035224,
		33.329941, 32.494045, 46.705967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555645, 32.271793, 47.125454>,  <32.763248, 32.904228, 46.681309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555645, 32.271793, 47.125454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952171, 32.222080, 47.108273>,  <33.190086, 32.192253, 47.097965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952171, 32.222080, 47.108273>,  <32.555645, 32.271793, 47.125454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952171, 32.222080, 47.108273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002879, -0.306063, 0.952007,
		-0.131459, -0.943864, -0.303048,
		0.991317, -0.124278, -0.042952,
		33.249565, 32.184795, 47.095387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752819, 31.500698, 47.226788>,  <32.555645, 32.271793, 47.125454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752819, 31.500698, 47.226788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089935, 31.697027, 47.315155>,  <33.292206, 31.814825, 47.368176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089935, 31.697027, 47.315155>,  <32.752819, 31.500698, 47.226788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089935, 31.697027, 47.315155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092740, -0.536714, 0.838652,
		0.530199, -0.686316, -0.497854,
		0.842786, 0.490824, 0.220916,
		33.342770, 31.844275, 47.381432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258656, 31.019642, 47.411510>,  <32.752819, 31.500698, 47.226788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258656, 31.019642, 47.411510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408459, 31.354578, 47.570812>,  <33.498341, 31.555540, 47.666393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408459, 31.354578, 47.570812>,  <33.258656, 31.019642, 47.411510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408459, 31.354578, 47.570812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433228, -0.537762, 0.723274,
		0.819792, -0.098336, -0.564155,
		0.374505, 0.837342, 0.398251,
		33.520809, 31.605782, 47.690289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951752, 30.876942, 47.571281>,  <33.258656, 31.019642, 47.411510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951752, 30.876942, 47.571281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861263, 31.185093, 47.809723>,  <33.806969, 31.369984, 47.952789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861263, 31.185093, 47.809723>,  <33.951752, 30.876942, 47.571281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861263, 31.185093, 47.809723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397179, -0.485830, 0.778600,
		0.889422, 0.412897, -0.196073,
		-0.226223, 0.770380, 0.596102,
		33.793396, 31.416206, 47.988552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426502, 30.839439, 48.061096>,  <33.951752, 30.876942, 47.571281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426502, 30.839439, 48.061096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183022, 31.114674, 48.219097>,  <34.036934, 31.279814, 48.313896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183022, 31.114674, 48.219097>,  <34.426502, 30.839439, 48.061096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183022, 31.114674, 48.219097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377945, -0.186272, 0.906896,
		0.697598, 0.701316, -0.146674,
		-0.608699, 0.688083, 0.395002,
		34.000412, 31.321098, 48.337597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795795, 31.412451, 48.419865>,  <34.426502, 30.839439, 48.061096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795795, 31.412451, 48.419865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431850, 31.377451, 48.582092>,  <34.213482, 31.356451, 48.679428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431850, 31.377451, 48.582092>,  <34.795795, 31.412451, 48.419865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431850, 31.377451, 48.582092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414408, -0.143790, 0.898660,
		-0.020316, 0.985732, 0.167091,
		-0.909865, -0.087501, 0.405574,
		34.158890, 31.351200, 48.703766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837795, 31.795567, 49.187286>,  <34.795795, 31.412451, 48.419865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837795, 31.795567, 49.187286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530506, 31.539951, 49.202610>,  <34.346134, 31.386581, 49.211803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530506, 31.539951, 49.202610>,  <34.837795, 31.795567, 49.187286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530506, 31.539951, 49.202610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222127, -0.209955, 0.952144,
		-0.600414, 0.739965, 0.303239,
		-0.768220, -0.639039, 0.038306,
		34.300041, 31.348240, 49.214100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705727, 31.746866, 49.800259>,  <34.837795, 31.795567, 49.187286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705727, 31.746866, 49.800259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490440, 31.432049, 49.679665>,  <34.361271, 31.243158, 49.607307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490440, 31.432049, 49.679665>,  <34.705727, 31.746866, 49.800259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490440, 31.432049, 49.679665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200638, -0.467076, 0.861153,
		-0.818580, 0.402994, 0.409297,
		-0.538212, -0.787043, -0.301483,
		34.328976, 31.195936, 49.589218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357464, 31.517723, 50.387829>,  <34.705727, 31.746866, 49.800259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357464, 31.517723, 50.387829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300419, 31.212458, 50.135719>,  <34.266190, 31.029299, 49.984455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300419, 31.212458, 50.135719>,  <34.357464, 31.517723, 50.387829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300419, 31.212458, 50.135719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067599, -0.627783, 0.775448,
		-0.987467, 0.153197, 0.037943,
		-0.142616, -0.763164, -0.630271,
		34.257633, 30.983509, 49.946640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922016, 31.077734, 50.706966>,  <34.357464, 31.517723, 50.387829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922016, 31.077734, 50.706966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098186, 30.839306, 50.438423>,  <34.203888, 30.696249, 50.277298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098186, 30.839306, 50.438423>,  <33.922016, 31.077734, 50.706966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098186, 30.839306, 50.438423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001157, -0.748171, 0.663505,
		-0.897788, -0.291449, -0.330204,
		0.440427, -0.596069, -0.671361,
		34.230316, 30.660484, 50.237015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526745, 30.432335, 50.739834>,  <33.922016, 31.077734, 50.706966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526745, 30.432335, 50.739834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865200, 30.320543, 50.558311>,  <34.068272, 30.253468, 50.449398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865200, 30.320543, 50.558311>,  <33.526745, 30.432335, 50.739834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865200, 30.320543, 50.558311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066318, -0.789653, 0.609959,
		-0.528823, -0.546204, -0.649620,
		0.846137, -0.279479, -0.453810,
		34.119041, 30.236700, 50.422169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546700, 29.579237, 50.505451>,  <33.526745, 30.432335, 50.739834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546700, 29.579237, 50.505451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900780, 29.753111, 50.571754>,  <34.113228, 29.857435, 50.611534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900780, 29.753111, 50.571754>,  <33.546700, 29.579237, 50.505451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900780, 29.753111, 50.571754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139899, -0.588532, 0.796278,
		0.443683, -0.681673, -0.581779,
		0.885197, 0.434685, 0.165756,
		34.166340, 29.883516, 50.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035255, 29.038687, 50.615017>,  <33.546700, 29.579237, 50.505451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035255, 29.038687, 50.615017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186378, 29.364073, 50.791897>,  <34.277050, 29.559305, 50.898026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186378, 29.364073, 50.791897>,  <34.035255, 29.038687, 50.615017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186378, 29.364073, 50.791897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199877, -0.537986, 0.818914,
		0.904054, -0.221004, -0.365846,
		0.377803, 0.813467, 0.442195,
		34.299721, 29.608112, 50.924557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537334, 28.772453, 51.028496>,  <34.035255, 29.038687, 50.615017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537334, 28.772453, 51.028496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468178, 29.135540, 51.181419>,  <34.426685, 29.353392, 51.273174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468178, 29.135540, 51.181419>,  <34.537334, 28.772453, 51.028496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468178, 29.135540, 51.181419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057101, -0.378267, 0.923934,
		0.983284, 0.181572, 0.013568,
		-0.172893, 0.907715, 0.382311,
		34.416309, 29.407854, 51.296112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970108, 28.671438, 51.532772>,  <34.537334, 28.772453, 51.028496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970108, 28.671438, 51.532772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720478, 28.972198, 51.617790>,  <34.570702, 29.152655, 51.668800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720478, 28.972198, 51.617790>,  <34.970108, 28.671438, 51.532772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720478, 28.972198, 51.617790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099847, -0.346524, 0.932712,
		0.774958, 0.560861, 0.291332,
		-0.624075, 0.751901, 0.212542,
		34.533257, 29.197769, 51.681553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218643, 28.875263, 52.134880>,  <34.970108, 28.671438, 51.532772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218643, 28.875263, 52.134880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837875, 28.995974, 52.113758>,  <34.609417, 29.068399, 52.101086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837875, 28.995974, 52.113758>,  <35.218643, 28.875263, 52.134880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837875, 28.995974, 52.113758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174552, -0.392606, 0.902990,
		0.251770, 0.868787, 0.426404,
		-0.951916, 0.301776, -0.052802,
		34.552299, 29.086506, 52.097916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036037, 29.089710, 52.815144>,  <35.218643, 28.875263, 52.134880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036037, 29.089710, 52.815144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679710, 29.029772, 52.643566>,  <34.465916, 28.993809, 52.540619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679710, 29.029772, 52.643566>,  <35.036037, 29.089710, 52.815144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679710, 29.029772, 52.643566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319876, -0.463637, 0.826269,
		-0.322689, 0.873262, 0.365083,
		-0.890815, -0.149846, -0.428946,
		34.412464, 28.984818, 52.514881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451893, 29.413380, 53.232285>,  <35.036037, 29.089710, 52.815144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451893, 29.413380, 53.232285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278336, 29.124304, 53.017082>,  <34.174202, 28.950857, 52.887959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278336, 29.124304, 53.017082>,  <34.451893, 29.413380, 53.232285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278336, 29.124304, 53.017082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531748, -0.276640, 0.800446,
		-0.727310, 0.633394, -0.264257,
		-0.433894, -0.722691, -0.538009,
		34.148167, 28.907497, 52.855679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696552, 29.516109, 53.314232>,  <34.451893, 29.413380, 53.232285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696552, 29.516109, 53.314232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777878, 29.132811, 53.233803>,  <33.826672, 28.902832, 53.185547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777878, 29.132811, 53.233803>,  <33.696552, 29.516109, 53.314232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777878, 29.132811, 53.233803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461230, -0.274882, 0.843627,
		-0.863673, -0.078779, -0.497858,
		0.203312, -0.958245, -0.201073,
		33.838871, 28.845337, 53.173481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140713, 29.045391, 53.302807>,  <33.696552, 29.516109, 53.314232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140713, 29.045391, 53.302807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462818, 28.865784, 53.457695>,  <33.656082, 28.758020, 53.550629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462818, 28.865784, 53.457695>,  <33.140713, 29.045391, 53.302807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462818, 28.865784, 53.457695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453576, -0.045896, 0.890035,
		-0.381869, -0.892344, -0.240622,
		0.805261, -0.449017, 0.387219,
		33.704395, 28.731079, 53.573860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897438, 28.366093, 53.492649>,  <33.140713, 29.045391, 53.302807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897438, 28.366093, 53.492649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192772, 28.522810, 53.712238>,  <33.369972, 28.616840, 53.843990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192772, 28.522810, 53.712238>,  <32.897438, 28.366093, 53.492649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192772, 28.522810, 53.712238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526353, -0.174192, 0.832232,
		0.421688, -0.903413, 0.077610,
		0.738330, 0.391792, 0.548969,
		33.414272, 28.640348, 53.876930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219967, 28.032532, 54.013340>,  <32.897438, 28.366093, 53.492649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219967, 28.032532, 54.013340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213295, 28.416313, 54.125885>,  <33.209290, 28.646582, 54.193413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213295, 28.416313, 54.125885>,  <33.219967, 28.032532, 54.013340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213295, 28.416313, 54.125885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590754, -0.236493, 0.771415,
		0.806680, -0.153350, 0.570747,
		-0.016682, 0.959456, 0.281366,
		33.208290, 28.704149, 54.210297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162086, 28.054045, 54.754845>,  <33.219967, 28.032532, 54.013340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162086, 28.054045, 54.754845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018677, 28.405832, 54.629631>,  <32.932629, 28.616905, 54.554504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018677, 28.405832, 54.629631>,  <33.162086, 28.054045, 54.754845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018677, 28.405832, 54.629631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646986, 0.007635, 0.762464,
		0.672953, 0.475894, 0.566267,
		-0.358528, 0.879469, -0.313035,
		32.911118, 28.669674, 54.535721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879921, 28.182123, 54.425415>,  <33.162086, 28.054045, 54.754845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879921, 28.182123, 54.425415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886696, 28.221781, 54.027443>,  <33.890759, 28.245575, 53.788658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886696, 28.221781, 54.027443>,  <33.879921, 28.182123, 54.425415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886696, 28.221781, 54.027443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925137, -0.378994, -0.022020,
		-0.379256, -0.920073, -0.098139,
		0.016934, 0.099143, -0.994929,
		33.891777, 28.251524, 53.728966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126347, 27.525747, 54.028553>,  <33.879921, 28.182123, 54.425415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126347, 27.525747, 54.028553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206951, 27.872435, 53.846039>,  <34.255314, 28.080446, 53.736530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206951, 27.872435, 53.846039>,  <34.126347, 27.525747, 54.028553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206951, 27.872435, 53.846039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932668, -0.312090, -0.180916,
		-0.299204, -0.389106, -0.871248,
		0.201512, 0.866716, -0.456285,
		34.267406, 28.132450, 53.709152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438427, 26.833984, 53.949486>,  <34.126347, 27.525747, 54.028553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438427, 26.833984, 53.949486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717499, 27.105833, 54.040138>,  <34.884941, 27.268942, 54.094528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717499, 27.105833, 54.040138>,  <34.438427, 26.833984, 53.949486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717499, 27.105833, 54.040138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581838, -0.352959, -0.732724,
		-0.417984, 0.643066, -0.641682,
		0.697677, 0.679622, 0.226629,
		34.926804, 27.309719, 54.108128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406853, 26.290552, 53.500031>,  <34.438427, 26.833984, 53.949486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406853, 26.290552, 53.500031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050243, 26.470903, 53.482586>,  <33.836277, 26.579113, 53.472118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050243, 26.470903, 53.482586>,  <34.406853, 26.290552, 53.500031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050243, 26.470903, 53.482586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299829, -0.659531, -0.689290,
		-0.339550, -0.601439, 0.723171,
		-0.891520, 0.450877, -0.043615,
		33.782787, 26.606167, 53.469501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808971, 25.787378, 53.612904>,  <34.406853, 26.290552, 53.500031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808971, 25.787378, 53.612904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725212, 26.100105, 53.377987>,  <33.674957, 26.287743, 53.237038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725212, 26.100105, 53.377987>,  <33.808971, 25.787378, 53.612904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725212, 26.100105, 53.377987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301836, -0.622957, -0.721678,
		-0.930079, 0.026148, 0.366428,
		-0.209398, 0.781819, -0.587291,
		33.662392, 26.334652, 53.201801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626637, 25.538826, 52.976589>,  <33.808971, 25.787378, 53.612904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626637, 25.538826, 52.976589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552551, 25.926941, 52.914314>,  <33.508099, 26.159809, 52.876949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552551, 25.926941, 52.914314>,  <33.626637, 25.538826, 52.976589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552551, 25.926941, 52.914314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306465, -0.207559, -0.928977,
		-0.933689, -0.124348, 0.335802,
		-0.185215, 0.970287, -0.155687,
		33.496986, 26.218027, 52.867607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291985, 25.610218, 52.383369>,  <33.626637, 25.538826, 52.976589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291985, 25.610218, 52.383369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437706, 25.982605, 52.393002>,  <33.525139, 26.206038, 52.398781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437706, 25.982605, 52.393002>,  <33.291985, 25.610218, 52.383369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437706, 25.982605, 52.393002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103961, -0.014963, -0.994469,
		-0.925459, 0.364792, -0.102236,
		0.364304, 0.930969, 0.024076,
		33.546997, 26.261896, 52.400223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846096, 26.156839, 52.079231>,  <33.291985, 25.610218, 52.383369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846096, 26.156839, 52.079231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224918, 26.283951, 52.060905>,  <33.452213, 26.360218, 52.049911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224918, 26.283951, 52.060905>,  <32.846096, 26.156839, 52.079231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224918, 26.283951, 52.060905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091518, 0.130422, -0.987226,
		-0.307743, 0.939153, 0.152600,
		0.947058, 0.317777, -0.045813,
		33.509037, 26.379284, 52.047161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844849, 26.590765, 51.461197>,  <32.846096, 26.156839, 52.079231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844849, 26.590765, 51.461197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235680, 26.539011, 51.528812>,  <33.470181, 26.507959, 51.569382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235680, 26.539011, 51.528812>,  <32.844849, 26.590765, 51.461197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235680, 26.539011, 51.528812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190421, 0.176269, -0.965748,
		0.095156, 0.975802, 0.196866,
		0.977080, -0.129384, 0.169040,
		33.528805, 26.500196, 51.579525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201958, 27.154402, 51.079575>,  <32.844849, 26.590765, 51.461197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201958, 27.154402, 51.079575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531368, 26.929878, 51.112419>,  <33.729015, 26.795164, 51.132126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531368, 26.929878, 51.112419>,  <33.201958, 27.154402, 51.079575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531368, 26.929878, 51.112419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209844, 0.166935, -0.963379,
		0.527046, 0.810594, 0.255262,
		0.823522, -0.561310, 0.082116,
		33.778423, 26.761486, 51.137054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639317, 27.484978, 50.771084>,  <33.201958, 27.154402, 51.079575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639317, 27.484978, 50.771084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831207, 27.134024, 50.774067>,  <33.946342, 26.923452, 50.775856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831207, 27.134024, 50.774067>,  <33.639317, 27.484978, 50.771084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831207, 27.134024, 50.774067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357007, 0.187422, -0.915106,
		0.801502, 0.441667, 0.403144,
		0.479731, -0.877384, 0.007459,
		33.975128, 26.870808, 50.776306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377579, 27.617289, 50.638340>,  <33.639317, 27.484978, 50.771084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377579, 27.617289, 50.638340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285172, 27.238144, 50.550529>,  <34.229729, 27.010658, 50.497845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285172, 27.238144, 50.550529>,  <34.377579, 27.617289, 50.638340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285172, 27.238144, 50.550529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327822, 0.136604, -0.934811,
		0.916059, -0.287923, 0.279172,
		-0.231018, -0.947860, -0.219525,
		34.215866, 26.953785, 50.484673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953793, 27.363813, 50.434479>,  <34.377579, 27.617289, 50.638340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953793, 27.363813, 50.434479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680504, 27.119097, 50.275017>,  <34.516533, 26.972267, 50.179340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680504, 27.119097, 50.275017>,  <34.953793, 27.363813, 50.434479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680504, 27.119097, 50.275017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442555, 0.087329, -0.892479,
		0.580824, -0.786185, 0.211086,
		-0.683219, -0.611790, -0.398653,
		34.475536, 26.935560, 50.155422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362297, 26.885752, 49.947849>,  <34.953793, 27.363813, 50.434479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362297, 26.885752, 49.947849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979519, 26.863527, 49.833893>,  <34.749851, 26.850193, 49.765518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979519, 26.863527, 49.833893>,  <35.362297, 26.885752, 49.947849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979519, 26.863527, 49.833893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275903, 0.130723, -0.952255,
		0.090146, -0.989861, -0.109767,
		-0.956949, -0.055557, -0.284890,
		34.692432, 26.846859, 49.748425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360306, 26.423199, 49.385571>,  <35.362297, 26.885752, 49.947849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360306, 26.423199, 49.385571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026264, 26.633545, 49.320999>,  <34.825840, 26.759752, 49.282257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026264, 26.633545, 49.320999>,  <35.360306, 26.423199, 49.385571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026264, 26.633545, 49.320999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252275, 0.105341, -0.961905,
		-0.488829, -0.844018, -0.220634,
		-0.835107, 0.525867, -0.161431,
		34.775734, 26.791306, 49.272572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072247, 26.110289, 48.813763>,  <35.360306, 26.423199, 49.385571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072247, 26.110289, 48.813763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897820, 26.469410, 48.838425>,  <34.793163, 26.684883, 48.853222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897820, 26.469410, 48.838425>,  <35.072247, 26.110289, 48.813763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897820, 26.469410, 48.838425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112891, 0.013392, -0.993517,
		-0.892807, -0.440197, 0.095513,
		-0.436064, 0.897802, 0.061651,
		34.766998, 26.738750, 48.856918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447845, 26.030851, 48.417290>,  <35.072247, 26.110289, 48.813763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447845, 26.030851, 48.417290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521420, 26.423956, 48.424725>,  <34.565563, 26.659819, 48.429184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521420, 26.423956, 48.424725>,  <34.447845, 26.030851, 48.417290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521420, 26.423956, 48.424725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205720, 0.056978, -0.976951,
		-0.961169, 0.175877, 0.212654,
		0.183940, 0.982762, 0.018584,
		34.576603, 26.718784, 48.430298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928745, 26.299280, 47.932484>,  <34.447845, 26.030851, 48.417290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928745, 26.299280, 47.932484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186069, 26.603317, 47.969185>,  <34.340462, 26.785740, 47.991203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186069, 26.603317, 47.969185>,  <33.928745, 26.299280, 47.932484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186069, 26.603317, 47.969185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068368, 0.176394, -0.981942,
		-0.762549, 0.625418, 0.165442,
		0.643307, 0.760091, 0.091751,
		34.379063, 26.831345, 47.996712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651665, 26.852905, 47.506237>,  <33.928745, 26.299280, 47.932484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651665, 26.852905, 47.506237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032158, 26.957905, 47.571041>,  <34.260456, 27.020905, 47.609924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032158, 26.957905, 47.571041>,  <33.651665, 26.852905, 47.506237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032158, 26.957905, 47.571041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099498, 0.236051, -0.966633,
		-0.291981, 0.935615, 0.198422,
		0.951234, 0.262496, 0.162014,
		34.317528, 27.036654, 47.619644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688629, 27.358320, 47.143173>,  <33.651665, 26.852905, 47.506237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688629, 27.358320, 47.143173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082520, 27.304823, 47.187752>,  <34.318855, 27.272724, 47.214497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082520, 27.304823, 47.187752>,  <33.688629, 27.358320, 47.143173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082520, 27.304823, 47.187752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161523, 0.463132, -0.871446,
		0.064937, 0.876140, 0.477663,
		0.984730, -0.133743, 0.111442,
		34.377937, 27.264700, 47.221184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020390, 28.027500, 47.113152>,  <33.688629, 27.358320, 47.143173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020390, 28.027500, 47.113152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259434, 27.720846, 47.019234>,  <34.402863, 27.536854, 46.962883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259434, 27.720846, 47.019234>,  <34.020390, 28.027500, 47.113152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259434, 27.720846, 47.019234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339915, 0.507475, -0.791788,
		0.726164, 0.393373, 0.563864,
		0.597615, -0.766634, -0.234797,
		34.438717, 27.490856, 46.948795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724190, 28.158520, 47.047932>,  <34.020390, 28.027500, 47.113152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724190, 28.158520, 47.047932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668949, 27.835117, 46.819111>,  <34.635807, 27.641075, 46.681816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668949, 27.835117, 46.819111>,  <34.724190, 28.158520, 47.047932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668949, 27.835117, 46.819111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160029, 0.551785, -0.818489,
		0.977405, -0.204576, 0.053185,
		-0.138097, -0.808506, -0.572055,
		34.627522, 27.592566, 46.647495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842693, 28.501467, 46.415474>,  <34.724190, 28.158520, 47.047932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842693, 28.501467, 46.415474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754585, 28.123302, 46.319408>,  <34.701721, 27.896404, 46.261768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754585, 28.123302, 46.319408>,  <34.842693, 28.501467, 46.415474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754585, 28.123302, 46.319408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052045, 0.234473, -0.970728,
		0.974050, -0.226322, -0.002443,
		-0.220270, -0.945410, -0.240168,
		34.688503, 27.839680, 46.247356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363590, 28.331871, 45.977077>,  <34.842693, 28.501467, 46.415474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363590, 28.331871, 45.977077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036106, 28.108572, 45.923306>,  <34.839615, 27.974592, 45.891041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036106, 28.108572, 45.923306>,  <35.363590, 28.331871, 45.977077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036106, 28.108572, 45.923306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032583, 0.188576, -0.981518,
		0.573281, -0.807960, -0.136199,
		-0.818711, -0.558248, -0.134432,
		34.790493, 27.941097, 45.882977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508404, 27.858164, 45.335194>,  <35.363590, 28.331871, 45.977077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508404, 27.858164, 45.335194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113132, 27.856539, 45.396500>,  <34.875969, 27.855564, 45.433285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113132, 27.856539, 45.396500>,  <35.508404, 27.858164, 45.335194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113132, 27.856539, 45.396500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153321, 0.028586, -0.987763,
		-0.000374, -0.999583, -0.028870,
		-0.988176, -0.004057, 0.153267,
		34.816681, 27.855320, 45.442478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317295, 27.614405, 44.755264>,  <35.508404, 27.858164, 45.335194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317295, 27.614405, 44.755264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984402, 27.778049, 44.904938>,  <34.784664, 27.876236, 44.994743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984402, 27.778049, 44.904938>,  <35.317295, 27.614405, 44.755264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984402, 27.778049, 44.904938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238865, 0.344475, -0.907899,
		-0.500328, -0.844965, -0.188962,
		-0.832236, 0.409110, 0.374183,
		34.734730, 27.900784, 45.017193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691837, 27.269150, 44.413410>,  <35.317295, 27.614405, 44.755264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691837, 27.269150, 44.413410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583511, 27.632053, 44.542126>,  <34.518517, 27.849794, 44.619354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583511, 27.632053, 44.542126>,  <34.691837, 27.269150, 44.413410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583511, 27.632053, 44.542126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486033, 0.159673, -0.859230,
		-0.830923, -0.389088, 0.397716,
		-0.270812, 0.907257, 0.321786,
		34.502266, 27.904230, 44.638660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966084, 27.331766, 44.200253>,  <34.691837, 27.269150, 44.413410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966084, 27.331766, 44.200253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091244, 27.705015, 44.271107>,  <34.166340, 27.928965, 44.313618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091244, 27.705015, 44.271107>,  <33.966084, 27.331766, 44.200253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091244, 27.705015, 44.271107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644651, 0.345614, -0.681892,
		-0.697508, 0.099174, 0.709681,
		0.312901, 0.933121, 0.177136,
		34.185116, 27.984951, 44.324249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331898, 27.800995, 44.197918>,  <33.966084, 27.331766, 44.200253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331898, 27.800995, 44.197918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634289, 28.055624, 44.136898>,  <33.815723, 28.208403, 44.100288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634289, 28.055624, 44.136898>,  <33.331898, 27.800995, 44.197918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634289, 28.055624, 44.136898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597008, 0.574907, -0.559521,
		-0.268477, 0.514056, 0.814657,
		0.755977, 0.636575, -0.152546,
		33.861080, 28.246597, 44.091133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034340, 28.478624, 44.200478>,  <33.331898, 27.800995, 44.197918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034340, 28.478624, 44.200478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390591, 28.531618, 44.026474>,  <33.604340, 28.563414, 43.922073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390591, 28.531618, 44.026474>,  <33.034340, 28.478624, 44.200478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390591, 28.531618, 44.026474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428658, 0.563887, -0.705893,
		0.151775, 0.815156, 0.559003,
		0.890627, 0.132484, -0.435007,
		33.657780, 28.571363, 43.895973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914799, 29.136156, 44.019520>,  <33.034340, 28.478624, 44.200478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914799, 29.136156, 44.019520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216061, 29.003681, 43.792164>,  <33.396820, 28.924196, 43.655750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216061, 29.003681, 43.792164>,  <32.914799, 29.136156, 44.019520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216061, 29.003681, 43.792164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329181, 0.558336, -0.761512,
		0.569556, 0.760642, 0.311495,
		0.753157, -0.331186, -0.568393,
		33.442009, 28.904325, 43.621647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268135, 29.719465, 43.744675>,  <32.914799, 29.136156, 44.019520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268135, 29.719465, 43.744675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349308, 29.411169, 43.503086>,  <33.398010, 29.226192, 43.358131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349308, 29.411169, 43.503086>,  <33.268135, 29.719465, 43.744675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349308, 29.411169, 43.503086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360755, 0.514569, -0.777865,
		0.910316, 0.375739, -0.173626,
		0.202931, -0.770739, -0.603970,
		33.410187, 29.179947, 43.321896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624866, 30.002506, 43.167774>,  <33.268135, 29.719465, 43.744675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624866, 30.002506, 43.167774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498524, 29.654175, 43.017097>,  <33.422718, 29.445177, 42.926693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498524, 29.654175, 43.017097>,  <33.624866, 30.002506, 43.167774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498524, 29.654175, 43.017097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187260, 0.446421, -0.875009,
		0.930144, -0.205838, -0.304076,
		-0.315856, -0.870826, -0.376691,
		33.403767, 29.392927, 42.904091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869350, 29.968853, 42.537834>,  <33.624866, 30.002506, 43.167774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869350, 29.968853, 42.537834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609615, 29.666504, 42.504318>,  <33.453773, 29.485094, 42.484211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609615, 29.666504, 42.504318>,  <33.869350, 29.968853, 42.537834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609615, 29.666504, 42.504318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072229, 0.170971, -0.982625,
		0.757065, -0.632001, -0.165613,
		-0.649335, -0.755873, -0.083787,
		33.414814, 29.439741, 42.479183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146740, 29.660069, 41.971737>,  <33.869350, 29.968853, 42.537834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146740, 29.660069, 41.971737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761471, 29.568810, 42.028648>,  <33.530308, 29.514055, 42.062794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761471, 29.568810, 42.028648>,  <34.146740, 29.660069, 41.971737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761471, 29.568810, 42.028648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190648, 0.206369, -0.959721,
		0.189584, -0.951507, -0.242264,
		-0.963177, -0.228135, 0.142279,
		33.472519, 29.500366, 42.071331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026218, 29.278255, 41.392567>,  <34.146740, 29.660069, 41.971737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026218, 29.278255, 41.392567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671360, 29.394154, 41.536240>,  <33.458443, 29.463692, 41.622444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671360, 29.394154, 41.536240>,  <34.026218, 29.278255, 41.392567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671360, 29.394154, 41.536240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322063, 0.168710, -0.931564,
		-0.330514, -0.942117, -0.056355,
		-0.887150, 0.289745, 0.359182,
		33.405216, 29.481077, 41.643993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557823, 29.121363, 40.852367>,  <34.026218, 29.278255, 41.392567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557823, 29.121363, 40.852367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355209, 29.375307, 41.085735>,  <33.233643, 29.527674, 41.225754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355209, 29.375307, 41.085735>,  <33.557823, 29.121363, 40.852367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355209, 29.375307, 41.085735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341274, 0.473762, -0.811839,
		-0.791805, -0.610329, -0.023315,
		-0.506534, 0.634861, 0.583416,
		33.203251, 29.565765, 41.260761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812080, 29.032902, 40.611420>,  <33.557823, 29.121363, 40.852367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812080, 29.032902, 40.611420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883228, 29.377981, 40.800781>,  <32.925919, 29.585030, 40.914398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883228, 29.377981, 40.800781>,  <32.812080, 29.032902, 40.611420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883228, 29.377981, 40.800781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511828, 0.491989, -0.704257,
		-0.840472, -0.117034, 0.529065,
		0.177872, 0.862699, 0.473404,
		32.936588, 29.636791, 40.942802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287483, 29.507065, 40.412136>,  <32.812080, 29.032902, 40.611420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287483, 29.507065, 40.412136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555801, 29.742865, 40.592148>,  <32.716793, 29.884344, 40.700153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555801, 29.742865, 40.592148>,  <32.287483, 29.507065, 40.412136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555801, 29.742865, 40.592148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275783, 0.761552, -0.586500,
		-0.688460, 0.269312, 0.673420,
		0.670796, 0.589500, 0.450026,
		32.757042, 29.919714, 40.727154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939192, 30.076424, 40.511131>,  <32.287483, 29.507065, 40.412136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939192, 30.076424, 40.511131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327515, 30.168283, 40.483425>,  <32.560509, 30.223400, 40.466801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327515, 30.168283, 40.483425>,  <31.939192, 30.076424, 40.511131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327515, 30.168283, 40.483425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213389, 0.694949, -0.686667,
		-0.109558, 0.681400, 0.723665,
		0.970805, 0.229652, -0.069266,
		32.618755, 30.237179, 40.462646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890692, 30.882172, 40.356953>,  <31.939192, 30.076424, 40.511131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890692, 30.882172, 40.356953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270100, 30.795820, 40.264252>,  <32.497746, 30.744009, 40.208630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270100, 30.795820, 40.264252>,  <31.890692, 30.882172, 40.356953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270100, 30.795820, 40.264252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045777, 0.630596, -0.774760,
		0.313396, 0.745483, 0.588250,
		0.948519, -0.215878, -0.231753,
		32.554657, 30.731056, 40.194725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174477, 31.522690, 40.309032>,  <31.890692, 30.882172, 40.356953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174477, 31.522690, 40.309032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398685, 31.266323, 40.099255>,  <32.533211, 31.112503, 39.973389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398685, 31.266323, 40.099255>,  <32.174477, 31.522690, 40.309032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398685, 31.266323, 40.099255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020960, 0.644055, -0.764692,
		0.827875, 0.417633, 0.374440,
		0.560521, -0.640917, -0.524444,
		32.566841, 31.074047, 39.941921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763954, 31.911777, 40.077847>,  <32.174477, 31.522690, 40.309032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763954, 31.911777, 40.077847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740894, 31.598616, 39.830059>,  <32.727058, 31.410719, 39.681385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740894, 31.598616, 39.830059>,  <32.763954, 31.911777, 40.077847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740894, 31.598616, 39.830059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127182, 0.621204, -0.773260,
		0.990203, 0.034208, -0.135383,
		-0.057649, -0.782902, -0.619468,
		32.723598, 31.363745, 39.644218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231705, 31.931248, 39.503826>,  <32.763954, 31.911777, 40.077847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231705, 31.931248, 39.503826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933174, 31.707485, 39.359566>,  <32.754059, 31.573227, 39.273010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933174, 31.707485, 39.359566>,  <33.231705, 31.931248, 39.503826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933174, 31.707485, 39.359566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000734, 0.541157, -0.840921,
		0.665586, -0.627862, -0.403466,
		-0.746321, -0.559409, -0.360648,
		32.709278, 31.539663, 39.251373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504349, 31.692705, 38.932446>,  <33.231705, 31.931248, 39.503826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504349, 31.692705, 38.932446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105473, 31.706678, 38.905926>,  <32.866146, 31.715063, 38.890015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105473, 31.706678, 38.905926>,  <33.504349, 31.692705, 38.932446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105473, 31.706678, 38.905926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074530, 0.554386, -0.828916,
		0.007795, -0.831526, -0.555431,
		-0.997188, 0.034935, -0.066296,
		32.806316, 31.717159, 38.886036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305767, 31.773109, 39.020798>,  <33.504349, 31.692705, 38.932446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305767, 31.773109, 39.020798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431980, 31.650743, 38.661499>,  <34.507710, 31.577324, 38.445919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431980, 31.650743, 38.661499>,  <34.305767, 31.773109, 39.020798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431980, 31.650743, 38.661499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487600, -0.759807, 0.430047,
		-0.814055, -0.573681, -0.090580,
		0.315533, -0.305916, -0.898251,
		34.526642, 31.558969, 38.392025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125607, 31.052584, 38.966114>,  <34.305767, 31.773109, 39.020798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125607, 31.052584, 38.966114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441853, 31.132048, 38.734440>,  <34.631599, 31.179726, 38.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441853, 31.132048, 38.734440>,  <34.125607, 31.052584, 38.966114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441853, 31.132048, 38.734440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498016, -0.758944, 0.419504,
		-0.356231, -0.620112, -0.698971,
		0.790619, 0.198658, -0.579186,
		34.679039, 31.191645, 38.560684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264786, 30.480158, 38.609924>,  <34.125607, 31.052584, 38.966114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264786, 30.480158, 38.609924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610085, 30.679298, 38.643288>,  <34.817265, 30.798782, 38.663303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610085, 30.679298, 38.643288>,  <34.264786, 30.480158, 38.609924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610085, 30.679298, 38.643288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433287, -0.815554, 0.383582,
		0.258988, -0.294986, -0.919733,
		0.863243, 0.497851, 0.083405,
		34.869057, 30.828653, 38.668308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659584, 30.014227, 38.323948>,  <34.264786, 30.480158, 38.609924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659584, 30.014227, 38.323948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873199, 30.256996, 38.559387>,  <35.001369, 30.402657, 38.700649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873199, 30.256996, 38.559387>,  <34.659584, 30.014227, 38.323948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873199, 30.256996, 38.559387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315013, -0.788898, 0.527642,
		0.784582, -0.096365, -0.612491,
		0.534039, 0.606921, 0.588599,
		35.033413, 30.439072, 38.735966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413902, 29.845623, 38.330803>,  <34.659584, 30.014227, 38.323948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413902, 29.845623, 38.330803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357075, 30.052036, 38.668686>,  <35.322979, 30.175884, 38.871414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357075, 30.052036, 38.668686>,  <35.413902, 29.845623, 38.330803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357075, 30.052036, 38.668686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530375, -0.680840, 0.505133,
		0.835774, 0.519776, -0.176962,
		-0.142074, 0.516033, 0.844704,
		35.314453, 30.206846, 38.922096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093548, 29.606743, 38.638172>,  <35.413902, 29.845623, 38.330803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093548, 29.606743, 38.638172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896961, 29.814997, 38.917431>,  <35.779011, 29.939949, 39.084984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896961, 29.814997, 38.917431>,  <36.093548, 29.606743, 38.638172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896961, 29.814997, 38.917431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294090, -0.655335, 0.695735,
		0.819741, 0.547245, 0.168959,
		-0.491462, 0.520633, 0.698145,
		35.749523, 29.971188, 39.126873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557400, 29.818729, 39.113808>,  <36.093548, 29.606743, 38.638172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557400, 29.818729, 39.113808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217430, 29.843805, 39.323071>,  <36.013447, 29.858850, 39.448627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217430, 29.843805, 39.323071>,  <36.557400, 29.818729, 39.113808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217430, 29.843805, 39.323071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321106, -0.725581, 0.608624,
		0.417747, 0.685275, 0.596562,
		-0.849929, 0.062691, 0.523155,
		35.962452, 29.862612, 39.480019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660496, 29.921989, 39.903954>,  <36.557400, 29.818729, 39.113808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660496, 29.921989, 39.903954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277161, 29.809687, 39.882900>,  <36.047161, 29.742306, 39.870266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277161, 29.809687, 39.882900>,  <36.660496, 29.921989, 39.903954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277161, 29.809687, 39.882900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116441, -0.552229, 0.825520,
		-0.260839, 0.784995, 0.561912,
		-0.958334, -0.280757, -0.052637,
		35.989662, 29.725460, 39.867107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291931, 30.133938, 40.535301>,  <36.660496, 29.921989, 39.903954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291931, 30.133938, 40.535301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097256, 29.817276, 40.387562>,  <35.980450, 29.627279, 40.298916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097256, 29.817276, 40.387562>,  <36.291931, 30.133938, 40.535301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097256, 29.817276, 40.387562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124303, -0.481257, 0.867721,
		-0.864689, 0.376396, 0.332625,
		-0.486685, -0.791655, -0.369351,
		35.951252, 29.579779, 40.276756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978058, 29.742579, 41.118088>,  <36.291931, 30.133938, 40.535301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978058, 29.742579, 41.118088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930840, 29.476072, 40.823563>,  <35.902508, 29.316168, 40.646847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930840, 29.476072, 40.823563>,  <35.978058, 29.742579, 41.118088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930840, 29.476072, 40.823563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028280, -0.738939, 0.673178,
		-0.992605, 0.100290, 0.068388,
		-0.118048, -0.666266, -0.736311,
		35.895424, 29.276192, 40.602669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380459, 29.383213, 41.287323>,  <35.978058, 29.742579, 41.118088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380459, 29.383213, 41.287323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605423, 29.160299, 41.042988>,  <35.740402, 29.026550, 40.896385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605423, 29.160299, 41.042988>,  <35.380459, 29.383213, 41.287323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605423, 29.160299, 41.042988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033128, -0.722970, 0.690084,
		-0.826194, -0.408346, -0.388145,
		0.562410, -0.557285, -0.610842,
		35.774147, 28.993114, 40.859734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090248, 28.679192, 41.332981>,  <35.380459, 29.383213, 41.287323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090248, 28.679192, 41.332981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460293, 28.617527, 41.194187>,  <35.682320, 28.580528, 41.110912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460293, 28.617527, 41.194187>,  <35.090248, 28.679192, 41.332981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460293, 28.617527, 41.194187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192312, -0.597718, 0.778299,
		-0.327382, -0.786745, -0.523310,
		0.925115, -0.154162, -0.346982,
		35.737827, 28.571278, 41.090092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142242, 28.101292, 41.414009>,  <35.090248, 28.679192, 41.332981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142242, 28.101292, 41.414009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522350, 28.221025, 41.379616>,  <35.750416, 28.292866, 41.358978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522350, 28.221025, 41.379616>,  <35.142242, 28.101292, 41.414009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522350, 28.221025, 41.379616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275368, -0.678584, 0.680953,
		0.145487, -0.670763, -0.727262,
		0.950266, 0.299334, -0.085982,
		35.807430, 28.310825, 41.353821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519222, 27.493809, 41.423321>,  <35.142242, 28.101292, 41.414009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519222, 27.493809, 41.423321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804329, 27.757421, 41.519352>,  <35.975391, 27.915590, 41.576973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804329, 27.757421, 41.519352>,  <35.519222, 27.493809, 41.423321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804329, 27.757421, 41.519352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356088, -0.634896, 0.685645,
		0.604289, -0.403215, -0.687207,
		0.712767, 0.659033, 0.240080,
		36.018158, 27.955132, 41.591377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137661, 27.124990, 41.554840>,  <35.519222, 27.493809, 41.423321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137661, 27.124990, 41.554840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177357, 27.483704, 41.727322>,  <36.201176, 27.698931, 41.830811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177357, 27.483704, 41.727322>,  <36.137661, 27.124990, 41.554840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177357, 27.483704, 41.727322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539936, -0.412526, 0.733683,
		0.835835, 0.160010, -0.525144,
		0.099239, 0.896783, 0.431199,
		36.207127, 27.752739, 41.856682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709091, 26.972595, 41.966942>,  <36.137661, 27.124990, 41.554840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709091, 26.972595, 41.966942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563164, 27.293871, 42.155319>,  <36.475605, 27.486637, 42.268345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563164, 27.293871, 42.155319>,  <36.709091, 26.972595, 41.966942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563164, 27.293871, 42.155319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448581, -0.291608, 0.844831,
		0.815892, 0.519470, -0.253911,
		-0.364822, 0.803191, 0.470945,
		36.453716, 27.534828, 42.296604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206371, 27.428486, 42.279377>,  <36.709091, 26.972595, 41.966942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206371, 27.428486, 42.279377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873859, 27.537149, 42.473354>,  <36.674351, 27.602348, 42.589741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873859, 27.537149, 42.473354>,  <37.206371, 27.428486, 42.279377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873859, 27.537149, 42.473354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420763, -0.262560, 0.868344,
		0.363220, 0.925886, 0.103957,
		-0.831282, 0.271658, 0.484945,
		36.624474, 27.618647, 42.618839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447758, 27.808950, 42.944984>,  <37.206371, 27.428486, 42.279377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447758, 27.808950, 42.944984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077896, 27.661451, 42.983013>,  <36.855980, 27.572952, 43.005833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077896, 27.661451, 42.983013>,  <37.447758, 27.808950, 42.944984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077896, 27.661451, 42.983013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219246, -0.311362, 0.924654,
		-0.311362, 0.875830, 0.368749,
		-0.924654, -0.368749, 0.095076,
		36.800499, 27.550827, 43.011536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274826, 27.948259, 43.595211>,  <37.447758, 27.808950, 42.944984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274826, 27.948259, 43.595211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963516, 27.711594, 43.511097>,  <36.776730, 27.569593, 43.460629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963516, 27.711594, 43.511097>,  <37.274826, 27.948259, 43.595211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963516, 27.711594, 43.511097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137177, -0.487010, 0.862557,
		-0.612759, 0.642458, 0.460189,
		-0.778273, -0.591666, -0.210289,
		36.730034, 27.534094, 43.448009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666607, 27.945814, 44.151382>,  <37.274826, 27.948259, 43.595211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666607, 27.945814, 44.151382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590565, 27.594501, 43.975891>,  <36.544941, 27.383715, 43.870598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590565, 27.594501, 43.975891>,  <36.666607, 27.945814, 44.151382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590565, 27.594501, 43.975891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031537, -0.441184, 0.896863,
		-0.981258, 0.184332, 0.056172,
		-0.190103, -0.878281, -0.438729,
		36.533535, 27.331017, 43.844273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128284, 27.553785, 44.580784>,  <36.666607, 27.945814, 44.151382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128284, 27.553785, 44.580784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341583, 27.297623, 44.359684>,  <36.469563, 27.143925, 44.227024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341583, 27.297623, 44.359684>,  <36.128284, 27.553785, 44.580784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341583, 27.297623, 44.359684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071560, -0.616907, 0.783776,
		-0.842928, -0.457499, -0.283136,
		0.533245, -0.640406, -0.552747,
		36.501556, 27.105501, 44.193859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813301, 26.950100, 44.694386>,  <36.128284, 27.553785, 44.580784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813301, 26.950100, 44.694386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151325, 26.805367, 44.536930>,  <36.354141, 26.718527, 44.442455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151325, 26.805367, 44.536930>,  <35.813301, 26.950100, 44.694386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151325, 26.805367, 44.536930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186965, -0.489768, 0.851570,
		-0.500927, -0.793220, -0.346229,
		0.845054, -0.361841, -0.393642,
		36.404842, 26.696817, 44.418839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777752, 26.218563, 44.675610>,  <35.813301, 26.950100, 44.694386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777752, 26.218563, 44.675610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144768, 26.374653, 44.706177>,  <36.364979, 26.468307, 44.724518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144768, 26.374653, 44.706177>,  <35.777752, 26.218563, 44.675610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144768, 26.374653, 44.706177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155545, -0.529097, 0.834183,
		0.365951, -0.753513, -0.546167,
		0.917543, 0.390224, 0.076419,
		36.420033, 26.491720, 44.729103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186123, 25.676191, 44.938942>,  <35.777752, 26.218563, 44.675610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186123, 25.676191, 44.938942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420937, 25.985601, 45.034481>,  <36.561825, 26.171247, 45.091805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420937, 25.985601, 45.034481>,  <36.186123, 25.676191, 44.938942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420937, 25.985601, 45.034481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074624, -0.345485, 0.935453,
		0.806115, -0.531320, -0.260535,
		0.587035, 0.773524, 0.238851,
		36.597046, 26.217659, 45.106136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683147, 25.437263, 45.344669>,  <36.186123, 25.676191, 44.938942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683147, 25.437263, 45.344669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692844, 25.825731, 45.439533>,  <36.698662, 26.058811, 45.496452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692844, 25.825731, 45.439533>,  <36.683147, 25.437263, 45.344669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692844, 25.825731, 45.439533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129787, -0.238278, 0.962486,
		0.991246, 0.007448, -0.131821,
		0.024242, 0.971169, 0.237159,
		36.700115, 26.117083, 45.510681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209606, 25.449793, 45.836575>,  <36.683147, 25.437263, 45.344669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209606, 25.449793, 45.836575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042355, 25.809237, 45.889740>,  <36.942001, 26.024902, 45.921638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042355, 25.809237, 45.889740>,  <37.209606, 25.449793, 45.836575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042355, 25.809237, 45.889740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258216, -0.022701, 0.965820,
		0.870913, 0.438161, -0.222543,
		-0.418133, 0.898610, 0.132911,
		36.916916, 26.078819, 45.929615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698360, 25.943600, 46.254517>,  <37.209606, 25.449793, 45.836575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698360, 25.943600, 46.254517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345314, 26.127428, 46.294090>,  <37.133488, 26.237726, 46.317837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345314, 26.127428, 46.294090>,  <37.698360, 25.943600, 46.254517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345314, 26.127428, 46.294090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235553, 0.250212, 0.939100,
		0.406829, 0.852166, -0.329094,
		-0.882612, 0.459573, 0.098937,
		37.080532, 26.265301, 46.323772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902855, 26.540504, 46.579639>,  <37.698360, 25.943600, 46.254517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902855, 26.540504, 46.579639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513374, 26.492540, 46.657124>,  <37.279686, 26.463762, 46.703613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513374, 26.492540, 46.657124>,  <37.902855, 26.540504, 46.579639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513374, 26.492540, 46.657124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151954, 0.291679, 0.944369,
		-0.169741, 0.948970, -0.265788,
		-0.973703, -0.119910, 0.193710,
		37.221264, 26.456568, 46.715237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694477, 27.180180, 46.974072>,  <37.902855, 26.540504, 46.579639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694477, 27.180180, 46.974072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446228, 26.881716, 47.070465>,  <37.297279, 26.702637, 47.128300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446228, 26.881716, 47.070465>,  <37.694477, 27.180180, 46.974072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446228, 26.881716, 47.070465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085776, 0.240884, 0.966756,
		-0.779403, 0.620661, -0.085496,
		-0.620623, -0.746160, 0.240983,
		37.260040, 26.657867, 47.142761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197170, 27.446714, 47.471882>,  <37.694477, 27.180180, 46.974072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197170, 27.446714, 47.471882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156441, 27.050865, 47.512428>,  <37.132004, 26.813354, 47.536755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156441, 27.050865, 47.512428>,  <37.197170, 27.446714, 47.471882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156441, 27.050865, 47.512428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150807, 0.085358, 0.984871,
		-0.983305, 0.115573, 0.140551,
		-0.101828, -0.989625, 0.101363,
		37.125893, 26.753979, 47.542835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817989, 27.385031, 48.056210>,  <37.197170, 27.446714, 47.471882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817989, 27.385031, 48.056210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026421, 27.044424, 48.032898>,  <37.151478, 26.840059, 48.018913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026421, 27.044424, 48.032898>,  <36.817989, 27.385031, 48.056210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026421, 27.044424, 48.032898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086421, -0.015290, 0.996141,
		-0.849124, -0.524101, 0.065622,
		0.521075, -0.851519, -0.058277,
		37.182743, 26.788969, 48.015415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666679, 27.054237, 48.572727>,  <36.817989, 27.385031, 48.056210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666679, 27.054237, 48.572727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981392, 26.825010, 48.481022>,  <37.170219, 26.687473, 48.425999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981392, 26.825010, 48.481022>,  <36.666679, 27.054237, 48.572727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981392, 26.825010, 48.481022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193522, -0.123680, 0.973269,
		-0.586104, -0.810122, 0.013591,
		0.786785, -0.573067, -0.229266,
		37.217426, 26.653090, 48.412243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602226, 26.542917, 48.949917>,  <36.666679, 27.054237, 48.572727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602226, 26.542917, 48.949917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991306, 26.553642, 48.857712>,  <37.224754, 26.560078, 48.802387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991306, 26.553642, 48.857712>,  <36.602226, 26.542917, 48.949917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991306, 26.553642, 48.857712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228208, 0.069868, 0.971102,
		0.042136, -0.997196, 0.061843,
		0.972701, 0.026805, -0.230512,
		37.283115, 26.561686, 48.788559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905529, 26.039581, 49.348713>,  <36.602226, 26.542917, 48.949917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905529, 26.039581, 49.348713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209564, 26.287167, 49.269573>,  <37.391987, 26.435719, 49.222092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209564, 26.287167, 49.269573>,  <36.905529, 26.039581, 49.348713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209564, 26.287167, 49.269573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236267, 0.020385, 0.971474,
		0.605342, -0.785154, -0.130746,
		0.760091, 0.618965, -0.197846,
		37.437592, 26.472857, 49.210220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435959, 25.880251, 49.853977>,  <36.905529, 26.039581, 49.348713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435959, 25.880251, 49.853977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556187, 26.244099, 49.739258>,  <37.628323, 26.462406, 49.670425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556187, 26.244099, 49.739258>,  <37.435959, 25.880251, 49.853977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556187, 26.244099, 49.739258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288907, 0.199743, 0.936288,
		0.908950, -0.364279, -0.202759,
		0.300570, 0.909618, -0.286799,
		37.646358, 26.516983, 49.653217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013599, 26.003731, 50.261303>,  <37.435959, 25.880251, 49.853977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013599, 26.003731, 50.261303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928341, 26.375202, 50.139896>,  <37.877186, 26.598085, 50.067051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928341, 26.375202, 50.139896>,  <38.013599, 26.003731, 50.261303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928341, 26.375202, 50.139896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017149, 0.314164, 0.949214,
		0.976870, 0.197115, -0.082889,
		-0.213144, 0.928680, -0.303517,
		37.864399, 26.653807, 50.048840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339520, 26.427185, 50.742077>,  <38.013599, 26.003731, 50.261303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339520, 26.427185, 50.742077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107784, 26.704685, 50.570930>,  <37.968742, 26.871185, 50.468243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107784, 26.704685, 50.570930>,  <38.339520, 26.427185, 50.742077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107784, 26.704685, 50.570930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153055, 0.423005, 0.893108,
		0.800586, 0.582902, -0.138882,
		-0.579342, 0.693753, -0.427867,
		37.933983, 26.912811, 50.442570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553547, 27.093918, 50.890984>,  <38.339520, 26.427185, 50.742077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553547, 27.093918, 50.890984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158222, 27.097027, 50.830082>,  <37.921028, 27.098892, 50.793541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158222, 27.097027, 50.830082>,  <38.553547, 27.093918, 50.890984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158222, 27.097027, 50.830082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144697, 0.266686, 0.952859,
		0.048013, 0.963752, -0.262444,
		-0.988310, 0.007774, -0.152257,
		37.861729, 27.099360, 50.784405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381504, 27.128210, 51.549679>,  <38.553547, 27.093918, 50.890984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381504, 27.128210, 51.549679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032707, 27.056717, 51.367386>,  <37.823429, 27.013821, 51.258011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032707, 27.056717, 51.367386>,  <38.381504, 27.128210, 51.549679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032707, 27.056717, 51.367386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466991, 0.024527, 0.883922,
		-0.146807, 0.983592, -0.104853,
		-0.871991, -0.178731, -0.455728,
		37.771111, 27.003098, 51.230667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486122, 27.868080, 51.558044>,  <38.381504, 27.128210, 51.549679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486122, 27.868080, 51.558044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750214, 28.143095, 51.678967>,  <38.908669, 28.308104, 51.751518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750214, 28.143095, 51.678967>,  <38.486122, 27.868080, 51.558044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750214, 28.143095, 51.678967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112996, 0.488848, -0.865020,
		-0.742513, 0.536954, 0.400442,
		0.660232, 0.687537, 0.302303,
		38.948284, 28.349356, 51.769657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270699, 28.614725, 51.399132>,  <38.486122, 27.868080, 51.558044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270699, 28.614725, 51.399132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670441, 28.628435, 51.395020>,  <38.910286, 28.636662, 51.392551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670441, 28.628435, 51.395020>,  <38.270699, 28.614725, 51.399132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670441, 28.628435, 51.395020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027204, 0.541139, -0.840493,
		-0.023248, 0.840234, 0.541725,
		0.999360, 0.034277, -0.010277,
		38.970249, 28.638718, 51.391937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505650, 29.362514, 51.288704>,  <38.270699, 28.614725, 51.399132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505650, 29.362514, 51.288704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813290, 29.132801, 51.176502>,  <38.997875, 28.994972, 51.109180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813290, 29.132801, 51.176502>,  <38.505650, 29.362514, 51.288704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813290, 29.132801, 51.176502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116953, 0.305016, -0.945139,
		0.628335, 0.759713, 0.167424,
		0.769101, -0.574283, -0.280503,
		39.044022, 28.960516, 51.092350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726406, 29.804813, 50.729816>,  <38.505650, 29.362514, 51.288704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726406, 29.804813, 50.729816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890759, 29.441803, 50.695026>,  <38.989372, 29.223995, 50.674152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890759, 29.441803, 50.695026>,  <38.726406, 29.804813, 50.729816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890759, 29.441803, 50.695026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191838, 0.007203, -0.981400,
		0.891275, 0.419929, -0.171139,
		0.410886, -0.907528, -0.086978,
		39.014023, 29.169544, 50.668934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304939, 29.884396, 50.241821>,  <38.726406, 29.804813, 50.729816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304939, 29.884396, 50.241821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187687, 29.502146, 50.230141>,  <39.117336, 29.272797, 50.223133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187687, 29.502146, 50.230141>,  <39.304939, 29.884396, 50.241821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187687, 29.502146, 50.230141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116087, 0.065897, -0.991051,
		0.948997, -0.287121, -0.130252,
		-0.293135, -0.955625, -0.029205,
		39.099747, 29.215458, 50.221378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739292, 29.496122, 49.741219>,  <39.304939, 29.884396, 50.241821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739292, 29.496122, 49.741219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404007, 29.280848, 49.776455>,  <39.202835, 29.151682, 49.797596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404007, 29.280848, 49.776455>,  <39.739292, 29.496122, 49.741219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404007, 29.280848, 49.776455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081531, -0.036041, -0.996019,
		0.539222, -0.842053, -0.013669,
		-0.838208, -0.538189, 0.088088,
		39.152546, 29.119390, 49.802879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818119, 29.029257, 49.245403>,  <39.739292, 29.496122, 49.741219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818119, 29.029257, 49.245403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427719, 28.999136, 49.327141>,  <39.193481, 28.981064, 49.376183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427719, 28.999136, 49.327141>,  <39.818119, 29.029257, 49.245403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427719, 28.999136, 49.327141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196548, -0.099548, -0.975428,
		0.093797, -0.992179, 0.082358,
		-0.975997, -0.075305, 0.204348,
		39.134918, 28.976545, 49.388447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593815, 28.373278, 48.878201>,  <39.818119, 29.029257, 49.245403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593815, 28.373278, 48.878201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261864, 28.589575, 48.933201>,  <39.062695, 28.719353, 48.966202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261864, 28.589575, 48.933201>,  <39.593815, 28.373278, 48.878201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261864, 28.589575, 48.933201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293418, -0.213344, -0.931875,
		-0.474569, -0.813684, 0.335712,
		-0.829874, 0.540742, 0.137503,
		39.012901, 28.751797, 48.974453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140560, 28.047918, 48.466118>,  <39.593815, 28.373278, 48.878201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140560, 28.047918, 48.466118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913403, 28.363766, 48.559071>,  <38.777107, 28.553274, 48.614841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913403, 28.363766, 48.559071>,  <39.140560, 28.047918, 48.466118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913403, 28.363766, 48.559071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473222, -0.082211, -0.877099,
		-0.673470, -0.608065, 0.420352,
		-0.567890, 0.789619, 0.232383,
		38.743034, 28.600651, 48.628784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312103, 27.910408, 48.483501>,  <39.140560, 28.047918, 48.466118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312103, 27.910408, 48.483501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417694, 28.288918, 48.408798>,  <38.481049, 28.516024, 48.363976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417694, 28.288918, 48.408798>,  <38.312103, 27.910408, 48.483501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417694, 28.288918, 48.408798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489160, -0.035542, -0.871469,
		-0.831289, 0.321401, 0.453498,
		0.263973, 0.946276, -0.186762,
		38.496887, 28.572800, 48.352768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812740, 28.125244, 48.076302>,  <38.312103, 27.910408, 48.483501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812740, 28.125244, 48.076302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069859, 28.427307, 48.024837>,  <38.224129, 28.608545, 47.993958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069859, 28.427307, 48.024837>,  <37.812740, 28.125244, 48.076302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069859, 28.427307, 48.024837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462866, 0.249055, -0.850721,
		-0.610384, 0.606392, 0.509627,
		0.642796, 0.755155, -0.128659,
		38.262699, 28.653854, 47.986240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384361, 28.602777, 47.755531>,  <37.812740, 28.125244, 48.076302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384361, 28.602777, 47.755531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752869, 28.732601, 47.669800>,  <37.973972, 28.810495, 47.618362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752869, 28.732601, 47.669800>,  <37.384361, 28.602777, 47.755531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752869, 28.732601, 47.669800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319210, 0.316116, -0.893407,
		-0.222211, 0.891478, 0.394828,
		0.921264, 0.324558, -0.214324,
		38.029247, 28.829969, 47.605503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265656, 29.277699, 47.450573>,  <37.384361, 28.602777, 47.755531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265656, 29.277699, 47.450573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634296, 29.186970, 47.324589>,  <37.855480, 29.132532, 47.248997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634296, 29.186970, 47.324589>,  <37.265656, 29.277699, 47.450573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634296, 29.186970, 47.324589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207445, 0.398007, -0.893620,
		0.328053, 0.888899, 0.319750,
		0.921601, -0.226824, -0.314965,
		37.910778, 29.118923, 47.230099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262463, 29.826082, 46.932377>,  <37.265656, 29.277699, 47.450573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262463, 29.826082, 46.932377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555782, 29.566294, 46.851910>,  <37.731773, 29.410421, 46.803631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555782, 29.566294, 46.851910>,  <37.262463, 29.826082, 46.932377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555782, 29.566294, 46.851910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040186, 0.336751, -0.940736,
		0.678722, 0.681753, 0.273037,
		0.733295, -0.649470, -0.201164,
		37.775772, 29.371452, 46.791561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668915, 30.149300, 46.517780>,  <37.262463, 29.826082, 46.932377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668915, 30.149300, 46.517780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740242, 29.761454, 46.450787>,  <37.783039, 29.528746, 46.410591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740242, 29.761454, 46.450787>,  <37.668915, 30.149300, 46.517780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740242, 29.761454, 46.450787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042430, 0.162479, -0.985799,
		0.983057, 0.182896, -0.012167,
		0.178322, -0.969613, -0.167487,
		37.793739, 29.470570, 46.400539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104504, 30.161005, 45.950947>,  <37.668915, 30.149300, 46.517780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104504, 30.161005, 45.950947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947948, 29.793505, 45.930119>,  <37.854015, 29.573004, 45.917622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947948, 29.793505, 45.930119>,  <38.104504, 30.161005, 45.950947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947948, 29.793505, 45.930119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001640, 0.055893, -0.998435,
		0.920226, -0.390856, -0.020369,
		-0.391383, -0.918753, -0.052075,
		37.830532, 29.517879, 45.914497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470928, 29.817671, 45.497215>,  <38.104504, 30.161005, 45.950947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470928, 29.817671, 45.497215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145424, 29.585297, 45.504280>,  <37.950123, 29.445873, 45.508518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145424, 29.585297, 45.504280>,  <38.470928, 29.817671, 45.497215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145424, 29.585297, 45.504280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041239, 0.027409, -0.998773,
		0.579737, -0.813489, -0.046261,
		-0.813759, -0.580934, 0.017657,
		37.901295, 29.411016, 45.509579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558548, 29.402771, 44.983101>,  <38.470928, 29.817671, 45.497215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558548, 29.402771, 44.983101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170181, 29.342314, 45.057377>,  <37.937160, 29.306040, 45.101944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170181, 29.342314, 45.057377>,  <38.558548, 29.402771, 44.983101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170181, 29.342314, 45.057377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186703, -0.007607, -0.982387,
		0.149897, -0.988482, -0.020834,
		-0.970914, -0.151146, 0.185693,
		37.878906, 29.296970, 45.113083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256523, 28.729519, 44.759693>,  <38.558548, 29.402771, 44.983101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256523, 28.729519, 44.759693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975185, 29.013790, 44.765888>,  <37.806381, 29.184353, 44.769604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975185, 29.013790, 44.765888>,  <38.256523, 28.729519, 44.759693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975185, 29.013790, 44.765888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014878, 0.007066, -0.999864,
		-0.710692, -0.703481, 0.005603,
		-0.703346, 0.710679, 0.015488,
		37.764183, 29.226994, 44.770535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905788, 28.533358, 44.147812>,  <38.256523, 28.729519, 44.759693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905788, 28.533358, 44.147812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789585, 28.891861, 44.281872>,  <37.719864, 29.106964, 44.362309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789585, 28.891861, 44.281872>,  <37.905788, 28.533358, 44.147812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789585, 28.891861, 44.281872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076295, 0.327440, -0.941787,
		-0.953825, -0.299169, -0.026745,
		-0.290511, 0.896259, 0.335145,
		37.702431, 29.160738, 44.382416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375301, 28.696156, 43.688477>,  <37.905788, 28.533358, 44.147812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375301, 28.696156, 43.688477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490929, 29.046478, 43.843086>,  <37.560307, 29.256672, 43.935852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490929, 29.046478, 43.843086>,  <37.375301, 28.696156, 43.688477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490929, 29.046478, 43.843086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111517, 0.431820, -0.895039,
		-0.950790, 0.215627, 0.222494,
		0.289072, 0.875806, 0.386524,
		37.577652, 29.309219, 43.959045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932304, 29.159637, 43.414024>,  <37.375301, 28.696156, 43.688477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932304, 29.159637, 43.414024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227551, 29.405439, 43.525429>,  <37.404697, 29.552919, 43.592274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227551, 29.405439, 43.525429>,  <36.932304, 29.159637, 43.414024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227551, 29.405439, 43.525429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041550, 0.370626, -0.927852,
		-0.673393, 0.696435, 0.248033,
		0.738116, 0.614504, 0.278514,
		37.448986, 29.589790, 43.608982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794331, 29.783932, 43.066994>,  <36.932304, 29.159637, 43.414024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794331, 29.783932, 43.066994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177723, 29.824572, 43.173569>,  <37.407757, 29.848955, 43.237514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177723, 29.824572, 43.173569>,  <36.794331, 29.783932, 43.066994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177723, 29.824572, 43.173569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253019, 0.127899, -0.958970,
		-0.131507, 0.986570, 0.096883,
		0.958482, 0.101598, 0.266440,
		37.465267, 29.855051, 43.253502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025669, 30.406769, 42.778202>,  <36.794331, 29.783932, 43.066994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025669, 30.406769, 42.778202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368061, 30.211939, 42.847549>,  <37.573498, 30.095041, 42.889156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368061, 30.211939, 42.847549>,  <37.025669, 30.406769, 42.778202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368061, 30.211939, 42.847549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312643, 0.220583, -0.923904,
		0.411767, 0.845046, 0.341094,
		0.855981, -0.487073, 0.173369,
		37.624855, 30.065817, 42.899559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544693, 30.765179, 42.480808>,  <37.025669, 30.406769, 42.778202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544693, 30.765179, 42.480808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738132, 30.419333, 42.535320>,  <37.854195, 30.211824, 42.568027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738132, 30.419333, 42.535320>,  <37.544693, 30.765179, 42.480808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738132, 30.419333, 42.535320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545734, 0.176113, -0.819243,
		0.684329, 0.470557, 0.557018,
		0.483598, -0.864616, 0.136280,
		37.883213, 30.159948, 42.576206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269962, 30.876909, 42.266418>,  <37.544693, 30.765179, 42.480808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269962, 30.876909, 42.266418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219711, 30.480177, 42.275246>,  <38.189560, 30.242138, 42.280544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219711, 30.480177, 42.275246>,  <38.269962, 30.876909, 42.266418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219711, 30.480177, 42.275246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450974, -0.076911, -0.889217,
		0.883651, -0.101760, 0.456953,
		-0.125632, -0.991831, 0.022072,
		38.182022, 30.182627, 42.281868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837925, 30.495888, 42.210087>,  <38.269962, 30.876909, 42.266418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837925, 30.495888, 42.210087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572220, 30.241871, 42.052364>,  <38.412796, 30.089460, 41.957729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572220, 30.241871, 42.052364>,  <38.837925, 30.495888, 42.210087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572220, 30.241871, 42.052364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394866, 0.149794, -0.906445,
		0.634698, -0.757813, 0.151255,
		-0.664258, -0.635044, -0.394309,
		38.372944, 30.051357, 41.934071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165699, 29.851362, 41.767563>,  <38.837925, 30.495888, 42.210087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165699, 29.851362, 41.767563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782066, 29.870802, 41.655987>,  <38.551888, 29.882465, 41.589043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782066, 29.870802, 41.655987>,  <39.165699, 29.851362, 41.767563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782066, 29.870802, 41.655987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279771, 0.011169, -0.960002,
		-0.043544, -0.998756, -0.024310,
		-0.959078, 0.048604, -0.278936,
		38.494343, 29.885382, 41.572308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018509, 29.452692, 41.115265>,  <39.165699, 29.851362, 41.767563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018509, 29.452692, 41.115265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727783, 29.727156, 41.127380>,  <38.553349, 29.891834, 41.134651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727783, 29.727156, 41.127380>,  <39.018509, 29.452692, 41.115265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727783, 29.727156, 41.127380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122867, 0.173287, -0.977177,
		-0.675751, -0.706508, -0.210254,
		-0.726818, 0.686162, 0.030292,
		38.509739, 29.933004, 41.136467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807785, 29.463196, 40.333118>,  <39.018509, 29.452692, 41.115265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807785, 29.463196, 40.333118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659946, 29.785051, 40.519001>,  <38.571243, 29.978165, 40.630531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659946, 29.785051, 40.519001>,  <38.807785, 29.463196, 40.333118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659946, 29.785051, 40.519001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136668, 0.541759, -0.829349,
		-0.919085, -0.243017, -0.310202,
		-0.369600, 0.804637, 0.464710,
		38.549065, 30.026442, 40.658413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286247, 29.744164, 39.845631>,  <38.807785, 29.463196, 40.333118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286247, 29.744164, 39.845631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406872, 30.040524, 40.085670>,  <38.479248, 30.218340, 40.229694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406872, 30.040524, 40.085670>,  <38.286247, 29.744164, 39.845631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406872, 30.040524, 40.085670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220813, 0.558020, -0.799909,
		-0.927524, 0.373734, 0.004678,
		0.301564, 0.740902, 0.600102,
		38.497341, 30.262794, 40.265701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021805, 30.327459, 39.601524>,  <38.286247, 29.744164, 39.845631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021805, 30.327459, 39.601524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329697, 30.462179, 39.818443>,  <38.514431, 30.543011, 39.948593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329697, 30.462179, 39.818443>,  <38.021805, 30.327459, 39.601524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329697, 30.462179, 39.818443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172705, 0.707952, -0.684819,
		-0.614568, 0.620781, 0.486763,
		0.769727, 0.336801, 0.542297,
		38.560616, 30.563219, 39.981133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980541, 31.109863, 39.580570>,  <38.021805, 30.327459, 39.601524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980541, 31.109863, 39.580570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351868, 30.999155, 39.679867>,  <38.574665, 30.932730, 39.739445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351868, 30.999155, 39.679867>,  <37.980541, 31.109863, 39.580570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351868, 30.999155, 39.679867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371439, 0.661539, -0.651459,
		0.016084, 0.696968, 0.716922,
		0.928318, -0.276771, 0.248241,
		38.630363, 30.916124, 39.754337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429470, 31.757732, 39.622753>,  <37.980541, 31.109863, 39.580570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429470, 31.757732, 39.622753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699299, 31.462622, 39.632847>,  <38.861198, 31.285555, 39.638905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699299, 31.462622, 39.632847>,  <38.429470, 31.757732, 39.622753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699299, 31.462622, 39.632847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609666, 0.537511, -0.582571,
		0.416242, 0.408374, 0.812388,
		0.674574, -0.737776, 0.025237,
		38.901672, 31.241289, 39.640419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099133, 32.139633, 39.683323>,  <38.429470, 31.757732, 39.622753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099133, 32.139633, 39.683323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189320, 31.775625, 39.544170>,  <39.243431, 31.557220, 39.460678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189320, 31.775625, 39.544170>,  <39.099133, 32.139633, 39.683323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189320, 31.775625, 39.544170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602611, 0.410844, -0.684155,
		0.765522, -0.055381, 0.641022,
		0.225471, -0.910022, -0.347883,
		39.256962, 31.502619, 39.439804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734520, 32.115334, 39.647186>,  <39.099133, 32.139633, 39.683323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734520, 32.115334, 39.647186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645863, 31.822485, 39.389545>,  <39.592670, 31.646776, 39.234959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645863, 31.822485, 39.389545>,  <39.734520, 32.115334, 39.647186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645863, 31.822485, 39.389545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690677, 0.348417, -0.633695,
		0.688361, -0.585320, 0.428438,
		-0.221640, -0.732124, -0.644104,
		39.579372, 31.602848, 39.196316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371548, 31.856735, 39.341633>,  <39.734520, 32.115334, 39.647186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371548, 31.856735, 39.341633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084423, 31.732687, 39.092293>,  <39.912148, 31.658258, 38.942688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084423, 31.732687, 39.092293>,  <40.371548, 31.856735, 39.341633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084423, 31.732687, 39.092293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472609, 0.440411, -0.763334,
		0.511256, -0.842534, -0.169568,
		-0.717815, -0.310121, -0.623352,
		39.869080, 31.639652, 38.905289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836010, 31.783600, 38.940418>,  <40.371548, 31.856735, 39.341633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836010, 31.783600, 38.940418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478733, 31.751011, 38.763523>,  <40.264366, 31.731457, 38.657387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478733, 31.751011, 38.763523>,  <40.836010, 31.783600, 38.940418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478733, 31.751011, 38.763523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392197, 0.339968, -0.854754,
		0.219985, -0.936902, -0.271703,
		-0.893190, -0.081472, -0.442238,
		40.210777, 31.726568, 38.630852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995480, 31.619551, 38.249393>,  <40.836010, 31.783600, 38.940418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995480, 31.619551, 38.249393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616413, 31.738281, 38.202351>,  <40.388973, 31.809519, 38.174126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616413, 31.738281, 38.202351>,  <40.995480, 31.619551, 38.249393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616413, 31.738281, 38.202351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248545, 0.454629, -0.855300,
		-0.200406, -0.839766, -0.504609,
		-0.947662, 0.296826, -0.117609,
		40.332115, 31.827330, 38.167068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782940, 31.443731, 37.554291>,  <40.995480, 31.619551, 38.249393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782940, 31.443731, 37.554291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579044, 31.762735, 37.683376>,  <40.456707, 31.954138, 37.760826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579044, 31.762735, 37.683376>,  <40.782940, 31.443731, 37.554291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579044, 31.762735, 37.683376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324130, 0.525483, -0.786643,
		-0.796936, -0.296381, -0.526356,
		-0.509737, 0.797512, 0.322710,
		40.426125, 32.001987, 37.780190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528969, 31.596727, 36.985817>,  <40.782940, 31.443731, 37.554291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528969, 31.596727, 36.985817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525360, 31.906324, 37.239071>,  <40.523193, 32.092083, 37.391022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525360, 31.906324, 37.239071>,  <40.528969, 31.596727, 36.985817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525360, 31.906324, 37.239071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378617, 0.588660, -0.714233,
		-0.925509, 0.233272, -0.298357,
		-0.009020, 0.773992, 0.633131,
		40.522655, 32.138523, 37.429008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298576, 32.198902, 36.719158>,  <40.528969, 31.596727, 36.985817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298576, 32.198902, 36.719158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567074, 32.318027, 36.990669>,  <40.728172, 32.389503, 37.153576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567074, 32.318027, 36.990669>,  <40.298576, 32.198902, 36.719158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567074, 32.318027, 36.990669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214536, 0.798483, -0.562493,
		-0.709512, 0.523192, 0.472084,
		0.671243, 0.297816, 0.678777,
		40.768448, 32.407372, 37.194302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246029, 32.988453, 36.812695>,  <40.298576, 32.198902, 36.719158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246029, 32.988453, 36.812695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623074, 32.883358, 36.895107>,  <40.849300, 32.820301, 36.944553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623074, 32.883358, 36.895107>,  <40.246029, 32.988453, 36.812695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623074, 32.883358, 36.895107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333302, 0.703928, -0.627213,
		0.019761, 0.659890, 0.751102,
		0.942613, -0.262738, 0.206032,
		40.905857, 32.804535, 36.956917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592236, 33.464081, 37.221519>,  <40.246029, 32.988453, 36.812695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592236, 33.464081, 37.221519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851357, 33.264648, 36.991123>,  <41.006828, 33.144989, 36.852886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851357, 33.264648, 36.991123>,  <40.592236, 33.464081, 37.221519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851357, 33.264648, 36.991123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347538, 0.866240, -0.358951,
		0.677912, 0.032352, 0.734431,
		0.647806, -0.498580, -0.575991,
		41.045700, 33.115074, 36.818325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181576, 33.413422, 37.490143>,  <40.592236, 33.464081, 37.221519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181576, 33.413422, 37.490143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221947, 33.407799, 37.092224>,  <41.246170, 33.404427, 36.853474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221947, 33.407799, 37.092224>,  <41.181576, 33.413422, 37.490143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221947, 33.407799, 37.092224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427055, 0.903709, 0.030558,
		0.898576, -0.427916, 0.097211,
		0.100927, -0.014056, -0.994795,
		41.252224, 33.403584, 36.793785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920536, 33.620911, 37.289959>,  <41.181576, 33.413422, 37.490143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920536, 33.620911, 37.289959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656864, 33.713367, 37.003727>,  <41.498661, 33.768841, 36.831989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656864, 33.713367, 37.003727>,  <41.920536, 33.620911, 37.289959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656864, 33.713367, 37.003727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371628, 0.927395, -0.042779,
		0.653737, -0.294129, -0.697221,
		-0.659182, 0.231141, -0.715579,
		41.459110, 33.782711, 36.789055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299236, 33.794647, 36.653130>,  <41.920536, 33.620911, 37.289959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299236, 33.794647, 36.653130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959671, 33.949936, 36.796589>,  <41.755932, 34.043110, 36.882664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959671, 33.949936, 36.796589>,  <42.299236, 33.794647, 36.653130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959671, 33.949936, 36.796589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486866, 0.838467, 0.244816,
		-0.205670, 0.382441, -0.900799,
		-0.848918, 0.388217, 0.358645,
		41.704994, 34.066402, 36.904182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109005, 34.471355, 36.424171>,  <42.299236, 33.794647, 36.653130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109005, 34.471355, 36.424171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949100, 34.434025, 36.788914>,  <41.853157, 34.411625, 37.007759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949100, 34.434025, 36.788914>,  <42.109005, 34.471355, 36.424171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949100, 34.434025, 36.788914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343629, 0.906994, 0.243478,
		-0.849772, 0.410673, -0.330508,
		-0.399759, -0.093329, 0.911857,
		41.829174, 34.406025, 37.062469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605865, 34.844013, 36.092197>,  <42.109005, 34.471355, 36.424171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605865, 34.844013, 36.092197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977116, 34.976124, 36.023499>,  <43.199867, 35.055389, 35.982281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977116, 34.976124, 36.023499>,  <42.605865, 34.844013, 36.092197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977116, 34.976124, 36.023499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318891, 0.943419, 0.090932,
		0.192062, -0.029628, 0.980936,
		0.928128, 0.330276, -0.171746,
		43.255554, 35.075207, 35.971973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864586, 35.369907, 36.651428>,  <42.605865, 34.844013, 36.092197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864586, 35.369907, 36.651428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054367, 35.419250, 36.302792>,  <43.168236, 35.448856, 36.093609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054367, 35.419250, 36.302792>,  <42.864586, 35.369907, 36.651428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054367, 35.419250, 36.302792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361648, 0.930030, -0.065233,
		0.802559, 0.346160, 0.485872,
		0.474456, 0.123362, -0.871592,
		43.196705, 35.456261, 36.041313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025688, 36.068474, 36.622578>,  <42.864586, 35.369907, 36.651428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025688, 36.068474, 36.622578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076603, 35.950951, 36.243637>,  <43.107151, 35.880436, 36.016273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076603, 35.950951, 36.243637>,  <43.025688, 36.068474, 36.622578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076603, 35.950951, 36.243637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258387, 0.912319, -0.317664,
		0.957619, 0.285218, 0.040212,
		0.127290, -0.293810, -0.947350,
		43.114788, 35.862808, 35.959431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320435, 36.660492, 36.288944>,  <43.025688, 36.068474, 36.622578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320435, 36.660492, 36.288944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131149, 36.429634, 36.022717>,  <43.017578, 36.291119, 35.862980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131149, 36.429634, 36.022717>,  <43.320435, 36.660492, 36.288944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131149, 36.429634, 36.022717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473769, 0.803679, -0.360059,
		0.742707, 0.144942, -0.653741,
		-0.473211, -0.577141, -0.665567,
		42.989185, 36.256493, 35.823048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341896, 37.020061, 35.580826>,  <43.320435, 36.660492, 36.288944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341896, 37.020061, 35.580826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028202, 36.773468, 35.608906>,  <42.839985, 36.625511, 35.625755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028202, 36.773468, 35.608906>,  <43.341896, 37.020061, 35.580826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028202, 36.773468, 35.608906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592343, 0.710200, -0.380455,
		0.184688, -0.339947, -0.922131,
		-0.784232, -0.616484, 0.070200,
		42.792931, 36.588524, 35.629967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921749, 37.303764, 35.117676>,  <43.341896, 37.020061, 35.580826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921749, 37.303764, 35.117676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668976, 37.069008, 35.320145>,  <42.517311, 36.928154, 35.441628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668976, 37.069008, 35.320145>,  <42.921749, 37.303764, 35.117676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668976, 37.069008, 35.320145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708234, 0.702535, -0.069635,
		-0.314737, -0.402494, -0.859616,
		-0.631938, -0.586892, 0.506174,
		42.479393, 36.892941, 35.471996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479893, 37.150620, 34.596737>,  <42.921749, 37.303764, 35.117676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479893, 37.150620, 34.596737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321690, 37.072273, 34.955669>,  <42.226768, 37.025265, 35.171028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321690, 37.072273, 34.955669>,  <42.479893, 37.150620, 34.596737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321690, 37.072273, 34.955669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592367, 0.801040, -0.086240,
		-0.701908, -0.565659, -0.432844,
		-0.395508, -0.195870, 0.897334,
		42.203037, 37.013512, 35.224869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829807, 36.909863, 34.461880>,  <42.479893, 37.150620, 34.596737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829807, 36.909863, 34.461880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845982, 37.042046, 34.839062>,  <41.855686, 37.121357, 35.065372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845982, 37.042046, 34.839062>,  <41.829807, 36.909863, 34.461880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845982, 37.042046, 34.839062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677438, 0.702771, -0.217236,
		-0.734468, -0.630008, 0.252284,
		0.040438, 0.330460, 0.942954,
		41.858112, 37.141182, 35.121948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183083, 37.277298, 34.476868>,  <41.829807, 36.909863, 34.461880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183083, 37.277298, 34.476868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343124, 37.389648, 34.825817>,  <41.439148, 37.457058, 35.035187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343124, 37.389648, 34.825817>,  <41.183083, 37.277298, 34.476868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343124, 37.389648, 34.825817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525038, 0.850438, -0.033012,
		-0.751169, -0.444819, 0.487731,
		0.400101, 0.280875, 0.872370,
		41.463154, 37.473911, 35.087528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615768, 37.460995, 35.041325>,  <41.183083, 37.277298, 34.476868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615768, 37.460995, 35.041325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964272, 37.641422, 35.118725>,  <41.173374, 37.749680, 35.165165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964272, 37.641422, 35.118725>,  <40.615768, 37.460995, 35.041325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964272, 37.641422, 35.118725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476821, 0.871349, 0.115726,
		-0.116402, -0.193090, 0.974252,
		0.871259, 0.451073, 0.193497,
		41.225651, 37.776745, 35.176773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462746, 38.075001, 35.461277>,  <40.615768, 37.460995, 35.041325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462746, 38.075001, 35.461277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829807, 38.150421, 35.321354>,  <41.050045, 38.195671, 35.237400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829807, 38.150421, 35.321354>,  <40.462746, 38.075001, 35.461277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829807, 38.150421, 35.321354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177631, 0.982056, 0.063354,
		0.355475, 0.003999, 0.934677,
		0.917652, 0.188549, -0.349807,
		41.105103, 38.206985, 35.216412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719883, 38.558777, 35.845135>,  <40.462746, 38.075001, 35.461277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719883, 38.558777, 35.845135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932285, 38.595600, 35.508194>,  <41.059727, 38.617695, 35.306030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932285, 38.595600, 35.508194>,  <40.719883, 38.558777, 35.845135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932285, 38.595600, 35.508194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284905, 0.955604, -0.075167,
		0.798035, 0.279905, 0.533661,
		0.531008, 0.092057, -0.842351,
		41.091587, 38.623219, 35.255489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013584, 39.233631, 35.858471>,  <40.719883, 38.558777, 35.845135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013584, 39.233631, 35.858471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055058, 39.138176, 35.472248>,  <41.079941, 39.080902, 35.240513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055058, 39.138176, 35.472248>,  <41.013584, 39.233631, 35.858471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055058, 39.138176, 35.472248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397039, 0.880156, -0.260166,
		0.911926, 0.410340, -0.003487,
		0.103687, -0.238636, -0.965558,
		41.086163, 39.066586, 35.182579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498623, 39.777435, 35.453712>,  <41.013584, 39.233631, 35.858471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498623, 39.777435, 35.453712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256111, 39.574337, 35.208885>,  <41.110603, 39.452480, 35.061989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256111, 39.574337, 35.208885>,  <41.498623, 39.777435, 35.453712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256111, 39.574337, 35.208885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252187, 0.852677, -0.457541,
		0.754205, -0.123045, -0.645008,
		-0.606281, -0.507742, -0.612063,
		41.074226, 39.422016, 35.025265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625294, 40.136620, 34.856030>,  <41.498623, 39.777435, 35.453712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625294, 40.136620, 34.856030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284443, 39.934486, 34.801594>,  <41.079933, 39.813206, 34.768932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284443, 39.934486, 34.801594>,  <41.625294, 40.136620, 34.856030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284443, 39.934486, 34.801594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373742, 0.769638, -0.517662,
		0.366333, -0.390249, -0.844692,
		-0.852125, -0.505334, -0.136091,
		41.028805, 39.782887, 34.760765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505951, 40.231411, 34.126537>,  <41.625294, 40.136620, 34.856030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505951, 40.231411, 34.126537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135681, 40.109108, 34.215664>,  <40.913521, 40.035725, 34.269138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135681, 40.109108, 34.215664>,  <41.505951, 40.231411, 34.126537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135681, 40.109108, 34.215664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369421, 0.857551, -0.357957,
		-0.081629, -0.413664, -0.906763,
		-0.925670, -0.305758, 0.222818,
		40.857979, 40.017380, 34.282509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003925, 40.321743, 33.499157>,  <41.505951, 40.231411, 34.126537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003925, 40.321743, 33.499157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762917, 40.304424, 33.817928>,  <40.618313, 40.294033, 34.009190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762917, 40.304424, 33.817928>,  <41.003925, 40.321743, 33.499157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762917, 40.304424, 33.817928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465084, 0.830510, -0.306511,
		-0.648587, -0.555318, -0.520535,
		-0.602521, -0.043293, 0.796928,
		40.582161, 40.291435, 34.057007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359371, 40.320698, 33.187073>,  <41.003925, 40.321743, 33.499157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359371, 40.320698, 33.187073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313717, 40.447933, 33.563538>,  <40.286324, 40.524273, 33.789417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313717, 40.447933, 33.563538>,  <40.359371, 40.320698, 33.187073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313717, 40.447933, 33.563538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542781, 0.773500, -0.327241,
		-0.832083, -0.548196, 0.084371,
		-0.114132, 0.318087, 0.941167,
		40.279476, 40.543358, 33.845886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656521, 40.493324, 33.267117>,  <40.359371, 40.320698, 33.187073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656521, 40.493324, 33.267117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858448, 40.703053, 33.541412>,  <39.979607, 40.828892, 33.705990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858448, 40.703053, 33.541412>,  <39.656521, 40.493324, 33.267117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858448, 40.703053, 33.541412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306353, 0.851505, -0.425543,
		-0.807034, 0.004744, 0.590486,
		0.504820, 0.524325, 0.685740,
		40.009895, 40.860352, 33.747135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176159, 41.029144, 33.451843>,  <39.656521, 40.493324, 33.267117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176159, 41.029144, 33.451843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548824, 41.147186, 33.536617>,  <39.772423, 41.218010, 33.587482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548824, 41.147186, 33.536617>,  <39.176159, 41.029144, 33.451843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548824, 41.147186, 33.536617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186353, 0.888893, -0.418499,
		-0.311891, 0.350405, 0.883142,
		0.931664, 0.295102, 0.211938,
		39.828323, 41.235718, 33.600201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098042, 41.748215, 33.678665>,  <39.176159, 41.029144, 33.451843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098042, 41.748215, 33.678665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490063, 41.709747, 33.609104>,  <39.725277, 41.686668, 33.567368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490063, 41.709747, 33.609104>,  <39.098042, 41.748215, 33.678665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490063, 41.709747, 33.609104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066501, 0.983365, -0.169029,
		0.187268, 0.154093, 0.970147,
		0.980055, -0.096170, -0.173906,
		39.784081, 41.680897, 33.556931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223793, 42.477703, 33.468910>,  <39.098042, 41.748215, 33.678665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223793, 42.477703, 33.468910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546410, 42.271172, 33.353745>,  <39.739979, 42.147251, 33.284645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546410, 42.271172, 33.353745>,  <39.223793, 42.477703, 33.468910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546410, 42.271172, 33.353745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493956, 0.856159, -0.151653,
		0.324800, -0.019900, 0.945574,
		0.806544, -0.516328, -0.287910,
		39.788372, 42.116272, 33.267372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653896, 42.804615, 33.943489>,  <39.223793, 42.477703, 33.468910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653896, 42.804615, 33.943489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827297, 42.638435, 33.623619>,  <39.931335, 42.538727, 33.431698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827297, 42.638435, 33.623619>,  <39.653896, 42.804615, 33.943489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827297, 42.638435, 33.623619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348545, 0.895624, -0.276357,
		0.831021, -0.158923, 0.533055,
		0.433498, -0.415452, -0.799675,
		39.957348, 42.513802, 33.383717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390934, 43.067905, 33.908699>,  <39.653896, 42.804615, 33.943489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390934, 43.067905, 33.908699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286217, 42.970985, 33.535015>,  <40.223385, 42.912834, 33.310802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286217, 42.970985, 33.535015>,  <40.390934, 43.067905, 33.908699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286217, 42.970985, 33.535015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484265, 0.804320, -0.344320,
		0.834836, -0.542547, -0.093226,
		-0.261793, -0.242305, -0.934212,
		40.207680, 42.898293, 33.254753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993172, 42.885857, 33.539158>,  <40.390934, 43.067905, 33.908699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993172, 42.885857, 33.539158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706944, 43.081184, 33.339359>,  <40.535206, 43.198380, 33.219479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706944, 43.081184, 33.339359>,  <40.993172, 42.885857, 33.539158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706944, 43.081184, 33.339359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571801, 0.820210, -0.017306,
		0.401245, -0.297999, -0.866141,
		-0.715575, 0.488316, -0.499501,
		40.492271, 43.227680, 33.189510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298729, 43.364452, 33.077454>,  <40.993172, 42.885857, 33.539158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298729, 43.364452, 33.077454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946552, 43.542152, 33.143757>,  <40.735249, 43.648773, 33.183537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946552, 43.542152, 33.143757>,  <41.298729, 43.364452, 33.077454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946552, 43.542152, 33.143757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443802, 0.895149, -0.041797,
		-0.166945, 0.036763, -0.985281,
		-0.880437, 0.444247, 0.165756,
		40.682423, 43.675426, 33.193485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757870, 43.817211, 32.807430>,  <41.298729, 43.364452, 33.077454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757870, 43.817211, 32.807430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466610, 43.985126, 33.024162>,  <41.291855, 44.085876, 33.154202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466610, 43.985126, 33.024162>,  <41.757870, 43.817211, 32.807430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466610, 43.985126, 33.024162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446416, 0.890303, -0.089854,
		-0.520114, 0.176455, -0.835670,
		-0.728145, 0.419790, 0.541831,
		41.248165, 44.111065, 33.186710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838047, 44.308590, 33.361252>,  <41.757870, 43.817211, 32.807430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838047, 44.308590, 33.361252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183090, 44.363739, 33.555939>,  <42.390118, 44.396828, 33.672752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183090, 44.363739, 33.555939>,  <41.838047, 44.308590, 33.361252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183090, 44.363739, 33.555939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505734, 0.212870, 0.836014,
		0.011654, -0.967305, 0.253350,
		0.862611, 0.137870, 0.486718,
		42.441872, 44.405102, 33.701954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771614, 43.941826, 34.070103>,  <41.838047, 44.308590, 33.361252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771614, 43.941826, 34.070103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025414, 44.250969, 34.066246>,  <42.177692, 44.436455, 34.063931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025414, 44.250969, 34.066246>,  <41.771614, 43.941826, 34.070103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025414, 44.250969, 34.066246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468225, 0.394267, 0.790771,
		0.614959, -0.497230, 0.612036,
		0.634500, 0.772862, -0.009642,
		42.215763, 44.482826, 34.063354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597992, 43.886284, 34.216667>,  <41.771614, 43.941826, 34.070103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597992, 43.886284, 34.216667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426296, 43.595375, 34.430893>,  <42.323280, 43.420830, 34.559429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426296, 43.595375, 34.430893>,  <42.597992, 43.886284, 34.216667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426296, 43.595375, 34.430893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815555, -0.566898, -0.116174,
		0.388101, 0.386917, 0.836465,
		-0.429241, -0.727270, 0.535566,
		42.297523, 43.377193, 34.591564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039074, 43.639870, 34.815910>,  <42.597992, 43.886284, 34.216667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039074, 43.639870, 34.815910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784843, 43.345268, 34.723297>,  <42.632305, 43.168507, 34.667728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784843, 43.345268, 34.723297>,  <43.039074, 43.639870, 34.815910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784843, 43.345268, 34.723297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764382, -0.642440, -0.054686,
		-0.108472, -0.211739, 0.971288,
		-0.635574, -0.736503, -0.231536,
		42.594170, 43.124317, 34.653835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160431, 43.082817, 35.345371>,  <43.039074, 43.639870, 34.815910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160431, 43.082817, 35.345371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963783, 42.894787, 35.052158>,  <42.845795, 42.781967, 34.876228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963783, 42.894787, 35.052158>,  <43.160431, 43.082817, 35.345371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963783, 42.894787, 35.052158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651542, -0.757059, 0.048519,
		-0.577759, -0.453750, 0.678458,
		-0.491617, -0.470077, -0.733035,
		42.816299, 42.753765, 34.832249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011139, 42.437347, 35.541542>,  <43.160431, 43.082817, 35.345371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011139, 42.437347, 35.541542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952969, 42.369808, 35.151600>,  <42.918068, 42.329285, 34.917633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952969, 42.369808, 35.151600>,  <43.011139, 42.437347, 35.541542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952969, 42.369808, 35.151600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554131, -0.830182, 0.061126,
		-0.819628, -0.531307, 0.214295,
		-0.145427, -0.168848, -0.974855,
		42.909340, 42.319153, 34.859142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036266, 41.668423, 35.563782>,  <43.011139, 42.437347, 35.541542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036266, 41.668423, 35.563782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096085, 41.807491, 35.193535>,  <43.131977, 41.890934, 34.971386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096085, 41.807491, 35.193535>,  <43.036266, 41.668423, 35.563782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096085, 41.807491, 35.193535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617594, -0.763906, -0.187151,
		-0.772148, -0.543666, -0.328960,
		0.149547, 0.347672, -0.925613,
		43.140949, 41.911793, 34.915852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778873, 41.213760, 35.099846>,  <43.036266, 41.668423, 35.563782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778873, 41.213760, 35.099846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070274, 41.436367, 34.940056>,  <43.245113, 41.569931, 34.844181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070274, 41.436367, 34.940056>,  <42.778873, 41.213760, 35.099846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070274, 41.436367, 34.940056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486534, -0.830836, -0.270180,
		-0.482259, 0.002467, -0.876025,
		0.728500, 0.556512, -0.399478,
		43.288826, 41.603321, 34.820213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898418, 40.866875, 34.550381>,  <42.778873, 41.213760, 35.099846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898418, 40.866875, 34.550381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219521, 41.100971, 34.596130>,  <43.412182, 41.241428, 34.623581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219521, 41.100971, 34.596130>,  <42.898418, 40.866875, 34.550381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219521, 41.100971, 34.596130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596308, -0.787164, -0.157451,
		-0.002117, 0.194595, -0.980881,
		0.802753, 0.585240, 0.114372,
		43.460346, 41.276543, 34.630444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247307, 40.752804, 33.912212>,  <42.898418, 40.866875, 34.550381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247307, 40.752804, 33.912212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501041, 40.899734, 34.184296>,  <43.653282, 40.987892, 34.347546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501041, 40.899734, 34.184296>,  <43.247307, 40.752804, 33.912212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501041, 40.899734, 34.184296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680429, -0.682933, -0.265743,
		0.366923, 0.631405, -0.683151,
		0.634338, 0.367328, 0.680210,
		43.691341, 41.009933, 34.388359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958942, 40.678951, 33.579716>,  <43.247307, 40.752804, 33.912212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958942, 40.678951, 33.579716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021542, 40.714874, 33.973152>,  <44.059101, 40.736427, 34.209213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021542, 40.714874, 33.973152>,  <43.958942, 40.678951, 33.579716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021542, 40.714874, 33.973152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648206, -0.760720, -0.033677,
		0.745210, 0.642838, -0.177259,
		0.156494, 0.089804, 0.983588,
		44.068489, 40.741814, 34.268227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678413, 40.797653, 33.758392>,  <43.958942, 40.678951, 33.579716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678413, 40.797653, 33.758392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519814, 40.636879, 34.088539>,  <44.424656, 40.540413, 34.286629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519814, 40.636879, 34.088539>,  <44.678413, 40.797653, 33.758392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519814, 40.636879, 34.088539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776654, -0.626233, 0.068131,
		0.489490, 0.668041, 0.560466,
		-0.396496, -0.401938, 0.825371,
		44.400864, 40.516296, 34.336151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262009, 40.359337, 33.895874>,  <44.678413, 40.797653, 33.758392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262009, 40.359337, 33.895874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007030, 40.262329, 34.188404>,  <44.854042, 40.204124, 34.363922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007030, 40.262329, 34.188404>,  <45.262009, 40.359337, 33.895874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007030, 40.262329, 34.188404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662645, -0.656875, 0.359747,
		0.393145, 0.713931, 0.579430,
		-0.637447, -0.242524, 0.731330,
		44.815796, 40.189571, 34.407803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668922, 40.363995, 34.655350>,  <45.262009, 40.359337, 33.895874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668922, 40.363995, 34.655350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348495, 40.128048, 34.696033>,  <45.156239, 39.986481, 34.720444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348495, 40.128048, 34.696033>,  <45.668922, 40.363995, 34.655350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348495, 40.128048, 34.696033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540555, -0.639923, 0.546167,
		-0.257077, 0.492499, 0.831478,
		-0.801069, -0.589867, 0.101713,
		45.108173, 39.951088, 34.726547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692429, 40.062145, 35.393257>,  <45.668922, 40.363995, 34.655350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692429, 40.062145, 35.393257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456078, 39.828136, 35.171047>,  <45.314266, 39.687733, 35.037720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456078, 39.828136, 35.171047>,  <45.692429, 40.062145, 35.393257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456078, 39.828136, 35.171047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458181, -0.810107, 0.365782,
		-0.664025, -0.038397, 0.746724,
		-0.590882, -0.585023, -0.555524,
		45.278812, 39.652630, 35.004391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.639961, 39.453056, 35.772732>,  <45.692429, 40.062145, 35.393257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.639961, 39.453056, 35.772732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527073, 39.343479, 35.404968>,  <45.459339, 39.277733, 35.184311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527073, 39.343479, 35.404968>,  <45.639961, 39.453056, 35.772732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527073, 39.343479, 35.404968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461709, -0.878859, 0.120133,
		-0.840938, -0.390594, 0.374513,
		-0.282221, -0.273940, -0.919407,
		45.442406, 39.261299, 35.129147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111748, 38.873581, 35.733902>,  <45.639961, 39.453056, 35.772732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111748, 38.873581, 35.733902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303394, 38.865620, 35.382893>,  <45.418381, 38.860844, 35.172287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303394, 38.865620, 35.382893>,  <45.111748, 38.873581, 35.733902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303394, 38.865620, 35.382893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168397, -0.979088, 0.114146,
		-0.861447, -0.202462, -0.465745,
		0.479115, -0.019900, -0.877526,
		45.447128, 38.859650, 35.119637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910259, 38.205723, 35.462215>,  <45.111748, 38.873581, 35.733902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910259, 38.205723, 35.462215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242550, 38.322777, 35.272793>,  <45.441925, 38.393009, 35.159138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242550, 38.322777, 35.272793>,  <44.910259, 38.205723, 35.462215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242550, 38.322777, 35.272793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385946, -0.915805, 0.111122,
		-0.401168, -0.275079, -0.873725,
		0.830729, 0.292632, -0.473557,
		45.491768, 38.410568, 35.130726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.015816, 37.719624, 35.007534>,  <44.910259, 38.205723, 35.462215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.015816, 37.719624, 35.007534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372185, 37.898876, 35.037010>,  <45.586006, 38.006428, 35.054695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372185, 37.898876, 35.037010>,  <45.015816, 37.719624, 35.007534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372185, 37.898876, 35.037010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448067, -0.893813, 0.018297,
		0.074065, 0.016718, -0.997113,
		0.890927, 0.448129, 0.073691,
		45.639462, 38.033314, 35.059116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358337, 37.295361, 34.585892>,  <45.015816, 37.719624, 35.007534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358337, 37.295361, 34.585892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614639, 37.500290, 34.814610>,  <45.768421, 37.623249, 34.951839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614639, 37.500290, 34.814610>,  <45.358337, 37.295361, 34.585892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614639, 37.500290, 34.814610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529955, -0.834034, 0.153412,
		0.555496, 0.204727, -0.805923,
		0.640759, 0.512322, 0.571799,
		45.806866, 37.653988, 34.986149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949245, 37.280998, 34.163326>,  <45.358337, 37.295361, 34.585892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949245, 37.280998, 34.163326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016579, 37.355957, 34.550426>,  <46.056980, 37.400932, 34.782688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016579, 37.355957, 34.550426>,  <45.949245, 37.280998, 34.163326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016579, 37.355957, 34.550426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589246, -0.806173, 0.053608,
		0.790223, 0.561221, -0.246128,
		0.168336, 0.187392, 0.967754,
		46.067081, 37.412174, 34.840752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.539242, 36.937473, 34.214104>,  <45.949245, 37.280998, 34.163326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.539242, 36.937473, 34.214104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.476383, 37.015186, 34.601414>,  <46.438667, 37.061813, 34.833801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.476383, 37.015186, 34.601414>,  <46.539242, 36.937473, 34.214104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.476383, 37.015186, 34.601414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378415, -0.893779, 0.240752,
		0.912199, 0.404243, 0.066932,
		-0.157144, 0.194285, 0.968276,
		46.429241, 37.073471, 34.891895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.129936, 36.844048, 34.554955>,  <46.539242, 36.937473, 34.214104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.129936, 36.844048, 34.554955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.842609, 36.788380, 34.827614>,  <46.670212, 36.754978, 34.991211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.842609, 36.788380, 34.827614>,  <47.129936, 36.844048, 34.554955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.842609, 36.788380, 34.827614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401196, -0.883327, 0.242435,
		0.568380, 0.447621, 0.690347,
		-0.718321, -0.139169, 0.681650,
		46.627113, 36.746628, 35.032108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.526970, 36.768700, 35.121674>,  <47.129936, 36.844048, 34.554955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.526970, 36.768700, 35.121674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177795, 36.587551, 35.194206>,  <46.968288, 36.478863, 35.237724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177795, 36.587551, 35.194206>,  <47.526970, 36.768700, 35.121674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177795, 36.587551, 35.194206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486074, -0.838973, 0.244654,
		0.041335, 0.301709, 0.952504,
		-0.872940, -0.452875, 0.181332,
		46.915913, 36.451687, 35.248608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.571419, 36.381660, 35.622704>,  <47.526970, 36.768700, 35.121674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.571419, 36.381660, 35.622704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.279373, 36.142796, 35.489841>,  <47.104145, 35.999477, 35.410126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.279373, 36.142796, 35.489841>,  <47.571419, 36.381660, 35.622704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.279373, 36.142796, 35.489841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589356, -0.796312, 0.136185,
		-0.345823, -0.096327, 0.933342,
		-0.730114, -0.597166, -0.332154,
		47.060341, 35.963646, 35.390194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.685207, 35.886772, 36.083359>,  <47.571419, 36.381660, 35.622704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.685207, 35.886772, 36.083359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508327, 35.742855, 35.754723>,  <47.402199, 35.656506, 35.557541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508327, 35.742855, 35.754723>,  <47.685207, 35.886772, 36.083359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.508327, 35.742855, 35.754723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638669, -0.769452, -0.006791,
		-0.629729, -0.527725, 0.570042,
		-0.442204, -0.359792, -0.821587,
		47.375668, 35.634918, 35.508247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.876591, 35.403133, 35.627132>,  <47.685207, 35.886772, 36.083359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.876591, 35.403133, 35.627132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622608, 35.101391, 35.560467>,  <47.470219, 34.920345, 35.520466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622608, 35.101391, 35.560467>,  <47.876591, 35.403133, 35.627132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.622608, 35.101391, 35.560467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044828, 0.251351, -0.966857,
		0.771243, -0.606445, -0.193415,
		-0.634961, -0.754352, -0.166667,
		47.432121, 34.875084, 35.510468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.970421, 35.002804, 35.035999>,  <47.876591, 35.403133, 35.627132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.970421, 35.002804, 35.035999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576756, 35.067818, 35.064304>,  <47.340557, 35.106827, 35.081287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576756, 35.067818, 35.064304>,  <47.970421, 35.002804, 35.035999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.576756, 35.067818, 35.064304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029328, 0.244411, -0.969228,
		-0.174825, -0.955953, -0.235774,
		-0.984163, 0.162531, 0.070766,
		47.281506, 35.116577, 35.085533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.149223, 33.955048, 46.978222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.756283, 33.923656, 47.046135>,  <36.520519, 33.904823, 47.086884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.756283, 33.923656, 47.046135>,  <37.149223, 33.955048, 46.978222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756283, 33.923656, 47.046135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168325, -0.024862, -0.985418,
		0.081557, -0.996606, 0.011213,
		-0.982352, -0.078480, 0.169781,
		36.461578, 33.900112, 47.097069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862522, 33.522003, 46.437889>,  <37.149223, 33.955048, 46.978222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862522, 33.522003, 46.437889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532082, 33.707275, 46.566277>,  <36.333817, 33.818439, 46.643307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532082, 33.707275, 46.566277>,  <36.862522, 33.522003, 46.437889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532082, 33.707275, 46.566277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306086, 0.109414, -0.945695,
		-0.473145, -0.879484, 0.051386,
		-0.826102, 0.463180, 0.320967,
		36.284252, 33.846230, 46.662567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433231, 33.190701, 46.098408>,  <36.862522, 33.522003, 46.437889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433231, 33.190701, 46.098408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258068, 33.536137, 46.198364>,  <36.152969, 33.743401, 46.258339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258068, 33.536137, 46.198364>,  <36.433231, 33.190701, 46.098408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258068, 33.536137, 46.198364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314583, 0.113199, -0.942456,
		-0.842186, -0.491318, 0.222102,
		-0.437904, 0.863593, 0.249895,
		36.126698, 33.795216, 46.273335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863674, 33.138306, 45.776058>,  <36.433231, 33.190701, 46.098408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863674, 33.138306, 45.776058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881073, 33.530499, 45.852757>,  <35.891514, 33.765812, 45.898777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881073, 33.530499, 45.852757>,  <35.863674, 33.138306, 45.776058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881073, 33.530499, 45.852757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325462, 0.195366, -0.925152,
		-0.944554, -0.022162, 0.327608,
		0.043500, 0.980480, 0.191746,
		35.894123, 33.824642, 45.910282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152805, 33.507305, 45.530445>,  <35.863674, 33.138306, 45.776058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152805, 33.507305, 45.530445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452801, 33.770275, 45.559570>,  <35.632797, 33.928059, 45.577045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452801, 33.770275, 45.559570>,  <35.152805, 33.507305, 45.530445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452801, 33.770275, 45.559570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116209, 0.239339, -0.963957,
		-0.651158, 0.714498, 0.255901,
		0.749992, 0.657426, 0.072816,
		35.677799, 33.967503, 45.581417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885559, 34.073761, 45.249390>,  <35.152805, 33.507305, 45.530445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885559, 34.073761, 45.249390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282940, 34.110588, 45.222328>,  <35.521370, 34.132683, 45.206093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282940, 34.110588, 45.222328>,  <34.885559, 34.073761, 45.249390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282940, 34.110588, 45.222328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075413, 0.083624, -0.993640,
		-0.085825, 0.992235, 0.090020,
		0.993452, 0.092067, -0.067650,
		35.580975, 34.138206, 45.202034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979958, 34.596188, 44.704220>,  <34.885559, 34.073761, 45.249390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979958, 34.596188, 44.704220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334465, 34.412033, 44.724468>,  <35.547173, 34.301540, 44.736618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334465, 34.412033, 44.724468>,  <34.979958, 34.596188, 44.704220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334465, 34.412033, 44.724468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020045, -0.071069, -0.997270,
		0.462729, 0.884869, -0.053758,
		0.886273, -0.460388, 0.050623,
		35.600346, 34.273918, 44.739655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373470, 35.020168, 44.284214>,  <34.979958, 34.596188, 44.704220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373470, 35.020168, 44.284214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539394, 34.658283, 44.323059>,  <35.638950, 34.441154, 44.346367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539394, 34.658283, 44.323059>,  <35.373470, 35.020168, 44.284214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539394, 34.658283, 44.323059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037260, -0.089745, -0.995268,
		0.909144, 0.416468, -0.003518,
		0.414813, -0.904710, 0.097109,
		35.663837, 34.386871, 44.352192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879547, 35.104069, 43.753696>,  <35.373470, 35.020168, 44.284214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879547, 35.104069, 43.753696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903904, 34.715851, 43.846943>,  <35.918518, 34.482922, 43.902889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903904, 34.715851, 43.846943>,  <35.879547, 35.104069, 43.753696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903904, 34.715851, 43.846943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124759, -0.224318, -0.966497,
		0.990317, 0.087932, 0.107426,
		0.060888, -0.970541, 0.233116,
		35.922169, 34.424690, 43.916878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428822, 34.944603, 43.399620>,  <35.879547, 35.104069, 43.753696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428822, 34.944603, 43.399620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218658, 34.607143, 43.443798>,  <36.092560, 34.404667, 43.470306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218658, 34.607143, 43.443798>,  <36.428822, 34.944603, 43.399620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218658, 34.607143, 43.443798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153155, -0.221463, -0.963067,
		0.836954, -0.489085, 0.245568,
		-0.525405, -0.843653, 0.110449,
		36.061035, 34.354046, 43.476933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854671, 34.498367, 43.211613>,  <36.428822, 34.944603, 43.399620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854671, 34.498367, 43.211613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503548, 34.308693, 43.184505>,  <36.292873, 34.194889, 43.168240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503548, 34.308693, 43.184505>,  <36.854671, 34.498367, 43.211613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503548, 34.308693, 43.184505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231672, -0.296449, -0.926524,
		0.419258, -0.829013, 0.370082,
		-0.877810, -0.474190, -0.067771,
		36.240204, 34.166435, 43.164173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996281, 33.874340, 42.805046>,  <36.854671, 34.498367, 43.211613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996281, 33.874340, 42.805046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603092, 33.942379, 42.777237>,  <36.367180, 33.983204, 42.760551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603092, 33.942379, 42.777237>,  <36.996281, 33.874340, 42.805046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603092, 33.942379, 42.777237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051014, -0.110844, -0.992528,
		-0.176537, -0.979173, 0.100279,
		-0.982971, 0.170102, -0.069520,
		36.308201, 33.993408, 42.756382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812622, 33.335930, 42.503899>,  <36.996281, 33.874340, 42.805046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812622, 33.335930, 42.503899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534332, 33.615940, 42.439491>,  <36.367359, 33.783947, 42.400845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534332, 33.615940, 42.439491>,  <36.812622, 33.335930, 42.503899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534332, 33.615940, 42.439491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215149, -0.010793, -0.976521,
		-0.685327, -0.714037, -0.143101,
		-0.695728, 0.700025, -0.161021,
		36.325615, 33.825947, 42.391186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447189, 33.117199, 41.953259>,  <36.812622, 33.335930, 42.503899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447189, 33.117199, 41.953259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368443, 33.508373, 41.981220>,  <36.321194, 33.743076, 41.997997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368443, 33.508373, 41.981220>,  <36.447189, 33.117199, 41.953259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368443, 33.508373, 41.981220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039007, 0.079057, -0.996107,
		-0.979654, -0.193371, -0.053710,
		-0.196865, 0.977935, 0.069905,
		36.309383, 33.801754, 42.002193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054710, 33.236992, 41.421429>,  <36.447189, 33.117199, 41.953259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054710, 33.236992, 41.421429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183250, 33.605289, 41.509945>,  <36.260372, 33.826267, 41.563053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183250, 33.605289, 41.509945>,  <36.054710, 33.236992, 41.421429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183250, 33.605289, 41.509945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186316, 0.167639, -0.968082,
		-0.928451, 0.352321, -0.117679,
		0.321348, 0.920743, 0.221288,
		36.279655, 33.881512, 41.576332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680679, 33.640179, 40.935940>,  <36.054710, 33.236992, 41.421429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680679, 33.640179, 40.935940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.982937, 33.875072, 41.051979>,  <36.164291, 34.016010, 41.121605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.982937, 33.875072, 41.051979>,  <35.680679, 33.640179, 40.935940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982937, 33.875072, 41.051979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105981, 0.327454, -0.938905,
		-0.646353, 0.740221, 0.185202,
		0.755642, 0.587236, 0.290100,
		36.209629, 34.051243, 41.139008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607418, 34.302723, 40.555050>,  <35.680679, 33.640179, 40.935940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607418, 34.302723, 40.555050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977585, 34.306377, 40.706585>,  <36.199684, 34.308571, 40.797504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977585, 34.306377, 40.706585>,  <35.607418, 34.302723, 40.555050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977585, 34.306377, 40.706585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345870, 0.388115, -0.854249,
		-0.154833, 0.921566, 0.356010,
		0.925419, 0.009133, 0.378835,
		36.255211, 34.309116, 40.820236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846321, 35.013832, 40.497677>,  <35.607418, 34.302723, 40.555050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846321, 35.013832, 40.497677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175835, 34.787476, 40.511238>,  <36.373543, 34.651661, 40.519375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175835, 34.787476, 40.511238>,  <35.846321, 35.013832, 40.497677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175835, 34.787476, 40.511238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314686, 0.406725, -0.857641,
		0.471541, 0.717179, 0.513131,
		0.823785, -0.565887, 0.033899,
		36.422970, 34.617710, 40.521408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546417, 35.461136, 40.422348>,  <35.846321, 35.013832, 40.497677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546417, 35.461136, 40.422348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629017, 35.081810, 40.325966>,  <36.678577, 34.854214, 40.268135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629017, 35.081810, 40.325966>,  <36.546417, 35.461136, 40.422348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629017, 35.081810, 40.325966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427757, 0.308982, -0.849444,
		0.879990, 0.072338, 0.469452,
		0.206499, -0.948313, -0.240958,
		36.690968, 34.797318, 40.253677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202995, 35.508110, 40.095844>,  <36.546417, 35.461136, 40.422348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202995, 35.508110, 40.095844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091854, 35.146889, 39.964817>,  <37.025169, 34.930157, 39.886200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091854, 35.146889, 39.964817>,  <37.202995, 35.508110, 40.095844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091854, 35.146889, 39.964817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595028, 0.105911, -0.796696,
		0.754150, -0.416273, 0.507912,
		-0.277850, -0.903050, -0.327567,
		37.008499, 34.875973, 39.866547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799595, 35.238918, 39.741409>,  <37.202995, 35.508110, 40.095844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799595, 35.238918, 39.741409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497612, 35.009533, 39.614178>,  <37.316422, 34.871902, 39.537838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497612, 35.009533, 39.614178>,  <37.799595, 35.238918, 39.741409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497612, 35.009533, 39.614178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503293, -0.195747, -0.841653,
		0.420398, -0.795499, 0.436403,
		-0.754958, -0.573468, -0.318078,
		37.271126, 34.837494, 39.518753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184135, 34.704384, 39.429226>,  <37.799595, 35.238918, 39.741409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184135, 34.704384, 39.429226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833813, 34.708241, 39.236198>,  <37.623619, 34.710552, 39.120380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833813, 34.708241, 39.236198>,  <38.184135, 34.704384, 39.429226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833813, 34.708241, 39.236198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451412, -0.337580, -0.825995,
		-0.170866, -0.941248, 0.291303,
		-0.875804, 0.009637, -0.482572,
		37.571072, 34.711132, 39.091427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286064, 34.722839, 38.681194>,  <38.184135, 34.704384, 39.429226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286064, 34.722839, 38.681194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670628, 34.614162, 38.663868>,  <38.901367, 34.548958, 38.653473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670628, 34.614162, 38.663868>,  <38.286064, 34.722839, 38.681194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670628, 34.614162, 38.663868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045529, -0.312406, 0.948857,
		-0.271325, -0.910269, -0.312721,
		0.961411, -0.271686, -0.043319,
		38.959049, 34.532654, 38.650871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346794, 33.952549, 38.835651>,  <38.286064, 34.722839, 38.681194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346794, 33.952549, 38.835651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.697823, 34.129120, 38.910503>,  <38.908440, 34.235062, 38.955414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.697823, 34.129120, 38.910503>,  <38.346794, 33.952549, 38.835651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697823, 34.129120, 38.910503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037027, -0.451538, 0.891483,
		0.478022, -0.775408, -0.412599,
		0.877567, 0.441426, 0.187134,
		38.961094, 34.261547, 38.966644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761372, 33.416073, 39.008186>,  <38.346794, 33.952549, 38.835651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761372, 33.416073, 39.008186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932098, 33.746712, 39.154915>,  <39.034534, 33.945095, 39.242950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932098, 33.746712, 39.154915>,  <38.761372, 33.416073, 39.008186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932098, 33.746712, 39.154915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220299, -0.488441, 0.844330,
		0.877093, -0.279568, -0.390576,
		0.426821, 0.826599, 0.366820,
		39.060146, 33.994690, 39.264961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255962, 33.134720, 39.375904>,  <38.761372, 33.416073, 39.008186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255962, 33.134720, 39.375904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261677, 33.502327, 39.533489>,  <39.265106, 33.722893, 39.628040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261677, 33.502327, 39.533489>,  <39.255962, 33.134720, 39.375904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261677, 33.502327, 39.533489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038487, -0.393201, 0.918647,
		0.999157, -0.028289, 0.029752,
		0.014289, 0.919017, 0.393959,
		39.265965, 33.778030, 39.651676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746006, 33.106716, 39.943687>,  <39.255962, 33.134720, 39.375904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746006, 33.106716, 39.943687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555279, 33.446140, 40.035423>,  <39.440842, 33.649796, 40.090466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555279, 33.446140, 40.035423>,  <39.746006, 33.106716, 39.943687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555279, 33.446140, 40.035423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008733, -0.256323, 0.966552,
		0.878959, 0.462872, 0.114809,
		-0.476818, 0.848557, 0.229340,
		39.412235, 33.700706, 40.104225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033737, 33.396732, 40.522011>,  <39.746006, 33.106716, 39.943687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033737, 33.396732, 40.522011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.678658, 33.579849, 40.541706>,  <39.465611, 33.689720, 40.553524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.678658, 33.579849, 40.541706>,  <40.033737, 33.396732, 40.522011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678658, 33.579849, 40.541706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020062, -0.145297, 0.989185,
		0.459991, 0.877109, 0.138163,
		-0.887697, 0.457788, 0.049239,
		39.412350, 33.717186, 40.556477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124252, 33.714333, 41.070507>,  <40.033737, 33.396732, 40.522011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124252, 33.714333, 41.070507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730209, 33.685608, 41.008022>,  <39.493782, 33.668373, 40.970531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730209, 33.685608, 41.008022>,  <40.124252, 33.714333, 41.070507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730209, 33.685608, 41.008022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125325, -0.322075, 0.938383,
		-0.117700, 0.943987, 0.308279,
		-0.985109, -0.071813, -0.156213,
		39.434677, 33.664062, 40.961159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739010, 34.083851, 41.555656>,  <40.124252, 33.714333, 41.070507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739010, 34.083851, 41.555656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.458557, 33.825588, 41.434628>,  <39.290287, 33.670631, 41.362011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.458557, 33.825588, 41.434628>,  <39.739010, 34.083851, 41.555656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458557, 33.825588, 41.434628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300273, -0.117519, 0.946586,
		-0.646726, 0.754532, -0.111478,
		-0.701129, -0.645656, -0.302568,
		39.248219, 33.631893, 41.343857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192360, 34.255093, 41.871704>,  <39.739010, 34.083851, 41.555656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192360, 34.255093, 41.871704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116795, 33.876156, 41.768284>,  <39.071457, 33.648792, 41.706230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116795, 33.876156, 41.768284>,  <39.192360, 34.255093, 41.871704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116795, 33.876156, 41.768284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228549, -0.213646, 0.949800,
		-0.955028, 0.238518, -0.176156,
		-0.188909, -0.947346, -0.258551,
		39.060123, 33.591953, 41.690720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607277, 34.087841, 42.230095>,  <39.192360, 34.255093, 41.871704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607277, 34.087841, 42.230095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759914, 33.733536, 42.124409>,  <38.851498, 33.520954, 42.060997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759914, 33.733536, 42.124409>,  <38.607277, 34.087841, 42.230095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759914, 33.733536, 42.124409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030971, -0.297941, 0.954081,
		-0.923811, -0.355889, -0.141126,
		0.381595, -0.885762, -0.264219,
		38.874393, 33.467808, 42.045143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184105, 33.545551, 42.496326>,  <38.607277, 34.087841, 42.230095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184105, 33.545551, 42.496326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501816, 33.318214, 42.410431>,  <38.692440, 33.181812, 42.358894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501816, 33.318214, 42.410431>,  <38.184105, 33.545551, 42.496326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501816, 33.318214, 42.410431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022360, -0.380555, 0.924488,
		-0.607148, -0.729495, -0.314973,
		0.794274, -0.568344, -0.214742,
		38.740097, 33.147713, 42.346008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983818, 32.854397, 42.510937>,  <38.184105, 33.545551, 42.496326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983818, 32.854397, 42.510937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.375542, 32.899689, 42.578030>,  <38.610577, 32.926865, 42.618286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.375542, 32.899689, 42.578030>,  <37.983818, 32.854397, 42.510937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375542, 32.899689, 42.578030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133862, -0.259155, 0.956514,
		0.151776, -0.959175, -0.238636,
		0.979308, 0.113231, 0.167731,
		38.669334, 32.933659, 42.628349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105629, 32.258362, 42.835140>,  <37.983818, 32.854397, 42.510937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105629, 32.258362, 42.835140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409428, 32.501003, 42.929115>,  <38.591705, 32.646587, 42.985500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409428, 32.501003, 42.929115>,  <38.105629, 32.258362, 42.835140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409428, 32.501003, 42.929115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003883, -0.365382, 0.930849,
		0.650501, -0.706063, -0.279861,
		0.759495, 0.606605, 0.234940,
		38.637276, 32.682983, 42.999596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502136, 31.923960, 43.276352>,  <38.105629, 32.258362, 42.835140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502136, 31.923960, 43.276352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635204, 32.292683, 43.355953>,  <38.715046, 32.513916, 43.403713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635204, 32.292683, 43.355953>,  <38.502136, 31.923960, 43.276352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635204, 32.292683, 43.355953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008430, -0.208112, 0.978069,
		0.943005, -0.327054, -0.061462,
		0.332672, 0.921806, 0.199008,
		38.735004, 32.569225, 43.415657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050228, 31.881371, 43.753063>,  <38.502136, 31.923960, 43.276352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050228, 31.881371, 43.753063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.895771, 32.249146, 43.782822>,  <38.803097, 32.469810, 43.800678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.895771, 32.249146, 43.782822>,  <39.050228, 31.881371, 43.753063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895771, 32.249146, 43.782822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149330, -0.017285, 0.988636,
		0.910273, 0.392862, -0.130625,
		-0.386140, 0.919435, 0.074400,
		38.779930, 32.524975, 43.805141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550991, 32.319134, 44.142384>,  <39.050228, 31.881371, 43.753063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550991, 32.319134, 44.142384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207512, 32.522194, 44.170479>,  <39.001427, 32.644032, 44.187336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207512, 32.522194, 44.170479>,  <39.550991, 32.319134, 44.142384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207512, 32.522194, 44.170479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125268, 0.075022, 0.989282,
		0.496943, 0.858289, -0.128014,
		-0.858694, 0.507653, 0.070235,
		38.949905, 32.674488, 44.191547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619602, 32.998188, 44.614998>,  <39.550991, 32.319134, 44.142384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619602, 32.998188, 44.614998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231750, 32.901264, 44.601730>,  <38.999039, 32.843109, 44.593769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231750, 32.901264, 44.601730>,  <39.619602, 32.998188, 44.614998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231750, 32.901264, 44.601730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061836, 0.111666, 0.991820,
		-0.236619, 0.963752, -0.123259,
		-0.969633, -0.242306, -0.033173,
		38.940861, 32.828571, 44.591778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257004, 33.429028, 45.036446>,  <39.619602, 32.998188, 44.614998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257004, 33.429028, 45.036446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972416, 33.149742, 45.004677>,  <38.801662, 32.982170, 44.985615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972416, 33.149742, 45.004677>,  <39.257004, 33.429028, 45.036446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972416, 33.149742, 45.004677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117562, 0.006838, 0.993042,
		-0.692810, 0.715860, -0.086948,
		-0.711473, -0.698211, -0.079421,
		38.758972, 32.940277, 44.980850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.579884, 33.646515, 45.539360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569096, 33.254208, 45.462032>,  <38.562622, 33.018826, 45.415634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569096, 33.254208, 45.462032>,  <38.579884, 33.646515, 45.539360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569096, 33.254208, 45.462032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281451, -0.178116, 0.942900,
		-0.959197, 0.079841, -0.271233,
		-0.026971, -0.980765, -0.193319,
		38.561005, 32.959976, 45.404037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966297, 33.444340, 45.784664>,  <38.579884, 33.646515, 45.539360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966297, 33.444340, 45.784664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.180450, 33.106514, 45.780972>,  <38.308941, 32.903820, 45.778755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.180450, 33.106514, 45.780972>,  <37.966297, 33.444340, 45.784664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180450, 33.106514, 45.780972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246573, -0.166737, 0.954673,
		-0.807817, -0.508839, -0.297514,
		0.535381, -0.844560, -0.009227,
		38.341064, 32.853146, 45.778202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633720, 33.108345, 46.235680>,  <37.966297, 33.444340, 45.784664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633720, 33.108345, 46.235680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970798, 32.894318, 46.211792>,  <38.173046, 32.765900, 46.197460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970798, 32.894318, 46.211792>,  <37.633720, 33.108345, 46.235680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970798, 32.894318, 46.211792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046033, -0.182121, 0.982198,
		-0.536421, -0.824943, -0.178103,
		0.842694, -0.535070, -0.059719,
		38.223606, 32.733795, 46.193874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518818, 32.620060, 46.785236>,  <37.633720, 33.108345, 46.235680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518818, 32.620060, 46.785236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.911221, 32.569572, 46.726326>,  <38.146664, 32.539280, 46.690979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.911221, 32.569572, 46.726326>,  <37.518818, 32.620060, 46.785236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911221, 32.569572, 46.726326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120403, -0.199024, 0.972570,
		-0.152066, -0.971833, -0.180048,
		0.981009, -0.126217, -0.147276,
		38.205524, 32.531704, 46.682144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692612, 32.123932, 47.276230>,  <37.518818, 32.620060, 46.785236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692612, 32.123932, 47.276230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.031094, 32.311596, 47.175175>,  <38.234180, 32.424194, 47.114540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.031094, 32.311596, 47.175175>,  <37.692612, 32.123932, 47.276230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031094, 32.311596, 47.175175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275653, 0.020337, 0.961042,
		0.456024, -0.882877, -0.112117,
		0.846202, 0.469163, -0.252642,
		38.284954, 32.452343, 47.099380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230843, 31.696352, 47.601097>,  <37.692612, 32.123932, 47.276230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230843, 31.696352, 47.601097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.357754, 32.070736, 47.540024>,  <38.433899, 32.295368, 47.503380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.357754, 32.070736, 47.540024>,  <38.230843, 31.696352, 47.601097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357754, 32.070736, 47.540024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425575, 0.003356, 0.904917,
		0.847479, -0.352089, -0.397257,
		0.317278, 0.935961, -0.152684,
		38.452938, 32.351524, 47.494217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967915, 31.662243, 47.784866>,  <38.230843, 31.696352, 47.601097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967915, 31.662243, 47.784866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843613, 32.039444, 47.832493>,  <38.769032, 32.265766, 47.861069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843613, 32.039444, 47.832493>,  <38.967915, 31.662243, 47.784866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843613, 32.039444, 47.832493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316305, -0.015533, 0.948530,
		0.896317, 0.332419, -0.293450,
		-0.310751, 0.943004, 0.119069,
		38.750389, 32.322346, 47.868214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530609, 31.945452, 48.054085>,  <38.967915, 31.662243, 47.784866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530609, 31.945452, 48.054085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220711, 32.180084, 48.148476>,  <39.034771, 32.320862, 48.205112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220711, 32.180084, 48.148476>,  <39.530609, 31.945452, 48.054085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220711, 32.180084, 48.148476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209355, -0.114176, 0.971151,
		0.596600, 0.801803, -0.034346,
		-0.774751, 0.586579, 0.235979,
		38.988285, 32.356056, 48.219269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789627, 32.490253, 48.428341>,  <39.530609, 31.945452, 48.054085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789627, 32.490253, 48.428341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.405529, 32.469170, 48.537998>,  <39.175072, 32.456520, 48.603790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.405529, 32.469170, 48.537998>,  <39.789627, 32.490253, 48.428341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405529, 32.469170, 48.537998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278414, -0.252658, 0.926633,
		0.020417, 0.966119, 0.257290,
		-0.960244, -0.052714, 0.274139,
		39.117455, 32.453354, 48.620239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781185, 32.648407, 49.131603>,  <39.789627, 32.490253, 48.428341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781185, 32.648407, 49.131603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439636, 32.443283, 49.095970>,  <39.234707, 32.320210, 49.074589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439636, 32.443283, 49.095970>,  <39.781185, 32.648407, 49.131603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439636, 32.443283, 49.095970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078710, -0.296406, 0.951813,
		-0.514500, 0.805713, 0.293455,
		-0.853870, -0.512806, -0.089083,
		39.183475, 32.289440, 49.069244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439758, 32.753044, 49.729252>,  <39.781185, 32.648407, 49.131603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439758, 32.753044, 49.729252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265644, 32.425068, 49.580540>,  <39.161175, 32.228283, 49.491310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265644, 32.425068, 49.580540>,  <39.439758, 32.753044, 49.729252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265644, 32.425068, 49.580540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032960, -0.427196, 0.903558,
		-0.899689, 0.381051, 0.212977,
		-0.435285, -0.819941, -0.371784,
		39.135059, 32.179085, 49.469006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949432, 32.706638, 50.145050>,  <39.439758, 32.753044, 49.729252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949432, 32.706638, 50.145050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981552, 32.349388, 49.968014>,  <39.000824, 32.135040, 49.861794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981552, 32.349388, 49.968014>,  <38.949432, 32.706638, 50.145050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981552, 32.349388, 49.968014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104066, -0.449110, 0.887396,
		-0.991324, -0.025195, -0.129006,
		0.080296, -0.893121, -0.442591,
		39.005642, 32.081451, 49.835236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478096, 32.387470, 50.508503>,  <38.949432, 32.706638, 50.145050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478096, 32.387470, 50.508503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668236, 32.081146, 50.335262>,  <38.782318, 31.897350, 50.231319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668236, 32.081146, 50.335262>,  <38.478096, 32.387470, 50.508503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668236, 32.081146, 50.335262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259169, -0.592313, 0.762887,
		-0.840759, -0.250392, -0.480030,
		0.475349, -0.765812, -0.433099,
		38.810841, 31.851402, 50.205334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154469, 31.837893, 50.765282>,  <38.478096, 32.387470, 50.508503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154469, 31.837893, 50.765282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495510, 31.680477, 50.627766>,  <38.700134, 31.586029, 50.545258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495510, 31.680477, 50.627766>,  <38.154469, 31.837893, 50.765282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495510, 31.680477, 50.627766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052843, -0.589596, 0.805968,
		-0.519873, -0.705342, -0.481898,
		0.852608, -0.393536, -0.343787,
		38.751293, 31.562416, 50.524628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973198, 31.169781, 50.845280>,  <38.154469, 31.837893, 50.765282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973198, 31.169781, 50.845280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.368401, 31.230961, 50.836784>,  <38.605522, 31.267670, 50.831688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.368401, 31.230961, 50.836784>,  <37.973198, 31.169781, 50.845280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368401, 31.230961, 50.836784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099527, -0.525579, 0.844903,
		0.118067, -0.836882, -0.534498,
		0.988006, 0.152952, -0.021238,
		38.664803, 31.276846, 50.830414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297062, 30.561769, 51.144691>,  <37.973198, 31.169781, 50.845280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297062, 30.561769, 51.144691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588654, 30.835236, 51.158474>,  <38.763611, 30.999315, 51.166744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588654, 30.835236, 51.158474>,  <38.297062, 30.561769, 51.144691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588654, 30.835236, 51.158474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347155, -0.412606, 0.842164,
		0.589975, -0.601960, -0.538120,
		0.728981, 0.683666, 0.034454,
		38.807346, 31.040335, 51.168812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025421, 30.204639, 51.314121>,  <38.297062, 30.561769, 51.144691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025421, 30.204639, 51.314121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054947, 30.578756, 51.452560>,  <39.072662, 30.803226, 51.535625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.054947, 30.578756, 51.452560>,  <39.025421, 30.204639, 51.314121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054947, 30.578756, 51.452560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588765, -0.320982, 0.741840,
		0.804927, 0.149008, -0.574360,
		0.073819, 0.935290, 0.346098,
		39.077091, 30.859343, 51.556389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605740, 30.221312, 51.684498>,  <39.025421, 30.204639, 51.314121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605740, 30.221312, 51.684498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454166, 30.571175, 51.805420>,  <39.363224, 30.781092, 51.877972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454166, 30.571175, 51.805420>,  <39.605740, 30.221312, 51.684498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454166, 30.571175, 51.805420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392912, -0.143699, 0.908279,
		0.837873, 0.462952, -0.289212,
		-0.378930, 0.874658, 0.302301,
		39.340488, 30.833572, 51.896111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197651, 30.578386, 51.993206>,  <39.605740, 30.221312, 51.684498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197651, 30.578386, 51.993206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839146, 30.685186, 52.134869>,  <39.624043, 30.749266, 52.219868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839146, 30.685186, 52.134869>,  <40.197651, 30.578386, 51.993206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839146, 30.685186, 52.134869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269015, -0.307605, 0.912694,
		0.352630, 0.913285, 0.203867,
		-0.896261, 0.267000, 0.354159,
		39.570267, 30.765285, 52.241116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303455, 30.909101, 52.638893>,  <40.197651, 30.578386, 51.993206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303455, 30.909101, 52.638893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.922733, 30.797657, 52.690186>,  <39.694302, 30.730791, 52.720963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.922733, 30.797657, 52.690186>,  <40.303455, 30.909101, 52.638893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922733, 30.797657, 52.690186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239483, -0.413925, 0.878245,
		-0.191609, 0.866628, 0.460698,
		-0.951806, -0.278609, 0.128231,
		39.637192, 30.714075, 52.728653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140728, 30.967794, 53.328190>,  <40.303455, 30.909101, 52.638893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140728, 30.967794, 53.328190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802475, 30.773823, 53.238968>,  <39.599525, 30.657440, 53.185436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802475, 30.773823, 53.238968>,  <40.140728, 30.967794, 53.328190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802475, 30.773823, 53.238968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035641, -0.365657, 0.930067,
		-0.532578, 0.794443, 0.291928,
		-0.845630, -0.484928, -0.223055,
		39.548786, 30.628344, 53.172050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656422, 31.017111, 53.884983>,  <40.140728, 30.967794, 53.328190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656422, 31.017111, 53.884983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518101, 30.696091, 53.690525>,  <39.435108, 30.503479, 53.573849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518101, 30.696091, 53.690525>,  <39.656422, 31.017111, 53.884983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518101, 30.696091, 53.690525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110709, -0.479590, 0.870481,
		-0.931755, 0.354831, 0.076991,
		-0.345798, -0.802551, -0.486144,
		39.414360, 30.455326, 53.544682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908527, 30.660648, 54.077412>,  <39.656422, 31.017111, 53.884983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908527, 30.660648, 54.077412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215511, 30.420555, 53.987316>,  <39.399700, 30.276499, 53.933258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215511, 30.420555, 53.987316>,  <38.908527, 30.660648, 54.077412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215511, 30.420555, 53.987316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008123, -0.342204, 0.939591,
		-0.641052, -0.722923, -0.257750,
		0.767455, -0.600233, -0.225243,
		39.445747, 30.240486, 53.919743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168488, 30.654081, 54.334454>,  <38.908527, 30.660648, 54.077412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168488, 30.654081, 54.334454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791603, 30.537422, 54.400394>,  <37.565472, 30.467426, 54.439960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791603, 30.537422, 54.400394>,  <38.168488, 30.654081, 54.334454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791603, 30.537422, 54.400394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289810, 0.462720, -0.837795,
		0.168060, -0.837157, -0.520503,
		-0.942213, -0.291647, 0.164852,
		37.508938, 30.449928, 54.449848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981144, 30.310324, 53.718754>,  <38.168488, 30.654081, 54.334454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981144, 30.310324, 53.718754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.630325, 30.419655, 53.876781>,  <37.419834, 30.485254, 53.971600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.630325, 30.419655, 53.876781>,  <37.981144, 30.310324, 53.718754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630325, 30.419655, 53.876781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304756, 0.319165, -0.897361,
		-0.371367, -0.907428, -0.196625,
		-0.877047, 0.273328, 0.395071,
		37.367210, 30.501654, 53.995304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575966, 30.036573, 53.294930>,  <37.981144, 30.310324, 53.718754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575966, 30.036573, 53.294930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357910, 30.305794, 53.494858>,  <37.227077, 30.467325, 53.614815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.357910, 30.305794, 53.494858>,  <37.575966, 30.036573, 53.294930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357910, 30.305794, 53.494858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442891, 0.275005, -0.853358,
		-0.711809, -0.686566, 0.148173,
		-0.545139, 0.673052, 0.499825,
		37.194370, 30.507710, 53.644806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897514, 29.972416, 53.042641>,  <37.575966, 30.036573, 53.294930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897514, 29.972416, 53.042641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884129, 30.323160, 53.234470>,  <36.876099, 30.533607, 53.349567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884129, 30.323160, 53.234470>,  <36.897514, 29.972416, 53.042641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884129, 30.323160, 53.234470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509121, 0.397962, -0.763166,
		-0.860044, -0.269699, 0.433112,
		-0.033463, 0.876863, 0.479574,
		36.874088, 30.586220, 53.378342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205864, 30.284821, 53.168770>,  <36.897514, 29.972416, 53.042641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205864, 30.284821, 53.168770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479481, 30.574570, 53.134418>,  <36.643650, 30.748419, 53.113808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479481, 30.574570, 53.134418>,  <36.205864, 30.284821, 53.168770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479481, 30.574570, 53.134418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568743, 0.455909, -0.684601,
		-0.456753, 0.517137, 0.723841,
		0.684038, 0.724373, -0.085880,
		36.684692, 30.791882, 53.108654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848095, 30.755665, 52.958977>,  <36.205864, 30.284821, 53.168770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848095, 30.755665, 52.958977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206421, 30.920006, 52.891190>,  <36.421417, 31.018610, 52.850517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206421, 30.920006, 52.891190>,  <35.848095, 30.755665, 52.958977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206421, 30.920006, 52.891190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368123, 0.472306, -0.800882,
		-0.249003, 0.779826, 0.574342,
		0.895814, 0.410850, -0.169466,
		36.475166, 31.043261, 52.840351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608227, 31.369104, 52.789429>,  <35.848095, 30.755665, 52.958977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608227, 31.369104, 52.789429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.982826, 31.347708, 52.650806>,  <36.207588, 31.334869, 52.567635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.982826, 31.347708, 52.650806>,  <35.608227, 31.369104, 52.789429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982826, 31.347708, 52.650806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263783, 0.543711, -0.796741,
		0.231045, 0.837566, 0.495077,
		0.936503, -0.053490, -0.346557,
		36.263779, 31.331661, 52.546841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849171, 32.041351, 52.724178>,  <35.608227, 31.369104, 52.789429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849171, 32.041351, 52.724178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.080551, 31.821737, 52.482864>,  <36.219379, 31.689968, 52.338074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.080551, 31.821737, 52.482864>,  <35.849171, 32.041351, 52.724178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080551, 31.821737, 52.482864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187912, 0.629997, -0.753520,
		0.793780, 0.549238, 0.261250,
		0.578448, -0.549037, -0.603288,
		36.254086, 31.657026, 52.301880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216343, 32.482040, 52.280415>,  <35.849171, 32.041351, 52.724178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216343, 32.482040, 52.280415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236877, 32.123447, 52.104374>,  <36.249199, 31.908293, 51.998749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236877, 32.123447, 52.104374>,  <36.216343, 32.482040, 52.280415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236877, 32.123447, 52.104374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076635, 0.435850, -0.896751,
		0.995737, 0.079765, -0.046326,
		0.051338, -0.896478, -0.440104,
		36.252277, 31.854504, 51.972343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461521, 32.550518, 51.678268>,  <36.216343, 32.482040, 52.280415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461521, 32.550518, 51.678268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.315216, 32.188412, 51.591824>,  <36.227432, 31.971148, 51.539959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.315216, 32.188412, 51.591824>,  <36.461521, 32.550518, 51.678268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315216, 32.188412, 51.591824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079718, 0.261817, -0.961819,
		0.927288, -0.334570, -0.167929,
		-0.365763, -0.905270, -0.216109,
		36.205486, 31.916830, 51.526989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902035, 32.314411, 51.354244>,  <36.461521, 32.550518, 51.678268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902035, 32.314411, 51.354244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.564022, 32.132591, 51.241592>,  <36.361214, 32.023499, 51.174004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.564022, 32.132591, 51.241592>,  <36.902035, 32.314411, 51.354244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564022, 32.132591, 51.241592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089330, 0.399274, -0.912469,
		0.527210, -0.796218, -0.296793,
		-0.845026, -0.454551, -0.281627,
		36.310513, 31.996225, 51.157104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103004, 32.031563, 50.682915>,  <36.902035, 32.314411, 51.354244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103004, 32.031563, 50.682915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.705528, 31.986719, 50.682156>,  <36.467041, 31.959814, 50.681698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.705528, 31.986719, 50.682156>,  <37.103004, 32.031563, 50.682915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705528, 31.986719, 50.682156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028012, 0.264636, -0.963942,
		0.108565, -0.957810, -0.266107,
		-0.993695, -0.112104, -0.001900,
		36.407421, 31.953087, 50.681587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925743, 31.599405, 50.113659>,  <37.103004, 32.031563, 50.682915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925743, 31.599405, 50.113659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579617, 31.783302, 50.193527>,  <36.371941, 31.893641, 50.241447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579617, 31.783302, 50.193527>,  <36.925743, 31.599405, 50.113659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579617, 31.783302, 50.193527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121930, 0.193323, -0.973529,
		-0.486176, -0.866753, -0.111228,
		-0.865313, 0.459744, 0.199672,
		36.320023, 31.921225, 50.253429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476955, 31.352577, 49.621567>,  <36.925743, 31.599405, 50.113659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476955, 31.352577, 49.621567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.368824, 31.717545, 49.744476>,  <36.303944, 31.936525, 49.818222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.368824, 31.717545, 49.744476>,  <36.476955, 31.352577, 49.621567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368824, 31.717545, 49.744476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032066, 0.310444, -0.950051,
		-0.962233, -0.266681, -0.054665,
		-0.270331, 0.912417, 0.307271,
		36.287724, 31.991270, 49.836658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107250, 31.648945, 49.046555>,  <36.476955, 31.352577, 49.621567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107250, 31.648945, 49.046555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168640, 31.954842, 49.296871>,  <36.205475, 32.138378, 49.447060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168640, 31.954842, 49.296871>,  <36.107250, 31.648945, 49.046555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168640, 31.954842, 49.296871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010202, 0.632032, -0.774875,
		-0.988100, 0.125311, 0.089201,
		0.153478, 0.764743, 0.625789,
		36.214684, 32.184265, 49.484608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536613, 32.177975, 48.913776>,  <36.107250, 31.648945, 49.046555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536613, 32.177975, 48.913776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865498, 32.349949, 49.062973>,  <36.062828, 32.453133, 49.152493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865498, 32.349949, 49.062973>,  <35.536613, 32.177975, 48.913776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865498, 32.349949, 49.062973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138925, 0.787087, -0.600994,
		-0.551967, 0.442326, 0.706881,
		0.822212, 0.429933, 0.372996,
		36.112160, 32.478928, 49.174873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404755, 32.963524, 48.785999>,  <35.536613, 32.177975, 48.913776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404755, 32.963524, 48.785999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795551, 32.980434, 48.869617>,  <36.030029, 32.990582, 48.919788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795551, 32.980434, 48.869617>,  <35.404755, 32.963524, 48.785999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795551, 32.980434, 48.869617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095836, 0.788619, -0.607368,
		-0.190537, 0.613428, 0.766422,
		0.976991, 0.042275, 0.209049,
		36.088650, 32.993118, 48.932331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599312, 33.620564, 49.077347>,  <35.404755, 32.963524, 48.785999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599312, 33.620564, 49.077347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929783, 33.477684, 48.903061>,  <36.128063, 33.391956, 48.798489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929783, 33.477684, 48.903061>,  <35.599312, 33.620564, 49.077347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929783, 33.477684, 48.903061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004335, 0.769294, -0.638881,
		0.563396, 0.529717, 0.634023,
		0.826175, -0.357194, -0.435714,
		36.177635, 33.370525, 48.772346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989952, 34.227962, 48.818047>,  <35.599312, 33.620564, 49.077347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989952, 34.227962, 48.818047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134808, 33.914341, 48.616405>,  <36.221722, 33.726170, 48.495422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134808, 33.914341, 48.616405>,  <35.989952, 34.227962, 48.818047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134808, 33.914341, 48.616405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023426, 0.548296, -0.835956,
		0.931830, 0.290923, 0.216926,
		0.362139, -0.784050, -0.504103,
		36.243450, 33.679127, 48.465176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565094, 34.499428, 48.385757>,  <35.989952, 34.227962, 48.818047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565094, 34.499428, 48.385757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450451, 34.159954, 48.207954>,  <36.381664, 33.956268, 48.101273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450451, 34.159954, 48.207954>,  <36.565094, 34.499428, 48.385757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450451, 34.159954, 48.207954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041938, 0.474644, -0.879178,
		0.957130, -0.233335, -0.171627,
		-0.286605, -0.848686, -0.444511,
		36.364468, 33.905350, 48.074600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959572, 34.393898, 47.792580>,  <36.565094, 34.499428, 48.385757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959572, 34.393898, 47.792580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638874, 34.172264, 47.702965>,  <36.446457, 34.039284, 47.649197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638874, 34.172264, 47.702965>,  <36.959572, 34.393898, 47.792580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638874, 34.172264, 47.702965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042680, 0.320824, -0.946177,
		0.596144, -0.768152, -0.233570,
		-0.801742, -0.554088, -0.224042,
		36.398350, 34.006039, 47.635754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.822880, 41.780823, 34.087425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466972, 41.611420, 34.019371>,  <40.253426, 41.509777, 33.978539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466972, 41.611420, 34.019371>,  <40.822880, 41.780823, 34.087425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466972, 41.611420, 34.019371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358052, -0.878882, 0.315221,
		-0.283026, 0.219558, 0.933644,
		-0.889772, -0.423509, -0.170133,
		40.200039, 41.484367, 33.968330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659340, 41.425186, 34.708710>,  <40.822880, 41.780823, 34.087425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659340, 41.425186, 34.708710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.464199, 41.255825, 34.403362>,  <40.347115, 41.154209, 34.220154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.464199, 41.255825, 34.403362>,  <40.659340, 41.425186, 34.708710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464199, 41.255825, 34.403362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158782, -0.902946, 0.399346,
		-0.858363, 0.073613, 0.507734,
		-0.487853, -0.423402, -0.763367,
		40.317844, 41.128803, 34.174351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400600, 40.864700, 35.080299>,  <40.659340, 41.425186, 34.708710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400600, 40.864700, 35.080299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357708, 40.768398, 34.694443>,  <40.331974, 40.710617, 34.462929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357708, 40.768398, 34.694443>,  <40.400600, 40.864700, 35.080299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357708, 40.768398, 34.694443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183282, -0.958397, 0.218823,
		-0.977195, -0.153337, 0.146896,
		-0.107231, -0.240756, -0.964644,
		40.325539, 40.696171, 34.405048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891678, 40.334339, 35.148857>,  <40.400600, 40.864700, 35.080299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891678, 40.334339, 35.148857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.100155, 40.320942, 34.807743>,  <40.225239, 40.312904, 34.603073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.100155, 40.320942, 34.807743>,  <39.891678, 40.334339, 35.148857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100155, 40.320942, 34.807743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320932, -0.918196, 0.232205,
		-0.790801, -0.394708, -0.467803,
		0.521188, -0.033496, -0.852784,
		40.256512, 40.310894, 34.551907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742023, 39.664692, 34.822113>,  <39.891678, 40.334339, 35.148857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742023, 39.664692, 34.822113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.099258, 39.776840, 34.681377>,  <40.313599, 39.844131, 34.596935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.099258, 39.776840, 34.681377>,  <39.742023, 39.664692, 34.822113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099258, 39.776840, 34.681377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380794, -0.887559, 0.259299,
		-0.239578, -0.365554, -0.899429,
		0.893084, 0.280375, -0.351841,
		40.367184, 39.860954, 34.575825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008347, 39.075714, 34.511555>,  <39.742023, 39.664692, 34.822113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008347, 39.075714, 34.511555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.332691, 39.298363, 34.583874>,  <40.527298, 39.431950, 34.627266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.332691, 39.298363, 34.583874>,  <40.008347, 39.075714, 34.511555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332691, 39.298363, 34.583874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493879, -0.816545, 0.298894,
		0.313996, -0.153070, -0.937004,
		0.810858, 0.556618, 0.180794,
		40.575947, 39.465347, 34.638111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514210, 38.838612, 34.049210>,  <40.008347, 39.075714, 34.511555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514210, 38.838612, 34.049210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692982, 39.012295, 34.362057>,  <40.800247, 39.116505, 34.549767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692982, 39.012295, 34.362057>,  <40.514210, 38.838612, 34.049210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692982, 39.012295, 34.362057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460073, -0.861380, 0.215310,
		0.767192, 0.263603, -0.584748,
		0.446933, 0.434210, 0.782120,
		40.827061, 39.142559, 34.596691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184776, 38.827003, 33.926121>,  <40.514210, 38.838612, 34.049210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184776, 38.827003, 33.926121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.164619, 38.873180, 34.322933>,  <41.152523, 38.900887, 34.561020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.164619, 38.873180, 34.322933>,  <41.184776, 38.827003, 33.926121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164619, 38.873180, 34.322933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599295, -0.791099, 0.122504,
		0.798940, 0.600696, -0.029315,
		-0.050396, 0.115442, 0.992035,
		41.149502, 38.907814, 34.620544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845131, 38.671005, 34.210735>,  <41.184776, 38.827003, 33.926121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845131, 38.671005, 34.210735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.611187, 38.665993, 34.535149>,  <41.470821, 38.662987, 34.729797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.611187, 38.665993, 34.535149>,  <41.845131, 38.671005, 34.210735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611187, 38.665993, 34.535149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395820, -0.877157, 0.271887,
		0.707999, 0.480040, 0.517976,
		-0.584863, -0.012530, 0.811036,
		41.435730, 38.662235, 34.778458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268120, 38.607594, 34.833481>,  <41.845131, 38.671005, 34.210735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268120, 38.607594, 34.833481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912670, 38.470669, 34.955578>,  <41.699402, 38.388515, 35.028835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912670, 38.470669, 34.955578>,  <42.268120, 38.607594, 34.833481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912670, 38.470669, 34.955578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433054, -0.845410, 0.312645,
		0.151034, 0.410010, 0.899489,
		-0.888624, -0.342307, 0.305242,
		41.646084, 38.367977, 35.047150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396973, 38.375172, 35.506783>,  <42.268120, 38.607594, 34.833481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396973, 38.375172, 35.506783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.049145, 38.204662, 35.407078>,  <41.840446, 38.102356, 35.347256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.049145, 38.204662, 35.407078>,  <42.396973, 38.375172, 35.506783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049145, 38.204662, 35.407078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324257, -0.873626, 0.362815,
		-0.372422, 0.234669, 0.897905,
		-0.869574, -0.426272, -0.249265,
		41.788273, 38.076782, 35.332298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163689, 38.033871, 36.053066>,  <42.396973, 38.375172, 35.506783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163689, 38.033871, 36.053066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.946781, 37.856102, 35.767849>,  <41.816635, 37.749443, 35.596718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.946781, 37.856102, 35.767849>,  <42.163689, 38.033871, 36.053066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946781, 37.856102, 35.767849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234408, -0.894984, 0.379548,
		-0.806841, 0.038676, 0.589501,
		-0.542274, -0.444418, -0.713044,
		41.784100, 37.722778, 35.553936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784168, 37.506660, 36.371487>,  <42.163689, 38.033871, 36.053066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784168, 37.506660, 36.371487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806194, 37.405540, 35.985107>,  <41.819408, 37.344868, 35.753281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806194, 37.405540, 35.985107>,  <41.784168, 37.506660, 36.371487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806194, 37.405540, 35.985107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369474, -0.893589, 0.254927,
		-0.927608, -0.370931, 0.044199,
		0.055064, -0.252803, -0.965950,
		41.822712, 37.329700, 35.695324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872845, 36.761375, 36.502556>,  <41.784168, 37.506660, 36.371487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872845, 36.761375, 36.502556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966839, 36.832836, 36.120380>,  <42.023235, 36.875713, 35.891075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966839, 36.832836, 36.120380>,  <41.872845, 36.761375, 36.502556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966839, 36.832836, 36.120380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485222, -0.873286, -0.043948,
		-0.842223, -0.453274, -0.291895,
		0.234987, 0.178647, -0.955440,
		42.037334, 36.886429, 35.833748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675159, 36.128838, 36.140652>,  <41.872845, 36.761375, 36.502556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675159, 36.128838, 36.140652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.925304, 36.341400, 35.912083>,  <42.075390, 36.468937, 35.774940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.925304, 36.341400, 35.912083>,  <41.675159, 36.128838, 36.140652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925304, 36.341400, 35.912083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552536, -0.818642, -0.156617,
		-0.551021, -0.217792, -0.805569,
		0.625363, 0.531405, -0.571427,
		42.112915, 36.500820, 35.740654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817097, 35.803978, 35.452175>,  <41.675159, 36.128838, 36.140652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817097, 35.803978, 35.452175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.134804, 36.023239, 35.556999>,  <42.325428, 36.154797, 35.619896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.134804, 36.023239, 35.556999>,  <41.817097, 35.803978, 35.452175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134804, 36.023239, 35.556999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606291, -0.743075, -0.283287,
		0.039448, 0.383891, -0.922536,
		0.794264, 0.548150, 0.262062,
		42.373081, 36.187683, 35.635616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402557, 35.517418, 35.003662>,  <41.817097, 35.803978, 35.452175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402557, 35.517418, 35.003662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.565601, 35.762192, 35.274773>,  <42.663429, 35.909058, 35.437439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.565601, 35.762192, 35.274773>,  <42.402557, 35.517418, 35.003662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565601, 35.762192, 35.274773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857817, -0.511060, -0.054474,
		0.313050, 0.603614, -0.733246,
		0.407614, 0.611938, 0.677777,
		42.687885, 35.945774, 35.478107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116871, 35.525608, 34.721241>,  <42.402557, 35.517418, 35.003662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116871, 35.525608, 34.721241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.123055, 35.644253, 35.103191>,  <43.126766, 35.715439, 35.332363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.123055, 35.644253, 35.103191>,  <43.116871, 35.525608, 34.721241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123055, 35.644253, 35.103191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779677, -0.601463, 0.174204,
		0.625991, 0.741800, -0.240558,
		0.015462, 0.296607, 0.954874,
		43.127693, 35.733234, 35.389652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895679, 35.686543, 34.941643>,  <43.116871, 35.525608, 34.721241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895679, 35.686543, 34.941643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683529, 35.602623, 35.270199>,  <43.556236, 35.552269, 35.467331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683529, 35.602623, 35.270199>,  <43.895679, 35.686543, 34.941643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683529, 35.602623, 35.270199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682608, -0.680257, 0.267013,
		0.502735, 0.702305, 0.504008,
		-0.530380, -0.209803, 0.821389,
		43.524414, 35.539680, 35.516617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341820, 35.604599, 35.583508>,  <43.895679, 35.686543, 34.941643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341820, 35.604599, 35.583508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.001118, 35.427540, 35.695625>,  <43.796696, 35.321304, 35.762897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.001118, 35.427540, 35.695625>,  <44.341820, 35.604599, 35.583508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001118, 35.427540, 35.695625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523766, -0.732903, 0.434192,
		0.013234, 0.516637, 0.856103,
		-0.851760, -0.442651, 0.280296,
		43.745590, 35.294746, 35.779713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085255, 35.768536, 35.301060>,  <44.341820, 35.604599, 35.583508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.085255, 35.768536, 35.301060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372841, 35.629330, 35.060402>,  <45.545391, 35.545807, 34.916008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372841, 35.629330, 35.060402>,  <45.085255, 35.768536, 35.301060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372841, 35.629330, 35.060402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310795, -0.935228, 0.169575,
		-0.621692, 0.065071, -0.780554,
		0.718961, -0.348015, -0.601648,
		45.588528, 35.524925, 34.879906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726341, 36.028896, 35.624783>,  <45.085255, 35.768536, 35.301060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726341, 36.028896, 35.624783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094849, 36.157925, 35.537868>,  <46.315952, 36.235340, 35.485722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094849, 36.157925, 35.537868>,  <45.726341, 36.028896, 35.624783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094849, 36.157925, 35.537868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335943, 0.941505, -0.026655,
		0.195975, 0.097551, 0.975745,
		0.921269, 0.322571, -0.217283,
		46.371231, 36.254696, 35.472683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933327, 36.578636, 36.086094>,  <45.726341, 36.028896, 35.624783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933327, 36.578636, 36.086094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.134949, 36.651417, 35.748379>,  <46.255924, 36.695084, 35.545750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.134949, 36.651417, 35.748379>,  <45.933327, 36.578636, 36.086094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134949, 36.651417, 35.748379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283461, 0.958259, 0.037279,
		0.815829, 0.220532, 0.534593,
		0.504057, 0.181949, -0.844287,
		46.286167, 36.706001, 35.495094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225441, 37.264046, 36.194260>,  <45.933327, 36.578636, 36.086094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225441, 37.264046, 36.194260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.278034, 37.203907, 35.802319>,  <46.309589, 37.167824, 35.567154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.278034, 37.203907, 35.802319>,  <46.225441, 37.264046, 36.194260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278034, 37.203907, 35.802319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079712, 0.983628, -0.161620,
		0.988108, 0.099357, 0.117350,
		0.131487, -0.150344, -0.979851,
		46.317482, 37.158802, 35.508362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.560410, 37.770184, 35.956043>,  <46.225441, 37.264046, 36.194260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.560410, 37.770184, 35.956043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.412418, 37.639137, 35.608299>,  <46.323624, 37.560509, 35.399654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.412418, 37.639137, 35.608299>,  <46.560410, 37.770184, 35.956043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412418, 37.639137, 35.608299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205125, 0.941473, -0.267493,
		0.906113, 0.079361, -0.415525,
		-0.369977, -0.327613, -0.869359,
		46.301426, 37.540852, 35.347492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721676, 38.312431, 35.616779>,  <46.560410, 37.770184, 35.956043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721676, 38.312431, 35.616779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462940, 38.099602, 35.398239>,  <46.307701, 37.971905, 35.267113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462940, 38.099602, 35.398239>,  <46.721676, 38.312431, 35.616779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462940, 38.099602, 35.398239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243200, 0.822917, -0.513479,
		0.722812, -0.199264, -0.661693,
		-0.646836, -0.532072, -0.546354,
		46.268890, 37.939980, 35.234333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.822186, 38.572418, 34.945904>,  <46.721676, 38.312431, 35.616779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.822186, 38.572418, 34.945904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.459671, 38.404175, 34.962566>,  <46.242161, 38.303230, 34.972565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.459671, 38.404175, 34.962566>,  <46.822186, 38.572418, 34.945904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459671, 38.404175, 34.962566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412580, 0.858945, -0.303302,
		0.091793, -0.292064, -0.951984,
		-0.906285, -0.420610, 0.041655,
		46.187786, 38.277992, 34.975063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.472630, 38.855457, 34.375153>,  <46.822186, 38.572418, 34.945904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.472630, 38.855457, 34.375153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.169159, 38.718575, 34.596893>,  <45.987076, 38.636444, 34.729939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.169159, 38.718575, 34.596893>,  <46.472630, 38.855457, 34.375153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.169159, 38.718575, 34.596893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572923, 0.755531, -0.317698,
		-0.310112, -0.558631, -0.769261,
		-0.758677, -0.342205, 0.554352,
		45.941555, 38.615913, 34.763199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847538, 38.878872, 33.915592>,  <46.472630, 38.855457, 34.375153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847538, 38.878872, 33.915592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.728691, 38.862648, 34.297184>,  <45.657383, 38.852913, 34.526138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.728691, 38.862648, 34.297184>,  <45.847538, 38.878872, 33.915592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728691, 38.862648, 34.297184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609065, 0.777499, -0.156636,
		-0.735365, -0.627575, -0.255712,
		-0.297116, -0.040561, 0.953980,
		45.639557, 38.850479, 34.583378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149265, 39.050243, 33.846844>,  <45.847538, 38.878872, 33.915592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149265, 39.050243, 33.846844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.219650, 39.084194, 34.239136>,  <45.261883, 39.104565, 34.474510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.219650, 39.084194, 34.239136>,  <45.149265, 39.050243, 33.846844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219650, 39.084194, 34.239136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686286, 0.724820, 0.060402,
		-0.705725, -0.683690, 0.185796,
		0.175965, 0.084882, 0.980730,
		45.272438, 39.109657, 34.533356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582096, 38.976063, 34.157116>,  <45.149265, 39.050243, 33.846844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582096, 38.976063, 34.157116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.795929, 39.192406, 34.416870>,  <44.924229, 39.322212, 34.572723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.795929, 39.192406, 34.416870>,  <44.582096, 38.976063, 34.157116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795929, 39.192406, 34.416870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711713, 0.702470, 0.000826,
		-0.455725, -0.462615, 0.760462,
		0.534583, 0.540855, 0.649382,
		44.956303, 39.354664, 34.611687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129898, 39.076672, 34.715618>,  <44.582096, 38.976063, 34.157116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129898, 39.076672, 34.715618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.417820, 39.353558, 34.694748>,  <44.590572, 39.519688, 34.682228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.417820, 39.353558, 34.694748>,  <44.129898, 39.076672, 34.715618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417820, 39.353558, 34.694748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691496, 0.721596, 0.033663,
		0.060949, 0.011845, 0.998071,
		0.719805, 0.692213, -0.052172,
		44.633762, 39.561222, 34.679096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106689, 39.531570, 35.319126>,  <44.129898, 39.076672, 34.715618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106689, 39.531570, 35.319126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299103, 39.740440, 35.037434>,  <44.414551, 39.865761, 34.868420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299103, 39.740440, 35.037434>,  <44.106689, 39.531570, 35.319126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299103, 39.740440, 35.037434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651087, 0.750709, 0.111900,
		0.587104, 0.404688, 0.701097,
		0.481035, 0.522172, -0.704232,
		44.443413, 39.897091, 34.826164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070881, 40.139023, 35.525993>,  <44.106689, 39.531570, 35.319126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070881, 40.139023, 35.525993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179764, 40.233826, 35.152958>,  <44.245094, 40.290707, 34.929134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179764, 40.233826, 35.152958>,  <44.070881, 40.139023, 35.525993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179764, 40.233826, 35.152958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386424, 0.914530, 0.119629,
		0.881238, 0.327813, 0.340527,
		0.272206, 0.237010, -0.932594,
		44.261425, 40.304928, 34.873180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365459, 40.824421, 35.533142>,  <44.070881, 40.139023, 35.525993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365459, 40.824421, 35.533142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.270058, 40.800064, 35.145451>,  <44.212814, 40.785450, 34.912834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.270058, 40.800064, 35.145451>,  <44.365459, 40.824421, 35.533142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270058, 40.800064, 35.145451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411304, 0.910435, 0.044019,
		0.879740, 0.409147, -0.242190,
		-0.238508, -0.060888, -0.969230,
		44.198505, 40.781799, 34.854683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599014, 41.445602, 35.268105>,  <44.365459, 40.824421, 35.533142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599014, 41.445602, 35.268105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.327930, 41.302887, 35.010918>,  <44.165279, 41.217258, 34.856606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.327930, 41.302887, 35.010918>,  <44.599014, 41.445602, 35.268105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327930, 41.302887, 35.010918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518627, 0.851794, 0.073986,
		0.521280, 0.383602, -0.762310,
		-0.677712, -0.356787, -0.642969,
		44.124619, 41.195850, 34.818027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527828, 41.992779, 34.841686>,  <44.599014, 41.445602, 35.268105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527828, 41.992779, 34.841686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197632, 41.774837, 34.782764>,  <43.999516, 41.644073, 34.747410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197632, 41.774837, 34.782764>,  <44.527828, 41.992779, 34.841686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197632, 41.774837, 34.782764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525312, 0.837124, -0.152547,
		0.206431, -0.048543, -0.977256,
		-0.825490, -0.544855, -0.147309,
		43.949986, 41.611382, 34.738571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201660, 42.306034, 34.221771>,  <44.527828, 41.992779, 34.841686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201660, 42.306034, 34.221771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932682, 42.092125, 34.426449>,  <43.771294, 41.963779, 34.549255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932682, 42.092125, 34.426449>,  <44.201660, 42.306034, 34.221771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932682, 42.092125, 34.426449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693112, 0.697501, -0.181902,
		-0.259633, -0.476983, -0.839689,
		-0.672448, -0.534771, 0.511697,
		43.730949, 41.931694, 34.579956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574242, 42.464951, 33.814880>,  <44.201660, 42.306034, 34.221771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574242, 42.464951, 33.814880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.416359, 42.254848, 34.116425>,  <43.321629, 42.128788, 34.297352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.416359, 42.254848, 34.116425>,  <43.574242, 42.464951, 33.814880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416359, 42.254848, 34.116425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699351, 0.703891, 0.124279,
		-0.595917, -0.478163, -0.645169,
		-0.394703, -0.525259, 0.753865,
		43.297947, 42.097271, 34.342583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901035, 42.306763, 33.556190>,  <43.574242, 42.464951, 33.814880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901035, 42.306763, 33.556190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.922318, 42.320377, 33.955391>,  <42.935085, 42.328548, 34.194912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.922318, 42.320377, 33.955391>,  <42.901035, 42.306763, 33.556190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922318, 42.320377, 33.955391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685799, 0.727696, 0.011740,
		-0.725843, -0.685054, 0.062061,
		0.053204, 0.034040, 0.998003,
		42.938278, 42.330589, 34.254791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199993, 42.214050, 33.839085>,  <42.901035, 42.306763, 33.556190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199993, 42.214050, 33.839085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.381229, 42.364281, 34.162479>,  <42.489971, 42.454418, 34.356518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.381229, 42.364281, 34.162479>,  <42.199993, 42.214050, 33.839085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381229, 42.364281, 34.162479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703244, 0.707949, 0.065236,
		-0.547866, -0.598121, 0.584888,
		0.453090, 0.375578, 0.808487,
		42.517155, 42.476955, 34.405025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721584, 42.260521, 34.379562>,  <42.199993, 42.214050, 33.839085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721584, 42.260521, 34.379562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004662, 42.530277, 34.463814>,  <42.174507, 42.692131, 34.514366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004662, 42.530277, 34.463814>,  <41.721584, 42.260521, 34.379562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004662, 42.530277, 34.463814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702886, 0.702237, 0.113204,
		-0.071568, -0.228162, 0.970989,
		0.707694, 0.674393, 0.210629,
		42.216969, 42.732594, 34.527004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.991196, 32.940941, 42.725445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591404, 32.943745, 42.712906>,  <39.351528, 32.945427, 42.705383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591404, 32.943745, 42.712906>,  <39.991196, 32.940941, 42.725445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591404, 32.943745, 42.712906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031814, 0.080528, -0.996245,
		-0.004464, -0.996728, -0.080709,
		-0.999484, 0.007015, -0.031350,
		39.291557, 32.945850, 42.703503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897392, 32.589100, 42.170891>,  <39.991196, 32.940941, 42.725445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897392, 32.589100, 42.170891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539852, 32.761795, 42.219273>,  <39.325329, 32.865410, 42.248302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539852, 32.761795, 42.219273>,  <39.897392, 32.589100, 42.170891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539852, 32.761795, 42.219273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000849, 0.271395, -0.962468,
		-0.448357, -0.860203, -0.242954,
		-0.893854, 0.431736, 0.120952,
		39.271694, 32.891315, 42.255558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470421, 32.414955, 41.603607>,  <39.897392, 32.589100, 42.170891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470421, 32.414955, 41.603607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283123, 32.732338, 41.759132>,  <39.170746, 32.922768, 41.852448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283123, 32.732338, 41.759132>,  <39.470421, 32.414955, 41.603607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283123, 32.732338, 41.759132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140811, 0.367407, -0.919339,
		-0.872308, -0.485224, -0.060309,
		-0.468243, 0.793454, 0.388817,
		39.142651, 32.970375, 41.875778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766426, 32.393147, 41.282078>,  <39.470421, 32.414955, 41.603607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766426, 32.393147, 41.282078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884766, 32.747829, 41.424194>,  <38.955769, 32.960640, 41.509464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884766, 32.747829, 41.424194>,  <38.766426, 32.393147, 41.282078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884766, 32.747829, 41.424194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230064, 0.427134, -0.874430,
		-0.927117, 0.176957, 0.330365,
		0.295846, 0.886703, 0.355291,
		38.973518, 33.013840, 41.530781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325142, 32.847878, 40.983074>,  <38.766426, 32.393147, 41.282078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325142, 32.847878, 40.983074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633778, 33.079491, 41.088432>,  <38.818958, 33.218456, 41.151649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633778, 33.079491, 41.088432>,  <38.325142, 32.847878, 40.983074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633778, 33.079491, 41.088432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081885, 0.501032, -0.861546,
		-0.630833, 0.643188, 0.434003,
		0.771586, 0.579030, 0.263400,
		38.865253, 33.253201, 41.167454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064049, 33.514359, 40.874390>,  <38.325142, 32.847878, 40.983074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064049, 33.514359, 40.874390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461834, 33.551495, 40.894108>,  <38.700504, 33.573776, 40.905941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461834, 33.551495, 40.894108>,  <38.064049, 33.514359, 40.874390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461834, 33.551495, 40.894108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024267, 0.659081, -0.751680,
		-0.102276, 0.746319, 0.657683,
		0.994460, 0.092839, 0.049297,
		38.760174, 33.579346, 40.908897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252174, 34.227554, 40.630550>,  <38.064049, 33.514359, 40.874390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252174, 34.227554, 40.630550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616035, 34.061977, 40.616768>,  <38.834351, 33.962631, 40.608498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616035, 34.061977, 40.616768>,  <38.252174, 34.227554, 40.630550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616035, 34.061977, 40.616768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118680, 0.338493, -0.933455,
		0.398060, 0.845029, 0.357037,
		0.909650, -0.413944, -0.034452,
		38.888931, 33.937794, 40.606434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631065, 34.713287, 40.413761>,  <38.252174, 34.227554, 40.630550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631065, 34.713287, 40.413761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861824, 34.405315, 40.304653>,  <39.000278, 34.220531, 40.239189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861824, 34.405315, 40.304653>,  <38.631065, 34.713287, 40.413761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861824, 34.405315, 40.304653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126987, 0.414418, -0.901184,
		0.806888, 0.485249, 0.336846,
		0.576894, -0.769929, -0.272769,
		39.034893, 34.174335, 40.222824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206070, 34.983662, 40.146702>,  <38.631065, 34.713287, 40.413761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206070, 34.983662, 40.146702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205082, 34.620358, 39.979343>,  <39.204491, 34.402374, 39.878929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205082, 34.620358, 39.979343>,  <39.206070, 34.983662, 40.146702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205082, 34.620358, 39.979343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378486, 0.386425, -0.841085,
		0.925604, -0.160434, 0.342811,
		-0.002468, -0.908260, -0.418399,
		39.204342, 34.347881, 39.853825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593620, 35.117420, 39.482597>,  <39.206070, 34.983662, 40.146702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593620, 35.117420, 39.482597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468224, 34.739567, 39.443829>,  <39.392986, 34.512856, 39.420567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468224, 34.739567, 39.443829>,  <39.593620, 35.117420, 39.482597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468224, 34.739567, 39.443829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168746, 0.045027, -0.984630,
		0.934476, -0.325032, 0.145287,
		-0.313494, -0.944630, -0.096925,
		39.374176, 34.456177, 39.414753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141064, 34.778042, 39.231083>,  <39.593620, 35.117420, 39.482597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141064, 34.778042, 39.231083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785866, 34.622402, 39.133053>,  <39.572746, 34.529018, 39.074234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785866, 34.622402, 39.133053>,  <40.141064, 34.778042, 39.231083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785866, 34.622402, 39.133053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223092, 0.101502, -0.969498,
		0.402105, -0.915587, -0.003329,
		-0.887998, -0.389098, -0.245075,
		39.519466, 34.505672, 39.059532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230389, 34.279095, 38.614647>,  <40.141064, 34.778042, 39.231083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230389, 34.279095, 38.614647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843224, 34.378857, 38.626930>,  <39.610924, 34.438713, 38.634300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843224, 34.378857, 38.626930>,  <40.230389, 34.279095, 38.614647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843224, 34.378857, 38.626930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002242, 0.113619, -0.993522,
		-0.251275, -0.961712, -0.109414,
		-0.967913, 0.249402, 0.030706,
		39.552849, 34.453678, 38.636143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842930, 33.801186, 38.227219>,  <40.230389, 34.279095, 38.614647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842930, 33.801186, 38.227219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636585, 34.143734, 38.236351>,  <39.512779, 34.349262, 38.241833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636585, 34.143734, 38.236351>,  <39.842930, 33.801186, 38.227219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636585, 34.143734, 38.236351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034473, 0.047386, -0.998282,
		-0.855978, -0.514188, -0.053966,
		-0.515862, 0.856368, 0.022836,
		39.481827, 34.400642, 38.243202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289322, 33.216679, 38.087311>,  <39.842930, 33.801186, 38.227219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289322, 33.216679, 38.087311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262100, 32.895237, 37.850807>,  <40.245770, 32.702370, 37.708904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262100, 32.895237, 37.850807>,  <40.289322, 33.216679, 38.087311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262100, 32.895237, 37.850807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485393, -0.491096, 0.723338,
		-0.871644, 0.336216, -0.356646,
		-0.068050, -0.803607, -0.591258,
		40.241684, 32.654156, 37.673431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698223, 32.966255, 38.167130>,  <40.289322, 33.216679, 38.087311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698223, 32.966255, 38.167130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904118, 32.653263, 38.026974>,  <40.027653, 32.465469, 37.942883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904118, 32.653263, 38.026974>,  <39.698223, 32.966255, 38.167130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904118, 32.653263, 38.026974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462448, -0.597535, 0.655052,
		-0.721934, -0.175144, -0.669430,
		0.514736, -0.782481, -0.350386,
		40.058540, 32.418518, 37.921860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215595, 32.481201, 38.148998>,  <39.698223, 32.966255, 38.167130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215595, 32.481201, 38.148998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551430, 32.263924, 38.151062>,  <39.752930, 32.133556, 38.152298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551430, 32.263924, 38.151062>,  <39.215595, 32.481201, 38.148998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551430, 32.263924, 38.151062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461832, -0.708764, 0.533259,
		-0.286011, -0.450100, -0.845936,
		0.839589, -0.543198, 0.005156,
		39.803307, 32.100964, 38.152607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132648, 31.711233, 37.911533>,  <39.215595, 32.481201, 38.148998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132648, 31.711233, 37.911533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429756, 31.720301, 38.179199>,  <39.608021, 31.725740, 38.339798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429756, 31.720301, 38.179199>,  <39.132648, 31.711233, 37.911533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429756, 31.720301, 38.179199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426469, -0.754449, 0.498929,
		0.516163, -0.655967, -0.550711,
		0.742765, 0.022668, 0.669168,
		39.652584, 31.727100, 38.379951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004700, 31.078478, 38.104698>,  <39.132648, 31.711233, 37.911533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004700, 31.078478, 38.104698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277046, 31.244720, 38.345924>,  <39.440456, 31.344467, 38.490662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277046, 31.244720, 38.345924>,  <39.004700, 31.078478, 38.104698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277046, 31.244720, 38.345924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367976, -0.517815, 0.772308,
		0.633254, -0.747755, -0.199631,
		0.680869, 0.415608, 0.603065,
		39.481308, 31.369402, 38.526844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117031, 30.587868, 38.488121>,  <39.004700, 31.078478, 38.104698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117031, 30.587868, 38.488121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263947, 30.895351, 38.697571>,  <39.352097, 31.079842, 38.823242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263947, 30.895351, 38.697571>,  <39.117031, 30.587868, 38.488121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263947, 30.895351, 38.697571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331242, -0.417959, 0.845925,
		0.869126, -0.484143, 0.101120,
		0.367285, 0.768711, 0.523628,
		39.374130, 31.125965, 38.854660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495667, 30.312786, 38.951954>,  <39.117031, 30.587868, 38.488121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495667, 30.312786, 38.951954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420467, 30.676506, 39.100456>,  <39.375347, 30.894737, 39.189560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420467, 30.676506, 39.100456>,  <39.495667, 30.312786, 38.951954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420467, 30.676506, 39.100456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314915, -0.413848, 0.854142,
		0.930314, 0.043666, 0.364156,
		-0.188002, 0.909298, 0.371257,
		39.364067, 30.949295, 39.211834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661964, 30.242723, 39.630589>,  <39.495667, 30.312786, 38.951954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661964, 30.242723, 39.630589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438480, 30.574430, 39.625568>,  <39.304390, 30.773455, 39.622559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438480, 30.574430, 39.625568>,  <39.661964, 30.242723, 39.630589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438480, 30.574430, 39.625568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439718, -0.283361, 0.852264,
		0.703200, 0.481685, 0.522961,
		-0.558710, 0.829268, -0.012547,
		39.270866, 30.823212, 39.621803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763042, 30.585146, 40.238625>,  <39.661964, 30.242723, 39.630589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763042, 30.585146, 40.238625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407993, 30.696707, 40.092018>,  <39.194962, 30.763643, 40.004055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407993, 30.696707, 40.092018>,  <39.763042, 30.585146, 40.238625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407993, 30.696707, 40.092018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421095, -0.169107, 0.891113,
		0.186552, 0.945313, 0.267547,
		-0.887625, 0.278902, -0.366519,
		39.141705, 30.780376, 39.982063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398342, 31.043333, 40.777130>,  <39.763042, 30.585146, 40.238625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398342, 31.043333, 40.777130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138329, 30.884851, 40.517750>,  <38.982323, 30.789762, 40.362122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138329, 30.884851, 40.517750>,  <39.398342, 31.043333, 40.777130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138329, 30.884851, 40.517750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569705, -0.310622, 0.760888,
		-0.502887, 0.864025, -0.023804,
		-0.650032, -0.396202, -0.648447,
		38.943317, 30.765991, 40.323215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688324, 31.183762, 41.120148>,  <39.398342, 31.043333, 40.777130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688324, 31.183762, 41.120148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627434, 30.897230, 40.847767>,  <38.590900, 30.725311, 40.684338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627434, 30.897230, 40.847767>,  <38.688324, 31.183762, 41.120148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627434, 30.897230, 40.847767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604111, -0.477857, 0.637732,
		-0.782225, 0.508454, -0.359998,
		-0.152230, -0.716329, -0.680955,
		38.581764, 30.682331, 40.643482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059509, 31.098627, 41.168209>,  <38.688324, 31.183762, 41.120148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059509, 31.098627, 41.168209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187664, 30.753096, 41.012695>,  <38.264557, 30.545776, 40.919388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187664, 30.753096, 41.012695>,  <38.059509, 31.098627, 41.168209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187664, 30.753096, 41.012695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574037, -0.503524, 0.645713,
		-0.753547, 0.016299, -0.657192,
		0.320387, -0.863827, -0.388785,
		38.283779, 30.493948, 40.896061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446461, 30.672779, 41.124878>,  <38.059509, 31.098627, 41.168209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446461, 30.672779, 41.124878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773621, 30.442635, 41.125500>,  <37.969917, 30.304548, 41.125874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773621, 30.442635, 41.125500>,  <37.446461, 30.672779, 41.124878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773621, 30.442635, 41.125500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391625, -0.554729, 0.734102,
		-0.421512, -0.601028, -0.679038,
		0.817898, -0.575361, 0.001552,
		38.018990, 30.270027, 41.125965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242828, 30.000559, 41.196754>,  <37.446461, 30.672779, 41.124878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242828, 30.000559, 41.196754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628410, 29.963987, 41.296700>,  <37.859760, 29.942045, 41.356667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628410, 29.963987, 41.296700>,  <37.242828, 30.000559, 41.196754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628410, 29.963987, 41.296700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256881, -0.564450, 0.784480,
		0.069314, -0.820388, -0.567590,
		0.963955, -0.091427, 0.249866,
		37.917595, 29.936560, 41.371658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479034, 29.335047, 41.392494>,  <37.242828, 30.000559, 41.196754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479034, 29.335047, 41.392494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749950, 29.570366, 41.569214>,  <37.912498, 29.711557, 41.675247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749950, 29.570366, 41.569214>,  <37.479034, 29.335047, 41.392494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749950, 29.570366, 41.569214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181599, -0.448247, 0.875270,
		0.712955, -0.673039, -0.196758,
		0.677287, 0.588296, 0.441803,
		37.953136, 29.746855, 41.701756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088493, 28.663012, 41.347618>,  <37.479034, 29.335047, 41.392494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088493, 28.663012, 41.347618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703793, 28.555862, 41.324722>,  <36.472973, 28.491573, 41.310986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703793, 28.555862, 41.324722>,  <37.088493, 28.663012, 41.347618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703793, 28.555862, 41.324722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067801, 0.435262, -0.897747,
		0.265393, -0.859531, -0.436776,
		-0.961753, -0.267870, -0.057239,
		36.415268, 28.475502, 41.307552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921051, 28.451742, 40.646206>,  <37.088493, 28.663012, 41.347618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921051, 28.451742, 40.646206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554832, 28.499468, 40.799847>,  <36.335102, 28.528103, 40.892029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554832, 28.499468, 40.799847>,  <36.921051, 28.451742, 40.646206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554832, 28.499468, 40.799847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293339, 0.455274, -0.840641,
		-0.275173, -0.882320, -0.381826,
		-0.915550, 0.119317, 0.384098,
		36.280167, 28.535263, 40.915077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531574, 28.314053, 40.101509>,  <36.921051, 28.451742, 40.646206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531574, 28.314053, 40.101509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284527, 28.514519, 40.343956>,  <36.136299, 28.634798, 40.489426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284527, 28.514519, 40.343956>,  <36.531574, 28.314053, 40.101509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284527, 28.514519, 40.343956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418396, 0.443199, -0.792792,
		-0.665953, -0.743240, -0.064041,
		-0.617618, 0.501168, 0.606118,
		36.099243, 28.664869, 40.525791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763165, 28.287531, 39.834908>,  <36.531574, 28.314053, 40.101509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763165, 28.287531, 39.834908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813457, 28.610151, 40.065964>,  <35.843636, 28.803722, 40.204597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813457, 28.610151, 40.065964>,  <35.763165, 28.287531, 39.834908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813457, 28.610151, 40.065964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377968, 0.577293, -0.723791,
		-0.917241, -0.127324, 0.377435,
		0.125735, 0.806549, 0.577641,
		35.851177, 28.852116, 40.239258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292034, 28.687290, 39.616936>,  <35.763165, 28.287531, 39.834908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292034, 28.687290, 39.616936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489384, 28.951502, 39.843311>,  <35.607792, 29.110029, 39.979137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489384, 28.951502, 39.843311>,  <35.292034, 28.687290, 39.616936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489384, 28.951502, 39.843311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330783, 0.744234, -0.580257,
		-0.804465, 0.099083, 0.585678,
		0.493375, 0.660529, 0.565935,
		35.637398, 29.149660, 40.013092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879673, 29.143913, 39.753525>,  <35.292034, 28.687290, 39.616936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879673, 29.143913, 39.753525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227634, 29.340563, 39.769413>,  <35.436409, 29.458553, 39.778946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227634, 29.340563, 39.769413>,  <34.879673, 29.143913, 39.753525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227634, 29.340563, 39.769413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383770, 0.725241, -0.571618,
		-0.309827, 0.482008, 0.819558,
		0.869901, 0.491624, 0.039719,
		35.488605, 29.488050, 39.781330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733971, 29.825279, 39.951260>,  <34.879673, 29.143913, 39.753525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733971, 29.825279, 39.951260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114788, 29.844952, 39.830471>,  <35.343281, 29.856754, 39.757999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114788, 29.844952, 39.830471>,  <34.733971, 29.825279, 39.951260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114788, 29.844952, 39.830471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180407, 0.887386, -0.424262,
		0.247101, 0.458396, 0.853706,
		0.952047, 0.049179, -0.301972,
		35.400402, 29.859705, 39.739880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938641, 30.529642, 40.019241>,  <34.733971, 29.825279, 39.951260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938641, 30.529642, 40.019241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206528, 30.367710, 39.770214>,  <35.367260, 30.270552, 39.620800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206528, 30.367710, 39.770214>,  <34.938641, 30.529642, 40.019241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206528, 30.367710, 39.770214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023311, 0.826471, -0.562497,
		0.742247, 0.391228, 0.544067,
		0.669721, -0.404829, -0.622566,
		35.407444, 30.246262, 39.583443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490837, 31.047525, 39.858879>,  <34.938641, 30.529642, 40.019241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490837, 31.047525, 39.858879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445988, 30.790907, 39.555340>,  <35.419079, 30.636936, 39.373219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445988, 30.790907, 39.555340>,  <35.490837, 31.047525, 39.858879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445988, 30.790907, 39.555340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105923, 0.767025, -0.632814,
		0.988033, 0.009426, -0.153957,
		-0.112124, -0.641548, -0.758844,
		35.412350, 30.598442, 39.327686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830826, 31.359198, 39.304367>,  <35.490837, 31.047525, 39.858879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830826, 31.359198, 39.304367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615814, 31.079107, 39.116432>,  <35.486809, 30.911053, 39.003670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615814, 31.079107, 39.116432>,  <35.830826, 31.359198, 39.304367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615814, 31.079107, 39.116432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164446, 0.633530, -0.756040,
		0.827056, -0.329129, -0.455689,
		-0.537528, -0.700224, -0.469841,
		35.454556, 30.869040, 38.975479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971138, 31.551901, 38.722820>,  <35.830826, 31.359198, 39.304367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971138, 31.551901, 38.722820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636559, 31.333626, 38.702526>,  <35.435810, 31.202660, 38.690350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636559, 31.333626, 38.702526>,  <35.971138, 31.551901, 38.722820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636559, 31.333626, 38.702526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358619, 0.614998, -0.702261,
		0.414418, -0.569212, -0.710109,
		-0.836451, -0.545688, -0.050736,
		35.385624, 31.169920, 38.687305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806450, 31.347866, 38.004017>,  <35.971138, 31.551901, 38.722820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806450, 31.347866, 38.004017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459984, 31.334867, 38.203499>,  <35.252106, 31.327068, 38.323189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459984, 31.334867, 38.203499>,  <35.806450, 31.347866, 38.004017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459984, 31.334867, 38.203499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422101, 0.581821, -0.695209,
		-0.267563, -0.812667, -0.517670,
		-0.866165, -0.032497, 0.498701,
		35.200134, 31.325119, 38.353107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.638687, 26.648397, 43.995266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264484, 26.654009, 44.136475>,  <37.039963, 26.657375, 44.221199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264484, 26.654009, 44.136475>,  <37.638687, 26.648397, 43.995266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264484, 26.654009, 44.136475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321067, 0.383199, -0.866068,
		-0.147427, -0.923559, -0.353982,
		-0.935511, 0.014029, 0.353019,
		36.983829, 26.658218, 44.242378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283306, 26.297310, 43.505104>,  <37.638687, 26.648397, 43.995266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283306, 26.297310, 43.505104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026779, 26.524595, 43.711346>,  <36.872864, 26.660967, 43.835091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026779, 26.524595, 43.711346>,  <37.283306, 26.297310, 43.505104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026779, 26.524595, 43.711346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412444, 0.311346, -0.856127,
		-0.646993, -0.761707, 0.034684,
		-0.641319, 0.568214, 0.515600,
		36.834385, 26.695059, 43.866024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628933, 26.203369, 43.262791>,  <37.283306, 26.297310, 43.505104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628933, 26.203369, 43.262791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588554, 26.559475, 43.440437>,  <36.564327, 26.773138, 43.547024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588554, 26.559475, 43.440437>,  <36.628933, 26.203369, 43.262791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588554, 26.559475, 43.440437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569297, 0.314399, -0.759641,
		-0.815911, -0.329519, 0.475086,
		-0.100949, 0.890264, 0.444116,
		36.558270, 26.826553, 43.573673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923187, 26.637030, 43.113323>,  <36.628933, 26.203369, 43.262791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923187, 26.637030, 43.113323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.213078, 26.904707, 43.179001>,  <36.387012, 27.065313, 43.218407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.213078, 26.904707, 43.179001>,  <35.923187, 26.637030, 43.113323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213078, 26.904707, 43.179001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329161, 0.545575, -0.770715,
		-0.605336, 0.504508, 0.615662,
		0.724721, 0.669194, 0.164192,
		36.430492, 27.105465, 43.228260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570572, 27.200947, 43.035542>,  <35.923187, 26.637030, 43.113323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570572, 27.200947, 43.035542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952091, 27.320845, 43.027245>,  <36.181004, 27.392784, 43.022266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952091, 27.320845, 43.027245>,  <35.570572, 27.200947, 43.035542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952091, 27.320845, 43.027245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244993, 0.735893, -0.631221,
		-0.173941, 0.607137, 0.775326,
		0.953794, 0.299744, -0.020742,
		36.238228, 27.410769, 43.021023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498222, 27.886192, 43.196869>,  <35.570572, 27.200947, 43.035542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498222, 27.886192, 43.196869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.858837, 27.822651, 43.035873>,  <36.075207, 27.784527, 42.939278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.858837, 27.822651, 43.035873>,  <35.498222, 27.886192, 43.196869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858837, 27.822651, 43.035873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225633, 0.621114, -0.750538,
		0.369216, 0.767452, 0.524115,
		0.901537, -0.158852, -0.402488,
		36.129299, 27.774996, 42.915127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821964, 28.548222, 42.841896>,  <35.498222, 27.886192, 43.196869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821964, 28.548222, 42.841896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.040123, 28.248831, 42.690994>,  <36.171017, 28.069197, 42.600452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.040123, 28.248831, 42.690994>,  <35.821964, 28.548222, 42.841896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040123, 28.248831, 42.690994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085838, 0.497602, -0.863148,
		0.833771, 0.438374, 0.335638,
		0.545396, -0.748478, -0.377257,
		36.203743, 28.024288, 42.577816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465931, 28.849482, 42.570057>,  <35.821964, 28.548222, 42.841896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465931, 28.849482, 42.570057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.384682, 28.516363, 42.364071>,  <36.335934, 28.316492, 42.240479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.384682, 28.516363, 42.364071>,  <36.465931, 28.849482, 42.570057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384682, 28.516363, 42.364071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063443, 0.513631, -0.855662,
		0.977096, -0.206476, -0.051495,
		-0.203123, -0.832797, -0.514967,
		36.323746, 28.266523, 42.209579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967220, 28.773819, 42.038143>,  <36.465931, 28.849482, 42.570057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967220, 28.773819, 42.038143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656876, 28.553396, 41.915264>,  <36.470669, 28.421143, 41.841537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656876, 28.553396, 41.915264>,  <36.967220, 28.773819, 42.038143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656876, 28.553396, 41.915264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125451, 0.342446, -0.931124,
		0.618300, -0.760965, -0.196561,
		-0.775865, -0.551056, -0.307199,
		36.424114, 28.388079, 41.823105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675842, 28.948954, 42.148167>,  <36.967220, 28.773819, 42.038143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675842, 28.948954, 42.148167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843204, 29.311052, 42.177734>,  <37.943623, 29.528311, 42.195477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843204, 29.311052, 42.177734>,  <37.675842, 28.948954, 42.148167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843204, 29.311052, 42.177734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179640, 0.002702, 0.983729,
		0.890316, -0.424880, 0.163749,
		0.418409, 0.905246, 0.073920,
		37.968727, 29.582626, 42.199909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297558, 28.943817, 42.650482>,  <37.675842, 28.948954, 42.148167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297558, 28.943817, 42.650482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177029, 29.324717, 42.630772>,  <38.104713, 29.553257, 42.618946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177029, 29.324717, 42.630772>,  <38.297558, 28.943817, 42.650482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177029, 29.324717, 42.630772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039380, 0.039210, 0.998455,
		0.952709, 0.302795, 0.025685,
		-0.301321, 0.952249, -0.049279,
		38.086632, 29.610392, 42.615990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680046, 29.289385, 43.222698>,  <38.297558, 28.943817, 42.650482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680046, 29.289385, 43.222698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.372009, 29.521318, 43.116302>,  <38.187187, 29.660479, 43.052464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.372009, 29.521318, 43.116302>,  <38.680046, 29.289385, 43.222698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372009, 29.521318, 43.116302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246361, 0.114291, 0.962416,
		0.588443, 0.806678, 0.054834,
		-0.770092, 0.579835, -0.265988,
		38.140984, 29.695269, 43.036507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709873, 29.895689, 43.595814>,  <38.680046, 29.289385, 43.222698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709873, 29.895689, 43.595814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.325687, 29.874718, 43.486439>,  <38.095177, 29.862135, 43.420815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.325687, 29.874718, 43.486439>,  <38.709873, 29.895689, 43.595814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325687, 29.874718, 43.486439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277476, 0.099659, 0.955550,
		-0.022849, 0.993640, -0.110266,
		-0.960461, -0.052429, -0.273434,
		38.037548, 29.858990, 43.404408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379921, 30.420933, 43.959927>,  <38.709873, 29.895689, 43.595814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379921, 30.420933, 43.959927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097816, 30.150543, 43.874451>,  <37.928555, 29.988310, 43.823166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097816, 30.150543, 43.874451>,  <38.379921, 30.420933, 43.959927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097816, 30.150543, 43.874451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235026, -0.061441, 0.970045,
		-0.668855, 0.734360, -0.115540,
		-0.705263, -0.675974, -0.213689,
		37.886238, 29.947750, 43.810345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773773, 30.583410, 44.236191>,  <38.379921, 30.420933, 43.959927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773773, 30.583410, 44.236191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736969, 30.187418, 44.193348>,  <37.714886, 29.949823, 44.167641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736969, 30.187418, 44.193348>,  <37.773773, 30.583410, 44.236191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736969, 30.187418, 44.193348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403025, -0.061335, 0.913131,
		-0.910552, 0.127184, -0.393344,
		-0.092010, -0.989981, -0.107107,
		37.709366, 29.890423, 44.161217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182529, 30.403210, 44.492107>,  <37.773773, 30.583410, 44.236191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182529, 30.403210, 44.492107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.352131, 30.041119, 44.480892>,  <37.453892, 29.823864, 44.474163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.352131, 30.041119, 44.480892>,  <37.182529, 30.403210, 44.492107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352131, 30.041119, 44.480892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012169, -0.036648, 0.999254,
		-0.905580, -0.423343, -0.026555,
		0.424001, -0.905228, -0.028036,
		37.479332, 29.769550, 44.472481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715916, 29.974365, 44.960411>,  <37.182529, 30.403210, 44.492107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715916, 29.974365, 44.960411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.038139, 29.750755, 44.881863>,  <37.231476, 29.616589, 44.834736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.038139, 29.750755, 44.881863>,  <36.715916, 29.974365, 44.960411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038139, 29.750755, 44.881863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070595, -0.238503, 0.968573,
		-0.588292, -0.794108, -0.152664,
		0.805562, -0.559026, -0.196369,
		37.279808, 29.583048, 44.822952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593311, 29.370813, 45.371773>,  <36.715916, 29.974365, 44.960411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593311, 29.370813, 45.371773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.980488, 29.342518, 45.275360>,  <37.212791, 29.325541, 45.217514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.980488, 29.342518, 45.275360>,  <36.593311, 29.370813, 45.371773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980488, 29.342518, 45.275360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195514, -0.390274, 0.899700,
		-0.157711, -0.917977, -0.363930,
		0.967937, -0.070739, -0.241028,
		37.270870, 29.321295, 45.203053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782646, 28.728987, 45.619495>,  <36.593311, 29.370813, 45.371773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782646, 28.728987, 45.619495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133430, 28.914961, 45.570889>,  <37.343903, 29.026545, 45.541725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133430, 28.914961, 45.570889>,  <36.782646, 28.728987, 45.619495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133430, 28.914961, 45.570889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220994, -0.165646, 0.961105,
		0.426724, -0.869710, -0.248014,
		0.876966, 0.464936, -0.121515,
		37.396519, 29.054441, 45.534435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246403, 28.367811, 46.015602>,  <36.782646, 28.728987, 45.619495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246403, 28.367811, 46.015602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418976, 28.726814, 45.979057>,  <37.522518, 28.942217, 45.957130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418976, 28.726814, 45.979057>,  <37.246403, 28.367811, 46.015602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418976, 28.726814, 45.979057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484966, -0.145336, 0.862372,
		0.760709, -0.416359, -0.497964,
		0.431428, 0.897509, -0.091362,
		37.548405, 28.996067, 45.951649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892952, 28.143354, 46.242176>,  <37.246403, 28.367811, 46.015602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892952, 28.143354, 46.242176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.897842, 28.543322, 46.243580>,  <37.900776, 28.783302, 46.244423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.897842, 28.543322, 46.243580>,  <37.892952, 28.143354, 46.242176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897842, 28.543322, 46.243580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544179, -0.009597, 0.838914,
		0.838880, -0.008351, -0.544253,
		0.012229, 0.999919, 0.003507,
		37.901512, 28.843298, 46.244633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572754, 28.416611, 46.397366>,  <37.892952, 28.143354, 46.242176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572754, 28.416611, 46.397366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.346161, 28.715431, 46.536514>,  <38.210205, 28.894724, 46.620003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.346161, 28.715431, 46.536514>,  <38.572754, 28.416611, 46.397366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346161, 28.715431, 46.536514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439639, -0.083072, 0.894325,
		0.697006, 0.659554, -0.281374,
		-0.566481, 0.747052, 0.347868,
		38.176216, 28.939547, 46.640873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069103, 28.733435, 46.748375>,  <38.572754, 28.416611, 46.397366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069103, 28.733435, 46.748375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.712914, 28.843904, 46.893028>,  <38.499199, 28.910187, 46.979820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.712914, 28.843904, 46.893028>,  <39.069103, 28.733435, 46.748375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712914, 28.843904, 46.893028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341816, -0.118595, 0.932253,
		0.300353, 0.953762, 0.011205,
		-0.890477, 0.276175, 0.361632,
		38.445770, 28.926758, 47.001518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.108101, 32.158810, 48.869640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.374825, 31.902195, 48.717960>,  <33.534859, 31.748226, 48.626953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.374825, 31.902195, 48.717960>,  <33.108101, 32.158810, 48.869640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374825, 31.902195, 48.717960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049647, 0.469468, -0.881553,
		0.743571, 0.606655, 0.281196,
		0.666811, -0.641537, -0.379201,
		33.574867, 31.709734, 48.604198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409863, 32.551300, 48.434132>,  <33.108101, 32.158810, 48.869640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409863, 32.551300, 48.434132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.552940, 32.191578, 48.333492>,  <33.638786, 31.975744, 48.273109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.552940, 32.191578, 48.333492>,  <33.409863, 32.551300, 48.434132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552940, 32.191578, 48.333492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164491, 0.325892, -0.930987,
		0.919237, 0.291625, 0.264498,
		0.357697, -0.899305, -0.251602,
		33.660248, 31.921787, 48.258011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074749, 32.650593, 48.178719>,  <33.409863, 32.551300, 48.434132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074749, 32.650593, 48.178719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.916397, 32.320580, 48.017429>,  <33.821384, 32.122570, 47.920654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.916397, 32.320580, 48.017429>,  <34.074749, 32.650593, 48.178719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916397, 32.320580, 48.017429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006718, 0.441692, -0.897142,
		0.918276, -0.352455, -0.180401,
		-0.395883, -0.825036, -0.403228,
		33.797630, 32.073071, 47.896461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437061, 32.566891, 47.653458>,  <34.074749, 32.650593, 48.178719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437061, 32.566891, 47.653458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110947, 32.348274, 47.576939>,  <33.915279, 32.217102, 47.531025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110947, 32.348274, 47.576939>,  <34.437061, 32.566891, 47.653458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110947, 32.348274, 47.576939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106507, 0.466267, -0.878209,
		0.569179, -0.695617, -0.438353,
		-0.815286, -0.546545, -0.191301,
		33.866360, 32.184311, 47.519547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544121, 32.077190, 47.091316>,  <34.437061, 32.566891, 47.653458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544121, 32.077190, 47.091316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146008, 32.115829, 47.087746>,  <33.907139, 32.139015, 47.085602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146008, 32.115829, 47.087746>,  <34.544121, 32.077190, 47.091316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146008, 32.115829, 47.087746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024847, 0.164844, -0.986007,
		-0.093777, -0.981578, -0.166467,
		-0.995283, 0.096601, -0.008930,
		33.847424, 32.144810, 47.085068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392094, 31.783951, 46.461323>,  <34.544121, 32.077190, 47.091316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392094, 31.783951, 46.461323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.061981, 31.992880, 46.547203>,  <33.863914, 32.118237, 46.598732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.061981, 31.992880, 46.547203>,  <34.392094, 31.783951, 46.461323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061981, 31.992880, 46.547203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123510, 0.204044, -0.971139,
		-0.551057, -0.827976, -0.103880,
		-0.825277, 0.522323, 0.214703,
		33.814400, 32.149578, 46.611614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829292, 31.531101, 46.011471>,  <34.392094, 31.783951, 46.461323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829292, 31.531101, 46.011471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.760887, 31.908236, 46.125889>,  <33.719845, 32.134514, 46.194538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.760887, 31.908236, 46.125889>,  <33.829292, 31.531101, 46.011471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760887, 31.908236, 46.125889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152943, 0.261398, -0.953037,
		-0.973326, -0.206728, 0.099498,
		-0.171010, 0.942834, 0.286043,
		33.709583, 32.191086, 46.211700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358116, 31.687716, 45.566616>,  <33.829292, 31.531101, 46.011471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358116, 31.687716, 45.566616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.466496, 32.043236, 45.714466>,  <33.531525, 32.256550, 45.803177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.466496, 32.043236, 45.714466>,  <33.358116, 31.687716, 45.566616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466496, 32.043236, 45.714466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213084, 0.429838, -0.877402,
		-0.938713, 0.158970, 0.305853,
		0.270948, 0.888801, 0.369621,
		33.547779, 32.309875, 45.825352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835129, 32.207344, 45.184586>,  <33.358116, 31.687716, 45.566616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835129, 32.207344, 45.184586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.164085, 32.388058, 45.322895>,  <33.361462, 32.496487, 45.405880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.164085, 32.388058, 45.322895>,  <32.835129, 32.207344, 45.184586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164085, 32.388058, 45.322895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133746, 0.437209, -0.889359,
		-0.552973, 0.777650, 0.299134,
		0.822394, 0.451784, 0.345772,
		33.410805, 32.523594, 45.426628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730587, 32.892136, 44.999138>,  <32.835129, 32.207344, 45.184586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730587, 32.892136, 44.999138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.118515, 32.810154, 45.051979>,  <33.351273, 32.760967, 45.083683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.118515, 32.810154, 45.051979>,  <32.730587, 32.892136, 44.999138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118515, 32.810154, 45.051979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203765, 0.383633, -0.900725,
		0.133925, 0.900456, 0.413816,
		0.969816, -0.204951, 0.132104,
		33.409458, 32.748669, 45.091610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097675, 33.584911, 44.889626>,  <32.730587, 32.892136, 44.999138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097675, 33.584911, 44.889626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361767, 33.287457, 44.847477>,  <33.520222, 33.108986, 44.822189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361767, 33.287457, 44.847477>,  <33.097675, 33.584911, 44.889626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361767, 33.287457, 44.847477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275979, 0.370684, -0.886808,
		0.698521, 0.556417, 0.449965,
		0.660230, -0.743635, -0.105371,
		33.559837, 33.064365, 44.815865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537445, 33.903961, 44.438625>,  <33.097675, 33.584911, 44.889626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537445, 33.903961, 44.438625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.592529, 33.508144, 44.421494>,  <33.625580, 33.270653, 44.411217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.592529, 33.508144, 44.421494>,  <33.537445, 33.903961, 44.438625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592529, 33.508144, 44.421494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131205, 0.061082, -0.989472,
		0.981744, 0.130642, 0.138245,
		0.137711, -0.989546, -0.042827,
		33.633842, 33.211281, 44.408646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122948, 33.830685, 44.180786>,  <33.537445, 33.903961, 44.438625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122948, 33.830685, 44.180786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940845, 33.483139, 44.103004>,  <33.831581, 33.274612, 44.056335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940845, 33.483139, 44.103004>,  <34.122948, 33.830685, 44.180786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940845, 33.483139, 44.103004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199694, 0.113189, -0.973299,
		0.867675, -0.481935, 0.121977,
		-0.455260, -0.868865, -0.194451,
		33.804268, 33.222481, 44.044670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491558, 33.566467, 43.658031>,  <34.122948, 33.830685, 44.180786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491558, 33.566467, 43.658031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.196636, 33.297722, 43.629780>,  <34.019684, 33.136475, 43.612827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.196636, 33.297722, 43.629780>,  <34.491558, 33.566467, 43.658031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196636, 33.297722, 43.629780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159173, -0.071161, -0.984683,
		0.656543, -0.737251, 0.159409,
		-0.737302, -0.671860, -0.070630,
		33.975445, 33.096165, 43.608589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314156, 33.294018, 43.613369>,  <34.491558, 33.566467, 43.658031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314156, 33.294018, 43.613369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558720, 33.606934, 43.565689>,  <35.705460, 33.794682, 43.537083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558720, 33.606934, 43.565689>,  <35.314156, 33.294018, 43.613369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558720, 33.606934, 43.565689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178244, 0.010615, 0.983929,
		0.770979, -0.622830, -0.132947,
		0.611409, 0.782285, -0.119200,
		35.742142, 33.841618, 43.529930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854671, 33.123348, 44.081879>,  <35.314156, 33.294018, 43.613369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854671, 33.123348, 44.081879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870350, 33.520378, 44.035812>,  <35.879757, 33.758595, 44.008171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870350, 33.520378, 44.035812>,  <35.854671, 33.123348, 44.081879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870350, 33.520378, 44.035812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155140, 0.107813, 0.981992,
		0.987115, -0.056355, -0.149762,
		0.039193, 0.992572, -0.115167,
		35.882107, 33.818150, 44.001263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386288, 33.214600, 44.545769>,  <35.854671, 33.123348, 44.081879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386288, 33.214600, 44.545769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.195225, 33.554031, 44.454758>,  <36.080589, 33.757690, 44.400150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.195225, 33.554031, 44.454758>,  <36.386288, 33.214600, 44.545769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195225, 33.554031, 44.454758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038538, 0.278966, 0.959527,
		0.877702, 0.449554, -0.165951,
		-0.477654, 0.848575, -0.227525,
		36.051929, 33.808605, 44.386501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666447, 33.650852, 44.956089>,  <36.386288, 33.214600, 44.545769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666447, 33.650852, 44.956089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369530, 33.897255, 44.850605>,  <36.191380, 34.045097, 44.787315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369530, 33.897255, 44.850605>,  <36.666447, 33.650852, 44.956089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369530, 33.897255, 44.850605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029093, 0.422801, 0.905755,
		0.669446, 0.664662, -0.331763,
		-0.742291, 0.616006, -0.263705,
		36.146843, 34.082058, 44.771492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896156, 34.296570, 45.162415>,  <36.666447, 33.650852, 44.956089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896156, 34.296570, 45.162415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496471, 34.281265, 45.158119>,  <36.256660, 34.272083, 45.155540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496471, 34.281265, 45.158119>,  <36.896156, 34.296570, 45.162415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496471, 34.281265, 45.158119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024257, 0.373125, 0.927464,
		-0.031475, 0.926992, -0.373758,
		-0.999210, -0.038259, -0.010742,
		36.196709, 34.269787, 45.154896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612045, 34.892746, 45.527805>,  <36.896156, 34.296570, 45.162415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612045, 34.892746, 45.527805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.330223, 34.609711, 45.549431>,  <36.161129, 34.439888, 45.562405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.330223, 34.609711, 45.549431>,  <36.612045, 34.892746, 45.527805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330223, 34.609711, 45.549431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045433, 0.031047, 0.998485,
		-0.708196, 0.705941, 0.010273,
		-0.704553, -0.707589, 0.054061,
		36.118858, 34.397434, 45.565651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132065, 35.107998, 46.071171>,  <36.612045, 34.892746, 45.527805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132065, 35.107998, 46.071171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.028183, 34.724487, 46.025036>,  <35.965855, 34.494381, 45.997356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.028183, 34.724487, 46.025036>,  <36.132065, 35.107998, 46.071171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028183, 34.724487, 46.025036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025926, -0.112467, 0.993317,
		-0.965340, 0.260959, 0.004351,
		-0.259704, -0.958776, -0.115334,
		35.950272, 34.436855, 45.990437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545315, 34.882030, 46.542828>,  <36.132065, 35.107998, 46.071171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545315, 34.882030, 46.542828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.751331, 34.550076, 46.457027>,  <35.874943, 34.350903, 46.405548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.751331, 34.550076, 46.457027>,  <35.545315, 34.882030, 46.542828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751331, 34.550076, 46.457027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057118, -0.282914, 0.957443,
		-0.855258, -0.480875, -0.193116,
		0.515046, -0.829891, -0.214498,
		35.905846, 34.301109, 46.392677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240902, 34.497204, 46.999912>,  <35.545315, 34.882030, 46.542828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240902, 34.497204, 46.999912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.569626, 34.289997, 46.905006>,  <35.766861, 34.165672, 46.848061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.569626, 34.289997, 46.905006>,  <35.240902, 34.497204, 46.999912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569626, 34.289997, 46.905006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077013, -0.311619, 0.947081,
		-0.564538, -0.796590, -0.216196,
		0.821806, -0.518013, -0.237269,
		35.816170, 34.134594, 46.833824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096478, 33.846653, 47.226048>,  <35.240902, 34.497204, 46.999912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096478, 33.846653, 47.226048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493767, 33.871498, 47.186768>,  <35.732140, 33.886406, 47.163200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493767, 33.871498, 47.186768>,  <35.096478, 33.846653, 47.226048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493767, 33.871498, 47.186768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114588, -0.383652, 0.916341,
		0.019243, -0.921386, -0.388171,
		0.993227, 0.062113, -0.098197,
		35.791737, 33.890133, 47.157307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414402, 33.218628, 47.407120>,  <35.096478, 33.846653, 47.226048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414402, 33.218628, 47.407120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.725086, 33.459244, 47.481815>,  <35.911495, 33.603615, 47.526630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.725086, 33.459244, 47.481815>,  <35.414402, 33.218628, 47.407120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725086, 33.459244, 47.481815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199279, -0.515935, 0.833126,
		0.597503, -0.609885, -0.520606,
		0.776710, 0.601541, 0.186735,
		35.958099, 33.639706, 47.537834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987560, 32.744461, 47.633892>,  <35.414402, 33.218628, 47.407120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987560, 32.744461, 47.633892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098366, 33.109756, 47.753395>,  <36.164848, 33.328934, 47.825096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098366, 33.109756, 47.753395>,  <35.987560, 32.744461, 47.633892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098366, 33.109756, 47.753395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289768, -0.375850, 0.880211,
		0.916133, -0.157256, -0.368742,
		0.277011, 0.913240, 0.298760,
		36.181469, 33.383728, 47.843021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705269, 32.656151, 47.809124>,  <35.987560, 32.744461, 47.633892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705269, 32.656151, 47.809124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565197, 32.978138, 48.000706>,  <36.481155, 33.171329, 48.115654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565197, 32.978138, 48.000706>,  <36.705269, 32.656151, 47.809124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565197, 32.978138, 48.000706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287908, -0.394077, 0.872818,
		0.891337, 0.443540, -0.093759,
		-0.350181, 0.804969, 0.478955,
		36.460144, 33.219627, 48.144394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251549, 32.869663, 48.323441>,  <36.705269, 32.656151, 47.809124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251549, 32.869663, 48.323441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.890972, 33.004787, 48.431728>,  <36.674625, 33.085861, 48.496700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.890972, 33.004787, 48.431728>,  <37.251549, 32.869663, 48.323441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890972, 33.004787, 48.431728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093617, -0.458454, 0.883774,
		0.422658, 0.822014, 0.381645,
		-0.901441, 0.337806, 0.270724,
		36.620541, 33.106129, 48.512947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016235, 33.167053, 48.490463>,  <37.251549, 32.869663, 48.323441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016235, 33.167053, 48.490463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.319138, 32.918026, 48.411499>,  <38.500877, 32.768608, 48.364120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.319138, 32.918026, 48.411499>,  <38.016235, 33.167053, 48.490463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319138, 32.918026, 48.411499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065882, 0.373530, -0.925275,
		0.649786, 0.687665, 0.323874,
		0.757256, -0.622569, -0.197410,
		38.546314, 32.731255, 48.352276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359314, 33.542450, 47.962074>,  <38.016235, 33.167053, 48.490463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359314, 33.542450, 47.962074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495354, 33.166908, 47.940575>,  <38.576977, 32.941582, 47.927677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495354, 33.166908, 47.940575>,  <38.359314, 33.542450, 47.962074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495354, 33.166908, 47.940575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136415, 0.007293, -0.990625,
		0.930443, 0.344241, -0.125593,
		0.340098, -0.938853, -0.053745,
		38.597382, 32.885254, 47.924450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855007, 33.600807, 47.457779>,  <38.359314, 33.542450, 47.962074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855007, 33.600807, 47.457779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.782005, 33.207645, 47.467461>,  <38.738205, 32.971748, 47.473270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.782005, 33.207645, 47.467461>,  <38.855007, 33.600807, 47.457779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782005, 33.207645, 47.467461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034179, -0.018260, -0.999249,
		0.982611, -0.183194, -0.030262,
		-0.182504, -0.982907, 0.024204,
		38.727253, 32.912773, 47.474720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338120, 33.288567, 46.968449>,  <38.855007, 33.600807, 47.457779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338120, 33.288567, 46.968449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.015213, 33.056061, 47.009354>,  <38.821468, 32.916557, 47.033897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.015213, 33.056061, 47.009354>,  <39.338120, 33.288567, 46.968449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015213, 33.056061, 47.009354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025210, -0.139149, -0.989951,
		0.589653, -0.801729, 0.097676,
		-0.807263, -0.581265, 0.102261,
		38.773033, 32.881680, 47.040031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438801, 32.662846, 46.612038>,  <39.338120, 33.288567, 46.968449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438801, 32.662846, 46.612038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.040398, 32.633396, 46.632229>,  <38.801357, 32.615726, 46.644344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.040398, 32.633396, 46.632229>,  <39.438801, 32.662846, 46.612038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040398, 32.633396, 46.632229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025654, -0.305582, -0.951820,
		0.085503, -0.949315, 0.302473,
		-0.996007, -0.073624, 0.050482,
		38.741596, 32.611309, 46.647373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319748, 32.073208, 46.147606>,  <39.438801, 32.662846, 46.612038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319748, 32.073208, 46.147606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.967129, 32.260921, 46.168159>,  <38.755558, 32.373550, 46.180492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.967129, 32.260921, 46.168159>,  <39.319748, 32.073208, 46.147606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967129, 32.260921, 46.168159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175048, -0.223847, -0.958776,
		-0.438441, -0.854202, 0.279480,
		-0.881549, 0.469289, 0.051382,
		38.702663, 32.401707, 46.183575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900581, 31.727839, 45.678513>,  <39.319748, 32.073208, 46.147606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900581, 31.727839, 45.678513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726604, 32.086563, 45.710880>,  <38.622219, 32.301800, 45.730301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726604, 32.086563, 45.710880>,  <38.900581, 31.727839, 45.678513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726604, 32.086563, 45.710880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092205, 0.045038, -0.994721,
		-0.895724, -0.440110, 0.063102,
		-0.434945, 0.896814, 0.080922,
		38.596123, 32.355606, 45.735157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502079, 31.703518, 45.125668>,  <38.900581, 31.727839, 45.678513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502079, 31.703518, 45.125668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491295, 32.093105, 45.215694>,  <38.484825, 32.326859, 45.269711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491295, 32.093105, 45.215694>,  <38.502079, 31.703518, 45.125668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491295, 32.093105, 45.215694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229417, 0.213107, -0.949712,
		-0.972955, -0.077241, 0.217699,
		-0.026963, 0.973971, 0.225064,
		38.483208, 32.385296, 45.283215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909966, 31.992748, 44.840855>,  <38.502079, 31.703518, 45.125668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909966, 31.992748, 44.840855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172638, 32.291183, 44.884899>,  <38.330242, 32.470245, 44.911327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172638, 32.291183, 44.884899>,  <37.909966, 31.992748, 44.840855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172638, 32.291183, 44.884899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032943, 0.174239, -0.984152,
		-0.753452, 0.642643, 0.138998,
		0.656678, 0.746090, 0.110110,
		38.369640, 32.515011, 44.917931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636978, 32.584972, 44.461903>,  <37.909966, 31.992748, 44.840855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636978, 32.584972, 44.461903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025700, 32.659073, 44.520260>,  <38.258930, 32.703533, 44.555275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025700, 32.659073, 44.520260>,  <37.636978, 32.584972, 44.461903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025700, 32.659073, 44.520260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084209, 0.305255, -0.948540,
		-0.220256, 0.934077, 0.281047,
		0.971801, 0.185255, 0.145892,
		38.317242, 32.714649, 44.564026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784859, 33.346130, 44.138721>,  <37.636978, 32.584972, 44.461903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784859, 33.346130, 44.138721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129269, 33.145081, 44.169743>,  <38.335915, 33.024452, 44.188354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129269, 33.145081, 44.169743>,  <37.784859, 33.346130, 44.138721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129269, 33.145081, 44.169743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167885, 0.136961, -0.976246,
		0.480061, 0.853588, 0.202309,
		0.861020, -0.502623, 0.077555,
		38.387573, 32.994293, 44.193008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283764, 33.768993, 43.774643>,  <37.784859, 33.346130, 44.138721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283764, 33.768993, 43.774643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.438362, 33.400703, 43.796146>,  <38.531120, 33.179729, 43.809048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.438362, 33.400703, 43.796146>,  <38.283764, 33.768993, 43.774643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438362, 33.400703, 43.796146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369189, 0.101034, -0.923846,
		0.845175, 0.376910, 0.378970,
		0.386496, -0.920723, 0.053760,
		38.554310, 33.124485, 43.812275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972332, 33.776501, 43.556698>,  <38.283764, 33.768993, 43.774643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972332, 33.776501, 43.556698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.924541, 33.381386, 43.516701>,  <38.895866, 33.144318, 43.492702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.924541, 33.381386, 43.516701>,  <38.972332, 33.776501, 43.556698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924541, 33.381386, 43.516701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161187, 0.080082, -0.983669,
		0.979665, -0.133646, 0.149650,
		-0.119480, -0.987788, -0.099996,
		38.888699, 33.085049, 43.486702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605873, 33.500263, 43.387630>,  <38.972332, 33.776501, 43.556698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605873, 33.500263, 43.387630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.316071, 33.253994, 43.263676>,  <39.142189, 33.106232, 43.189301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.316071, 33.253994, 43.263676>,  <39.605873, 33.500263, 43.387630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316071, 33.253994, 43.263676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234385, 0.202738, -0.950769,
		0.648190, -0.761475, -0.002581,
		-0.724510, -0.615673, -0.309891,
		39.098717, 33.069294, 43.170708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.169853, 27.273457, 37.862560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.032780, 27.503712, 38.159534>,  <26.950535, 27.641865, 38.337719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.032780, 27.503712, 38.159534>,  <27.169853, 27.273457, 37.862560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032780, 27.503712, 38.159534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055852, 0.801370, -0.595556,
		-0.937789, -0.162622, -0.306768,
		-0.342685, 0.575640, 0.742432,
		26.929974, 27.676403, 38.382263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611755, 27.734655, 37.571198>,  <27.169853, 27.273457, 37.862560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611755, 27.734655, 37.571198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.771730, 27.905054, 37.895809>,  <26.867716, 28.007294, 38.090576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.771730, 27.905054, 37.895809>,  <26.611755, 27.734655, 37.571198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771730, 27.905054, 37.895809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090894, 0.899491, -0.427380,
		-0.912024, 0.097162, 0.398461,
		0.399938, 0.425999, 0.811527,
		26.891712, 28.032854, 38.139267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025785, 28.210348, 37.854240>,  <26.611755, 27.734655, 37.571198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025785, 28.210348, 37.854240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.389515, 28.332672, 37.967102>,  <26.607754, 28.406067, 38.034817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.389515, 28.332672, 37.967102>,  <26.025785, 28.210348, 37.854240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389515, 28.332672, 37.967102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165733, 0.888195, -0.428534,
		-0.381654, 0.342915, 0.858341,
		0.909325, 0.305808, 0.282151,
		26.662313, 28.424414, 38.051746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907345, 28.893957, 38.043690>,  <26.025785, 28.210348, 37.854240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907345, 28.893957, 38.043690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.304466, 28.912161, 37.999374>,  <26.542738, 28.923082, 37.972786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.304466, 28.912161, 37.999374>,  <25.907345, 28.893957, 38.043690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304466, 28.912161, 37.999374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088631, 0.901316, -0.423999,
		0.080561, 0.430766, 0.898861,
		0.992801, 0.045509, -0.110790,
		26.602306, 28.925814, 37.966137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061478, 29.516115, 38.170177>,  <25.907345, 28.893957, 38.043690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061478, 29.516115, 38.170177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.410374, 29.426292, 37.996384>,  <26.619711, 29.372398, 37.892109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.410374, 29.426292, 37.996384>,  <26.061478, 29.516115, 38.170177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410374, 29.426292, 37.996384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021413, 0.905048, -0.424769,
		0.488613, 0.361196, 0.794226,
		0.872238, -0.224555, -0.434484,
		26.672045, 29.358927, 37.866039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375935, 30.013683, 38.280487>,  <26.061478, 29.516115, 38.170177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375935, 30.013683, 38.280487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.574179, 29.860348, 37.968739>,  <26.693125, 29.768347, 37.781689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.574179, 29.860348, 37.968739>,  <26.375935, 30.013683, 38.280487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574179, 29.860348, 37.968739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104502, 0.864493, -0.491662,
		0.862236, 0.325118, 0.388391,
		0.495609, -0.383340, -0.779372,
		26.722862, 29.745346, 37.734928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822285, 30.456617, 38.140095>,  <26.375935, 30.013683, 38.280487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822285, 30.456617, 38.140095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.840939, 30.262499, 37.790852>,  <26.852131, 30.146029, 37.581306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.840939, 30.262499, 37.790852>,  <26.822285, 30.456617, 38.140095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840939, 30.262499, 37.790852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146719, 0.867905, -0.474567,
		0.988078, -0.105970, 0.111677,
		0.046635, -0.485294, -0.873106,
		26.854929, 30.116911, 37.528919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452082, 30.702604, 37.800640>,  <26.822285, 30.456617, 38.140095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452082, 30.702604, 37.800640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179775, 30.575291, 37.536743>,  <27.016392, 30.498903, 37.378407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179775, 30.575291, 37.536743>,  <27.452082, 30.702604, 37.800640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179775, 30.575291, 37.536743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035966, 0.885055, -0.464095,
		0.731618, -0.339668, -0.591068,
		-0.680766, -0.318282, -0.659738,
		26.975546, 30.479807, 37.338821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727615, 30.742352, 37.183437>,  <27.452082, 30.702604, 37.800640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727615, 30.742352, 37.183437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339628, 30.757133, 37.087273>,  <27.106836, 30.766003, 37.029575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339628, 30.757133, 37.087273>,  <27.727615, 30.742352, 37.183437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339628, 30.757133, 37.087273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156769, 0.850685, -0.501755,
		0.185969, -0.524375, -0.830931,
		-0.969969, 0.036954, -0.240407,
		27.048637, 30.768219, 37.015152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689342, 30.842640, 36.497162>,  <27.727615, 30.742352, 37.183437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689342, 30.842640, 36.497162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339363, 30.961584, 36.650024>,  <27.129375, 31.032949, 36.741741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339363, 30.961584, 36.650024>,  <27.689342, 30.842640, 36.497162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339363, 30.961584, 36.650024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097189, 0.881011, -0.463005,
		-0.474363, -0.367964, -0.799739,
		-0.874948, 0.297359, 0.382157,
		27.076880, 31.050791, 36.764671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598585, 31.416376, 36.258080>,  <27.689342, 30.842640, 36.497162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598585, 31.416376, 36.258080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.253805, 31.420067, 36.460842>,  <27.046936, 31.422281, 36.582500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.253805, 31.420067, 36.460842>,  <27.598585, 31.416376, 36.258080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253805, 31.420067, 36.460842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167783, 0.938305, -0.302376,
		-0.478423, -0.345684, -0.807226,
		-0.861952, 0.009225, 0.506907,
		26.995220, 31.422834, 36.612915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041576, 31.684507, 35.766785>,  <27.598585, 31.416376, 36.258080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041576, 31.684507, 35.766785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933456, 31.734037, 36.148697>,  <26.868584, 31.763756, 36.377846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933456, 31.734037, 36.148697>,  <27.041576, 31.684507, 35.766785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933456, 31.734037, 36.148697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146351, 0.974886, -0.167865,
		-0.951587, -0.185107, -0.245392,
		-0.270302, 0.123824, 0.954780,
		26.852365, 31.771185, 36.435131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543736, 32.184387, 35.733841>,  <27.041576, 31.684507, 35.766785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543736, 32.184387, 35.733841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.671963, 32.184822, 36.112732>,  <26.748899, 32.185081, 36.340065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.671963, 32.184822, 36.112732>,  <26.543736, 32.184387, 35.733841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671963, 32.184822, 36.112732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063531, 0.997723, -0.022645,
		-0.945093, 0.067438, 0.319769,
		0.320568, 0.001086, 0.947225,
		26.768133, 32.185146, 36.396900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060389, 32.593559, 36.147091>,  <26.543736, 32.184387, 35.733841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060389, 32.593559, 36.147091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.422831, 32.599377, 36.316212>,  <26.640297, 32.602867, 36.417683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.422831, 32.599377, 36.316212>,  <26.060389, 32.593559, 36.147091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422831, 32.599377, 36.316212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015885, 0.997534, -0.068365,
		-0.422752, 0.068662, 0.903641,
		0.906106, 0.014547, 0.422800,
		26.694662, 32.603741, 36.443050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094027, 33.143131, 36.563175>,  <26.060389, 32.593559, 36.147091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094027, 33.143131, 36.563175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.488138, 33.075928, 36.550568>,  <26.724606, 33.035606, 36.543003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.488138, 33.075928, 36.550568>,  <26.094027, 33.143131, 36.563175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488138, 33.075928, 36.550568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170282, 0.980840, 0.094644,
		0.015012, -0.098618, 0.995012,
		0.985281, -0.168011, -0.031518,
		26.783722, 33.025524, 36.541111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403753, 33.523701, 37.102821>,  <26.094027, 33.143131, 36.563175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403753, 33.523701, 37.102821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717257, 33.460327, 36.862614>,  <26.905359, 33.422302, 36.718491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717257, 33.460327, 36.862614>,  <26.403753, 33.523701, 37.102821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717257, 33.460327, 36.862614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240221, 0.968992, 0.057873,
		0.572728, -0.189615, 0.797514,
		0.783758, -0.158435, -0.600518,
		26.952383, 33.412796, 36.682457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039190, 33.698715, 37.494598>,  <26.403753, 33.523701, 37.102821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039190, 33.698715, 37.494598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.123692, 33.715878, 37.104004>,  <27.174393, 33.726173, 36.869648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.123692, 33.715878, 37.104004>,  <27.039190, 33.698715, 37.494598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123692, 33.715878, 37.104004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413431, 0.901345, 0.129042,
		0.885690, -0.430971, 0.172675,
		0.211253, 0.042902, -0.976489,
		27.187067, 33.728748, 36.811058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738037, 33.990742, 37.362904>,  <27.039190, 33.698715, 37.494598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738037, 33.990742, 37.362904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564754, 34.049316, 37.007175>,  <27.460785, 34.084461, 36.793739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564754, 34.049316, 37.007175>,  <27.738037, 33.990742, 37.362904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564754, 34.049316, 37.007175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364766, 0.930779, -0.024421,
		0.824183, -0.334972, -0.456636,
		-0.433207, 0.146438, -0.889318,
		27.434792, 34.093246, 36.740379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252285, 34.304581, 37.009659>,  <27.738037, 33.990742, 37.362904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252285, 34.304581, 37.009659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.922600, 34.382671, 36.797031>,  <27.724789, 34.429523, 36.669456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.922600, 34.382671, 36.797031>,  <28.252285, 34.304581, 37.009659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922600, 34.382671, 36.797031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230950, 0.972965, -0.000764,
		0.517047, -0.123395, -0.847016,
		-0.824211, 0.195223, -0.531567,
		27.675337, 34.441238, 36.637562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478991, 34.718395, 36.307747>,  <28.252285, 34.304581, 37.009659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478991, 34.718395, 36.307747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.094103, 34.789738, 36.390041>,  <27.863171, 34.832542, 36.439419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.094103, 34.789738, 36.390041>,  <28.478991, 34.718395, 36.307747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094103, 34.789738, 36.390041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224185, 0.947770, 0.226879,
		-0.154528, 0.264431, -0.951944,
		-0.962217, 0.178352, 0.205738,
		27.805437, 34.843243, 36.451763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904190, 34.772049, 37.017818>,  <28.478991, 34.718395, 36.307747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904190, 34.772049, 37.017818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118977, 35.007210, 37.259823>,  <29.247849, 35.148308, 37.405025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118977, 35.007210, 37.259823>,  <28.904190, 34.772049, 37.017818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118977, 35.007210, 37.259823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013726, -0.710986, 0.703072,
		0.843492, -0.385830, -0.373705,
		0.536965, 0.587906, 0.605007,
		29.280066, 35.183582, 37.441326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378159, 34.333374, 37.098248>,  <28.904190, 34.772049, 37.017818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378159, 34.333374, 37.098248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.395006, 34.613155, 37.383621>,  <29.405115, 34.781025, 37.554848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.395006, 34.613155, 37.383621>,  <29.378159, 34.333374, 37.098248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395006, 34.613155, 37.383621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279114, -0.693878, 0.663799,
		0.959334, 0.171171, -0.224453,
		0.042120, 0.699453, 0.713436,
		29.407642, 34.822990, 37.597652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083899, 34.345932, 37.442482>,  <29.378159, 34.333374, 37.098248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083899, 34.345932, 37.442482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795328, 34.491047, 37.678425>,  <29.622185, 34.578114, 37.819992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795328, 34.491047, 37.678425>,  <30.083899, 34.345932, 37.442482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795328, 34.491047, 37.678425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259714, -0.647869, 0.716110,
		0.641944, 0.669815, 0.373170,
		-0.721427, 0.362785, 0.589856,
		29.578899, 34.599884, 37.855381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361986, 34.331528, 38.042412>,  <30.083899, 34.345932, 37.442482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361986, 34.331528, 38.042412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.968245, 34.350010, 38.110428>,  <29.732000, 34.361099, 38.151237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.968245, 34.350010, 38.110428>,  <30.361986, 34.331528, 38.042412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968245, 34.350010, 38.110428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078449, -0.749166, 0.657720,
		0.157775, 0.660768, 0.733820,
		-0.984354, 0.046204, 0.170036,
		29.672939, 34.363873, 38.161438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181095, 34.414494, 38.863281>,  <30.361986, 34.331528, 38.042412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181095, 34.414494, 38.863281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.848486, 34.276573, 38.689072>,  <29.648920, 34.193821, 38.584545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.848486, 34.276573, 38.689072>,  <30.181095, 34.414494, 38.863281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848486, 34.276573, 38.689072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085347, -0.695417, 0.713520,
		-0.548893, 0.630479, 0.548828,
		-0.831524, -0.344805, -0.435519,
		29.599030, 34.173130, 38.558414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713612, 34.367218, 39.409214>,  <30.181095, 34.414494, 38.863281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713612, 34.367218, 39.409214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.548632, 34.119587, 39.141891>,  <29.449644, 33.971008, 38.981499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.548632, 34.119587, 39.141891>,  <29.713612, 34.367218, 39.409214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548632, 34.119587, 39.141891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237556, -0.635134, 0.734963,
		-0.879462, 0.461894, 0.114894,
		-0.412448, -0.619079, -0.668302,
		29.424898, 33.933865, 38.941402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117556, 34.177849, 39.718437>,  <29.713612, 34.367218, 39.409214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117556, 34.177849, 39.718437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197195, 33.904011, 39.437954>,  <29.244978, 33.739708, 39.269665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197195, 33.904011, 39.437954>,  <29.117556, 34.177849, 39.718437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197195, 33.904011, 39.437954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135383, -0.727888, 0.672198,
		-0.970583, -0.038901, -0.237603,
		0.199097, -0.684591, -0.701210,
		29.256924, 33.698635, 39.227592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568338, 33.593063, 39.731472>,  <29.117556, 34.177849, 39.718437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568338, 33.593063, 39.731472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872868, 33.420372, 39.537979>,  <29.055584, 33.316757, 39.421883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872868, 33.420372, 39.537979>,  <28.568338, 33.593063, 39.731472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872868, 33.420372, 39.537979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157382, -0.846809, 0.508080,
		-0.628983, -0.310682, -0.712641,
		0.761322, -0.431731, -0.483733,
		29.101263, 33.290852, 39.392860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334049, 32.956158, 39.589081>,  <28.568338, 33.593063, 39.731472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334049, 32.956158, 39.589081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733416, 32.934013, 39.585133>,  <28.973036, 32.920727, 39.582764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733416, 32.934013, 39.585133>,  <28.334049, 32.956158, 39.589081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733416, 32.934013, 39.585133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047257, -0.921169, 0.386283,
		-0.030481, -0.385205, -0.922328,
		0.998418, -0.055361, -0.009874,
		29.032942, 32.917404, 39.582169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376324, 32.253414, 39.175304>,  <28.334049, 32.956158, 39.589081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376324, 32.253414, 39.175304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733166, 32.332546, 39.337791>,  <28.947271, 32.380028, 39.435284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733166, 32.332546, 39.337791>,  <28.376324, 32.253414, 39.175304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733166, 32.332546, 39.337791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056367, -0.940755, 0.334370,
		0.448297, -0.275397, -0.850403,
		0.892105, 0.197832, 0.406215,
		29.000797, 32.391895, 39.459656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844278, 31.702488, 39.091869>,  <28.376324, 32.253414, 39.175304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844278, 31.702488, 39.091869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.997677, 31.877331, 39.417290>,  <29.089716, 31.982237, 39.612541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.997677, 31.877331, 39.417290>,  <28.844278, 31.702488, 39.091869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997677, 31.877331, 39.417290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079102, -0.893213, 0.442621,
		0.920149, -0.105390, -0.377119,
		0.383495, 0.437108, 0.813553,
		29.112726, 32.008465, 39.661354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500418, 31.382511, 39.208027>,  <28.844278, 31.702488, 39.091869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500418, 31.382511, 39.208027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.389338, 31.542084, 39.557594>,  <29.322689, 31.637827, 39.767334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.389338, 31.542084, 39.557594>,  <29.500418, 31.382511, 39.208027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389338, 31.542084, 39.557594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094192, -0.894010, 0.438035,
		0.956039, 0.203958, 0.210690,
		-0.277700, 0.398933, 0.873920,
		29.306028, 31.661764, 39.819771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852098, 30.984539, 39.677799>,  <29.500418, 31.382511, 39.208027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852098, 30.984539, 39.677799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.594692, 31.186157, 39.908218>,  <29.440248, 31.307129, 40.046471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.594692, 31.186157, 39.908218>,  <29.852098, 30.984539, 39.677799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594692, 31.186157, 39.908218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139744, -0.817289, 0.559026,
		0.752569, 0.279244, 0.596375,
		-0.643516, 0.504045, 0.576044,
		29.401638, 31.337370, 40.081032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125385, 30.808237, 40.319172>,  <29.852098, 30.984539, 39.677799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125385, 30.808237, 40.319172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738150, 30.906488, 40.339058>,  <29.505808, 30.965439, 40.350990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738150, 30.906488, 40.339058>,  <30.125385, 30.808237, 40.319172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738150, 30.906488, 40.339058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176611, -0.809422, 0.560039,
		0.177798, 0.533388, 0.826973,
		-0.968089, 0.245626, 0.049712,
		29.447723, 30.980177, 40.353970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930410, 30.680372, 41.036263>,  <30.125385, 30.808237, 40.319172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930410, 30.680372, 41.036263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572414, 30.695518, 40.858471>,  <29.357616, 30.704607, 40.751797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572414, 30.695518, 40.858471>,  <29.930410, 30.680372, 41.036263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572414, 30.695518, 40.858471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269542, -0.839833, 0.471199,
		-0.355445, 0.541523, 0.761847,
		-0.894989, 0.037865, -0.444478,
		29.303917, 30.706879, 40.725128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383488, 30.321218, 41.496681>,  <29.930410, 30.680372, 41.036263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383488, 30.321218, 41.496681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210775, 30.308199, 41.136124>,  <29.107147, 30.300386, 40.919788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210775, 30.308199, 41.136124>,  <29.383488, 30.321218, 41.496681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210775, 30.308199, 41.136124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476896, -0.840003, 0.258776,
		-0.765593, 0.541605, 0.347176,
		-0.431783, -0.032550, -0.901390,
		29.081240, 30.298433, 40.865707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794888, 29.948446, 41.527313>,  <29.383488, 30.321218, 41.496681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794888, 29.948446, 41.527313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809072, 29.949085, 41.127563>,  <28.817583, 29.949469, 40.887714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809072, 29.949085, 41.127563>,  <28.794888, 29.948446, 41.527313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809072, 29.949085, 41.127563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477161, -0.878624, -0.018337,
		-0.878100, 0.477511, -0.030396,
		0.035462, 0.001598, -0.999370,
		28.819712, 29.949564, 40.827751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149710, 29.807859, 41.240875>,  <28.794888, 29.948446, 41.527313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149710, 29.807859, 41.240875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390945, 29.698881, 40.940994>,  <28.535686, 29.633493, 40.761066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390945, 29.698881, 40.940994>,  <28.149710, 29.807859, 41.240875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390945, 29.698881, 40.940994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454009, -0.890017, -0.041786,
		-0.655864, 0.365572, -0.660454,
		0.603091, -0.272446, -0.749703,
		28.571873, 29.617147, 40.716084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658953, 29.615908, 40.701580>,  <28.149710, 29.807859, 41.240875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658953, 29.615908, 40.701580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018803, 29.449295, 40.649162>,  <28.234713, 29.349327, 40.617710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018803, 29.449295, 40.649162>,  <27.658953, 29.615908, 40.701580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018803, 29.449295, 40.649162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412908, -0.909109, 0.055030,
		-0.142058, 0.004604, -0.989847,
		0.899626, -0.416534, -0.131047,
		28.288691, 29.324335, 40.609848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526024, 28.978296, 40.414402>,  <27.658953, 29.615908, 40.701580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526024, 28.978296, 40.414402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.916622, 28.929125, 40.485222>,  <28.150980, 28.899622, 40.527714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.916622, 28.929125, 40.485222>,  <27.526024, 28.978296, 40.414402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916622, 28.929125, 40.485222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141162, -0.985483, 0.094321,
		0.162888, -0.117097, -0.979671,
		0.976494, -0.122929, 0.177053,
		28.209570, 28.892246, 40.538338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834105, 28.583073, 39.937386>,  <27.526024, 28.978296, 40.414402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834105, 28.583073, 39.937386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057436, 28.541565, 40.266628>,  <28.191435, 28.516661, 40.464172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057436, 28.541565, 40.266628>,  <27.834105, 28.583073, 39.937386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057436, 28.541565, 40.266628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190879, -0.981597, 0.005726,
		0.807363, -0.160310, -0.567861,
		0.558329, -0.103770, 0.823104,
		28.224936, 28.510433, 40.513561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169796, 27.971840, 39.817722>,  <27.834105, 28.583073, 39.937386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169796, 27.971840, 39.817722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.202286, 28.027418, 40.212509>,  <28.221779, 28.060766, 40.449379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.202286, 28.027418, 40.212509>,  <28.169796, 27.971840, 39.817722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202286, 28.027418, 40.212509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131777, -0.980045, 0.148818,
		0.987946, -0.142147, -0.061290,
		0.081221, 0.138948, 0.986963,
		28.226652, 28.069103, 40.508598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.221928, 29.222290, 47.239933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.858288, 29.099848, 47.352951>,  <38.640102, 29.026382, 47.420761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.858288, 29.099848, 47.352951>,  <39.221928, 29.222290, 47.239933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858288, 29.099848, 47.352951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295363, 0.004657, 0.955374,
		-0.293760, 0.951987, 0.086178,
		-0.909102, -0.306104, 0.282550,
		38.585556, 29.008017, 47.437717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066853, 29.671089, 47.734699>,  <39.221928, 29.222290, 47.239933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066853, 29.671089, 47.734699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.820499, 29.361637, 47.794285>,  <38.672688, 29.175966, 47.830036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.820499, 29.361637, 47.794285>,  <39.066853, 29.671089, 47.734699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820499, 29.361637, 47.794285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161419, 0.061154, 0.984989,
		-0.771126, 0.630681, 0.087214,
		-0.615880, -0.773629, 0.148961,
		38.635735, 29.129549, 47.838974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684776, 29.883942, 48.313335>,  <39.066853, 29.671089, 47.734699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684776, 29.883942, 48.313335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.622524, 29.489538, 48.289467>,  <38.585171, 29.252895, 48.275146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.622524, 29.489538, 48.289467>,  <38.684776, 29.883942, 48.313335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622524, 29.489538, 48.289467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074533, -0.071954, 0.994619,
		-0.984999, 0.150349, 0.084689,
		-0.155634, -0.986011, -0.059668,
		38.575832, 29.193735, 48.271564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073292, 29.730843, 48.781017>,  <38.684776, 29.883942, 48.313335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073292, 29.730843, 48.781017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256958, 29.377863, 48.740120>,  <38.367157, 29.166075, 48.715580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256958, 29.377863, 48.740120>,  <38.073292, 29.730843, 48.781017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256958, 29.377863, 48.740120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189093, -0.015367, 0.981839,
		-0.867993, -0.470159, 0.159809,
		0.459165, -0.882448, -0.102242,
		38.394707, 29.113129, 48.709446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961121, 29.434937, 49.380383>,  <38.073292, 29.730843, 48.781017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961121, 29.434937, 49.380383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.270252, 29.230135, 49.230404>,  <38.455730, 29.107254, 49.140415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.270252, 29.230135, 49.230404>,  <37.961121, 29.434937, 49.380383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270252, 29.230135, 49.230404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343464, -0.159356, 0.925548,
		-0.533634, -0.844072, 0.052699,
		0.772831, -0.512004, -0.374946,
		38.502102, 29.076534, 49.117920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889805, 28.749453, 49.636047>,  <37.961121, 29.434937, 49.380383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889805, 28.749453, 49.636047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.267525, 28.858217, 49.561905>,  <38.494156, 28.923475, 49.517418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.267525, 28.858217, 49.561905>,  <37.889805, 28.749453, 49.636047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267525, 28.858217, 49.561905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223077, -0.114835, 0.968013,
		0.241930, -0.955445, -0.169096,
		0.944302, 0.271913, -0.185356,
		38.550816, 28.939791, 49.506298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241863, 28.242138, 49.977856>,  <37.889805, 28.749453, 49.636047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241863, 28.242138, 49.977856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524048, 28.516678, 49.907139>,  <38.693359, 28.681402, 49.864708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524048, 28.516678, 49.907139>,  <38.241863, 28.242138, 49.977856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524048, 28.516678, 49.907139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405563, -0.186352, 0.894869,
		0.581246, -0.702994, -0.409821,
		0.705459, 0.686347, -0.176792,
		38.735687, 28.722582, 49.854103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781734, 27.954590, 50.256050>,  <38.241863, 28.242138, 49.977856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781734, 27.954590, 50.256050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.897846, 28.336327, 50.227859>,  <38.967514, 28.565369, 50.210945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.897846, 28.336327, 50.227859>,  <38.781734, 27.954590, 50.256050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897846, 28.336327, 50.227859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474330, -0.079529, 0.876747,
		0.831112, -0.287934, -0.475759,
		0.290282, 0.954342, -0.070478,
		38.984932, 28.622629, 50.206715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447330, 27.951414, 50.391891>,  <38.781734, 27.954590, 50.256050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447330, 27.951414, 50.391891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336563, 28.327312, 50.472088>,  <39.270103, 28.552851, 50.520206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336563, 28.327312, 50.472088>,  <39.447330, 27.951414, 50.391891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336563, 28.327312, 50.472088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555853, -0.013534, 0.831170,
		0.783801, 0.341611, -0.518612,
		-0.276918, 0.939744, 0.200494,
		39.253487, 28.609236, 50.532234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035118, 28.245867, 50.656342>,  <39.447330, 27.951414, 50.391891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035118, 28.245867, 50.656342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.719700, 28.454140, 50.787231>,  <39.530449, 28.579103, 50.865765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.719700, 28.454140, 50.787231>,  <40.035118, 28.245867, 50.656342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719700, 28.454140, 50.787231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355052, -0.048997, 0.933562,
		0.502124, 0.852342, -0.146234,
		-0.788549, 0.520685, 0.327229,
		39.483135, 28.610346, 50.885399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325020, 28.574293, 51.306599>,  <40.035118, 28.245867, 50.656342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325020, 28.574293, 51.306599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.927067, 28.595728, 51.340847>,  <39.688293, 28.608589, 51.361397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.927067, 28.595728, 51.340847>,  <40.325020, 28.574293, 51.306599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927067, 28.595728, 51.340847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075991, -0.161414, 0.983957,
		0.066547, 0.985431, 0.156517,
		-0.994885, 0.053585, 0.085626,
		39.628601, 28.611803, 51.366535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102989, 29.157173, 51.739502>,  <40.325020, 28.574293, 51.306599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102989, 29.157173, 51.739502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.837410, 28.858906, 51.761929>,  <39.678062, 28.679945, 51.775387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.837410, 28.858906, 51.761929>,  <40.102989, 29.157173, 51.739502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837410, 28.858906, 51.761929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126355, -0.037974, 0.991258,
		-0.737022, 0.665233, 0.119432,
		-0.663953, -0.745670, 0.056068,
		39.638226, 28.635204, 51.778748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591789, 29.258049, 52.222622>,  <40.102989, 29.157173, 51.739502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591789, 29.258049, 52.222622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.641216, 28.862688, 52.187321>,  <39.670872, 28.625471, 52.166142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.641216, 28.862688, 52.187321>,  <39.591789, 29.258049, 52.222622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641216, 28.862688, 52.187321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109062, -0.101919, 0.988796,
		-0.986325, -0.112558, -0.120391,
		0.123567, -0.988404, -0.088249,
		39.678288, 28.566166, 52.160847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109520, 28.673876, 52.629341>,  <39.591789, 29.258049, 52.222622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109520, 28.673876, 52.629341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.474628, 28.514704, 52.592468>,  <39.693695, 28.419201, 52.570343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.474628, 28.514704, 52.592468>,  <39.109520, 28.673876, 52.629341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474628, 28.514704, 52.592468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015203, -0.192428, 0.981193,
		-0.408185, -0.897008, -0.169594,
		0.912773, -0.397930, -0.092184,
		39.748459, 28.395325, 52.564812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187054, 29.348030, 52.925133>,  <39.109520, 28.673876, 52.629341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187054, 29.348030, 52.925133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.239010, 29.690363, 53.125404>,  <39.270184, 29.895761, 53.245567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.239010, 29.690363, 53.125404>,  <39.187054, 29.348030, 52.925133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239010, 29.690363, 53.125404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020015, 0.502595, -0.864290,
		-0.991326, 0.122284, 0.048153,
		0.129890, 0.855830, 0.500683,
		39.277977, 29.947111, 53.275608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675457, 29.834068, 52.657722>,  <39.187054, 29.348030, 52.925133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675457, 29.834068, 52.657722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.941051, 30.070244, 52.841248>,  <39.100407, 30.211950, 52.951363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.941051, 30.070244, 52.841248>,  <38.675457, 29.834068, 52.657722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941051, 30.070244, 52.841248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154329, 0.708589, -0.688538,
		-0.731649, 0.386370, 0.561612,
		0.663983, 0.590441, 0.458810,
		39.140247, 30.247375, 52.978889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385651, 30.569935, 52.619984>,  <38.675457, 29.834068, 52.657722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385651, 30.569935, 52.619984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.781826, 30.594938, 52.669189>,  <39.019531, 30.609940, 52.698711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.781826, 30.594938, 52.669189>,  <38.385651, 30.569935, 52.619984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781826, 30.594938, 52.669189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052422, 0.654192, -0.754509,
		-0.127635, 0.753741, 0.644658,
		0.990435, 0.062507, 0.123011,
		39.078957, 30.613691, 52.706093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390175, 31.241247, 52.637703>,  <38.385651, 30.569935, 52.619984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390175, 31.241247, 52.637703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.748322, 31.106256, 52.521469>,  <38.963207, 31.025263, 52.451729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.748322, 31.106256, 52.521469>,  <38.390175, 31.241247, 52.637703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748322, 31.106256, 52.521469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076878, 0.525570, -0.847270,
		0.438652, 0.780953, 0.444631,
		0.895362, -0.337474, -0.290581,
		39.016930, 31.005014, 52.434296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662270, 31.798557, 52.269321>,  <38.390175, 31.241247, 52.637703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662270, 31.798557, 52.269321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.874744, 31.480921, 52.151165>,  <39.002228, 31.290339, 52.080269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.874744, 31.480921, 52.151165>,  <38.662270, 31.798557, 52.269321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874744, 31.480921, 52.151165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069163, 0.306844, -0.949243,
		0.844427, 0.524655, 0.108070,
		0.531186, -0.794093, -0.295394,
		39.034100, 31.242693, 52.062546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160770, 32.080696, 51.768814>,  <38.662270, 31.798557, 52.269321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160770, 32.080696, 51.768814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.144188, 31.686398, 51.703587>,  <39.134239, 31.449820, 51.664452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.144188, 31.686398, 51.703587>,  <39.160770, 32.080696, 51.768814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144188, 31.686398, 51.703587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075099, 0.165818, -0.983293,
		0.996314, -0.028520, -0.080903,
		-0.041458, -0.985744, -0.163065,
		39.131752, 31.390675, 51.654667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746269, 31.882471, 51.339569>,  <39.160770, 32.080696, 51.768814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746269, 31.882471, 51.339569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.449318, 31.622925, 51.272827>,  <39.271145, 31.467197, 51.232780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.449318, 31.622925, 51.272827>,  <39.746269, 31.882471, 51.339569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449318, 31.622925, 51.272827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024359, 0.275027, -0.961128,
		0.669533, -0.709460, -0.219981,
		-0.742382, -0.648866, -0.166858,
		39.226604, 31.428265, 51.222771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940750, 31.444286, 50.805012>,  <39.746269, 31.882471, 51.339569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940750, 31.444286, 50.805012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541508, 31.421146, 50.813335>,  <39.301960, 31.407263, 50.818329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541508, 31.421146, 50.813335>,  <39.940750, 31.444286, 50.805012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541508, 31.421146, 50.813335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034922, 0.254959, -0.966321,
		0.050597, -0.965220, -0.256497,
		-0.998108, -0.057850, 0.020808,
		39.242077, 31.403791, 50.819576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901661, 31.079376, 50.302448>,  <39.940750, 31.444286, 50.805012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901661, 31.079376, 50.302448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.538315, 31.236799, 50.359001>,  <39.320309, 31.331253, 50.392933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.538315, 31.236799, 50.359001>,  <39.901661, 31.079376, 50.302448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538315, 31.236799, 50.359001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027256, 0.281647, -0.959131,
		-0.417295, -0.875092, -0.245111,
		-0.908362, 0.393560, 0.141381,
		39.265804, 31.354868, 50.401417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539238, 30.900204, 49.675327>,  <39.901661, 31.079376, 50.302448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539238, 30.900204, 49.675327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.292675, 31.168840, 49.839767>,  <39.144737, 31.330023, 49.938431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.292675, 31.168840, 49.839767>,  <39.539238, 30.900204, 49.675327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292675, 31.168840, 49.839767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190497, 0.379382, -0.905417,
		-0.764035, -0.636421, -0.105919,
		-0.616410, 0.671593, 0.411097,
		39.107754, 31.370319, 49.963097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931656, 30.860586, 49.284973>,  <39.539238, 30.900204, 49.675327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931656, 30.860586, 49.284973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.927841, 31.227625, 49.443932>,  <38.925552, 31.447849, 49.539307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.927841, 31.227625, 49.443932>,  <38.931656, 30.860586, 49.284973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927841, 31.227625, 49.443932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109613, 0.394058, -0.912526,
		-0.993929, -0.052264, 0.096822,
		-0.009539, 0.917598, 0.397395,
		38.924980, 31.502905, 49.563148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441483, 31.185190, 48.969719>,  <38.931656, 30.860586, 49.284973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441483, 31.185190, 48.969719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637833, 31.497311, 49.124725>,  <38.755642, 31.684584, 49.217728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637833, 31.497311, 49.124725>,  <38.441483, 31.185190, 48.969719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637833, 31.497311, 49.124725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069999, 0.478677, -0.875196,
		-0.868412, 0.402489, 0.289592,
		0.490878, 0.780302, 0.387515,
		38.785095, 31.731401, 49.240978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013760, 31.741196, 48.847847>,  <38.441483, 31.185190, 48.969719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013760, 31.741196, 48.847847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.376701, 31.893763, 48.918530>,  <38.594467, 31.985302, 48.960938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.376701, 31.893763, 48.918530>,  <38.013760, 31.741196, 48.847847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376701, 31.893763, 48.918530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064775, 0.542210, -0.837743,
		-0.415341, 0.748685, 0.516684,
		0.907356, 0.381417, 0.176706,
		38.648907, 32.008186, 48.971542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829563, 32.422905, 48.804756>,  <38.013760, 31.741196, 48.847847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829563, 32.422905, 48.804756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225391, 32.409222, 48.748787>,  <38.462887, 32.401012, 48.715206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225391, 32.409222, 48.748787>,  <37.829563, 32.422905, 48.804756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225391, 32.409222, 48.748787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104440, 0.498610, -0.860512,
		0.099204, 0.866151, 0.489837,
		0.989571, -0.034208, -0.139925,
		38.522263, 32.398960, 48.706810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361416, 32.880322, 49.105637>,  <37.829563, 32.422905, 48.804756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361416, 32.880322, 49.105637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964371, 32.912643, 49.069450>,  <36.726143, 32.932037, 49.047741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964371, 32.912643, 49.069450>,  <37.361416, 32.880322, 49.105637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964371, 32.912643, 49.069450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113444, -0.354427, 0.928177,
		0.042941, 0.931585, 0.360977,
		-0.992616, 0.080807, -0.090463,
		36.666584, 32.936886, 49.042313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126068, 33.172623, 49.720078>,  <37.361416, 32.880322, 49.105637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126068, 33.172623, 49.720078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.842529, 32.950764, 49.545765>,  <36.672405, 32.817650, 49.441177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.842529, 32.950764, 49.545765>,  <37.126068, 33.172623, 49.720078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842529, 32.950764, 49.545765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166200, -0.469087, 0.867373,
		-0.685507, 0.687258, 0.240326,
		-0.708843, -0.554648, -0.435784,
		36.629875, 32.784370, 49.415031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652710, 33.182961, 50.221424>,  <37.126068, 33.172623, 49.720078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652710, 33.182961, 50.221424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.550415, 32.869183, 49.995419>,  <36.489040, 32.680916, 49.859814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.550415, 32.869183, 49.995419>,  <36.652710, 33.182961, 50.221424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550415, 32.869183, 49.995419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499972, -0.392902, 0.771788,
		-0.827423, 0.479864, -0.291724,
		-0.255734, -0.784448, -0.565014,
		36.473694, 32.633846, 49.825912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935955, 33.124500, 50.347988>,  <36.652710, 33.182961, 50.221424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935955, 33.124500, 50.347988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027229, 32.767406, 50.192581>,  <36.081993, 32.553150, 50.099335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027229, 32.767406, 50.192581>,  <35.935955, 33.124500, 50.347988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027229, 32.767406, 50.192581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432906, -0.450465, 0.780816,
		-0.872079, -0.009980, -0.489263,
		0.228188, -0.892738, -0.388521,
		36.095684, 32.499584, 50.076023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316193, 32.655846, 50.538952>,  <35.935955, 33.124500, 50.347988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316193, 32.655846, 50.538952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608929, 32.400417, 50.443760>,  <35.784573, 32.247162, 50.386646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608929, 32.400417, 50.443760>,  <35.316193, 32.655846, 50.538952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608929, 32.400417, 50.443760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179263, -0.517307, 0.836814,
		-0.657472, -0.569756, -0.493060,
		0.731843, -0.638570, -0.237979,
		35.828484, 32.208847, 50.372368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126923, 31.945635, 50.646717>,  <35.316193, 32.655846, 50.538952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126923, 31.945635, 50.646717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525810, 31.918215, 50.658466>,  <35.765141, 31.901762, 50.665516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525810, 31.918215, 50.658466>,  <35.126923, 31.945635, 50.646717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525810, 31.918215, 50.658466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058379, -0.472332, 0.879485,
		-0.046413, -0.878751, -0.475019,
		0.997215, -0.068550, 0.029378,
		35.824974, 31.897650, 50.667278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291878, 31.237906, 50.820774>,  <35.126923, 31.945635, 50.646717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291878, 31.237906, 50.820774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609299, 31.462879, 50.913673>,  <35.799751, 31.597864, 50.969414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609299, 31.462879, 50.913673>,  <35.291878, 31.237906, 50.820774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609299, 31.462879, 50.913673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151636, -0.552410, 0.819665,
		0.589303, -0.615232, -0.523653,
		0.793554, 0.562435, 0.232245,
		35.847366, 31.631609, 50.983345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324829, 30.484547, 50.767365>,  <35.291878, 31.237906, 50.820774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324829, 30.484547, 50.767365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981724, 30.284920, 50.718102>,  <34.775860, 30.165144, 50.688545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981724, 30.284920, 50.718102>,  <35.324829, 30.484547, 50.767365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981724, 30.284920, 50.718102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085944, 0.375454, -0.922847,
		0.506804, -0.781002, -0.364944,
		-0.857766, -0.499068, -0.123159,
		34.724396, 30.135199, 50.681152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349625, 30.110907, 50.114338>,  <35.324829, 30.484547, 50.767365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349625, 30.110907, 50.114338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961174, 30.158676, 50.196945>,  <34.728104, 30.187338, 50.246510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961174, 30.158676, 50.196945>,  <35.349625, 30.110907, 50.114338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961174, 30.158676, 50.196945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131001, 0.456522, -0.880015,
		-0.199373, -0.881661, -0.427697,
		-0.971128, 0.119423, 0.206516,
		34.669834, 30.194502, 50.258900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032852, 30.019697, 49.493122>,  <35.349625, 30.110907, 50.114338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032852, 30.019697, 49.493122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740055, 30.178307, 49.714737>,  <34.564377, 30.273472, 49.847706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740055, 30.178307, 49.714737>,  <35.032852, 30.019697, 49.493122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740055, 30.178307, 49.714737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351427, 0.476925, -0.805631,
		-0.583688, -0.784418, -0.209755,
		-0.731989, 0.396523, 0.554041,
		34.520458, 30.297264, 49.880951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454109, 29.921717, 49.089191>,  <35.032852, 30.019697, 49.493122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454109, 29.921717, 49.089191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394802, 30.222668, 49.345921>,  <34.359219, 30.403238, 49.499958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394802, 30.222668, 49.345921>,  <34.454109, 29.921717, 49.089191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394802, 30.222668, 49.345921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464837, 0.519819, -0.716739,
		-0.872893, -0.404616, 0.272660,
		-0.148271, 0.752379, 0.641827,
		34.350323, 30.448381, 49.538467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733753, 30.208790, 49.059975>,  <34.454109, 29.921717, 49.089191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733753, 30.208790, 49.059975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918129, 30.517088, 49.235924>,  <34.028755, 30.702066, 49.341492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918129, 30.517088, 49.235924>,  <33.733753, 30.208790, 49.059975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918129, 30.517088, 49.235924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493948, 0.634614, -0.594374,
		-0.737261, 0.056694, 0.673225,
		0.460936, 0.770747, 0.439872,
		34.056408, 30.748312, 49.367886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162086, 30.650951, 49.227558>,  <33.733753, 30.208790, 49.059975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162086, 30.650951, 49.227558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496841, 30.869898, 49.228741>,  <33.697693, 31.001266, 49.229450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496841, 30.869898, 49.228741>,  <33.162086, 30.650951, 49.227558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496841, 30.869898, 49.228741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405653, 0.623828, -0.668045,
		-0.367513, 0.557877, 0.744115,
		0.836887, 0.547368, 0.002960,
		33.747906, 31.034107, 49.229630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975945, 31.418665, 49.208633>,  <33.162086, 30.650951, 49.227558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975945, 31.418665, 49.208633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344822, 31.391003, 49.056438>,  <33.566151, 31.374405, 48.965122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344822, 31.391003, 49.056438>,  <32.975945, 31.418665, 49.208633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344822, 31.391003, 49.056438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261877, 0.612286, -0.746007,
		0.284559, 0.787606, 0.546537,
		0.922197, -0.069158, -0.380487,
		33.621483, 31.370255, 48.942291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.281479, 26.948797, 51.064514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031303, 27.081392, 50.781971>,  <35.881199, 27.160950, 50.612446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031303, 27.081392, 50.781971>,  <36.281479, 26.948797, 51.064514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031303, 27.081392, 50.781971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510530, -0.858453, 0.049181,
		-0.590074, 0.391377, 0.706142,
		-0.625437, 0.331486, -0.706360,
		35.843674, 27.180838, 50.570065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739456, 27.136496, 50.407959>,  <36.281479, 26.948797, 51.064514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739456, 27.136496, 50.407959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.118553, 27.234688, 50.489475>,  <37.346012, 27.293602, 50.538387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.118553, 27.234688, 50.489475>,  <36.739456, 27.136496, 50.407959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118553, 27.234688, 50.489475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240622, -0.130507, -0.961805,
		-0.209506, 0.960577, -0.182754,
		0.947739, 0.245478, 0.203794,
		37.402874, 27.308331, 50.550613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994305, 27.692453, 49.992611>,  <36.739456, 27.136496, 50.407959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994305, 27.692453, 49.992611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.306297, 27.476881, 50.119846>,  <37.493492, 27.347538, 50.196186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.306297, 27.476881, 50.119846>,  <36.994305, 27.692453, 49.992611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306297, 27.476881, 50.119846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148292, -0.334639, -0.930605,
		0.607974, 0.773028, -0.181094,
		0.779986, -0.538929, 0.318086,
		37.540295, 27.315203, 50.215271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590302, 27.874863, 49.637859>,  <36.994305, 27.692453, 49.992611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590302, 27.874863, 49.637859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.665836, 27.508747, 49.780174>,  <37.711159, 27.289078, 49.865562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.665836, 27.508747, 49.780174>,  <37.590302, 27.874863, 49.637859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665836, 27.508747, 49.780174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257714, -0.303420, -0.917344,
		0.947588, 0.264924, 0.178585,
		0.188840, -0.915288, 0.355791,
		37.722488, 27.234161, 49.886913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240913, 27.663969, 49.353184>,  <37.590302, 27.874863, 49.637859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240913, 27.663969, 49.353184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.034973, 27.332747, 49.441956>,  <37.911411, 27.134012, 49.495216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.034973, 27.332747, 49.441956>,  <38.240913, 27.663969, 49.353184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034973, 27.332747, 49.441956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250989, -0.393123, -0.884567,
		0.819717, -0.399717, 0.410232,
		-0.514848, -0.828058, 0.221925,
		37.880520, 27.084330, 49.508533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539314, 27.204580, 49.051487>,  <38.240913, 27.663969, 49.353184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539314, 27.204580, 49.051487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.201370, 26.998859, 49.110409>,  <37.998604, 26.875427, 49.145763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.201370, 26.998859, 49.110409>,  <38.539314, 27.204580, 49.051487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201370, 26.998859, 49.110409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072571, -0.382979, -0.920902,
		0.530036, -0.767347, 0.360889,
		-0.844864, -0.514302, 0.147306,
		37.947910, 26.844568, 49.154602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536652, 26.533297, 48.579967>,  <38.539314, 27.204580, 49.051487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536652, 26.533297, 48.579967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.142433, 26.545910, 48.646542>,  <37.905903, 26.553478, 48.686485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.142433, 26.545910, 48.646542>,  <38.536652, 26.533297, 48.579967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142433, 26.545910, 48.646542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166388, -0.364481, -0.916225,
		0.031770, -0.930677, 0.364461,
		-0.985548, 0.031533, 0.166433,
		37.846767, 26.555370, 48.696472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313614, 26.025602, 48.063553>,  <38.536652, 26.533297, 48.579967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313614, 26.025602, 48.063553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.966511, 26.186979, 48.179638>,  <37.758247, 26.283806, 48.249290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.966511, 26.186979, 48.179638>,  <38.313614, 26.025602, 48.063553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966511, 26.186979, 48.179638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396533, -0.210046, -0.893668,
		-0.299586, -0.890570, 0.342248,
		-0.867761, 0.403443, 0.290214,
		37.706181, 26.308012, 48.266701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708977, 25.579103, 47.965004>,  <38.313614, 26.025602, 48.063553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708977, 25.579103, 47.965004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.549183, 25.945652, 47.975365>,  <37.453308, 26.165581, 47.981583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.549183, 25.945652, 47.975365>,  <37.708977, 25.579103, 47.965004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549183, 25.945652, 47.975365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432829, -0.163633, -0.886500,
		-0.808128, -0.365354, 0.462002,
		-0.399485, 0.916374, 0.025900,
		37.429337, 26.220564, 47.983135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121513, 25.460077, 47.611980>,  <37.708977, 25.579103, 47.965004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121513, 25.460077, 47.611980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101063, 25.859161, 47.594265>,  <37.088795, 26.098612, 47.583637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101063, 25.859161, 47.594265>,  <37.121513, 25.460077, 47.611980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101063, 25.859161, 47.594265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440485, -0.062328, -0.895594,
		-0.896303, -0.026277, 0.442662,
		-0.051123, 0.997710, -0.044290,
		37.085724, 26.158474, 47.580978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414448, 25.679720, 47.394814>,  <37.121513, 25.460077, 47.611980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414448, 25.679720, 47.394814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.676838, 25.972855, 47.322540>,  <36.834274, 26.148735, 47.279179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.676838, 25.972855, 47.322540>,  <36.414448, 25.679720, 47.394814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676838, 25.972855, 47.322540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340227, 0.073412, -0.937473,
		-0.673750, 0.676433, 0.297487,
		0.655977, 0.732836, -0.180679,
		36.873631, 26.192705, 47.268337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972485, 26.125690, 46.992138>,  <36.414448, 25.679720, 47.394814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972485, 26.125690, 46.992138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.343182, 26.259863, 46.924454>,  <36.565601, 26.340366, 46.883842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.343182, 26.259863, 46.924454>,  <35.972485, 26.125690, 46.992138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343182, 26.259863, 46.924454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191342, 0.033799, -0.980941,
		-0.323319, 0.941458, 0.095505,
		0.926743, 0.335431, -0.169213,
		36.621204, 26.360493, 46.873692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549515, 26.735376, 47.315254>,  <35.972485, 26.125690, 46.992138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549515, 26.735376, 47.315254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.193104, 26.911556, 47.271290>,  <34.979259, 27.017263, 47.244911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.193104, 26.911556, 47.271290>,  <35.549515, 26.735376, 47.315254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193104, 26.911556, 47.271290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022920, 0.285454, 0.958118,
		0.453377, 0.851187, -0.264441,
		-0.891024, 0.440450, -0.109909,
		34.925797, 27.043692, 47.238316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596893, 27.388592, 47.620518>,  <35.549515, 26.735376, 47.315254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596893, 27.388592, 47.620518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.220314, 27.254576, 47.635639>,  <34.994366, 27.174166, 47.644714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.220314, 27.254576, 47.635639>,  <35.596893, 27.388592, 47.620518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220314, 27.254576, 47.635639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087686, 0.351566, 0.932047,
		-0.325564, 0.874157, -0.360358,
		-0.941445, -0.335040, 0.037806,
		34.937881, 27.154064, 47.646980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220375, 27.846073, 48.127304>,  <35.596893, 27.388592, 47.620518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220375, 27.846073, 48.127304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.964363, 27.540232, 48.096977>,  <34.810757, 27.356728, 48.078781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.964363, 27.540232, 48.096977>,  <35.220375, 27.846073, 48.127304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964363, 27.540232, 48.096977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294301, 0.152808, 0.943417,
		-0.709754, 0.626126, -0.322825,
		-0.640029, -0.764602, -0.075814,
		34.772354, 27.310852, 48.074234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570805, 28.028948, 48.480389>,  <35.220375, 27.846073, 48.127304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570805, 28.028948, 48.480389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589146, 27.629644, 48.465557>,  <34.600151, 27.390062, 48.456657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589146, 27.629644, 48.465557>,  <34.570805, 28.028948, 48.480389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589146, 27.629644, 48.465557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358183, -0.051078, 0.932253,
		-0.932525, -0.029471, -0.359902,
		0.045857, -0.998260, -0.037075,
		34.602901, 27.330166, 48.454433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108406, 27.884386, 48.986977>,  <34.570805, 28.028948, 48.480389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108406, 27.884386, 48.986977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249222, 27.517338, 48.913170>,  <34.333710, 27.297110, 48.868885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249222, 27.517338, 48.913170>,  <34.108406, 27.884386, 48.986977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249222, 27.517338, 48.913170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247464, -0.281364, 0.927144,
		-0.902681, -0.280727, -0.326128,
		0.352035, -0.917620, -0.184512,
		34.354832, 27.242052, 48.857815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584625, 27.346094, 49.080036>,  <34.108406, 27.884386, 48.986977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584625, 27.346094, 49.080036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.948196, 27.193302, 49.146896>,  <34.166340, 27.101627, 49.187012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.948196, 27.193302, 49.146896>,  <33.584625, 27.346094, 49.080036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948196, 27.193302, 49.146896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303115, -0.330065, 0.893968,
		-0.286306, -0.863220, -0.415789,
		0.908928, -0.381980, 0.167155,
		34.220875, 27.078709, 49.197044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454754, 26.743256, 49.410107>,  <33.584625, 27.346094, 49.080036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454754, 26.743256, 49.410107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843868, 26.780975, 49.494762>,  <34.077339, 26.803608, 49.545555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843868, 26.780975, 49.494762>,  <33.454754, 26.743256, 49.410107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843868, 26.780975, 49.494762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156071, -0.408434, 0.899346,
		0.171249, -0.907903, -0.382602,
		0.972787, 0.094299, 0.211641,
		34.135704, 26.809265, 49.558254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638889, 26.108656, 49.646687>,  <33.454754, 26.743256, 49.410107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638889, 26.108656, 49.646687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.900692, 26.369118, 49.800373>,  <34.057774, 26.525394, 49.892586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.900692, 26.369118, 49.800373>,  <33.638889, 26.108656, 49.646687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900692, 26.369118, 49.800373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219690, -0.322469, 0.920734,
		0.723438, -0.687032, -0.068005,
		0.654503, 0.651154, 0.384220,
		34.097042, 26.564465, 49.915638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995644, 25.743557, 50.120964>,  <33.638889, 26.108656, 49.646687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995644, 25.743557, 50.120964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051662, 26.121605, 50.239040>,  <34.085274, 26.348434, 50.309887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051662, 26.121605, 50.239040>,  <33.995644, 25.743557, 50.120964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051662, 26.121605, 50.239040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061604, -0.289233, 0.955275,
		0.988227, -0.151968, 0.017717,
		0.140046, 0.945119, 0.295189,
		34.093678, 26.405140, 50.327599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382084, 25.650610, 50.754059>,  <33.995644, 25.743557, 50.120964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382084, 25.650610, 50.754059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256920, 26.030159, 50.737446>,  <34.181820, 26.257889, 50.727478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256920, 26.030159, 50.737446>,  <34.382084, 25.650610, 50.754059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256920, 26.030159, 50.737446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037947, 0.031202, 0.998792,
		0.949024, 0.314108, 0.026244,
		-0.312910, 0.948874, -0.041531,
		34.163048, 26.314821, 50.724987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768936, 25.996050, 51.309719>,  <34.382084, 25.650610, 50.754059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768936, 25.996050, 51.309719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.473549, 26.257460, 51.243301>,  <34.296318, 26.414307, 51.203449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.473549, 26.257460, 51.243301>,  <34.768936, 25.996050, 51.309719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473549, 26.257460, 51.243301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220538, -0.001386, 0.975377,
		0.637204, 0.756902, 0.145151,
		-0.738467, 0.653526, -0.166043,
		34.252010, 26.453518, 51.193489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859516, 26.510988, 51.652012>,  <34.768936, 25.996050, 51.309719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859516, 26.510988, 51.652012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459572, 26.509598, 51.645565>,  <34.219604, 26.508764, 51.641697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459572, 26.509598, 51.645565>,  <34.859516, 26.510988, 51.652012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459572, 26.509598, 51.645565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016490, 0.208819, 0.977815,
		-0.000033, 0.977948, -0.208847,
		-0.999864, -0.003476, -0.016119,
		34.159611, 26.508554, 51.640728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621811, 27.135077, 51.891830>,  <34.859516, 26.510988, 51.652012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621811, 27.135077, 51.891830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.287525, 26.922741, 51.948109>,  <34.086956, 26.795340, 51.981876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.287525, 26.922741, 51.948109>,  <34.621811, 27.135077, 51.891830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287525, 26.922741, 51.948109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030914, 0.301259, 0.953041,
		-0.548298, 0.792118, -0.268176,
		-0.835712, -0.530841, 0.140692,
		34.036812, 26.763489, 51.990314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185558, 27.450573, 52.472042>,  <34.621811, 27.135077, 51.891830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185558, 27.450573, 52.472042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.021801, 27.086372, 52.448761>,  <33.923546, 26.867853, 52.434792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.021801, 27.086372, 52.448761>,  <34.185558, 27.450573, 52.472042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021801, 27.086372, 52.448761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147215, 0.002967, 0.989100,
		-0.900403, 0.413499, -0.135254,
		-0.409393, -0.910500, -0.058202,
		33.898983, 26.813223, 52.431301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648342, 27.729231, 52.035168>,  <34.185558, 27.450573, 52.472042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648342, 27.729231, 52.035168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303665, 27.539768, 51.962349>,  <33.096859, 27.426090, 51.918655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303665, 27.539768, 51.962349>,  <33.648342, 27.729231, 52.035168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303665, 27.539768, 51.962349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444875, -0.532586, -0.720026,
		0.244089, -0.701428, 0.669641,
		-0.861688, -0.473657, -0.182050,
		33.045158, 27.397671, 51.907734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240185, 28.271473, 52.320572>,  <33.648342, 27.729231, 52.035168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240185, 28.271473, 52.320572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.562153, 28.467762, 52.454018>,  <33.755333, 28.585535, 52.534084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.562153, 28.467762, 52.454018>,  <33.240185, 28.271473, 52.320572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562153, 28.467762, 52.454018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033026, 0.524295, -0.850896,
		-0.592466, 0.695919, 0.405808,
		0.804918, 0.490724, 0.333611,
		33.803627, 28.614979, 52.554100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371078, 28.863510, 51.780144>,  <33.240185, 28.271473, 52.320572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371078, 28.863510, 51.780144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.683189, 28.912481, 52.025478>,  <33.870457, 28.941864, 52.172680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.683189, 28.912481, 52.025478>,  <33.371078, 28.863510, 51.780144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683189, 28.912481, 52.025478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358429, 0.716111, -0.598927,
		-0.512544, 0.687165, 0.514881,
		0.780274, 0.122428, 0.613338,
		33.917271, 28.949209, 52.209480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310829, 29.499666, 52.016388>,  <33.371078, 28.863510, 51.780144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310829, 29.499666, 52.016388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.697010, 29.396473, 52.031040>,  <33.928719, 29.334557, 52.039829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.697010, 29.396473, 52.031040>,  <33.310829, 29.499666, 52.016388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697010, 29.396473, 52.031040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202104, 0.652678, -0.730182,
		0.164468, 0.712360, 0.682271,
		0.965455, -0.257981, 0.036626,
		33.986649, 29.319078, 52.042027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730412, 30.132332, 51.916744>,  <33.310829, 29.499666, 52.016388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730412, 30.132332, 51.916744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998325, 29.846870, 51.834682>,  <34.159073, 29.675592, 51.785446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998325, 29.846870, 51.834682>,  <33.730412, 30.132332, 51.916744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998325, 29.846870, 51.834682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333558, 0.535993, -0.775532,
		0.663422, 0.451009, 0.597045,
		0.669784, -0.713654, -0.205152,
		34.199261, 29.632774, 51.773136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355396, 30.545923, 51.826859>,  <33.730412, 30.132332, 51.916744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355396, 30.545923, 51.826859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.367813, 30.189821, 51.645096>,  <34.375263, 29.976160, 51.536037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.367813, 30.189821, 51.645096>,  <34.355396, 30.545923, 51.826859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367813, 30.189821, 51.645096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228935, 0.448872, -0.863773,
		0.972947, -0.077218, 0.217743,
		0.031039, -0.890254, -0.454406,
		34.377125, 29.922745, 51.508774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960857, 30.616903, 51.354721>,  <34.355396, 30.545923, 51.826859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960857, 30.616903, 51.354721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.731815, 30.318415, 51.218906>,  <34.594391, 30.139322, 51.137417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.731815, 30.318415, 51.218906>,  <34.960857, 30.616903, 51.354721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731815, 30.318415, 51.218906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060106, 0.374823, -0.925146,
		0.817627, -0.550149, -0.169772,
		-0.572602, -0.746220, -0.339533,
		34.560036, 30.094549, 51.117046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678757, 30.761705, 51.362129>,  <34.960857, 30.616903, 51.354721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678757, 30.761705, 51.362129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.864079, 31.114908, 51.392193>,  <35.975269, 31.326830, 51.410233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.864079, 31.114908, 51.392193>,  <35.678757, 30.761705, 51.362129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864079, 31.114908, 51.392193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424041, -0.295361, 0.856126,
		0.778166, -0.364771, -0.511272,
		0.463300, 0.883008, 0.075162,
		36.003067, 31.379810, 51.414742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375259, 30.644178, 51.540936>,  <35.678757, 30.761705, 51.362129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375259, 30.644178, 51.540936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.350975, 31.033909, 51.627659>,  <36.336407, 31.267746, 51.679691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.350975, 31.033909, 51.627659>,  <36.375259, 30.644178, 51.540936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350975, 31.033909, 51.627659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508809, -0.156662, 0.846505,
		0.858736, 0.161702, -0.486235,
		-0.060707, 0.974325, 0.216807,
		36.332764, 31.326206, 51.692699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035717, 30.850424, 51.712879>,  <36.375259, 30.644178, 51.540936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035717, 30.850424, 51.712879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.780930, 31.101418, 51.892002>,  <36.628056, 31.252014, 51.999477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.780930, 31.101418, 51.892002>,  <37.035717, 30.850424, 51.712879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780930, 31.101418, 51.892002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528508, -0.067429, 0.846246,
		0.561200, 0.775705, -0.288680,
		-0.636972, 0.627483, 0.447808,
		36.589836, 31.289661, 52.026344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457813, 31.342564, 52.064075>,  <37.035717, 30.850424, 51.712879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457813, 31.342564, 52.064075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.093952, 31.331903, 52.229877>,  <36.875633, 31.325508, 52.329361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.093952, 31.331903, 52.229877>,  <37.457813, 31.342564, 52.064075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093952, 31.331903, 52.229877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410755, -0.205995, 0.888170,
		0.061717, 0.978190, 0.198330,
		-0.909655, -0.026650, 0.414510,
		36.821056, 31.323908, 52.354229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534561, 31.719276, 52.685196>,  <37.457813, 31.342564, 52.064075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534561, 31.719276, 52.685196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.206936, 31.490700, 52.705536>,  <37.010361, 31.353554, 52.717739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.206936, 31.490700, 52.705536>,  <37.534561, 31.719276, 52.685196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206936, 31.490700, 52.705536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277525, -0.317084, 0.906883,
		-0.502108, 0.756909, 0.418302,
		-0.819065, -0.571442, 0.050851,
		36.961216, 31.319267, 52.720791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412128, 31.815319, 53.313793>,  <37.534561, 31.719276, 52.685196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412128, 31.815319, 53.313793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.179890, 31.503593, 53.219494>,  <37.040546, 31.316559, 53.162914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.179890, 31.503593, 53.219494>,  <37.412128, 31.815319, 53.313793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179890, 31.503593, 53.219494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002481, -0.291238, 0.956648,
		-0.814185, 0.554845, 0.171026,
		-0.580600, -0.779312, -0.235745,
		37.005711, 31.269800, 53.148769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887230, 31.782488, 53.834877>,  <37.412128, 31.815319, 53.313793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887230, 31.782488, 53.834877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.923084, 31.414915, 53.681236>,  <36.944595, 31.194372, 53.589050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.923084, 31.414915, 53.681236>,  <36.887230, 31.782488, 53.834877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923084, 31.414915, 53.681236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153457, -0.368306, 0.916952,
		-0.984082, -0.141134, 0.108003,
		0.089635, -0.918930, -0.384101,
		36.949974, 31.139236, 53.566006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555920, 31.432331, 54.276386>,  <36.887230, 31.782488, 53.834877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555920, 31.432331, 54.276386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.764381, 31.158232, 54.072884>,  <36.889458, 30.993773, 53.950783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.764381, 31.158232, 54.072884>,  <36.555920, 31.432331, 54.276386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764381, 31.158232, 54.072884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174495, -0.497969, 0.849458,
		-0.835437, -0.531470, -0.139944,
		0.521150, -0.685248, -0.508760,
		36.920727, 30.952658, 53.920254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226974, 30.743595, 54.482124>,  <36.555920, 31.432331, 54.276386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226974, 30.743595, 54.482124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.598412, 30.702187, 54.339581>,  <36.821274, 30.677341, 54.254055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.598412, 30.702187, 54.339581>,  <36.226974, 30.743595, 54.482124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598412, 30.702187, 54.339581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315563, -0.285013, 0.905090,
		-0.195261, -0.952917, -0.231996,
		0.928598, -0.103519, -0.356358,
		36.876991, 30.671131, 54.232674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.273712, 34.659576, 38.807274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662865, 34.602959, 38.880451>,  <36.896355, 34.568989, 38.924358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662865, 34.602959, 38.880451>,  <36.273712, 34.659576, 38.807274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662865, 34.602959, 38.880451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194252, -0.070564, 0.978410,
		-0.125583, -0.987413, -0.096146,
		0.972880, -0.141548, 0.182945,
		36.954727, 34.560497, 38.935333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308758, 34.077808, 39.057076>,  <36.273712, 34.659576, 38.807274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308758, 34.077808, 39.057076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620567, 34.289722, 39.190746>,  <36.807652, 34.416870, 39.270950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620567, 34.289722, 39.190746>,  <36.308758, 34.077808, 39.057076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620567, 34.289722, 39.190746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322781, -0.117467, 0.939156,
		0.536804, -0.839959, 0.079436,
		0.779522, 0.529783, 0.334179,
		36.854424, 34.448658, 39.291000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731827, 33.671875, 39.487865>,  <36.308758, 34.077808, 39.057076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731827, 33.671875, 39.487865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826702, 34.044338, 39.598633>,  <36.883629, 34.267815, 39.665092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826702, 34.044338, 39.598633>,  <36.731827, 33.671875, 39.487865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826702, 34.044338, 39.598633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141640, -0.248862, 0.958126,
		0.961082, -0.266483, 0.072861,
		0.237192, 0.931157, 0.276922,
		36.897861, 34.323685, 39.681709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142551, 33.607845, 39.999916>,  <36.731827, 33.671875, 39.487865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142551, 33.607845, 39.999916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993221, 33.973530, 40.062981>,  <36.903625, 34.192940, 40.100819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993221, 33.973530, 40.062981>,  <37.142551, 33.607845, 39.999916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993221, 33.973530, 40.062981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111981, -0.213110, 0.970590,
		0.920919, 0.344688, 0.181933,
		-0.373322, 0.914207, 0.157659,
		36.881226, 34.247791, 40.110279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364857, 33.715076, 40.658493>,  <37.142551, 33.607845, 39.999916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364857, 33.715076, 40.658493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108147, 34.020081, 40.625763>,  <36.954121, 34.203083, 40.606125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108147, 34.020081, 40.625763>,  <37.364857, 33.715076, 40.658493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108147, 34.020081, 40.625763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288605, -0.141284, 0.946967,
		0.710513, 0.631358, 0.310738,
		-0.641778, 0.762513, -0.081830,
		36.915615, 34.248833, 40.601215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487770, 34.153286, 41.171703>,  <37.364857, 33.715076, 40.658493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487770, 34.153286, 41.171703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107155, 34.231293, 41.076588>,  <36.878784, 34.278095, 41.019520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107155, 34.231293, 41.076588>,  <37.487770, 34.153286, 41.171703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107155, 34.231293, 41.076588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251733, -0.049777, 0.966516,
		0.176651, 0.979536, 0.096457,
		-0.951538, 0.195018, -0.237788,
		36.821693, 34.289799, 41.005253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250114, 34.675289, 41.629837>,  <37.487770, 34.153286, 41.171703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250114, 34.675289, 41.629837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924381, 34.515724, 41.461205>,  <36.728939, 34.419987, 41.360027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924381, 34.515724, 41.461205>,  <37.250114, 34.675289, 41.629837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924381, 34.515724, 41.461205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397974, -0.144926, 0.905877,
		-0.422462, 0.905465, -0.040737,
		-0.814336, -0.398911, -0.421577,
		36.680080, 34.396049, 41.334732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661575, 35.097668, 41.843456>,  <37.250114, 34.675289, 41.629837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661575, 35.097668, 41.843456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545315, 34.722416, 41.768158>,  <36.475559, 34.497265, 41.722980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545315, 34.722416, 41.768158>,  <36.661575, 35.097668, 41.843456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545315, 34.722416, 41.768158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451416, -0.039020, 0.891460,
		-0.843651, 0.344077, -0.412146,
		-0.290649, -0.938130, -0.188241,
		36.458118, 34.440975, 41.711685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979404, 35.043625, 42.056309>,  <36.661575, 35.097668, 41.843456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979404, 35.043625, 42.056309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094238, 34.660671, 42.043659>,  <36.163139, 34.430901, 42.036068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094238, 34.660671, 42.043659>,  <35.979404, 35.043625, 42.056309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094238, 34.660671, 42.043659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388597, -0.146577, 0.909674,
		-0.875542, -0.248864, -0.414117,
		0.287085, -0.957383, -0.031627,
		36.180363, 34.373455, 42.034172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357174, 34.634087, 42.198521>,  <35.979404, 35.043625, 42.056309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357174, 34.634087, 42.198521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662525, 34.383106, 42.259914>,  <35.845737, 34.232517, 42.296749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662525, 34.383106, 42.259914>,  <35.357174, 34.634087, 42.198521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662525, 34.383106, 42.259914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340236, -0.188601, 0.921232,
		-0.549083, -0.755468, -0.357456,
		0.763378, -0.627453, 0.153480,
		35.891541, 34.194870, 42.305958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044262, 34.125034, 42.545723>,  <35.357174, 34.634087, 42.198521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044262, 34.125034, 42.545723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435104, 34.086308, 42.621494>,  <35.669609, 34.063072, 42.666958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435104, 34.086308, 42.621494>,  <35.044262, 34.125034, 42.545723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435104, 34.086308, 42.621494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207642, -0.240245, 0.948244,
		-0.046298, -0.965872, -0.254849,
		0.977109, -0.096819, 0.189433,
		35.728237, 34.057262, 42.678326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142853, 33.525166, 42.945789>,  <35.044262, 34.125034, 42.545723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142853, 33.525166, 42.945789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467796, 33.740894, 43.034519>,  <35.662762, 33.870331, 43.087757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467796, 33.740894, 43.034519>,  <35.142853, 33.525166, 42.945789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467796, 33.740894, 43.034519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139320, -0.189875, 0.971873,
		0.566267, -0.820417, -0.079110,
		0.812362, 0.539318, 0.221820,
		35.711506, 33.902691, 43.101067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725208, 32.902912, 43.301205>,  <35.142853, 33.525166, 42.945789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725208, 32.902912, 43.301205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326260, 32.914722, 43.274765>,  <34.086891, 32.921810, 43.258900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326260, 32.914722, 43.274765>,  <34.725208, 32.902912, 43.301205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326260, 32.914722, 43.274765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068480, 0.088577, -0.993713,
		-0.023488, -0.995632, -0.090367,
		-0.997376, 0.029528, -0.066100,
		34.027046, 32.923580, 43.254936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601601, 32.524479, 42.648426>,  <34.725208, 32.902912, 43.301205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601601, 32.524479, 42.648426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263489, 32.725533, 42.720932>,  <34.060619, 32.846165, 42.764435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263489, 32.725533, 42.720932>,  <34.601601, 32.524479, 42.648426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263489, 32.725533, 42.720932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105354, 0.175794, -0.978773,
		-0.523830, -0.846437, -0.095641,
		-0.845283, 0.502634, 0.181261,
		34.009903, 32.876324, 42.775311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189682, 32.395916, 42.153107>,  <34.601601, 32.524479, 42.648426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189682, 32.395916, 42.153107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039749, 32.742882, 42.284004>,  <33.949791, 32.951061, 42.362541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039749, 32.742882, 42.284004>,  <34.189682, 32.395916, 42.153107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039749, 32.742882, 42.284004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265527, 0.237746, -0.934330,
		-0.888256, -0.437105, 0.141209,
		-0.374829, 0.867419, 0.327242,
		33.927299, 33.003109, 42.382175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544128, 32.460644, 41.784283>,  <34.189682, 32.395916, 42.153107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544128, 32.460644, 41.784283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554283, 32.834656, 41.925747>,  <33.560375, 33.059063, 42.010624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554283, 32.834656, 41.925747>,  <33.544128, 32.460644, 41.784283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554283, 32.834656, 41.925747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400541, 0.333650, -0.853373,
		-0.915927, -0.119987, 0.382989,
		0.025391, 0.935030, 0.353659,
		33.561901, 33.115166, 42.031845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810253, 32.802143, 41.753120>,  <33.544128, 32.460644, 41.784283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810253, 32.802143, 41.753120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088928, 33.087860, 41.779686>,  <33.256134, 33.259289, 41.795624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088928, 33.087860, 41.779686>,  <32.810253, 32.802143, 41.753120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088928, 33.087860, 41.779686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302295, 0.376279, -0.875803,
		-0.650568, 0.590088, 0.478077,
		0.696692, 0.714290, 0.066414,
		33.297935, 33.302147, 41.799610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434395, 33.458958, 41.942360>,  <32.810253, 32.802143, 41.753120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434395, 33.458958, 41.942360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773907, 33.516514, 41.738846>,  <32.977615, 33.551048, 41.616737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773907, 33.516514, 41.738846>,  <32.434395, 33.458958, 41.942360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773907, 33.516514, 41.738846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508743, 0.484392, -0.711720,
		0.144040, 0.862936, 0.484348,
		0.848783, 0.143892, -0.508785,
		33.028542, 33.559681, 41.586212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301151, 34.080990, 41.570290>,  <32.434395, 33.458958, 41.942360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301151, 34.080990, 41.570290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627865, 33.924961, 41.400249>,  <32.823895, 33.831345, 41.298225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627865, 33.924961, 41.400249>,  <32.301151, 34.080990, 41.570290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627865, 33.924961, 41.400249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427470, 0.085688, -0.899959,
		0.387472, 0.916790, -0.096754,
		0.816783, -0.390068, -0.425102,
		32.872898, 33.807941, 41.272720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341213, 34.462818, 41.042076>,  <32.301151, 34.080990, 41.570290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341213, 34.462818, 41.042076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605423, 34.183430, 40.931911>,  <32.763950, 34.015797, 40.865814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605423, 34.183430, 40.931911>,  <32.341213, 34.462818, 41.042076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605423, 34.183430, 40.931911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280205, 0.110989, -0.953502,
		0.696558, 0.706983, -0.122403,
		0.660524, -0.698467, -0.275410,
		32.803581, 33.973888, 40.849289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668751, 34.790920, 40.470402>,  <32.341213, 34.462818, 41.042076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668751, 34.790920, 40.470402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779724, 34.408195, 40.435661>,  <32.846310, 34.178562, 40.414818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779724, 34.408195, 40.435661>,  <32.668751, 34.790920, 40.470402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779724, 34.408195, 40.435661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042301, 0.078150, -0.996044,
		0.959812, 0.280012, -0.018792,
		0.277436, -0.956810, -0.086854,
		32.862953, 34.121151, 40.409607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338051, 34.713531, 40.175522>,  <32.668751, 34.790920, 40.470402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338051, 34.713531, 40.175522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138268, 34.375439, 40.099491>,  <33.018398, 34.172585, 40.053871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138268, 34.375439, 40.099491>,  <33.338051, 34.713531, 40.175522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138268, 34.375439, 40.099491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009120, 0.214263, -0.976733,
		0.866291, -0.489568, -0.099307,
		-0.499456, -0.845230, -0.190079,
		32.988430, 34.121868, 40.042469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557156, 34.595089, 39.515842>,  <33.338051, 34.713531, 40.175522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557156, 34.595089, 39.515842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222343, 34.382591, 39.568237>,  <33.021458, 34.255093, 39.599674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222343, 34.382591, 39.568237>,  <33.557156, 34.595089, 39.515842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222343, 34.382591, 39.568237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227672, 0.120466, -0.966257,
		0.497542, -0.838608, -0.221784,
		-0.837029, -0.531248, 0.130991,
		32.971233, 34.223217, 39.607536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540585, 34.150105, 38.897598>,  <33.557156, 34.595089, 39.515842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540585, 34.150105, 38.897598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160816, 34.124840, 39.020638>,  <32.932957, 34.109680, 39.094460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160816, 34.124840, 39.020638>,  <33.540585, 34.150105, 38.897598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160816, 34.124840, 39.020638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307029, -0.018728, -0.951516,
		0.065866, -0.997827, -0.001614,
		-0.949418, -0.063168, 0.307596,
		32.875992, 34.105892, 39.112915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232494, 33.664116, 38.451347>,  <33.540585, 34.150105, 38.897598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232494, 33.664116, 38.451347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903000, 33.842392, 38.591526>,  <32.705303, 33.949356, 38.675632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903000, 33.842392, 38.591526>,  <33.232494, 33.664116, 38.451347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903000, 33.842392, 38.591526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416271, -0.055773, -0.907528,
		-0.384934, -0.893447, 0.231472,
		-0.823738, 0.445693, 0.350447,
		32.655880, 33.976101, 38.696659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719654, 33.283031, 38.262329>,  <33.232494, 33.664116, 38.451347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719654, 33.283031, 38.262329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531292, 33.629196, 38.330811>,  <32.418274, 33.836895, 38.371899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531292, 33.629196, 38.330811>,  <32.719654, 33.283031, 38.262329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531292, 33.629196, 38.330811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523754, -0.118091, -0.843645,
		-0.709883, -0.486944, 0.508873,
		-0.470901, 0.865413, 0.171208,
		32.390022, 33.888821, 38.382172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061497, 33.091591, 38.227428>,  <32.719654, 33.283031, 38.262329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061497, 33.091591, 38.227428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073105, 33.483612, 38.148788>,  <32.080070, 33.718826, 38.101604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073105, 33.483612, 38.148788>,  <32.061497, 33.091591, 38.227428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073105, 33.483612, 38.148788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514149, -0.154034, -0.843756,
		-0.857210, 0.125573, 0.499423,
		0.029025, 0.980053, -0.196603,
		32.081814, 33.777630, 38.089809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105747, 32.650097, 38.838676>,  <32.061497, 33.091591, 38.227428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105747, 32.650097, 38.838676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162624, 32.374935, 38.553982>,  <32.196751, 32.209839, 38.383167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162624, 32.374935, 38.553982>,  <32.105747, 32.650097, 38.838676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162624, 32.374935, 38.553982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056158, -0.712275, 0.699650,
		-0.988244, -0.139457, -0.062650,
		0.142195, -0.687907, -0.711733,
		32.205284, 32.168564, 38.340462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599403, 32.100861, 39.019764>,  <32.105747, 32.650097, 38.838676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599403, 32.100861, 39.019764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918736, 31.969479, 38.817860>,  <32.110336, 31.890650, 38.696716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918736, 31.969479, 38.817860>,  <31.599403, 32.100861, 39.019764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918736, 31.969479, 38.817860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126647, -0.727858, 0.673931,
		-0.588752, -0.601947, -0.539474,
		0.798331, -0.328456, -0.504762,
		32.158234, 31.870941, 38.666431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498444, 31.382545, 38.894726>,  <31.599403, 32.100861, 39.019764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498444, 31.382545, 38.894726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888222, 31.471554, 38.882454>,  <32.122089, 31.524958, 38.875092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888222, 31.471554, 38.882454>,  <31.498444, 31.382545, 38.894726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888222, 31.471554, 38.882454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206272, -0.832388, 0.514375,
		0.088924, -0.507558, -0.857016,
		0.974445, 0.222519, -0.030676,
		32.180557, 31.538309, 38.873253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917992, 30.648952, 38.828121>,  <31.498444, 31.382545, 38.894726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917992, 30.648952, 38.828121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145660, 30.951443, 38.957218>,  <32.282261, 31.132936, 39.034676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145660, 30.951443, 38.957218>,  <31.917992, 30.648952, 38.828121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145660, 30.951443, 38.957218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424637, -0.606490, 0.672200,
		0.704077, -0.245548, -0.666320,
		0.569174, 0.756224, 0.322747,
		32.316414, 31.178310, 39.054043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626637, 30.354113, 38.872967>,  <31.917992, 30.648952, 38.828121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626637, 30.354113, 38.872967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643005, 30.670778, 39.116802>,  <32.652828, 30.860777, 39.263103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643005, 30.670778, 39.116802>,  <32.626637, 30.354113, 38.872967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643005, 30.670778, 39.116802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609758, -0.503104, 0.612439,
		0.791530, 0.346635, -0.503313,
		0.040926, 0.791663, 0.609585,
		32.655285, 30.908278, 39.299679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223255, 30.217386, 39.227642>,  <32.626637, 30.354113, 38.872967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223255, 30.217386, 39.227642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020027, 30.482048, 39.448215>,  <32.898090, 30.640846, 39.580559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020027, 30.482048, 39.448215>,  <33.223255, 30.217386, 39.227642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020027, 30.482048, 39.448215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303223, -0.461830, 0.833528,
		0.806175, 0.590699, 0.034014,
		-0.508073, 0.661655, 0.551429,
		32.867607, 30.680544, 39.613644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675583, 30.298264, 39.707623>,  <33.223255, 30.217386, 39.227642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675583, 30.298264, 39.707623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326962, 30.429592, 39.853279>,  <33.117790, 30.508390, 39.940674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326962, 30.429592, 39.853279>,  <33.675583, 30.298264, 39.707623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326962, 30.429592, 39.853279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270940, -0.296491, 0.915797,
		0.408643, 0.896826, 0.169452,
		-0.871552, 0.328323, 0.364145,
		33.065495, 30.528090, 39.962524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879894, 30.520147, 40.423367>,  <33.675583, 30.298264, 39.707623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879894, 30.520147, 40.423367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486992, 30.445269, 40.428082>,  <33.251251, 30.400341, 40.430912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486992, 30.445269, 40.428082>,  <33.879894, 30.520147, 40.423367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486992, 30.445269, 40.428082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104114, -0.491865, 0.864424,
		-0.156017, 0.850310, 0.502625,
		-0.982252, -0.187195, 0.011790,
		33.192318, 30.389111, 40.431618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731644, 30.696966, 41.031303>,  <33.879894, 30.520147, 40.423367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731644, 30.696966, 41.031303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405464, 30.478292, 40.955215>,  <33.209759, 30.347088, 40.909561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405464, 30.478292, 40.955215>,  <33.731644, 30.696966, 41.031303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405464, 30.478292, 40.955215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038444, -0.379051, 0.924577,
		-0.577555, 0.746630, 0.330112,
		-0.815446, -0.546684, -0.190220,
		33.160831, 30.314287, 40.898151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263969, 30.746655, 41.599567>,  <33.731644, 30.696966, 41.031303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263969, 30.746655, 41.599567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184788, 30.411520, 41.396061>,  <33.137280, 30.210440, 41.273956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184788, 30.411520, 41.396061>,  <33.263969, 30.746655, 41.599567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184788, 30.411520, 41.396061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135443, -0.490682, 0.860748,
		-0.970809, 0.239295, -0.016349,
		-0.197950, -0.837836, -0.508769,
		33.125404, 30.160170, 41.243431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699688, 30.459978, 41.986317>,  <33.263969, 30.746655, 41.599567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699688, 30.459978, 41.986317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856750, 30.163790, 41.768135>,  <32.950989, 29.986076, 41.637226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856750, 30.163790, 41.768135>,  <32.699688, 30.459978, 41.986317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856750, 30.163790, 41.768135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024961, -0.584290, 0.811161,
		-0.919346, -0.332123, -0.210943,
		0.392657, -0.740472, -0.545455,
		32.974548, 29.941648, 41.604500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239502, 29.884151, 42.082241>,  <32.699688, 30.459978, 41.986317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239502, 29.884151, 42.082241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599735, 29.751768, 41.969517>,  <32.815876, 29.672338, 41.901882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599735, 29.751768, 41.969517>,  <32.239502, 29.884151, 42.082241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599735, 29.751768, 41.969517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023642, -0.610058, 0.792004,
		-0.434037, -0.719929, -0.541584,
		0.900584, -0.330955, -0.281808,
		32.869911, 29.652481, 41.884975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238831, 29.244949, 42.377224>,  <32.239502, 29.884151, 42.082241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238831, 29.244949, 42.377224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620621, 29.307375, 42.275543>,  <32.849697, 29.344830, 42.214535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620621, 29.307375, 42.275543>,  <32.238831, 29.244949, 42.377224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620621, 29.307375, 42.275543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295544, -0.610027, 0.735201,
		-0.040331, -0.776860, -0.628380,
		0.954477, 0.156063, -0.254199,
		32.906963, 29.354195, 42.199284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541737, 28.574471, 42.150684>,  <32.238831, 29.244949, 42.377224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541737, 28.574471, 42.150684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795956, 28.845882, 42.298023>,  <32.948486, 29.008730, 42.386429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795956, 28.845882, 42.298023>,  <32.541737, 28.574471, 42.150684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795956, 28.845882, 42.298023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297750, -0.655596, 0.693930,
		0.712341, -0.331347, -0.618692,
		0.635543, 0.678531, 0.368349,
		32.986618, 29.049442, 42.408527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997257, 28.178436, 42.563976>,  <32.541737, 28.574471, 42.150684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997257, 28.178436, 42.563976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123569, 28.547329, 42.653217>,  <33.199356, 28.768663, 42.706760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123569, 28.547329, 42.653217>,  <32.997257, 28.178436, 42.563976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123569, 28.547329, 42.653217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454998, -0.353515, 0.817315,
		0.832621, -0.156585, -0.531247,
		0.315783, 0.922230, 0.223098,
		33.218304, 28.823997, 42.720146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758686, 28.162279, 42.577690>,  <32.997257, 28.178436, 42.563976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758686, 28.162279, 42.577690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628517, 28.468058, 42.800301>,  <33.550415, 28.651525, 42.933868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628517, 28.468058, 42.800301>,  <33.758686, 28.162279, 42.577690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628517, 28.468058, 42.800301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633734, -0.260487, 0.728373,
		0.701771, 0.589717, -0.399689,
		-0.325421, 0.764448, 0.556526,
		33.530891, 28.697392, 42.967258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339550, 28.395651, 42.817772>,  <33.758686, 28.162279, 42.577690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339550, 28.395651, 42.817772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078251, 28.560863, 43.071598>,  <33.921471, 28.659992, 43.223892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078251, 28.560863, 43.071598>,  <34.339550, 28.395651, 42.817772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078251, 28.560863, 43.071598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644307, -0.136938, 0.752407,
		0.397665, 0.900362, -0.176666,
		-0.653247, 0.413033, 0.634565,
		33.882278, 28.684774, 43.261967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793331, 28.690529, 43.229424>,  <34.339550, 28.395651, 42.817772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793331, 28.690529, 43.229424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457230, 28.680376, 43.446064>,  <34.255569, 28.674284, 43.576050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457230, 28.680376, 43.446064>,  <34.793331, 28.690529, 43.229424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457230, 28.680376, 43.446064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528018, -0.265253, 0.806745,
		0.123184, 0.963845, 0.236283,
		-0.840252, -0.025384, 0.541602,
		34.205154, 28.672762, 43.608543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858147, 29.030922, 43.934299>,  <34.793331, 28.690529, 43.229424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858147, 29.030922, 43.934299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540333, 28.795490, 43.994022>,  <34.349644, 28.654232, 44.029858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540333, 28.795490, 43.994022>,  <34.858147, 29.030922, 43.934299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540333, 28.795490, 43.994022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423909, -0.361594, 0.830392,
		-0.434763, 0.723066, 0.536803,
		-0.794533, -0.588579, 0.149306,
		34.301971, 28.618916, 44.038815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564140, 29.209110, 44.539165>,  <34.858147, 29.030922, 43.934299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564140, 29.209110, 44.539165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434704, 28.834698, 44.483829>,  <34.357044, 28.610050, 44.450626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434704, 28.834698, 44.483829>,  <34.564140, 29.209110, 44.539165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434704, 28.834698, 44.483829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389870, -0.265116, 0.881881,
		-0.862144, 0.231432, 0.450719,
		-0.323588, -0.936030, -0.138340,
		34.337627, 28.553888, 44.442329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101482, 29.028429, 45.124435>,  <34.564140, 29.209110, 44.539165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101482, 29.028429, 45.124435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211010, 28.677517, 44.966751>,  <34.276726, 28.466970, 44.872139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211010, 28.677517, 44.966751>,  <34.101482, 29.028429, 45.124435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211010, 28.677517, 44.966751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176684, -0.357019, 0.917235,
		-0.945413, -0.320806, 0.057243,
		0.273818, -0.877280, -0.394212,
		34.293156, 28.414333, 44.848488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723759, 28.532270, 45.449497>,  <34.101482, 29.028429, 45.124435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723759, 28.532270, 45.449497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040676, 28.323820, 45.322563>,  <34.230827, 28.198750, 45.246403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040676, 28.323820, 45.322563>,  <33.723759, 28.532270, 45.449497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040676, 28.323820, 45.322563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066308, -0.443474, 0.893831,
		-0.606529, -0.729217, -0.316806,
		0.792292, -0.521127, -0.317333,
		34.278362, 28.167482, 45.227364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573978, 27.832190, 45.814281>,  <33.723759, 28.532270, 45.449497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573978, 27.832190, 45.814281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940361, 27.838223, 45.653885>,  <34.160191, 27.841843, 45.557648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940361, 27.838223, 45.653885>,  <33.573978, 27.832190, 45.814281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940361, 27.838223, 45.653885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352357, -0.508375, 0.785748,
		-0.192002, -0.861004, -0.470964,
		0.915958, 0.015082, -0.400990,
		34.215149, 27.842747, 45.533588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739868, 27.137693, 45.739601>,  <33.573978, 27.832190, 45.814281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739868, 27.137693, 45.739601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070717, 27.361609, 45.759632>,  <34.269226, 27.495958, 45.771652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070717, 27.361609, 45.759632>,  <33.739868, 27.137693, 45.739601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070717, 27.361609, 45.759632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268564, -0.471940, 0.839730,
		0.493705, -0.681109, -0.540690,
		0.827121, 0.559789, 0.050078,
		34.318851, 27.529545, 45.774654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359684, 26.627029, 45.950752>,  <33.739868, 27.137693, 45.739601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359684, 26.627029, 45.950752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438667, 27.008635, 46.040970>,  <34.486057, 27.237598, 46.095100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438667, 27.008635, 46.040970>,  <34.359684, 26.627029, 45.950752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438667, 27.008635, 46.040970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430432, -0.291084, 0.854399,
		0.880760, -0.071629, -0.468115,
		0.197461, 0.954012, 0.225544,
		34.497906, 27.294838, 46.108631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166325, 26.696363, 46.063282>,  <34.359684, 26.627029, 45.950752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166325, 26.696363, 46.063282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921585, 26.943216, 46.261185>,  <34.774742, 27.091328, 46.379925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921585, 26.943216, 46.261185>,  <35.166325, 26.696363, 46.063282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921585, 26.943216, 46.261185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361972, -0.337702, 0.868869,
		0.703288, 0.710708, -0.016761,
		-0.611852, 0.617132, 0.494758,
		34.738029, 27.128357, 46.409611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227608, 26.498739, 46.723656>,  <35.166325, 26.696363, 46.063282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227608, 26.498739, 46.723656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017036, 26.832201, 46.790466>,  <34.890694, 27.032278, 46.830551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017036, 26.832201, 46.790466>,  <35.227608, 26.498739, 46.723656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017036, 26.832201, 46.790466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066659, -0.236312, 0.969388,
		0.847604, 0.499177, 0.179972,
		-0.526426, 0.833654, 0.167024,
		34.859108, 27.082296, 46.840572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895779, 26.688089, 46.450207>,  <35.227608, 26.498739, 46.723656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895779, 26.688089, 46.450207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276562, 26.572996, 46.408276>,  <36.505032, 26.503941, 46.383118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276562, 26.572996, 46.408276>,  <35.895779, 26.688089, 46.450207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276562, 26.572996, 46.408276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094404, 0.049905, -0.994282,
		0.291317, 0.956410, 0.020345,
		0.951957, -0.287731, -0.104828,
		36.562149, 26.486677, 46.376827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181164, 27.188555, 46.031277>,  <35.895779, 26.688089, 46.450207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181164, 27.188555, 46.031277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431770, 26.877394, 46.011917>,  <36.582134, 26.690697, 46.000301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431770, 26.877394, 46.011917>,  <36.181164, 27.188555, 46.031277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431770, 26.877394, 46.011917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005527, 0.057663, -0.998321,
		0.779387, 0.625733, 0.031827,
		0.626518, -0.777903, -0.048400,
		36.619724, 26.644022, 45.997398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746109, 27.388758, 45.707390>,  <36.181164, 27.188555, 46.031277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746109, 27.388758, 45.707390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725750, 26.991879, 45.661861>,  <36.713535, 26.753752, 45.634544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725750, 26.991879, 45.661861>,  <36.746109, 27.388758, 45.707390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725750, 26.991879, 45.661861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055801, 0.110967, -0.992256,
		0.997144, -0.056855, 0.049718,
		-0.050897, -0.992197, -0.113823,
		36.710480, 26.694220, 45.627716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354271, 27.240597, 45.332623>,  <36.746109, 27.388758, 45.707390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354271, 27.240597, 45.332623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112583, 26.927935, 45.270733>,  <36.967571, 26.740337, 45.233601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112583, 26.927935, 45.270733>,  <37.354271, 27.240597, 45.332623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112583, 26.927935, 45.270733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158490, 0.072398, -0.984703,
		0.780897, -0.619497, 0.080139,
		-0.604219, -0.781653, -0.154720,
		36.931316, 26.693439, 45.224316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468189, 27.280331, 44.626083>,  <37.354271, 27.240597, 45.332623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468189, 27.280331, 44.626083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181072, 27.006618, 44.677521>,  <37.008804, 26.842392, 44.708385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181072, 27.006618, 44.677521>,  <37.468189, 27.280331, 44.626083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181072, 27.006618, 44.677521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094357, -0.087392, -0.991695,
		0.689836, -0.723963, -0.001837,
		-0.717791, -0.684280, 0.128597,
		36.965736, 26.801334, 44.716099>
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
