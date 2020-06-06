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
	<24.302631, 35.601868, 35.183613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.180443, 35.222771, 35.146786>,  <24.107130, 34.995312, 35.124691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.180443, 35.222771, 35.146786>,  <24.302631, 35.601868, 35.183613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.180443, 35.222771, 35.146786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236229, -0.169091, 0.956872,
		-0.922433, 0.270550, 0.275536,
		-0.305472, -0.947740, -0.092063,
		24.088800, 34.938450, 35.119167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839243, 36.216331, 35.336182>,  <24.302631, 35.601868, 35.183613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839243, 36.216331, 35.336182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230448, 36.141102, 35.372227>,  <25.465170, 36.095963, 35.393856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230448, 36.141102, 35.372227>,  <24.839243, 36.216331, 35.336182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230448, 36.141102, 35.372227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202388, 0.960189, -0.192552,
		-0.050313, 0.206557, 0.977140,
		0.978012, -0.188073, 0.090115,
		25.523851, 36.084679, 35.399261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257168, 36.812805, 35.631447>,  <24.839243, 36.216331, 35.336182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257168, 36.812805, 35.631447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532528, 36.599674, 35.434593>,  <25.697744, 36.471794, 35.316483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532528, 36.599674, 35.434593>,  <25.257168, 36.812805, 35.631447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532528, 36.599674, 35.434593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461480, 0.845203, -0.269571,
		0.559589, -0.041538, 0.827729,
		0.688401, -0.532829, -0.492135,
		25.739048, 36.439827, 35.286953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933760, 37.203114, 35.567879>,  <25.257168, 36.812805, 35.631447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933760, 37.203114, 35.567879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030970, 36.927494, 35.294777>,  <26.089294, 36.762123, 35.130917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030970, 36.927494, 35.294777>,  <25.933760, 37.203114, 35.567879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030970, 36.927494, 35.294777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595803, 0.661470, -0.455495,
		0.765479, -0.296091, 0.571290,
		0.243023, -0.689049, -0.682753,
		26.103876, 36.720779, 35.089951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658680, 37.141407, 35.617676>,  <25.933760, 37.203114, 35.567879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658680, 37.141407, 35.617676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538002, 36.993420, 35.266197>,  <26.465595, 36.904629, 35.055309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538002, 36.993420, 35.266197>,  <26.658680, 37.141407, 35.617676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538002, 36.993420, 35.266197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686818, 0.554888, -0.469447,
		0.661257, -0.745133, 0.086695,
		-0.301694, -0.369969, -0.878694,
		26.447495, 36.882427, 35.002590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306185, 36.664642, 35.327492>,  <26.658680, 37.141407, 35.617676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306185, 36.664642, 35.327492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178112, 36.861382, 35.003624>,  <27.101269, 36.979424, 34.809303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178112, 36.861382, 35.003624>,  <27.306185, 36.664642, 35.327492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178112, 36.861382, 35.003624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940008, 0.271189, -0.206984,
		0.117769, -0.827370, -0.549171,
		-0.320181, 0.491849, -0.809672,
		27.082058, 37.008938, 34.760723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600920, 36.391056, 34.683628>,  <27.306185, 36.664642, 35.327492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600920, 36.391056, 34.683628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497017, 36.774593, 34.637756>,  <27.434675, 37.004715, 34.610233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497017, 36.774593, 34.637756>,  <27.600920, 36.391056, 34.683628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497017, 36.774593, 34.637756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921210, 0.210421, -0.327255,
		-0.289654, -0.190652, -0.937951,
		-0.259757, 0.958840, -0.114681,
		27.419090, 37.062244, 34.603352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921103, 36.596752, 33.996674>,  <27.600920, 36.391056, 34.683628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921103, 36.596752, 33.996674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873333, 36.890404, 34.264042>,  <27.844671, 37.066597, 34.424465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873333, 36.890404, 34.264042>,  <27.921103, 36.596752, 33.996674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873333, 36.890404, 34.264042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945746, 0.289010, -0.148450,
		-0.302163, 0.614430, -0.728816,
		-0.119423, 0.734132, 0.668423,
		27.837505, 37.110641, 34.464569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063147, 37.217335, 33.661171>,  <27.921103, 36.596752, 33.996674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063147, 37.217335, 33.661171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110510, 37.310375, 34.047306>,  <28.138927, 37.366199, 34.278988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110510, 37.310375, 34.047306>,  <28.063147, 37.217335, 33.661171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110510, 37.310375, 34.047306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814939, 0.532679, -0.228316,
		-0.567322, 0.813725, -0.126485,
		0.118410, 0.232606, 0.965336,
		28.146032, 37.380157, 34.336906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226603, 37.968849, 33.625427>,  <28.063147, 37.217335, 33.661171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226603, 37.968849, 33.625427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326475, 37.850742, 33.994312>,  <28.386398, 37.779877, 34.215645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326475, 37.850742, 33.994312>,  <28.226603, 37.968849, 33.625427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326475, 37.850742, 33.994312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921951, 0.363693, -0.133166,
		-0.296082, 0.883484, 0.363030,
		0.249682, -0.295267, 0.922213,
		28.401381, 37.762161, 34.270977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434477, 38.658089, 34.087017>,  <28.226603, 37.968849, 33.625427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434477, 38.658089, 34.087017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595415, 38.312729, 34.208771>,  <28.691978, 38.105511, 34.281822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595415, 38.312729, 34.208771>,  <28.434477, 38.658089, 34.087017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595415, 38.312729, 34.208771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914902, 0.367327, -0.167408,
		0.032731, 0.345840, 0.937722,
		0.402347, -0.863403, 0.304386,
		28.716120, 38.053707, 34.300087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095695, 38.906425, 33.898891>,  <28.434477, 38.658089, 34.087017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095695, 38.906425, 33.898891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268660, 38.852226, 33.542316>,  <29.372438, 38.819706, 33.328373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268660, 38.852226, 33.542316>,  <29.095695, 38.906425, 33.898891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268660, 38.852226, 33.542316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637958, 0.744639, 0.196272,
		0.637206, -0.653570, 0.408431,
		0.432411, -0.135496, -0.891438,
		29.398382, 38.811577, 33.274883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871130, 38.806042, 33.931732>,  <29.095695, 38.906425, 33.898891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871130, 38.806042, 33.931732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726263, 38.990479, 33.607700>,  <29.639343, 39.101139, 33.413280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726263, 38.990479, 33.607700>,  <29.871130, 38.806042, 33.931732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726263, 38.990479, 33.607700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587001, 0.787920, 0.186043,
		0.724060, -0.408138, -0.556022,
		-0.362169, 0.461092, -0.810079,
		29.617613, 39.128807, 33.364677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898928, 38.251331, 33.440807>,  <29.871130, 38.806042, 33.931732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898928, 38.251331, 33.440807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993475, 38.100327, 33.798939>,  <30.050203, 38.009724, 34.013817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993475, 38.100327, 33.798939>,  <29.898928, 38.251331, 33.440807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993475, 38.100327, 33.798939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971660, -0.089311, 0.218863,
		-0.002659, -0.921690, -0.387919,
		0.236370, -0.377507, 0.895331,
		30.064386, 37.987076, 34.067539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499739, 37.517197, 33.604584>,  <29.898928, 38.251331, 33.440807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499739, 37.517197, 33.604584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601727, 37.738075, 33.922092>,  <29.662920, 37.870602, 34.112598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601727, 37.738075, 33.922092>,  <29.499739, 37.517197, 33.604584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601727, 37.738075, 33.922092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854053, -0.256323, 0.452650,
		0.453413, -0.793334, 0.406250,
		0.254971, 0.552196, 0.793769,
		29.678219, 37.903732, 34.160225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381390, 37.123955, 34.163124>,  <29.499739, 37.517197, 33.604584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381390, 37.123955, 34.163124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378708, 37.495708, 34.310741>,  <29.377098, 37.718761, 34.399311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378708, 37.495708, 34.310741>,  <29.381390, 37.123955, 34.163124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378708, 37.495708, 34.310741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824349, -0.214042, 0.524056,
		0.566042, -0.300710, 0.767574,
		-0.006704, 0.929386, 0.369047,
		29.376698, 37.774525, 34.421455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276939, 37.006741, 34.841217>,  <29.381390, 37.123955, 34.163124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276939, 37.006741, 34.841217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113779, 37.345585, 34.704971>,  <29.015882, 37.548893, 34.623226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113779, 37.345585, 34.704971>,  <29.276939, 37.006741, 34.841217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113779, 37.345585, 34.704971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875000, -0.256149, 0.410809,
		0.260754, 0.465604, 0.845707,
		-0.407901, 0.847113, -0.340611,
		28.991409, 37.599720, 34.602787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861521, 37.400219, 35.465496>,  <29.276939, 37.006741, 34.841217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861521, 37.400219, 35.465496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720572, 37.495071, 35.103367>,  <28.636002, 37.551983, 34.886089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720572, 37.495071, 35.103367>,  <28.861521, 37.400219, 35.465496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720572, 37.495071, 35.103367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929314, -0.202874, 0.308573,
		-0.110493, 0.950058, 0.291858,
		-0.352372, 0.237133, -0.905318,
		28.614861, 37.566212, 34.831772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263155, 37.832558, 35.545105>,  <28.861521, 37.400219, 35.465496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263155, 37.832558, 35.545105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223705, 37.662136, 35.185383>,  <28.200035, 37.559883, 34.969551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223705, 37.662136, 35.185383>,  <28.263155, 37.832558, 35.545105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223705, 37.662136, 35.185383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989740, -0.051886, 0.133122,
		-0.103379, 0.903207, -0.416570,
		-0.098623, -0.426058, -0.899304,
		28.194118, 37.534317, 34.915592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799482, 38.171646, 35.210815>,  <28.263155, 37.832558, 35.545105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799482, 38.171646, 35.210815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796940, 37.820202, 35.019817>,  <27.795414, 37.609337, 34.905220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796940, 37.820202, 35.019817>,  <27.799482, 38.171646, 35.210815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796940, 37.820202, 35.019817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914985, -0.187537, 0.357257,
		-0.403438, 0.439171, -0.802724,
		-0.006356, -0.878612, -0.477494,
		27.795033, 37.556618, 34.876568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279787, 38.264771, 34.828888>,  <27.799482, 38.171646, 35.210815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279787, 38.264771, 34.828888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315708, 37.866539, 34.817879>,  <27.337261, 37.627602, 34.811272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315708, 37.866539, 34.817879>,  <27.279787, 38.264771, 34.828888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315708, 37.866539, 34.817879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951500, -0.093924, 0.292960,
		-0.294250, -0.000120, -0.955728,
		0.089801, -0.995579, -0.027523,
		27.342649, 37.567863, 34.809624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007318, 38.165180, 34.236355>,  <27.279787, 38.264771, 34.828888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007318, 38.165180, 34.236355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143520, 37.795158, 34.303673>,  <27.225241, 37.573143, 34.344063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143520, 37.795158, 34.303673>,  <27.007318, 38.165180, 34.236355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143520, 37.795158, 34.303673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923267, -0.362815, -0.126267,
		0.177865, -0.112389, -0.977616,
		0.340503, -0.925059, 0.168297,
		27.245670, 37.517639, 34.354160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552094, 37.784401, 33.803917>,  <27.007318, 38.165180, 34.236355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552094, 37.784401, 33.803917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712648, 37.534473, 34.071793>,  <26.808981, 37.384518, 34.232517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712648, 37.534473, 34.071793>,  <26.552094, 37.784401, 33.803917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712648, 37.534473, 34.071793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875837, -0.475749, 0.081068,
		0.267952, -0.619081, -0.738201,
		0.401386, -0.624822, 0.669692,
		26.833065, 37.347027, 34.272701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147081, 37.151222, 33.770054>,  <26.552094, 37.784401, 33.803917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147081, 37.151222, 33.770054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363241, 37.057575, 34.093327>,  <26.492937, 37.001389, 34.287289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363241, 37.057575, 34.093327>,  <26.147081, 37.151222, 33.770054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363241, 37.057575, 34.093327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760612, -0.546627, 0.350240,
		0.359777, -0.803982, -0.473470,
		0.540398, -0.234118, 0.808182,
		26.525360, 36.987339, 34.335781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921112, 36.435326, 33.867470>,  <26.147081, 37.151222, 33.770054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921112, 36.435326, 33.867470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101942, 36.567886, 34.198723>,  <26.210440, 36.647423, 34.397472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101942, 36.567886, 34.198723>,  <25.921112, 36.435326, 33.867470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101942, 36.567886, 34.198723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608067, -0.564756, 0.557948,
		0.652598, -0.755792, -0.053794,
		0.452073, 0.331405, 0.828131,
		26.237564, 36.667309, 34.447163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260635, 35.829655, 34.211304>,  <25.921112, 36.435326, 33.867470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260635, 35.829655, 34.211304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210300, 36.112095, 34.490040>,  <26.180099, 36.281559, 34.657280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210300, 36.112095, 34.490040>,  <26.260635, 35.829655, 34.211304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210300, 36.112095, 34.490040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481854, -0.657503, 0.579229,
		0.867169, -0.262886, 0.422977,
		-0.125838, 0.706102, 0.696839,
		26.172548, 36.323925, 34.699093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580076, 35.588795, 34.888126>,  <26.260635, 35.829655, 34.211304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580076, 35.588795, 34.888126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294264, 35.854389, 34.976280>,  <26.122776, 36.013744, 35.029175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294264, 35.854389, 34.976280>,  <26.580076, 35.588795, 34.888126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294264, 35.854389, 34.976280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327191, -0.595604, 0.733622,
		0.618376, 0.452088, 0.642827,
		-0.714533, 0.663982, 0.220388,
		26.079905, 36.053585, 35.042397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360006, 34.929218, 34.750984>,  <26.580076, 35.588795, 34.888126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360006, 34.929218, 34.750984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037996, 34.693226, 34.775833>,  <25.844790, 34.551632, 34.790741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037996, 34.693226, 34.775833>,  <26.360006, 34.929218, 34.750984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037996, 34.693226, 34.775833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586959, -0.807322, -0.060912,
		0.086087, -0.012574, 0.996208,
		-0.805027, -0.589977, 0.062120,
		25.796488, 34.516232, 34.794468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031206, 34.759865, 34.960449>,  <26.360006, 34.929218, 34.750984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031206, 34.759865, 34.960449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025625, 34.417442, 35.167126>,  <27.022276, 34.211987, 35.291130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025625, 34.417442, 35.167126>,  <27.031206, 34.759865, 34.960449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025625, 34.417442, 35.167126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118825, 0.514495, 0.849220,
		-0.992817, -0.049546, -0.108901,
		-0.013953, -0.856061, 0.516687,
		27.021439, 34.160625, 35.322132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486313, 34.702179, 35.488300>,  <27.031206, 34.759865, 34.960449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486313, 34.702179, 35.488300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803455, 34.484585, 35.598179>,  <26.993740, 34.354027, 35.664104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803455, 34.484585, 35.598179>,  <26.486313, 34.702179, 35.488300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803455, 34.484585, 35.598179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006549, 0.458337, 0.888755,
		-0.609374, -0.702855, 0.366958,
		0.792856, -0.543987, 0.274695,
		27.041313, 34.321388, 35.680588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390810, 34.424500, 36.154251>,  <26.486313, 34.702179, 35.488300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390810, 34.424500, 36.154251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782125, 34.349133, 36.119732>,  <27.016914, 34.303913, 36.099022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782125, 34.349133, 36.119732>,  <26.390810, 34.424500, 36.154251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782125, 34.349133, 36.119732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152322, 0.371378, 0.915902,
		-0.140525, -0.909162, 0.392016,
		0.978290, -0.188420, -0.086297,
		27.075613, 34.292606, 36.093842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539154, 34.133018, 36.703690>,  <26.390810, 34.424500, 36.154251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539154, 34.133018, 36.703690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896696, 34.267220, 36.584721>,  <27.111221, 34.347740, 36.513340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896696, 34.267220, 36.584721>,  <26.539154, 34.133018, 36.703690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896696, 34.267220, 36.584721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216522, 0.257873, 0.941605,
		0.392612, -0.906056, 0.157856,
		0.893853, 0.335506, -0.297425,
		27.164852, 34.367870, 36.495495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168661, 33.827007, 37.083843>,  <26.539154, 34.133018, 36.703690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168661, 33.827007, 37.083843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277340, 34.184891, 36.942039>,  <27.342546, 34.399620, 36.856956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277340, 34.184891, 36.942039>,  <27.168661, 33.827007, 37.083843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277340, 34.184891, 36.942039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296810, 0.272507, 0.915229,
		0.915470, -0.353885, -0.191520,
		0.271695, 0.894710, -0.354509,
		27.358849, 34.453304, 36.835686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792250, 33.959057, 37.408951>,  <27.168661, 33.827007, 37.083843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792250, 33.959057, 37.408951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689367, 34.316994, 37.263023>,  <27.627638, 34.531757, 37.175468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689367, 34.316994, 37.263023>,  <27.792250, 33.959057, 37.408951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689367, 34.316994, 37.263023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287386, 0.431272, 0.855228,
		0.922634, 0.115128, -0.368093,
		-0.257208, 0.894847, -0.364820,
		27.612206, 34.585449, 37.153576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264940, 34.393768, 37.620453>,  <27.792250, 33.959057, 37.408951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264940, 34.393768, 37.620453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938831, 34.618916, 37.566032>,  <27.743166, 34.754002, 37.533379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938831, 34.618916, 37.566032>,  <28.264940, 34.393768, 37.620453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938831, 34.618916, 37.566032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105904, 0.375917, 0.920582,
		0.569308, 0.736118, -0.366086,
		-0.815275, 0.562864, -0.136055,
		27.694248, 34.787773, 37.525215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564518, 35.114731, 37.572510>,  <28.264940, 34.393768, 37.620453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564518, 35.114731, 37.572510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309883, 35.264046, 37.302570>,  <28.157103, 35.353634, 37.140606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309883, 35.264046, 37.302570>,  <28.564518, 35.114731, 37.572510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309883, 35.264046, 37.302570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644018, 0.224082, 0.731456,
		0.424262, 0.900248, 0.097755,
		-0.636587, 0.373285, -0.674845,
		28.118908, 35.376030, 37.100117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628738, 35.904045, 37.498817>,  <28.564518, 35.114731, 37.572510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628738, 35.904045, 37.498817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278664, 35.724709, 37.426109>,  <28.068619, 35.617107, 37.382484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278664, 35.724709, 37.426109>,  <28.628738, 35.904045, 37.498817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278664, 35.724709, 37.426109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454707, 0.634020, 0.625508,
		-0.165193, 0.630088, -0.758749,
		-0.875187, -0.448338, -0.181770,
		28.016108, 35.590206, 37.371578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175007, 36.400307, 37.444515>,  <28.628738, 35.904045, 37.498817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175007, 36.400307, 37.444515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934776, 36.083496, 37.488342>,  <27.790638, 35.893410, 37.514641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934776, 36.083496, 37.488342>,  <28.175007, 36.400307, 37.444515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934776, 36.083496, 37.488342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509440, 0.484666, 0.711034,
		-0.616260, 0.371213, -0.694568,
		-0.600579, -0.792023, 0.109570,
		27.754602, 35.845890, 37.521214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535355, 36.645985, 37.294910>,  <28.175007, 36.400307, 37.444515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535355, 36.645985, 37.294910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465551, 36.315853, 37.509712>,  <27.423670, 36.117775, 37.638592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465551, 36.315853, 37.509712>,  <27.535355, 36.645985, 37.294910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465551, 36.315853, 37.509712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630319, 0.512620, 0.583025,
		-0.756469, -0.236743, -0.609678,
		-0.174506, -0.825332, 0.537005,
		27.413200, 36.068253, 37.670815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801718, 36.529427, 37.478302>,  <27.535355, 36.645985, 37.294910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801718, 36.529427, 37.478302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983145, 36.340351, 37.780518>,  <27.092001, 36.226906, 37.961849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983145, 36.340351, 37.780518>,  <26.801718, 36.529427, 37.478302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983145, 36.340351, 37.780518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587360, 0.479057, 0.652313,
		-0.670288, -0.739643, -0.060353,
		0.453566, -0.472686, 0.755543,
		27.119215, 36.198544, 38.007179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303555, 36.762486, 38.075443>,  <26.801718, 36.529427, 37.478302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303555, 36.762486, 38.075443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058622, 36.587555, 38.338898>,  <26.911663, 36.482597, 38.496971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058622, 36.587555, 38.338898>,  <27.303555, 36.762486, 38.075443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058622, 36.587555, 38.338898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128135, -0.876961, -0.463163,
		0.780148, -0.199216, 0.593029,
		-0.612333, -0.437323, 0.658633,
		26.874922, 36.456356, 38.536488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529390, 36.290249, 38.679459>,  <27.303555, 36.762486, 38.075443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529390, 36.290249, 38.679459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176579, 36.156673, 38.546490>,  <26.964891, 36.076527, 38.466709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176579, 36.156673, 38.546490>,  <27.529390, 36.290249, 38.679459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176579, 36.156673, 38.546490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459351, -0.766557, -0.448761,
		-0.104963, -0.548521, 0.829523,
		-0.882032, -0.333939, -0.332423,
		26.911968, 36.056492, 38.446762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619812, 35.486397, 38.755096>,  <27.529390, 36.290249, 38.679459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619812, 35.486397, 38.755096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352747, 35.627224, 38.492718>,  <27.192507, 35.711720, 38.335289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352747, 35.627224, 38.492718>,  <27.619812, 35.486397, 38.755096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352747, 35.627224, 38.492718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382092, -0.594142, -0.707814,
		-0.638930, -0.723215, 0.262163,
		-0.667664, 0.352073, -0.655950,
		27.152447, 35.732845, 38.295933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435751, 34.974880, 38.342903>,  <27.619812, 35.486397, 38.755096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435751, 34.974880, 38.342903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372503, 35.302769, 38.122704>,  <27.334555, 35.499504, 37.990582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372503, 35.302769, 38.122704>,  <27.435751, 34.974880, 38.342903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372503, 35.302769, 38.122704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427454, -0.445743, -0.786509,
		-0.890102, -0.359674, -0.279915,
		-0.158117, 0.819724, -0.550501,
		27.325068, 35.548687, 37.957554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986006, 34.835083, 37.765999>,  <27.435751, 34.974880, 38.342903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986006, 34.835083, 37.765999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233522, 35.143223, 37.704479>,  <27.382032, 35.328106, 37.667568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233522, 35.143223, 37.704479>,  <26.986006, 34.835083, 37.765999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233522, 35.143223, 37.704479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368942, -0.457840, -0.808866,
		-0.693526, 0.443778, -0.567523,
		0.618792, 0.770353, -0.153795,
		27.419161, 35.374329, 37.658340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830280, 35.117516, 37.119457>,  <26.986006, 34.835083, 37.765999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830280, 35.117516, 37.119457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208010, 35.217854, 37.204620>,  <27.434647, 35.278057, 37.255718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208010, 35.217854, 37.204620>,  <26.830280, 35.117516, 37.119457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208010, 35.217854, 37.204620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304650, -0.422253, -0.853751,
		-0.124263, 0.871078, -0.475165,
		0.944323, 0.250849, 0.212903,
		27.491306, 35.293110, 37.268490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205736, 35.687401, 36.663754>,  <26.830280, 35.117516, 37.119457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205736, 35.687401, 36.663754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368811, 35.355621, 36.816490>,  <27.466656, 35.156551, 36.908131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368811, 35.355621, 36.816490>,  <27.205736, 35.687401, 36.663754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368811, 35.355621, 36.816490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053440, -0.439127, -0.896834,
		0.911557, 0.345221, -0.223352,
		0.407686, -0.829452, 0.381840,
		27.491117, 35.106785, 36.931042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830378, 35.489700, 36.303516>,  <27.205736, 35.687401, 36.663754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830378, 35.489700, 36.303516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679869, 35.158901, 36.470604>,  <27.589563, 34.960423, 36.570854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679869, 35.158901, 36.470604>,  <27.830378, 35.489700, 36.303516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679869, 35.158901, 36.470604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017690, -0.444356, -0.895676,
		0.926340, -0.344407, 0.152569,
		-0.376272, -0.827002, 0.417717,
		27.566988, 34.910801, 36.595921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322849, 34.891758, 36.095238>,  <27.830378, 35.489700, 36.303516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322849, 34.891758, 36.095238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966124, 34.746510, 36.203171>,  <27.752089, 34.659359, 36.267929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966124, 34.746510, 36.203171>,  <28.322849, 34.891758, 36.095238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966124, 34.746510, 36.203171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050883, -0.512149, -0.857388,
		0.449531, -0.778361, 0.438265,
		-0.891814, -0.363122, 0.269832,
		27.698580, 34.637573, 36.284119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627342, 35.445782, 35.599403>,  <28.322849, 34.891758, 36.095238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627342, 35.445782, 35.599403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837549, 35.429890, 35.259460>,  <28.963675, 35.420357, 35.055496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837549, 35.429890, 35.259460>,  <28.627342, 35.445782, 35.599403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837549, 35.429890, 35.259460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420361, -0.880588, -0.218774,
		-0.739680, 0.472215, -0.479466,
		0.525520, -0.039726, -0.849853,
		28.995205, 35.417973, 35.004505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164846, 35.522354, 35.024094>,  <28.627342, 35.445782, 35.599403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164846, 35.522354, 35.024094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466471, 35.287849, 34.905643>,  <28.647446, 35.147148, 34.834572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466471, 35.287849, 34.905643>,  <28.164846, 35.522354, 35.024094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466471, 35.287849, 34.905643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656752, -0.678697, -0.328704,
		-0.008277, 0.442347, -0.896806,
		0.754061, -0.586259, -0.296130,
		28.692690, 35.111973, 34.816803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933413, 35.287586, 34.362026>,  <28.164846, 35.522354, 35.024094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933413, 35.287586, 34.362026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188091, 35.030430, 34.532345>,  <28.340899, 34.876137, 34.634537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188091, 35.030430, 34.532345>,  <27.933413, 35.287586, 34.362026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188091, 35.030430, 34.532345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564408, -0.764778, -0.310739,
		0.525413, -0.042477, -0.849787,
		0.636699, -0.642892, 0.425798,
		28.379101, 34.837563, 34.660084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326433, 34.730465, 33.957256>,  <27.933413, 35.287586, 34.362026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326433, 34.730465, 33.957256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268614, 34.593208, 34.328495>,  <28.233923, 34.510853, 34.551239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268614, 34.593208, 34.328495>,  <28.326433, 34.730465, 33.957256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268614, 34.593208, 34.328495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511519, -0.776984, -0.366939,
		0.847027, -0.527778, -0.063212,
		-0.144548, -0.343141, 0.928095,
		28.225250, 34.490265, 34.606922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560640, 33.995152, 33.949814>,  <28.326433, 34.730465, 33.957256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560640, 33.995152, 33.949814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299818, 34.050259, 34.248035>,  <28.143326, 34.083321, 34.426968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299818, 34.050259, 34.248035>,  <28.560640, 33.995152, 33.949814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299818, 34.050259, 34.248035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459101, -0.854314, -0.243666,
		0.603367, -0.501167, 0.620307,
		-0.652055, 0.137763, 0.745551,
		28.104202, 34.091587, 34.471703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205206, 33.919781, 33.577480>,  <28.560640, 33.995152, 33.949814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205206, 33.919781, 33.577480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042057, 34.110550, 33.266048>,  <28.944168, 34.225010, 33.079189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042057, 34.110550, 33.266048>,  <29.205206, 33.919781, 33.577480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042057, 34.110550, 33.266048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877242, -0.031740, -0.478997,
		-0.253156, -0.878373, -0.405429,
		-0.407870, 0.476920, -0.778581,
		28.919697, 34.253628, 33.032475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286348, 33.567867, 32.935444>,  <29.205206, 33.919781, 33.577480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286348, 33.567867, 32.935444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242701, 33.954327, 32.841942>,  <29.216513, 34.186203, 32.785839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242701, 33.954327, 32.841942>,  <29.286348, 33.567867, 32.935444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242701, 33.954327, 32.841942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835290, -0.038361, -0.548470,
		-0.538873, -0.255103, -0.802831,
		-0.109119, 0.966152, -0.233757,
		29.209965, 34.244171, 32.771816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504116, 33.603287, 32.230755>,  <29.286348, 33.567867, 32.935444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504116, 33.603287, 32.230755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548964, 33.959019, 32.408073>,  <29.575872, 34.172459, 32.514465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548964, 33.959019, 32.408073>,  <29.504116, 33.603287, 32.230755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548964, 33.959019, 32.408073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965102, 0.008793, -0.261727,
		-0.236661, 0.457173, -0.857312,
		0.112117, 0.889334, 0.443300,
		29.582598, 34.225819, 32.541065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728161, 34.161430, 31.695246>,  <29.504116, 33.603287, 32.230755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728161, 34.161430, 31.695246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874826, 34.196255, 32.065754>,  <29.962826, 34.217152, 32.288059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874826, 34.196255, 32.065754>,  <29.728161, 34.161430, 31.695246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874826, 34.196255, 32.065754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926579, 0.055418, -0.371996,
		-0.083720, 0.994660, -0.060352,
		0.366665, 0.087064, 0.926270,
		29.984825, 34.222374, 32.343636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050953, 34.863914, 31.876720>,  <29.728161, 34.161430, 31.695246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050953, 34.863914, 31.876720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224405, 34.567242, 32.081413>,  <30.328476, 34.389236, 32.204227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224405, 34.567242, 32.081413>,  <30.050953, 34.863914, 31.876720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224405, 34.567242, 32.081413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891736, 0.271591, -0.362001,
		0.129509, 0.613305, 0.779157,
		0.433629, -0.741684, 0.511733,
		30.354494, 34.344738, 32.234932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578783, 35.264545, 31.673546>,  <30.050953, 34.863914, 31.876720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578783, 35.264545, 31.673546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704054, 34.936348, 31.864843>,  <30.779217, 34.739429, 31.979622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704054, 34.936348, 31.864843>,  <30.578783, 35.264545, 31.673546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704054, 34.936348, 31.864843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932833, 0.360238, 0.007173,
		-0.178167, 0.443875, 0.878198,
		0.313177, -0.820490, 0.478244,
		30.798006, 34.690201, 32.008316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167995, 35.478573, 31.982594>,  <30.578783, 35.264545, 31.673546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167995, 35.478573, 31.982594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199596, 35.082760, 32.030914>,  <31.218557, 34.845272, 32.059906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199596, 35.082760, 32.030914>,  <31.167995, 35.478573, 31.982594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199596, 35.082760, 32.030914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994431, 0.069748, -0.079001,
		0.069748, 0.126369, 0.989528,
		0.079001, -0.989528, 0.120800,
		31.223297, 34.785900, 32.067154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615301, 35.360218, 32.458622>,  <31.167995, 35.478573, 31.982594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615301, 35.360218, 32.458622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624275, 35.025921, 32.239155>,  <31.629660, 34.825344, 32.107475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624275, 35.025921, 32.239155>,  <31.615301, 35.360218, 32.458622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624275, 35.025921, 32.239155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998885, 0.041542, -0.022434,
		0.041542, -0.547551, 0.835740,
		0.022434, -0.835740, -0.548666,
		31.631006, 34.775200, 32.074554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936493, 34.585255, 32.660572>,  <31.615301, 35.360218, 32.458622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936493, 34.585255, 32.660572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979065, 34.694286, 32.278080>,  <32.004608, 34.759705, 32.048584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979065, 34.694286, 32.278080>,  <31.936493, 34.585255, 32.660572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979065, 34.694286, 32.278080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992823, -0.081889, 0.087160,
		-0.054546, -0.958641, -0.279343,
		0.106430, 0.272584, -0.956227,
		32.010994, 34.776062, 31.991211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581257, 34.252701, 32.334393>,  <31.936493, 34.585255, 32.660572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581257, 34.252701, 32.334393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475250, 34.590405, 32.148064>,  <32.411648, 34.793026, 32.036266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475250, 34.590405, 32.148064>,  <32.581257, 34.252701, 32.334393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475250, 34.590405, 32.148064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958211, 0.284542, -0.029438,
		0.107692, -0.454158, -0.884389,
		-0.265016, 0.844261, -0.465822,
		32.395744, 34.843681, 32.008316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203583, 33.745964, 31.894005>,  <32.581257, 34.252701, 32.334393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203583, 33.745964, 31.894005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025440, 33.401257, 31.991175>,  <31.918554, 33.194431, 32.049477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025440, 33.401257, 31.991175>,  <32.203583, 33.745964, 31.894005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025440, 33.401257, 31.991175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372695, -0.425121, -0.824846,
		0.814099, -0.276814, 0.510507,
		-0.445356, -0.861769, 0.242923,
		31.891832, 33.142727, 32.064053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688007, 33.107704, 32.068581>,  <32.203583, 33.745964, 31.894005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688007, 33.107704, 32.068581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348740, 33.141964, 31.859476>,  <32.145180, 33.162521, 31.734015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348740, 33.141964, 31.859476>,  <32.688007, 33.107704, 32.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348740, 33.141964, 31.859476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452477, -0.396020, -0.799020,
		-0.275458, -0.914238, 0.297137,
		-0.848167, 0.085649, -0.522759,
		32.094288, 33.167660, 31.702648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627335, 32.445400, 31.752481>,  <32.688007, 33.107704, 32.068581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627335, 32.445400, 31.752481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478809, 32.784744, 31.601532>,  <32.389694, 32.988350, 31.510963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478809, 32.784744, 31.601532>,  <32.627335, 32.445400, 31.752481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478809, 32.784744, 31.601532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514883, -0.150085, -0.844020,
		-0.772672, -0.507698, -0.381079,
		-0.371312, 0.848362, -0.377372,
		32.367416, 33.039253, 31.488321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277863, 32.282513, 31.129498>,  <32.627335, 32.445400, 31.752481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277863, 32.282513, 31.129498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377132, 32.668987, 31.101505>,  <32.436695, 32.900871, 31.084709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377132, 32.668987, 31.101505>,  <32.277863, 32.282513, 31.129498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377132, 32.668987, 31.101505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419656, -0.172340, -0.891172,
		-0.873098, 0.191795, -0.448235,
		0.248172, 0.966185, -0.069982,
		32.451584, 32.958843, 31.080511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109592, 32.450546, 30.394297>,  <32.277863, 32.282513, 31.129498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109592, 32.450546, 30.394297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373314, 32.722988, 30.521675>,  <32.531548, 32.886456, 30.598103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373314, 32.722988, 30.521675>,  <32.109592, 32.450546, 30.394297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373314, 32.722988, 30.521675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510404, -0.094448, -0.854732,
		-0.552088, 0.726067, -0.409910,
		0.659308, 0.681107, 0.318444,
		32.571106, 32.927319, 30.617208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398216, 32.832958, 29.815411>,  <32.109592, 32.450546, 30.394297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398216, 32.832958, 29.815411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663082, 32.926750, 30.100103>,  <32.822002, 32.983025, 30.270918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663082, 32.926750, 30.100103>,  <32.398216, 32.832958, 29.815411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663082, 32.926750, 30.100103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728199, 0.022771, -0.684987,
		-0.176820, 0.971855, -0.155667,
		0.662163, 0.234476, 0.711731,
		32.861732, 32.997093, 30.313623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593506, 33.537121, 29.749329>,  <32.398216, 32.832958, 29.815411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593506, 33.537121, 29.749329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891335, 33.365448, 29.953842>,  <33.070030, 33.262444, 30.076551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891335, 33.365448, 29.953842>,  <32.593506, 33.537121, 29.749329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891335, 33.365448, 29.953842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607673, 0.118747, -0.785260,
		0.276308, 0.895376, 0.349220,
		0.744572, -0.429185, 0.511285,
		33.114708, 33.236691, 30.107227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126789, 33.911015, 29.614082>,  <32.593506, 33.537121, 29.749329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126789, 33.911015, 29.614082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266415, 33.553055, 29.725306>,  <33.350189, 33.338280, 29.792040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266415, 33.553055, 29.725306>,  <33.126789, 33.911015, 29.614082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266415, 33.553055, 29.725306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567006, -0.034547, -0.822989,
		0.746095, 0.444937, 0.495352,
		0.349065, -0.894895, 0.278057,
		33.371136, 33.284588, 29.808723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793404, 33.959351, 29.480986>,  <33.126789, 33.911015, 29.614082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793404, 33.959351, 29.480986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710049, 33.568943, 29.506180>,  <33.660034, 33.334698, 29.521296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710049, 33.568943, 29.506180>,  <33.793404, 33.959351, 29.480986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710049, 33.568943, 29.506180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625609, -0.182523, -0.758485,
		0.751789, -0.118658, 0.648640,
		-0.208392, -0.976015, 0.062985,
		33.647530, 33.276138, 29.525076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267975, 33.881466, 29.150978>,  <33.793404, 33.959351, 29.480986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267975, 33.881466, 29.150978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103355, 33.516960, 29.157125>,  <34.004585, 33.298256, 29.160814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103355, 33.516960, 29.157125>,  <34.267975, 33.881466, 29.150978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103355, 33.516960, 29.157125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587421, -0.278112, -0.759994,
		0.696827, -0.303742, 0.649749,
		-0.411545, -0.911260, 0.015371,
		33.979893, 33.243584, 29.161737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828938, 33.403049, 28.956453>,  <34.267975, 33.881466, 29.150978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828938, 33.403049, 28.956453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491047, 33.200718, 28.886518>,  <34.288311, 33.079319, 28.844559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491047, 33.200718, 28.886518>,  <34.828938, 33.403049, 28.956453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491047, 33.200718, 28.886518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502840, -0.638251, -0.582913,
		0.183268, -0.580317, 0.793502,
		-0.844728, -0.505833, -0.174835,
		34.237629, 33.048969, 28.834068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018867, 32.687412, 29.002781>,  <34.828938, 33.403049, 28.956453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018867, 32.687412, 29.002781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696529, 32.714489, 28.767487>,  <34.503124, 32.730736, 28.626310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696529, 32.714489, 28.767487>,  <35.018867, 32.687412, 29.002781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696529, 32.714489, 28.767487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467267, -0.537486, -0.701976,
		-0.363687, -0.840551, 0.401504,
		-0.805850, 0.067690, -0.588238,
		34.454773, 32.734795, 28.591015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975979, 32.060764, 28.716070>,  <35.018867, 32.687412, 29.002781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975979, 32.060764, 28.716070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766701, 32.306995, 28.480330>,  <34.641136, 32.454735, 28.338884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766701, 32.306995, 28.480330>,  <34.975979, 32.060764, 28.716070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766701, 32.306995, 28.480330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391360, -0.440772, -0.807810,
		-0.757038, -0.653289, -0.010303,
		-0.523193, 0.615575, -0.589353,
		34.609741, 32.491669, 28.303524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777485, 31.523891, 28.191042>,  <34.975979, 32.060764, 28.716070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777485, 31.523891, 28.191042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753101, 31.895332, 28.044626>,  <34.738472, 32.118195, 27.956778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753101, 31.895332, 28.044626>,  <34.777485, 31.523891, 28.191042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753101, 31.895332, 28.044626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510861, -0.286021, -0.810687,
		-0.857499, -0.236417, -0.456949,
		-0.060963, 0.928601, -0.366039,
		34.734814, 32.173912, 27.934814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698555, 31.388367, 27.437912>,  <34.777485, 31.523891, 28.191042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698555, 31.388367, 27.437912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778664, 31.780172, 27.446301>,  <34.826729, 32.015255, 27.451334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778664, 31.780172, 27.446301>,  <34.698555, 31.388367, 27.437912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778664, 31.780172, 27.446301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409358, -0.064214, -0.910111,
		-0.890121, 0.190859, -0.413832,
		0.200276, 0.979515, 0.020972,
		34.838745, 32.074028, 27.452593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518387, 31.686665, 26.780418>,  <34.698555, 31.388367, 27.437912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518387, 31.686665, 26.780418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783939, 31.932800, 26.950413>,  <34.943272, 32.080482, 27.052410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783939, 31.932800, 26.950413>,  <34.518387, 31.686665, 26.780418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783939, 31.932800, 26.950413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472945, 0.094746, -0.875983,
		-0.579294, 0.782547, -0.228122,
		0.663884, 0.615341, 0.424987,
		34.983105, 32.117401, 27.077909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496685, 32.328003, 26.352629>,  <34.518387, 31.686665, 26.780418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496685, 32.328003, 26.352629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833252, 32.313011, 26.568264>,  <35.035191, 32.304016, 26.697645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833252, 32.313011, 26.568264>,  <34.496685, 32.328003, 26.352629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833252, 32.313011, 26.568264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535271, 0.194779, -0.821916,
		-0.074198, 0.980131, 0.183952,
		0.841415, -0.037479, 0.539088,
		35.085678, 32.301769, 26.729990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956486, 32.809093, 26.050640>,  <34.496685, 32.328003, 26.352629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956486, 32.809093, 26.050640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182335, 32.554714, 26.261076>,  <35.317844, 32.402084, 26.387339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182335, 32.554714, 26.261076>,  <34.956486, 32.809093, 26.050640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182335, 32.554714, 26.261076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688092, 0.010703, -0.725545,
		0.455781, 0.771655, 0.443636,
		0.564618, -0.635952, 0.526091,
		35.351719, 32.363930, 26.418903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537155, 33.135670, 25.952225>,  <34.956486, 32.809093, 26.050640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537155, 33.135670, 25.952225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615559, 32.753830, 26.041954>,  <35.662601, 32.524727, 26.095793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615559, 32.753830, 26.041954>,  <35.537155, 33.135670, 25.952225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615559, 32.753830, 26.041954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497968, -0.100175, -0.861390,
		0.844754, 0.280544, 0.455725,
		0.196006, -0.954599, 0.224325,
		35.674362, 32.467449, 26.109251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230690, 33.000774, 25.788378>,  <35.537155, 33.135670, 25.952225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230690, 33.000774, 25.788378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066849, 32.635948, 25.795982>,  <35.968544, 32.417053, 25.800545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066849, 32.635948, 25.795982>,  <36.230690, 33.000774, 25.788378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066849, 32.635948, 25.795982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536606, -0.257737, -0.803508,
		0.737752, -0.318919, 0.594990,
		-0.409605, -0.912065, 0.019012,
		35.943966, 32.362328, 25.801685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678486, 32.436558, 25.773985>,  <36.230690, 33.000774, 25.788378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678486, 32.436558, 25.773985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341248, 32.289825, 25.616693>,  <36.138905, 32.201786, 25.522318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341248, 32.289825, 25.616693>,  <36.678486, 32.436558, 25.773985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341248, 32.289825, 25.616693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474195, -0.162232, -0.865343,
		0.253641, -0.916032, 0.310726,
		-0.843092, -0.366832, -0.393230,
		36.088322, 32.179775, 25.498724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981453, 31.981028, 25.397371>,  <36.678486, 32.436558, 25.773985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981453, 31.981028, 25.397371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607204, 31.987978, 25.256336>,  <36.382656, 31.992149, 25.171715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607204, 31.987978, 25.256336>,  <36.981453, 31.981028, 25.397371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607204, 31.987978, 25.256336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340117, -0.223164, -0.913520,
		-0.094558, -0.974626, 0.202887,
		-0.935617, 0.017375, -0.352589,
		36.326519, 31.993191, 25.150560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813606, 31.353251, 25.027409>,  <36.981453, 31.981028, 25.397371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813606, 31.353251, 25.027409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573135, 31.644123, 24.894871>,  <36.428852, 31.818647, 24.815348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573135, 31.644123, 24.894871>,  <36.813606, 31.353251, 25.027409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573135, 31.644123, 24.894871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273401, -0.202451, -0.940354,
		-0.750891, -0.655909, -0.077104,
		-0.601177, 0.727184, -0.331345,
		36.392780, 31.862278, 24.795467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628109, 31.114697, 24.459351>,  <36.813606, 31.353251, 25.027409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628109, 31.114697, 24.459351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530743, 31.500246, 24.416090>,  <36.472321, 31.731575, 24.390133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530743, 31.500246, 24.416090>,  <36.628109, 31.114697, 24.459351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530743, 31.500246, 24.416090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258054, -0.043128, -0.965167,
		-0.934963, -0.262849, -0.238233,
		-0.243418, 0.963873, -0.108152,
		36.457718, 31.789408, 24.383644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503269, 31.185080, 23.737839>,  <36.628109, 31.114697, 24.459351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503269, 31.185080, 23.737839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531071, 31.564568, 23.861191>,  <36.547752, 31.792261, 23.935202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531071, 31.564568, 23.861191>,  <36.503269, 31.185080, 23.737839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531071, 31.564568, 23.861191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159565, 0.294574, -0.942213,
		-0.984738, 0.114695, -0.130909,
		0.069505, 0.948721, 0.308379,
		36.551922, 31.849184, 23.953705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288208, 31.560940, 23.188540>,  <36.503269, 31.185080, 23.737839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288208, 31.560940, 23.188540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480099, 31.849611, 23.388157>,  <36.595234, 32.022812, 23.507927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480099, 31.849611, 23.388157>,  <36.288208, 31.560940, 23.188540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480099, 31.849611, 23.388157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271258, 0.418915, -0.866562,
		-0.834434, 0.551084, 0.005205,
		0.479728, 0.721676, 0.499043,
		36.624016, 32.066113, 23.537870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118317, 32.123314, 22.839653>,  <36.288208, 31.560940, 23.188540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118317, 32.123314, 22.839653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444599, 32.248016, 23.034563>,  <36.640369, 32.322838, 23.151510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444599, 32.248016, 23.034563>,  <36.118317, 32.123314, 22.839653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444599, 32.248016, 23.034563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340548, 0.422119, -0.840144,
		-0.467609, 0.851248, 0.238156,
		0.815702, 0.311755, 0.487277,
		36.689308, 32.341541, 23.180746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158203, 32.809982, 22.784245>,  <36.118317, 32.123314, 22.839653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158203, 32.809982, 22.784245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535519, 32.718151, 22.880163>,  <36.761909, 32.663052, 22.937714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535519, 32.718151, 22.880163>,  <36.158203, 32.809982, 22.784245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535519, 32.718151, 22.880163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300430, 0.283007, -0.910851,
		0.141249, 0.931236, 0.335930,
		0.943287, -0.229580, 0.239797,
		36.818504, 32.649277, 22.952103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605236, 33.505898, 22.674028>,  <36.158203, 32.809982, 22.784245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605236, 33.505898, 22.674028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875469, 33.211029, 22.668892>,  <37.037609, 33.034107, 22.665810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875469, 33.211029, 22.668892>,  <36.605236, 33.505898, 22.674028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875469, 33.211029, 22.668892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470981, 0.444898, -0.761737,
		0.567244, 0.508568, 0.647760,
		0.675582, -0.737173, -0.012840,
		37.078144, 32.989876, 22.665039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136627, 33.743675, 22.889603>,  <36.605236, 33.505898, 22.674028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136627, 33.743675, 22.889603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240353, 33.437706, 22.653753>,  <37.302586, 33.254128, 22.512243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240353, 33.437706, 22.653753>,  <37.136627, 33.743675, 22.889603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240353, 33.437706, 22.653753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564702, 0.615358, -0.549952,
		0.783499, -0.190354, 0.591519,
		0.259310, -0.764918, -0.589625,
		37.318146, 33.208229, 22.476866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876556, 33.817497, 22.813398>,  <37.136627, 33.743675, 22.889603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876556, 33.817497, 22.813398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757977, 33.574242, 22.518839>,  <37.686829, 33.428288, 22.342104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757977, 33.574242, 22.518839>,  <37.876556, 33.817497, 22.813398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757977, 33.574242, 22.518839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768850, 0.305443, -0.561760,
		0.566556, -0.732715, 0.377018,
		-0.296453, -0.608139, -0.736399,
		37.669041, 33.391800, 22.297920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417599, 33.244251, 22.636595>,  <37.876556, 33.817497, 22.813398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417599, 33.244251, 22.636595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206120, 33.335155, 22.309465>,  <38.079231, 33.389698, 22.113188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206120, 33.335155, 22.309465>,  <38.417599, 33.244251, 22.636595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206120, 33.335155, 22.309465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834235, 0.316900, -0.451249,
		0.156618, -0.920830, -0.357132,
		-0.528699, 0.227258, -0.817821,
		38.047508, 33.403332, 22.064119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795834, 33.003197, 22.087151>,  <38.417599, 33.244251, 22.636595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795834, 33.003197, 22.087151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551685, 33.292870, 21.958773>,  <38.405197, 33.466675, 21.881746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551685, 33.292870, 21.958773>,  <38.795834, 33.003197, 22.087151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551685, 33.292870, 21.958773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769631, 0.446336, -0.456566,
		-0.187387, -0.525684, -0.829785,
		-0.610372, 0.724182, -0.320945,
		38.368572, 33.510124, 21.862490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019241, 33.151211, 21.430014>,  <38.795834, 33.003197, 22.087151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019241, 33.151211, 21.430014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770348, 33.458809, 21.488636>,  <38.621014, 33.643368, 21.523809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770348, 33.458809, 21.488636>,  <39.019241, 33.151211, 21.430014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770348, 33.458809, 21.488636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553474, 0.564546, -0.612335,
		-0.553619, -0.299899, -0.776896,
		-0.622232, 0.768992, 0.146558,
		38.583679, 33.689507, 21.532604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930294, 33.466461, 20.711470>,  <39.019241, 33.151211, 21.430014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930294, 33.466461, 20.711470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833607, 33.740139, 20.986702>,  <38.775593, 33.904346, 21.151840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833607, 33.740139, 20.986702>,  <38.930294, 33.466461, 20.711470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833607, 33.740139, 20.986702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399225, 0.716433, -0.572139,
		-0.884416, 0.136401, -0.446323,
		-0.241720, 0.684192, 0.688079,
		38.761089, 33.945396, 21.193127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605534, 34.053474, 20.372408>,  <38.930294, 33.466461, 20.711470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605534, 34.053474, 20.372408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735493, 34.205402, 20.718859>,  <38.813469, 34.296558, 20.926729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735493, 34.205402, 20.718859>,  <38.605534, 34.053474, 20.372408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735493, 34.205402, 20.718859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282836, 0.834879, -0.472209,
		-0.902465, 0.398394, 0.163828,
		0.324902, 0.379816, 0.866129,
		38.832962, 34.319347, 20.978697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390293, 34.760368, 20.372995>,  <38.605534, 34.053474, 20.372408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390293, 34.760368, 20.372995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692905, 34.739925, 20.633780>,  <38.874474, 34.727661, 20.790251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692905, 34.739925, 20.633780>,  <38.390293, 34.760368, 20.372995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692905, 34.739925, 20.633780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401648, 0.823065, -0.401550,
		-0.516086, 0.565643, 0.643197,
		0.756527, -0.051105, 0.651962,
		38.919865, 34.724594, 20.829369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413998, 35.326073, 20.727697>,  <38.390293, 34.760368, 20.372995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413998, 35.326073, 20.727697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797855, 35.222290, 20.771084>,  <39.028172, 35.160019, 20.797115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797855, 35.222290, 20.771084>,  <38.413998, 35.326073, 20.727697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797855, 35.222290, 20.771084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280998, 0.869523, -0.406164,
		0.011070, 0.420251, 0.907340,
		0.959644, -0.259457, 0.108464,
		39.085751, 35.144451, 20.803623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725529, 35.901558, 20.840843>,  <38.413998, 35.326073, 20.727697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725529, 35.901558, 20.840843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990730, 35.644913, 20.686567>,  <39.149853, 35.490925, 20.594002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990730, 35.644913, 20.686567>,  <38.725529, 35.901558, 20.840843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990730, 35.644913, 20.686567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456466, 0.754831, -0.471030,
		0.593351, 0.136240, 0.793331,
		0.663004, -0.641614, -0.385691,
		39.189632, 35.452427, 20.570860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347771, 36.213634, 20.958578>,  <38.725529, 35.901558, 20.840843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347771, 36.213634, 20.958578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400669, 35.960697, 20.653250>,  <39.432407, 35.808937, 20.470053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400669, 35.960697, 20.653250>,  <39.347771, 36.213634, 20.958578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400669, 35.960697, 20.653250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543142, 0.690411, -0.477839,
		0.829160, -0.351397, 0.434757,
		0.132250, -0.632340, -0.763319,
		39.440346, 35.770996, 20.424253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035156, 36.326149, 20.730656>,  <39.347771, 36.213634, 20.958578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035156, 36.326149, 20.730656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870049, 36.154301, 20.409397>,  <39.770985, 36.051189, 20.216642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870049, 36.154301, 20.409397>,  <40.035156, 36.326149, 20.730656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870049, 36.154301, 20.409397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540076, 0.594594, -0.595631,
		0.733442, -0.679620, -0.013403,
		-0.412772, -0.429623, -0.803146,
		39.746216, 36.025414, 20.168453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507725, 36.355946, 20.112064>,  <40.035156, 36.326149, 20.730656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507725, 36.355946, 20.112064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155811, 36.305832, 19.928635>,  <39.944664, 36.275764, 19.818577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155811, 36.305832, 19.928635>,  <40.507725, 36.355946, 20.112064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155811, 36.305832, 19.928635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321754, 0.553184, -0.768415,
		0.349944, -0.823585, -0.446371,
		-0.879781, -0.125280, -0.458575,
		39.891876, 36.268250, 19.791061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667877, 36.129982, 19.478552>,  <40.507725, 36.355946, 20.112064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667877, 36.129982, 19.478552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297531, 36.269917, 19.421431>,  <40.075325, 36.353878, 19.387157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297531, 36.269917, 19.421431>,  <40.667877, 36.129982, 19.478552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297531, 36.269917, 19.421431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290962, 0.418948, -0.860130,
		-0.241075, -0.837913, -0.489677,
		-0.925864, 0.349834, -0.142803,
		40.019772, 36.374866, 19.378590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582863, 36.021622, 18.787794>,  <40.667877, 36.129982, 19.478552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582863, 36.021622, 18.787794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309780, 36.293045, 18.896217>,  <40.145931, 36.455898, 18.961271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309780, 36.293045, 18.896217>,  <40.582863, 36.021622, 18.787794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309780, 36.293045, 18.896217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027288, 0.394373, -0.918545,
		-0.730185, -0.619698, -0.287756,
		-0.682704, 0.678560, 0.271056,
		40.104969, 36.496613, 18.977533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095436, 35.844795, 18.339409>,  <40.582863, 36.021622, 18.787794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095436, 35.844795, 18.339409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015724, 36.217537, 18.460691>,  <39.967896, 36.441181, 18.533461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015724, 36.217537, 18.460691>,  <40.095436, 35.844795, 18.339409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015724, 36.217537, 18.460691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073035, 0.294428, -0.952879,
		-0.977217, -0.212033, 0.009385,
		-0.199278, 0.931855, 0.303206,
		39.955940, 36.497093, 18.551653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478729, 36.217911, 18.008282>,  <40.095436, 35.844795, 18.339409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478729, 36.217911, 18.008282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699295, 36.529785, 18.126966>,  <39.831635, 36.716911, 18.198177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699295, 36.529785, 18.126966>,  <39.478729, 36.217911, 18.008282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699295, 36.529785, 18.126966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153701, 0.444529, -0.882479,
		-0.819952, 0.441004, 0.364956,
		0.551411, 0.779685, 0.296710,
		39.864719, 36.763691, 18.215979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027626, 36.915485, 17.914217>,  <39.478729, 36.217911, 18.008282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027626, 36.915485, 17.914217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417038, 36.997715, 17.874271>,  <39.650684, 37.047054, 17.850304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417038, 36.997715, 17.874271>,  <39.027626, 36.915485, 17.914217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417038, 36.997715, 17.874271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204482, 0.588305, -0.782358,
		-0.102086, 0.782071, 0.614771,
		0.973532, 0.205578, -0.099862,
		39.709099, 37.059387, 17.844313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122402, 37.658485, 17.822338>,  <39.027626, 36.915485, 17.914217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122402, 37.658485, 17.822338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414211, 37.441990, 17.655075>,  <39.589298, 37.312092, 17.554718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414211, 37.441990, 17.655075>,  <39.122402, 37.658485, 17.822338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414211, 37.441990, 17.655075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070752, 0.548382, -0.833230,
		0.680284, 0.637448, 0.361765,
		0.729525, -0.541237, -0.418157,
		39.633068, 37.279617, 17.529629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741665, 38.097214, 17.652090>,  <39.122402, 37.658485, 17.822338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741665, 38.097214, 17.652090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680367, 37.791424, 17.401619>,  <39.643589, 37.607952, 17.251337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680367, 37.791424, 17.401619>,  <39.741665, 38.097214, 17.652090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680367, 37.791424, 17.401619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306156, 0.639213, -0.705461,
		0.939566, 0.083600, -0.332003,
		-0.153244, -0.764472, -0.626177,
		39.634392, 37.562080, 17.213766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388275, 38.574100, 18.212696>,  <39.741665, 38.097214, 17.652090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388275, 38.574100, 18.212696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698975, 38.824257, 18.242489>,  <39.885395, 38.974350, 18.260365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698975, 38.824257, 18.242489>,  <39.388275, 38.574100, 18.212696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698975, 38.824257, 18.242489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026517, 0.085681, -0.995970,
		-0.629255, 0.775591, 0.049968,
		0.776747, 0.625393, 0.074482,
		39.931999, 39.011875, 18.264833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155277, 39.095451, 17.775854>,  <39.388275, 38.574100, 18.212696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155277, 39.095451, 17.775854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551289, 39.137524, 17.813339>,  <39.788895, 39.162766, 17.835831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551289, 39.137524, 17.813339>,  <39.155277, 39.095451, 17.775854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551289, 39.137524, 17.813339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095997, -0.016860, -0.995239,
		-0.103098, 0.994310, -0.026789,
		0.990028, 0.105179, 0.093713,
		39.848297, 39.169079, 17.841454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695755, 38.751148, 17.251513>,  <39.155277, 39.095451, 17.775854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695755, 38.751148, 17.251513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889236, 38.696823, 17.597366>,  <40.005325, 38.664230, 17.804878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889236, 38.696823, 17.597366>,  <39.695755, 38.751148, 17.251513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889236, 38.696823, 17.597366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847075, -0.175924, -0.501512,
		0.220220, 0.974990, 0.029947,
		0.483701, -0.135811, 0.864632,
		40.034348, 38.656078, 17.856756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425415, 38.386547, 17.123943>,  <39.695755, 38.751148, 17.251513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425415, 38.386547, 17.123943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496746, 38.773167, 17.050205>,  <40.539547, 39.005138, 17.005962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496746, 38.773167, 17.050205>,  <40.425415, 38.386547, 17.123943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496746, 38.773167, 17.050205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322843, 0.234451, 0.916954,
		0.929500, -0.104008, 0.353853,
		0.178332, 0.966548, -0.184344,
		40.550247, 39.063129, 16.994902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875889, 38.627380, 17.603813>,  <40.425415, 38.386547, 17.123943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875889, 38.627380, 17.603813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661774, 38.943745, 17.485199>,  <40.533306, 39.133564, 17.414030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661774, 38.943745, 17.485199>,  <40.875889, 38.627380, 17.603813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661774, 38.943745, 17.485199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211643, 0.214283, 0.953567,
		0.817725, 0.573193, 0.052687,
		-0.535288, 0.790906, -0.296537,
		40.501186, 39.181015, 17.396238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154011, 39.216415, 17.859741>,  <40.875889, 38.627380, 17.603813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154011, 39.216415, 17.859741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754147, 39.219341, 17.849762>,  <40.514229, 39.221096, 17.843775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754147, 39.219341, 17.849762>,  <41.154011, 39.216415, 17.859741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754147, 39.219341, 17.849762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024700, 0.032307, 0.999173,
		0.008112, 0.999451, -0.032115,
		-0.999662, 0.007312, -0.024948,
		40.454247, 39.221535, 17.842278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861309, 39.893047, 18.185825>,  <41.154011, 39.216415, 17.859741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861309, 39.893047, 18.185825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607113, 39.584637, 18.202194>,  <40.454597, 39.399590, 18.212015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607113, 39.584637, 18.202194>,  <40.861309, 39.893047, 18.185825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607113, 39.584637, 18.202194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117139, 0.148664, 0.981925,
		-0.763173, 0.619209, -0.184791,
		-0.635489, -0.771025, 0.040923,
		40.416466, 39.353329, 18.214472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431202, 40.116215, 18.751326>,  <40.861309, 39.893047, 18.185825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431202, 40.116215, 18.751326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390862, 39.721416, 18.701265>,  <40.366657, 39.484535, 18.671228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390862, 39.721416, 18.701265>,  <40.431202, 40.116215, 18.751326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390862, 39.721416, 18.701265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043851, -0.121262, 0.991651,
		-0.993934, 0.105502, -0.031051,
		-0.100856, -0.986998, -0.125153,
		40.360603, 39.425316, 18.663719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738777, 40.014938, 19.062586>,  <40.431202, 40.116215, 18.751326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738777, 40.014938, 19.062586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996159, 39.708981, 19.074583>,  <40.150589, 39.525406, 19.081781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996159, 39.708981, 19.074583>,  <39.738777, 40.014938, 19.062586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996159, 39.708981, 19.074583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274487, -0.193978, 0.941823,
		-0.714576, -0.614256, -0.334770,
		0.643458, -0.764894, 0.029993,
		40.189198, 39.479511, 19.083582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362362, 39.394825, 19.165756>,  <39.738777, 40.014938, 19.062586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362362, 39.394825, 19.165756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726059, 39.351135, 19.326426>,  <39.944279, 39.324921, 19.422827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726059, 39.351135, 19.326426>,  <39.362362, 39.394825, 19.165756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726059, 39.351135, 19.326426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414080, -0.138768, 0.899601,
		-0.042517, -0.984284, -0.171401,
		0.909247, -0.109222, 0.401672,
		39.998833, 39.318367, 19.446928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216057, 38.936817, 19.633329>,  <39.362362, 39.394825, 19.165756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216057, 38.936817, 19.633329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572697, 39.068626, 19.757559>,  <39.786682, 39.147713, 19.832096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572697, 39.068626, 19.757559>,  <39.216057, 38.936817, 19.633329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572697, 39.068626, 19.757559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323608, -0.016055, 0.946055,
		0.316739, -0.944009, 0.092324,
		0.891602, 0.329529, 0.310574,
		39.840176, 39.167484, 19.850731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264801, 38.560623, 20.199942>,  <39.216057, 38.936817, 19.633329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264801, 38.560623, 20.199942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528374, 38.857010, 20.251757>,  <39.686516, 39.034843, 20.282846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528374, 38.857010, 20.251757>,  <39.264801, 38.560623, 20.199942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528374, 38.857010, 20.251757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347593, 0.147216, 0.926017,
		0.667079, -0.655204, 0.354561,
		0.658927, 0.740969, 0.129539,
		39.726051, 39.079300, 20.290619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785248, 38.315647, 20.615461>,  <39.264801, 38.560623, 20.199942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785248, 38.315647, 20.615461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796043, 38.713074, 20.659468>,  <39.802521, 38.951530, 20.685871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796043, 38.713074, 20.659468>,  <39.785248, 38.315647, 20.615461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796043, 38.713074, 20.659468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268833, -0.098788, 0.958107,
		0.962809, -0.055438, 0.264436,
		0.026993, 0.993563, 0.110018,
		39.804142, 39.011143, 20.692472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989346, 38.433083, 21.347208>,  <39.785248, 38.315647, 20.615461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989346, 38.433083, 21.347208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840164, 38.786865, 21.235043>,  <39.750656, 38.999138, 21.167744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840164, 38.786865, 21.235043>,  <39.989346, 38.433083, 21.347208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840164, 38.786865, 21.235043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362002, 0.139562, 0.921671,
		0.854317, 0.445253, 0.268126,
		-0.372957, 0.884461, -0.280413,
		39.728279, 39.052204, 21.150919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119812, 38.785118, 22.008047>,  <39.989346, 38.433083, 21.347208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119812, 38.785118, 22.008047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844028, 38.965977, 21.781700>,  <39.678558, 39.074493, 21.645891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844028, 38.965977, 21.781700>,  <40.119812, 38.785118, 22.008047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844028, 38.965977, 21.781700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517035, 0.239909, 0.821656,
		0.507265, 0.859074, 0.068367,
		-0.689461, 0.452145, -0.565869,
		39.637192, 39.101620, 21.611940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091064, 39.427650, 22.298840>,  <40.119812, 38.785118, 22.008047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091064, 39.427650, 22.298840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741425, 39.402256, 22.106207>,  <39.531639, 39.387020, 21.990627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741425, 39.402256, 22.106207>,  <40.091064, 39.427650, 22.298840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741425, 39.402256, 22.106207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485734, 0.106826, 0.867554,
		-0.003634, 0.992249, -0.124215,
		-0.874099, -0.063488, -0.481581,
		39.479195, 39.383209, 21.961733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862114, 40.025318, 22.563456>,  <40.091064, 39.427650, 22.298840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862114, 40.025318, 22.563456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572273, 39.780712, 22.436337>,  <39.398369, 39.633949, 22.360065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572273, 39.780712, 22.436337>,  <39.862114, 40.025318, 22.563456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572273, 39.780712, 22.436337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437483, 0.051849, 0.897731,
		-0.532498, 0.789532, -0.305097,
		-0.724606, -0.611515, -0.317797,
		39.354893, 39.597260, 22.340998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304157, 40.202694, 22.839563>,  <39.862114, 40.025318, 22.563456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304157, 40.202694, 22.839563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188728, 39.831963, 22.743465>,  <39.119473, 39.609524, 22.685806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188728, 39.831963, 22.743465>,  <39.304157, 40.202694, 22.839563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188728, 39.831963, 22.743465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662957, 0.012379, 0.748555,
		-0.690808, 0.375283, -0.618019,
		-0.288571, -0.926828, -0.240245,
		39.102158, 39.553913, 22.671392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684235, 40.194187, 23.137369>,  <39.304157, 40.202694, 22.839563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684235, 40.194187, 23.137369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745323, 39.808609, 23.050203>,  <38.781975, 39.577263, 22.997904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745323, 39.808609, 23.050203>,  <38.684235, 40.194187, 23.137369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745323, 39.808609, 23.050203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656089, -0.263793, 0.707079,
		-0.739070, 0.034985, -0.672720,
		0.152721, -0.963945, -0.217915,
		38.791142, 39.519424, 22.984829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108418, 39.889076, 22.846249>,  <38.684235, 40.194187, 23.137369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108418, 39.889076, 22.846249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319695, 39.622368, 23.056555>,  <38.446461, 39.462341, 23.182737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319695, 39.622368, 23.056555>,  <38.108418, 39.889076, 22.846249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319695, 39.622368, 23.056555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826246, -0.260816, 0.499292,
		-0.195787, -0.698132, -0.688679,
		0.528191, -0.666773, 0.525764,
		38.478153, 39.422337, 23.214283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690044, 39.302479, 22.872795>,  <38.108418, 39.889076, 22.846249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690044, 39.302479, 22.872795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955780, 39.207783, 23.156374>,  <38.115223, 39.150967, 23.326521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955780, 39.207783, 23.156374>,  <37.690044, 39.302479, 22.872795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955780, 39.207783, 23.156374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722406, -0.446761, 0.527764,
		0.191787, -0.862762, -0.467824,
		0.664340, -0.236741, 0.708947,
		38.155083, 39.136761, 23.369059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655113, 38.540077, 23.062639>,  <37.690044, 39.302479, 22.872795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655113, 38.540077, 23.062639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807972, 38.746941, 23.368977>,  <37.899685, 38.871059, 23.552778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807972, 38.746941, 23.368977>,  <37.655113, 38.540077, 23.062639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807972, 38.746941, 23.368977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588193, -0.503066, 0.633210,
		0.712738, -0.692440, 0.111945,
		0.382144, 0.517158, 0.765842,
		37.922615, 38.902088, 23.598730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737984, 38.082146, 23.533255>,  <37.655113, 38.540077, 23.062639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737984, 38.082146, 23.533255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721600, 38.431019, 23.728243>,  <37.711769, 38.640343, 23.845236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721600, 38.431019, 23.728243>,  <37.737984, 38.082146, 23.533255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721600, 38.431019, 23.728243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519301, -0.435393, 0.735363,
		0.853609, -0.223020, 0.470759,
		-0.040964, 0.872178, 0.487470,
		37.709309, 38.692673, 23.874483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780247, 37.816242, 24.168074>,  <37.737984, 38.082146, 23.533255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780247, 37.816242, 24.168074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655025, 38.195000, 24.197435>,  <37.579891, 38.422253, 24.215054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655025, 38.195000, 24.197435>,  <37.780247, 37.816242, 24.168074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655025, 38.195000, 24.197435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585032, -0.253149, 0.770489,
		0.748154, 0.198261, 0.633213,
		-0.313055, 0.946894, 0.073406,
		37.561108, 38.479069, 24.219458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743633, 38.016491, 24.919235>,  <37.780247, 37.816242, 24.168074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743633, 38.016491, 24.919235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499630, 38.300873, 24.779276>,  <37.353230, 38.471504, 24.695301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499630, 38.300873, 24.779276>,  <37.743633, 38.016491, 24.919235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499630, 38.300873, 24.779276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658433, -0.209112, 0.723007,
		0.440859, 0.671424, 0.595678,
		-0.610008, 0.710958, -0.349899,
		37.316628, 38.514160, 24.674307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553486, 38.421936, 25.558662>,  <37.743633, 38.016491, 24.919235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553486, 38.421936, 25.558662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276760, 38.561459, 25.305767>,  <37.110725, 38.645172, 25.154030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276760, 38.561459, 25.305767>,  <37.553486, 38.421936, 25.558662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276760, 38.561459, 25.305767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647872, 0.086766, 0.756792,
		0.318833, 0.933169, 0.165957,
		-0.691815, 0.348809, -0.632238,
		37.069214, 38.666100, 25.116096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244911, 38.965313, 25.897514>,  <37.553486, 38.421936, 25.558662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244911, 38.965313, 25.897514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990444, 38.822838, 25.623749>,  <36.837765, 38.737354, 25.459490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990444, 38.822838, 25.623749>,  <37.244911, 38.965313, 25.897514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990444, 38.822838, 25.623749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727825, -0.017341, 0.685544,
		-0.256048, 0.934255, -0.248208,
		-0.636168, -0.356185, -0.684414,
		36.799595, 38.715981, 25.418425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686638, 39.416878, 26.041929>,  <37.244911, 38.965313, 25.897514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686638, 39.416878, 26.041929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525719, 39.102314, 25.854435>,  <36.429165, 38.913574, 25.741938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525719, 39.102314, 25.854435>,  <36.686638, 39.416878, 26.041929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525719, 39.102314, 25.854435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700063, -0.065693, 0.711053,
		-0.589972, 0.614202, -0.524108,
		-0.402300, -0.786410, -0.468737,
		36.405029, 38.866390, 25.713814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943924, 39.365040, 26.304823>,  <36.686638, 39.416878, 26.041929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943924, 39.365040, 26.304823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967701, 39.003815, 26.134676>,  <35.981968, 38.787079, 26.032587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967701, 39.003815, 26.134676>,  <35.943924, 39.365040, 26.304823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967701, 39.003815, 26.134676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714327, -0.336134, 0.613800,
		-0.697283, 0.267365, -0.665066,
		0.059443, -0.903067, -0.425367,
		35.985535, 38.732895, 26.007067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318726, 39.131584, 26.460747>,  <35.943924, 39.365040, 26.304823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318726, 39.131584, 26.460747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514744, 38.790775, 26.387087>,  <35.632355, 38.586288, 26.342890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514744, 38.790775, 26.387087>,  <35.318726, 39.131584, 26.460747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514744, 38.790775, 26.387087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683291, -0.506639, 0.525766,
		-0.541263, -0.131821, -0.830456,
		0.490049, -0.852021, -0.184153,
		35.661758, 38.535168, 26.331842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843681, 38.631523, 26.175129>,  <35.318726, 39.131584, 26.460747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843681, 38.631523, 26.175129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153450, 38.429253, 26.327211>,  <35.339310, 38.307888, 26.418461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153450, 38.429253, 26.327211>,  <34.843681, 38.631523, 26.175129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153450, 38.429253, 26.327211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620159, -0.487824, 0.614354,
		-0.125193, -0.711559, -0.691383,
		0.774422, -0.505680, 0.380207,
		35.385777, 38.277550, 26.441273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595448, 37.946987, 26.263790>,  <34.843681, 38.631523, 26.175129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595448, 37.946987, 26.263790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911007, 37.991879, 26.505463>,  <35.100342, 38.018814, 26.650467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911007, 37.991879, 26.505463>,  <34.595448, 37.946987, 26.263790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911007, 37.991879, 26.505463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523508, -0.392159, 0.756407,
		0.321828, -0.913026, -0.250622,
		0.788902, 0.112230, 0.604184,
		35.147678, 38.025547, 26.686718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733105, 37.217426, 26.476202>,  <34.595448, 37.946987, 26.263790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733105, 37.217426, 26.476202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908722, 37.454693, 26.746134>,  <35.014091, 37.597054, 26.908092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908722, 37.454693, 26.746134>,  <34.733105, 37.217426, 26.476202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908722, 37.454693, 26.746134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488534, -0.472748, 0.733378,
		0.754039, -0.651663, 0.082224,
		0.439044, 0.593165, 0.674830,
		35.040436, 37.632641, 26.948584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915993, 36.698181, 27.038132>,  <34.733105, 37.217426, 26.476202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915993, 36.698181, 27.038132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926369, 37.066952, 27.192734>,  <34.932594, 37.288212, 27.285494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926369, 37.066952, 27.192734>,  <34.915993, 36.698181, 27.038132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926369, 37.066952, 27.192734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525801, -0.316250, 0.789633,
		0.850212, -0.223704, 0.476546,
		0.025936, 0.921923, 0.386503,
		34.934151, 37.343529, 27.308685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193867, 36.543743, 27.693375>,  <34.915993, 36.698181, 27.038132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193867, 36.543743, 27.693375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010067, 36.898994, 27.697136>,  <34.899788, 37.112144, 27.699392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010067, 36.898994, 27.697136>,  <35.193867, 36.543743, 27.693375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010067, 36.898994, 27.697136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453511, -0.243716, 0.857281,
		0.763668, 0.389654, 0.514763,
		-0.459499, 0.888128, 0.009405,
		34.872219, 37.165432, 27.699957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348602, 36.861126, 28.228756>,  <35.193867, 36.543743, 27.693375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348602, 36.861126, 28.228756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998505, 37.019558, 28.117718>,  <34.788445, 37.114616, 28.051096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998505, 37.019558, 28.117718>,  <35.348602, 36.861126, 28.228756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998505, 37.019558, 28.117718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385504, -0.224654, 0.894940,
		0.292108, 0.890308, 0.349320,
		-0.875248, 0.396083, -0.277594,
		34.735931, 37.138382, 28.034439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155788, 37.261723, 28.839693>,  <35.348602, 36.861126, 28.228756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155788, 37.261723, 28.839693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819767, 37.201393, 28.631248>,  <34.618153, 37.165195, 28.506182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819767, 37.201393, 28.631248>,  <35.155788, 37.261723, 28.839693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819767, 37.201393, 28.631248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476023, -0.255809, 0.841406,
		-0.260209, 0.954889, 0.143099,
		-0.840055, -0.150823, -0.521114,
		34.567749, 37.156147, 28.474915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529213, 37.534641, 29.198805>,  <35.155788, 37.261723, 28.839693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529213, 37.534641, 29.198805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353901, 37.282249, 28.942751>,  <34.248714, 37.130814, 28.789120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353901, 37.282249, 28.942751>,  <34.529213, 37.534641, 29.198805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353901, 37.282249, 28.942751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537103, -0.387196, 0.749400,
		-0.720716, 0.672264, -0.169203,
		-0.438280, -0.630984, -0.640133,
		34.222416, 37.092953, 28.750711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760372, 37.634136, 29.352142>,  <34.529213, 37.534641, 29.198805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760372, 37.634136, 29.352142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829865, 37.280281, 29.179056>,  <33.871559, 37.067970, 29.075205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829865, 37.280281, 29.179056>,  <33.760372, 37.634136, 29.352142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829865, 37.280281, 29.179056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553624, -0.451122, 0.699992,
		-0.814443, 0.117950, -0.568128,
		0.173731, -0.884634, -0.432714,
		33.881985, 37.014893, 29.049242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094143, 37.360065, 29.301918>,  <33.760372, 37.634136, 29.352142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094143, 37.360065, 29.301918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328915, 37.039062, 29.259020>,  <33.469776, 36.846462, 29.233280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328915, 37.039062, 29.259020>,  <33.094143, 37.360065, 29.301918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328915, 37.039062, 29.259020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553386, -0.494320, 0.670382,
		-0.591000, -0.334114, -0.734225,
		0.586926, -0.802506, -0.107249,
		33.504993, 36.798309, 29.226845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644943, 36.853077, 29.321278>,  <33.094143, 37.360065, 29.301918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644943, 36.853077, 29.321278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991344, 36.663189, 29.384129>,  <33.199184, 36.549255, 29.421839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991344, 36.663189, 29.384129>,  <32.644943, 36.853077, 29.321278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991344, 36.663189, 29.384129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453855, -0.614288, 0.645497,
		-0.209909, -0.630312, -0.747426,
		0.865999, -0.474719, 0.157126,
		33.251144, 36.520775, 29.431267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547649, 36.050438, 29.112408>,  <32.644943, 36.853077, 29.321278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547649, 36.050438, 29.112408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855854, 36.082706, 29.365328>,  <33.040775, 36.102066, 29.517080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855854, 36.082706, 29.365328>,  <32.547649, 36.050438, 29.112408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855854, 36.082706, 29.365328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332103, -0.795887, 0.506233,
		0.544078, -0.600048, -0.586449,
		0.770511, 0.080669, 0.632302,
		33.087006, 36.106907, 29.555017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793095, 35.436665, 29.126101>,  <32.547649, 36.050438, 29.112408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793095, 35.436665, 29.126101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933781, 35.618820, 29.453251>,  <33.018192, 35.728115, 29.649542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933781, 35.618820, 29.453251>,  <32.793095, 35.436665, 29.126101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933781, 35.618820, 29.453251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499560, -0.647580, 0.575396,
		0.791668, -0.610952, -0.000269,
		0.351713, 0.455388, 0.817875,
		33.039295, 35.755436, 29.698614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079285, 34.950314, 29.520716>,  <32.793095, 35.436665, 29.126101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079285, 34.950314, 29.520716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028297, 35.220875, 29.810883>,  <32.997707, 35.383213, 29.984983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028297, 35.220875, 29.810883>,  <33.079285, 34.950314, 29.520716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028297, 35.220875, 29.810883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346306, -0.715705, 0.606497,
		0.929422, -0.173910, 0.325470,
		-0.127464, 0.676404, 0.725418,
		32.990059, 35.423798, 30.028507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320992, 34.609375, 30.108528>,  <33.079285, 34.950314, 29.520716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320992, 34.609375, 30.108528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095043, 34.912060, 30.240168>,  <32.959473, 35.093670, 30.319151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095043, 34.912060, 30.240168>,  <33.320992, 34.609375, 30.108528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095043, 34.912060, 30.240168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367311, -0.587713, 0.720885,
		0.738918, 0.286328, 0.609932,
		-0.564875, 0.756710, 0.329100,
		32.925579, 35.139072, 30.338898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386055, 34.611576, 30.876934>,  <33.320992, 34.609375, 30.108528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386055, 34.611576, 30.876934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053394, 34.816437, 30.791088>,  <32.853798, 34.939354, 30.739580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053394, 34.816437, 30.791088>,  <33.386055, 34.611576, 30.876934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053394, 34.816437, 30.791088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477774, -0.462986, 0.746576,
		0.282995, 0.723428, 0.629735,
		-0.831652, 0.512148, -0.214613,
		32.803898, 34.970081, 30.726704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977638, 34.436848, 30.482136>,  <33.386055, 34.611576, 30.876934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977638, 34.436848, 30.482136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265751, 34.294769, 30.720470>,  <34.438618, 34.209522, 30.863472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265751, 34.294769, 30.720470>,  <33.977638, 34.436848, 30.482136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265751, 34.294769, 30.720470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642686, 0.664948, -0.380524,
		-0.261041, 0.657023, 0.707232,
		0.720286, -0.355196, 0.595839,
		34.481838, 34.188210, 30.899221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400230, 35.013752, 30.807152>,  <33.977638, 34.436848, 30.482136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400230, 35.013752, 30.807152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617233, 34.678570, 30.830875>,  <34.747437, 34.477459, 30.845110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617233, 34.678570, 30.830875>,  <34.400230, 35.013752, 30.807152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617233, 34.678570, 30.830875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755835, 0.456092, -0.469781,
		0.366606, 0.299686, 0.880789,
		0.542507, -0.837955, 0.059307,
		34.779987, 34.427185, 30.848667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834278, 35.223007, 31.321545>,  <34.400230, 35.013752, 30.807152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834278, 35.223007, 31.321545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993893, 34.922920, 31.110666>,  <35.089661, 34.742867, 30.984138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993893, 34.922920, 31.110666>,  <34.834278, 35.223007, 31.321545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993893, 34.922920, 31.110666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673939, 0.629829, -0.386164,
		0.621752, -0.201204, 0.756929,
		0.399038, -0.750222, -0.527196,
		35.113605, 34.697853, 30.952507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464291, 35.500801, 31.246180>,  <34.834278, 35.223007, 31.321545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464291, 35.500801, 31.246180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486244, 35.197189, 30.986683>,  <35.499416, 35.015022, 30.830984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486244, 35.197189, 30.986683>,  <35.464291, 35.500801, 31.246180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486244, 35.197189, 30.986683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781927, 0.436728, -0.444813,
		0.620949, -0.482856, 0.617473,
		0.054887, -0.759025, -0.648743,
		35.502708, 34.969482, 30.792059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197632, 35.256672, 31.187218>,  <35.464291, 35.500801, 31.246180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197632, 35.256672, 31.187218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020134, 35.136711, 30.849424>,  <35.913635, 35.064735, 30.646748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020134, 35.136711, 30.849424>,  <36.197632, 35.256672, 31.187218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020134, 35.136711, 30.849424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675227, 0.507679, -0.535098,
		0.589205, -0.807663, -0.022774,
		-0.443741, -0.299905, -0.844483,
		35.887012, 35.046741, 30.596079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695431, 34.854504, 30.749279>,  <36.197632, 35.256672, 31.187218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695431, 34.854504, 30.749279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394260, 35.017857, 30.542849>,  <36.213558, 35.115868, 30.418991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394260, 35.017857, 30.542849>,  <36.695431, 34.854504, 30.749279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394260, 35.017857, 30.542849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650539, 0.580432, -0.489793,
		0.099526, -0.704504, -0.702687,
		-0.752923, 0.408378, -0.516076,
		36.168385, 35.140369, 30.388025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971119, 34.856853, 30.100018>,  <36.695431, 34.854504, 30.749279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971119, 34.856853, 30.100018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680042, 35.129761, 30.071800>,  <36.505398, 35.293507, 30.054869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680042, 35.129761, 30.071800>,  <36.971119, 34.856853, 30.100018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680042, 35.129761, 30.071800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613420, 0.601315, -0.511992,
		-0.306898, -0.415845, -0.856088,
		-0.727688, 0.682271, -0.070545,
		36.461735, 35.334442, 30.050636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998615, 35.073387, 29.457516>,  <36.971119, 34.856853, 30.100018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998615, 35.073387, 29.457516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763786, 35.365997, 29.596209>,  <36.622890, 35.541561, 29.679424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763786, 35.365997, 29.596209>,  <36.998615, 35.073387, 29.457516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763786, 35.365997, 29.596209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379196, 0.626907, -0.680587,
		-0.715232, -0.268075, -0.645430,
		-0.587072, 0.731522, 0.346731,
		36.587666, 35.585453, 29.700228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766739, 35.449818, 28.893885>,  <36.998615, 35.073387, 29.457516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766739, 35.449818, 28.893885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703796, 35.705490, 29.194998>,  <36.666031, 35.858894, 29.375666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703796, 35.705490, 29.194998>,  <36.766739, 35.449818, 28.893885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703796, 35.705490, 29.194998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448284, 0.725448, -0.522271,
		-0.879933, 0.255280, -0.400687,
		-0.157352, 0.639185, 0.752784,
		36.656590, 35.897247, 29.420834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541889, 36.136902, 28.632721>,  <36.766739, 35.449818, 28.893885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541889, 36.136902, 28.632721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659161, 36.225239, 29.004801>,  <36.729523, 36.278240, 29.228050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659161, 36.225239, 29.004801>,  <36.541889, 36.136902, 28.632721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659161, 36.225239, 29.004801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599984, 0.715014, -0.358853,
		-0.744355, 0.663315, 0.077129,
		0.293181, 0.220838, 0.930202,
		36.747116, 36.291489, 29.283861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597534, 36.828552, 28.663294>,  <36.541889, 36.136902, 28.632721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597534, 36.828552, 28.663294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831703, 36.733971, 28.973486>,  <36.972206, 36.677219, 29.159601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831703, 36.733971, 28.973486>,  <36.597534, 36.828552, 28.663294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831703, 36.733971, 28.973486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723393, 0.584214, -0.367964,
		-0.366039, 0.776391, 0.513062,
		0.585422, -0.236457, 0.775480,
		37.007328, 36.663033, 29.206129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980049, 37.536892, 28.755688>,  <36.597534, 36.828552, 28.663294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980049, 37.536892, 28.755688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182930, 37.240379, 28.931526>,  <37.304661, 37.062473, 29.037029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182930, 37.240379, 28.931526>,  <36.980049, 37.536892, 28.755688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182930, 37.240379, 28.931526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861673, 0.445796, -0.242457,
		-0.016242, 0.501765, 0.864851,
		0.507204, -0.741281, 0.439598,
		37.335091, 37.017994, 29.063406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444027, 37.896896, 29.164827>,  <36.980049, 37.536892, 28.755688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444027, 37.896896, 29.164827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583996, 37.535629, 29.065350>,  <37.667976, 37.318871, 29.005663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583996, 37.535629, 29.065350>,  <37.444027, 37.896896, 29.164827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583996, 37.535629, 29.065350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866648, 0.412893, -0.280073,
		0.355637, -0.117529, 0.927205,
		0.349920, -0.903165, -0.248697,
		37.688972, 37.264679, 28.990740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157543, 37.886288, 29.349291>,  <37.444027, 37.896896, 29.164827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157543, 37.886288, 29.349291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147236, 37.546982, 29.137711>,  <38.141052, 37.343399, 29.010763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147236, 37.546982, 29.137711>,  <38.157543, 37.886288, 29.349291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147236, 37.546982, 29.137711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915371, 0.192645, -0.353530,
		0.401785, -0.493295, 0.771510,
		-0.025767, -0.848261, -0.528951,
		38.139507, 37.292503, 28.979025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823784, 37.554504, 29.365376>,  <38.157543, 37.886288, 29.349291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823784, 37.554504, 29.365376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630619, 37.453510, 29.029984>,  <38.514721, 37.392914, 28.828749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630619, 37.453510, 29.029984>,  <38.823784, 37.554504, 29.365376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630619, 37.453510, 29.029984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771677, 0.329888, -0.543773,
		0.413897, -0.909630, 0.035527,
		-0.482913, -0.252481, -0.838480,
		38.485744, 37.377766, 28.778440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400288, 37.601604, 28.812466>,  <38.823784, 37.554504, 29.365376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400288, 37.601604, 28.812466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070553, 37.583183, 28.586775>,  <38.872711, 37.572132, 28.451361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070553, 37.583183, 28.586775>,  <39.400288, 37.601604, 28.812466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070553, 37.583183, 28.586775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511436, 0.366721, -0.777141,
		0.242703, -0.929190, -0.278748,
		-0.824335, -0.046052, -0.564226,
		38.823254, 37.569366, 28.417507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581615, 37.196594, 28.181204>,  <39.400288, 37.601604, 28.812466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581615, 37.196594, 28.181204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269901, 37.432568, 28.096640>,  <39.082874, 37.574150, 28.045900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269901, 37.432568, 28.096640>,  <39.581615, 37.196594, 28.181204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269901, 37.432568, 28.096640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509845, 0.400682, -0.761257,
		-0.364383, -0.701022, -0.613019,
		-0.779284, 0.589934, -0.211411,
		39.036118, 37.609547, 28.033216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619259, 37.231358, 27.477720>,  <39.581615, 37.196594, 28.181204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619259, 37.231358, 27.477720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358418, 37.521576, 27.565676>,  <39.201912, 37.695705, 27.618448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358418, 37.521576, 27.565676>,  <39.619259, 37.231358, 27.477720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358418, 37.521576, 27.565676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336369, 0.536817, -0.773746,
		-0.679426, -0.430598, -0.594110,
		-0.652102, 0.725543, 0.219888,
		39.162788, 37.739239, 27.631641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064331, 37.181656, 26.937599>,  <39.619259, 37.231358, 27.477720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064331, 37.181656, 26.937599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099682, 37.536160, 27.119473>,  <39.120892, 37.748859, 27.228598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099682, 37.536160, 27.119473>,  <39.064331, 37.181656, 26.937599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099682, 37.536160, 27.119473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364064, 0.396149, -0.842925,
		-0.927171, 0.240029, -0.287644,
		0.088377, 0.886257, 0.454684,
		39.126194, 37.802036, 27.255878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745792, 37.600060, 26.506260>,  <39.064331, 37.181656, 26.937599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745792, 37.600060, 26.506260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996895, 37.826145, 26.720346>,  <39.147556, 37.961796, 26.848799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996895, 37.826145, 26.720346>,  <38.745792, 37.600060, 26.506260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996895, 37.826145, 26.720346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396815, 0.359158, -0.844715,
		-0.669674, 0.742654, 0.001176,
		0.627753, 0.565217, 0.535215,
		39.185223, 37.995708, 26.880911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737186, 38.259499, 26.180763>,  <38.745792, 37.600060, 26.506260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737186, 38.259499, 26.180763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078571, 38.253128, 26.389132>,  <39.283401, 38.249306, 26.514153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078571, 38.253128, 26.389132>,  <38.737186, 38.259499, 26.180763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078571, 38.253128, 26.389132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481026, 0.408723, -0.775603,
		-0.200560, 0.912520, 0.356488,
		0.853458, -0.015925, 0.520919,
		39.334610, 38.248352, 26.545406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988529, 38.902370, 26.094141>,  <38.737186, 38.259499, 26.180763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988529, 38.902370, 26.094141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285881, 38.652489, 26.189749>,  <39.464294, 38.502560, 26.247114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285881, 38.652489, 26.189749>,  <38.988529, 38.902370, 26.094141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285881, 38.652489, 26.189749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482666, 0.253629, -0.838275,
		0.463049, 0.738526, 0.490066,
		0.743383, -0.624701, 0.239019,
		39.508896, 38.465080, 26.261454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641762, 39.253231, 25.967794>,  <38.988529, 38.902370, 26.094141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641762, 39.253231, 25.967794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739437, 38.865364, 25.972073>,  <39.798042, 38.632645, 25.974640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739437, 38.865364, 25.972073>,  <39.641762, 39.253231, 25.967794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739437, 38.865364, 25.972073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516058, 0.120606, -0.848021,
		0.821009, 0.212598, 0.529856,
		0.244191, -0.969668, 0.010694,
		39.812695, 38.574463, 25.975281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433258, 39.237030, 25.732002>,  <39.641762, 39.253231, 25.967794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433258, 39.237030, 25.732002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279652, 38.870941, 25.683186>,  <40.187489, 38.651287, 25.653894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279652, 38.870941, 25.683186>,  <40.433258, 39.237030, 25.732002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279652, 38.870941, 25.683186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383427, -0.037830, -0.922796,
		0.839948, -0.401165, 0.365450,
		-0.384019, -0.915224, -0.122043,
		40.164448, 38.596375, 25.646572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945683, 39.017349, 25.321739>,  <40.433258, 39.237030, 25.732002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945683, 39.017349, 25.321739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642986, 38.759998, 25.275419>,  <40.461369, 38.605587, 25.247627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642986, 38.759998, 25.275419>,  <40.945683, 39.017349, 25.321739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642986, 38.759998, 25.275419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380241, -0.289110, -0.878540,
		0.531752, -0.708860, 0.463419,
		-0.756741, -0.643377, -0.115802,
		40.415962, 38.566986, 25.240679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252632, 38.325264, 25.211012>,  <40.945683, 39.017349, 25.321739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252632, 38.325264, 25.211012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884514, 38.334454, 25.054789>,  <40.663643, 38.339970, 24.961054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884514, 38.334454, 25.054789>,  <41.252632, 38.325264, 25.211012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884514, 38.334454, 25.054789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367548, -0.291299, -0.883206,
		-0.134063, -0.956356, 0.259634,
		-0.920291, 0.022978, -0.390559,
		40.608425, 38.341347, 24.937620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264389, 37.672321, 24.868717>,  <41.252632, 38.325264, 25.211012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264389, 37.672321, 24.868717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975975, 37.903984, 24.716570>,  <40.802925, 38.042984, 24.625282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975975, 37.903984, 24.716570>,  <41.264389, 37.672321, 24.868717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975975, 37.903984, 24.716570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261131, -0.281345, -0.923394,
		-0.641807, -0.765127, 0.051624,
		-0.721038, 0.579160, -0.380367,
		40.759663, 38.077732, 24.602459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873844, 37.228283, 24.418058>,  <41.264389, 37.672321, 24.868717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873844, 37.228283, 24.418058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831093, 37.611439, 24.311453>,  <40.805443, 37.841331, 24.247490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831093, 37.611439, 24.311453>,  <40.873844, 37.228283, 24.418058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831093, 37.611439, 24.311453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327788, -0.219115, -0.918990,
		-0.938686, -0.185580, -0.290566,
		-0.106879, 0.957888, -0.266511,
		40.799030, 37.898804, 24.231499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585114, 37.315563, 23.659420>,  <40.873844, 37.228283, 24.418058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585114, 37.315563, 23.659420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729527, 37.677776, 23.748560>,  <40.816174, 37.895103, 23.802044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729527, 37.677776, 23.748560>,  <40.585114, 37.315563, 23.659420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729527, 37.677776, 23.748560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494826, 0.016529, -0.868835,
		-0.790443, 0.423952, -0.442114,
		0.361037, 0.905534, 0.222848,
		40.837837, 37.949436, 23.815414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512363, 37.868881, 23.079884>,  <40.585114, 37.315563, 23.659420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512363, 37.868881, 23.079884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819088, 37.971020, 23.315441>,  <41.003124, 38.032303, 23.456776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819088, 37.971020, 23.315441>,  <40.512363, 37.868881, 23.079884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819088, 37.971020, 23.315441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611303, -0.010781, -0.791323,
		-0.195711, 0.966790, -0.164359,
		0.766815, 0.255344, 0.588892,
		41.049133, 38.047623, 23.492109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880825, 38.339638, 22.649109>,  <40.512363, 37.868881, 23.079884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880825, 38.339638, 22.649109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143852, 38.291676, 22.946627>,  <41.301666, 38.262897, 23.125137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143852, 38.291676, 22.946627>,  <40.880825, 38.339638, 22.649109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143852, 38.291676, 22.946627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753388, 0.110061, -0.648300,
		-0.004126, 0.986665, 0.162710,
		0.657563, -0.119909, 0.743796,
		41.341122, 38.255703, 23.169765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394707, 38.875599, 22.541420>,  <40.880825, 38.339638, 22.649109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394707, 38.875599, 22.541420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570824, 38.604156, 22.776587>,  <41.676495, 38.441292, 22.917686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570824, 38.604156, 22.776587>,  <41.394707, 38.875599, 22.541420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570824, 38.604156, 22.776587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822118, 0.041482, -0.567803,
		0.360924, 0.733334, 0.576155,
		0.440290, -0.678602, 0.587916,
		41.702911, 38.400578, 22.952961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056667, 39.110737, 22.690487>,  <41.394707, 38.875599, 22.541420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056667, 39.110737, 22.690487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054409, 38.714603, 22.745934>,  <42.053055, 38.476925, 22.779202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054409, 38.714603, 22.745934>,  <42.056667, 39.110737, 22.690487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054409, 38.714603, 22.745934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726288, -0.099345, -0.680173,
		0.687367, 0.096838, 0.719826,
		-0.005644, -0.990330, 0.138619,
		42.052715, 38.417503, 22.787519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723156, 38.961159, 22.720221>,  <42.056667, 39.110737, 22.690487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723156, 38.961159, 22.720221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554230, 38.604259, 22.656294>,  <42.452873, 38.390121, 22.617937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554230, 38.604259, 22.656294>,  <42.723156, 38.961159, 22.720221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554230, 38.604259, 22.656294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801962, -0.285605, -0.524677,
		0.422498, -0.349747, 0.836165,
		-0.422318, -0.892248, -0.159817,
		42.427536, 38.336586, 22.608349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260925, 38.502182, 22.894438>,  <42.723156, 38.961159, 22.720221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260925, 38.502182, 22.894438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033611, 38.298172, 22.636160>,  <42.897221, 38.175766, 22.481194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033611, 38.298172, 22.636160>,  <43.260925, 38.502182, 22.894438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033611, 38.298172, 22.636160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796164, -0.142681, -0.588017,
		0.207774, -0.848244, 0.487146,
		-0.568289, -0.510023, -0.645696,
		42.863125, 38.145164, 22.442451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657028, 37.906052, 22.726877>,  <43.260925, 38.502182, 22.894438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657028, 37.906052, 22.726877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395168, 37.947285, 22.427330>,  <43.238052, 37.972027, 22.247601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395168, 37.947285, 22.427330>,  <43.657028, 37.906052, 22.726877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395168, 37.947285, 22.427330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714583, -0.238757, -0.657545,
		-0.246596, -0.965590, 0.082623,
		-0.654646, 0.103107, -0.748871,
		43.198772, 37.978210, 22.202669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554523, 37.242756, 22.375118>,  <43.657028, 37.906052, 22.726877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554523, 37.242756, 22.375118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458633, 37.535416, 22.119862>,  <43.401100, 37.711010, 21.966707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458633, 37.535416, 22.119862>,  <43.554523, 37.242756, 22.375118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458633, 37.535416, 22.119862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718012, -0.308802, -0.623778,
		-0.653446, -0.607727, -0.451306,
		-0.239723, 0.731648, -0.638141,
		43.386715, 37.754910, 21.928419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646179, 37.011360, 21.720667>,  <43.554523, 37.242756, 22.375118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646179, 37.011360, 21.720667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607666, 37.391991, 21.603889>,  <43.584557, 37.620369, 21.533823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607666, 37.391991, 21.603889>,  <43.646179, 37.011360, 21.720667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607666, 37.391991, 21.603889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705440, -0.141681, -0.694465,
		-0.702200, -0.272817, -0.657637,
		-0.096287, 0.951576, -0.291944,
		43.578781, 37.677464, 21.516306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196404, 36.510071, 21.410387>,  <43.646179, 37.011360, 21.720667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196404, 36.510071, 21.410387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400074, 36.165897, 21.402458>,  <44.522278, 35.959393, 21.397701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400074, 36.165897, 21.402458>,  <44.196404, 36.510071, 21.410387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400074, 36.165897, 21.402458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600706, -0.371785, 0.707763,
		-0.616353, -0.348469, -0.706172,
		0.509177, -0.860433, -0.019823,
		44.552826, 35.907768, 21.396511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845390, 36.021820, 21.264889>,  <44.196404, 36.510071, 21.410387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845390, 36.021820, 21.264889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136547, 35.829945, 21.460875>,  <44.311241, 35.714821, 21.578466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136547, 35.829945, 21.460875>,  <43.845390, 36.021820, 21.264889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136547, 35.829945, 21.460875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650527, -0.257221, 0.714599,
		-0.216749, -0.838894, -0.499276,
		0.727897, -0.479681, 0.489971,
		44.354916, 35.686039, 21.607864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601097, 35.355400, 21.457846>,  <43.845390, 36.021820, 21.264889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601097, 35.355400, 21.457846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886349, 35.448360, 21.722401>,  <44.057499, 35.504139, 21.881134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886349, 35.448360, 21.722401>,  <43.601097, 35.355400, 21.457846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886349, 35.448360, 21.722401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594887, -0.298522, 0.746320,
		0.370888, -0.925674, -0.074629,
		0.713128, 0.232406, 0.661390,
		44.100288, 35.518082, 21.920818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599014, 34.768871, 21.965139>,  <43.601097, 35.355400, 21.457846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599014, 34.768871, 21.965139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814705, 35.051601, 22.148285>,  <43.944118, 35.221237, 22.258173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814705, 35.051601, 22.148285>,  <43.599014, 34.768871, 21.965139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814705, 35.051601, 22.148285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351619, -0.305066, 0.885041,
		0.765246, -0.638229, 0.084034,
		0.539223, 0.706822, 0.457864,
		43.976471, 35.263649, 22.285645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910988, 34.442047, 22.573120>,  <43.599014, 34.768871, 21.965139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910988, 34.442047, 22.573120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913429, 34.837166, 22.635363>,  <43.914894, 35.074238, 22.672709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913429, 34.837166, 22.635363>,  <43.910988, 34.442047, 22.573120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913429, 34.837166, 22.635363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322189, -0.145369, 0.935448,
		0.946656, -0.055845, 0.317371,
		0.006104, 0.987800, 0.155607,
		43.915260, 35.133507, 22.682045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325371, 34.599365, 23.202597>,  <43.910988, 34.442047, 22.573120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325371, 34.599365, 23.202597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108818, 34.934841, 23.178925>,  <43.978886, 35.136127, 23.164722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108818, 34.934841, 23.178925>,  <44.325371, 34.599365, 23.202597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108818, 34.934841, 23.178925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201969, -0.061403, 0.977465,
		0.816158, 0.541135, 0.202632,
		-0.541383, 0.838691, -0.059178,
		43.946404, 35.186447, 23.161171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392628, 34.994019, 23.872608>,  <44.325371, 34.599365, 23.202597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392628, 34.994019, 23.872608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052311, 35.140141, 23.721504>,  <43.848122, 35.227814, 23.630842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052311, 35.140141, 23.721504>,  <44.392628, 34.994019, 23.872608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052311, 35.140141, 23.721504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459899, -0.169799, 0.871586,
		0.254251, 0.915270, 0.312468,
		-0.850793, 0.365305, -0.377760,
		43.797073, 35.249733, 23.608177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029942, 35.448936, 24.468611>,  <44.392628, 34.994019, 23.872608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029942, 35.448936, 24.468611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734695, 35.363804, 24.212519>,  <43.557549, 35.312725, 24.058865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734695, 35.363804, 24.212519>,  <44.029942, 35.448936, 24.468611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734695, 35.363804, 24.212519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654804, -0.002643, 0.755795,
		-0.162546, 0.977086, -0.137409,
		-0.738113, -0.212827, -0.640229,
		43.513260, 35.299957, 24.020451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401909, 35.712444, 24.737082>,  <44.029942, 35.448936, 24.468611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401909, 35.712444, 24.737082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257870, 35.444889, 24.476955>,  <43.171444, 35.284355, 24.320879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257870, 35.444889, 24.476955>,  <43.401909, 35.712444, 24.737082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257870, 35.444889, 24.476955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753131, -0.202953, 0.625782,
		-0.550564, 0.715120, -0.430678,
		-0.360102, -0.668890, -0.650317,
		43.149837, 35.244221, 24.281860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683884, 35.885262, 24.696966>,  <43.401909, 35.712444, 24.737082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683884, 35.885262, 24.696966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727608, 35.506977, 24.574539>,  <42.753841, 35.280006, 24.501083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727608, 35.506977, 24.574539>,  <42.683884, 35.885262, 24.696966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727608, 35.506977, 24.574539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774426, -0.274060, 0.570224,
		-0.623149, 0.174694, -0.762343,
		0.109313, -0.945713, -0.306068,
		42.760403, 35.223263, 24.482719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064194, 35.729824, 24.681021>,  <42.683884, 35.885262, 24.696966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064194, 35.729824, 24.681021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245476, 35.373268, 24.679037>,  <42.354244, 35.159332, 24.677847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245476, 35.373268, 24.679037>,  <42.064194, 35.729824, 24.681021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245476, 35.373268, 24.679037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676056, -0.347334, 0.649852,
		-0.580997, -0.291161, -0.760044,
		0.453201, -0.891395, -0.004959,
		42.381435, 35.105850, 24.677549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567940, 35.198486, 24.442539>,  <42.064194, 35.729824, 24.681021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567940, 35.198486, 24.442539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860432, 35.016167, 24.645535>,  <42.035927, 34.906773, 24.767332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860432, 35.016167, 24.645535>,  <41.567940, 35.198486, 24.442539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860432, 35.016167, 24.645535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657913, -0.274793, 0.701170,
		-0.180137, -0.846603, -0.500813,
		0.731232, -0.455798, 0.507491,
		42.079800, 34.879425, 24.797781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300354, 34.418209, 24.678907>,  <41.567940, 35.198486, 24.442539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300354, 34.418209, 24.678907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594715, 34.556778, 24.911610>,  <41.771332, 34.639919, 25.051231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594715, 34.556778, 24.911610>,  <41.300354, 34.418209, 24.678907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594715, 34.556778, 24.911610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533688, -0.231988, 0.813239,
		0.416686, -0.908940, 0.014163,
		0.735900, 0.346424, 0.581757,
		41.815487, 34.660706, 25.086136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352200, 33.897297, 25.079845>,  <41.300354, 34.418209, 24.678907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352200, 33.897297, 25.079845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484173, 34.230423, 25.257633>,  <41.563358, 34.430298, 25.364305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484173, 34.230423, 25.257633>,  <41.352200, 33.897297, 25.079845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484173, 34.230423, 25.257633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434618, -0.283956, 0.854679,
		0.838003, -0.475165, 0.268270,
		0.329937, 0.832818, 0.444471,
		41.583153, 34.480270, 25.390974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447842, 33.648281, 25.784815>,  <41.352200, 33.897297, 25.079845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447842, 33.648281, 25.784815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464256, 34.047314, 25.807274>,  <41.474106, 34.286732, 25.820749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464256, 34.047314, 25.807274>,  <41.447842, 33.648281, 25.784815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464256, 34.047314, 25.807274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547219, -0.024576, 0.836629,
		0.835983, -0.065059, 0.544886,
		0.041039, 0.997579, 0.056147,
		41.476566, 34.346588, 25.824118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808712, 33.864151, 26.354525>,  <41.447842, 33.648281, 25.784815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808712, 33.864151, 26.354525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533604, 34.143238, 26.274366>,  <41.368538, 34.310692, 26.226271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533604, 34.143238, 26.274366>,  <41.808712, 33.864151, 26.354525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533604, 34.143238, 26.274366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300322, -0.022157, 0.953580,
		0.660889, 0.716030, 0.224779,
		-0.687773, 0.697717, -0.200396,
		41.327271, 34.352554, 26.214247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680714, 34.205051, 26.952610>,  <41.808712, 33.864151, 26.354525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680714, 34.205051, 26.952610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374268, 34.330734, 26.728346>,  <41.190399, 34.406143, 26.593786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374268, 34.330734, 26.728346>,  <41.680714, 34.205051, 26.952610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374268, 34.330734, 26.728346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590562, 0.000043, 0.806993,
		0.253588, 0.949354, 0.185527,
		-0.766114, 0.314208, -0.560663,
		41.144432, 34.424995, 26.560146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393391, 34.751205, 27.385118>,  <41.680714, 34.205051, 26.952610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393391, 34.751205, 27.385118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092602, 34.676872, 27.132137>,  <40.912128, 34.632271, 26.980349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092602, 34.676872, 27.132137>,  <41.393391, 34.751205, 27.385118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092602, 34.676872, 27.132137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657951, 0.270412, 0.702835,
		0.040414, 0.944640, -0.325612,
		-0.751975, -0.185832, -0.632455,
		40.867008, 34.621124, 26.942400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818668, 35.304657, 27.556452>,  <41.393391, 34.751205, 27.385118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818668, 35.304657, 27.556452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642914, 34.985008, 27.392332>,  <40.537460, 34.793221, 27.293861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642914, 34.985008, 27.392332>,  <40.818668, 35.304657, 27.556452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642914, 34.985008, 27.392332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779397, 0.112044, 0.616431,
		-0.446632, 0.590636, -0.672064,
		-0.439387, -0.799122, -0.410297,
		40.511097, 34.745274, 27.269243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103626, 35.413216, 27.453957>,  <40.818668, 35.304657, 27.556452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103626, 35.413216, 27.453957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134251, 35.014393, 27.455139>,  <40.152626, 34.775097, 27.455849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134251, 35.014393, 27.455139>,  <40.103626, 35.413216, 27.453957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134251, 35.014393, 27.455139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859199, -0.064468, 0.507565,
		-0.505882, -0.041399, -0.861609,
		0.076559, -0.997060, 0.002957,
		40.157219, 34.715275, 27.456026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431927, 35.202633, 27.240789>,  <40.103626, 35.413216, 27.453957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431927, 35.202633, 27.240789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621265, 34.918892, 27.449694>,  <39.734871, 34.748646, 27.575037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621265, 34.918892, 27.449694>,  <39.431927, 35.202633, 27.240789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621265, 34.918892, 27.449694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811041, -0.119605, 0.572631,
		-0.343733, -0.694630, -0.631931,
		0.473349, -0.709354, 0.522261,
		39.763271, 34.706085, 27.606373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912567, 34.888386, 27.574867>,  <39.431927, 35.202633, 27.240789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912567, 34.888386, 27.574867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216328, 34.718952, 27.772406>,  <39.398582, 34.617290, 27.890928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216328, 34.718952, 27.772406>,  <38.912567, 34.888386, 27.574867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216328, 34.718952, 27.772406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541423, 0.009483, 0.840697,
		-0.360791, -0.905806, -0.222139,
		0.759402, -0.423587, 0.493846,
		39.444149, 34.591877, 27.920559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640938, 34.406971, 27.977848>,  <38.912567, 34.888386, 27.574867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640938, 34.406971, 27.977848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998356, 34.446293, 28.153080>,  <39.212807, 34.469887, 28.258219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998356, 34.446293, 28.153080>,  <38.640938, 34.406971, 27.977848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998356, 34.446293, 28.153080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442738, 0.030859, 0.896120,
		0.074574, -0.994678, 0.071097,
		0.893544, 0.098304, 0.438080,
		39.266418, 34.475784, 28.284504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678608, 33.882519, 28.471355>,  <38.640938, 34.406971, 27.977848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678608, 33.882519, 28.471355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961800, 34.138748, 28.590307>,  <39.131714, 34.292488, 28.661678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961800, 34.138748, 28.590307>,  <38.678608, 33.882519, 28.471355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961800, 34.138748, 28.590307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490304, 0.142752, 0.859781,
		0.508305, -0.754509, 0.415142,
		0.707975, 0.640577, 0.297377,
		39.174191, 34.330921, 28.679520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897133, 33.691536, 29.194506>,  <38.678608, 33.882519, 28.471355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897133, 33.691536, 29.194506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014572, 34.071350, 29.150364>,  <39.085037, 34.299240, 29.123878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014572, 34.071350, 29.150364>,  <38.897133, 33.691536, 29.194506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014572, 34.071350, 29.150364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302540, 0.201806, 0.931527,
		0.906790, -0.240110, 0.346523,
		0.293600, 0.949537, -0.110353,
		39.102654, 34.356213, 29.117258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260391, 33.825417, 29.692354>,  <38.897133, 33.691536, 29.194506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260391, 33.825417, 29.692354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115009, 34.182068, 29.584351>,  <39.027779, 34.396057, 29.519548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115009, 34.182068, 29.584351>,  <39.260391, 33.825417, 29.692354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115009, 34.182068, 29.584351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192827, 0.211555, 0.958156,
		0.911436, 0.400314, 0.095037,
		-0.363458, 0.891624, -0.270011,
		39.005974, 34.449554, 29.503347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728836, 34.312813, 29.982117>,  <39.260391, 33.825417, 29.692354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728836, 34.312813, 29.982117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384808, 34.506294, 29.917242>,  <39.178391, 34.622383, 29.878317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384808, 34.506294, 29.917242>,  <39.728836, 34.312813, 29.982117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384808, 34.506294, 29.917242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021775, 0.352419, 0.935589,
		0.509705, 0.801144, -0.313639,
		-0.860074, 0.483704, -0.162185,
		39.126785, 34.651405, 29.868587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962383, 34.827358, 30.271744>,  <39.728836, 34.312813, 29.982117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962383, 34.827358, 30.271744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562893, 34.835651, 30.253347>,  <39.323200, 34.840626, 30.242310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562893, 34.835651, 30.253347>,  <39.962383, 34.827358, 30.271744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562893, 34.835651, 30.253347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036515, 0.331931, 0.942596,
		0.034808, 0.943075, -0.330752,
		-0.998727, 0.020732, -0.045990,
		39.263275, 34.841869, 30.239550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768192, 35.360973, 30.648052>,  <39.962383, 34.827358, 30.271744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768192, 35.360973, 30.648052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401623, 35.200912, 30.645456>,  <39.181679, 35.104877, 30.643900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401623, 35.200912, 30.645456>,  <39.768192, 35.360973, 30.648052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401623, 35.200912, 30.645456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191913, 0.425177, 0.884530,
		-0.351187, 0.811852, -0.466438,
		-0.916426, -0.400151, -0.006488,
		39.126694, 35.080868, 30.643511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441673, 35.802006, 31.033287>,  <39.768192, 35.360973, 30.648052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441673, 35.802006, 31.033287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183155, 35.496925, 31.043015>,  <39.028042, 35.313877, 31.048851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183155, 35.496925, 31.043015>,  <39.441673, 35.802006, 31.033287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183155, 35.496925, 31.043015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168216, 0.173484, 0.970364,
		-0.744313, 0.623054, -0.240420,
		-0.646299, -0.762697, 0.024319,
		38.989265, 35.268116, 31.050310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784042, 35.987034, 31.424379>,  <39.441673, 35.802006, 31.033287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784042, 35.987034, 31.424379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843021, 35.591408, 31.423279>,  <38.878407, 35.354031, 31.422619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843021, 35.591408, 31.423279>,  <38.784042, 35.987034, 31.424379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843021, 35.591408, 31.423279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474764, -0.073216, 0.877063,
		-0.867675, -0.128009, -0.480368,
		0.147443, -0.989067, -0.002754,
		38.887253, 35.294689, 31.422453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346638, 35.725246, 31.900660>,  <38.784042, 35.987034, 31.424379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346638, 35.725246, 31.900660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611752, 35.430206, 31.849022>,  <38.770821, 35.253181, 31.818039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611752, 35.430206, 31.849022>,  <38.346638, 35.725246, 31.900660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611752, 35.430206, 31.849022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151260, -0.300722, 0.941640,
		-0.733378, -0.604573, -0.310882,
		0.662780, -0.737603, -0.129095,
		38.810585, 35.208927, 31.810293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068081, 35.089508, 32.189373>,  <38.346638, 35.725246, 31.900660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068081, 35.089508, 32.189373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455845, 34.991776, 32.180019>,  <38.688503, 34.933136, 32.174408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455845, 34.991776, 32.180019>,  <38.068081, 35.089508, 32.189373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455845, 34.991776, 32.180019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105530, -0.500930, 0.859030,
		-0.221604, -0.830284, -0.511391,
		0.969410, -0.244331, -0.023388,
		38.746666, 34.918476, 32.173004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256927, 34.249874, 32.160854>,  <38.068081, 35.089508, 32.189373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256927, 34.249874, 32.160854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561394, 34.452248, 32.323170>,  <38.744072, 34.573669, 32.420559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561394, 34.452248, 32.323170>,  <38.256927, 34.249874, 32.160854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561394, 34.452248, 32.323170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059222, -0.568841, 0.820313,
		0.645850, -0.648424, -0.403019,
		0.761164, 0.505931, 0.405787,
		38.789742, 34.604027, 32.444904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540958, 33.808510, 32.587791>,  <38.256927, 34.249874, 32.160854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540958, 33.808510, 32.587791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761505, 34.112328, 32.725830>,  <38.893833, 34.294617, 32.808655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761505, 34.112328, 32.725830>,  <38.540958, 33.808510, 32.587791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761505, 34.112328, 32.725830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040589, -0.437590, 0.898258,
		0.833275, -0.481263, -0.272102,
		0.551367, 0.759540, 0.345099,
		38.926914, 34.340191, 32.829361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996384, 33.551254, 33.050278>,  <38.540958, 33.808510, 32.587791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996384, 33.551254, 33.050278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987534, 33.934971, 33.162899>,  <38.982224, 34.165199, 33.230473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987534, 33.934971, 33.162899>,  <38.996384, 33.551254, 33.050278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987534, 33.934971, 33.162899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080722, -0.278993, 0.956894,
		0.996491, 0.043895, -0.071264,
		-0.022121, 0.959289, 0.281557,
		38.980896, 34.222759, 33.247368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533504, 33.569633, 33.588058>,  <38.996384, 33.551254, 33.050278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533504, 33.569633, 33.588058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290092, 33.880466, 33.652351>,  <39.144047, 34.066967, 33.690929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290092, 33.880466, 33.652351>,  <39.533504, 33.569633, 33.588058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290092, 33.880466, 33.652351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091372, -0.269829, 0.958563,
		0.788253, 0.568627, 0.235202,
		-0.608529, 0.777082, 0.160737,
		39.107533, 34.113590, 33.700573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774590, 33.957024, 34.168125>,  <39.533504, 33.569633, 33.588058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774590, 33.957024, 34.168125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382256, 34.026134, 34.132107>,  <39.146854, 34.067600, 34.110497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382256, 34.026134, 34.132107>,  <39.774590, 33.957024, 34.168125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382256, 34.026134, 34.132107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141826, -0.316246, 0.938016,
		0.133594, 0.932810, 0.334690,
		-0.980835, 0.172782, -0.090048,
		39.088005, 34.077969, 34.105091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609173, 33.971748, 34.887592>,  <39.774590, 33.957024, 34.168125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609173, 33.971748, 34.887592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255638, 33.976238, 34.700527>,  <39.043518, 33.978931, 34.588287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255638, 33.976238, 34.700527>,  <39.609173, 33.971748, 34.887592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255638, 33.976238, 34.700527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459645, -0.206644, 0.863727,
		-0.086942, 0.978352, 0.187800,
		-0.883836, 0.011227, -0.467661,
		38.990486, 33.979607, 34.560230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113121, 34.513676, 35.172203>,  <39.609173, 33.971748, 34.887592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113121, 34.513676, 35.172203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910160, 34.211636, 35.006134>,  <38.788383, 34.030411, 34.906490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910160, 34.211636, 35.006134>,  <39.113121, 34.513676, 35.172203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910160, 34.211636, 35.006134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490818, -0.142761, 0.859487,
		-0.708269, 0.639878, -0.298180,
		-0.507398, -0.755100, -0.415176,
		38.757942, 33.985107, 34.881580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313648, 34.561569, 35.347832>,  <39.113121, 34.513676, 35.172203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313648, 34.561569, 35.347832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426731, 34.183437, 35.282810>,  <38.494583, 33.956558, 35.243797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426731, 34.183437, 35.282810>,  <38.313648, 34.561569, 35.347832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426731, 34.183437, 35.282810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452612, -0.280888, 0.846313,
		-0.845705, -0.165687, -0.507278,
		0.282712, -0.945331, -0.162557,
		38.511543, 33.899837, 35.234043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726379, 34.032612, 35.236691>,  <38.313648, 34.561569, 35.347832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726379, 34.032612, 35.236691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053249, 33.874203, 35.404213>,  <38.249371, 33.779156, 35.504726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053249, 33.874203, 35.404213>,  <37.726379, 34.032612, 35.236691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053249, 33.874203, 35.404213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520044, -0.193230, 0.831995,
		-0.248569, -0.897676, -0.363855,
		0.817170, -0.396029, 0.418800,
		38.298401, 33.755394, 35.529854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409992, 33.521599, 35.540329>,  <37.726379, 34.032612, 35.236691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409992, 33.521599, 35.540329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782524, 33.514740, 35.685837>,  <38.006042, 33.510624, 35.773140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782524, 33.514740, 35.685837>,  <37.409992, 33.521599, 35.540329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782524, 33.514740, 35.685837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328836, -0.468840, 0.819790,
		0.156492, -0.883117, -0.442284,
		0.931331, -0.017149, 0.363770,
		38.061924, 33.509594, 35.794968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486538, 32.838593, 35.861042>,  <37.409992, 33.521599, 35.540329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486538, 32.838593, 35.861042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774612, 33.061317, 36.026596>,  <37.947456, 33.194950, 36.125927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774612, 33.061317, 36.026596>,  <37.486538, 32.838593, 35.861042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774612, 33.061317, 36.026596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288178, -0.302581, 0.908514,
		0.631103, -0.773568, -0.057453,
		0.720182, 0.556809, 0.413885,
		37.990665, 33.228359, 36.150761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791561, 32.349686, 36.348782>,  <37.486538, 32.838593, 35.861042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791561, 32.349686, 36.348782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927021, 32.709290, 36.459850>,  <38.008297, 32.925053, 36.526489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927021, 32.709290, 36.459850>,  <37.791561, 32.349686, 36.348782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927021, 32.709290, 36.459850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030749, -0.284375, 0.958220,
		0.940410, -0.333038, -0.068660,
		0.338648, 0.899009, 0.277670,
		38.028614, 32.978992, 36.543152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384823, 32.322025, 36.828785>,  <37.791561, 32.349686, 36.348782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384823, 32.322025, 36.828785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206921, 32.672432, 36.903397>,  <38.100182, 32.882675, 36.948162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206921, 32.672432, 36.903397>,  <38.384823, 32.322025, 36.828785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206921, 32.672432, 36.903397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159400, -0.127518, 0.978944,
		0.881355, 0.465120, -0.082923,
		-0.444753, 0.876015, 0.186529,
		38.073494, 32.935238, 36.959354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892033, 32.643570, 37.338566>,  <38.384823, 32.322025, 36.828785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892033, 32.643570, 37.338566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535198, 32.821880, 37.368122>,  <38.321098, 32.928867, 37.385857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535198, 32.821880, 37.368122>,  <38.892033, 32.643570, 37.338566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535198, 32.821880, 37.368122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081924, -0.001257, 0.996638,
		0.444371, 0.895143, -0.035398,
		-0.892089, 0.445777, 0.073893,
		38.267570, 32.955612, 37.390289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980419, 33.047485, 37.938152>,  <38.892033, 32.643570, 37.338566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980419, 33.047485, 37.938152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583591, 33.031902, 37.890358>,  <38.345493, 33.022552, 37.861683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583591, 33.031902, 37.890358>,  <38.980419, 33.047485, 37.938152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583591, 33.031902, 37.890358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113056, -0.138607, 0.983873,
		-0.054893, 0.989581, 0.133103,
		-0.992071, -0.038960, -0.119486,
		38.285969, 33.020214, 37.854511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643040, 33.546543, 38.314873>,  <38.980419, 33.047485, 37.938152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643040, 33.546543, 38.314873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379887, 33.246910, 38.283718>,  <38.221992, 33.067131, 38.265026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379887, 33.246910, 38.283718>,  <38.643040, 33.546543, 38.314873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379887, 33.246910, 38.283718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069631, -0.042476, 0.996668,
		-0.749892, 0.661117, -0.024215,
		-0.657886, -0.749080, -0.077886,
		38.182522, 33.022186, 38.260353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343208, 33.506554, 38.901588>,  <38.643040, 33.546543, 38.314873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343208, 33.506554, 38.901588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124134, 33.205040, 38.756340>,  <37.992691, 33.024132, 38.669189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124134, 33.205040, 38.756340>,  <38.343208, 33.506554, 38.901588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124134, 33.205040, 38.756340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187693, -0.312252, 0.931273,
		-0.815360, 0.578200, 0.029537,
		-0.547685, -0.753779, -0.363122,
		37.959827, 32.978905, 38.647404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593544, 33.605240, 39.071545>,  <38.343208, 33.506554, 38.901588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593544, 33.605240, 39.071545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701122, 33.221821, 39.033905>,  <37.765671, 32.991768, 39.011322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701122, 33.221821, 39.033905>,  <37.593544, 33.605240, 39.071545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701122, 33.221821, 39.033905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274465, -0.169919, 0.946465,
		-0.923220, -0.228725, -0.308787,
		0.268949, -0.958547, -0.094095,
		37.781807, 32.934258, 39.005676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024330, 33.235958, 39.162285>,  <37.593544, 33.605240, 39.071545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024330, 33.235958, 39.162285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333683, 33.002777, 39.261917>,  <37.519295, 32.862869, 39.321697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333683, 33.002777, 39.261917>,  <37.024330, 33.235958, 39.162285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333683, 33.002777, 39.261917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497048, -0.313738, 0.809019,
		-0.393475, -0.749487, -0.532396,
		0.773382, -0.582956, 0.249084,
		37.565697, 32.827892, 39.336643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793514, 32.579472, 39.243435>,  <37.024330, 33.235958, 39.162285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793514, 32.579472, 39.243435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124710, 32.628338, 39.462345>,  <37.323425, 32.657658, 39.593693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124710, 32.628338, 39.462345>,  <36.793514, 32.579472, 39.243435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124710, 32.628338, 39.462345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550031, -0.012946, 0.835044,
		0.109098, -0.992425, 0.056476,
		0.827987, 0.122165, 0.547277,
		37.373108, 32.664986, 39.626530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721958, 32.171844, 39.832241>,  <36.793514, 32.579472, 39.243435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721958, 32.171844, 39.832241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970661, 32.472939, 39.918789>,  <37.119881, 32.653595, 39.970718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970661, 32.472939, 39.918789>,  <36.721958, 32.171844, 39.832241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970661, 32.472939, 39.918789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439950, 0.107107, 0.891612,
		0.647972, -0.649554, 0.397759,
		0.621753, 0.752733, 0.216369,
		37.157188, 32.698757, 39.983700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052261, 31.947119, 40.454979>,  <36.721958, 32.171844, 39.832241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052261, 31.947119, 40.454979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056179, 32.345879, 40.423748>,  <37.058529, 32.585133, 40.405010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056179, 32.345879, 40.423748>,  <37.052261, 31.947119, 40.454979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056179, 32.345879, 40.423748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245118, 0.078091, 0.966343,
		0.969444, 0.009675, 0.245122,
		0.009793, 0.996899, -0.078076,
		37.059116, 32.644947, 40.400326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166370, 32.183388, 41.113953>,  <37.052261, 31.947119, 40.454979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166370, 32.183388, 41.113953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089191, 32.523193, 40.917549>,  <37.042885, 32.727077, 40.799706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089191, 32.523193, 40.917549>,  <37.166370, 32.183388, 41.113953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089191, 32.523193, 40.917549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285229, 0.430241, 0.856468,
		0.938837, 0.305304, 0.159292,
		-0.192949, 0.849518, -0.491008,
		37.031307, 32.778049, 40.770248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493080, 32.739208, 41.507774>,  <37.166370, 32.183388, 41.113953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493080, 32.739208, 41.507774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185028, 32.884026, 41.297699>,  <37.000198, 32.970917, 41.171654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185028, 32.884026, 41.297699>,  <37.493080, 32.739208, 41.507774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185028, 32.884026, 41.297699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346804, 0.453367, 0.821088,
		0.535376, 0.814481, -0.223592,
		-0.770130, 0.362048, -0.525187,
		36.953991, 32.992641, 41.140144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385017, 33.483025, 41.728325>,  <37.493080, 32.739208, 41.507774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385017, 33.483025, 41.728325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051750, 33.313869, 41.585781>,  <36.851788, 33.212376, 41.500256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051750, 33.313869, 41.585781>,  <37.385017, 33.483025, 41.728325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051750, 33.313869, 41.585781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536717, 0.463064, 0.705341,
		-0.133265, 0.778933, -0.612784,
		-0.833172, -0.422889, -0.356356,
		36.801800, 33.187004, 41.478874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888588, 33.972641, 41.850876>,  <37.385017, 33.483025, 41.728325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888588, 33.972641, 41.850876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675579, 33.635632, 41.818455>,  <36.547775, 33.433426, 41.799004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675579, 33.635632, 41.818455>,  <36.888588, 33.972641, 41.850876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675579, 33.635632, 41.818455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612945, 0.317822, 0.723386,
		-0.583712, 0.434899, -0.685670,
		-0.532521, -0.842527, -0.081052,
		36.515823, 33.382874, 41.794140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128071, 34.112808, 41.661732>,  <36.888588, 33.972641, 41.850876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128071, 34.112808, 41.661732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201054, 33.787777, 41.883156>,  <36.244843, 33.592758, 42.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201054, 33.787777, 41.883156>,  <36.128071, 34.112808, 41.661732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201054, 33.787777, 41.883156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386827, 0.458277, 0.800217,
		-0.903922, -0.360134, -0.230713,
		0.182455, -0.812580, 0.553557,
		36.255791, 33.544003, 42.049221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478363, 33.808620, 41.821033>,  <36.128071, 34.112808, 41.661732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478363, 33.808620, 41.821033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797985, 33.841743, 42.059242>,  <35.989758, 33.861618, 42.202168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797985, 33.841743, 42.059242>,  <35.478363, 33.808620, 41.821033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797985, 33.841743, 42.059242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564612, 0.443829, 0.695865,
		-0.206691, -0.892277, 0.401398,
		0.799057, 0.082805, 0.595526,
		36.037701, 33.866585, 42.237900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904232, 34.193447, 42.115761>,  <35.478363, 33.808620, 41.821033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904232, 34.193447, 42.115761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709373, 33.918892, 41.899776>,  <34.592457, 33.754158, 41.770187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709373, 33.918892, 41.899776>,  <34.904232, 34.193447, 42.115761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709373, 33.918892, 41.899776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784867, -0.615233, 0.073974,
		-0.382975, -0.387759, 0.838435,
		-0.487148, -0.686390, -0.539958,
		34.563229, 33.712975, 41.737789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956215, 33.506050, 42.403973>,  <34.904232, 34.193447, 42.115761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956215, 33.506050, 42.403973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901077, 33.476646, 42.008884>,  <34.867996, 33.459003, 41.771832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901077, 33.476646, 42.008884>,  <34.956215, 33.506050, 42.403973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901077, 33.476646, 42.008884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643105, -0.765075, -0.032807,
		-0.753271, -0.639731, 0.152734,
		-0.137841, -0.073511, -0.987723,
		34.859726, 33.454594, 41.712566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329884, 32.864353, 42.727791>,  <34.956215, 33.506050, 42.403973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329884, 32.864353, 42.727791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450550, 32.821671, 42.348820>,  <35.522949, 32.796062, 42.121437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450550, 32.821671, 42.348820>,  <35.329884, 32.864353, 42.727791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450550, 32.821671, 42.348820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941374, -0.124089, 0.313716,
		-0.151040, -0.986517, 0.063018,
		0.301666, -0.106707, -0.947423,
		35.541050, 32.789658, 42.064594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645004, 32.172337, 42.475960>,  <35.329884, 32.864353, 42.727791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645004, 32.172337, 42.475960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727062, 32.545948, 42.358997>,  <35.776299, 32.770115, 42.288822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727062, 32.545948, 42.358997>,  <35.645004, 32.172337, 42.475960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727062, 32.545948, 42.358997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872338, -0.039030, 0.487343,
		0.443781, -0.355050, -0.822799,
		0.205145, 0.934032, -0.292403,
		35.788605, 32.826157, 42.271275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297977, 32.283585, 42.192368>,  <35.645004, 32.172337, 42.475960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297977, 32.283585, 42.192368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155636, 32.643299, 42.090656>,  <36.070232, 32.859127, 42.029629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155636, 32.643299, 42.090656>,  <36.297977, 32.283585, 42.192368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155636, 32.643299, 42.090656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393367, -0.102673, -0.913631,
		-0.847722, -0.425140, -0.317213,
		-0.355851, 0.899286, -0.254274,
		36.048882, 32.913086, 42.014374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846359, 32.335735, 41.494949>,  <36.297977, 32.283585, 42.192368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846359, 32.335735, 41.494949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043564, 32.671535, 41.586323>,  <36.161884, 32.873016, 41.641148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043564, 32.671535, 41.586323>,  <35.846359, 32.335735, 41.494949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043564, 32.671535, 41.586323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469825, -0.035904, -0.882029,
		-0.732262, 0.542172, -0.412119,
		0.493008, 0.839500, 0.228435,
		36.191467, 32.923386, 41.654854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666996, 32.801044, 40.938110>,  <35.846359, 32.335735, 41.494949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666996, 32.801044, 40.938110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008152, 32.919102, 41.110374>,  <36.212845, 32.989937, 41.213734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008152, 32.919102, 41.110374>,  <35.666996, 32.801044, 40.938110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008152, 32.919102, 41.110374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425001, 0.086610, -0.901040,
		-0.303232, 0.951521, -0.051565,
		0.852892, 0.295139, 0.430660,
		36.264019, 33.007645, 41.239574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925663, 33.337074, 40.456367>,  <35.666996, 32.801044, 40.938110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925663, 33.337074, 40.456367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239887, 33.249504, 40.687870>,  <36.428421, 33.196960, 40.826771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239887, 33.249504, 40.687870>,  <35.925663, 33.337074, 40.456367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239887, 33.249504, 40.687870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561115, -0.142251, -0.815423,
		0.260847, 0.965316, 0.011096,
		0.785563, -0.218927, 0.578759,
		36.475555, 33.183826, 40.861496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472569, 33.718109, 40.222069>,  <35.925663, 33.337074, 40.456367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472569, 33.718109, 40.222069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616791, 33.414261, 40.438576>,  <36.703323, 33.231953, 40.568481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616791, 33.414261, 40.438576>,  <36.472569, 33.718109, 40.222069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616791, 33.414261, 40.438576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743265, -0.116611, -0.658756,
		0.563525, 0.639822, 0.522558,
		0.360551, -0.759624, 0.541270,
		36.724957, 33.186375, 40.600956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137604, 33.948986, 40.341785>,  <36.472569, 33.718109, 40.222069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137604, 33.948986, 40.341785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124485, 33.549759, 40.362923>,  <37.116615, 33.310223, 40.375607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124485, 33.549759, 40.362923>,  <37.137604, 33.948986, 40.341785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124485, 33.549759, 40.362923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783105, -0.058512, -0.619131,
		0.621025, 0.021078, 0.783508,
		-0.032795, -0.998064, 0.052844,
		37.114647, 33.250340, 40.378777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846512, 33.721329, 40.349998>,  <37.137604, 33.948986, 40.341785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846512, 33.721329, 40.349998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626167, 33.407619, 40.235825>,  <37.493961, 33.219395, 40.167320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626167, 33.407619, 40.235825>,  <37.846512, 33.721329, 40.349998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626167, 33.407619, 40.235825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501852, -0.037998, -0.864118,
		0.666858, -0.619252, 0.414520,
		-0.550858, -0.784272, -0.285434,
		37.460911, 33.172337, 40.150196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386627, 33.134838, 40.090294>,  <37.846512, 33.721329, 40.349998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386627, 33.134838, 40.090294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024784, 33.149357, 39.920418>,  <37.807678, 33.158070, 39.818493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024784, 33.149357, 39.920418>,  <38.386627, 33.134838, 40.090294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024784, 33.149357, 39.920418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424895, -0.002137, -0.905240,
		-0.033768, -0.999339, -0.013491,
		-0.904612, 0.036300, -0.424686,
		37.753399, 33.160248, 39.793011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682953, 32.554482, 39.794147>,  <38.386627, 33.134838, 40.090294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682953, 32.554482, 39.794147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305801, 32.422882, 39.773190>,  <38.079510, 32.343922, 39.760616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305801, 32.422882, 39.773190>,  <38.682953, 32.554482, 39.794147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305801, 32.422882, 39.773190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018823, 0.104401, -0.994357,
		0.332610, -0.938542, -0.092245,
		-0.942876, -0.328996, -0.052391,
		38.022938, 32.324184, 39.757473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450832, 31.934153, 39.284565>,  <38.682953, 32.554482, 39.794147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450832, 31.934153, 39.284565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132332, 32.174408, 39.313446>,  <37.941231, 32.318562, 39.330776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132332, 32.174408, 39.313446>,  <38.450832, 31.934153, 39.284565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132332, 32.174408, 39.313446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058740, 0.195556, -0.978932,
		-0.602103, -0.775238, -0.190994,
		-0.796255, 0.600637, 0.072207,
		37.893456, 32.354599, 39.335110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008728, 31.694071, 38.744225>,  <38.450832, 31.934153, 39.284565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008728, 31.694071, 38.744225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958702, 32.077621, 38.846138>,  <37.928688, 32.307751, 38.907288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958702, 32.077621, 38.846138>,  <38.008728, 31.694071, 38.744225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958702, 32.077621, 38.846138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022712, 0.259499, -0.965476,
		-0.991889, -0.114960, -0.054232,
		-0.125064, 0.958877, 0.254783,
		37.921185, 32.365284, 38.922573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440147, 31.876421, 38.473713>,  <38.008728, 31.694071, 38.744225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440147, 31.876421, 38.473713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650543, 32.213264, 38.521366>,  <37.776779, 32.415371, 38.549957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650543, 32.213264, 38.521366>,  <37.440147, 31.876421, 38.473713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650543, 32.213264, 38.521366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079382, 0.188072, -0.978942,
		-0.846779, 0.505454, 0.165772,
		0.525988, 0.842107, 0.119132,
		37.808338, 32.465897, 38.557106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093616, 32.241520, 38.003582>,  <37.440147, 31.876421, 38.473713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093616, 32.241520, 38.003582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406757, 32.474373, 38.091465>,  <37.594643, 32.614082, 38.144196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406757, 32.474373, 38.091465>,  <37.093616, 32.241520, 38.003582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406757, 32.474373, 38.091465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035441, 0.310815, -0.949810,
		-0.621198, 0.751346, 0.222690,
		0.782852, 0.582128, 0.219706,
		37.641613, 32.649010, 38.157375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985458, 32.776325, 37.601067>,  <37.093616, 32.241520, 38.003582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985458, 32.776325, 37.601067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373234, 32.826057, 37.685661>,  <37.605900, 32.855896, 37.736416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373234, 32.826057, 37.685661>,  <36.985458, 32.776325, 37.601067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373234, 32.826057, 37.685661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097164, 0.596976, -0.796353,
		-0.225259, 0.792567, 0.566654,
		0.969442, 0.124327, 0.211483,
		37.664066, 32.863354, 37.749107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055336, 33.520077, 37.430458>,  <36.985458, 32.776325, 37.601067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055336, 33.520077, 37.430458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428375, 33.377354, 37.452160>,  <37.652199, 33.291718, 37.465183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428375, 33.377354, 37.452160>,  <37.055336, 33.520077, 37.430458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428375, 33.377354, 37.452160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176841, 0.320710, -0.930522,
		0.314619, 0.877400, 0.362193,
		0.932599, -0.356811, 0.054259,
		37.708157, 33.270309, 37.468437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417522, 33.999252, 37.018871>,  <37.055336, 33.520077, 37.430458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417522, 33.999252, 37.018871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650253, 33.678383, 37.072525>,  <37.789890, 33.485863, 37.104717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650253, 33.678383, 37.072525>,  <37.417522, 33.999252, 37.018871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650253, 33.678383, 37.072525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422861, 0.157484, -0.892405,
		0.694740, 0.575947, 0.430837,
		0.581828, -0.802174, 0.134136,
		37.824802, 33.437729, 37.112766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197113, 34.183010, 37.027485>,  <37.417522, 33.999252, 37.018871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197113, 34.183010, 37.027485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155273, 33.805351, 36.902496>,  <38.130169, 33.578754, 36.827503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155273, 33.805351, 36.902496>,  <38.197113, 34.183010, 37.027485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155273, 33.805351, 36.902496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332149, 0.262989, -0.905822,
		0.937409, -0.198535, 0.286091,
		-0.104598, -0.944151, -0.312471,
		38.123894, 33.522106, 36.808754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885845, 33.855843, 36.779266>,  <38.197113, 34.183010, 37.027485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885845, 33.855843, 36.779266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607288, 33.657951, 36.571308>,  <38.440155, 33.539219, 36.446533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607288, 33.657951, 36.571308>,  <38.885845, 33.855843, 36.779266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607288, 33.657951, 36.571308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537502, 0.120465, -0.834613,
		0.475534, -0.860659, 0.182025,
		-0.696390, -0.494726, -0.519892,
		38.398373, 33.509533, 36.415340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272762, 33.502174, 36.281715>,  <38.885845, 33.855843, 36.779266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272762, 33.502174, 36.281715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900879, 33.524681, 36.136127>,  <38.677750, 33.538185, 36.048775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900879, 33.524681, 36.136127>,  <39.272762, 33.502174, 36.281715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900879, 33.524681, 36.136127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361674, -0.046977, -0.931120,
		-0.069491, -0.997310, 0.023324,
		-0.929711, 0.056269, -0.363965,
		38.621967, 33.541561, 36.026939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328728, 33.000576, 35.842888>,  <39.272762, 33.502174, 36.281715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328728, 33.000576, 35.842888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004417, 33.219631, 35.760197>,  <38.809834, 33.351063, 35.710583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004417, 33.219631, 35.760197>,  <39.328728, 33.000576, 35.842888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004417, 33.219631, 35.760197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187903, -0.090983, -0.977964,
		-0.554380, -0.831753, -0.029136,
		-0.810774, 0.547639, -0.206728,
		38.761185, 33.383923, 35.698177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046246, 32.680943, 35.207428>,  <39.328728, 33.000576, 35.842888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046246, 32.680943, 35.207428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883286, 33.045296, 35.233715>,  <38.785507, 33.263908, 35.249485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883286, 33.045296, 35.233715>,  <39.046246, 32.680943, 35.207428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883286, 33.045296, 35.233715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111372, 0.120976, -0.986388,
		-0.906432, -0.394539, -0.150732,
		-0.407403, 0.910881, 0.065716,
		38.761066, 33.318562, 35.253429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771973, 32.716984, 35.361134>,  <39.046246, 32.680943, 35.207428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771973, 32.716984, 35.361134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873375, 33.093281, 35.451229>,  <39.934216, 33.319061, 35.505287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873375, 33.093281, 35.451229>,  <39.771973, 32.716984, 35.361134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873375, 33.093281, 35.451229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559864, -0.332573, 0.758912,
		0.788852, -0.066285, -0.610999,
		0.253506, 0.940745, 0.225240,
		39.949429, 33.375504, 35.518803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554688, 32.711746, 35.477222>,  <39.771973, 32.716984, 35.361134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554688, 32.711746, 35.477222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409416, 33.058750, 35.613182>,  <40.322254, 33.266953, 35.694759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409416, 33.058750, 35.613182>,  <40.554688, 32.711746, 35.477222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409416, 33.058750, 35.613182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647263, -0.027497, 0.761770,
		0.670188, 0.496662, -0.551520,
		-0.363177, 0.867509, 0.339899,
		40.300465, 33.319004, 35.715153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089294, 33.230598, 35.606079>,  <40.554688, 32.711746, 35.477222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089294, 33.230598, 35.606079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787373, 33.357018, 35.835995>,  <40.606220, 33.432869, 35.973946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787373, 33.357018, 35.835995>,  <41.089294, 33.230598, 35.606079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787373, 33.357018, 35.835995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644726, 0.196018, 0.738854,
		0.120845, 0.928272, -0.351720,
		-0.754802, 0.316050, 0.574793,
		40.560932, 33.451832, 36.008434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137684, 33.571407, 36.273685>,  <41.089294, 33.230598, 35.606079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137684, 33.571407, 36.273685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518024, 33.673908, 36.204163>,  <41.746231, 33.735409, 36.162449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518024, 33.673908, 36.204163>,  <41.137684, 33.571407, 36.273685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518024, 33.673908, 36.204163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198778, -0.074810, 0.977185,
		0.237405, -0.963710, -0.122071,
		0.950855, 0.256254, -0.173804,
		41.803280, 33.750786, 36.152020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583736, 33.157471, 36.744411>,  <41.137684, 33.571407, 36.273685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583736, 33.157471, 36.744411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809666, 33.481255, 36.680214>,  <41.945225, 33.675526, 36.641693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809666, 33.481255, 36.680214>,  <41.583736, 33.157471, 36.744411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809666, 33.481255, 36.680214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325816, -0.040059, 0.944584,
		0.758169, -0.585813, -0.286359,
		0.564821, 0.809455, -0.160495,
		41.979111, 33.724091, 36.632065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120289, 32.956394, 36.975891>,  <41.583736, 33.157471, 36.744411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120289, 32.956394, 36.975891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169525, 33.353146, 36.963108>,  <42.199066, 33.591198, 36.955437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169525, 33.353146, 36.963108>,  <42.120289, 32.956394, 36.975891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169525, 33.353146, 36.963108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354120, -0.013815, 0.935098,
		0.927064, -0.126420, -0.352946,
		0.123091, 0.991881, -0.031961,
		42.206451, 33.650711, 36.953518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688133, 33.224022, 36.728760>,  <42.120289, 32.956394, 36.975891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688133, 33.224022, 36.728760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520042, 33.433552, 37.025143>,  <42.419189, 33.559269, 37.202972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520042, 33.433552, 37.025143>,  <42.688133, 33.224022, 36.728760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520042, 33.433552, 37.025143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775295, -0.217040, 0.593137,
		0.471517, 0.823712, -0.314913,
		-0.420225, 0.523825, 0.740957,
		42.393974, 33.590698, 37.247429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145824, 33.728855, 37.085400>,  <42.688133, 33.224022, 36.728760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145824, 33.728855, 37.085400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862541, 33.642788, 37.354366>,  <42.692574, 33.591148, 37.515747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862541, 33.642788, 37.354366>,  <43.145824, 33.728855, 37.085400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862541, 33.642788, 37.354366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705298, -0.172978, 0.687483,
		-0.031614, 0.961135, 0.274264,
		-0.708206, -0.215172, 0.672418,
		42.650078, 33.578236, 37.556091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586308, 33.865170, 37.730595>,  <43.145824, 33.728855, 37.085400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586308, 33.865170, 37.730595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334141, 33.664612, 37.967636>,  <43.182842, 33.544277, 38.109859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334141, 33.664612, 37.967636>,  <43.586308, 33.865170, 37.730595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334141, 33.664612, 37.967636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149355, 0.670800, 0.726444,
		-0.761752, 0.546471, -0.347998,
		-0.630418, -0.501395, 0.592602,
		43.145016, 33.514194, 38.145416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818962, 34.375416, 37.317883>,  <43.586308, 33.865170, 37.730595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818962, 34.375416, 37.317883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844837, 34.756325, 37.437214>,  <43.860363, 34.984871, 37.508812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844837, 34.756325, 37.437214>,  <43.818962, 34.375416, 37.317883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844837, 34.756325, 37.437214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894296, 0.077329, -0.440744,
		-0.442776, 0.295307, -0.846607,
		0.064687, 0.952268, 0.298331,
		43.864243, 35.042004, 37.526714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719212, 35.020107, 36.794331>,  <43.818962, 34.375416, 37.317883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719212, 35.020107, 36.794331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952419, 35.171494, 37.081898>,  <44.092346, 35.262325, 37.254440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952419, 35.171494, 37.081898>,  <43.719212, 35.020107, 36.794331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952419, 35.171494, 37.081898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791522, -0.065019, -0.607672,
		-0.183242, 0.923327, -0.337475,
		0.583022, 0.378470, 0.718920,
		44.127327, 35.285034, 37.297573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042938, 35.714291, 36.594582>,  <43.719212, 35.020107, 36.794331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042938, 35.714291, 36.594582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265579, 35.472797, 36.822865>,  <44.399166, 35.327904, 36.959835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265579, 35.472797, 36.822865>,  <44.042938, 35.714291, 36.594582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265579, 35.472797, 36.822865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691420, -0.044200, -0.721099,
		0.460574, 0.795964, 0.392828,
		0.556606, -0.603729, 0.570703,
		44.432560, 35.291679, 36.994076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747017, 35.907337, 36.497135>,  <44.042938, 35.714291, 36.594582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747017, 35.907337, 36.497135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697197, 35.520863, 36.587440>,  <44.667305, 35.288979, 36.641624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697197, 35.520863, 36.587440>,  <44.747017, 35.907337, 36.497135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697197, 35.520863, 36.587440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632765, -0.252607, -0.731983,
		0.764262, 0.051692, 0.642830,
		-0.124546, -0.966187, 0.225767,
		44.659832, 35.231007, 36.655170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293571, 35.615181, 36.794956>,  <44.747017, 35.907337, 36.497135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293571, 35.615181, 36.794956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075920, 35.371304, 36.564411>,  <44.945332, 35.224976, 36.426083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075920, 35.371304, 36.564411>,  <45.293571, 35.615181, 36.794956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075920, 35.371304, 36.564411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761564, -0.070648, -0.644228,
		0.352064, -0.789480, 0.502764,
		-0.544124, -0.609697, -0.576367,
		44.912682, 35.188396, 36.391502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458504, 34.792419, 36.675770>,  <45.293571, 35.615181, 36.794956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458504, 34.792419, 36.675770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321999, 35.003345, 36.364517>,  <45.240097, 35.129902, 36.177765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321999, 35.003345, 36.364517>,  <45.458504, 34.792419, 36.675770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321999, 35.003345, 36.364517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873745, -0.127268, -0.469439,
		-0.346573, -0.840084, -0.417307,
		-0.341259, 0.527315, -0.778127,
		45.219620, 35.161541, 36.131081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460030, 34.395306, 36.028339>,  <45.458504, 34.792419, 36.675770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460030, 34.395306, 36.028339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497208, 34.777542, 35.916473>,  <45.519516, 35.006882, 35.849354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497208, 34.777542, 35.916473>,  <45.460030, 34.395306, 36.028339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497208, 34.777542, 35.916473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744350, -0.253242, -0.617909,
		-0.661289, -0.150739, -0.734829,
		0.092947, 0.955587, -0.279669,
		45.525093, 35.064217, 35.832573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644547, 34.519749, 35.335995>,  <45.460030, 34.395306, 36.028339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644547, 34.519749, 35.335995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825439, 34.828167, 35.515312>,  <45.933975, 35.013218, 35.622902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825439, 34.828167, 35.515312>,  <45.644547, 34.519749, 35.335995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825439, 34.828167, 35.515312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849151, -0.218476, -0.480844,
		-0.272811, 0.598127, -0.753538,
		0.452235, 0.771047, 0.448297,
		45.961109, 35.059483, 35.649803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894772, 34.970005, 34.829208>,  <45.644547, 34.519749, 35.335995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894772, 34.970005, 34.829208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123764, 34.963428, 35.157108>,  <46.261158, 34.959484, 35.353848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123764, 34.963428, 35.157108>,  <45.894772, 34.970005, 34.829208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123764, 34.963428, 35.157108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793574, -0.240294, -0.559017,
		0.206171, 0.970561, -0.124518,
		0.572481, -0.016439, 0.819753,
		46.295509, 34.958496, 35.403034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.523155, 35.466110, 34.877884>,  <45.894772, 34.970005, 34.829208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.523155, 35.466110, 34.877884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656307, 35.166050, 35.106434>,  <46.736198, 34.986015, 35.243565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656307, 35.166050, 35.106434>,  <46.523155, 35.466110, 34.877884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.656307, 35.166050, 35.106434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895461, 0.061563, -0.440862,
		0.295535, 0.658400, 0.692220,
		0.332879, -0.750147, 0.571377,
		46.756172, 34.941006, 35.277847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157486, 35.679062, 35.139225>,  <46.523155, 35.466110, 34.877884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157486, 35.679062, 35.139225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155407, 35.282288, 35.088562>,  <47.154160, 35.044224, 35.058163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155407, 35.282288, 35.088562>,  <47.157486, 35.679062, 35.139225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.155407, 35.282288, 35.088562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935005, 0.040094, -0.352360,
		0.354595, -0.120256, 0.927254,
		-0.005196, -0.991933, -0.126658,
		47.153847, 34.984707, 35.050564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.730690, 35.431435, 35.466496>,  <47.157486, 35.679062, 35.139225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.730690, 35.431435, 35.466496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.614841, 35.237400, 35.136452>,  <47.545334, 35.120979, 34.938423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.614841, 35.237400, 35.136452>,  <47.730690, 35.431435, 35.466496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.614841, 35.237400, 35.136452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896974, 0.163269, -0.410829,
		0.334005, -0.859087, 0.387827,
		-0.289618, -0.485090, -0.825112,
		47.527958, 35.091873, 34.888920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.176575, 31.080524, 25.294872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.854904, 31.151348, 25.067909>,  <39.661903, 31.193842, 24.931732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.854904, 31.151348, 25.067909>,  <40.176575, 31.080524, 25.294872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854904, 31.151348, 25.067909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567468, 0.055337, 0.821534,
		0.176858, 0.982644, 0.055975,
		-0.804177, 0.177059, -0.567406,
		39.613651, 31.204466, 24.897688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851681, 31.617842, 25.574938>,  <40.176575, 31.080524, 25.294872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851681, 31.617842, 25.574938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.569023, 31.422159, 25.370455>,  <39.399429, 31.304750, 25.247765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.569023, 31.422159, 25.370455>,  <39.851681, 31.617842, 25.574938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569023, 31.422159, 25.370455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653020, 0.172728, 0.737381,
		-0.272431, 0.854894, -0.441518,
		-0.706645, -0.489205, -0.511206,
		39.357029, 31.275398, 25.217093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348248, 31.949963, 25.817715>,  <39.851681, 31.617842, 25.574938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348248, 31.949963, 25.817715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206486, 31.613226, 25.654888>,  <39.121429, 31.411184, 25.557192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206486, 31.613226, 25.654888>,  <39.348248, 31.949963, 25.817715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206486, 31.613226, 25.654888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657336, -0.085321, 0.748752,
		-0.665061, 0.532939, -0.523135,
		-0.354404, -0.841841, -0.407064,
		39.100166, 31.360674, 25.532768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648567, 32.004215, 25.890200>,  <39.348248, 31.949963, 25.817715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648567, 32.004215, 25.890200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.712864, 31.611153, 25.853222>,  <38.751442, 31.375315, 25.831036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.712864, 31.611153, 25.853222>,  <38.648567, 32.004215, 25.890200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712864, 31.611153, 25.853222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602106, -0.171842, 0.779705,
		-0.782068, -0.069670, -0.619286,
		0.160741, -0.982658, -0.092444,
		38.761086, 31.316355, 25.825489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897427, 31.668123, 25.827354>,  <38.648567, 32.004215, 25.890200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897427, 31.668123, 25.827354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175243, 31.403551, 25.940577>,  <38.341934, 31.244808, 26.008511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175243, 31.403551, 25.940577>,  <37.897427, 31.668123, 25.827354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175243, 31.403551, 25.940577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604554, -0.323268, 0.728019,
		-0.390029, -0.676764, -0.624393,
		0.694544, -0.661428, 0.283057,
		38.383606, 31.205122, 26.025494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593262, 31.064236, 25.786497>,  <37.897427, 31.668123, 25.827354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593262, 31.064236, 25.786497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890854, 31.019842, 26.050066>,  <38.069408, 30.993206, 26.208206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890854, 31.019842, 26.050066>,  <37.593262, 31.064236, 25.786497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890854, 31.019842, 26.050066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659458, -0.280958, 0.697264,
		0.107746, -0.953282, -0.282215,
		0.743980, -0.110982, 0.658921,
		38.114048, 30.986547, 26.247742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191479, 30.663296, 26.224741>,  <37.593262, 31.064236, 25.786497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191479, 30.663296, 26.224741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.549026, 30.746641, 26.383526>,  <37.763557, 30.796648, 26.478796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.549026, 30.746641, 26.383526>,  <37.191479, 30.663296, 26.224741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549026, 30.746641, 26.383526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372556, -0.147318, 0.916242,
		0.249392, -0.966893, -0.054056,
		0.893871, 0.208365, 0.396961,
		37.817188, 30.809151, 26.502615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296951, 30.156525, 26.766247>,  <37.191479, 30.663296, 26.224741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296951, 30.156525, 26.766247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522594, 30.473642, 26.858562>,  <37.657982, 30.663912, 26.913952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522594, 30.473642, 26.858562>,  <37.296951, 30.156525, 26.766247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522594, 30.473642, 26.858562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236351, -0.112774, 0.965101,
		0.791152, -0.598967, 0.123761,
		0.564106, 0.792793, 0.230788,
		37.691826, 30.711481, 26.927799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567436, 30.125538, 27.475464>,  <37.296951, 30.156525, 26.766247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567436, 30.125538, 27.475464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574116, 30.517717, 27.397038>,  <37.578125, 30.753025, 27.349981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574116, 30.517717, 27.397038>,  <37.567436, 30.125538, 27.475464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574116, 30.517717, 27.397038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462743, 0.181407, 0.867733,
		0.886335, 0.076235, 0.456726,
		0.016702, 0.980449, -0.196065,
		37.579124, 30.811852, 27.338219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890671, 30.443047, 28.031139>,  <37.567436, 30.125538, 27.475464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890671, 30.443047, 28.031139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676605, 30.728270, 27.849968>,  <37.548164, 30.899405, 27.741264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676605, 30.728270, 27.849968>,  <37.890671, 30.443047, 28.031139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676605, 30.728270, 27.849968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495328, 0.169445, 0.852020,
		0.684287, 0.680321, 0.262516,
		-0.535165, 0.713058, -0.452931,
		37.516056, 30.942186, 27.714088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073814, 31.109861, 28.370909>,  <37.890671, 30.443047, 28.031139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073814, 31.109861, 28.370909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710106, 31.145264, 28.208235>,  <37.491882, 31.166506, 28.110630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710106, 31.145264, 28.208235>,  <38.073814, 31.109861, 28.370909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710106, 31.145264, 28.208235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366022, 0.295101, 0.882578,
		0.198128, 0.951358, -0.235931,
		-0.909271, 0.088508, -0.406685,
		37.437325, 31.171816, 28.086229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930805, 31.805279, 28.435545>,  <38.073814, 31.109861, 28.370909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930805, 31.805279, 28.435545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589371, 31.600361, 28.397720>,  <37.384510, 31.477409, 28.375025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589371, 31.600361, 28.397720>,  <37.930805, 31.805279, 28.435545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589371, 31.600361, 28.397720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357155, 0.443340, 0.822125,
		-0.379249, 0.735528, -0.561398,
		-0.853587, -0.512296, -0.094561,
		37.333294, 31.446672, 28.369352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483379, 32.370491, 28.595678>,  <37.930805, 31.805279, 28.435545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483379, 32.370491, 28.595678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.271133, 32.036652, 28.654867>,  <37.143784, 31.836349, 28.690380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.271133, 32.036652, 28.654867>,  <37.483379, 32.370491, 28.595678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271133, 32.036652, 28.654867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447367, 0.424040, 0.787434,
		-0.719935, 0.351628, -0.598373,
		-0.530618, -0.834594, 0.147974,
		37.111946, 31.786274, 28.699259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861687, 32.530930, 28.823593>,  <37.483379, 32.370491, 28.595678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861687, 32.530930, 28.823593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829937, 32.156479, 28.960629>,  <36.810886, 31.931808, 29.042850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829937, 32.156479, 28.960629>,  <36.861687, 32.530930, 28.823593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829937, 32.156479, 28.960629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294090, 0.350367, 0.889243,
		-0.952476, -0.030172, -0.303115,
		-0.079371, -0.936126, 0.342590,
		36.806126, 31.875641, 29.063406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161301, 32.467930, 29.155619>,  <36.861687, 32.530930, 28.823593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161301, 32.467930, 29.155619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401600, 32.185856, 29.306250>,  <36.545780, 32.016609, 29.396627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401600, 32.185856, 29.306250>,  <36.161301, 32.467930, 29.155619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401600, 32.185856, 29.306250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383557, 0.159045, 0.909719,
		-0.701415, -0.690952, -0.174933,
		0.600750, -0.705187, 0.376576,
		36.581825, 31.974300, 29.419222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722908, 32.204239, 29.650738>,  <36.161301, 32.467930, 29.155619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722908, 32.204239, 29.650738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077702, 32.056168, 29.761175>,  <36.290577, 31.967325, 29.827436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077702, 32.056168, 29.761175>,  <35.722908, 32.204239, 29.650738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077702, 32.056168, 29.761175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287122, 0.026192, 0.957536,
		-0.361692, -0.928591, -0.083055,
		0.886984, -0.370180, 0.276092,
		36.343796, 31.945114, 29.844004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565578, 31.767757, 30.086590>,  <35.722908, 32.204239, 29.650738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565578, 31.767757, 30.086590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948868, 31.838121, 30.176796>,  <36.178841, 31.880339, 30.230919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948868, 31.838121, 30.176796>,  <35.565578, 31.767757, 30.086590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948868, 31.838121, 30.176796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191387, -0.191559, 0.962640,
		0.212535, -0.965589, -0.149891,
		0.958227, 0.175908, 0.225514,
		36.236336, 31.890894, 30.244450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774368, 31.196747, 30.562984>,  <35.565578, 31.767757, 30.086590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774368, 31.196747, 30.562984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032227, 31.498573, 30.612064>,  <36.186943, 31.679668, 30.641512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032227, 31.498573, 30.612064>,  <35.774368, 31.196747, 30.562984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032227, 31.498573, 30.612064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050490, -0.202175, 0.978047,
		0.762809, -0.624303, -0.168431,
		0.644650, 0.754567, 0.122700,
		36.225620, 31.724943, 30.648874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272198, 30.895037, 30.985500>,  <35.774368, 31.196747, 30.562984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272198, 30.895037, 30.985500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342712, 31.285244, 31.038094>,  <36.385021, 31.519369, 31.069649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342712, 31.285244, 31.038094>,  <36.272198, 30.895037, 30.985500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342712, 31.285244, 31.038094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049470, -0.142186, 0.988603,
		0.983095, -0.167773, -0.073324,
		0.176287, 0.975518, 0.131482,
		36.395599, 31.577900, 31.077538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794861, 30.861176, 31.471777>,  <36.272198, 30.895037, 30.985500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794861, 30.861176, 31.471777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697926, 31.247528, 31.508324>,  <36.639767, 31.479340, 31.530252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697926, 31.247528, 31.508324>,  <36.794861, 30.861176, 31.471777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697926, 31.247528, 31.508324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199530, -0.042543, 0.978968,
		0.949453, 0.255469, -0.182413,
		-0.242336, 0.965881, 0.091366,
		36.625225, 31.537292, 31.535734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390476, 31.189127, 31.865910>,  <36.794861, 30.861176, 31.471777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390476, 31.189127, 31.865910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033695, 31.367826, 31.893730>,  <36.819626, 31.475046, 31.910423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033695, 31.367826, 31.893730>,  <37.390476, 31.189127, 31.865910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033695, 31.367826, 31.893730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052823, -0.049812, 0.997361,
		0.449034, 0.893272, 0.020832,
		-0.891952, 0.446749, 0.069552,
		36.766109, 31.501852, 31.914597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483109, 31.583111, 32.421253>,  <37.390476, 31.189127, 31.865910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483109, 31.583111, 32.421253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088844, 31.543869, 32.366333>,  <36.852287, 31.520325, 32.333382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088844, 31.543869, 32.366333>,  <37.483109, 31.583111, 32.421253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088844, 31.543869, 32.366333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137345, -0.006299, 0.990503,
		-0.098035, 0.995156, -0.007265,
		-0.985660, -0.098102, -0.137297,
		36.793148, 31.514439, 32.325146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769810, 31.871542, 33.034687>,  <37.483109, 31.583111, 32.421253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769810, 31.871542, 33.034687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110779, 31.949652, 33.228695>,  <38.315361, 31.996517, 33.345100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110779, 31.949652, 33.228695>,  <37.769810, 31.871542, 33.034687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110779, 31.949652, 33.228695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505350, -0.069681, -0.860096,
		-0.134160, 0.978270, -0.158081,
		0.852422, 0.195276, 0.485020,
		38.366505, 32.008236, 33.374203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126335, 32.436256, 32.653679>,  <37.769810, 31.871542, 33.034687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126335, 32.436256, 32.653679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377747, 32.164112, 32.804443>,  <38.528591, 32.000824, 32.894901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377747, 32.164112, 32.804443>,  <38.126335, 32.436256, 32.653679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377747, 32.164112, 32.804443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573322, 0.077795, -0.815629,
		0.525603, 0.728733, 0.438964,
		0.628524, -0.680365, 0.376910,
		38.566303, 31.960003, 32.917515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778431, 32.657410, 32.527420>,  <38.126335, 32.436256, 32.653679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778431, 32.657410, 32.527420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848034, 32.274315, 32.619038>,  <38.889797, 32.044456, 32.674007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848034, 32.274315, 32.619038>,  <38.778431, 32.657410, 32.527420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848034, 32.274315, 32.619038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711725, -0.038428, -0.701406,
		0.680564, 0.285069, 0.674958,
		0.174012, -0.957736, 0.229043,
		38.900238, 31.986994, 32.687752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538353, 32.620132, 32.443794>,  <38.778431, 32.657410, 32.527420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538353, 32.620132, 32.443794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394855, 32.247154, 32.426620>,  <39.308758, 32.023365, 32.416317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394855, 32.247154, 32.426620>,  <39.538353, 32.620132, 32.443794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394855, 32.247154, 32.426620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528114, -0.164826, -0.833024,
		0.769676, -0.321513, 0.551569,
		-0.358741, -0.932449, -0.042933,
		39.287231, 31.967419, 32.413742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122383, 32.249199, 32.163391>,  <39.538353, 32.620132, 32.443794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122383, 32.249199, 32.163391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.815601, 31.996965, 32.115833>,  <39.631531, 31.845625, 32.087299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.815601, 31.996965, 32.115833>,  <40.122383, 32.249199, 32.163391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815601, 31.996965, 32.115833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480514, -0.441571, -0.757708,
		0.425302, -0.638259, 0.641673,
		-0.766958, -0.630587, -0.118892,
		39.585514, 31.807789, 32.080166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383690, 31.562597, 32.258663>,  <40.122383, 32.249199, 32.163391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383690, 31.562597, 32.258663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045364, 31.548271, 32.045757>,  <39.842369, 31.539677, 31.918013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045364, 31.548271, 32.045757>,  <40.383690, 31.562597, 32.258663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045364, 31.548271, 32.045757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496104, -0.419656, -0.760112,
		-0.196146, -0.906976, 0.372720,
		-0.845817, -0.035814, -0.532268,
		39.791618, 31.537527, 31.886076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461575, 30.963903, 31.790197>,  <40.383690, 31.562597, 32.258663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461575, 30.963903, 31.790197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144062, 31.143068, 31.625624>,  <39.953552, 31.250566, 31.526878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144062, 31.143068, 31.625624>,  <40.461575, 30.963903, 31.790197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144062, 31.143068, 31.625624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223119, -0.414860, -0.882105,
		-0.565794, -0.792001, 0.229372,
		-0.793786, 0.447912, -0.411436,
		39.905926, 31.277441, 31.502193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207771, 30.486042, 31.359905>,  <40.461575, 30.963903, 31.790197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207771, 30.486042, 31.359905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.079338, 30.846413, 31.243122>,  <40.002277, 31.062635, 31.173052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.079338, 30.846413, 31.243122>,  <40.207771, 30.486042, 31.359905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079338, 30.846413, 31.243122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219641, -0.229034, -0.948315,
		-0.921229, -0.368615, -0.124341,
		-0.321085, 0.900925, -0.291956,
		39.983013, 31.116690, 31.155535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685703, 30.400642, 30.946779>,  <40.207771, 30.486042, 31.359905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685703, 30.400642, 30.946779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851223, 30.751537, 30.849430>,  <39.950535, 30.962074, 30.791021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.851223, 30.751537, 30.849430>,  <39.685703, 30.400642, 30.946779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851223, 30.751537, 30.849430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220062, -0.355791, -0.908287,
		-0.883372, 0.322288, -0.340270,
		0.413795, 0.877236, -0.243372,
		39.975361, 31.014708, 30.776419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487373, 30.472095, 30.264278>,  <39.685703, 30.400642, 30.946779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487373, 30.472095, 30.264278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.779755, 30.741936, 30.305515>,  <39.955181, 30.903839, 30.330257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.779755, 30.741936, 30.305515>,  <39.487373, 30.472095, 30.264278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779755, 30.741936, 30.305515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311830, -0.195795, -0.929745,
		-0.607021, 0.711744, -0.353477,
		0.730949, 0.674600, 0.103091,
		39.999039, 30.944315, 30.336443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302402, 30.957508, 29.713484>,  <39.487373, 30.472095, 30.264278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302402, 30.957508, 29.713484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687881, 30.964228, 29.820076>,  <39.919167, 30.968260, 29.884031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687881, 30.964228, 29.820076>,  <39.302402, 30.957508, 29.713484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687881, 30.964228, 29.820076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263989, -0.209645, -0.941466,
		0.040052, 0.977633, -0.206468,
		0.963694, 0.016798, 0.266481,
		39.976990, 30.969267, 29.900021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544102, 31.451206, 29.243340>,  <39.302402, 30.957508, 29.713484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544102, 31.451206, 29.243340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844284, 31.229059, 29.386660>,  <40.024395, 31.095772, 29.472651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844284, 31.229059, 29.386660>,  <39.544102, 31.451206, 29.243340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844284, 31.229059, 29.386660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434484, 0.006046, -0.900659,
		0.498031, 0.831583, 0.245836,
		0.750459, -0.555368, 0.358299,
		40.069420, 31.062449, 29.494150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331722, 31.853205, 29.080179>,  <39.544102, 31.451206, 29.243340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331722, 31.853205, 29.080179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.324314, 31.453390, 29.089853>,  <40.319870, 31.213501, 29.095657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.324314, 31.453390, 29.089853>,  <40.331722, 31.853205, 29.080179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324314, 31.453390, 29.089853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630891, -0.030452, -0.775274,
		0.775650, 0.000898, 0.631163,
		-0.018524, -0.999536, 0.024187,
		40.318756, 31.153530, 29.097109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961151, 31.777630, 28.907228>,  <40.331722, 31.853205, 29.080179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961151, 31.777630, 28.907228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.763374, 31.433414, 28.858242>,  <40.644707, 31.226885, 28.828850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.763374, 31.433414, 28.858242>,  <40.961151, 31.777630, 28.907228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763374, 31.433414, 28.858242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632223, -0.259355, -0.730088,
		0.596507, -0.438413, 0.672289,
		-0.494441, -0.860540, -0.122468,
		40.615044, 31.175253, 28.821501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328854, 31.096746, 28.823997>,  <40.961151, 31.777630, 28.907228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328854, 31.096746, 28.823997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.982330, 30.979347, 28.662319>,  <40.774418, 30.908907, 28.565311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.982330, 30.979347, 28.662319>,  <41.328854, 31.096746, 28.823997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982330, 30.979347, 28.662319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476189, -0.240843, -0.845718,
		0.150871, -0.925123, 0.348404,
		-0.866304, -0.293500, -0.404197,
		40.722439, 30.891296, 28.541059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457523, 30.395065, 28.634830>,  <41.328854, 31.096746, 28.823997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457523, 30.395065, 28.634830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.165314, 30.529079, 28.396809>,  <40.989990, 30.609488, 28.253996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.165314, 30.529079, 28.396809>,  <41.457523, 30.395065, 28.634830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165314, 30.529079, 28.396809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497578, -0.335662, -0.799842,
		-0.467712, -0.880388, 0.078503,
		-0.730521, 0.335035, -0.595055,
		40.946156, 30.629589, 28.218292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356171, 29.903423, 27.975351>,  <41.457523, 30.395065, 28.634830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356171, 29.903423, 27.975351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.172840, 30.248127, 27.888350>,  <41.062840, 30.454948, 27.836149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.172840, 30.248127, 27.888350>,  <41.356171, 29.903423, 27.975351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172840, 30.248127, 27.888350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380029, -0.031207, -0.924448,
		-0.803438, -0.506359, -0.313190,
		-0.458328, 0.861758, -0.217504,
		41.035343, 30.506655, 27.823099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249397, 29.906849, 27.235397>,  <41.356171, 29.903423, 27.975351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249397, 29.906849, 27.235397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.178089, 30.288340, 27.332245>,  <41.135303, 30.517235, 27.390354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.178089, 30.288340, 27.332245>,  <41.249397, 29.906849, 27.235397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178089, 30.288340, 27.332245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421411, 0.296354, -0.857081,
		-0.889175, -0.050760, -0.454742,
		-0.178270, 0.953728, 0.242120,
		41.124607, 30.574459, 27.404881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.654724, 30.307161, 26.612713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865711, 30.577251, 26.818954>,  <40.992302, 30.739305, 26.942699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865711, 30.577251, 26.818954>,  <40.654724, 30.307161, 26.612713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865711, 30.577251, 26.818954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250494, 0.456308, -0.853836,
		-0.811806, 0.579527, 0.071548,
		0.527469, 0.675227, 0.515602,
		41.023952, 30.779819, 26.973635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382801, 30.972454, 26.423271>,  <40.654724, 30.307161, 26.612713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382801, 30.972454, 26.423271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751400, 31.041767, 26.562302>,  <40.972561, 31.083355, 26.645720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751400, 31.041767, 26.562302>,  <40.382801, 30.972454, 26.423271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751400, 31.041767, 26.562302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283799, 0.310519, -0.907213,
		-0.265132, 0.934640, 0.236967,
		0.921501, 0.173280, 0.347578,
		41.027851, 31.093752, 26.666574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465515, 31.674513, 26.334509>,  <40.382801, 30.972454, 26.423271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465515, 31.674513, 26.334509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818062, 31.486334, 26.351772>,  <41.029591, 31.373426, 26.362129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818062, 31.486334, 26.351772>,  <40.465515, 31.674513, 26.334509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818062, 31.486334, 26.351772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231193, 0.349852, -0.907829,
		0.411989, 0.810112, 0.417114,
		0.881371, -0.470449, 0.043157,
		41.082474, 31.345200, 26.364719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007420, 32.141453, 26.022400>,  <40.465515, 31.674513, 26.334509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007420, 32.141453, 26.022400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163227, 31.775358, 25.981197>,  <41.256714, 31.555700, 25.956476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163227, 31.775358, 25.981197>,  <41.007420, 32.141453, 26.022400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163227, 31.775358, 25.981197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447831, 0.285940, -0.847163,
		0.804810, 0.283861, 0.521252,
		0.389523, -0.915239, -0.103005,
		41.280083, 31.500786, 25.950296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618694, 32.250237, 25.718319>,  <41.007420, 32.141453, 26.022400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618694, 32.250237, 25.718319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610405, 31.854877, 25.658127>,  <41.605431, 31.617662, 25.622011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610405, 31.854877, 25.658127>,  <41.618694, 32.250237, 25.718319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610405, 31.854877, 25.658127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722855, 0.089165, -0.685222,
		0.690689, -0.122976, 0.712619,
		-0.020725, -0.988396, -0.150479,
		41.604187, 31.558359, 25.612984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335800, 32.137848, 25.621029>,  <41.618694, 32.250237, 25.718319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335800, 32.137848, 25.621029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.121555, 31.842024, 25.457972>,  <41.993008, 31.664530, 25.360138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.121555, 31.842024, 25.457972>,  <42.335800, 32.137848, 25.621029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121555, 31.842024, 25.457972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604984, 0.000736, -0.796237,
		0.589166, -0.673089, 0.447028,
		-0.535610, -0.739561, -0.407642,
		41.960873, 31.620155, 25.335680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896591, 31.763489, 25.317474>,  <42.335800, 32.137848, 25.621029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896591, 31.763489, 25.317474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.564575, 31.615656, 25.150410>,  <42.365364, 31.526957, 25.050171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.564575, 31.615656, 25.150410>,  <42.896591, 31.763489, 25.317474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564575, 31.615656, 25.150410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409496, 0.104530, -0.906304,
		0.378615, -0.923298, 0.064579,
		-0.830038, -0.369585, -0.417664,
		42.315563, 31.504780, 25.025110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138256, 31.270685, 24.853342>,  <42.896591, 31.763489, 25.317474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138256, 31.270685, 24.853342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.777451, 31.369667, 24.711843>,  <42.560966, 31.429056, 24.626944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.777451, 31.369667, 24.711843>,  <43.138256, 31.270685, 24.853342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777451, 31.369667, 24.711843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390758, 0.119657, -0.912683,
		-0.183518, -0.961483, -0.204626,
		-0.902014, 0.247453, -0.353749,
		42.506847, 31.443903, 24.605719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086216, 30.912741, 24.285854>,  <43.138256, 31.270685, 24.853342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086216, 30.912741, 24.285854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.811550, 31.199100, 24.235283>,  <42.646751, 31.370916, 24.204941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.811550, 31.199100, 24.235283>,  <43.086216, 30.912741, 24.285854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811550, 31.199100, 24.235283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431009, 0.260854, -0.863821,
		-0.585430, -0.647644, -0.487678,
		-0.686660, 0.715900, -0.126429,
		42.605553, 31.413870, 24.197353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879330, 30.907688, 23.547466>,  <43.086216, 30.912741, 24.285854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879330, 30.907688, 23.547466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.763779, 31.277256, 23.647800>,  <42.694450, 31.498997, 23.708002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.763779, 31.277256, 23.647800>,  <42.879330, 30.907688, 23.547466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763779, 31.277256, 23.647800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258341, 0.327516, -0.908842,
		-0.921852, -0.197740, -0.333298,
		-0.288875, 0.923922, 0.250837,
		42.677116, 31.554432, 23.723051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415871, 31.165716, 22.992826>,  <42.879330, 30.907688, 23.547466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415871, 31.165716, 22.992826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.539101, 31.491257, 23.189899>,  <42.613037, 31.686581, 23.308144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.539101, 31.491257, 23.189899>,  <42.415871, 31.165716, 22.992826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539101, 31.491257, 23.189899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231582, 0.438139, -0.868564,
		-0.922746, 0.381679, -0.053494,
		0.308075, 0.813852, 0.492682,
		42.631523, 31.735413, 23.337704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362022, 31.645206, 22.410809>,  <42.415871, 31.165716, 22.992826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362022, 31.645206, 22.410809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.554241, 31.852581, 22.693735>,  <42.669575, 31.977005, 22.863491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.554241, 31.852581, 22.693735>,  <42.362022, 31.645206, 22.410809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554241, 31.852581, 22.693735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322168, 0.645789, -0.692217,
		-0.815648, 0.560519, 0.143310,
		0.480549, 0.518436, 0.707317,
		42.698406, 32.008110, 22.905930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159885, 32.415833, 22.360640>,  <42.362022, 31.645206, 22.410809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159885, 32.415833, 22.360640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.523396, 32.341850, 22.510258>,  <42.741501, 32.297462, 22.600029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.523396, 32.341850, 22.510258>,  <42.159885, 32.415833, 22.360640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523396, 32.341850, 22.510258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403054, 0.621126, -0.672124,
		-0.108017, 0.761573, 0.639014,
		0.908779, -0.184956, 0.374047,
		42.796028, 32.286362, 22.622473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372360, 33.031658, 22.418827>,  <42.159885, 32.415833, 22.360640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372360, 33.031658, 22.418827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.696453, 32.797249, 22.414955>,  <42.890907, 32.656601, 22.412632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.696453, 32.797249, 22.414955>,  <42.372360, 33.031658, 22.418827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696453, 32.797249, 22.414955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454491, 0.638632, -0.620957,
		0.370081, 0.498720, 0.783785,
		0.810233, -0.586027, -0.009682,
		42.939522, 32.621441, 22.412050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857399, 33.469299, 22.366953>,  <42.372360, 33.031658, 22.418827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857399, 33.469299, 22.366953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.020241, 33.123352, 22.249470>,  <43.117947, 32.915783, 22.178980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.020241, 33.123352, 22.249470>,  <42.857399, 33.469299, 22.366953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020241, 33.123352, 22.249470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515576, 0.483029, -0.707717,
		0.753954, 0.136685, 0.642550,
		0.407105, -0.864870, -0.293710,
		43.142372, 32.863892, 22.161356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559143, 33.673458, 22.159342>,  <42.857399, 33.469299, 22.366953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559143, 33.673458, 22.159342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.522301, 33.304413, 22.009516>,  <43.500195, 33.082985, 21.919621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.522301, 33.304413, 22.009516>,  <43.559143, 33.673458, 22.159342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522301, 33.304413, 22.009516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488427, 0.285941, -0.824425,
		0.867730, -0.258883, 0.424293,
		-0.092107, -0.922614, -0.374565,
		43.494667, 33.027630, 21.897146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155113, 33.654526, 21.721422>,  <43.559143, 33.673458, 22.159342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155113, 33.654526, 21.721422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.906994, 33.372696, 21.583553>,  <43.758121, 33.203598, 21.500832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.906994, 33.372696, 21.583553>,  <44.155113, 33.654526, 21.721422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906994, 33.372696, 21.583553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324742, 0.169307, -0.930525,
		0.713980, -0.689138, 0.123783,
		-0.620303, -0.704574, -0.344674,
		43.720901, 33.161324, 21.480150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485306, 33.517708, 21.145981>,  <44.155113, 33.654526, 21.721422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485306, 33.517708, 21.145981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.129242, 33.347778, 21.080076>,  <43.915604, 33.245819, 21.040533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.129242, 33.347778, 21.080076>,  <44.485306, 33.517708, 21.145981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129242, 33.347778, 21.080076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100646, 0.169342, -0.980405,
		0.444402, -0.889296, -0.107983,
		-0.890156, -0.424826, -0.164759,
		43.862194, 33.220329, 21.030649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586784, 32.982281, 20.684107>,  <44.485306, 33.517708, 21.145981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586784, 32.982281, 20.684107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.209034, 33.111839, 20.661289>,  <43.982384, 33.189575, 20.647598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.209034, 33.111839, 20.661289>,  <44.586784, 32.982281, 20.684107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209034, 33.111839, 20.661289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150669, 0.271913, -0.950454,
		-0.292336, -0.906177, -0.305587,
		-0.944372, 0.323894, -0.057043,
		43.925724, 33.209007, 20.644176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222778, 32.609245, 20.103390>,  <44.586784, 32.982281, 20.684107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222778, 32.609245, 20.103390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.027458, 32.950542, 20.176655>,  <43.910267, 33.155319, 20.220613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.027458, 32.950542, 20.176655>,  <44.222778, 32.609245, 20.103390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027458, 32.950542, 20.176655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044095, 0.185494, -0.981656,
		-0.871563, -0.487416, -0.052952,
		-0.488297, 0.853240, 0.183162,
		43.880970, 33.206516, 20.231604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976673, 32.750675, 19.458935>,  <44.222778, 32.609245, 20.103390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976673, 32.750675, 19.458935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.880322, 33.088787, 19.649714>,  <43.822510, 33.291653, 19.764181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.880322, 33.088787, 19.649714>,  <43.976673, 32.750675, 19.458935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880322, 33.088787, 19.649714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099592, 0.467295, -0.878474,
		-0.965431, -0.259110, -0.028381,
		-0.240883, 0.845279, 0.476946,
		43.808056, 33.342369, 19.792797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518089, 33.033688, 18.974174>,  <43.976673, 32.750675, 19.458935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518089, 33.033688, 18.974174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.638382, 33.322845, 19.223003>,  <43.710560, 33.496342, 19.372301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.638382, 33.322845, 19.223003>,  <43.518089, 33.033688, 18.974174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638382, 33.322845, 19.223003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012845, 0.649139, -0.760561,
		-0.953621, 0.236719, 0.185934,
		0.300736, 0.722899, 0.622073,
		43.728603, 33.539715, 19.409626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989609, 33.603531, 18.722786>,  <43.518089, 33.033688, 18.974174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989609, 33.603531, 18.722786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.864197, 33.308094, 18.484064>,  <43.788948, 33.130833, 18.340830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.864197, 33.308094, 18.484064>,  <43.989609, 33.603531, 18.722786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864197, 33.308094, 18.484064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947267, 0.287093, 0.142343,
		0.066205, 0.609964, -0.789659,
		-0.313530, -0.738594, -0.596806,
		43.770138, 33.086517, 18.305023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936825, 34.365261, 18.375988>,  <43.989609, 33.603531, 18.722786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936825, 34.365261, 18.375988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.658508, 34.584137, 18.189888>,  <43.491520, 34.715462, 18.078228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.658508, 34.584137, 18.189888>,  <43.936825, 34.365261, 18.375988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658508, 34.584137, 18.189888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711659, -0.437713, 0.549499,
		0.097035, 0.713434, 0.693971,
		-0.695792, 0.547191, -0.465248,
		43.449772, 34.748295, 18.050314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522713, 34.575371, 18.845825>,  <43.936825, 34.365261, 18.375988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522713, 34.575371, 18.845825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.276325, 34.603687, 18.531992>,  <43.128494, 34.620678, 18.343691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.276325, 34.603687, 18.531992>,  <43.522713, 34.575371, 18.845825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276325, 34.603687, 18.531992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766427, -0.284124, 0.576076,
		-0.182139, 0.956171, 0.229265,
		-0.615967, 0.070789, -0.784585,
		43.091534, 34.624924, 18.296616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999329, 35.129040, 18.946283>,  <43.522713, 34.575371, 18.845825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999329, 35.129040, 18.946283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.853943, 34.869286, 18.679092>,  <42.766712, 34.713432, 18.518778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.853943, 34.869286, 18.679092>,  <42.999329, 35.129040, 18.946283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853943, 34.869286, 18.679092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746552, -0.225877, 0.625811,
		-0.557272, 0.726140, -0.402701,
		-0.363465, -0.649384, -0.667977,
		42.744904, 34.674469, 18.478699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243057, 35.274422, 18.833509>,  <42.999329, 35.129040, 18.946283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243057, 35.274422, 18.833509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.309940, 34.895390, 18.724602>,  <42.350071, 34.667969, 18.659256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.309940, 34.895390, 18.724602>,  <42.243057, 35.274422, 18.833509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309940, 34.895390, 18.724602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668929, -0.311908, 0.674721,
		-0.724276, 0.069310, -0.686018,
		0.167209, -0.947581, -0.272271,
		42.360104, 34.611115, 18.642921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515835, 34.952354, 18.838888>,  <42.243057, 35.274422, 18.833509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515835, 34.952354, 18.838888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.766598, 34.640720, 18.837267>,  <41.917057, 34.453739, 18.836294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.766598, 34.640720, 18.837267>,  <41.515835, 34.952354, 18.838888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766598, 34.640720, 18.837267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550112, -0.446335, 0.705806,
		-0.551691, -0.440245, -0.708394,
		0.626909, -0.779082, -0.004055,
		41.954670, 34.406994, 18.836050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098499, 34.262554, 18.654661>,  <41.515835, 34.952354, 18.838888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098499, 34.262554, 18.654661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.430717, 34.146458, 18.844803>,  <41.630047, 34.076801, 18.958887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.430717, 34.146458, 18.844803>,  <41.098499, 34.262554, 18.654661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430717, 34.146458, 18.844803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554294, -0.514075, 0.654588,
		0.054380, -0.807148, -0.587839,
		0.830543, -0.290240, 0.475353,
		41.679882, 34.059387, 18.987410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934250, 33.577549, 18.879229>,  <41.098499, 34.262554, 18.654661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934250, 33.577549, 18.879229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260517, 33.658333, 19.096077>,  <41.456276, 33.706802, 19.226187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260517, 33.658333, 19.096077>,  <40.934250, 33.577549, 18.879229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260517, 33.658333, 19.096077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495908, -0.238494, 0.834982,
		0.297924, -0.949913, -0.094380,
		0.815669, 0.201957, 0.542122,
		41.505219, 33.718922, 19.258713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094570, 32.971790, 19.319208>,  <40.934250, 33.577549, 18.879229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094570, 32.971790, 19.319208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.243149, 33.280968, 19.524960>,  <41.332298, 33.466473, 19.648411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.243149, 33.280968, 19.524960>,  <41.094570, 32.971790, 19.319208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243149, 33.280968, 19.524960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309273, -0.419370, 0.853510,
		0.875428, -0.476120, 0.083274,
		0.371451, 0.772941, 0.514380,
		41.354584, 33.512852, 19.679274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302971, 32.673820, 19.893566>,  <41.094570, 32.971790, 19.319208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302971, 32.673820, 19.893566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.291428, 33.062386, 19.987814>,  <41.284500, 33.295525, 20.044363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.291428, 33.062386, 19.987814>,  <41.302971, 32.673820, 19.893566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291428, 33.062386, 19.987814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155747, -0.237210, 0.958892,
		0.987375, -0.009026, 0.158140,
		-0.028858, 0.971416, 0.235621,
		41.282772, 33.353809, 20.058500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571613, 32.634808, 20.492493>,  <41.302971, 32.673820, 19.893566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571613, 32.634808, 20.492493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.392250, 32.992203, 20.502285>,  <41.284630, 33.206642, 20.508160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.392250, 32.992203, 20.502285>,  <41.571613, 32.634808, 20.492493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392250, 32.992203, 20.502285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337291, -0.194511, 0.921086,
		0.827746, 0.404767, 0.388588,
		-0.448410, 0.893493, 0.024482,
		41.257729, 33.260250, 20.509630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874641, 33.032215, 21.019106>,  <41.571613, 32.634808, 20.492493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874641, 33.032215, 21.019106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.518661, 33.205143, 20.961021>,  <41.305073, 33.308899, 20.926170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.518661, 33.205143, 20.961021>,  <41.874641, 33.032215, 21.019106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518661, 33.205143, 20.961021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133721, 0.057047, 0.989376,
		0.436013, 0.899913, 0.007041,
		-0.889950, 0.432322, -0.145211,
		41.251675, 33.334839, 20.917458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792454, 33.473747, 21.573151>,  <41.874641, 33.032215, 21.019106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792454, 33.473747, 21.573151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.430729, 33.374882, 21.433937>,  <41.213696, 33.315563, 21.350409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.430729, 33.374882, 21.433937>,  <41.792454, 33.473747, 21.573151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430729, 33.374882, 21.433937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301866, -0.206199, 0.930784,
		-0.301821, 0.946780, 0.111858,
		-0.904312, -0.247164, -0.348036,
		41.159435, 33.300732, 21.329527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409081, 33.613258, 22.153147>,  <41.792454, 33.473747, 21.573151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409081, 33.613258, 22.153147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140255, 33.401390, 21.946157>,  <40.978958, 33.274269, 21.821964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140255, 33.401390, 21.946157>,  <41.409081, 33.613258, 22.153147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140255, 33.401390, 21.946157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343601, -0.395972, 0.851554,
		-0.655948, 0.750103, 0.084123,
		-0.672064, -0.529671, -0.517473,
		40.938637, 33.242489, 21.790916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773369, 33.665527, 22.478588>,  <41.409081, 33.613258, 22.153147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773369, 33.665527, 22.478588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.759644, 33.326595, 22.266603>,  <40.751408, 33.123238, 22.139412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.759644, 33.326595, 22.266603>,  <40.773369, 33.665527, 22.478588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759644, 33.326595, 22.266603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438773, -0.463663, 0.769737,
		-0.897942, 0.258947, -0.355874,
		-0.034315, -0.847327, -0.529961,
		40.749348, 33.072395, 22.107615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106689, 33.341270, 22.630869>,  <40.773369, 33.665527, 22.478588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106689, 33.341270, 22.630869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273392, 33.016899, 22.466574>,  <40.373413, 32.822277, 22.367996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273392, 33.016899, 22.466574>,  <40.106689, 33.341270, 22.630869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273392, 33.016899, 22.466574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409466, -0.570880, 0.711642,
		-0.811574, -0.128399, -0.569966,
		0.416756, -0.810931, -0.410736,
		40.398418, 32.773621, 22.343353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559807, 32.703331, 22.721146>,  <40.106689, 33.341270, 22.630869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559807, 32.703331, 22.721146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.920692, 32.533825, 22.689085>,  <40.137226, 32.432121, 22.669847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.920692, 32.533825, 22.689085>,  <39.559807, 32.703331, 22.721146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920692, 32.533825, 22.689085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243621, -0.654118, 0.716085,
		-0.355884, -0.626537, -0.693395,
		0.902217, -0.423769, -0.080153,
		40.191357, 32.406693, 22.665039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395638, 32.004795, 22.653130>,  <39.559807, 32.703331, 22.721146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395638, 32.004795, 22.653130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774803, 32.030746, 22.777868>,  <40.002304, 32.046318, 22.852711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774803, 32.030746, 22.777868>,  <39.395638, 32.004795, 22.653130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774803, 32.030746, 22.777868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203088, -0.631124, 0.748624,
		0.245381, -0.772964, -0.585076,
		0.947915, 0.064876, 0.311846,
		40.059177, 32.050209, 22.871422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502285, 31.257090, 22.776100>,  <39.395638, 32.004795, 22.653130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502285, 31.257090, 22.776100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756958, 31.487499, 22.981173>,  <39.909760, 31.625744, 23.104216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756958, 31.487499, 22.981173>,  <39.502285, 31.257090, 22.776100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756958, 31.487499, 22.981173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048438, -0.633654, 0.772098,
		0.769607, -0.516412, -0.375532,
		0.636678, 0.576022, 0.512679,
		39.947960, 31.660305, 23.134975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772537, 30.721983, 23.290869>,  <39.502285, 31.257090, 22.776100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772537, 30.721983, 23.290869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.905846, 31.058573, 23.460974>,  <39.985832, 31.260527, 23.563038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.905846, 31.058573, 23.460974>,  <39.772537, 30.721983, 23.290869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905846, 31.058573, 23.460974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248907, -0.356523, 0.900520,
		0.909383, -0.405967, 0.090631,
		0.333270, 0.841476, 0.425264,
		40.005825, 31.311016, 23.588552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186089, 30.497152, 23.865021>,  <39.772537, 30.721983, 23.290869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186089, 30.497152, 23.865021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048454, 30.866928, 23.930765>,  <39.965874, 31.088793, 23.970213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048454, 30.866928, 23.930765>,  <40.186089, 30.497152, 23.865021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048454, 30.866928, 23.930765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565085, -0.343685, 0.750040,
		0.749856, 0.165200, 0.640644,
		-0.344086, 0.924440, 0.164363,
		39.945229, 31.144260, 23.980074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246479, 30.608547, 24.614529>,  <40.186089, 30.497152, 23.865021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246479, 30.608547, 24.614529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015499, 30.920475, 24.517834>,  <39.876911, 31.107632, 24.459818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015499, 30.920475, 24.517834>,  <40.246479, 30.608547, 24.614529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015499, 30.920475, 24.517834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471900, -0.077185, 0.878267,
		0.666230, 0.621230, 0.412566,
		-0.577450, 0.779818, -0.241736,
		39.842262, 31.154421, 24.445312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.801456, 30.246563, 30.265522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.627403, 30.486052, 29.996542>,  <40.522972, 30.629745, 29.835154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.627403, 30.486052, 29.996542>,  <40.801456, 30.246563, 30.265522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627403, 30.486052, 29.996542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316575, 0.597436, 0.736784,
		0.842875, 0.533481, -0.070424,
		-0.435134, 0.598722, -0.672451,
		40.496864, 30.665668, 29.794807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160019, 30.964626, 30.286978>,  <40.801456, 30.246563, 30.265522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160019, 30.964626, 30.286978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781933, 30.969826, 30.156500>,  <40.555080, 30.972946, 30.078213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781933, 30.969826, 30.156500>,  <41.160019, 30.964626, 30.286978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781933, 30.969826, 30.156500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254198, 0.597638, 0.760403,
		0.204831, 0.801661, -0.561591,
		-0.945213, 0.012999, -0.326195,
		40.498367, 30.973726, 30.058641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026890, 31.706665, 30.448174>,  <41.160019, 30.964626, 30.286978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026890, 31.706665, 30.448174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.679523, 31.515558, 30.395121>,  <40.471104, 31.400894, 30.363289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.679523, 31.515558, 30.395121>,  <41.026890, 31.706665, 30.448174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679523, 31.515558, 30.395121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410514, 0.542761, 0.732727,
		-0.278087, 0.690758, -0.667473,
		-0.868416, -0.477769, -0.132631,
		40.418999, 31.372227, 30.355331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411697, 32.223328, 30.543118>,  <41.026890, 31.706665, 30.448174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411697, 32.223328, 30.543118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.241764, 31.864521, 30.591900>,  <40.139805, 31.649237, 30.621170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.241764, 31.864521, 30.591900>,  <40.411697, 32.223328, 30.543118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241764, 31.864521, 30.591900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579186, 0.372866, 0.724924,
		-0.695744, 0.237335, -0.677947,
		-0.424833, -0.897019, 0.121958,
		40.114315, 31.595415, 30.628487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655647, 32.311195, 30.709187>,  <40.411697, 32.223328, 30.543118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655647, 32.311195, 30.709187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.721287, 31.940125, 30.843346>,  <39.760670, 31.717484, 30.923841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.721287, 31.940125, 30.843346>,  <39.655647, 32.311195, 30.709187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721287, 31.940125, 30.843346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527056, 0.204952, 0.824746,
		-0.833836, -0.312117, -0.455303,
		0.164102, -0.927673, 0.335400,
		39.770515, 31.661823, 30.943966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019089, 31.968994, 30.850826>,  <39.655647, 32.311195, 30.709187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019089, 31.968994, 30.850826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.282825, 31.751457, 31.058483>,  <39.441067, 31.620935, 31.183077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.282825, 31.751457, 31.058483>,  <39.019089, 31.968994, 30.850826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282825, 31.751457, 31.058483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540704, 0.136789, 0.830017,
		-0.522411, -0.827964, -0.203868,
		0.659337, -0.543842, 0.519144,
		39.480625, 31.588305, 31.214226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708126, 31.373787, 31.240658>,  <39.019089, 31.968994, 30.850826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708126, 31.373787, 31.240658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.050701, 31.457088, 31.429613>,  <39.256245, 31.507069, 31.542986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.050701, 31.457088, 31.429613>,  <38.708126, 31.373787, 31.240658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050701, 31.457088, 31.429613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496207, 0.079550, 0.864552,
		0.142475, -0.974833, 0.171470,
		0.856434, 0.208261, 0.472385,
		39.307632, 31.519564, 31.571329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571377, 30.990589, 31.826221>,  <38.708126, 31.373787, 31.240658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571377, 30.990589, 31.826221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883003, 31.223372, 31.919502>,  <39.069981, 31.363041, 31.975471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883003, 31.223372, 31.919502>,  <38.571377, 30.990589, 31.826221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883003, 31.223372, 31.919502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434459, 0.232966, 0.870041,
		0.452001, -0.779134, 0.434334,
		0.779063, 0.581960, 0.233201,
		39.116722, 31.397959, 31.989462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884331, 30.755241, 32.465702>,  <38.571377, 30.990589, 31.826221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884331, 30.755241, 32.465702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.000156, 31.137793, 32.450226>,  <39.069653, 31.367323, 32.440941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.000156, 31.137793, 32.450226>,  <38.884331, 30.755241, 32.465702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000156, 31.137793, 32.450226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357697, 0.145612, 0.922415,
		0.887810, -0.253257, 0.384257,
		0.289560, 0.956378, -0.038687,
		39.087025, 31.424706, 32.438622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347378, 30.877508, 33.018173>,  <38.884331, 30.755241, 32.465702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347378, 30.877508, 33.018173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.181458, 31.223597, 32.905506>,  <39.081905, 31.431250, 32.837906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.181458, 31.223597, 32.905506>,  <39.347378, 30.877508, 33.018173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181458, 31.223597, 32.905506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302770, 0.160675, 0.939422,
		0.858064, 0.474951, 0.195315,
		-0.414797, 0.865220, -0.281671,
		39.057018, 31.483162, 32.821007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609524, 31.329422, 33.444553>,  <39.347378, 30.877508, 33.018173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609524, 31.329422, 33.444553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288963, 31.520279, 33.300278>,  <39.096626, 31.634792, 33.213715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288963, 31.520279, 33.300278>,  <39.609524, 31.329422, 33.444553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288963, 31.520279, 33.300278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172068, 0.393619, 0.903026,
		0.572844, 0.785748, -0.233345,
		-0.801400, 0.477142, -0.360685,
		39.048542, 31.663422, 33.192074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536716, 31.938240, 33.774723>,  <39.609524, 31.329422, 33.444553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536716, 31.938240, 33.774723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.157486, 31.886141, 33.658669>,  <38.929947, 31.854881, 33.589035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.157486, 31.886141, 33.658669>,  <39.536716, 31.938240, 33.774723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157486, 31.886141, 33.658669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307892, 0.147342, 0.939943,
		-0.079677, 0.980472, -0.179795,
		-0.948079, -0.130249, -0.290140,
		38.873062, 31.847067, 33.571625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994865, 32.311954, 34.232670>,  <39.536716, 31.938240, 33.774723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994865, 32.311954, 34.232670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775986, 32.022743, 34.064003>,  <38.644657, 31.849216, 33.962803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775986, 32.022743, 34.064003>,  <38.994865, 32.311954, 34.232670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775986, 32.022743, 34.064003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543811, -0.075853, 0.835772,
		-0.636272, 0.686641, -0.351684,
		-0.547199, -0.723029, -0.421666,
		38.611824, 31.805834, 33.937504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261040, 32.496510, 34.169102>,  <38.994865, 32.311954, 34.232670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261040, 32.496510, 34.169102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.344227, 32.109020, 34.223251>,  <38.394138, 31.876528, 34.255741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.344227, 32.109020, 34.223251>,  <38.261040, 32.496510, 34.169102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344227, 32.109020, 34.223251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621974, -0.024155, 0.782665,
		-0.754915, -0.246970, -0.607543,
		0.207970, -0.968722, 0.135374,
		38.406616, 31.818403, 34.263863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904289, 33.192047, 34.348545>,  <38.261040, 32.496510, 34.169102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904289, 33.192047, 34.348545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.171261, 33.434105, 34.522141>,  <38.331444, 33.579338, 34.626297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.171261, 33.434105, 34.522141>,  <37.904289, 33.192047, 34.348545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171261, 33.434105, 34.522141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118821, 0.488777, -0.864280,
		-0.735132, 0.628412, 0.254321,
		0.667430, 0.605141, 0.433984,
		38.371490, 33.615646, 34.652336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755276, 33.879204, 34.132961>,  <37.904289, 33.192047, 34.348545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755276, 33.879204, 34.132961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.139164, 33.924114, 34.235977>,  <38.369495, 33.951061, 34.297787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.139164, 33.924114, 34.235977>,  <37.755276, 33.879204, 34.132961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139164, 33.924114, 34.235977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183842, 0.442201, -0.877873,
		-0.212453, 0.889860, 0.403748,
		0.959722, 0.112281, 0.257540,
		38.427082, 33.957798, 34.313240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862030, 34.514217, 34.084389>,  <37.755276, 33.879204, 34.132961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862030, 34.514217, 34.084389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224098, 34.345272, 34.065315>,  <38.441341, 34.243904, 34.053871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224098, 34.345272, 34.065315>,  <37.862030, 34.514217, 34.084389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224098, 34.345272, 34.065315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234474, 0.589750, -0.772798,
		0.354518, 0.688336, 0.632859,
		0.905173, -0.422360, -0.047680,
		38.495651, 34.218563, 34.051010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342194, 35.166840, 33.862953>,  <37.862030, 34.514217, 34.084389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342194, 35.166840, 33.862953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.592384, 34.857468, 33.821793>,  <38.742496, 34.671844, 33.797096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.592384, 34.857468, 33.821793>,  <38.342194, 35.166840, 33.862953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592384, 34.857468, 33.821793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422970, 0.446934, -0.788255,
		0.655651, 0.449508, 0.606683,
		0.625474, -0.773429, -0.102904,
		38.780025, 34.625439, 33.790920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910690, 35.442360, 33.600803>,  <38.342194, 35.166840, 33.862953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910690, 35.442360, 33.600803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939796, 35.054836, 33.506054>,  <38.957260, 34.822323, 33.449203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939796, 35.054836, 33.506054>,  <38.910690, 35.442360, 33.600803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939796, 35.054836, 33.506054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208174, 0.247026, -0.946384,
		0.975381, 0.019557, 0.219657,
		0.072770, -0.968811, -0.236873,
		38.961628, 34.764194, 33.434994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539528, 35.449181, 33.255653>,  <38.910690, 35.442360, 33.600803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539528, 35.449181, 33.255653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.355530, 35.112160, 33.143578>,  <39.245132, 34.909946, 33.076332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.355530, 35.112160, 33.143578>,  <39.539528, 35.449181, 33.255653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355530, 35.112160, 33.143578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020832, 0.305232, -0.952050,
		0.887679, -0.443772, -0.122852,
		-0.459992, -0.842556, -0.280193,
		39.217533, 34.859394, 33.059521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948635, 35.093613, 32.672523>,  <39.539528, 35.449181, 33.255653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948635, 35.093613, 32.672523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.575218, 34.954735, 32.636856>,  <39.351166, 34.871410, 32.615456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.575218, 34.954735, 32.636856>,  <39.948635, 35.093613, 32.672523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575218, 34.954735, 32.636856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044396, 0.134858, -0.989870,
		0.355702, -0.928046, -0.110482,
		-0.933545, -0.347194, -0.089171,
		39.295155, 34.850578, 32.610104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017467, 34.665436, 32.130775>,  <39.948635, 35.093613, 32.672523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017467, 34.665436, 32.130775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.625683, 34.743572, 32.150795>,  <39.390614, 34.790455, 32.162807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.625683, 34.743572, 32.150795>,  <40.017467, 34.665436, 32.130775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625683, 34.743572, 32.150795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041200, 0.049084, -0.997945,
		-0.197398, -0.979506, -0.040027,
		-0.979457, 0.195343, 0.050044,
		39.331844, 34.802174, 32.165810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554413, 34.129673, 31.814453>,  <40.017467, 34.665436, 32.130775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554413, 34.129673, 31.814453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.324467, 34.456852, 31.805483>,  <39.186501, 34.653160, 31.800100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.324467, 34.456852, 31.805483>,  <39.554413, 34.129673, 31.814453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324467, 34.456852, 31.805483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052601, -0.064288, -0.996544,
		-0.816558, -0.571696, 0.079981,
		-0.574862, 0.817943, -0.022424,
		39.152008, 34.702236, 31.798756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031769, 33.959743, 31.361309>,  <39.554413, 34.129673, 31.814453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031769, 33.959743, 31.361309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001873, 34.357563, 31.390388>,  <38.983936, 34.596256, 31.407837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001873, 34.357563, 31.390388>,  <39.031769, 33.959743, 31.361309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001873, 34.357563, 31.390388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045438, 0.069430, -0.996552,
		-0.996167, -0.077789, 0.040000,
		-0.074744, 0.994549, 0.072699,
		38.979450, 34.655930, 31.412199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297985, 34.144562, 31.170677>,  <39.031769, 33.959743, 31.361309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297985, 34.144562, 31.170677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.517143, 34.475483, 31.121069>,  <38.648640, 34.674034, 31.091305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.517143, 34.475483, 31.121069>,  <38.297985, 34.144562, 31.170677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517143, 34.475483, 31.121069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141986, -0.054136, -0.988387,
		-0.824408, 0.559144, 0.087805,
		0.547897, 0.827301, -0.124021,
		38.681511, 34.723675, 31.083862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953793, 34.473812, 30.662666>,  <38.297985, 34.144562, 31.170677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953793, 34.473812, 30.662666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313534, 34.648685, 30.665077>,  <38.529377, 34.753609, 30.666525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313534, 34.648685, 30.665077>,  <37.953793, 34.473812, 30.662666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313534, 34.648685, 30.665077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022553, 0.060156, -0.997934,
		-0.436643, 0.897358, 0.063962,
		0.899352, 0.437183, 0.006028,
		38.583340, 34.779842, 30.666885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933819, 34.881992, 30.180319>,  <37.953793, 34.473812, 30.662666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933819, 34.881992, 30.180319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.332794, 34.886650, 30.208536>,  <38.572182, 34.889446, 30.225466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.332794, 34.886650, 30.208536>,  <37.933819, 34.881992, 30.180319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332794, 34.886650, 30.208536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071165, -0.066881, -0.995220,
		-0.006871, 0.997693, -0.067538,
		0.997441, 0.011644, 0.070541,
		38.632027, 34.890144, 30.229698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034782, 35.268375, 29.498783>,  <37.933819, 34.881992, 30.180319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034782, 35.268375, 29.498783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363792, 35.084801, 29.633146>,  <38.561199, 34.974655, 29.713764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363792, 35.084801, 29.633146>,  <38.034782, 35.268375, 29.498783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363792, 35.084801, 29.633146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190936, -0.333514, -0.923207,
		0.535725, 0.823495, -0.186695,
		0.822522, -0.458938, 0.335907,
		38.610550, 34.947121, 29.733919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098984, 36.001522, 29.502239>,  <38.034782, 35.268375, 29.498783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098984, 36.001522, 29.502239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.875237, 36.314526, 29.392853>,  <37.740990, 36.502327, 29.327221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.875237, 36.314526, 29.392853>,  <38.098984, 36.001522, 29.502239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875237, 36.314526, 29.392853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784679, -0.393528, 0.478972,
		0.267184, 0.482506, 0.834147,
		-0.559367, 0.782511, -0.273467,
		37.707428, 36.549278, 29.310812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812401, 36.202385, 30.120193>,  <38.098984, 36.001522, 29.502239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812401, 36.202385, 30.120193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.565483, 36.352325, 29.843515>,  <37.417332, 36.442287, 29.677509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.565483, 36.352325, 29.843515>,  <37.812401, 36.202385, 30.120193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565483, 36.352325, 29.843515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783804, -0.368839, 0.499609,
		-0.067846, 0.850557, 0.521488,
		-0.617291, 0.374848, -0.691694,
		37.380295, 36.464779, 29.636007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289875, 36.427841, 30.488531>,  <37.812401, 36.202385, 30.120193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289875, 36.427841, 30.488531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132210, 36.373840, 30.124903>,  <37.037613, 36.341438, 29.906725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132210, 36.373840, 30.124903>,  <37.289875, 36.427841, 30.488531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132210, 36.373840, 30.124903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724285, -0.563256, 0.397685,
		-0.565728, 0.815180, 0.124234,
		-0.394161, -0.135001, -0.909072,
		37.013962, 36.333340, 29.852180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637844, 36.615108, 30.541616>,  <37.289875, 36.427841, 30.488531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637844, 36.615108, 30.541616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.641838, 36.405674, 30.200851>,  <36.644234, 36.280014, 29.996393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.641838, 36.405674, 30.200851>,  <36.637844, 36.615108, 30.541616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641838, 36.405674, 30.200851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770647, -0.546910, 0.327099,
		-0.637185, 0.653257, -0.408963,
		0.009986, -0.523589, -0.851913,
		36.644833, 36.248596, 29.945278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966774, 36.582890, 30.239401>,  <36.637844, 36.615108, 30.541616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966774, 36.582890, 30.239401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169750, 36.269585, 30.095736>,  <36.291534, 36.081600, 30.009537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169750, 36.269585, 30.095736>,  <35.966774, 36.582890, 30.239401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169750, 36.269585, 30.095736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730921, -0.612007, 0.301998,
		-0.456355, 0.109275, -0.883062,
		0.507439, -0.783267, -0.359164,
		36.321983, 36.034603, 29.987986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492714, 36.131203, 29.820700>,  <35.966774, 36.582890, 30.239401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492714, 36.131203, 29.820700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.798801, 35.903717, 29.941360>,  <35.982456, 35.767223, 30.013758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.798801, 35.903717, 29.941360>,  <35.492714, 36.131203, 29.820700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798801, 35.903717, 29.941360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643680, -0.668289, 0.372915,
		-0.010493, -0.479530, -0.877463,
		0.765223, -0.568718, 0.301651,
		36.028370, 35.733101, 30.031857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263348, 35.445843, 29.552505>,  <35.492714, 36.131203, 29.820700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263348, 35.445843, 29.552505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.563496, 35.346745, 29.797640>,  <35.743584, 35.287285, 29.944721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.563496, 35.346745, 29.797640>,  <35.263348, 35.445843, 29.552505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563496, 35.346745, 29.797640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583159, -0.684636, 0.437264,
		0.311242, -0.685491, -0.658202,
		0.750369, -0.247741, 0.612838,
		35.788605, 35.272423, 29.981491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272644, 34.710556, 29.514019>,  <35.263348, 35.445843, 29.552505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272644, 34.710556, 29.514019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463902, 34.813507, 29.849909>,  <35.578655, 34.875278, 30.051443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463902, 34.813507, 29.849909>,  <35.272644, 34.710556, 29.514019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463902, 34.813507, 29.849909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441932, -0.755740, 0.483273,
		0.758995, -0.602176, -0.247612,
		0.478145, 0.257374, 0.839724,
		35.607346, 34.890720, 30.101826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421192, 34.086960, 29.848867>,  <35.272644, 34.710556, 29.514019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421192, 34.086960, 29.848867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464802, 34.338654, 30.156679>,  <35.490967, 34.489670, 30.341366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464802, 34.338654, 30.156679>,  <35.421192, 34.086960, 29.848867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464802, 34.338654, 30.156679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395032, -0.682961, 0.614422,
		0.912175, -0.370975, 0.174110,
		0.109025, 0.629239, 0.769527,
		35.497509, 34.527424, 30.387537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646942, 33.715164, 30.362114>,  <35.421192, 34.086960, 29.848867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646942, 33.715164, 30.362114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.473667, 34.020439, 30.553900>,  <35.369701, 34.203606, 30.668970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.473667, 34.020439, 30.553900>,  <35.646942, 33.715164, 30.362114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473667, 34.020439, 30.553900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455742, -0.644427, 0.614014,
		0.777589, 0.047474, 0.626978,
		-0.433191, 0.763191, 0.479464,
		35.343712, 34.249397, 30.697739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548756, 33.378887, 30.979012>,  <35.646942, 33.715164, 30.362114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548756, 33.378887, 30.979012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.311676, 33.699696, 30.949432>,  <35.169430, 33.892181, 30.931684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.311676, 33.699696, 30.949432>,  <35.548756, 33.378887, 30.979012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311676, 33.699696, 30.949432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630914, -0.405248, 0.661606,
		0.500654, 0.438790, 0.746197,
		-0.592700, 0.802021, -0.073950,
		35.133865, 33.940304, 30.927248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328621, 33.472908, 31.692558>,  <35.548756, 33.378887, 30.979012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328621, 33.472908, 31.692558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.097046, 33.709198, 31.467749>,  <34.958099, 33.850971, 31.332863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.097046, 33.709198, 31.467749>,  <35.328621, 33.472908, 31.692558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097046, 33.709198, 31.467749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789144, -0.232533, 0.568489,
		0.205131, 0.772640, 0.600789,
		-0.578941, 0.590724, -0.562025,
		34.923363, 33.886414, 31.299141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.421333, 38.159481, 27.247297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092205, 38.191921, 27.022303>,  <39.894730, 38.211384, 26.887306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092205, 38.191921, 27.022303>,  <40.421333, 38.159481, 27.247297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092205, 38.191921, 27.022303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568292, -0.111849, 0.815189,
		0.003197, 0.990410, 0.138119,
		-0.822820, 0.081098, -0.562485,
		39.845360, 38.216251, 26.853558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961369, 38.757576, 27.599031>,  <40.421333, 38.159481, 27.247297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961369, 38.757576, 27.599031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713825, 38.542316, 27.370150>,  <39.565300, 38.413162, 27.232821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713825, 38.542316, 27.370150>,  <39.961369, 38.757576, 27.599031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713825, 38.542316, 27.370150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608269, -0.132611, 0.782575,
		-0.497020, 0.832354, -0.245271,
		-0.618854, -0.538146, -0.572205,
		39.528168, 38.380871, 27.198488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262009, 39.019524, 27.752447>,  <39.961369, 38.757576, 27.599031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262009, 39.019524, 27.752447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218536, 38.648075, 27.610542>,  <39.192455, 38.425205, 27.525400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218536, 38.648075, 27.610542>,  <39.262009, 39.019524, 27.752447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218536, 38.648075, 27.610542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710065, -0.177241, 0.681464,
		-0.695698, 0.325964, -0.640118,
		-0.108677, -0.928619, -0.354762,
		39.185932, 38.369488, 27.504114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508690, 38.836246, 27.973370>,  <39.262009, 39.019524, 27.752447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508690, 38.836246, 27.973370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703678, 38.504395, 27.864491>,  <38.820671, 38.305283, 27.799164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703678, 38.504395, 27.864491>,  <38.508690, 38.836246, 27.973370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703678, 38.504395, 27.864491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506475, -0.522607, 0.685831,
		-0.711238, -0.196459, -0.674940,
		0.487466, -0.829629, -0.272196,
		38.849918, 38.255505, 27.782831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083488, 38.370010, 27.752068>,  <38.508690, 38.836246, 27.973370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083488, 38.370010, 27.752068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385479, 38.124664, 27.844839>,  <38.566673, 37.977455, 27.900503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385479, 38.124664, 27.844839>,  <38.083488, 38.370010, 27.752068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385479, 38.124664, 27.844839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643758, -0.625915, 0.440234,
		-0.124857, -0.481673, -0.867411,
		0.754974, -0.613370, 0.231931,
		38.611973, 37.940655, 27.914419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761692, 37.689625, 27.700394>,  <38.083488, 38.370010, 27.752068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761692, 37.689625, 27.700394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092064, 37.617405, 27.914028>,  <38.290287, 37.574074, 28.042210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092064, 37.617405, 27.914028>,  <37.761692, 37.689625, 27.700394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092064, 37.617405, 27.914028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495072, -0.685484, 0.533869,
		0.269720, -0.705348, -0.655542,
		0.825927, -0.180545, 0.534086,
		38.339844, 37.563240, 28.074255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955925, 36.912193, 27.667927>,  <37.761692, 37.689625, 27.700394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955925, 36.912193, 27.667927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084160, 37.090660, 28.002150>,  <38.161102, 37.197739, 28.202684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084160, 37.090660, 28.002150>,  <37.955925, 36.912193, 27.667927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084160, 37.090660, 28.002150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548189, -0.631987, 0.547796,
		0.772471, -0.633661, 0.041976,
		0.320588, 0.446168, 0.835558,
		38.180336, 37.224510, 28.252817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028446, 36.354465, 28.095165>,  <37.955925, 36.912193, 27.667927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028446, 36.354465, 28.095165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024986, 36.653622, 28.360672>,  <38.022911, 36.833115, 28.519976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024986, 36.653622, 28.360672>,  <38.028446, 36.354465, 28.095165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024986, 36.653622, 28.360672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392667, -0.613011, 0.685588,
		0.919640, -0.254710, 0.298972,
		-0.008647, 0.747891, 0.663766,
		38.022392, 36.877991, 28.559801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219692, 36.081493, 28.748613>,  <38.028446, 36.354465, 28.095165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219692, 36.081493, 28.748613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052513, 36.427738, 28.858908>,  <37.952206, 36.635487, 28.925085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052513, 36.427738, 28.858908>,  <38.219692, 36.081493, 28.748613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052513, 36.427738, 28.858908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605278, -0.491664, 0.626023,
		0.677465, 0.094747, 0.729428,
		-0.417947, 0.865615, 0.275737,
		37.927128, 36.687424, 28.941629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646839, 35.603935, 29.160860>,  <38.219692, 36.081493, 28.748613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646839, 35.603935, 29.160860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773216, 35.242950, 29.277987>,  <38.849045, 35.026360, 29.348263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773216, 35.242950, 29.277987>,  <38.646839, 35.603935, 29.160860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773216, 35.242950, 29.277987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426004, -0.140828, -0.893693,
		0.847761, 0.407099, 0.339959,
		0.315946, -0.902462, 0.292814,
		38.868000, 34.972210, 29.365831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423504, 35.603756, 28.954815>,  <38.646839, 35.603935, 29.160860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423504, 35.603756, 28.954815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336433, 35.217270, 29.010004>,  <39.284191, 34.985378, 29.043118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336433, 35.217270, 29.010004>,  <39.423504, 35.603756, 28.954815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336433, 35.217270, 29.010004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645436, -0.248547, -0.722244,
		0.732139, -0.068164, 0.677736,
		-0.217681, -0.966218, 0.137975,
		39.271130, 34.927402, 29.051397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071613, 35.335480, 28.858305>,  <39.423504, 35.603756, 28.954815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071613, 35.335480, 28.858305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821938, 35.023693, 28.837082>,  <39.672131, 34.836620, 28.824348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821938, 35.023693, 28.837082>,  <40.071613, 35.335480, 28.858305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821938, 35.023693, 28.837082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500256, -0.346593, -0.793484,
		0.600106, -0.521829, 0.606274,
		-0.624193, -0.779467, -0.053056,
		39.634678, 34.789852, 28.821165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421574, 34.739674, 28.832575>,  <40.071613, 35.335480, 28.858305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421574, 34.739674, 28.832575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072578, 34.648579, 28.659645>,  <39.863182, 34.593922, 28.555887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072578, 34.648579, 28.659645>,  <40.421574, 34.739674, 28.832575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072578, 34.648579, 28.659645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487886, -0.356788, -0.796662,
		0.027183, -0.906000, 0.422403,
		-0.872484, -0.227740, -0.432326,
		39.810833, 34.580257, 28.529947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437340, 34.041565, 28.598686>,  <40.421574, 34.739674, 28.832575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437340, 34.041565, 28.598686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142647, 34.207478, 28.385075>,  <39.965832, 34.307026, 28.256908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142647, 34.207478, 28.385075>,  <40.437340, 34.041565, 28.598686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142647, 34.207478, 28.385075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407838, -0.357371, -0.840211,
		-0.539349, -0.836806, 0.094123,
		-0.736730, 0.414780, -0.534029,
		39.921627, 34.331913, 28.224867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188992, 33.473919, 28.039053>,  <40.437340, 34.041565, 28.598686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188992, 33.473919, 28.039053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116112, 33.851028, 27.927347>,  <40.072384, 34.077293, 27.860323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116112, 33.851028, 27.927347>,  <40.188992, 33.473919, 28.039053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116112, 33.851028, 27.927347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334293, -0.207707, -0.919296,
		-0.924690, -0.260848, -0.277319,
		-0.182196, 0.942770, -0.279265,
		40.061455, 34.133858, 27.843567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177326, 33.439312, 27.291197>,  <40.188992, 33.473919, 28.039053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177326, 33.439312, 27.291197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180431, 33.832577, 27.364231>,  <40.182293, 34.068535, 27.408052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180431, 33.832577, 27.364231>,  <40.177326, 33.439312, 27.291197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180431, 33.832577, 27.364231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487756, 0.155675, -0.858987,
		-0.872945, 0.095726, -0.478334,
		0.007762, 0.983159, 0.182587,
		40.182758, 34.127525, 27.419006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868595, 33.758610, 26.715727>,  <40.177326, 33.439312, 27.291197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868595, 33.758610, 26.715727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074173, 34.057636, 26.884016>,  <40.197521, 34.237053, 26.984989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074173, 34.057636, 26.884016>,  <39.868595, 33.758610, 26.715727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074173, 34.057636, 26.884016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496462, 0.140756, -0.856571,
		-0.699559, 0.649107, -0.298795,
		0.513949, 0.747562, 0.420724,
		40.228359, 34.281906, 27.010233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862946, 34.219440, 26.223179>,  <39.868595, 33.758610, 26.715727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862946, 34.219440, 26.223179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175217, 34.349670, 26.436550>,  <40.362579, 34.427811, 26.564573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175217, 34.349670, 26.436550>,  <39.862946, 34.219440, 26.223179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175217, 34.349670, 26.436550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493897, 0.201547, -0.845840,
		-0.382897, 0.923784, -0.003460,
		0.780676, 0.325578, 0.533426,
		40.409420, 34.447346, 26.596579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130100, 34.858547, 25.854246>,  <39.862946, 34.219440, 26.223179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130100, 34.858547, 25.854246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433243, 34.749802, 26.091478>,  <40.615128, 34.684555, 26.233818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433243, 34.749802, 26.091478>,  <40.130100, 34.858547, 25.854246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433243, 34.749802, 26.091478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644698, 0.172571, -0.744703,
		0.100110, 0.946736, 0.306055,
		0.757854, -0.271865, 0.593083,
		40.660599, 34.668243, 26.269403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749496, 35.232769, 25.758707>,  <40.130100, 34.858547, 25.854246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749496, 35.232769, 25.758707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877140, 34.872761, 25.877462>,  <40.953724, 34.656757, 25.948715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877140, 34.872761, 25.877462>,  <40.749496, 35.232769, 25.758707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877140, 34.872761, 25.877462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746046, 0.045367, -0.664348,
		0.584455, 0.433489, 0.685930,
		0.319106, -0.900016, 0.296888,
		40.972874, 34.602757, 25.966528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447113, 35.652580, 25.894110>,  <40.749496, 35.232769, 25.758707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447113, 35.652580, 25.894110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481438, 35.254215, 25.882765>,  <41.502033, 35.015198, 25.875957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481438, 35.254215, 25.882765>,  <41.447113, 35.652580, 25.894110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481438, 35.254215, 25.882765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711351, 0.081172, -0.698134,
		0.697579, 0.039730, 0.715405,
		0.085807, -0.995908, -0.028362,
		41.507179, 34.955444, 25.874256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224403, 35.523407, 25.891052>,  <41.447113, 35.652580, 25.894110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224403, 35.523407, 25.891052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048950, 35.187836, 25.762182>,  <41.943680, 34.986492, 25.684860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048950, 35.187836, 25.762182>,  <42.224403, 35.523407, 25.891052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048950, 35.187836, 25.762182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586894, 0.004077, -0.809653,
		0.680558, -0.544220, 0.490577,
		-0.438629, -0.838933, -0.322174,
		41.917362, 34.936157, 25.665529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818726, 35.019382, 25.818342>,  <42.224403, 35.523407, 25.891052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818726, 35.019382, 25.818342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496864, 34.932922, 25.597141>,  <42.303749, 34.881046, 25.464420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496864, 34.932922, 25.597141>,  <42.818726, 35.019382, 25.818342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496864, 34.932922, 25.597141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562211, 0.022125, -0.826698,
		0.190924, -0.976110, 0.103718,
		-0.804653, -0.216148, -0.553004,
		42.255470, 34.868076, 25.431240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.405312, 32.593567, 21.232260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489998, 32.800282, 21.564070>,  <37.540810, 32.924309, 21.763155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489998, 32.800282, 21.564070>,  <37.405312, 32.593567, 21.232260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489998, 32.800282, 21.564070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250112, -0.791852, 0.557148,
		0.944786, -0.325431, -0.038393,
		0.211715, 0.516783, 0.829525,
		37.553513, 32.955315, 21.812927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670593, 32.146355, 21.823009>,  <37.405312, 32.593567, 21.232260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670593, 32.146355, 21.823009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.590904, 32.482067, 22.025362>,  <37.543091, 32.683495, 22.146774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.590904, 32.482067, 22.025362>,  <37.670593, 32.146355, 21.823009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590904, 32.482067, 22.025362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179065, -0.538716, 0.823238,
		0.963456, 0.073419, 0.257609,
		-0.199219, 0.839282, 0.505882,
		37.531139, 32.733852, 22.177126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935455, 32.040432, 22.557056>,  <37.670593, 32.146355, 21.823009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935455, 32.040432, 22.557056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.660866, 32.328274, 22.598850>,  <37.496113, 32.500980, 22.623926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.660866, 32.328274, 22.598850>,  <37.935455, 32.040432, 22.557056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660866, 32.328274, 22.598850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305290, -0.415638, 0.856763,
		0.659959, 0.556250, 0.505014,
		-0.686478, 0.719605, 0.104487,
		37.454922, 32.544155, 22.630196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918522, 32.038910, 23.302719>,  <37.935455, 32.040432, 22.557056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918522, 32.038910, 23.302719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611149, 32.272060, 23.197071>,  <37.426723, 32.411949, 23.133682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611149, 32.272060, 23.197071>,  <37.918522, 32.038910, 23.302719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611149, 32.272060, 23.197071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462645, -0.220873, 0.858589,
		0.442113, 0.781966, 0.439391,
		-0.768437, 0.582876, -0.264121,
		37.380619, 32.446922, 23.117834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819401, 32.640373, 23.811485>,  <37.918522, 32.038910, 23.302719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819401, 32.640373, 23.811485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482288, 32.539829, 23.621101>,  <37.280022, 32.479504, 23.506870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482288, 32.539829, 23.621101>,  <37.819401, 32.640373, 23.811485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482288, 32.539829, 23.621101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470610, -0.085059, 0.878232,
		-0.261235, 0.964150, -0.046605,
		-0.842782, -0.251357, -0.475959,
		37.229454, 32.464420, 23.478313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308434, 32.949684, 24.172209>,  <37.819401, 32.640373, 23.811485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308434, 32.949684, 24.172209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096111, 32.674652, 23.974024>,  <36.968716, 32.509632, 23.855112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096111, 32.674652, 23.974024>,  <37.308434, 32.949684, 24.172209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096111, 32.674652, 23.974024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517605, -0.199899, 0.831940,
		-0.671065, 0.698054, -0.249785,
		-0.530807, -0.687576, -0.495462,
		36.936871, 32.468380, 23.825386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628571, 33.123264, 24.285177>,  <37.308434, 32.949684, 24.172209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628571, 33.123264, 24.285177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.599300, 32.738171, 24.181030>,  <36.581738, 32.507114, 24.118542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.599300, 32.738171, 24.181030>,  <36.628571, 33.123264, 24.285177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599300, 32.738171, 24.181030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622415, -0.159902, 0.766180,
		-0.779259, 0.218125, -0.587518,
		-0.073178, -0.962732, -0.260369,
		36.577347, 32.449352, 24.102919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919594, 32.995853, 24.286901>,  <36.628571, 33.123264, 24.285177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919594, 32.995853, 24.286901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.104847, 32.643055, 24.321732>,  <36.216000, 32.431374, 24.342630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.104847, 32.643055, 24.321732>,  <35.919594, 32.995853, 24.286901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104847, 32.643055, 24.321732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549721, -0.208804, 0.808831,
		-0.695206, -0.422467, -0.581558,
		0.463137, -0.881999, 0.087077,
		36.243790, 32.378456, 24.347855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430965, 32.516640, 24.330248>,  <35.919594, 32.995853, 24.286901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430965, 32.516640, 24.330248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753838, 32.346375, 24.493843>,  <35.947559, 32.244213, 24.592001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753838, 32.346375, 24.493843>,  <35.430965, 32.516640, 24.330248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753838, 32.346375, 24.493843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540619, -0.254819, 0.801747,
		-0.237062, -0.868258, -0.435810,
		0.807175, -0.425671, 0.408989,
		35.995991, 32.218674, 24.616541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068157, 32.142048, 24.729492>,  <35.430965, 32.516640, 24.330248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068157, 32.142048, 24.729492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.446850, 32.084766, 24.844866>,  <35.674065, 32.050396, 24.914091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.446850, 32.084766, 24.844866>,  <35.068157, 32.142048, 24.729492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446850, 32.084766, 24.844866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314437, -0.217738, 0.923969,
		-0.069512, -0.965444, -0.251168,
		0.946730, -0.143204, 0.288436,
		35.730869, 32.041805, 24.931396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028061, 31.592798, 25.214209>,  <35.068157, 32.142048, 24.729492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028061, 31.592798, 25.214209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384010, 31.756403, 25.295034>,  <35.597580, 31.854567, 25.343531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384010, 31.756403, 25.295034>,  <35.028061, 31.592798, 25.214209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384010, 31.756403, 25.295034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192076, -0.065847, 0.979168,
		0.413798, -0.910150, 0.019966,
		0.889875, 0.409013, 0.202066,
		35.650974, 31.879107, 25.355654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300812, 31.195076, 25.785969>,  <35.028061, 31.592798, 25.214209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300812, 31.195076, 25.785969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488853, 31.547916, 25.797985>,  <35.601677, 31.759621, 25.805195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488853, 31.547916, 25.797985>,  <35.300812, 31.195076, 25.785969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488853, 31.547916, 25.797985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163685, 0.053684, 0.985051,
		0.867300, -0.467994, 0.169624,
		0.470104, 0.882100, 0.030043,
		35.629883, 31.812546, 25.806997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739269, 31.159555, 26.357864>,  <35.300812, 31.195076, 25.785969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739269, 31.159555, 26.357864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.679699, 31.548054, 26.283567>,  <35.643959, 31.781153, 26.238989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.679699, 31.548054, 26.283567>,  <35.739269, 31.159555, 26.357864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679699, 31.548054, 26.283567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047536, 0.180587, 0.982410,
		0.987705, 0.155133, 0.019275,
		-0.148924, 0.971248, -0.185742,
		35.635021, 31.839428, 26.227844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176762, 31.492918, 26.869143>,  <35.739269, 31.159555, 26.357864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176762, 31.492918, 26.869143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.897881, 31.757748, 26.759190>,  <35.730553, 31.916645, 26.693218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.897881, 31.757748, 26.759190>,  <36.176762, 31.492918, 26.869143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897881, 31.757748, 26.759190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179411, 0.210093, 0.961079,
		0.694056, 0.719388, -0.027694,
		-0.697207, 0.662074, -0.274883,
		35.688717, 31.956369, 26.676725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786674, 31.811556, 27.054773>,  <36.176762, 31.492918, 26.869143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786674, 31.811556, 27.054773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.013500, 31.552248, 27.258020>,  <37.149597, 31.396664, 27.379969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.013500, 31.552248, 27.258020>,  <36.786674, 31.811556, 27.054773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013500, 31.552248, 27.258020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727499, 0.104917, -0.678039,
		0.386241, 0.754149, 0.531109,
		0.567065, -0.648268, 0.508120,
		37.183620, 31.357767, 27.410456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538685, 32.092144, 27.019039>,  <36.786674, 31.811556, 27.054773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538685, 32.092144, 27.019039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.563557, 31.702875, 27.107643>,  <37.578480, 31.469313, 27.160807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.563557, 31.702875, 27.107643>,  <37.538685, 32.092144, 27.019039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563557, 31.702875, 27.107643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644539, -0.130302, -0.753386,
		0.762039, 0.189619, 0.619146,
		0.062180, -0.973173, 0.221512,
		37.582211, 31.410923, 27.174097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246151, 31.935076, 26.866041>,  <37.538685, 32.092144, 27.019039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246151, 31.935076, 26.866041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.052273, 31.585756, 26.885693>,  <37.935944, 31.376163, 26.897484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.052273, 31.585756, 26.885693>,  <38.246151, 31.935076, 26.866041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052273, 31.585756, 26.885693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658567, -0.401330, -0.636572,
		0.575636, -0.276191, 0.769651,
		-0.484699, -0.873300, 0.049130,
		37.906864, 31.323767, 26.900433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759640, 31.427515, 27.153210>,  <38.246151, 31.935076, 26.866041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759640, 31.427515, 27.153210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479282, 31.246599, 26.932598>,  <38.311069, 31.138050, 26.800232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479282, 31.246599, 26.932598>,  <38.759640, 31.427515, 27.153210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479282, 31.246599, 26.932598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713013, -0.423596, -0.558730,
		0.019083, -0.784857, 0.619383,
		-0.700891, -0.452290, -0.551530,
		38.269016, 31.110912, 26.767139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092892, 30.808517, 27.031952>,  <38.759640, 31.427515, 27.153210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092892, 30.808517, 27.031952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789330, 30.882061, 26.782070>,  <38.607193, 30.926188, 26.632141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789330, 30.882061, 26.782070>,  <39.092892, 30.808517, 27.031952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789330, 30.882061, 26.782070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613692, -0.118930, -0.780537,
		-0.217804, -0.975732, -0.022576,
		-0.758909, 0.183859, -0.624702,
		38.561657, 30.937220, 26.594660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196041, 30.336981, 26.484987>,  <39.092892, 30.808517, 27.031952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196041, 30.336981, 26.484987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936134, 30.607328, 26.345846>,  <38.780190, 30.769537, 26.262362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936134, 30.607328, 26.345846>,  <39.196041, 30.336981, 26.484987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936134, 30.607328, 26.345846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452980, -0.023198, -0.891219,
		-0.610417, -0.736656, -0.291082,
		-0.649769, 0.675870, -0.347851,
		38.741203, 30.810089, 26.241491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880131, 30.024370, 25.792349>,  <39.196041, 30.336981, 26.484987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880131, 30.024370, 25.792349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.861710, 30.423895, 25.798756>,  <38.850658, 30.663609, 25.802599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.861710, 30.423895, 25.798756>,  <38.880131, 30.024370, 25.792349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861710, 30.423895, 25.798756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559407, 0.039070, -0.827972,
		-0.827613, -0.029170, -0.560541,
		-0.046052, 0.998811, 0.016017,
		38.847893, 30.723537, 25.803560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591225, 30.306791, 25.111830>,  <38.880131, 30.024370, 25.792349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591225, 30.306791, 25.111830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794132, 30.617476, 25.261175>,  <38.915878, 30.803886, 25.350782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794132, 30.617476, 25.261175>,  <38.591225, 30.306791, 25.111830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794132, 30.617476, 25.261175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361446, 0.201543, -0.910350,
		-0.782328, 0.596741, -0.178503,
		0.507268, 0.776711, 0.373362,
		38.946312, 30.850489, 25.373184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388420, 30.864988, 24.526920>,  <38.591225, 30.306791, 25.111830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388420, 30.864988, 24.526920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.703011, 30.985191, 24.742756>,  <38.891766, 31.057312, 24.872257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.703011, 30.985191, 24.742756>,  <38.388420, 30.864988, 24.526920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703011, 30.985191, 24.742756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470291, 0.274946, -0.838588,
		-0.400358, 0.913291, 0.074913,
		0.786472, 0.300505, 0.539590,
		38.938953, 31.075342, 24.904633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627151, 31.429621, 24.106567>,  <38.388420, 30.864988, 24.526920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627151, 31.429621, 24.106567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.926224, 31.359680, 24.362816>,  <39.105667, 31.317717, 24.516565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.926224, 31.359680, 24.362816>,  <38.627151, 31.429621, 24.106567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926224, 31.359680, 24.362816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656011, 0.344191, -0.671700,
		-0.103048, 0.922474, 0.372051,
		0.747683, -0.174852, 0.640622,
		39.150528, 31.307224, 24.555002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975281, 32.003872, 24.038214>,  <38.627151, 31.429621, 24.106567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975281, 32.003872, 24.038214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253506, 31.754425, 24.180931>,  <39.420441, 31.604757, 24.266562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253506, 31.754425, 24.180931>,  <38.975281, 32.003872, 24.038214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253506, 31.754425, 24.180931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625179, 0.280627, -0.728286,
		0.354045, 0.729625, 0.585064,
		0.695560, -0.623615, 0.356791,
		39.462173, 31.567341, 24.287968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563953, 32.371017, 24.047565>,  <38.975281, 32.003872, 24.038214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563953, 32.371017, 24.047565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.675732, 31.987041, 24.039253>,  <39.742798, 31.756657, 24.034266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.675732, 31.987041, 24.039253>,  <39.563953, 32.371017, 24.047565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675732, 31.987041, 24.039253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672935, 0.211247, -0.708895,
		0.684884, 0.184116, 0.705007,
		0.279450, -0.959935, -0.020782,
		39.759567, 31.699060, 24.033018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185749, 32.404308, 24.173674>,  <39.563953, 32.371017, 24.047565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185749, 32.404308, 24.173674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.121838, 32.067921, 23.966894>,  <40.083492, 31.866087, 23.842827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.121838, 32.067921, 23.966894>,  <40.185749, 32.404308, 24.173674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121838, 32.067921, 23.966894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686164, 0.281866, -0.670619,
		0.709682, -0.461862, 0.532009,
		-0.159778, -0.840973, -0.516949,
		40.073906, 31.815628, 23.811810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775364, 32.228413, 23.920929>,  <40.185749, 32.404308, 24.173674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775364, 32.228413, 23.920929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514999, 32.038124, 23.684284>,  <40.358780, 31.923952, 23.542297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514999, 32.038124, 23.684284>,  <40.775364, 32.228413, 23.920929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514999, 32.038124, 23.684284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552019, 0.238374, -0.799033,
		0.521139, -0.846682, 0.107444,
		-0.650914, -0.475718, -0.591610,
		40.319725, 31.895409, 23.506802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293102, 31.713005, 24.148029>,  <40.775364, 32.228413, 23.920929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293102, 31.713005, 24.148029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.656361, 31.626478, 24.291405>,  <41.874317, 31.574562, 24.377430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.656361, 31.626478, 24.291405>,  <41.293102, 31.713005, 24.148029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656361, 31.626478, 24.291405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413355, -0.327505, 0.849634,
		-0.066398, -0.919754, -0.386837,
		0.908146, -0.216315, 0.358439,
		41.928806, 31.561583, 24.398935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317478, 31.051796, 24.375774>,  <41.293102, 31.713005, 24.148029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317478, 31.051796, 24.375774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.608948, 31.217386, 24.594009>,  <41.783829, 31.316740, 24.724951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.608948, 31.217386, 24.594009>,  <41.317478, 31.051796, 24.375774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608948, 31.217386, 24.594009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423325, -0.353974, 0.833965,
		0.538364, -0.838646, -0.082685,
		0.728670, 0.413974, 0.545587,
		41.827549, 31.341579, 24.757685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589268, 30.471113, 24.806854>,  <41.317478, 31.051796, 24.375774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589268, 30.471113, 24.806854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.669228, 30.830431, 24.963369>,  <41.717205, 31.046022, 25.057278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.669228, 30.830431, 24.963369>,  <41.589268, 30.471113, 24.806854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669228, 30.830431, 24.963369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377218, -0.298010, 0.876868,
		0.904293, -0.322890, 0.279279,
		0.199904, 0.898294, 0.391288,
		41.729198, 31.099918, 25.080755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597916, 30.317293, 25.409212>,  <41.589268, 30.471113, 24.806854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597916, 30.317293, 25.409212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.627510, 30.711300, 25.471521>,  <41.645267, 30.947704, 25.508907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.627510, 30.711300, 25.471521>,  <41.597916, 30.317293, 25.409212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627510, 30.711300, 25.471521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294989, -0.127591, 0.946943,
		0.952631, -0.116016, 0.281129,
		0.073991, 0.985018, 0.155771,
		41.649708, 31.006805, 25.518253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023888, 30.459055, 25.993103>,  <41.597916, 30.317293, 25.409212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023888, 30.459055, 25.993103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.811764, 30.798107, 25.986200>,  <41.684490, 31.001537, 25.982058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.811764, 30.798107, 25.986200>,  <42.023888, 30.459055, 25.993103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811764, 30.798107, 25.986200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269221, -0.149063, 0.951472,
		0.803922, 0.509222, 0.307249,
		-0.530310, 0.847628, -0.017258,
		41.652672, 31.052395, 25.981022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226074, 30.852692, 26.592262>,  <42.023888, 30.459055, 25.993103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226074, 30.852692, 26.592262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894543, 31.057589, 26.502241>,  <41.695625, 31.180527, 26.448229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894543, 31.057589, 26.502241>,  <42.226074, 30.852692, 26.592262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894543, 31.057589, 26.502241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285503, -0.041286, 0.957488,
		0.481175, 0.857848, 0.180466,
		-0.828830, 0.512243, -0.225052,
		41.645893, 31.211262, 26.434725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159542, 31.427601, 27.088057>,  <42.226074, 30.852692, 26.592262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159542, 31.427601, 27.088057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.791245, 31.333220, 26.963764>,  <41.570267, 31.276590, 26.889189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.791245, 31.333220, 26.963764>,  <42.159542, 31.427601, 27.088057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791245, 31.333220, 26.963764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287292, -0.128857, 0.949136,
		-0.263993, 0.963183, 0.050857,
		-0.920745, -0.235955, -0.310732,
		41.515022, 31.262434, 26.870544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672810, 31.765917, 27.554132>,  <42.159542, 31.427601, 27.088057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672810, 31.765917, 27.554132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.458885, 31.482838, 27.369463>,  <41.330532, 31.312990, 27.258661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.458885, 31.482838, 27.369463>,  <41.672810, 31.765917, 27.554132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458885, 31.482838, 27.369463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549391, -0.123891, 0.826330,
		-0.641990, 0.695566, -0.322546,
		-0.534806, -0.707699, -0.461675,
		41.298443, 31.270529, 27.230961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004959, 31.835320, 27.543423>,  <41.672810, 31.765917, 27.554132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004959, 31.835320, 27.543423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032341, 31.436855, 27.521584>,  <41.048771, 31.197777, 27.508480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032341, 31.436855, 27.521584>,  <41.004959, 31.835320, 27.543423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032341, 31.436855, 27.521584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573998, -0.084086, 0.814528,
		-0.815990, -0.024419, -0.577550,
		0.068454, -0.996159, -0.054597,
		41.052876, 31.138008, 27.505205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291691, 31.577126, 27.607697>,  <41.004959, 31.835320, 27.543423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291691, 31.577126, 27.607697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.540791, 31.276052, 27.693157>,  <40.690250, 31.095407, 27.744434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.540791, 31.276052, 27.693157>,  <40.291691, 31.577126, 27.607697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540791, 31.276052, 27.693157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530973, -0.205995, 0.821969,
		-0.574672, -0.625327, -0.527939,
		0.622752, -0.752684, 0.213652,
		40.727615, 31.050247, 27.757254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843239, 31.049791, 27.621428>,  <40.291691, 31.577126, 27.607697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843239, 31.049791, 27.621428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.180050, 30.922709, 27.795805>,  <40.382137, 30.846458, 27.900431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.180050, 30.922709, 27.795805>,  <39.843239, 31.049791, 27.621428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180050, 30.922709, 27.795805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516639, -0.242540, 0.821133,
		-0.155143, -0.916645, -0.368364,
		0.842031, -0.317704, 0.435946,
		40.432659, 30.827396, 27.926588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532421, 30.638449, 28.094790>,  <39.843239, 31.049791, 27.621428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532421, 30.638449, 28.094790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905159, 30.691454, 28.229914>,  <40.128799, 30.723257, 28.310987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905159, 30.691454, 28.229914>,  <39.532421, 30.638449, 28.094790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905159, 30.691454, 28.229914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362533, 0.299966, 0.882377,
		0.015593, -0.944702, 0.327560,
		0.931840, 0.132510, 0.337809,
		40.184711, 30.731207, 28.331257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624115, 30.207237, 28.634022>,  <39.532421, 30.638449, 28.094790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624115, 30.207237, 28.634022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.909546, 30.483950, 28.678286>,  <40.080803, 30.649977, 28.704844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.909546, 30.483950, 28.678286>,  <39.624115, 30.207237, 28.634022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909546, 30.483950, 28.678286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165526, 0.012995, 0.986120,
		0.680743, -0.721989, 0.123781,
		0.713576, 0.691783, 0.110661,
		40.123619, 30.691484, 28.711483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803448, 29.986252, 29.215380>,  <39.624115, 30.207237, 28.634022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803448, 29.986252, 29.215380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.955227, 30.353743, 29.171631>,  <40.046295, 30.574236, 29.145382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.955227, 30.353743, 29.171631>,  <39.803448, 29.986252, 29.215380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955227, 30.353743, 29.171631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075663, 0.148631, 0.985994,
		0.922114, -0.365858, 0.125911,
		0.379448, 0.918725, -0.109373,
		40.069061, 30.629360, 29.138819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.984379, 34.157406, 25.346188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.704426, 34.391556, 25.182484>,  <42.536453, 34.532047, 25.084261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.704426, 34.391556, 25.182484>,  <42.984379, 34.157406, 25.346188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704426, 34.391556, 25.182484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578047, 0.127650, -0.805958,
		-0.419548, -0.800649, -0.427716,
		-0.699887, 0.585377, -0.409257,
		42.494461, 34.567169, 25.059706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972919, 33.926842, 24.675039>,  <42.984379, 34.157406, 25.346188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972919, 33.926842, 24.675039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.800137, 34.287453, 24.664694>,  <42.696468, 34.503819, 24.658485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.800137, 34.287453, 24.664694>,  <42.972919, 33.926842, 24.675039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800137, 34.287453, 24.664694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406655, 0.169087, -0.897798,
		-0.805012, -0.398329, -0.439648,
		-0.431957, 0.901523, -0.025865,
		42.670547, 34.557911, 24.656935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711533, 34.044907, 23.996931>,  <42.972919, 33.926842, 24.675039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711533, 34.044907, 23.996931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.756195, 34.423580, 24.117811>,  <42.782993, 34.650784, 24.190340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.756195, 34.423580, 24.117811>,  <42.711533, 34.044907, 23.996931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756195, 34.423580, 24.117811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638069, 0.164838, -0.752128,
		-0.761840, 0.276806, -0.585643,
		0.111657, 0.946682, 0.302201,
		42.789692, 34.707584, 24.208471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874084, 34.366299, 23.417324>,  <42.711533, 34.044907, 23.996931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874084, 34.366299, 23.417324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919456, 34.667671, 23.676392>,  <42.946678, 34.848495, 23.831833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919456, 34.667671, 23.676392>,  <42.874084, 34.366299, 23.417324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919456, 34.667671, 23.676392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646247, 0.439188, -0.624082,
		-0.754651, 0.489344, -0.437086,
		0.113428, 0.753430, 0.647671,
		42.953484, 34.893700, 23.870693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552258, 35.068001, 23.179441>,  <42.874084, 34.366299, 23.417324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552258, 35.068001, 23.179441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.852463, 35.149605, 23.430874>,  <43.032585, 35.198566, 23.581734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.852463, 35.149605, 23.430874>,  <42.552258, 35.068001, 23.179441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852463, 35.149605, 23.430874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558696, 0.312160, -0.768385,
		-0.352973, 0.927867, 0.120302,
		0.750513, 0.204007, 0.628579,
		43.077618, 35.210808, 23.619448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766190, 35.789104, 23.055035>,  <42.552258, 35.068001, 23.179441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766190, 35.789104, 23.055035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.067913, 35.581806, 23.216249>,  <43.248947, 35.457428, 23.312979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.067913, 35.581806, 23.216249>,  <42.766190, 35.789104, 23.055035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067913, 35.581806, 23.216249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642282, 0.455375, -0.616528,
		0.135980, 0.723916, 0.676354,
		0.754310, -0.518246, 0.403036,
		43.294205, 35.426331, 23.337160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324844, 36.276405, 23.016361>,  <42.766190, 35.789104, 23.055035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324844, 36.276405, 23.016361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.507938, 35.922989, 23.056023>,  <43.617794, 35.710938, 23.079821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.507938, 35.922989, 23.056023>,  <43.324844, 36.276405, 23.016361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507938, 35.922989, 23.056023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647334, 0.254747, -0.718375,
		0.609454, 0.393014, 0.688554,
		0.457738, -0.883541, 0.099155,
		43.645260, 35.657928, 23.085770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994579, 36.425098, 22.886890>,  <43.324844, 36.276405, 23.016361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994579, 36.425098, 22.886890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.967911, 36.032078, 22.817438>,  <43.951908, 35.796265, 22.775766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.967911, 36.032078, 22.817438>,  <43.994579, 36.425098, 22.886890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967911, 36.032078, 22.817438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618888, 0.095776, -0.779618,
		0.782645, -0.159437, 0.601703,
		-0.066671, -0.982551, -0.173632,
		43.947910, 35.737312, 22.765348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667622, 36.274712, 22.795338>,  <43.994579, 36.425098, 22.886890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667622, 36.274712, 22.795338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.454994, 35.965878, 22.656017>,  <44.327415, 35.780579, 22.572426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.454994, 35.965878, 22.656017>,  <44.667622, 36.274712, 22.795338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454994, 35.965878, 22.656017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599143, -0.052086, -0.798946,
		0.598714, -0.633379, 0.490278,
		-0.531572, -0.772087, -0.348300,
		44.295521, 35.734253, 22.551527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209667, 35.719677, 22.578110>,  <44.667622, 36.274712, 22.795338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209667, 35.719677, 22.578110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.873096, 35.633060, 22.380072>,  <44.671154, 35.581093, 22.261250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.873096, 35.633060, 22.380072>,  <45.209667, 35.719677, 22.578110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873096, 35.633060, 22.380072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509062, -0.010264, -0.860669,
		0.181286, -0.976220, 0.118868,
		-0.841422, -0.216539, -0.495096,
		44.620670, 35.568100, 22.231543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329853, 35.156445, 22.183918>,  <45.209667, 35.719677, 22.578110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329853, 35.156445, 22.183918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.007187, 35.292774, 21.990780>,  <44.813587, 35.374573, 21.874897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.007187, 35.292774, 21.990780>,  <45.329853, 35.156445, 22.183918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007187, 35.292774, 21.990780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523029, 0.031240, -0.851742,
		-0.275207, -0.939609, -0.203459,
		-0.806661, 0.340821, -0.482845,
		44.765190, 35.395020, 21.845926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286671, 34.780987, 21.616421>,  <45.329853, 35.156445, 22.183918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286671, 34.780987, 21.616421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.080498, 35.116440, 21.545965>,  <44.956795, 35.317711, 21.503693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.080498, 35.116440, 21.545965>,  <45.286671, 34.780987, 21.616421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080498, 35.116440, 21.545965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423064, 0.070284, -0.903370,
		-0.745215, -0.540145, -0.391022,
		-0.515433, 0.838632, -0.176139,
		44.925869, 35.368031, 21.493124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012676, 34.746017, 20.867533>,  <45.286671, 34.780987, 21.616421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012676, 34.746017, 20.867533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.021122, 35.130650, 20.977013>,  <45.026188, 35.361431, 21.042700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.021122, 35.130650, 20.977013>,  <45.012676, 34.746017, 20.867533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021122, 35.130650, 20.977013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258904, 0.259162, -0.930486,
		-0.965672, 0.090506, -0.243487,
		0.021112, 0.961584, 0.273698,
		45.027454, 35.419125, 21.059122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.650883, 35.057327, 20.351835>,  <45.012676, 34.746017, 20.867533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.650883, 35.057327, 20.351835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.896183, 35.340271, 20.492439>,  <45.043365, 35.510036, 20.576801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.896183, 35.340271, 20.492439>,  <44.650883, 35.057327, 20.351835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896183, 35.340271, 20.492439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165126, 0.320374, -0.932788,
		-0.772433, 0.630080, 0.079667,
		0.613254, 0.707361, 0.351510,
		45.080158, 35.552479, 20.597893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047569, 34.596649, 20.118153>,  <44.650883, 35.057327, 20.351835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047569, 34.596649, 20.118153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.932613, 34.270100, 19.917778>,  <43.863640, 34.074169, 19.797554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.932613, 34.270100, 19.917778>,  <44.047569, 34.596649, 20.118153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932613, 34.270100, 19.917778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348785, -0.397892, 0.848547,
		-0.892052, 0.418580, -0.170390,
		-0.287388, -0.816377, -0.500935,
		43.846397, 34.025185, 19.767498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318214, 34.503956, 20.277187>,  <44.047569, 34.596649, 20.118153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318214, 34.503956, 20.277187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.490330, 34.158512, 20.172096>,  <43.593601, 33.951244, 20.109041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.490330, 34.158512, 20.172096>,  <43.318214, 34.503956, 20.277187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490330, 34.158512, 20.172096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305996, -0.413364, 0.857611,
		-0.849244, -0.288629, -0.442128,
		0.430291, -0.863611, -0.262728,
		43.619415, 33.899429, 20.093277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092331, 34.084324, 20.662352>,  <43.318214, 34.503956, 20.277187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092331, 34.084324, 20.662352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.333817, 33.804111, 20.510149>,  <43.478706, 33.635983, 20.418827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.333817, 33.804111, 20.510149>,  <43.092331, 34.084324, 20.662352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333817, 33.804111, 20.510149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283746, -0.634867, 0.718632,
		-0.744997, -0.325879, -0.582050,
		0.603712, -0.700533, -0.380506,
		43.514931, 33.593952, 20.395998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683701, 33.536572, 20.584602>,  <43.092331, 34.084324, 20.662352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683701, 33.536572, 20.584602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.060684, 33.403973, 20.601942>,  <43.286877, 33.324413, 20.612347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.060684, 33.403973, 20.601942>,  <42.683701, 33.536572, 20.584602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060684, 33.403973, 20.601942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249515, -0.611165, 0.751146,
		-0.222506, -0.718742, -0.658712,
		0.942461, -0.331493, 0.043349,
		43.343422, 33.304523, 20.614946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673306, 32.826084, 20.933918>,  <42.683701, 33.536572, 20.584602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673306, 32.826084, 20.933918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.054626, 32.934952, 20.986275>,  <43.283421, 33.000275, 21.017689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.054626, 32.934952, 20.986275>,  <42.673306, 32.826084, 20.933918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054626, 32.934952, 20.986275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039730, -0.542651, 0.839018,
		0.299388, -0.794639, -0.528125,
		0.953304, 0.272174, 0.130892,
		43.340618, 33.016605, 21.025543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866837, 32.244404, 21.194540>,  <42.673306, 32.826084, 20.933918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866837, 32.244404, 21.194540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.144276, 32.518223, 21.284264>,  <43.310741, 32.682514, 21.338099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.144276, 32.518223, 21.284264>,  <42.866837, 32.244404, 21.194540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144276, 32.518223, 21.284264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002001, -0.309555, 0.950879,
		0.720355, -0.659981, -0.213338,
		0.693602, 0.684544, 0.224310,
		43.352356, 32.723587, 21.351557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409386, 31.886127, 21.387417>,  <42.866837, 32.244404, 21.194540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409386, 31.886127, 21.387417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449936, 32.242229, 21.565029>,  <43.474266, 32.455891, 21.671597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449936, 32.242229, 21.565029>,  <43.409386, 31.886127, 21.387417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449936, 32.242229, 21.565029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042644, -0.449811, 0.892105,
		0.993934, -0.071505, -0.083565,
		0.101378, 0.890257, 0.444033,
		43.480350, 32.509308, 21.698238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982864, 31.871790, 21.956402>,  <43.409386, 31.886127, 21.387417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982864, 31.871790, 21.956402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.700081, 32.150116, 22.007080>,  <43.530411, 32.317112, 22.037487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.700081, 32.150116, 22.007080>,  <43.982864, 31.871790, 21.956402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700081, 32.150116, 22.007080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209991, -0.377567, 0.901857,
		0.675360, 0.610972, 0.413040,
		-0.706960, 0.695813, 0.126695,
		43.487991, 32.358860, 22.045088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020176, 31.895046, 22.573107>,  <43.982864, 31.871790, 21.956402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020176, 31.895046, 22.573107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.676945, 32.092323, 22.515886>,  <43.471004, 32.210690, 22.481554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.676945, 32.092323, 22.515886>,  <44.020176, 31.895046, 22.573107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676945, 32.092323, 22.515886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244099, -0.146649, 0.958598,
		0.451797, 0.857469, 0.246224,
		-0.858077, 0.493194, -0.143052,
		43.419521, 32.240280, 22.472971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884987, 32.157681, 23.231972>,  <44.020176, 31.895046, 22.573107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884987, 32.157681, 23.231972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540493, 32.227589, 23.041086>,  <43.333797, 32.269531, 22.926556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540493, 32.227589, 23.041086>,  <43.884987, 32.157681, 23.231972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540493, 32.227589, 23.041086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504277, -0.177273, 0.845151,
		0.063108, 0.968520, 0.240805,
		-0.861233, 0.174768, -0.477214,
		43.282124, 32.280018, 22.897923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580368, 32.608421, 23.705635>,  <43.884987, 32.157681, 23.231972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580368, 32.608421, 23.705635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.295860, 32.426552, 23.491209>,  <43.125156, 32.317429, 23.362555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.295860, 32.426552, 23.491209>,  <43.580368, 32.608421, 23.705635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295860, 32.426552, 23.491209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523302, -0.166657, 0.835692,
		-0.469305, 0.874928, -0.119392,
		-0.711273, -0.454672, -0.536064,
		43.082478, 32.290150, 23.330389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957600, 32.810173, 23.943827>,  <43.580368, 32.608421, 23.705635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957600, 32.810173, 23.943827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.841515, 32.475113, 23.758734>,  <42.771862, 32.274078, 23.647678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.841515, 32.475113, 23.758734>,  <42.957600, 32.810173, 23.943827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841515, 32.475113, 23.758734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611101, -0.209892, 0.763217,
		-0.736432, 0.504271, -0.450975,
		-0.290212, -0.837649, -0.462732,
		42.754452, 32.223820, 23.619915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252125, 32.691216, 24.044611>,  <42.957600, 32.810173, 23.943827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252125, 32.691216, 24.044611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.394165, 32.326359, 23.962727>,  <42.479389, 32.107445, 23.913595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.394165, 32.326359, 23.962727>,  <42.252125, 32.691216, 24.044611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394165, 32.326359, 23.962727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595114, -0.389449, 0.702971,
		-0.720932, -0.127798, -0.681120,
		0.355100, -0.912139, -0.204712,
		42.500694, 32.052719, 23.901314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676506, 32.286716, 23.943466>,  <42.252125, 32.691216, 24.044611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676506, 32.286716, 23.943466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973885, 32.033207, 24.028904>,  <42.152313, 31.881102, 24.080168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973885, 32.033207, 24.028904>,  <41.676506, 32.286716, 23.943466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973885, 32.033207, 24.028904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604086, -0.499296, 0.621116,
		-0.286995, -0.590798, -0.754050,
		0.743447, -0.633768, 0.213597,
		42.196918, 31.843077, 24.092983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240349, 32.039436, 23.392248>,  <41.676506, 32.286716, 23.943466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240349, 32.039436, 23.392248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.871983, 32.032795, 23.236483>,  <40.650963, 32.028809, 23.143023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.871983, 32.032795, 23.236483>,  <41.240349, 32.039436, 23.392248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871983, 32.032795, 23.236483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367970, 0.292401, -0.882666,
		0.128520, -0.956152, -0.263166,
		-0.920913, -0.016603, -0.389414,
		40.595707, 32.027813, 23.119658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382473, 31.924725, 22.679325>,  <41.240349, 32.039436, 23.392248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382473, 31.924725, 22.679325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.006844, 32.060318, 22.656582>,  <40.781467, 32.141674, 22.642935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.006844, 32.060318, 22.656582>,  <41.382473, 31.924725, 22.679325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006844, 32.060318, 22.656582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188897, 0.370773, -0.909310,
		-0.287160, -0.864649, -0.412216,
		-0.939072, 0.338984, -0.056859,
		40.725121, 32.162014, 22.639524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164028, 31.810654, 21.941061>,  <41.382473, 31.924725, 22.679325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164028, 31.810654, 21.941061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.933258, 32.108131, 22.076160>,  <40.794796, 32.286617, 22.157221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.933258, 32.108131, 22.076160>,  <41.164028, 31.810654, 21.941061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933258, 32.108131, 22.076160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039848, 0.438640, -0.897779,
		-0.815821, -0.504496, -0.282699,
		-0.576929, 0.743692, 0.337749,
		40.760178, 32.331238, 22.177485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581333, 31.979824, 21.444746>,  <41.164028, 31.810654, 21.941061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581333, 31.979824, 21.444746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.622620, 32.322247, 21.647335>,  <40.647392, 32.527699, 21.768888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.622620, 32.322247, 21.647335>,  <40.581333, 31.979824, 21.444746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622620, 32.322247, 21.647335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211879, 0.478583, -0.852095,
		-0.971830, 0.195259, -0.131985,
		0.103213, 0.856057, 0.506472,
		40.653584, 32.579063, 21.799276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058296, 32.492569, 21.195812>,  <40.581333, 31.979824, 21.444746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058296, 32.492569, 21.195812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.328598, 32.745754, 21.346926>,  <40.490780, 32.897667, 21.437593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.328598, 32.745754, 21.346926>,  <40.058296, 32.492569, 21.195812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328598, 32.745754, 21.346926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015026, 0.500568, -0.865567,
		-0.736978, 0.590583, 0.328748,
		0.675750, 0.632964, 0.377781,
		40.531322, 32.935642, 21.460260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970856, 33.168076, 20.912466>,  <40.058296, 32.492569, 21.195812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970856, 33.168076, 20.912466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.345749, 33.209351, 21.045696>,  <40.570686, 33.234116, 21.125633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.345749, 33.209351, 21.045696>,  <39.970856, 33.168076, 20.912466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345749, 33.209351, 21.045696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246432, 0.479777, -0.842072,
		-0.246692, 0.871302, 0.424236,
		0.937238, 0.103187, 0.333074,
		40.626919, 33.240307, 21.145618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096893, 33.906834, 20.834887>,  <39.970856, 33.168076, 20.912466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096893, 33.906834, 20.834887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.452999, 33.728043, 20.869837>,  <40.666664, 33.620766, 20.890806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.452999, 33.728043, 20.869837>,  <40.096893, 33.906834, 20.834887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452999, 33.728043, 20.869837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274080, 0.372578, -0.886603,
		0.363741, 0.813260, 0.454202,
		0.890265, -0.446982, 0.087376,
		40.720078, 33.593948, 20.896049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238922, 34.609779, 21.145817>,  <40.096893, 33.906834, 20.834887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238922, 34.609779, 21.145817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.892654, 34.787624, 21.053785>,  <39.684895, 34.894329, 20.998568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.892654, 34.787624, 21.053785>,  <40.238922, 34.609779, 21.145817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892654, 34.787624, 21.053785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500600, -0.765491, 0.404257,
		0.003614, 0.465130, 0.885235,
		-0.865671, 0.444609, -0.230077,
		39.632954, 34.921005, 20.984762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887184, 34.725967, 21.742327>,  <40.238922, 34.609779, 21.145817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887184, 34.725967, 21.742327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.596863, 34.726669, 21.467167>,  <39.422668, 34.727089, 21.302071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.596863, 34.726669, 21.467167>,  <39.887184, 34.725967, 21.742327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596863, 34.726669, 21.467167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481190, -0.715922, 0.505877,
		-0.491597, 0.698178, 0.520461,
		-0.725802, 0.001753, -0.687901,
		39.379124, 34.727196, 21.260796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227818, 34.891418, 22.011003>,  <39.887184, 34.725967, 21.742327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227818, 34.891418, 22.011003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.131104, 34.672413, 21.690561>,  <39.073074, 34.541008, 21.498297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.131104, 34.672413, 21.690561>,  <39.227818, 34.891418, 22.011003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131104, 34.672413, 21.690561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561834, -0.594134, 0.575628,
		-0.791129, 0.589265, -0.163961,
		-0.241783, -0.547514, -0.801105,
		39.058567, 34.508160, 21.450230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473774, 34.918312, 21.932354>,  <39.227818, 34.891418, 22.011003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473774, 34.918312, 21.932354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571819, 34.588924, 21.727684>,  <38.630646, 34.391293, 21.604881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571819, 34.588924, 21.727684>,  <38.473774, 34.918312, 21.932354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571819, 34.588924, 21.727684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754097, -0.493635, 0.433199,
		-0.609310, 0.279672, -0.741974,
		0.245111, -0.823473, -0.511676,
		38.645351, 34.341881, 21.574181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768944, 34.702206, 21.713264>,  <38.473774, 34.918312, 21.932354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768944, 34.702206, 21.713264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.026344, 34.399414, 21.667845>,  <38.180782, 34.217739, 21.640593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.026344, 34.399414, 21.667845>,  <37.768944, 34.702206, 21.713264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026344, 34.399414, 21.667845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686620, -0.636412, 0.351471,
		-0.338321, -0.148205, -0.929287,
		0.643499, -0.756977, -0.113551,
		38.219395, 34.172321, 21.633780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387413, 34.238575, 21.368963>,  <37.768944, 34.702206, 21.713264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387413, 34.238575, 21.368963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701675, 34.038685, 21.514847>,  <37.890232, 33.918751, 21.602377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701675, 34.038685, 21.514847>,  <37.387413, 34.238575, 21.368963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701675, 34.038685, 21.514847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600521, -0.757715, 0.255426,
		0.148702, -0.419694, -0.895402,
		0.785660, -0.499725, 0.364709,
		37.937374, 33.888767, 21.624260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140907, 33.471691, 21.280453>,  <37.387413, 34.238575, 21.368963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140907, 33.471691, 21.280453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.445095, 33.402477, 21.530813>,  <37.627605, 33.360950, 21.681028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.445095, 33.402477, 21.530813>,  <37.140907, 33.471691, 21.280453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445095, 33.402477, 21.530813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395342, -0.888004, 0.234847,
		0.515166, -0.426038, -0.743704,
		0.760466, -0.173033, 0.625900,
		37.673233, 33.350567, 21.718584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.520233, 38.941734, 21.214678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.522156, 38.548622, 21.288553>,  <43.523308, 38.312756, 21.332878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.522156, 38.548622, 21.288553>,  <43.520233, 38.941734, 21.214678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522156, 38.548622, 21.288553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814787, 0.103225, 0.570496,
		-0.579740, -0.153226, -0.800265,
		0.004808, -0.982785, 0.184690,
		43.523598, 38.253788, 21.343960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879719, 38.673393, 21.094141>,  <43.520233, 38.941734, 21.214678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879719, 38.673393, 21.094141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.028603, 38.391720, 21.335997>,  <43.117931, 38.222717, 21.481110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.028603, 38.391720, 21.335997>,  <42.879719, 38.673393, 21.094141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028603, 38.391720, 21.335997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879554, -0.059580, 0.472054,
		-0.296388, -0.707515, -0.641542,
		0.372208, -0.704182, 0.604639,
		43.140266, 38.180466, 21.517389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279610, 38.247955, 21.295158>,  <42.879719, 38.673393, 21.094141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279610, 38.247955, 21.295158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.566418, 38.172016, 21.563440>,  <42.738503, 38.126453, 21.724409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.566418, 38.172016, 21.563440>,  <42.279610, 38.247955, 21.295158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566418, 38.172016, 21.563440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692279, -0.081475, 0.717016,
		-0.081475, -0.978428, -0.189845,
		-0.717016, 0.189845, -0.670706,
		42.781521, 38.115063, 21.764652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081013, 37.561592, 21.664513>,  <42.279610, 38.247955, 21.295158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081013, 37.561592, 21.664513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.317730, 37.755165, 21.922377>,  <42.459763, 37.871311, 22.077095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.317730, 37.755165, 21.922377>,  <42.081013, 37.561592, 21.664513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317730, 37.755165, 21.922377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736794, 0.000347, 0.676117,
		0.326973, -0.875104, 0.356766,
		0.591797, 0.483935, 0.644658,
		42.495270, 37.900345, 22.115774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834309, 37.260525, 22.237825>,  <42.081013, 37.561592, 21.664513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834309, 37.260525, 22.237825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.046627, 37.564953, 22.386971>,  <42.174019, 37.747608, 22.476458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.046627, 37.564953, 22.386971>,  <41.834309, 37.260525, 22.237825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046627, 37.564953, 22.386971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734869, 0.194164, 0.649821,
		0.422164, -0.618927, 0.662350,
		0.530796, 0.761072, 0.372861,
		42.205868, 37.793274, 22.498829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015350, 37.156448, 22.981302>,  <41.834309, 37.260525, 22.237825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015350, 37.156448, 22.981302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.036858, 37.550468, 22.915827>,  <42.049763, 37.786880, 22.876541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.036858, 37.550468, 22.915827>,  <42.015350, 37.156448, 22.981302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036858, 37.550468, 22.915827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518988, 0.167615, 0.838187,
		0.853089, 0.039880, 0.520239,
		0.053773, 0.985046, -0.163688,
		42.052990, 37.845982, 22.866720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378887, 37.438881, 23.592075>,  <42.015350, 37.156448, 22.981302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378887, 37.438881, 23.592075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.168461, 37.723667, 23.406017>,  <42.042206, 37.894539, 23.294382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.168461, 37.723667, 23.406017>,  <42.378887, 37.438881, 23.592075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168461, 37.723667, 23.406017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506715, 0.176855, 0.843778,
		0.683004, 0.679579, 0.267727,
		-0.526065, 0.711966, -0.465146,
		42.010643, 37.937256, 23.266474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244656, 37.979248, 24.081535>,  <42.378887, 37.438881, 23.592075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244656, 37.979248, 24.081535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.963047, 38.062904, 23.810061>,  <41.794083, 38.113098, 23.647175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.963047, 38.062904, 23.810061>,  <42.244656, 37.979248, 24.081535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963047, 38.062904, 23.810061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577589, 0.387424, 0.718536,
		0.413215, 0.897866, -0.151956,
		-0.704020, 0.209142, -0.678687,
		41.751842, 38.125648, 23.606455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972359, 38.610149, 24.187471>,  <42.244656, 37.979248, 24.081535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972359, 38.610149, 24.187471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.685635, 38.433235, 23.971853>,  <41.513599, 38.327087, 23.842484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.685635, 38.433235, 23.971853>,  <41.972359, 38.610149, 24.187471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685635, 38.433235, 23.971853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691058, 0.347690, 0.633680,
		-0.092844, 0.826740, -0.554870,
		-0.716811, -0.442281, -0.539044,
		41.470592, 38.300552, 23.810141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395210, 38.966053, 24.358007>,  <41.972359, 38.610149, 24.187471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395210, 38.966053, 24.358007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.243465, 38.646145, 24.171911>,  <41.152416, 38.454201, 24.060253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.243465, 38.646145, 24.171911>,  <41.395210, 38.966053, 24.358007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243465, 38.646145, 24.171911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880921, 0.158438, 0.445956,
		-0.282952, 0.579018, -0.764642,
		-0.379364, -0.799772, -0.465238,
		41.129658, 38.406212, 24.032339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701958, 39.185955, 24.132139>,  <41.395210, 38.966053, 24.358007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701958, 39.185955, 24.132139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.708202, 38.786015, 24.134954>,  <40.711948, 38.546051, 24.136644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.708202, 38.786015, 24.134954>,  <40.701958, 39.185955, 24.132139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708202, 38.786015, 24.134954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833892, -0.009136, 0.551853,
		-0.551708, -0.014484, -0.833912,
		0.015612, -0.999854, 0.007038,
		40.712887, 38.486057, 24.137066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927700, 38.826626, 23.952190>,  <40.701958, 39.185955, 24.132139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927700, 38.826626, 23.952190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.181473, 38.598457, 24.160847>,  <40.333736, 38.461555, 24.286039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.181473, 38.598457, 24.160847>,  <39.927700, 38.826626, 23.952190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181473, 38.598457, 24.160847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652918, -0.034245, 0.756654,
		-0.413751, -0.820636, -0.394166,
		0.634436, -0.570424, 0.521639,
		40.371803, 38.427330, 24.317339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249893, 38.616749, 23.677090>,  <39.927700, 38.826626, 23.952190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249893, 38.616749, 23.677090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943913, 38.812817, 23.509954>,  <38.760326, 38.930458, 23.409674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.943913, 38.812817, 23.509954>,  <39.249893, 38.616749, 23.677090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943913, 38.812817, 23.509954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490208, 0.022266, -0.871321,
		-0.417794, -0.871341, -0.257319,
		-0.764947, 0.490172, -0.417836,
		38.714428, 38.959869, 23.384604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169750, 38.306343, 23.021280>,  <39.249893, 38.616749, 23.677090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169750, 38.306343, 23.021280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.020748, 38.675999, 22.987316>,  <38.931347, 38.897793, 22.966938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.020748, 38.675999, 22.987316>,  <39.169750, 38.306343, 23.021280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020748, 38.675999, 22.987316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427425, 0.089632, -0.899597,
		-0.823740, -0.371399, -0.428387,
		-0.372507, 0.924137, -0.084912,
		38.908997, 38.953239, 22.961843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748852, 38.369816, 22.394617>,  <39.169750, 38.306343, 23.021280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748852, 38.369816, 22.394617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.819031, 38.755413, 22.474556>,  <38.861137, 38.986771, 22.522520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.819031, 38.755413, 22.474556>,  <38.748852, 38.369816, 22.394617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819031, 38.755413, 22.474556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238472, 0.155338, -0.958645,
		-0.955170, 0.215850, -0.202631,
		0.175448, 0.963991, 0.199848,
		38.871666, 39.044609, 22.534510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371593, 38.768295, 21.955597>,  <38.748852, 38.369816, 22.394617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371593, 38.768295, 21.955597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.682304, 38.998741, 22.057358>,  <38.868729, 39.137009, 22.118414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.682304, 38.998741, 22.057358>,  <38.371593, 38.768295, 21.955597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682304, 38.998741, 22.057358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252698, 0.084891, -0.963814,
		-0.576859, 0.812952, -0.079640,
		0.776774, 0.576110, 0.254401,
		38.915337, 39.171574, 22.133678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410053, 39.096436, 21.364672>,  <38.371593, 38.768295, 21.955597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410053, 39.096436, 21.364672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747044, 39.223675, 21.538586>,  <38.949238, 39.300018, 21.642935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747044, 39.223675, 21.538586>,  <38.410053, 39.096436, 21.364672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747044, 39.223675, 21.538586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443548, 0.048497, -0.894937,
		-0.305768, 0.946815, -0.100236,
		0.842479, 0.318102, 0.434787,
		38.999786, 39.319107, 21.669022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629784, 39.704681, 20.992933>,  <38.410053, 39.096436, 21.364672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629784, 39.704681, 20.992933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.947384, 39.564995, 21.191978>,  <39.137943, 39.481182, 21.311405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.947384, 39.564995, 21.191978>,  <38.629784, 39.704681, 20.992933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947384, 39.564995, 21.191978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525362, -0.017695, -0.850695,
		0.305882, 0.936875, 0.169415,
		0.793997, -0.349216, 0.497611,
		39.185581, 39.460232, 21.341261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106583, 40.139141, 20.871689>,  <38.629784, 39.704681, 20.992933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106583, 40.139141, 20.871689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.316360, 39.812599, 20.968449>,  <39.442226, 39.616673, 21.026505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.316360, 39.812599, 20.968449>,  <39.106583, 40.139141, 20.871689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316360, 39.812599, 20.968449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462997, 0.035002, -0.885669,
		0.714556, 0.576484, 0.396328,
		0.524446, -0.816358, 0.241899,
		39.473694, 39.567692, 21.041018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805630, 40.302662, 20.690567>,  <39.106583, 40.139141, 20.871689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805630, 40.302662, 20.690567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807884, 39.903206, 20.711329>,  <39.809235, 39.663532, 20.723785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807884, 39.903206, 20.711329>,  <39.805630, 40.302662, 20.690567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807884, 39.903206, 20.711329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468275, -0.043228, -0.882525,
		0.883565, 0.029277, 0.467393,
		0.005633, -0.998636, 0.051904,
		39.809574, 39.603615, 20.726900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500946, 40.110474, 20.458334>,  <39.805630, 40.302662, 20.690567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500946, 40.110474, 20.458334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.288853, 39.772064, 20.436090>,  <40.161594, 39.569019, 20.422745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.288853, 39.772064, 20.436090>,  <40.500946, 40.110474, 20.458334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288853, 39.772064, 20.436090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529818, -0.279422, -0.800760,
		0.661924, -0.454054, 0.596398,
		-0.530235, -0.846025, -0.055610,
		40.129784, 39.518257, 20.419407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970367, 39.669991, 20.249243>,  <40.500946, 40.110474, 20.458334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970367, 39.669991, 20.249243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.623878, 39.506195, 20.134712>,  <40.415985, 39.407917, 20.065994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.623878, 39.506195, 20.134712>,  <40.970367, 39.669991, 20.249243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623878, 39.506195, 20.134712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401698, -0.229918, -0.886440,
		0.297155, -0.882869, 0.363650,
		-0.866220, -0.409487, -0.286326,
		40.364014, 39.383350, 20.048815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165741, 39.049709, 19.876286>,  <40.970367, 39.669991, 20.249243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165741, 39.049709, 19.876286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.800297, 39.157661, 19.754637>,  <40.581032, 39.222431, 19.681648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.800297, 39.157661, 19.754637>,  <41.165741, 39.049709, 19.876286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800297, 39.157661, 19.754637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278892, -0.128349, -0.951707,
		-0.295879, -0.954302, 0.041993,
		-0.913605, 0.269878, -0.304123,
		40.526215, 39.238625, 19.663401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097496, 38.580914, 19.261944>,  <41.165741, 39.049709, 19.876286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097496, 38.580914, 19.261944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.817616, 38.862190, 19.211451>,  <40.649689, 39.030956, 19.181154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.817616, 38.862190, 19.211451>,  <41.097496, 38.580914, 19.261944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817616, 38.862190, 19.211451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008084, -0.168884, -0.985603,
		-0.714390, -0.690648, 0.112483,
		-0.699701, 0.703195, -0.126232,
		40.607704, 39.073151, 19.173580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482681, 38.468884, 18.977716>,  <41.097496, 38.580914, 19.261944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482681, 38.468884, 18.977716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.588306, 38.831436, 18.845814>,  <40.651684, 39.048969, 18.766672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.588306, 38.831436, 18.845814>,  <40.482681, 38.468884, 18.977716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588306, 38.831436, 18.845814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125251, -0.371221, -0.920058,
		-0.956337, 0.201655, -0.211553,
		0.264067, 0.906383, -0.329755,
		40.667526, 39.103352, 18.746887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508804, 37.756287, 18.755554>,  <40.482681, 38.468884, 18.977716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508804, 37.756287, 18.755554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.292057, 37.470127, 18.579105>,  <40.162010, 37.298431, 18.473236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.292057, 37.470127, 18.579105>,  <40.508804, 37.756287, 18.755554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292057, 37.470127, 18.579105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015347, -0.516343, 0.856244,
		-0.840324, 0.470741, 0.268810,
		-0.541867, -0.715397, -0.441120,
		40.129498, 37.255508, 18.446770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884861, 37.728390, 19.044744>,  <40.508804, 37.756287, 18.755554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884861, 37.728390, 19.044744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.903183, 37.360344, 18.889160>,  <39.914177, 37.139515, 18.795809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.903183, 37.360344, 18.889160>,  <39.884861, 37.728390, 19.044744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903183, 37.360344, 18.889160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304465, -0.383702, 0.871822,
		-0.951422, 0.078492, -0.297718,
		0.045804, -0.920115, -0.388960,
		39.916924, 37.084309, 18.772472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279675, 37.388725, 19.344732>,  <39.884861, 37.728390, 19.044744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279675, 37.388725, 19.344732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.525394, 37.110409, 19.195864>,  <39.672825, 36.943420, 19.106543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.525394, 37.110409, 19.195864>,  <39.279675, 37.388725, 19.344732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525394, 37.110409, 19.195864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301538, -0.642855, 0.704139,
		-0.729188, -0.320326, -0.604712,
		0.614297, -0.695793, -0.372172,
		39.709682, 36.901672, 19.084213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825470, 36.810032, 19.253052>,  <39.279675, 37.388725, 19.344732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825470, 36.810032, 19.253052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.197166, 36.665306, 19.283007>,  <39.420185, 36.578472, 19.300980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.197166, 36.665306, 19.283007>,  <38.825470, 36.810032, 19.253052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197166, 36.665306, 19.283007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327554, -0.712916, 0.620047,
		-0.170950, -0.600702, -0.780982,
		0.929238, -0.361811, 0.074889,
		39.475937, 36.556763, 19.305473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828094, 36.057217, 19.115767>,  <38.825470, 36.810032, 19.253052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828094, 36.057217, 19.115767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.169014, 36.101303, 19.320290>,  <39.373566, 36.127754, 19.443003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.169014, 36.101303, 19.320290>,  <38.828094, 36.057217, 19.115767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169014, 36.101303, 19.320290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274020, -0.738576, 0.615969,
		0.445528, -0.665100, -0.599289,
		0.852302, 0.110214, 0.511307,
		39.424706, 36.134369, 19.473682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115910, 35.391594, 19.148722>,  <38.828094, 36.057217, 19.115767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115910, 35.391594, 19.148722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319191, 35.576260, 19.439539>,  <39.441158, 35.687057, 19.614029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319191, 35.576260, 19.439539>,  <39.115910, 35.391594, 19.148722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319191, 35.576260, 19.439539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093703, -0.809536, 0.579544,
		0.856124, -0.362653, -0.368151,
		0.508205, 0.461664, 0.727045,
		39.471653, 35.714760, 19.657652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596432, 34.954426, 19.445677>,  <39.115910, 35.391594, 19.148722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596432, 34.954426, 19.445677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539928, 35.213058, 19.745537>,  <39.506027, 35.368240, 19.925453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539928, 35.213058, 19.745537>,  <39.596432, 34.954426, 19.445677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539928, 35.213058, 19.745537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187918, -0.760987, 0.620955,
		0.971973, -0.053155, 0.229003,
		-0.141262, 0.646586, 0.749648,
		39.497551, 35.407036, 19.970430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006248, 34.733559, 20.000141>,  <39.596432, 34.954426, 19.445677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006248, 34.733559, 20.000141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688541, 34.943207, 20.123068>,  <39.497917, 35.068996, 20.196823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688541, 34.943207, 20.123068>,  <40.006248, 34.733559, 20.000141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688541, 34.943207, 20.123068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137420, -0.647675, 0.749422,
		0.591824, 0.553010, 0.586450,
		-0.794267, 0.524116, 0.307315,
		39.450260, 35.100441, 20.215263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547497, 34.373817, 20.493031>,  <40.006248, 34.733559, 20.000141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547497, 34.373817, 20.493031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.770813, 34.041962, 20.492191>,  <40.904804, 33.842846, 20.491688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.770813, 34.041962, 20.492191>,  <40.547497, 34.373817, 20.493031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770813, 34.041962, 20.492191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412510, 0.279783, -0.866924,
		0.719825, 0.483128, 0.498436,
		0.558289, -0.829644, -0.002099,
		40.938301, 33.793068, 20.491562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297501, 34.639996, 20.356911>,  <40.547497, 34.373817, 20.493031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297501, 34.639996, 20.356911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.291115, 34.249630, 20.269876>,  <41.287281, 34.015411, 20.217657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.291115, 34.249630, 20.269876>,  <41.297501, 34.639996, 20.356911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291115, 34.249630, 20.269876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659565, 0.153271, -0.735855,
		0.751478, -0.155260, 0.641230,
		-0.015967, -0.975911, -0.217583,
		41.286324, 33.956856, 20.204601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916317, 34.551399, 20.207188>,  <41.297501, 34.639996, 20.356911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916317, 34.551399, 20.207188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.770092, 34.210384, 20.057762>,  <41.682358, 34.005775, 19.968107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.770092, 34.210384, 20.057762>,  <41.916317, 34.551399, 20.207188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770092, 34.210384, 20.057762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574882, 0.108846, -0.810965,
		0.732037, -0.511211, 0.450318,
		-0.365558, -0.852535, -0.373565,
		41.660423, 33.954624, 19.945692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541954, 34.107304, 20.032623>,  <41.916317, 34.551399, 20.207188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541954, 34.107304, 20.032623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.232655, 34.008602, 19.798971>,  <42.047077, 33.949383, 19.658781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.232655, 34.008602, 19.798971>,  <42.541954, 34.107304, 20.032623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232655, 34.008602, 19.798971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536869, 0.235453, -0.810144,
		0.337437, -0.940041, -0.049591,
		-0.773245, -0.246749, -0.584129,
		42.000683, 33.934578, 19.623732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794819, 33.633766, 19.481344>,  <42.541954, 34.107304, 20.032623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794819, 33.633766, 19.481344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.447674, 33.778442, 19.345110>,  <42.239388, 33.865250, 19.263369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.447674, 33.778442, 19.345110>,  <42.794819, 33.633766, 19.481344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447674, 33.778442, 19.345110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416232, 0.155065, -0.895939,
		-0.271244, -0.919310, -0.285123,
		-0.867858, 0.361695, -0.340586,
		42.187317, 33.886951, 19.242933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695957, 33.361710, 18.881706>,  <42.794819, 33.633766, 19.481344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695957, 33.361710, 18.881706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.461514, 33.684654, 18.854479>,  <42.320847, 33.878422, 18.838142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.461514, 33.684654, 18.854479>,  <42.695957, 33.361710, 18.881706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461514, 33.684654, 18.854479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327670, 0.159359, -0.931256,
		-0.741017, -0.568123, -0.357952,
		-0.586111, 0.807367, -0.068069,
		42.285679, 33.926865, 18.834059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384274, 33.427879, 18.161821>,  <42.695957, 33.361710, 18.881706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384274, 33.427879, 18.161821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.382729, 33.798393, 18.312540>,  <42.381802, 34.020702, 18.402971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.382729, 33.798393, 18.312540>,  <42.384274, 33.427879, 18.161821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382729, 33.798393, 18.312540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427965, 0.342080, -0.836557,
		-0.903787, 0.158021, -0.397741,
		-0.003866, 0.926289, 0.376795,
		42.381569, 34.076279, 18.425579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311684, 33.824532, 17.581829>,  <42.384274, 33.427879, 18.161821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311684, 33.824532, 17.581829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.464405, 34.059563, 17.867199>,  <42.556038, 34.200581, 18.038422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.464405, 34.059563, 17.867199>,  <42.311684, 33.824532, 17.581829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464405, 34.059563, 17.867199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642413, 0.386240, -0.661909,
		-0.664479, 0.711031, -0.230004,
		0.381802, 0.587582, 0.713424,
		42.578945, 34.235836, 18.081226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465767, 34.310623, 17.220211>,  <42.311684, 33.824532, 17.581829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465767, 34.310623, 17.220211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.654140, 34.401085, 17.561285>,  <42.767166, 34.455360, 17.765930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.654140, 34.401085, 17.561285>,  <42.465767, 34.310623, 17.220211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654140, 34.401085, 17.561285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763355, 0.380006, -0.522383,
		-0.442164, 0.896912, 0.006324,
		0.470935, 0.226152, 0.852687,
		42.795422, 34.468929, 17.817091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.472698, 31.504173, 32.301987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872341, 31.501226, 32.318607>,  <36.112129, 31.499458, 32.328579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872341, 31.501226, 32.318607>,  <35.472698, 31.504173, 32.301987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872341, 31.501226, 32.318607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038822, 0.546300, -0.836690,
		-0.016535, 0.837557, 0.546099,
		0.999109, -0.007366, 0.041549,
		36.172073, 31.499016, 32.331074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597263, 32.186710, 31.961231>,  <35.472698, 31.504173, 32.301987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597263, 32.186710, 31.961231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955505, 32.009502, 31.977360>,  <36.170452, 31.903177, 31.987038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955505, 32.009502, 31.977360>,  <35.597263, 32.186710, 31.961231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955505, 32.009502, 31.977360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212153, 0.345696, -0.914049,
		0.391002, 0.827181, 0.403595,
		0.895605, -0.443019, 0.040321,
		36.224186, 31.876596, 31.989456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164017, 32.724926, 31.800114>,  <35.597263, 32.186710, 31.961231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164017, 32.724926, 31.800114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293396, 32.357407, 31.709618>,  <36.371025, 32.136894, 31.655321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293396, 32.357407, 31.709618>,  <36.164017, 32.724926, 31.800114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293396, 32.357407, 31.709618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172601, 0.292367, -0.940601,
		0.930371, 0.265186, 0.253151,
		0.323447, -0.918802, -0.226238,
		36.390430, 32.081764, 31.641747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601585, 32.813004, 31.242954>,  <36.164017, 32.724926, 31.800114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601585, 32.813004, 31.242954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497433, 32.429966, 31.193611>,  <36.434940, 32.200142, 31.164005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497433, 32.429966, 31.193611>,  <36.601585, 32.813004, 31.242954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497433, 32.429966, 31.193611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169778, 0.080361, -0.982200,
		0.950461, -0.276691, 0.141653,
		-0.260383, -0.957593, -0.123356,
		36.419319, 32.142689, 31.156605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086372, 32.631561, 30.891817>,  <36.601585, 32.813004, 31.242954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086372, 32.631561, 30.891817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823956, 32.341469, 30.808241>,  <36.666508, 32.167416, 30.758095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823956, 32.341469, 30.808241>,  <37.086372, 32.631561, 30.891817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823956, 32.341469, 30.808241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209329, 0.091136, -0.973589,
		0.725116, -0.682450, 0.092023,
		-0.656039, -0.725229, -0.208941,
		36.627144, 32.123901, 30.745558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516190, 32.204460, 30.428831>,  <37.086372, 32.631561, 30.891817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516190, 32.204460, 30.428831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126328, 32.127331, 30.383472>,  <36.892410, 32.081055, 30.356256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126328, 32.127331, 30.383472>,  <37.516190, 32.204460, 30.428831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126328, 32.127331, 30.383472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143471, -0.149908, -0.978235,
		0.171629, -0.969715, 0.173774,
		-0.974658, -0.192825, -0.113398,
		36.833931, 32.069485, 30.349453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486683, 31.555212, 30.247953>,  <37.516190, 32.204460, 30.428831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486683, 31.555212, 30.247953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114819, 31.646374, 30.132172>,  <36.891701, 31.701071, 30.062702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114819, 31.646374, 30.132172>,  <37.486683, 31.555212, 30.247953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114819, 31.646374, 30.132172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199505, -0.349065, -0.915615,
		-0.309707, -0.908963, 0.279046,
		-0.929666, 0.227901, -0.289451,
		36.835918, 31.714745, 30.045336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238037, 30.954666, 29.859816>,  <37.486683, 31.555212, 30.247953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238037, 30.954666, 29.859816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040131, 31.273827, 29.722086>,  <36.921387, 31.465322, 29.639448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040131, 31.273827, 29.722086>,  <37.238037, 30.954666, 29.859816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040131, 31.273827, 29.722086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179053, -0.294118, -0.938847,
		-0.850381, -0.526160, 0.002652,
		-0.494764, 0.797903, -0.344324,
		36.891701, 31.513197, 29.618790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999443, 30.581644, 29.268221>,  <37.238037, 30.954666, 29.859816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999443, 30.581644, 29.268221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924881, 30.972178, 29.224350>,  <36.880146, 31.206497, 29.198029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924881, 30.972178, 29.224350>,  <36.999443, 30.581644, 29.268221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924881, 30.972178, 29.224350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100870, -0.092025, -0.990634,
		-0.977282, -0.195718, -0.081329,
		-0.186401, 0.976333, -0.109677,
		36.868961, 31.265078, 29.191446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483906, 30.669121, 28.707499>,  <36.999443, 30.581644, 29.268221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483906, 30.669121, 28.707499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662853, 31.026720, 28.717525>,  <36.770222, 31.241280, 28.723541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662853, 31.026720, 28.717525>,  <36.483906, 30.669121, 28.707499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662853, 31.026720, 28.717525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181944, -0.063533, -0.981254,
		-0.875648, 0.443541, -0.191080,
		0.447367, 0.893999, 0.025067,
		36.797062, 31.294920, 28.725046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118637, 31.095575, 28.128487>,  <36.483906, 30.669121, 28.707499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118637, 31.095575, 28.128487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490654, 31.206772, 28.224604>,  <36.713863, 31.273489, 28.282274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490654, 31.206772, 28.224604>,  <36.118637, 31.095575, 28.128487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490654, 31.206772, 28.224604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267732, -0.064774, -0.961314,
		-0.251670, 0.958398, -0.134669,
		0.930044, 0.277989, 0.240292,
		36.769669, 31.290169, 28.296692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289146, 31.410151, 27.562006>,  <36.118637, 31.095575, 28.128487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289146, 31.410151, 27.562006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650753, 31.330969, 27.713572>,  <36.867718, 31.283461, 27.804510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650753, 31.330969, 27.713572>,  <36.289146, 31.410151, 27.562006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650753, 31.330969, 27.713572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381591, -0.025969, -0.923966,
		0.192742, 0.979867, 0.052061,
		0.904013, -0.197953, 0.378914,
		36.921955, 31.271584, 27.827246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132309, 32.183716, 27.498028>,  <36.289146, 31.410151, 27.562006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132309, 32.183716, 27.498028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811012, 32.219570, 27.262482>,  <35.618233, 32.241081, 27.121153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811012, 32.219570, 27.262482>,  <36.132309, 32.183716, 27.498028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811012, 32.219570, 27.262482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523140, 0.366564, 0.769386,
		0.284820, 0.926065, -0.247550,
		-0.803245, 0.089634, -0.588867,
		35.570038, 32.246460, 27.085821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888145, 32.812237, 27.649462>,  <36.132309, 32.183716, 27.498028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888145, 32.812237, 27.649462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596577, 32.617687, 27.456749>,  <35.421635, 32.500957, 27.341122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596577, 32.617687, 27.456749>,  <35.888145, 32.812237, 27.649462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596577, 32.617687, 27.456749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638327, 0.228532, 0.735059,
		-0.247409, 0.843336, -0.477047,
		-0.728922, -0.486372, -0.481783,
		35.377899, 32.471775, 27.312214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278591, 33.280495, 27.511948>,  <35.888145, 32.812237, 27.649462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278591, 33.280495, 27.511948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134739, 32.908184, 27.485657>,  <35.048428, 32.684799, 27.469883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134739, 32.908184, 27.485657>,  <35.278591, 33.280495, 27.511948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134739, 32.908184, 27.485657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742151, 0.242635, 0.624773,
		-0.565576, 0.273469, -0.778035,
		-0.359634, -0.930776, -0.065727,
		35.026848, 32.628952, 27.465939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509632, 33.339344, 27.390947>,  <35.278591, 33.280495, 27.511948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509632, 33.339344, 27.390947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573158, 32.981190, 27.557352>,  <34.611275, 32.766296, 27.657194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573158, 32.981190, 27.557352>,  <34.509632, 33.339344, 27.390947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573158, 32.981190, 27.557352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681895, 0.205245, 0.702064,
		-0.714001, -0.395172, -0.577963,
		0.158812, -0.895385, 0.416011,
		34.620800, 32.712574, 27.682156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851318, 33.131210, 27.486116>,  <34.509632, 33.339344, 27.390947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851318, 33.131210, 27.486116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086491, 32.926441, 27.736643>,  <34.227592, 32.803577, 27.886959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086491, 32.926441, 27.736643>,  <33.851318, 33.131210, 27.486116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086491, 32.926441, 27.736643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667513, 0.130308, 0.733107,
		-0.456911, -0.849089, -0.265106,
		0.587927, -0.511926, 0.626317,
		34.262871, 32.772861, 27.924538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404968, 32.875183, 27.913763>,  <33.851318, 33.131210, 27.486116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404968, 32.875183, 27.913763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736057, 32.818840, 28.131031>,  <33.934711, 32.785034, 28.261391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736057, 32.818840, 28.131031>,  <33.404968, 32.875183, 27.913763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736057, 32.818840, 28.131031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534101, 0.099068, 0.839596,
		-0.172079, -0.985060, 0.006765,
		0.827723, -0.140864, 0.543169,
		33.984375, 32.776581, 28.293982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033417, 32.550156, 28.562092>,  <33.404968, 32.875183, 27.913763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033417, 32.550156, 28.562092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404381, 32.673290, 28.647087>,  <33.626957, 32.747173, 28.698084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404381, 32.673290, 28.647087>,  <33.033417, 32.550156, 28.562092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404381, 32.673290, 28.647087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259887, 0.121723, 0.957936,
		0.269024, -0.943620, 0.192890,
		0.927407, 0.307838, 0.212488,
		33.682602, 32.765640, 28.710833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327499, 32.156513, 29.141317>,  <33.033417, 32.550156, 28.562092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327499, 32.156513, 29.141317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518330, 32.507710, 29.157021>,  <33.632828, 32.718426, 29.166443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518330, 32.507710, 29.157021>,  <33.327499, 32.156513, 29.141317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518330, 32.507710, 29.157021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165482, 0.045870, 0.985146,
		0.863144, -0.476482, 0.167174,
		0.477072, 0.877987, 0.039257,
		33.661453, 32.771107, 29.168798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827095, 32.050983, 29.724297>,  <33.327499, 32.156513, 29.141317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827095, 32.050983, 29.724297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779644, 32.442879, 29.659746>,  <33.751175, 32.678017, 29.621016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779644, 32.442879, 29.659746>,  <33.827095, 32.050983, 29.724297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779644, 32.442879, 29.659746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274965, 0.123754, 0.953457,
		0.954108, 0.157478, 0.254713,
		-0.118627, 0.979737, -0.161375,
		33.744057, 32.736801, 29.611334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085194, 32.280201, 30.277309>,  <33.827095, 32.050983, 29.724297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085194, 32.280201, 30.277309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.853012, 32.569504, 30.127653>,  <33.713703, 32.743084, 30.037859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.853012, 32.569504, 30.127653>,  <34.085194, 32.280201, 30.277309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853012, 32.569504, 30.127653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422159, 0.125620, 0.897776,
		0.696319, 0.679061, 0.232412,
		-0.580449, 0.723254, -0.374143,
		33.678879, 32.786480, 30.015409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099403, 32.799526, 30.791214>,  <34.085194, 32.280201, 30.277309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099403, 32.799526, 30.791214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780018, 32.898384, 30.571627>,  <33.588387, 32.957699, 30.439875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780018, 32.898384, 30.571627>,  <34.099403, 32.799526, 30.791214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780018, 32.898384, 30.571627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540420, 0.107625, 0.834484,
		0.265322, 0.962983, 0.047628,
		-0.798468, 0.247146, -0.548970,
		33.540478, 32.972527, 30.406935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756172, 33.346687, 31.203690>,  <34.099403, 32.799526, 30.791214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756172, 33.346687, 31.203690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484970, 33.241688, 30.929052>,  <33.322250, 33.178688, 30.764271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484970, 33.241688, 30.929052>,  <33.756172, 33.346687, 31.203690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484970, 33.241688, 30.929052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729094, 0.358920, 0.582750,
		0.093464, 0.895697, -0.434732,
		-0.678001, -0.262494, -0.686594,
		33.281570, 33.162941, 30.723074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363789, 33.880764, 31.104332>,  <33.756172, 33.346687, 31.203690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363789, 33.880764, 31.104332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132416, 33.595913, 30.945189>,  <32.993591, 33.425003, 30.849703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132416, 33.595913, 30.945189>,  <33.363789, 33.880764, 31.104332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132416, 33.595913, 30.945189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705578, 0.192018, 0.682120,
		-0.409359, 0.675282, -0.613530,
		-0.578432, -0.712126, -0.397860,
		32.958885, 33.382275, 30.825830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732357, 34.196209, 30.853109>,  <33.363789, 33.880764, 31.104332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732357, 34.196209, 30.853109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652348, 33.813507, 30.937592>,  <32.604343, 33.583885, 30.988281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652348, 33.813507, 30.937592>,  <32.732357, 34.196209, 30.853109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652348, 33.813507, 30.937592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733221, 0.289152, 0.615450,
		-0.649906, -0.031754, -0.759351,
		-0.200025, -0.956756, 0.211205,
		32.592339, 33.526482, 31.000954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982410, 34.187206, 30.756165>,  <32.732357, 34.196209, 30.853109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982410, 34.187206, 30.756165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118168, 33.893078, 30.990810>,  <32.199623, 33.716602, 31.131598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118168, 33.893078, 30.990810>,  <31.982410, 34.187206, 30.756165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118168, 33.893078, 30.990810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825275, 0.066476, 0.560805,
		-0.451367, -0.674452, -0.584279,
		0.339396, -0.735319, 0.586614,
		32.219986, 33.672482, 31.166794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678791, 34.843956, 30.458275>,  <31.982410, 34.187206, 30.756165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678791, 34.843956, 30.458275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951330, 34.969219, 30.722908>,  <32.114853, 35.044376, 30.881689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951330, 34.969219, 30.722908>,  <31.678791, 34.843956, 30.458275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951330, 34.969219, 30.722908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421191, 0.571476, -0.704282,
		-0.598632, 0.758516, 0.257475,
		0.681350, 0.313159, 0.661584,
		32.155735, 35.063168, 30.921383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760141, 35.606133, 30.402719>,  <31.678791, 34.843956, 30.458275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760141, 35.606133, 30.402719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084087, 35.433620, 30.561773>,  <32.278454, 35.330112, 30.657206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084087, 35.433620, 30.561773>,  <31.760141, 35.606133, 30.402719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084087, 35.433620, 30.561773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586536, 0.584257, -0.560910,
		0.009591, 0.687487, 0.726133,
		0.809867, -0.431282, 0.397632,
		32.327049, 35.304237, 30.681063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202728, 36.109612, 30.725897>,  <31.760141, 35.606133, 30.402719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202728, 36.109612, 30.725897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433380, 35.803768, 30.610746>,  <32.571770, 35.620262, 30.541656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433380, 35.803768, 30.610746>,  <32.202728, 36.109612, 30.725897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433380, 35.803768, 30.610746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521336, 0.615646, -0.590922,
		0.629054, 0.190662, 0.753617,
		0.576628, -0.764610, -0.287875,
		32.606369, 35.574387, 30.524384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814159, 36.400623, 30.871733>,  <32.202728, 36.109612, 30.725897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814159, 36.400623, 30.871733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867817, 36.097160, 30.616720>,  <32.900009, 35.915081, 30.463713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867817, 36.097160, 30.616720>,  <32.814159, 36.400623, 30.871733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867817, 36.097160, 30.616720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629864, 0.561943, -0.536182,
		0.765034, -0.329633, 0.553231,
		0.134142, -0.758658, -0.637530,
		32.908058, 35.869564, 30.425461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527767, 36.387913, 30.772272>,  <32.814159, 36.400623, 30.871733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527767, 36.387913, 30.772272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363422, 36.205544, 30.456469>,  <33.264816, 36.096123, 30.266987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363422, 36.205544, 30.456469>,  <33.527767, 36.387913, 30.772272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363422, 36.205544, 30.456469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639289, 0.473332, -0.606026,
		0.650003, -0.753716, 0.096996,
		-0.410860, -0.455927, -0.789509,
		33.240166, 36.068764, 30.219616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126469, 36.273621, 30.420485>,  <33.527767, 36.387913, 30.772272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126469, 36.273621, 30.420485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822491, 36.218719, 30.166349>,  <33.640106, 36.185780, 30.013868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822491, 36.218719, 30.166349>,  <34.126469, 36.273621, 30.420485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822491, 36.218719, 30.166349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562795, 0.350080, -0.748803,
		0.325194, -0.926610, -0.188794,
		-0.759941, -0.137254, -0.635335,
		33.594509, 36.177544, 29.975748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481903, 36.066582, 29.743244>,  <34.126469, 36.273621, 30.420485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481903, 36.066582, 29.743244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115864, 36.191269, 29.640924>,  <33.896240, 36.266079, 29.579533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115864, 36.191269, 29.640924>,  <34.481903, 36.066582, 29.743244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115864, 36.191269, 29.640924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349630, 0.297304, -0.888465,
		-0.200897, -0.902466, -0.381047,
		-0.915095, 0.311715, -0.255801,
		33.841335, 36.284782, 29.564184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351650, 35.846237, 29.089979>,  <34.481903, 36.066582, 29.743244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351650, 35.846237, 29.089979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088726, 36.144749, 29.131954>,  <33.930973, 36.323856, 29.157139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088726, 36.144749, 29.131954>,  <34.351650, 35.846237, 29.089979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088726, 36.144749, 29.131954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281096, 0.371980, -0.884656,
		-0.699237, -0.551993, -0.454281,
		-0.657308, 0.746281, 0.104939,
		33.891533, 36.368633, 29.163435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006561, 35.841293, 28.524714>,  <34.351650, 35.846237, 29.089979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006561, 35.841293, 28.524714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962788, 36.210480, 28.672316>,  <33.936523, 36.431992, 28.760878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962788, 36.210480, 28.672316>,  <34.006561, 35.841293, 28.524714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962788, 36.210480, 28.672316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174102, 0.383296, -0.907068,
		-0.978628, -0.035021, -0.202636,
		-0.109436, 0.922961, 0.369007,
		33.929958, 36.487370, 28.783018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619076, 36.261436, 27.985630>,  <34.006561, 35.841293, 28.524714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619076, 36.261436, 27.985630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.820457, 36.514885, 28.220600>,  <33.941284, 36.666954, 28.361582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.820457, 36.514885, 28.220600>,  <33.619076, 36.261436, 27.985630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820457, 36.514885, 28.220600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312573, 0.500260, -0.807489,
		-0.805504, 0.590143, 0.053804,
		0.503450, 0.633617, 0.587424,
		33.971493, 36.704971, 28.396828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489521, 36.927231, 27.730167>,  <33.619076, 36.261436, 27.985630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489521, 36.927231, 27.730167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822041, 36.989410, 27.943628>,  <34.021553, 37.026718, 28.071705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822041, 36.989410, 27.943628>,  <33.489521, 36.927231, 27.730167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822041, 36.989410, 27.943628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300323, 0.682269, -0.666570,
		-0.467713, 0.714384, 0.520481,
		0.831295, 0.155451, 0.533651,
		34.071430, 37.036045, 28.103724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627075, 37.620090, 27.670658>,  <33.489521, 36.927231, 27.730167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627075, 37.620090, 27.670658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977768, 37.483814, 27.806463>,  <34.188183, 37.402046, 27.887947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977768, 37.483814, 27.806463>,  <33.627075, 37.620090, 27.670658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977768, 37.483814, 27.806463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479412, 0.562058, -0.673984,
		0.038797, 0.753670, 0.656107,
		0.876732, -0.340694, 0.339512,
		34.240788, 37.381607, 27.908318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110847, 38.244480, 27.567972>,  <33.627075, 37.620090, 27.670658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110847, 38.244480, 27.567972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.349724, 37.928692, 27.624680>,  <34.493050, 37.739220, 27.658705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.349724, 37.928692, 27.624680>,  <34.110847, 38.244480, 27.567972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349724, 37.928692, 27.624680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687647, 0.412924, -0.597189,
		0.412924, 0.454123, 0.789472,
		0.597189, -0.789472, 0.141770,
		34.528881, 37.691849, 27.667210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856098, 38.561844, 27.734255>,  <34.110847, 38.244480, 27.567972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856098, 38.561844, 27.734255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895187, 38.176929, 27.632704>,  <34.918640, 37.945980, 27.571774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895187, 38.176929, 27.632704>,  <34.856098, 38.561844, 27.734255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895187, 38.176929, 27.632704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766831, 0.235411, -0.597120,
		0.634366, -0.136331, 0.760916,
		0.097722, -0.962287, -0.253879,
		34.924503, 37.888245, 27.556540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629162, 38.324825, 27.854065>,  <34.856098, 38.561844, 27.734255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629162, 38.324825, 27.854065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460117, 38.087330, 27.580168>,  <35.358688, 37.944832, 27.415829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460117, 38.087330, 27.580168>,  <35.629162, 38.324825, 27.854065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460117, 38.087330, 27.580168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661626, 0.314232, -0.680816,
		0.619393, -0.740767, 0.260032,
		-0.422616, -0.593736, -0.684743,
		35.333332, 37.909210, 27.374744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203568, 38.116707, 27.442362>,  <35.629162, 38.324825, 27.854065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203568, 38.116707, 27.442362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885353, 38.050617, 27.209187>,  <35.694424, 38.010963, 27.069281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885353, 38.050617, 27.209187>,  <36.203568, 38.116707, 27.442362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885353, 38.050617, 27.209187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580125, 0.069934, -0.811520,
		0.174850, -0.983774, 0.040215,
		-0.795539, -0.165224, -0.582940,
		35.646690, 38.001049, 27.034306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330280, 37.593700, 26.980646>,  <36.203568, 38.116707, 27.442362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330280, 37.593700, 26.980646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.043633, 37.816227, 26.812378>,  <35.871643, 37.949745, 26.711416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.043633, 37.816227, 26.812378>,  <36.330280, 37.593700, 26.980646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043633, 37.816227, 26.812378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489342, -0.028750, -0.871618,
		-0.496994, -0.830470, -0.251628,
		-0.716618, 0.556321, -0.420673,
		35.828648, 37.983124, 26.686176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382904, 37.465340, 26.278954>,  <36.330280, 37.593700, 26.980646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382904, 37.465340, 26.278954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158466, 37.796352, 26.286619>,  <36.023804, 37.994961, 26.291218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158466, 37.796352, 26.286619>,  <36.382904, 37.465340, 26.278954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158466, 37.796352, 26.286619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328483, 0.243854, -0.912488,
		-0.759785, -0.505696, -0.408655,
		-0.561093, 0.827531, 0.019164,
		35.990139, 38.044613, 26.292368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088173, 37.561077, 25.535616>,  <36.382904, 37.465340, 26.278954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088173, 37.561077, 25.535616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.090008, 37.927250, 25.696594>,  <36.091110, 38.146954, 25.793180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.090008, 37.927250, 25.696594>,  <36.088173, 37.561077, 25.535616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090008, 37.927250, 25.696594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464200, 0.354510, -0.811690,
		-0.885719, 0.190537, -0.423318,
		0.004586, 0.915433, 0.402444,
		36.091385, 38.201881, 25.817327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719830, 37.975548, 25.081802>,  <36.088173, 37.561077, 25.535616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719830, 37.975548, 25.081802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950504, 38.231491, 25.284979>,  <36.088909, 38.385059, 25.406885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950504, 38.231491, 25.284979>,  <35.719830, 37.975548, 25.081802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950504, 38.231491, 25.284979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422195, 0.298864, -0.855822,
		-0.699414, 0.707994, -0.097795,
		0.576690, 0.639863, 0.507941,
		36.123512, 38.423450, 25.437361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902447, 38.408222, 24.581766>,  <35.719830, 37.975548, 25.081802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902447, 38.408222, 24.581766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.174858, 38.512299, 24.855555>,  <36.338306, 38.574745, 25.019827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.174858, 38.512299, 24.855555>,  <35.902447, 38.408222, 24.581766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174858, 38.512299, 24.855555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631213, 0.265212, -0.728857,
		-0.371169, 0.928421, 0.016384,
		0.681031, 0.260187, 0.684470,
		36.379166, 38.590355, 25.060896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109825, 39.068024, 24.305376>,  <35.902447, 38.408222, 24.581766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109825, 39.068024, 24.305376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388386, 38.946346, 24.565374>,  <36.555523, 38.873341, 24.721373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388386, 38.946346, 24.565374>,  <36.109825, 39.068024, 24.305376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388386, 38.946346, 24.565374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716786, 0.250320, -0.650814,
		0.035267, 0.919133, 0.392365,
		0.696401, -0.304194, 0.649994,
		36.597305, 38.855087, 24.760372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589630, 39.606136, 24.401491>,  <36.109825, 39.068024, 24.305376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589630, 39.606136, 24.401491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.800671, 39.272686, 24.466866>,  <36.927296, 39.072617, 24.506090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.800671, 39.272686, 24.466866>,  <36.589630, 39.606136, 24.401491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800671, 39.272686, 24.466866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677512, 0.296861, -0.672942,
		0.512461, 0.465775, 0.721413,
		0.527599, -0.833623, 0.163438,
		36.958950, 39.022598, 24.515898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257721, 39.765450, 24.271481>,  <36.589630, 39.606136, 24.401491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257721, 39.765450, 24.271481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339909, 39.374062, 24.279186>,  <37.389221, 39.139229, 24.283810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339909, 39.374062, 24.279186>,  <37.257721, 39.765450, 24.271481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339909, 39.374062, 24.279186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817101, 0.160686, -0.553647,
		0.538634, 0.129501, 0.832528,
		0.205474, -0.978473, 0.019264,
		37.401550, 39.080521, 24.284966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982494, 39.833458, 24.471714>,  <37.257721, 39.765450, 24.271481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982494, 39.833458, 24.471714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912151, 39.466999, 24.327631>,  <37.869946, 39.247124, 24.241182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912151, 39.466999, 24.327631>,  <37.982494, 39.833458, 24.471714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912151, 39.466999, 24.327631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906664, -0.008202, -0.421774,
		0.383453, -0.400756, 0.832081,
		-0.175853, -0.916148, -0.360206,
		37.859394, 39.192154, 24.219570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574982, 39.432114, 24.597168>,  <37.982494, 39.833458, 24.471714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574982, 39.432114, 24.597168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360779, 39.261864, 24.305393>,  <38.232258, 39.159714, 24.130329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360779, 39.261864, 24.305393>,  <38.574982, 39.432114, 24.597168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360779, 39.261864, 24.305393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772966, 0.100939, -0.626367,
		0.340223, -0.899254, 0.274937,
		-0.535511, -0.425621, -0.729435,
		38.200127, 39.134178, 24.086563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055027, 39.023701, 24.308668>,  <38.574982, 39.432114, 24.597168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055027, 39.023701, 24.308668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.784878, 39.048767, 24.014746>,  <38.622787, 39.063808, 23.838392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.784878, 39.048767, 24.014746>,  <39.055027, 39.023701, 24.308668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784878, 39.048767, 24.014746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732000, -0.064198, -0.678273,
		-0.089677, -0.995967, -0.002513,
		-0.675377, 0.062665, -0.734806,
		38.582264, 39.067566, 23.794304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404186, 38.290703, 24.491282>,  <39.055027, 39.023701, 24.308668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404186, 38.290703, 24.491282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.780579, 38.295456, 24.626585>,  <40.006413, 38.298306, 24.707767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.780579, 38.295456, 24.626585>,  <39.404186, 38.290703, 24.491282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780579, 38.295456, 24.626585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336637, -0.070919, 0.938960,
		0.035144, -0.997411, -0.062734,
		0.940978, 0.011881, 0.338258,
		40.062874, 38.299019, 24.728062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419189, 37.744377, 25.028051>,  <39.404186, 38.290703, 24.491282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419189, 37.744377, 25.028051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.732719, 37.984741, 25.090698>,  <39.920837, 38.128960, 25.128286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.732719, 37.984741, 25.090698>,  <39.419189, 37.744377, 25.028051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732719, 37.984741, 25.090698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142284, -0.071712, 0.987225,
		0.604465, -0.796093, 0.029291,
		0.783822, 0.600911, 0.156618,
		39.967865, 38.165016, 25.137684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674999, 37.387638, 25.567774>,  <39.419189, 37.744377, 25.028051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674999, 37.387638, 25.567774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.825680, 37.758133, 25.573082>,  <39.916088, 37.980431, 25.576267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.825680, 37.758133, 25.573082>,  <39.674999, 37.387638, 25.567774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825680, 37.758133, 25.573082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093169, 0.023633, 0.995370,
		0.921638, -0.376193, 0.095200,
		0.376700, 0.926240, 0.013269,
		39.938690, 38.036003, 25.577063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208878, 37.355381, 26.036646>,  <39.674999, 37.387638, 25.567774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208878, 37.355381, 26.036646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.072262, 37.730556, 26.012560>,  <39.990292, 37.955662, 25.998108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.072262, 37.730556, 26.012560>,  <40.208878, 37.355381, 26.036646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072262, 37.730556, 26.012560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186272, -0.004752, 0.982487,
		0.921224, 0.346775, 0.176334,
		-0.341540, 0.937936, -0.060217,
		39.969799, 38.011936, 25.994495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512978, 37.667316, 26.527851>,  <40.208878, 37.355381, 26.036646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512978, 37.667316, 26.527851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196785, 37.902988, 26.460899>,  <40.007069, 38.044392, 26.420729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196785, 37.902988, 26.460899>,  <40.512978, 37.667316, 26.527851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196785, 37.902988, 26.460899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259958, -0.075292, 0.962680,
		0.554586, 0.804489, 0.212677,
		-0.790479, 0.589176, -0.167377,
		39.959641, 38.079742, 26.410686>
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
