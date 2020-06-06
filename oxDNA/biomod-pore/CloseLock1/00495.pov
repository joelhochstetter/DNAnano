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
	<24.700705, 35.360889, 34.765785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.608742, 35.032398, 34.974682>,  <24.553564, 34.835304, 35.100018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.608742, 35.032398, 34.974682>,  <24.700705, 35.360889, 34.765785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.608742, 35.032398, 34.974682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874456, 0.061214, 0.481228,
		-0.427165, 0.567311, 0.704051,
		-0.229908, -0.821225, 0.522237,
		24.539770, 34.786030, 35.131351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237160, 34.871433, 34.641010>,  <24.700705, 35.360889, 34.765785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237160, 34.871433, 34.641010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489185, 34.561577, 34.662720>,  <25.640400, 34.375664, 34.675743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489185, 34.561577, 34.662720>,  <25.237160, 34.871433, 34.641010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489185, 34.561577, 34.662720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618561, 0.458404, -0.638160,
		0.469468, 0.435652, 0.767989,
		0.630064, -0.774644, 0.054271,
		25.678205, 34.329185, 34.679001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928080, 35.181881, 34.732578>,  <25.237160, 34.871433, 34.641010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928080, 35.181881, 34.732578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962824, 34.824539, 34.556229>,  <25.983671, 34.610134, 34.450417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962824, 34.824539, 34.556229>,  <25.928080, 35.181881, 34.732578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962824, 34.824539, 34.556229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712598, 0.364978, -0.599162,
		0.696174, -0.262125, 0.668305,
		0.086862, -0.893354, -0.440878,
		25.988882, 34.556534, 34.423965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532421, 35.262665, 34.336151>,  <25.928080, 35.181881, 34.732578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532421, 35.262665, 34.336151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367918, 34.924061, 34.200920>,  <26.269217, 34.720898, 34.119781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367918, 34.924061, 34.200920>,  <26.532421, 35.262665, 34.336151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367918, 34.924061, 34.200920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637887, -0.002332, -0.770126,
		0.651128, -0.532373, 0.540935,
		-0.411256, -0.846506, -0.338076,
		26.244541, 34.670109, 34.099499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138313, 34.729198, 34.284550>,  <26.532421, 35.262665, 34.336151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138313, 34.729198, 34.284550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820755, 34.757240, 34.042950>,  <26.630220, 34.774067, 33.897991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820755, 34.757240, 34.042950>,  <27.138313, 34.729198, 34.284550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820755, 34.757240, 34.042950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593093, 0.308258, -0.743786,
		0.134043, -0.948716, -0.286305,
		-0.793897, 0.070107, -0.603997,
		26.582586, 34.778271, 33.861752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370035, 34.391144, 33.622345>,  <27.138313, 34.729198, 34.284550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370035, 34.391144, 33.622345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044121, 34.607292, 33.538326>,  <26.848572, 34.736980, 33.487915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044121, 34.607292, 33.538326>,  <27.370035, 34.391144, 33.622345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044121, 34.607292, 33.538326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461725, 0.385709, -0.798773,
		-0.350615, -0.747816, -0.563774,
		-0.814788, 0.540370, -0.210050,
		26.799685, 34.769402, 33.475311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237469, 34.348896, 32.889931>,  <27.370035, 34.391144, 33.622345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237469, 34.348896, 32.889931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139194, 34.698238, 33.058167>,  <27.080231, 34.907845, 33.159107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139194, 34.698238, 33.058167>,  <27.237469, 34.348896, 32.889931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139194, 34.698238, 33.058167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499725, 0.485902, -0.717059,
		-0.830611, 0.034009, -0.555814,
		-0.245685, 0.873351, 0.420591,
		27.065489, 34.960243, 33.184345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914406, 34.753086, 32.378502>,  <27.237469, 34.348896, 32.889931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914406, 34.753086, 32.378502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072216, 34.999874, 32.650883>,  <27.166903, 35.147945, 32.814312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072216, 34.999874, 32.650883>,  <26.914406, 34.753086, 32.378502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072216, 34.999874, 32.650883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533539, 0.449540, -0.716415,
		-0.748121, 0.645961, -0.151820,
		0.394526, 0.616967, 0.680956,
		27.190575, 35.184963, 32.855171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737619, 35.423252, 32.177689>,  <26.914406, 34.753086, 32.378502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737619, 35.423252, 32.177689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061516, 35.492638, 32.401917>,  <27.255854, 35.534267, 32.536453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061516, 35.492638, 32.401917>,  <26.737619, 35.423252, 32.177689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061516, 35.492638, 32.401917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435916, 0.461683, -0.772545,
		-0.392809, 0.869920, 0.298229,
		0.809740, 0.173460, 0.560565,
		27.304438, 35.544674, 32.570087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852924, 36.096439, 32.055927>,  <26.737619, 35.423252, 32.177689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852924, 36.096439, 32.055927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198729, 35.968746, 32.211216>,  <27.406210, 35.892132, 32.304390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198729, 35.968746, 32.211216>,  <26.852924, 36.096439, 32.055927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198729, 35.968746, 32.211216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501382, 0.601858, -0.621596,
		-0.035221, 0.732023, 0.680369,
		0.864509, -0.319232, 0.388222,
		27.458080, 35.872978, 32.327682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259695, 36.692818, 32.224354>,  <26.852924, 36.096439, 32.055927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259695, 36.692818, 32.224354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542814, 36.412586, 32.188099>,  <27.712687, 36.244450, 32.166348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542814, 36.412586, 32.188099>,  <27.259695, 36.692818, 32.224354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542814, 36.412586, 32.188099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559396, 0.634212, -0.533715,
		0.431390, 0.327061, 0.840794,
		0.707798, -0.700576, -0.090636,
		27.755154, 36.202412, 32.160908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847443, 37.079117, 32.112732>,  <27.259695, 36.692818, 32.224354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847443, 37.079117, 32.112732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971884, 36.710171, 32.021111>,  <28.046549, 36.488804, 31.966139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971884, 36.710171, 32.021111>,  <27.847443, 37.079117, 32.112732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971884, 36.710171, 32.021111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710799, 0.385799, -0.588153,
		0.630857, 0.020168, 0.775637,
		0.311102, -0.922362, -0.229049,
		28.065214, 36.433460, 31.952396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472694, 36.993977, 32.362579>,  <27.847443, 37.079117, 32.112732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472694, 36.993977, 32.362579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447445, 36.758026, 32.040569>,  <28.432295, 36.616455, 31.847363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447445, 36.758026, 32.040569>,  <28.472694, 36.993977, 32.362579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447445, 36.758026, 32.040569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852522, 0.387500, -0.350785,
		0.518866, -0.708444, 0.478420,
		-0.063124, -0.589874, -0.805024,
		28.428507, 36.581062, 31.799063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171509, 36.877731, 32.220100>,  <28.472694, 36.993977, 32.362579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171509, 36.877731, 32.220100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986864, 36.758163, 31.886019>,  <28.876078, 36.686424, 31.685570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986864, 36.758163, 31.886019>,  <29.171509, 36.877731, 32.220100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986864, 36.758163, 31.886019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654853, 0.520288, -0.548149,
		0.598398, -0.799966, -0.044423,
		-0.461613, -0.298921, -0.835200,
		28.848379, 36.668488, 31.635458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678812, 36.722401, 31.728722>,  <29.171509, 36.877731, 32.220100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678812, 36.722401, 31.728722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359360, 36.785919, 31.496525>,  <29.167688, 36.824032, 31.357206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359360, 36.785919, 31.496525>,  <29.678812, 36.722401, 31.728722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359360, 36.785919, 31.496525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503564, 0.704523, -0.500071,
		0.329561, -0.691687, -0.642619,
		-0.798632, 0.158796, -0.580492,
		29.119770, 36.833557, 31.322376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002851, 36.741581, 31.103008>,  <29.678812, 36.722401, 31.728722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002851, 36.741581, 31.103008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658817, 36.938473, 31.049400>,  <29.452396, 37.056610, 31.017235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658817, 36.938473, 31.049400>,  <30.002851, 36.741581, 31.103008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658817, 36.938473, 31.049400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486225, 0.711443, -0.507379,
		-0.154402, -0.501553, -0.851237,
		-0.860084, 0.492234, -0.134020,
		29.400791, 37.086143, 31.009195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889618, 36.847370, 30.403008>,  <30.002851, 36.741581, 31.103008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889618, 36.847370, 30.403008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668552, 37.129265, 30.580957>,  <29.535913, 37.298401, 30.687727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668552, 37.129265, 30.580957>,  <29.889618, 36.847370, 30.403008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668552, 37.129265, 30.580957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467839, 0.704106, -0.534193,
		-0.689703, -0.087099, -0.718835,
		-0.552664, 0.704733, 0.444875,
		29.502752, 37.340683, 30.714420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545149, 37.280293, 29.869034>,  <29.889618, 36.847370, 30.403008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545149, 37.280293, 29.869034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533133, 37.497433, 30.204752>,  <29.525923, 37.627716, 30.406183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533133, 37.497433, 30.204752>,  <29.545149, 37.280293, 29.869034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533133, 37.497433, 30.204752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312631, 0.802647, -0.507956,
		-0.949400, 0.247129, -0.193824,
		-0.030041, 0.542848, 0.839293,
		29.524120, 37.660286, 30.456539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305655, 37.928562, 29.648903>,  <29.545149, 37.280293, 29.869034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305655, 37.928562, 29.648903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477219, 37.992523, 30.004536>,  <29.580156, 38.030899, 30.217915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477219, 37.992523, 30.004536>,  <29.305655, 37.928562, 29.648903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477219, 37.992523, 30.004536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525033, 0.756777, -0.389396,
		-0.735103, 0.633813, 0.240634,
		0.428910, 0.159905, 0.889082,
		29.605892, 38.040493, 30.271259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307701, 38.656147, 29.889631>,  <29.305655, 37.928562, 29.648903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307701, 38.656147, 29.889631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591135, 38.518520, 30.136053>,  <29.761196, 38.435944, 30.283907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591135, 38.518520, 30.136053>,  <29.307701, 38.656147, 29.889631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591135, 38.518520, 30.136053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413723, 0.909830, 0.032277,
		-0.571613, 0.232006, 0.787040,
		0.708585, -0.344067, 0.616057,
		29.803711, 38.415298, 30.320869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316332, 39.112156, 30.473005>,  <29.307701, 38.656147, 29.889631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316332, 39.112156, 30.473005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673325, 38.938366, 30.424498>,  <29.887520, 38.834091, 30.395393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673325, 38.938366, 30.424498>,  <29.316332, 39.112156, 30.473005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673325, 38.938366, 30.424498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411799, 0.894491, -0.174088,
		0.184113, 0.105431, 0.977234,
		0.892482, -0.434476, -0.121271,
		29.941069, 38.808022, 30.388117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744583, 39.551487, 30.863634>,  <29.316332, 39.112156, 30.473005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744583, 39.551487, 30.863634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973415, 39.342709, 30.610559>,  <30.110716, 39.217442, 30.458715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973415, 39.342709, 30.610559>,  <29.744583, 39.551487, 30.863634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973415, 39.342709, 30.610559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436219, 0.846862, -0.304201,
		0.694575, -0.101962, 0.712158,
		0.572083, -0.521947, -0.632687,
		30.145041, 39.186123, 30.420753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395668, 39.764553, 31.046968>,  <29.744583, 39.551487, 30.863634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395668, 39.764553, 31.046968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405006, 39.636707, 30.668064>,  <30.410610, 39.559998, 30.440722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405006, 39.636707, 30.668064>,  <30.395668, 39.764553, 31.046968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405006, 39.636707, 30.668064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528717, 0.808113, -0.259638,
		0.848477, -0.494770, 0.187855,
		0.023347, -0.319618, -0.947259,
		30.412010, 39.540821, 30.383886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097647, 39.867756, 30.810593>,  <30.395668, 39.764553, 31.046968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097647, 39.867756, 30.810593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860332, 39.855808, 30.488817>,  <30.717945, 39.848640, 30.295752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860332, 39.855808, 30.488817>,  <31.097647, 39.867756, 30.810593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860332, 39.855808, 30.488817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511262, 0.757904, -0.405207,
		0.621791, -0.651682, -0.434380,
		-0.593285, -0.029872, -0.804438,
		30.682346, 39.846848, 30.247486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507458, 39.683910, 30.216270>,  <31.097647, 39.867756, 30.810593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507458, 39.683910, 30.216270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182312, 39.907101, 30.149445>,  <30.987225, 40.041016, 30.109348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182312, 39.907101, 30.149445>,  <31.507458, 39.683910, 30.216270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182312, 39.907101, 30.149445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581440, 0.760432, -0.289259,
		-0.034359, -0.332266, -0.942560,
		-0.812864, 0.557980, -0.167065,
		30.938454, 40.074493, 30.099325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079563, 40.177143, 30.109436>,  <31.507458, 39.683910, 30.216270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079563, 40.177143, 30.109436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690590, 40.153252, 30.019268>,  <31.457207, 40.138916, 29.965166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690590, 40.153252, 30.019268>,  <32.079563, 40.177143, 30.109436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690590, 40.153252, 30.019268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083060, 0.991960, 0.095481,
		0.217906, 0.111572, -0.969572,
		-0.972429, -0.059727, -0.225421,
		31.398861, 40.135334, 29.951641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125164, 40.679844, 29.624409>,  <32.079563, 40.177143, 30.109436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125164, 40.679844, 29.624409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755823, 40.629799, 29.769608>,  <31.534218, 40.599770, 29.856728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755823, 40.629799, 29.769608>,  <32.125164, 40.679844, 29.624409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755823, 40.629799, 29.769608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074462, 0.985820, 0.150380,
		-0.376666, 0.111824, -0.919575,
		-0.923351, -0.125116, 0.362999,
		31.478817, 40.592262, 29.878508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539448, 40.914536, 29.232985>,  <32.125164, 40.679844, 29.624409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539448, 40.914536, 29.232985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439594, 40.932495, 29.619904>,  <31.379683, 40.943272, 29.852055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439594, 40.932495, 29.619904>,  <31.539448, 40.914536, 29.232985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439594, 40.932495, 29.619904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046563, 0.998325, -0.034324,
		-0.967221, 0.036472, -0.251304,
		-0.249632, 0.044900, 0.967299,
		31.364704, 40.945965, 29.910093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895109, 41.458473, 29.188625>,  <31.539448, 40.914536, 29.232985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895109, 41.458473, 29.188625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764908, 41.384800, 29.559597>,  <30.686787, 41.340595, 29.782179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764908, 41.384800, 29.559597>,  <30.895109, 41.458473, 29.188625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764908, 41.384800, 29.559597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000619, 0.980886, 0.194582,
		-0.945540, 0.062763, -0.319398,
		-0.325505, -0.184183, 0.927428,
		30.667255, 41.329544, 29.837826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961145, 42.166790, 29.444075>,  <30.895109, 41.458473, 29.188625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961145, 42.166790, 29.444075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856073, 41.954254, 29.766237>,  <30.793030, 41.826733, 29.959534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856073, 41.954254, 29.766237>,  <30.961145, 42.166790, 29.444075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856073, 41.954254, 29.766237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070698, 0.821875, 0.565264,
		-0.962290, 0.205423, -0.178324,
		-0.262678, -0.531341, 0.805405,
		30.777269, 41.794853, 30.007858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387236, 42.520077, 29.805735>,  <30.961145, 42.166790, 29.444075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387236, 42.520077, 29.805735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594149, 42.285191, 30.054764>,  <30.718296, 42.144260, 30.204182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594149, 42.285191, 30.054764>,  <30.387236, 42.520077, 29.805735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594149, 42.285191, 30.054764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048392, 0.706229, 0.706328,
		-0.854446, -0.395498, 0.336903,
		0.517282, -0.587216, 0.622573,
		30.749332, 42.109024, 30.241535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034918, 42.429306, 30.420671>,  <30.387236, 42.520077, 29.805735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034918, 42.429306, 30.420671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427095, 42.415775, 30.498215>,  <30.662403, 42.407658, 30.544741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427095, 42.415775, 30.498215>,  <30.034918, 42.429306, 30.420671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427095, 42.415775, 30.498215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111358, 0.716845, 0.688282,
		-0.162251, -0.696411, 0.699061,
		0.980446, -0.033828, 0.193860,
		30.721230, 42.405628, 30.556372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095722, 42.304600, 31.149553>,  <30.034918, 42.429306, 30.420671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095722, 42.304600, 31.149553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390635, 42.514175, 30.978949>,  <30.567581, 42.639919, 30.876587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390635, 42.514175, 30.978949>,  <30.095722, 42.304600, 31.149553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390635, 42.514175, 30.978949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150472, 0.742810, 0.652374,
		0.658618, -0.416804, 0.626496,
		0.737279, 0.523935, -0.426511,
		30.611818, 42.671356, 30.850996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568499, 42.465427, 31.612700>,  <30.095722, 42.304600, 31.149553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568499, 42.465427, 31.612700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552498, 42.746334, 31.328384>,  <30.542898, 42.914879, 31.157795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552498, 42.746334, 31.328384>,  <30.568499, 42.465427, 31.612700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552498, 42.746334, 31.328384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372574, 0.649571, 0.662756,
		0.927140, 0.291331, 0.235665,
		-0.040000, 0.702271, -0.710786,
		30.540499, 42.957016, 31.115149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021467, 43.149944, 31.719038>,  <30.568499, 42.465427, 31.612700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021467, 43.149944, 31.719038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676863, 43.183750, 31.518776>,  <30.470100, 43.204033, 31.398619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676863, 43.183750, 31.518776>,  <31.021467, 43.149944, 31.719038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676863, 43.183750, 31.518776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300970, 0.709139, 0.637604,
		0.408921, 0.699985, -0.585495,
		-0.861511, 0.084513, -0.500656,
		30.418409, 43.209103, 31.368580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396486, 43.269241, 31.989290>,  <31.021467, 43.149944, 31.719038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396486, 43.269241, 31.989290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070910, 43.472149, 32.102551>,  <29.875565, 43.593895, 32.170506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070910, 43.472149, 32.102551>,  <30.396486, 43.269241, 31.989290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070910, 43.472149, 32.102551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211638, -0.712814, 0.668659,
		0.541026, 0.484324, 0.687547,
		-0.813941, 0.507274, 0.283150,
		29.826727, 43.624332, 32.187496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404974, 43.507782, 32.769730>,  <30.396486, 43.269241, 31.989290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404974, 43.507782, 32.769730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041208, 43.458607, 32.610806>,  <29.822948, 43.429104, 32.515450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041208, 43.458607, 32.610806>,  <30.404974, 43.507782, 32.769730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041208, 43.458607, 32.610806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190782, -0.725560, 0.661184,
		-0.369555, 0.677089, 0.636380,
		-0.909413, -0.122934, -0.397310,
		29.768385, 43.421726, 32.491611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980600, 43.483418, 33.327980>,  <30.404974, 43.507782, 32.769730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980600, 43.483418, 33.327980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804695, 43.281563, 33.030804>,  <29.699152, 43.160450, 32.852497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804695, 43.281563, 33.030804>,  <29.980600, 43.483418, 33.327980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804695, 43.281563, 33.030804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214657, -0.744187, 0.632542,
		-0.872085, 0.437644, 0.218942,
		-0.439762, -0.504632, -0.742937,
		29.672766, 43.130173, 32.807922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383894, 43.272797, 33.641415>,  <29.980600, 43.483418, 33.327980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383894, 43.272797, 33.641415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416647, 43.025253, 33.328926>,  <29.436298, 42.876728, 33.141434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416647, 43.025253, 33.328926>,  <29.383894, 43.272797, 33.641415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416647, 43.025253, 33.328926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237301, -0.773420, 0.587801,
		-0.967979, 0.137256, -0.210184,
		0.081881, -0.618856, -0.781226,
		29.441212, 42.839596, 33.094559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821203, 42.844070, 33.690754>,  <29.383894, 43.272797, 33.641415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821203, 42.844070, 33.690754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060587, 42.644558, 33.439976>,  <29.204216, 42.524849, 33.289509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060587, 42.644558, 33.439976>,  <28.821203, 42.844070, 33.690754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060587, 42.644558, 33.439976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193166, -0.849303, 0.491295,
		-0.777517, -0.172914, -0.604621,
		0.598459, -0.498783, -0.626947,
		29.240124, 42.494923, 33.251892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606993, 42.177071, 33.809444>,  <28.821203, 42.844070, 33.690754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606993, 42.177071, 33.809444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950874, 42.118458, 33.613716>,  <29.157204, 42.083290, 33.496281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950874, 42.118458, 33.613716>,  <28.606993, 42.177071, 33.809444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950874, 42.118458, 33.613716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040331, -0.935501, 0.351014,
		-0.509194, -0.321503, -0.798346,
		0.859706, -0.146536, -0.489319,
		29.208786, 42.074497, 33.466919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563225, 41.508545, 33.494797>,  <28.606993, 42.177071, 33.809444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563225, 41.508545, 33.494797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959276, 41.564548, 33.497543>,  <29.196907, 41.598152, 33.499191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959276, 41.564548, 33.497543>,  <28.563225, 41.508545, 33.494797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959276, 41.564548, 33.497543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134416, -0.962191, 0.236901,
		0.039778, -0.233638, -0.971510,
		0.990126, 0.140010, 0.006870,
		29.256313, 41.606552, 33.499603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887430, 41.001675, 33.068336>,  <28.563225, 41.508545, 33.494797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887430, 41.001675, 33.068336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155249, 41.123981, 33.339104>,  <29.315941, 41.197365, 33.501564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155249, 41.123981, 33.339104>,  <28.887430, 41.001675, 33.068336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155249, 41.123981, 33.339104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173802, -0.950534, 0.257446,
		0.722149, -0.054723, -0.689570,
		0.669548, 0.305762, 0.676916,
		29.356113, 41.215710, 33.542179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593199, 40.688850, 32.869801>,  <28.887430, 41.001675, 33.068336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593199, 40.688850, 32.869801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598412, 40.765514, 33.262352>,  <29.601540, 40.811512, 33.497883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598412, 40.765514, 33.262352>,  <29.593199, 40.688850, 32.869801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598412, 40.765514, 33.262352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165682, -0.968306, 0.186905,
		0.986093, 0.160161, -0.044372,
		0.013031, 0.191657, 0.981375,
		29.602322, 40.823013, 33.556767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068024, 40.296806, 33.062683>,  <29.593199, 40.688850, 32.869801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068024, 40.296806, 33.062683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872309, 40.378025, 33.401947>,  <29.754879, 40.426758, 33.605503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872309, 40.378025, 33.401947>,  <30.068024, 40.296806, 33.062683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872309, 40.378025, 33.401947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062873, -0.961777, 0.266516,
		0.869854, 0.183729, 0.457819,
		-0.489287, 0.203046, 0.848157,
		29.725523, 40.438938, 33.656395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466564, 40.103298, 33.669910>,  <30.068024, 40.296806, 33.062683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466564, 40.103298, 33.669910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094995, 40.137215, 33.814083>,  <29.872053, 40.157566, 33.900585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094995, 40.137215, 33.814083>,  <30.466564, 40.103298, 33.669910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094995, 40.137215, 33.814083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146416, -0.809969, 0.567903,
		0.340092, 0.580311, 0.739984,
		-0.928924, 0.084794, 0.360431,
		29.816319, 40.162651, 33.922211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499088, 40.090466, 34.389339>,  <30.466564, 40.103298, 33.669910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499088, 40.090466, 34.389339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142807, 39.954887, 34.268169>,  <29.929039, 39.873539, 34.195465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142807, 39.954887, 34.268169>,  <30.499088, 40.090466, 34.389339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142807, 39.954887, 34.268169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103182, -0.799732, 0.591424,
		-0.442722, 0.495526, 0.747296,
		-0.890702, -0.338944, -0.302930,
		29.875597, 39.853203, 34.177292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308329, 39.615154, 34.920769>,  <30.499088, 40.090466, 34.389339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308329, 39.615154, 34.920769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012030, 39.560291, 34.657715>,  <29.834251, 39.527374, 34.499882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012030, 39.560291, 34.657715>,  <30.308329, 39.615154, 34.920769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012030, 39.560291, 34.657715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210266, -0.882410, 0.420880,
		-0.638030, 0.450044, 0.624802,
		-0.740746, -0.137160, -0.657634,
		29.789806, 39.519142, 34.460426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993246, 39.207470, 35.292126>,  <30.308329, 39.615154, 34.920769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993246, 39.207470, 35.292126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811121, 39.152077, 34.940327>,  <29.701845, 39.118839, 34.729248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811121, 39.152077, 34.940327>,  <29.993246, 39.207470, 35.292126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811121, 39.152077, 34.940327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242731, -0.931101, 0.272272,
		-0.856604, 0.337449, 0.390329,
		-0.455314, -0.138485, -0.879495,
		29.674526, 39.110531, 34.676479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304266, 39.005100, 35.391228>,  <29.993246, 39.207470, 35.292126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304266, 39.005100, 35.391228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436867, 38.869831, 35.038921>,  <29.516426, 38.788670, 34.827538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436867, 38.869831, 35.038921>,  <29.304266, 39.005100, 35.391228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436867, 38.869831, 35.038921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395208, -0.897472, 0.195845,
		-0.856690, 0.283162, -0.431163,
		0.331501, -0.338178, -0.880763,
		29.536316, 38.768379, 34.774693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888447, 38.370853, 35.282681>,  <29.304266, 39.005100, 35.391228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888447, 38.370853, 35.282681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180071, 38.321800, 35.013332>,  <29.355045, 38.292370, 34.851723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180071, 38.321800, 35.013332>,  <28.888447, 38.370853, 35.282681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180071, 38.321800, 35.013332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269606, -0.955732, -0.117853,
		-0.629111, 0.267467, -0.729850,
		0.729062, -0.122630, -0.673372,
		29.398790, 38.285011, 34.811321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537712, 38.127220, 34.669067>,  <28.888447, 38.370853, 35.282681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537712, 38.127220, 34.669067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914383, 38.002090, 34.619453>,  <29.140385, 37.927013, 34.589684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914383, 38.002090, 34.619453>,  <28.537712, 38.127220, 34.669067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914383, 38.002090, 34.619453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334854, -0.907693, -0.252914,
		-0.033469, 0.279698, -0.959504,
		0.941676, -0.312829, -0.124038,
		29.196886, 37.908241, 34.582241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455265, 37.815170, 34.075680>,  <28.537712, 38.127220, 34.669067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455265, 37.815170, 34.075680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783466, 37.665920, 34.248913>,  <28.980387, 37.576370, 34.352852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783466, 37.665920, 34.248913>,  <28.455265, 37.815170, 34.075680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783466, 37.665920, 34.248913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327594, -0.927771, -0.178671,
		0.468465, 0.004725, -0.883469,
		0.820501, -0.373120, 0.433080,
		29.029617, 37.553986, 34.378838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686239, 37.348701, 33.603275>,  <28.455265, 37.815170, 34.075680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686239, 37.348701, 33.603275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836147, 37.257465, 33.962723>,  <28.926092, 37.202724, 34.178391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836147, 37.257465, 33.962723>,  <28.686239, 37.348701, 33.603275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836147, 37.257465, 33.962723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334375, -0.937284, -0.098453,
		0.864720, -0.263579, -0.427534,
		0.374771, -0.228091, 0.898622,
		28.948578, 37.189037, 34.232307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963146, 36.762421, 33.476044>,  <28.686239, 37.348701, 33.603275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963146, 36.762421, 33.476044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980957, 36.766491, 33.875626>,  <28.991644, 36.768932, 34.115376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980957, 36.766491, 33.875626>,  <28.963146, 36.762421, 33.476044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980957, 36.766491, 33.875626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310113, -0.950409, 0.023508,
		0.949656, -0.310836, -0.039163,
		0.044528, 0.010180, 0.998956,
		28.994316, 36.769547, 34.175312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400286, 36.190918, 33.721123>,  <28.963146, 36.762421, 33.476044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400286, 36.190918, 33.721123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181749, 36.280064, 34.044071>,  <29.050629, 36.333553, 34.237839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181749, 36.280064, 34.044071>,  <29.400286, 36.190918, 33.721123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181749, 36.280064, 34.044071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311267, -0.948936, 0.051315,
		0.777577, -0.223272, 0.587813,
		-0.546340, 0.222868, 0.807368,
		29.017847, 36.346924, 34.286282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638210, 35.716194, 34.154415>,  <29.400286, 36.190918, 33.721123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638210, 35.716194, 34.154415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281982, 35.851341, 34.276222>,  <29.068245, 35.932430, 34.349308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281982, 35.851341, 34.276222>,  <29.638210, 35.716194, 34.154415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281982, 35.851341, 34.276222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307417, -0.940541, 0.144491,
		0.335232, 0.035064, 0.941483,
		-0.890570, 0.337866, 0.304520,
		29.014812, 35.952702, 34.367577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509827, 35.376980, 34.795940>,  <29.638210, 35.716194, 34.154415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509827, 35.376980, 34.795940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186750, 35.489033, 34.588417>,  <28.992905, 35.556263, 34.463905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186750, 35.489033, 34.588417>,  <29.509827, 35.376980, 34.795940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186750, 35.489033, 34.588417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362339, -0.929985, 0.061951,
		-0.465128, 0.238021, 0.852644,
		-0.807692, 0.280131, -0.518807,
		28.944443, 35.573071, 34.432774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773123, 36.106903, 34.896278>,  <29.509827, 35.376980, 34.795940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773123, 36.106903, 34.896278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038864, 35.808819, 34.919258>,  <30.198309, 35.629971, 34.933044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038864, 35.808819, 34.919258>,  <29.773123, 36.106903, 34.896278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038864, 35.808819, 34.919258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745194, 0.666342, 0.025949,
		-0.057619, 0.025573, 0.998011,
		0.664353, -0.745207, 0.057451,
		30.238171, 35.585255, 34.936493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170876, 36.272667, 35.472118>,  <29.773123, 36.106903, 34.896278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170876, 36.272667, 35.472118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364700, 36.048985, 35.203049>,  <30.480995, 35.914776, 35.041607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364700, 36.048985, 35.203049>,  <30.170876, 36.272667, 35.472118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364700, 36.048985, 35.203049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746409, 0.665310, -0.015408,
		0.456152, -0.494622, 0.739780,
		0.484562, -0.559207, -0.672672,
		30.510069, 35.881222, 35.001247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740421, 35.997871, 35.746925>,  <30.170876, 36.272667, 35.472118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740421, 35.997871, 35.746925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819721, 36.061996, 35.360146>,  <30.867300, 36.100471, 35.128078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819721, 36.061996, 35.360146>,  <30.740421, 35.997871, 35.746925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819721, 36.061996, 35.360146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703858, 0.663273, 0.254269,
		0.682115, -0.731006, 0.018658,
		0.198248, 0.160308, -0.966953,
		30.879196, 36.110088, 35.070061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784790, 36.295921, 36.430855>,  <30.740421, 35.997871, 35.746925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784790, 36.295921, 36.430855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963758, 36.626610, 36.567295>,  <31.071138, 36.825024, 36.649158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963758, 36.626610, 36.567295>,  <30.784790, 36.295921, 36.430855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963758, 36.626610, 36.567295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007369, -0.377988, 0.925781,
		0.894294, -0.416726, -0.163027,
		0.447419, 0.826720, 0.341103,
		31.097984, 36.874626, 36.669624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363758, 36.134441, 36.674431>,  <30.784790, 36.295921, 36.430855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363758, 36.134441, 36.674431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253149, 36.459858, 36.879051>,  <31.186785, 36.655109, 37.001823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253149, 36.459858, 36.879051>,  <31.363758, 36.134441, 36.674431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253149, 36.459858, 36.879051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110623, -0.501820, 0.857869,
		0.954620, 0.293808, 0.048767,
		-0.276521, 0.813544, 0.511549,
		31.170193, 36.703922, 37.032516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021538, 36.398087, 36.454998>,  <31.363758, 36.134441, 36.674431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021538, 36.398087, 36.454998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175869, 36.101040, 36.673962>,  <32.268467, 35.922813, 36.805340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175869, 36.101040, 36.673962>,  <32.021538, 36.398087, 36.454998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175869, 36.101040, 36.673962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149153, 0.635760, 0.757339,
		-0.910435, -0.210552, 0.356055,
		0.385825, -0.742615, 0.547414,
		32.291618, 35.878254, 36.838184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984390, 36.542473, 37.191730>,  <32.021538, 36.398087, 36.454998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984390, 36.542473, 37.191730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260281, 36.252960, 37.199940>,  <32.425816, 36.079254, 37.204865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260281, 36.252960, 37.199940>,  <31.984390, 36.542473, 37.191730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260281, 36.252960, 37.199940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372943, 0.379409, 0.846736,
		-0.620639, -0.576359, 0.531617,
		0.689725, -0.723781, 0.020527,
		32.467197, 36.035828, 37.206097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066799, 36.183712, 37.826180>,  <31.984390, 36.542473, 37.191730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066799, 36.183712, 37.826180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430565, 36.114029, 37.675125>,  <32.648827, 36.072220, 37.584492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430565, 36.114029, 37.675125>,  <32.066799, 36.183712, 37.826180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430565, 36.114029, 37.675125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415671, 0.351656, 0.838782,
		-0.013323, -0.919777, 0.392215,
		0.909418, -0.174208, -0.377639,
		32.703392, 36.061768, 37.561832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430260, 35.801929, 38.324059>,  <32.066799, 36.183712, 37.826180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430260, 35.801929, 38.324059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719131, 35.975574, 38.108650>,  <32.892456, 36.079762, 37.979404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719131, 35.975574, 38.108650>,  <32.430260, 35.801929, 38.324059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719131, 35.975574, 38.108650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378355, 0.403826, 0.832930,
		0.579051, -0.805278, 0.127388,
		0.722183, 0.434111, -0.538517,
		32.935787, 36.105808, 37.947094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963108, 35.869553, 38.819340>,  <32.430260, 35.801929, 38.324059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963108, 35.869553, 38.819340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077183, 36.106461, 38.517906>,  <33.145626, 36.248604, 38.337048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077183, 36.106461, 38.517906>,  <32.963108, 35.869553, 38.819340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077183, 36.106461, 38.517906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702876, 0.405310, 0.584542,
		0.651640, -0.696378, -0.300703,
		0.285184, 0.592268, -0.753584,
		33.162739, 36.284142, 38.291832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735367, 35.893078, 38.697815>,  <32.963108, 35.869553, 38.819340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735367, 35.893078, 38.697815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616920, 36.237835, 38.533154>,  <33.545853, 36.444687, 38.434357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616920, 36.237835, 38.533154>,  <33.735367, 35.893078, 38.697815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616920, 36.237835, 38.533154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490171, 0.507032, 0.708978,
		0.819783, 0.008160, -0.572616,
		-0.296120, 0.861888, -0.411657,
		33.528084, 36.496403, 38.409657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367077, 36.359524, 38.696228>,  <33.735367, 35.893078, 38.697815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367077, 36.359524, 38.696228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061054, 36.614574, 38.660194>,  <33.877441, 36.767605, 38.638577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061054, 36.614574, 38.660194>,  <34.367077, 36.359524, 38.696228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061054, 36.614574, 38.660194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450797, 0.630202, 0.632161,
		0.459852, 0.443033, -0.769582,
		-0.765061, 0.637626, -0.090082,
		33.831535, 36.805862, 38.633171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673584, 37.037411, 38.676258>,  <34.367077, 36.359524, 38.696228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673584, 37.037411, 38.676258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301441, 37.132698, 38.787754>,  <34.078156, 37.189869, 38.854652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301441, 37.132698, 38.787754>,  <34.673584, 37.037411, 38.676258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301441, 37.132698, 38.787754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366593, 0.619420, 0.694210,
		-0.007286, 0.748045, -0.663608,
		-0.930353, 0.238216, 0.278741,
		34.022335, 37.204163, 38.871376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610229, 37.852440, 38.698971>,  <34.673584, 37.037411, 38.676258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610229, 37.852440, 38.698971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313419, 37.712353, 38.927616>,  <34.135334, 37.628300, 39.064804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313419, 37.712353, 38.927616>,  <34.610229, 37.852440, 38.698971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313419, 37.712353, 38.927616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216658, 0.681632, 0.698883,
		-0.634391, 0.642436, -0.429913,
		-0.742029, -0.350220, 0.571610,
		34.090809, 37.607288, 39.099098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220230, 38.433704, 38.873528>,  <34.610229, 37.852440, 38.698971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220230, 38.433704, 38.873528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163052, 38.137424, 39.136108>,  <34.128742, 37.959656, 39.293659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163052, 38.137424, 39.136108>,  <34.220230, 38.433704, 38.873528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163052, 38.137424, 39.136108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222680, 0.622191, 0.750528,
		-0.964354, 0.253467, 0.075997,
		-0.142949, -0.740698, 0.656454,
		34.120167, 37.915215, 39.333046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194904, 38.823086, 39.417465>,  <34.220230, 38.433704, 38.873528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194904, 38.823086, 39.417465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197586, 38.453018, 39.569260>,  <34.199196, 38.230976, 39.660336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197586, 38.453018, 39.569260>,  <34.194904, 38.823086, 39.417465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197586, 38.453018, 39.569260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323878, 0.361050, 0.874498,
		-0.946075, 0.117048, 0.302062,
		0.006701, -0.925172, 0.379490,
		34.199596, 38.175468, 39.683105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809685, 38.869762, 40.064095>,  <34.194904, 38.823086, 39.417465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809685, 38.869762, 40.064095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074467, 38.570217, 40.051327>,  <34.233337, 38.390491, 40.043667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074467, 38.570217, 40.051327>,  <33.809685, 38.869762, 40.064095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074467, 38.570217, 40.051327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294422, 0.220624, 0.929861,
		-0.689296, -0.624925, 0.366525,
		0.661957, -0.748862, -0.031916,
		34.273052, 38.345558, 40.041752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717243, 38.621967, 40.667732>,  <33.809685, 38.869762, 40.064095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717243, 38.621967, 40.667732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079418, 38.486271, 40.565678>,  <34.296722, 38.404854, 40.504444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079418, 38.486271, 40.565678>,  <33.717243, 38.621967, 40.667732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079418, 38.486271, 40.565678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268075, -0.009038, 0.963356,
		-0.329118, -0.940655, 0.082759,
		0.905438, -0.339243, -0.255141,
		34.351051, 38.384499, 40.489136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875774, 38.081913, 41.115540>,  <33.717243, 38.621967, 40.667732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875774, 38.081913, 41.115540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229172, 38.225628, 40.995308>,  <34.441212, 38.311855, 40.923168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229172, 38.225628, 40.995308>,  <33.875774, 38.081913, 41.115540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229172, 38.225628, 40.995308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339820, -0.049927, 0.939164,
		0.322421, -0.931891, -0.166203,
		0.883497, 0.359286, -0.300578,
		34.494221, 38.333412, 40.905136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300934, 37.604744, 41.299831>,  <33.875774, 38.081913, 41.115540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300934, 37.604744, 41.299831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528175, 37.931641, 41.261086>,  <34.664520, 38.127777, 41.237839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528175, 37.931641, 41.261086>,  <34.300934, 37.604744, 41.299831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528175, 37.931641, 41.261086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401411, -0.172421, 0.899522,
		0.718423, -0.549901, -0.426001,
		0.568100, 0.817239, -0.096865,
		34.698605, 38.176811, 41.232025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962132, 37.450073, 41.673649>,  <34.300934, 37.604744, 41.299831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962132, 37.450073, 41.673649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976002, 37.845318, 41.613739>,  <34.984325, 38.082466, 41.577793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976002, 37.845318, 41.613739>,  <34.962132, 37.450073, 41.673649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976002, 37.845318, 41.613739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393910, 0.124223, 0.910716,
		0.918495, -0.090579, -0.384919,
		0.034676, 0.988111, -0.149778,
		34.986404, 38.141750, 41.568806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565971, 37.607769, 41.998116>,  <34.962132, 37.450073, 41.673649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565971, 37.607769, 41.998116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371281, 37.955467, 41.963440>,  <35.254467, 38.164085, 41.942635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371281, 37.955467, 41.963440>,  <35.565971, 37.607769, 41.998116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371281, 37.955467, 41.963440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413671, 0.316755, 0.853547,
		0.769397, 0.379586, -0.513754,
		-0.486729, 0.869242, -0.086686,
		35.225262, 38.216240, 41.937435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046062, 38.162239, 42.236042>,  <35.565971, 37.607769, 41.998116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046062, 38.162239, 42.236042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684723, 38.333012, 42.252483>,  <35.467918, 38.435474, 42.262348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684723, 38.333012, 42.252483>,  <36.046062, 38.162239, 42.236042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684723, 38.333012, 42.252483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267449, 0.485778, 0.832160,
		0.335303, 0.762727, -0.553009,
		-0.903351, 0.426928, 0.041108,
		35.413719, 38.461090, 42.264816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108807, 38.886925, 42.260273>,  <36.046062, 38.162239, 42.236042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108807, 38.886925, 42.260273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774292, 38.783756, 42.453808>,  <35.573582, 38.721855, 42.569931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774292, 38.783756, 42.453808>,  <36.108807, 38.886925, 42.260273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774292, 38.783756, 42.453808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185732, 0.697014, 0.692586,
		-0.515876, 0.669065, -0.534999,
		-0.836287, -0.257922, 0.483840,
		35.523407, 38.706379, 42.598961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891064, 39.516754, 42.513962>,  <36.108807, 38.886925, 42.260273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891064, 39.516754, 42.513962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653767, 39.273476, 42.724926>,  <35.511391, 39.127506, 42.851505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653767, 39.273476, 42.724926>,  <35.891064, 39.516754, 42.513962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653767, 39.273476, 42.724926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147823, 0.561709, 0.814022,
		-0.791339, 0.560872, -0.243321,
		-0.593238, -0.608198, 0.527412,
		35.475796, 39.091015, 42.883148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478306, 39.972073, 42.916298>,  <35.891064, 39.516754, 42.513962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478306, 39.972073, 42.916298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412113, 39.627705, 43.108730>,  <35.372398, 39.421085, 43.224190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412113, 39.627705, 43.108730>,  <35.478306, 39.972073, 42.916298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412113, 39.627705, 43.108730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124335, 0.502128, 0.855809,
		-0.978345, 0.081802, -0.190133,
		-0.165478, -0.860916, 0.481083,
		35.362469, 39.369431, 43.253056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972008, 40.207245, 43.406876>,  <35.478306, 39.972073, 42.916298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972008, 40.207245, 43.406876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152248, 39.874077, 43.535374>,  <35.260395, 39.674175, 43.612473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152248, 39.874077, 43.535374>,  <34.972008, 40.207245, 43.406876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152248, 39.874077, 43.535374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039393, 0.378049, 0.924947,
		-0.891853, -0.404131, 0.203163,
		0.450606, -0.832920, 0.321245,
		35.287430, 39.624199, 43.631748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885818, 40.403431, 44.001740>,  <34.972008, 40.207245, 43.406876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885818, 40.403431, 44.001740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092392, 40.062531, 44.035130>,  <35.216335, 39.857990, 44.055164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092392, 40.062531, 44.035130>,  <34.885818, 40.403431, 44.001740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092392, 40.062531, 44.035130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129969, 0.174359, 0.976067,
		-0.846406, -0.493225, 0.200811,
		0.516434, -0.852249, 0.083474,
		35.247322, 39.806854, 44.060173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563705, 40.003277, 44.600349>,  <34.885818, 40.403431, 44.001740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563705, 40.003277, 44.600349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945728, 39.897636, 44.546513>,  <35.174942, 39.834251, 44.514210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945728, 39.897636, 44.546513>,  <34.563705, 40.003277, 44.600349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945728, 39.897636, 44.546513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135960, -0.013190, 0.990626,
		-0.263400, -0.964405, 0.023309,
		0.955058, -0.264100, -0.134595,
		35.232246, 39.818405, 44.506134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702557, 39.410381, 45.060158>,  <34.563705, 40.003277, 44.600349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702557, 39.410381, 45.060158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060627, 39.574219, 44.989857>,  <35.275471, 39.672520, 44.947678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060627, 39.574219, 44.989857>,  <34.702557, 39.410381, 45.060158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060627, 39.574219, 44.989857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220829, -0.065073, 0.973139,
		0.387155, -0.909944, -0.148702,
		0.895179, 0.409594, -0.175748,
		35.329182, 39.697098, 44.937134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261883, 38.908741, 45.335590>,  <34.702557, 39.410381, 45.060158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261883, 38.908741, 45.335590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410858, 39.279770, 45.347561>,  <35.500244, 39.502388, 45.354744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410858, 39.279770, 45.347561>,  <35.261883, 38.908741, 45.335590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410858, 39.279770, 45.347561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082079, -0.065038, 0.994502,
		0.924422, -0.367930, -0.100357,
		0.372434, 0.927576, 0.029923,
		35.522587, 39.558044, 45.356537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815540, 38.853146, 45.762783>,  <35.261883, 38.908741, 45.335590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815540, 38.853146, 45.762783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713718, 39.239922, 45.756710>,  <35.652626, 39.471989, 45.753067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713718, 39.239922, 45.756710>,  <35.815540, 38.853146, 45.762783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713718, 39.239922, 45.756710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076293, 0.035728, 0.996445,
		0.964044, 0.252494, -0.082866,
		-0.254557, 0.966939, -0.015179,
		35.637352, 39.530003, 45.752155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421730, 39.198582, 46.075981>,  <35.815540, 38.853146, 45.762783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421730, 39.198582, 46.075981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134777, 39.477219, 46.080505>,  <35.962605, 39.644402, 46.083218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134777, 39.477219, 46.080505>,  <36.421730, 39.198582, 46.075981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134777, 39.477219, 46.080505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276557, 0.269839, 0.922336,
		0.639437, 0.664795, -0.386224,
		-0.717382, 0.696588, 0.011309,
		35.919563, 39.686195, 46.083897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691654, 39.749378, 46.365410>,  <36.421730, 39.198582, 46.075981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691654, 39.749378, 46.365410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304958, 39.838516, 46.415630>,  <36.072941, 39.891998, 46.445763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304958, 39.838516, 46.415630>,  <36.691654, 39.749378, 46.365410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304958, 39.838516, 46.415630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214521, 0.439080, 0.872462,
		0.139300, 0.870372, -0.472279,
		-0.966735, 0.222847, 0.125549,
		36.014938, 39.905369, 46.453297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730217, 40.343197, 46.618832>,  <36.691654, 39.749378, 46.365410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730217, 40.343197, 46.618832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358315, 40.233345, 46.716915>,  <36.135174, 40.167435, 46.775764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358315, 40.233345, 46.716915>,  <36.730217, 40.343197, 46.618832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358315, 40.233345, 46.716915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128156, 0.382953, 0.914835,
		-0.345145, 0.882000, -0.320858,
		-0.929758, -0.274631, 0.245208,
		36.079388, 40.150955, 46.790478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392204, 40.920063, 46.784428>,  <36.730217, 40.343197, 46.618832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392204, 40.920063, 46.784428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214684, 40.612297, 46.968185>,  <36.108170, 40.427639, 47.078438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214684, 40.612297, 46.968185>,  <36.392204, 40.920063, 46.784428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214684, 40.612297, 46.968185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149429, 0.441924, 0.884519,
		-0.883576, 0.461202, -0.081156,
		-0.443807, -0.769413, 0.459391,
		36.081543, 40.381474, 47.106003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850212, 41.256687, 47.274719>,  <36.392204, 40.920063, 46.784428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850212, 41.256687, 47.274719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943508, 40.888405, 47.399872>,  <35.999485, 40.667435, 47.474964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943508, 40.888405, 47.399872>,  <35.850212, 41.256687, 47.274719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943508, 40.888405, 47.399872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127180, 0.347878, 0.928873,
		-0.964066, -0.176858, 0.198235,
		0.233241, -0.920707, 0.312885,
		36.013481, 40.612194, 47.493736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558773, 41.335716, 47.885372>,  <35.850212, 41.256687, 47.274719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558773, 41.335716, 47.885372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777359, 41.001526, 47.908558>,  <35.908512, 40.801014, 47.922470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777359, 41.001526, 47.908558>,  <35.558773, 41.335716, 47.885372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777359, 41.001526, 47.908558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224118, 0.212578, 0.951095,
		-0.806934, -0.506753, 0.303411,
		0.546468, -0.835471, 0.057964,
		35.941299, 40.750885, 47.925945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341206, 41.037552, 48.443882>,  <35.558773, 41.335716, 47.885372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341206, 41.037552, 48.443882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692268, 40.851994, 48.395672>,  <35.902905, 40.740658, 48.366745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692268, 40.851994, 48.395672>,  <35.341206, 41.037552, 48.443882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692268, 40.851994, 48.395672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163879, 0.054132, 0.984994,
		-0.450406, -0.884237, 0.123531,
		0.877655, -0.463891, -0.120527,
		35.955566, 40.712826, 48.359512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421856, 40.440006, 48.969742>,  <35.341206, 41.037552, 48.443882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421856, 40.440006, 48.969742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797432, 40.547794, 48.884151>,  <36.022778, 40.612469, 48.832798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797432, 40.547794, 48.884151>,  <35.421856, 40.440006, 48.969742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797432, 40.547794, 48.884151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221382, 0.002961, 0.975182,
		0.263420, -0.963003, -0.056877,
		0.938935, 0.269474, -0.213972,
		36.079113, 40.628635, 48.819962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886406, 40.086128, 49.364201>,  <35.421856, 40.440006, 48.969742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886406, 40.086128, 49.364201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066429, 40.431499, 49.273033>,  <36.174442, 40.638721, 49.218330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066429, 40.431499, 49.273033>,  <35.886406, 40.086128, 49.364201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066429, 40.431499, 49.273033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363985, 0.055703, 0.929738,
		0.815454, -0.501393, -0.289204,
		0.450055, 0.863424, -0.227922,
		36.201447, 40.690525, 49.204655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466610, 40.112000, 49.821316>,  <35.886406, 40.086128, 49.364201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466610, 40.112000, 49.821316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471779, 40.484013, 49.674416>,  <36.474880, 40.707222, 49.586277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471779, 40.484013, 49.674416>,  <36.466610, 40.112000, 49.821316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471779, 40.484013, 49.674416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471424, 0.318231, 0.822489,
		0.881812, -0.183757, -0.434328,
		0.012921, 0.930034, -0.367247,
		36.475655, 40.763023, 49.564243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090206, 40.330051, 50.040920>,  <36.466610, 40.112000, 49.821316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090206, 40.330051, 50.040920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869293, 40.658470, 49.983131>,  <36.736748, 40.855522, 49.948456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869293, 40.658470, 49.983131>,  <37.090206, 40.330051, 50.040920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869293, 40.658470, 49.983131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190905, 0.293253, 0.936780,
		0.811507, 0.489783, -0.318700,
		-0.552279, 0.821045, -0.144475,
		36.703609, 40.904785, 49.939789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560074, 40.915409, 50.162346>,  <37.090206, 40.330051, 50.040920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560074, 40.915409, 50.162346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194382, 41.076660, 50.178703>,  <36.974968, 41.173412, 50.188519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194382, 41.076660, 50.178703>,  <37.560074, 40.915409, 50.162346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194382, 41.076660, 50.178703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278299, 0.551349, 0.786488,
		0.294508, 0.730412, -0.616250,
		-0.914229, 0.403129, 0.040897,
		36.920113, 41.197598, 50.190971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814304, 41.514648, 50.366493>,  <37.560074, 40.915409, 50.162346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814304, 41.514648, 50.366493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428322, 41.461132, 50.456787>,  <37.196732, 41.429020, 50.510963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428322, 41.461132, 50.456787>,  <37.814304, 41.514648, 50.366493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428322, 41.461132, 50.456787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137034, 0.476694, 0.868323,
		-0.223782, 0.868828, -0.441656,
		-0.964958, -0.133793, 0.225735,
		37.138836, 41.420994, 50.524506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538246, 42.138882, 50.555935>,  <37.814304, 41.514648, 50.366493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538246, 42.138882, 50.555935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341076, 41.837494, 50.729973>,  <37.222775, 41.656662, 50.834396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341076, 41.837494, 50.729973>,  <37.538246, 42.138882, 50.555935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341076, 41.837494, 50.729973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113435, 0.440150, 0.890730,
		-0.862646, 0.488418, -0.131492,
		-0.492925, -0.753469, 0.435097,
		37.193199, 41.611454, 50.860500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151672, 42.400921, 51.038673>,  <37.538246, 42.138882, 50.555935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151672, 42.400921, 51.038673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192921, 42.022289, 51.160885>,  <37.217670, 41.795109, 51.234211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192921, 42.022289, 51.160885>,  <37.151672, 42.400921, 51.038673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192921, 42.022289, 51.160885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312661, 0.322442, 0.893462,
		-0.944250, 0.003391, 0.329211,
		0.103122, -0.946583, 0.305526,
		37.223858, 41.738316, 51.252544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270451, 42.415298, 51.888027>,  <37.151672, 42.400921, 51.038673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270451, 42.415298, 51.888027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369995, 42.034325, 51.817684>,  <37.429722, 41.805740, 51.775478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369995, 42.034325, 51.817684>,  <37.270451, 42.415298, 51.888027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369995, 42.034325, 51.817684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311531, -0.093207, 0.945653,
		-0.917068, -0.290126, 0.273518,
		0.248864, -0.952438, -0.175861,
		37.444653, 41.748592, 51.764927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828083, 43.049656, 51.652649>,  <37.270451, 42.415298, 51.888027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828083, 43.049656, 51.652649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739552, 43.067364, 52.042328>,  <36.686432, 43.077988, 52.276134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739552, 43.067364, 52.042328>,  <36.828083, 43.049656, 51.652649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739552, 43.067364, 52.042328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856471, -0.468882, 0.215887,
		0.466339, 0.882151, 0.065862,
		-0.221327, 0.044268, 0.974194,
		36.673153, 43.080643, 52.334587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370251, 43.244308, 52.053230>,  <36.828083, 43.049656, 51.652649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370251, 43.244308, 52.053230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166206, 43.039593, 52.329739>,  <37.043781, 42.916763, 52.495644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166206, 43.039593, 52.329739>,  <37.370251, 43.244308, 52.053230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166206, 43.039593, 52.329739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857746, -0.362218, 0.364787,
		0.063699, 0.779020, 0.623755,
		-0.510111, -0.511787, 0.691274,
		37.013172, 42.886055, 52.537121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653465, 43.381477, 52.784431>,  <37.370251, 43.244308, 52.053230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653465, 43.381477, 52.784431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479225, 43.025795, 52.728470>,  <37.374680, 42.812386, 52.694893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479225, 43.025795, 52.728470>,  <37.653465, 43.381477, 52.784431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479225, 43.025795, 52.728470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832686, -0.457093, 0.312570,
		-0.341887, 0.019658, 0.939535,
		-0.435600, -0.889202, -0.139905,
		37.348545, 42.759033, 52.686497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952400, 42.861046, 53.288799>,  <37.653465, 43.381477, 52.784431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952400, 42.861046, 53.288799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798092, 42.649525, 52.986397>,  <37.705509, 42.522610, 52.804955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798092, 42.649525, 52.986397>,  <37.952400, 42.861046, 53.288799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798092, 42.649525, 52.986397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739260, -0.667430, 0.089628,
		-0.551977, -0.524309, 0.648399,
		-0.385768, -0.528808, -0.756006,
		37.682362, 42.490883, 52.759594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069229, 42.139744, 53.497971>,  <37.952400, 42.861046, 53.288799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069229, 42.139744, 53.497971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011044, 42.129318, 53.102364>,  <37.976131, 42.123062, 52.864998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011044, 42.129318, 53.102364>,  <38.069229, 42.139744, 53.497971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011044, 42.129318, 53.102364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838706, -0.533503, -0.109297,
		-0.524796, -0.845396, 0.099470,
		-0.145467, -0.026067, -0.989020,
		37.967403, 42.121498, 52.805656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210827, 41.396111, 53.286419>,  <38.069229, 42.139744, 53.497971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210827, 41.396111, 53.286419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271801, 41.682796, 53.014217>,  <38.308384, 41.854809, 52.850895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271801, 41.682796, 53.014217>,  <38.210827, 41.396111, 53.286419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271801, 41.682796, 53.014217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959568, -0.272186, -0.071720,
		-0.236627, -0.642060, -0.729224,
		0.152436, 0.716711, -0.680506,
		38.317532, 41.897808, 52.810066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585880, 41.100239, 52.691353>,  <38.210827, 41.396111, 53.286419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585880, 41.100239, 52.691353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653641, 41.494366, 52.699806>,  <38.694298, 41.730843, 52.704880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653641, 41.494366, 52.699806>,  <38.585880, 41.100239, 52.691353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653641, 41.494366, 52.699806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976101, -0.164778, -0.141689,
		-0.136127, 0.044630, -0.989686,
		0.169402, 0.985321, 0.021133,
		38.704460, 41.789963, 52.706146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478291, 40.465015, 52.999535>,  <38.585880, 41.100239, 52.691353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478291, 40.465015, 52.999535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195461, 40.293762, 53.224659>,  <38.025764, 40.191010, 53.359734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195461, 40.293762, 53.224659>,  <38.478291, 40.465015, 52.999535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195461, 40.293762, 53.224659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084838, -0.841505, -0.533546,
		0.702037, -0.329506, 0.631324,
		-0.707068, -0.428129, 0.562813,
		37.983341, 40.165325, 53.393501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661579, 39.797314, 53.367416>,  <38.478291, 40.465015, 52.999535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661579, 39.797314, 53.367416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272820, 39.814861, 53.274899>,  <38.039566, 39.825390, 53.219387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272820, 39.814861, 53.274899>,  <38.661579, 39.797314, 53.367416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272820, 39.814861, 53.274899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091208, -0.835588, -0.541732,
		-0.217027, -0.547603, 0.808103,
		-0.971895, 0.043865, -0.231290,
		37.981251, 39.828022, 53.205513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392475, 39.024776, 53.449131>,  <38.661579, 39.797314, 53.367416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392475, 39.024776, 53.449131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186398, 39.248211, 53.189114>,  <38.062752, 39.382271, 53.033104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186398, 39.248211, 53.189114>,  <38.392475, 39.024776, 53.449131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186398, 39.248211, 53.189114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180317, -0.670827, -0.719358,
		-0.837891, -0.487823, 0.244883,
		-0.515194, 0.558587, -0.650043,
		38.031841, 39.415787, 52.994102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053253, 38.607716, 53.062176>,  <38.392475, 39.024776, 53.449131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053253, 38.607716, 53.062176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042801, 38.940746, 52.840858>,  <38.036530, 39.140564, 52.708069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042801, 38.940746, 52.840858>,  <38.053253, 38.607716, 53.062176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042801, 38.940746, 52.840858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238049, -0.532375, -0.812348,
		-0.970902, -0.152935, -0.184285,
		-0.026128, 0.832579, -0.553290,
		38.034962, 39.190521, 52.674870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652508, 38.430683, 52.423027>,  <38.053253, 38.607716, 53.062176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652508, 38.430683, 52.423027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814453, 38.774387, 52.297958>,  <37.911621, 38.980610, 52.222919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814453, 38.774387, 52.297958>,  <37.652508, 38.430683, 52.423027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814453, 38.774387, 52.297958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138675, -0.395692, -0.907853,
		-0.903800, 0.324197, -0.279359,
		0.404863, 0.859258, -0.312669,
		37.935913, 39.032166, 52.204159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356255, 38.632729, 51.760483>,  <37.652508, 38.430683, 52.423027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356255, 38.632729, 51.760483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700089, 38.836979, 51.768280>,  <37.906387, 38.959530, 51.772957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700089, 38.836979, 51.768280>,  <37.356255, 38.632729, 51.760483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700089, 38.836979, 51.768280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187177, -0.279142, -0.941830,
		-0.475477, 0.813232, -0.335523,
		0.859585, 0.510621, 0.019493,
		37.957962, 38.990166, 51.774128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310253, 39.069263, 51.222370>,  <37.356255, 38.632729, 51.760483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310253, 39.069263, 51.222370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695915, 39.049545, 51.326664>,  <37.927311, 39.037716, 51.389240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695915, 39.049545, 51.326664>,  <37.310253, 39.069263, 51.222370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695915, 39.049545, 51.326664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251026, -0.149039, -0.956438,
		0.086005, 0.987602, -0.131322,
		0.964152, -0.049293, 0.260732,
		37.985161, 39.034756, 51.404884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594204, 39.464603, 50.734226>,  <37.310253, 39.069263, 51.222370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594204, 39.464603, 50.734226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878384, 39.224323, 50.880875>,  <38.048893, 39.080154, 50.968864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878384, 39.224323, 50.880875>,  <37.594204, 39.464603, 50.734226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878384, 39.224323, 50.880875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335820, -0.168434, -0.926744,
		0.618451, 0.781527, 0.082064,
		0.710453, -0.600705, 0.366620,
		38.091518, 39.044113, 50.990860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208710, 39.770565, 50.443466>,  <37.594204, 39.464603, 50.734226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208710, 39.770565, 50.443466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254322, 39.383503, 50.533474>,  <38.281689, 39.151264, 50.587479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254322, 39.383503, 50.533474>,  <38.208710, 39.770565, 50.443466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254322, 39.383503, 50.533474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387165, -0.165302, -0.907071,
		0.914931, 0.190557, 0.355793,
		0.114036, -0.967659, 0.225017,
		38.288532, 39.093204, 50.600979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823341, 39.463383, 50.019329>,  <38.208710, 39.770565, 50.443466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823341, 39.463383, 50.019329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650093, 39.125359, 50.144722>,  <38.546143, 38.922543, 50.219959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650093, 39.125359, 50.144722>,  <38.823341, 39.463383, 50.019329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650093, 39.125359, 50.144722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280111, -0.456779, -0.844329,
		0.856703, -0.277890, 0.434553,
		-0.433125, -0.845062, 0.313484,
		38.520157, 38.871841, 50.238766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240189, 38.981407, 49.772385>,  <38.823341, 39.463383, 50.019329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240189, 38.981407, 49.772385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910816, 38.771557, 49.858852>,  <38.713192, 38.645645, 49.910732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910816, 38.771557, 49.858852>,  <39.240189, 38.981407, 49.772385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910816, 38.771557, 49.858852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137067, -0.553599, -0.821426,
		0.550617, -0.646755, 0.527758,
		-0.823428, -0.524629, 0.216172,
		38.663788, 38.614166, 49.923702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374569, 38.235249, 49.618710>,  <39.240189, 38.981407, 49.772385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374569, 38.235249, 49.618710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979595, 38.279118, 49.573193>,  <38.742611, 38.305439, 49.545883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979595, 38.279118, 49.573193>,  <39.374569, 38.235249, 49.618710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979595, 38.279118, 49.573193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042171, -0.511064, -0.858508,
		-0.152306, -0.852518, 0.500017,
		-0.987433, 0.109669, -0.113790,
		38.683365, 38.312019, 49.539055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137657, 37.489174, 49.598648>,  <39.374569, 38.235249, 49.618710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137657, 37.489174, 49.598648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848228, 37.706005, 49.427723>,  <38.674572, 37.836105, 49.325169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848228, 37.706005, 49.427723>,  <39.137657, 37.489174, 49.598648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848228, 37.706005, 49.427723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011859, -0.628744, -0.777522,
		-0.690150, -0.557524, 0.461368,
		-0.723569, 0.542078, -0.427316,
		38.631157, 37.868629, 49.299526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869770, 37.067749, 49.140610>,  <39.137657, 37.489174, 49.598648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869770, 37.067749, 49.140610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731934, 37.417324, 49.003502>,  <38.649231, 37.627068, 48.921238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731934, 37.417324, 49.003502>,  <38.869770, 37.067749, 49.140610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731934, 37.417324, 49.003502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286737, -0.445670, -0.848033,
		-0.893888, -0.193944, 0.404165,
		-0.344595, 0.873936, -0.342768,
		38.628555, 37.679504, 48.900673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358154, 36.862991, 48.642254>,  <38.869770, 37.067749, 49.140610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358154, 36.862991, 48.642254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404057, 37.247749, 48.542988>,  <38.431599, 37.478603, 48.483429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404057, 37.247749, 48.542988>,  <38.358154, 36.862991, 48.642254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404057, 37.247749, 48.542988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490024, -0.162489, -0.856431,
		-0.864122, 0.219889, 0.452706,
		0.114760, 0.961897, -0.248161,
		38.438484, 37.536320, 48.468540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741322, 37.003826, 48.344360>,  <38.358154, 36.862991, 48.642254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741322, 37.003826, 48.344360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985355, 37.283760, 48.195751>,  <38.131775, 37.451721, 48.106586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985355, 37.283760, 48.195751>,  <37.741322, 37.003826, 48.344360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985355, 37.283760, 48.195751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501341, -0.022142, -0.864966,
		-0.613556, 0.713966, 0.337346,
		0.610087, 0.699830, -0.371526,
		38.168381, 37.493710, 48.084293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301586, 37.555538, 48.009159>,  <37.741322, 37.003826, 48.344360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301586, 37.555538, 48.009159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666206, 37.574032, 47.845730>,  <37.884979, 37.585129, 47.747673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666206, 37.574032, 47.845730>,  <37.301586, 37.555538, 48.009159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666206, 37.574032, 47.845730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407362, -0.033558, -0.912650,
		-0.055908, 0.998367, -0.011755,
		0.911554, 0.046236, -0.408573,
		37.939674, 37.587902, 47.723160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294098, 38.193264, 47.512775>,  <37.301586, 37.555538, 48.009159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294098, 38.193264, 47.512775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573051, 37.927486, 47.405312>,  <37.740421, 37.768021, 47.340836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573051, 37.927486, 47.405312>,  <37.294098, 38.193264, 47.512775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573051, 37.927486, 47.405312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368117, -0.010446, -0.929721,
		0.614940, 0.747266, -0.251878,
		0.697380, -0.664443, -0.268658,
		37.782265, 37.728153, 47.324715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440304, 38.371590, 46.845566>,  <37.294098, 38.193264, 47.512775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440304, 38.371590, 46.845566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551422, 37.988846, 46.879639>,  <37.618092, 37.759201, 46.900082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551422, 37.988846, 46.879639>,  <37.440304, 38.371590, 46.845566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551422, 37.988846, 46.879639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198480, -0.143926, -0.969480,
		0.939913, 0.252408, -0.229899,
		0.277793, -0.956857, 0.085181,
		37.634762, 37.701790, 46.905193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378307, 38.126091, 46.201805>,  <37.440304, 38.371590, 46.845566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378307, 38.126091, 46.201805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451550, 37.761757, 46.349785>,  <37.495495, 37.543156, 46.438572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451550, 37.761757, 46.349785>,  <37.378307, 38.126091, 46.201805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451550, 37.761757, 46.349785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000905, -0.376463, -0.926431,
		0.983093, 0.169300, -0.069757,
		0.183106, -0.910831, 0.369945,
		37.506481, 37.488506, 46.460770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872147, 37.878025, 45.786804>,  <37.378307, 38.126091, 46.201805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872147, 37.878025, 45.786804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691406, 37.552612, 45.933228>,  <37.582962, 37.357365, 46.021080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691406, 37.552612, 45.933228>,  <37.872147, 37.878025, 45.786804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691406, 37.552612, 45.933228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051792, -0.385718, -0.921162,
		0.890589, -0.435186, 0.132153,
		-0.451851, -0.813532, 0.366056,
		37.555851, 37.308552, 46.043045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298927, 37.369907, 45.604218>,  <37.872147, 37.878025, 45.786804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298927, 37.369907, 45.604218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920181, 37.248104, 45.645645>,  <37.692936, 37.175022, 45.670502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920181, 37.248104, 45.645645>,  <38.298927, 37.369907, 45.604218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920181, 37.248104, 45.645645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046192, -0.447406, -0.893137,
		0.318309, -0.840893, 0.437697,
		-0.946861, -0.304512, 0.103570,
		37.636124, 37.156750, 45.676716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285782, 36.650681, 45.356522>,  <38.298927, 37.369907, 45.604218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285782, 36.650681, 45.356522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906929, 36.778778, 45.364258>,  <37.679615, 36.855637, 45.368900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906929, 36.778778, 45.364258>,  <38.285782, 36.650681, 45.356522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906929, 36.778778, 45.364258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166549, -0.439262, -0.882786,
		-0.274212, -0.839340, 0.469378,
		-0.947137, 0.320245, 0.019340,
		37.622787, 36.874851, 45.370060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909302, 36.063580, 45.027687>,  <38.285782, 36.650681, 45.356522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909302, 36.063580, 45.027687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621044, 36.340897, 45.026134>,  <37.448090, 36.507286, 45.025204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621044, 36.340897, 45.026134>,  <37.909302, 36.063580, 45.027687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621044, 36.340897, 45.026134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348303, -0.366877, -0.862604,
		-0.599462, -0.620280, 0.505864,
		-0.720646, 0.693292, -0.003883,
		37.404850, 36.548885, 45.024971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383041, 35.654503, 44.890232>,  <37.909302, 36.063580, 45.027687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383041, 35.654503, 44.890232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243427, 36.022987, 44.821476>,  <37.159660, 36.244080, 44.780224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243427, 36.022987, 44.821476>,  <37.383041, 35.654503, 44.890232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243427, 36.022987, 44.821476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357529, -0.300454, -0.884252,
		-0.866228, -0.247176, 0.434227,
		-0.349031, 0.921212, -0.171889,
		37.138718, 36.299351, 44.769909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646587, 35.708408, 44.806858>,  <37.383041, 35.654503, 44.890232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646587, 35.708408, 44.806858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814510, 36.016354, 44.614582>,  <36.915264, 36.201122, 44.499214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814510, 36.016354, 44.614582>,  <36.646587, 35.708408, 44.806858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814510, 36.016354, 44.614582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480901, -0.260492, -0.837185,
		-0.769737, 0.582623, 0.260873,
		0.419808, 0.769866, -0.480695,
		36.940453, 36.247314, 44.470375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122482, 36.019955, 44.322830>,  <36.646587, 35.708408, 44.806858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122482, 36.019955, 44.322830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449936, 36.179276, 44.157330>,  <36.646408, 36.274868, 44.058029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449936, 36.179276, 44.157330>,  <36.122482, 36.019955, 44.322830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449936, 36.179276, 44.157330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400156, -0.121192, -0.908398,
		-0.411958, 0.909214, 0.060169,
		0.818637, 0.398299, -0.413754,
		36.695526, 36.298763, 44.033203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836262, 36.312855, 43.782387>,  <36.122482, 36.019955, 44.322830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836262, 36.312855, 43.782387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224869, 36.301044, 43.688347>,  <36.458035, 36.293957, 43.631924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224869, 36.301044, 43.688347>,  <35.836262, 36.312855, 43.782387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224869, 36.301044, 43.688347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235284, -0.237596, -0.942438,
		-0.028033, 0.970915, -0.237776,
		0.971522, -0.029525, -0.235102,
		36.516327, 36.292187, 43.617817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868328, 36.672062, 43.123569>,  <35.836262, 36.312855, 43.782387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868328, 36.672062, 43.123569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202496, 36.455708, 43.162594>,  <36.402996, 36.325897, 43.186008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202496, 36.455708, 43.162594>,  <35.868328, 36.672062, 43.123569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202496, 36.455708, 43.162594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149378, -0.394272, -0.906772,
		0.528922, 0.742964, -0.410179,
		0.835421, -0.540884, 0.097557,
		36.453121, 36.293442, 43.191860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256939, 36.734192, 42.485077>,  <35.868328, 36.672062, 43.123569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256939, 36.734192, 42.485077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376534, 36.398304, 42.666393>,  <36.448292, 36.196770, 42.775185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376534, 36.398304, 42.666393>,  <36.256939, 36.734192, 42.485077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376534, 36.398304, 42.666393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245810, -0.526767, -0.813691,
		0.922053, 0.131861, -0.363909,
		0.298990, -0.839720, 0.453295,
		36.466228, 36.146389, 42.802383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835690, 36.393311, 42.085014>,  <36.256939, 36.734192, 42.485077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835690, 36.393311, 42.085014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654331, 36.083073, 42.260693>,  <36.545517, 35.896931, 42.366100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654331, 36.083073, 42.260693>,  <36.835690, 36.393311, 42.085014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654331, 36.083073, 42.260693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107977, -0.441325, -0.890827,
		0.884745, -0.451319, 0.116348,
		-0.453395, -0.775592, 0.439192,
		36.518314, 35.850395, 42.392448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078682, 35.842392, 41.752979>,  <36.835690, 36.393311, 42.085014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078682, 35.842392, 41.752979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731701, 35.722523, 41.911839>,  <36.523514, 35.650600, 42.007156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731701, 35.722523, 41.911839>,  <37.078682, 35.842392, 41.752979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731701, 35.722523, 41.911839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206603, -0.509206, -0.835479,
		0.452599, -0.806789, 0.379798,
		-0.867450, -0.299669, 0.397150,
		36.471466, 35.632622, 42.030983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996311, 35.091331, 41.572521>,  <37.078682, 35.842392, 41.752979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996311, 35.091331, 41.572521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625694, 35.206413, 41.669472>,  <36.403324, 35.275463, 41.727642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625694, 35.206413, 41.669472>,  <36.996311, 35.091331, 41.572521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625694, 35.206413, 41.669472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323433, -0.280164, -0.903825,
		-0.192123, -0.915826, 0.352636,
		-0.926542, 0.287700, 0.242382,
		36.347733, 35.292725, 41.742188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617203, 34.524780, 41.337910>,  <36.996311, 35.091331, 41.572521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617203, 34.524780, 41.337910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372375, 34.837883, 41.382938>,  <36.225479, 35.025745, 41.409954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372375, 34.837883, 41.382938>,  <36.617203, 34.524780, 41.337910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372375, 34.837883, 41.382938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408403, -0.190980, -0.892599,
		-0.677189, -0.592301, 0.436572,
		-0.612064, 0.782755, 0.112568,
		36.188755, 35.072708, 41.416710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985077, 34.239609, 41.151596>,  <36.617203, 34.524780, 41.337910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985077, 34.239609, 41.151596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946316, 34.636173, 41.116451>,  <35.923061, 34.874111, 41.095364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946316, 34.636173, 41.116451>,  <35.985077, 34.239609, 41.151596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946316, 34.636173, 41.116451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455277, -0.122654, -0.881861,
		-0.885061, -0.045451, 0.463251,
		-0.096901, 0.991408, -0.087863,
		35.917244, 34.933598, 41.090092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245617, 34.311001, 41.016468>,  <35.985077, 34.239609, 41.151596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245617, 34.311001, 41.016468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464188, 34.610546, 40.866467>,  <35.595329, 34.790272, 40.776466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464188, 34.610546, 40.866467>,  <35.245617, 34.311001, 41.016468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464188, 34.610546, 40.866467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529752, -0.037754, -0.847312,
		-0.648675, 0.661654, 0.376079,
		0.546429, 0.748859, -0.375002,
		35.628117, 34.835205, 40.753967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682804, 34.768337, 40.655048>,  <35.245617, 34.311001, 41.016468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682804, 34.768337, 40.655048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038578, 34.865753, 40.500336>,  <35.252041, 34.924202, 40.407509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038578, 34.865753, 40.500336>,  <34.682804, 34.768337, 40.655048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038578, 34.865753, 40.500336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396604, -0.009392, -0.917942,
		-0.227184, 0.969846, 0.088234,
		0.889434, 0.243535, -0.386779,
		35.305408, 34.938812, 40.384300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556484, 35.245548, 40.194775>,  <34.682804, 34.768337, 40.655048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556484, 35.245548, 40.194775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916306, 35.110905, 40.083424>,  <35.132198, 35.030117, 40.016613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916306, 35.110905, 40.083424>,  <34.556484, 35.245548, 40.194775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916306, 35.110905, 40.083424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280978, 0.042052, -0.958793,
		0.334445, 0.940705, -0.056751,
		0.899555, -0.336609, -0.278381,
		35.186172, 35.009922, 39.999908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745419, 35.619053, 39.575661>,  <34.556484, 35.245548, 40.194775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745419, 35.619053, 39.575661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957775, 35.280491, 39.558964>,  <35.085190, 35.077354, 39.548946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957775, 35.280491, 39.558964>,  <34.745419, 35.619053, 39.575661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957775, 35.280491, 39.558964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341254, -0.168437, -0.924757,
		0.775691, 0.505193, -0.378263,
		0.530894, -0.846409, -0.041744,
		35.117043, 35.026569, 39.546440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097610, 35.655216, 38.920517>,  <34.745419, 35.619053, 39.575661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097610, 35.655216, 38.920517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122295, 35.270103, 39.025772>,  <35.137108, 35.039036, 39.088924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122295, 35.270103, 39.025772>,  <35.097610, 35.655216, 38.920517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122295, 35.270103, 39.025772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178959, -0.270042, -0.946071,
		0.981919, 0.011292, -0.188963,
		0.061711, -0.962782, 0.263139,
		35.140808, 34.981270, 39.104713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523735, 35.340874, 38.387737>,  <35.097610, 35.655216, 38.920517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523735, 35.340874, 38.387737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299973, 35.057381, 38.559673>,  <35.165714, 34.887283, 38.662834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299973, 35.057381, 38.559673>,  <35.523735, 35.340874, 38.387737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299973, 35.057381, 38.559673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180766, -0.401779, -0.897718,
		0.808945, -0.579887, 0.096641,
		-0.559403, -0.708735, 0.429841,
		35.132153, 34.844761, 38.688625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733513, 34.877548, 37.976833>,  <35.523735, 35.340874, 38.387737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733513, 34.877548, 37.976833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393707, 34.766991, 38.156578>,  <35.189823, 34.700657, 38.264423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393707, 34.766991, 38.156578>,  <35.733513, 34.877548, 37.976833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393707, 34.766991, 38.156578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326199, -0.394238, -0.859169,
		0.414624, -0.876460, 0.244754,
		-0.849518, -0.276393, 0.449361,
		35.138851, 34.684074, 38.291386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542233, 35.077454, 38.106995>,  <35.733513, 34.877548, 37.976833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542233, 35.077454, 38.106995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929585, 35.170963, 38.141838>,  <37.161995, 35.227070, 38.162743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929585, 35.170963, 38.141838>,  <36.542233, 35.077454, 38.106995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929585, 35.170963, 38.141838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112611, 0.098033, 0.988791,
		0.222617, -0.967336, 0.121259,
		0.968380, 0.233777, 0.087109,
		37.220100, 35.241096, 38.167973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008884, 34.607773, 38.475582>,  <36.542233, 35.077454, 38.106995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008884, 34.607773, 38.475582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189358, 34.962738, 38.513363>,  <37.297642, 35.175716, 38.536030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189358, 34.962738, 38.513363>,  <37.008884, 34.607773, 38.475582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189358, 34.962738, 38.513363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072077, -0.141727, 0.987278,
		0.889514, -0.438639, -0.127908,
		0.451187, 0.887417, 0.094453,
		37.324715, 35.228962, 38.541698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142319, 34.671036, 39.213894>,  <37.008884, 34.607773, 38.475582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142319, 34.671036, 39.213894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334766, 34.992432, 39.073650>,  <37.450237, 35.185268, 38.989506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334766, 34.992432, 39.073650>,  <37.142319, 34.671036, 39.213894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334766, 34.992432, 39.073650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453119, 0.114448, 0.884073,
		0.750469, -0.584215, -0.309013,
		0.481123, 0.803489, -0.350609,
		37.479103, 35.233479, 38.968468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894466, 34.573166, 39.355080>,  <37.142319, 34.671036, 39.213894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894466, 34.573166, 39.355080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854885, 34.969006, 39.313313>,  <37.831135, 35.206509, 39.288254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854885, 34.969006, 39.313313>,  <37.894466, 34.573166, 39.355080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854885, 34.969006, 39.313313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511351, 0.140587, 0.847794,
		0.853656, 0.030496, -0.519944,
		-0.098952, 0.989598, -0.104419,
		37.825199, 35.265884, 39.281986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557690, 34.789406, 39.470093>,  <37.894466, 34.573166, 39.355080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557690, 34.789406, 39.470093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357037, 35.132923, 39.511749>,  <38.236645, 35.339031, 39.536743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357037, 35.132923, 39.511749>,  <38.557690, 34.789406, 39.470093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357037, 35.132923, 39.511749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467303, 0.167694, 0.868047,
		0.728008, 0.484104, -0.485436,
		-0.501630, 0.858791, 0.104141,
		38.206547, 35.390560, 39.542992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018433, 35.327148, 39.718288>,  <38.557690, 34.789406, 39.470093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018433, 35.327148, 39.718288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662411, 35.492512, 39.795128>,  <38.448799, 35.591728, 39.841232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662411, 35.492512, 39.795128>,  <39.018433, 35.327148, 39.718288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662411, 35.492512, 39.795128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337863, 0.315330, 0.886801,
		0.306035, 0.854202, -0.420336,
		-0.890051, 0.413408, 0.192101,
		38.395397, 35.616535, 39.852757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129910, 36.012123, 39.858055>,  <39.018433, 35.327148, 39.718288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129910, 36.012123, 39.858055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778851, 35.944614, 40.037502>,  <38.568214, 35.904110, 40.145172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778851, 35.944614, 40.037502>,  <39.129910, 36.012123, 39.858055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778851, 35.944614, 40.037502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295806, 0.545747, 0.784002,
		-0.377148, 0.820778, -0.429048,
		-0.877644, -0.168769, 0.448619,
		38.515556, 35.893982, 40.172089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935940, 36.593426, 40.196678>,  <39.129910, 36.012123, 39.858055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935940, 36.593426, 40.196678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701450, 36.312874, 40.358868>,  <38.560757, 36.144543, 40.456181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701450, 36.312874, 40.358868>,  <38.935940, 36.593426, 40.196678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701450, 36.312874, 40.358868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274847, 0.298632, 0.913936,
		-0.762101, 0.647215, 0.017706,
		-0.586226, -0.701378, 0.405473,
		38.525581, 36.102459, 40.480511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498684, 36.926842, 40.587654>,  <38.935940, 36.593426, 40.196678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498684, 36.926842, 40.587654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484039, 36.552055, 40.726650>,  <38.475250, 36.327183, 40.810047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484039, 36.552055, 40.726650>,  <38.498684, 36.926842, 40.587654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484039, 36.552055, 40.726650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212417, 0.332479, 0.918878,
		-0.976493, 0.107458, 0.186854,
		-0.036616, -0.936969, 0.347489,
		38.473053, 36.270966, 40.830898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994507, 36.885712, 41.171776>,  <38.498684, 36.926842, 40.587654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994507, 36.885712, 41.171776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257759, 36.585461, 41.195137>,  <38.415710, 36.405308, 41.209152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257759, 36.585461, 41.195137>,  <37.994507, 36.885712, 41.171776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257759, 36.585461, 41.195137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298979, 0.331749, 0.894737,
		-0.690993, -0.571396, 0.442759,
		0.658134, -0.750632, 0.058400,
		38.455200, 36.360271, 41.212658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023895, 36.774208, 41.923031>,  <37.994507, 36.885712, 41.171776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023895, 36.774208, 41.923031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349659, 36.587681, 41.784885>,  <38.545116, 36.475765, 41.701996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349659, 36.587681, 41.784885>,  <38.023895, 36.774208, 41.923031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349659, 36.587681, 41.784885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472184, 0.186590, 0.861525,
		-0.337304, -0.864714, 0.372151,
		0.814412, -0.466320, -0.345366,
		38.593983, 36.447784, 41.681274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283474, 36.276867, 42.368793>,  <38.023895, 36.774208, 41.923031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283474, 36.276867, 42.368793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624321, 36.345913, 42.171169>,  <38.828831, 36.387341, 42.052593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624321, 36.345913, 42.171169>,  <38.283474, 36.276867, 42.368793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624321, 36.345913, 42.171169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470108, 0.162389, 0.867542,
		0.229983, -0.971511, 0.057226,
		0.852119, 0.172618, -0.494061,
		38.879955, 36.397697, 42.022949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802063, 35.893375, 42.768364>,  <38.283474, 36.276867, 42.368793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802063, 35.893375, 42.768364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971966, 36.173645, 42.539059>,  <39.073906, 36.341808, 42.401474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971966, 36.173645, 42.539059>,  <38.802063, 35.893375, 42.768364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971966, 36.173645, 42.539059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694041, 0.154554, 0.703150,
		0.581281, -0.696538, -0.420651,
		0.424757, 0.700677, -0.573265,
		39.099392, 36.383846, 42.367081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546776, 35.765636, 42.770828>,  <38.802063, 35.893375, 42.768364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546776, 35.765636, 42.770828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477924, 36.151039, 42.688831>,  <39.436615, 36.382282, 42.639633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477924, 36.151039, 42.688831>,  <39.546776, 35.765636, 42.770828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477924, 36.151039, 42.688831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702224, 0.265961, 0.660414,
		0.690835, -0.030277, -0.722378,
		-0.172129, 0.963508, -0.204997,
		39.426285, 36.440090, 42.627331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212170, 36.128368, 42.682762>,  <39.546776, 35.765636, 42.770828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212170, 36.128368, 42.682762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919979, 36.380371, 42.788216>,  <39.744667, 36.531574, 42.851486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919979, 36.380371, 42.788216>,  <40.212170, 36.128368, 42.682762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919979, 36.380371, 42.788216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565666, 0.341846, 0.750442,
		0.382662, 0.697305, -0.606082,
		-0.730474, 0.630005, 0.263630,
		39.700836, 36.569374, 42.867306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531116, 36.538525, 43.070114>,  <40.212170, 36.128368, 42.682762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531116, 36.538525, 43.070114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157906, 36.659580, 43.147957>,  <39.933979, 36.732212, 43.194664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157906, 36.659580, 43.147957>,  <40.531116, 36.538525, 43.070114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157906, 36.659580, 43.147957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302419, 0.366544, 0.879880,
		0.194953, 0.879804, -0.433519,
		-0.933025, 0.302640, 0.194611,
		39.877998, 36.750374, 43.206341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694462, 37.203156, 43.290489>,  <40.531116, 36.538525, 43.070114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694462, 37.203156, 43.290489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332233, 37.087296, 43.414455>,  <40.114899, 37.017780, 43.488834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332233, 37.087296, 43.414455>,  <40.694462, 37.203156, 43.290489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332233, 37.087296, 43.414455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152724, 0.458981, 0.875221,
		-0.395752, 0.839905, -0.371403,
		-0.905569, -0.289648, 0.309916,
		40.060562, 37.000401, 43.507431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377483, 37.687618, 43.630924>,  <40.694462, 37.203156, 43.290489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377483, 37.687618, 43.630924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173172, 37.372379, 43.768330>,  <40.050583, 37.183235, 43.850773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173172, 37.372379, 43.768330>,  <40.377483, 37.687618, 43.630924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173172, 37.372379, 43.768330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126616, 0.326251, 0.936765,
		-0.850335, 0.521978, -0.066858,
		-0.510783, -0.788099, 0.343513,
		40.019936, 37.135948, 43.871384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858994, 38.001282, 44.144543>,  <40.377483, 37.687618, 43.630924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858994, 38.001282, 44.144543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923195, 37.613068, 44.216431>,  <39.961716, 37.380138, 44.259563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923195, 37.613068, 44.216431>,  <39.858994, 38.001282, 44.144543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923195, 37.613068, 44.216431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310388, 0.222473, 0.924210,
		-0.936962, -0.092553, 0.336950,
		0.160501, -0.970535, 0.179721,
		39.971344, 37.321907, 44.270348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393700, 37.927319, 44.705341>,  <39.858994, 38.001282, 44.144543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393700, 37.927319, 44.705341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688072, 37.656521, 44.708908>,  <39.864697, 37.494041, 44.711048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688072, 37.656521, 44.708908>,  <39.393700, 37.927319, 44.705341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688072, 37.656521, 44.708908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134080, 0.158634, 0.978191,
		-0.663649, -0.718684, 0.207516,
		0.735930, -0.676999, 0.008917,
		39.908852, 37.453423, 44.711582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227341, 37.414188, 45.188297>,  <39.393700, 37.927319, 44.705341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227341, 37.414188, 45.188297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624424, 37.434490, 45.144569>,  <39.862675, 37.446671, 45.118332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624424, 37.434490, 45.144569>,  <39.227341, 37.414188, 45.188297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624424, 37.434490, 45.144569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098049, 0.187389, 0.977380,
		0.070090, -0.980974, 0.181047,
		0.992711, 0.050753, -0.109317,
		39.922237, 37.449718, 45.111774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571011, 36.994801, 45.730938>,  <39.227341, 37.414188, 45.188297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571011, 36.994801, 45.730938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868778, 37.217022, 45.582775>,  <40.047440, 37.350353, 45.493877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868778, 37.217022, 45.582775>,  <39.571011, 36.994801, 45.730938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868778, 37.217022, 45.582775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264997, 0.263373, 0.927583,
		0.612877, -0.788667, 0.048840,
		0.744418, 0.555553, -0.370410,
		40.092102, 37.383686, 45.471653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102924, 36.853176, 46.146008>,  <39.571011, 36.994801, 45.730938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102924, 36.853176, 46.146008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252148, 37.184978, 45.979755>,  <40.341682, 37.384060, 45.880005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252148, 37.184978, 45.979755>,  <40.102924, 36.853176, 46.146008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252148, 37.184978, 45.979755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251448, 0.340815, 0.905880,
		0.893086, -0.442455, -0.081434,
		0.373057, 0.829505, -0.415631,
		40.364063, 37.433830, 45.855064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603477, 37.026859, 46.553055>,  <40.102924, 36.853176, 46.146008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603477, 37.026859, 46.553055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535431, 37.374214, 46.366741>,  <40.494602, 37.582626, 46.254951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535431, 37.374214, 46.366741>,  <40.603477, 37.026859, 46.553055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535431, 37.374214, 46.366741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132282, 0.488522, 0.862466,
		0.976505, 0.085105, -0.197978,
		-0.170116, 0.868392, -0.465786,
		40.484398, 37.634731, 46.227005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112022, 37.543400, 46.792522>,  <40.603477, 37.026859, 46.553055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112022, 37.543400, 46.792522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811798, 37.762005, 46.643936>,  <40.631664, 37.893166, 46.554787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811798, 37.762005, 46.643936>,  <41.112022, 37.543400, 46.792522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811798, 37.762005, 46.643936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012541, 0.573819, 0.818886,
		0.660680, 0.609968, -0.437541,
		-0.750563, 0.546508, -0.371461,
		40.586628, 37.925957, 46.532497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306915, 38.287952, 46.807262>,  <41.112022, 37.543400, 46.792522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306915, 38.287952, 46.807262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908840, 38.299866, 46.769909>,  <40.669994, 38.307014, 46.747498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908840, 38.299866, 46.769909>,  <41.306915, 38.287952, 46.807262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908840, 38.299866, 46.769909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058300, 0.586026, 0.808192,
		0.078797, 0.809745, -0.581467,
		-0.995184, 0.029784, -0.093385,
		40.610287, 38.308800, 46.741894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080772, 38.935059, 46.693550>,  <41.306915, 38.287952, 46.807262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080772, 38.935059, 46.693550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767067, 38.744488, 46.852524>,  <40.578842, 38.630146, 46.947906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767067, 38.744488, 46.852524>,  <41.080772, 38.935059, 46.693550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767067, 38.744488, 46.852524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103440, 0.732014, 0.673391,
		-0.611745, 0.487006, -0.623372,
		-0.784263, -0.476425, 0.397430,
		40.531788, 38.601559, 46.971752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541069, 39.387321, 46.870220>,  <41.080772, 38.935059, 46.693550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541069, 39.387321, 46.870220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436848, 39.082115, 47.106834>,  <40.374313, 38.898991, 47.248802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436848, 39.082115, 47.106834>,  <40.541069, 39.387321, 46.870220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436848, 39.082115, 47.106834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288436, 0.646235, 0.706530,
		-0.921366, 0.013471, -0.388462,
		-0.260556, -0.763019, 0.591534,
		40.358681, 38.853210, 47.284294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943604, 39.612389, 47.209190>,  <40.541069, 39.387321, 46.870220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943604, 39.612389, 47.209190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124920, 39.345806, 47.445957>,  <40.233711, 39.185856, 47.588017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124920, 39.345806, 47.445957>,  <39.943604, 39.612389, 47.209190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124920, 39.345806, 47.445957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237873, 0.549529, 0.800896,
		-0.859034, -0.503842, 0.090568,
		0.453295, -0.666453, 0.591915,
		40.260910, 39.145870, 47.623531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535458, 39.495892, 47.816921>,  <39.943604, 39.612389, 47.209190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535458, 39.495892, 47.816921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880497, 39.349216, 47.956326>,  <40.087521, 39.261211, 48.039967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880497, 39.349216, 47.956326>,  <39.535458, 39.495892, 47.816921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880497, 39.349216, 47.956326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154280, 0.465407, 0.871547,
		-0.481787, -0.805564, 0.344888,
		0.862600, -0.366690, 0.348509,
		40.139278, 39.239208, 48.060879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379860, 39.234901, 48.464947>,  <39.535458, 39.495892, 47.816921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379860, 39.234901, 48.464947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770397, 39.319351, 48.446293>,  <40.004719, 39.370022, 48.435101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770397, 39.319351, 48.446293>,  <39.379860, 39.234901, 48.464947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770397, 39.319351, 48.446293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010958, 0.263735, 0.964533,
		0.215936, -0.941207, 0.259810,
		0.976346, 0.211124, -0.046636,
		40.063301, 39.382690, 48.432301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566288, 39.141106, 49.024254>,  <39.379860, 39.234901, 48.464947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566288, 39.141106, 49.024254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885689, 39.350594, 48.905525>,  <40.077332, 39.476288, 48.834290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885689, 39.350594, 48.905525>,  <39.566288, 39.141106, 49.024254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885689, 39.350594, 48.905525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009955, 0.481514, 0.876382,
		0.601904, -0.702751, 0.379278,
		0.798506, 0.523723, -0.296821,
		40.125240, 39.507710, 48.816479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973324, 39.101810, 49.639736>,  <39.566288, 39.141106, 49.024254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973324, 39.101810, 49.639736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113934, 39.400433, 49.413788>,  <40.198299, 39.579605, 49.278217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113934, 39.400433, 49.413788>,  <39.973324, 39.101810, 49.639736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113934, 39.400433, 49.413788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170830, 0.644402, 0.745361,
		0.920462, -0.165513, 0.354056,
		0.351522, 0.746560, -0.564873,
		40.219391, 39.624401, 49.244328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467407, 39.499474, 50.091400>,  <39.973324, 39.101810, 49.639736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467407, 39.499474, 50.091400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386395, 39.753853, 49.793530>,  <40.337788, 39.906483, 49.614807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386395, 39.753853, 49.793530>,  <40.467407, 39.499474, 50.091400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386395, 39.753853, 49.793530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383618, 0.648138, 0.657841,
		0.901009, 0.418908, 0.112691,
		-0.202535, 0.635950, -0.744679,
		40.325634, 39.944637, 49.570126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756496, 40.173805, 50.350315>,  <40.467407, 39.499474, 50.091400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756496, 40.173805, 50.350315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481510, 40.236019, 50.066570>,  <40.316517, 40.273346, 49.896324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481510, 40.236019, 50.066570>,  <40.756496, 40.173805, 50.350315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481510, 40.236019, 50.066570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393106, 0.741615, 0.543576,
		0.610618, 0.652546, -0.448697,
		-0.687469, 0.155532, -0.709363,
		40.275269, 40.282681, 49.853760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895931, 40.836353, 49.950268>,  <40.756496, 40.173805, 50.350315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895931, 40.836353, 49.950268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510067, 40.731026, 49.946419>,  <40.278549, 40.667831, 49.944107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510067, 40.731026, 49.946419>,  <40.895931, 40.836353, 49.950268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510067, 40.731026, 49.946419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212588, 0.756199, 0.618846,
		-0.155673, 0.599023, -0.785454,
		-0.964662, -0.263315, -0.009625,
		40.220669, 40.652031, 49.943531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567955, 41.426407, 50.087124>,  <40.895931, 40.836353, 49.950268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567955, 41.426407, 50.087124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254238, 41.181343, 50.126186>,  <40.066010, 41.034306, 50.149624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254238, 41.181343, 50.126186>,  <40.567955, 41.426407, 50.087124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254238, 41.181343, 50.126186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437619, 0.657910, 0.612899,
		-0.439748, 0.437954, -0.784103,
		-0.784291, -0.612659, 0.097657,
		40.018951, 40.997547, 50.155483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936687, 41.855160, 49.963291>,  <40.567955, 41.426407, 50.087124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936687, 41.855160, 49.963291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819962, 41.534569, 50.172089>,  <39.749924, 41.342213, 50.297367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819962, 41.534569, 50.172089>,  <39.936687, 41.855160, 49.963291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819962, 41.534569, 50.172089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545888, 0.587693, 0.597180,
		-0.785397, -0.110680, -0.609018,
		-0.291819, -0.801478, 0.521991,
		39.732414, 41.294125, 50.328686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311325, 42.588646, 49.908279>,  <39.936687, 41.855160, 49.963291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311325, 42.588646, 49.908279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574947, 42.795937, 49.690254>,  <40.733120, 42.920311, 49.559441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574947, 42.795937, 49.690254>,  <40.311325, 42.588646, 49.908279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574947, 42.795937, 49.690254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225452, -0.555270, -0.800529,
		-0.717510, 0.650477, -0.249118,
		0.659053, 0.518223, -0.545063,
		40.772663, 42.951405, 49.526733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958019, 42.935833, 49.308922>,  <40.311325, 42.588646, 49.908279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958019, 42.935833, 49.308922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338654, 42.902790, 49.190491>,  <40.567036, 42.882965, 49.119431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338654, 42.902790, 49.190491>,  <39.958019, 42.935833, 49.308922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338654, 42.902790, 49.190491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293084, -0.534224, -0.792910,
		-0.092674, 0.841297, -0.532570,
		0.951585, -0.082606, -0.296079,
		40.624130, 42.878010, 49.101665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021049, 43.089298, 48.571888>,  <39.958019, 42.935833, 49.308922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021049, 43.089298, 48.571888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376011, 42.911163, 48.619534>,  <40.588989, 42.804283, 48.648121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376011, 42.911163, 48.619534>,  <40.021049, 43.089298, 48.571888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376011, 42.911163, 48.619534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177700, -0.568870, -0.803001,
		0.425366, 0.691420, -0.583954,
		0.887404, -0.445338, 0.119113,
		40.642231, 42.777561, 48.655266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381077, 43.052933, 47.921078>,  <40.021049, 43.089298, 48.571888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381077, 43.052933, 47.921078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598476, 42.773140, 48.106693>,  <40.728916, 42.605263, 48.218063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598476, 42.773140, 48.106693>,  <40.381077, 43.052933, 47.921078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598476, 42.773140, 48.106693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055672, -0.521559, -0.851397,
		0.837560, 0.488569, -0.244527,
		0.543502, -0.699483, 0.464037,
		40.761528, 42.563293, 48.245903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079201, 43.008175, 47.563004>,  <40.381077, 43.052933, 47.921078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079201, 43.008175, 47.563004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030731, 42.658443, 47.750988>,  <41.001648, 42.448605, 47.863777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030731, 42.658443, 47.750988>,  <41.079201, 43.008175, 47.563004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030731, 42.658443, 47.750988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322404, -0.482447, -0.814433,
		0.938815, 0.052831, 0.340347,
		-0.121172, -0.874331, 0.469961,
		40.994381, 42.396145, 47.891975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705917, 42.679970, 47.389763>,  <41.079201, 43.008175, 47.563004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705917, 42.679970, 47.389763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447178, 42.413509, 47.538261>,  <41.291935, 42.253632, 47.627361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447178, 42.413509, 47.538261>,  <41.705917, 42.679970, 47.389763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447178, 42.413509, 47.538261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262516, -0.651554, -0.711733,
		0.716009, -0.362928, 0.596334,
		-0.646851, -0.666154, 0.371244,
		41.253124, 42.213661, 47.649635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006992, 42.091324, 47.350101>,  <41.705917, 42.679970, 47.389763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006992, 42.091324, 47.350101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627602, 41.966686, 47.373096>,  <41.399967, 41.891903, 47.386894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627602, 41.966686, 47.373096>,  <42.006992, 42.091324, 47.350101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627602, 41.966686, 47.373096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161654, -0.631922, -0.757986,
		0.272510, -0.709638, 0.649732,
		-0.948476, -0.311591, 0.057489,
		41.343060, 41.873211, 47.390343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056664, 41.326206, 47.367321>,  <42.006992, 42.091324, 47.350101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056664, 41.326206, 47.367321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694019, 41.439873, 47.242538>,  <41.476433, 41.508072, 47.167671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694019, 41.439873, 47.242538>,  <42.056664, 41.326206, 47.367321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694019, 41.439873, 47.242538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134282, -0.506558, -0.851685,
		-0.400040, -0.814033, 0.421091,
		-0.906607, 0.284163, -0.311953,
		41.422039, 41.525124, 47.148952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753624, 40.694672, 47.151962>,  <42.056664, 41.326206, 47.367321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753624, 40.694672, 47.151962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534252, 40.986904, 46.989246>,  <41.402630, 41.162243, 46.891617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534252, 40.986904, 46.989246>,  <41.753624, 40.694672, 47.151962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534252, 40.986904, 46.989246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033638, -0.505355, -0.862255,
		-0.835520, -0.459202, 0.301727,
		-0.548429, 0.730581, -0.406788,
		41.369724, 41.206078, 46.867210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180897, 40.386086, 46.794750>,  <41.753624, 40.694672, 47.151962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180897, 40.386086, 46.794750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235626, 40.743538, 46.623772>,  <41.268463, 40.958008, 46.521187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235626, 40.743538, 46.623772>,  <41.180897, 40.386086, 46.794750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235626, 40.743538, 46.623772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213328, -0.394796, -0.893660,
		-0.967352, 0.213461, 0.136618,
		0.136825, 0.893628, -0.427444,
		41.276672, 41.011627, 46.495537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663406, 40.334473, 46.343021>,  <41.180897, 40.386086, 46.794750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663406, 40.334473, 46.343021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865849, 40.652805, 46.210049>,  <40.987312, 40.843803, 46.130264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865849, 40.652805, 46.210049>,  <40.663406, 40.334473, 46.343021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865849, 40.652805, 46.210049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147352, -0.299993, -0.942492,
		-0.849790, 0.525987, -0.034561,
		0.506107, 0.795828, -0.332437,
		41.017681, 40.891552, 46.110317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187840, 40.844746, 45.895931>,  <40.663406, 40.334473, 46.343021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187840, 40.844746, 45.895931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581303, 40.863281, 45.826336>,  <40.817379, 40.874405, 45.784576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581303, 40.863281, 45.826336>,  <40.187840, 40.844746, 45.895931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581303, 40.863281, 45.826336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136918, -0.435050, -0.889935,
		-0.116936, 0.899213, -0.421595,
		0.983656, 0.046341, -0.173992,
		40.876400, 40.877182, 45.774139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245071, 40.853889, 45.131290>,  <40.187840, 40.844746, 45.895931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245071, 40.853889, 45.131290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616539, 40.783863, 45.262089>,  <40.839420, 40.741848, 45.340569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616539, 40.783863, 45.262089>,  <40.245071, 40.853889, 45.131290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616539, 40.783863, 45.262089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215929, -0.461648, -0.860381,
		0.301582, 0.869617, -0.390915,
		0.928667, -0.175066, 0.327000,
		40.895138, 40.731342, 45.360188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754086, 41.219467, 44.632072>,  <40.245071, 40.853889, 45.131290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754086, 41.219467, 44.632072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934971, 40.908669, 44.807243>,  <41.043503, 40.722191, 44.912346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934971, 40.908669, 44.807243>,  <40.754086, 41.219467, 44.632072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934971, 40.908669, 44.807243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157345, -0.413802, -0.896667,
		0.877923, 0.474386, -0.064868,
		0.452209, -0.776998, 0.437928,
		41.070633, 40.675568, 44.938622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245716, 41.077972, 44.285362>,  <40.754086, 41.219467, 44.632072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245716, 41.077972, 44.285362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187141, 40.733597, 44.480228>,  <41.151997, 40.526970, 44.597149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187141, 40.733597, 44.480228>,  <41.245716, 41.077972, 44.285362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187141, 40.733597, 44.480228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175103, -0.507259, -0.843817,
		0.973599, -0.038263, 0.225037,
		-0.146439, -0.860944, 0.487167,
		41.143211, 40.475315, 44.626377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826782, 40.645542, 44.094078>,  <41.245716, 41.077972, 44.285362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826782, 40.645542, 44.094078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546894, 40.403973, 44.246746>,  <41.378963, 40.259029, 44.338348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546894, 40.403973, 44.246746>,  <41.826782, 40.645542, 44.094078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546894, 40.403973, 44.246746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117854, -0.624495, -0.772086,
		0.704632, -0.495261, 0.508145,
		-0.699718, -0.603923, 0.381670,
		41.336979, 40.222797, 44.361248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117416, 39.956245, 44.010891>,  <41.826782, 40.645542, 44.094078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117416, 39.956245, 44.010891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726379, 39.882206, 44.050999>,  <41.491756, 39.837780, 44.075062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726379, 39.882206, 44.050999>,  <42.117416, 39.956245, 44.010891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726379, 39.882206, 44.050999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046117, -0.653036, -0.755921,
		0.205400, -0.734358, 0.646939,
		-0.977591, -0.185101, 0.100267,
		41.433102, 39.826675, 44.081078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059734, 39.230198, 44.047638>,  <42.117416, 39.956245, 44.010891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059734, 39.230198, 44.047638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687038, 39.329586, 43.941719>,  <41.463421, 39.389217, 43.878170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687038, 39.329586, 43.941719>,  <42.059734, 39.230198, 44.047638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687038, 39.329586, 43.941719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057574, -0.618914, -0.783346,
		-0.358521, -0.745123, 0.562364,
		-0.931745, 0.248469, -0.264794,
		41.407516, 39.404125, 43.862282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776787, 38.596867, 43.746601>,  <42.059734, 39.230198, 44.047638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776787, 38.596867, 43.746601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550053, 38.899715, 43.616695>,  <41.414013, 39.081425, 43.538750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550053, 38.899715, 43.616695>,  <41.776787, 38.596867, 43.746601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550053, 38.899715, 43.616695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159109, -0.487400, -0.858560,
		-0.808323, -0.434986, 0.396738,
		-0.566831, 0.757119, -0.324766,
		41.380005, 39.126850, 43.519264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137192, 38.335983, 43.489326>,  <41.776787, 38.596867, 43.746601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137192, 38.335983, 43.489326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145889, 38.700989, 43.325939>,  <41.151108, 38.919991, 43.227905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145889, 38.700989, 43.325939>,  <41.137192, 38.335983, 43.489326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145889, 38.700989, 43.325939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268818, -0.388183, -0.881505,
		-0.962945, 0.128973, 0.236859,
		0.021745, 0.912513, -0.408469,
		41.152412, 38.974743, 43.203400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449013, 38.416588, 43.214905>,  <41.137192, 38.335983, 43.489326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449013, 38.416588, 43.214905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720928, 38.658367, 43.048759>,  <40.884079, 38.803436, 42.949074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720928, 38.658367, 43.048759>,  <40.449013, 38.416588, 43.214905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720928, 38.658367, 43.048759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236566, -0.355357, -0.904300,
		-0.694207, 0.712993, -0.098575,
		0.679789, 0.604452, -0.415361,
		40.924866, 38.839703, 42.924152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104122, 38.573494, 42.656761>,  <40.449013, 38.416588, 43.214905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104122, 38.573494, 42.656761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475208, 38.681499, 42.553661>,  <40.697861, 38.746304, 42.491802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475208, 38.681499, 42.553661>,  <40.104122, 38.573494, 42.656761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475208, 38.681499, 42.553661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106420, -0.470529, -0.875944,
		-0.357793, 0.840058, -0.407783,
		0.927717, 0.270010, -0.257751,
		40.753525, 38.762501, 42.476337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051102, 38.902035, 42.054333>,  <40.104122, 38.573494, 42.656761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051102, 38.902035, 42.054333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429329, 38.776321, 42.088081>,  <40.656265, 38.700893, 42.108330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429329, 38.776321, 42.088081>,  <40.051102, 38.902035, 42.054333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429329, 38.776321, 42.088081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033376, -0.351572, -0.935566,
		0.323699, 0.881828, -0.342926,
		0.945571, -0.314288, 0.084372,
		40.713001, 38.682034, 42.113392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379341, 39.141872, 41.423050>,  <40.051102, 38.902035, 42.054333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379341, 39.141872, 41.423050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573608, 38.829731, 41.580620>,  <40.690166, 38.642445, 41.675159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573608, 38.829731, 41.580620>,  <40.379341, 39.141872, 41.423050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573608, 38.829731, 41.580620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013645, -0.443813, -0.896016,
		0.874039, 0.440537, -0.204896,
		0.485664, -0.780357, 0.393921,
		40.719307, 38.595623, 41.698795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533005, 38.784565, 40.822834>,  <40.379341, 39.141872, 41.423050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533005, 38.784565, 40.822834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667820, 38.525806, 41.096458>,  <40.748707, 38.370552, 41.260632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667820, 38.525806, 41.096458>,  <40.533005, 38.784565, 40.822834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667820, 38.525806, 41.096458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157452, -0.677608, -0.718371,
		0.928233, 0.349822, -0.126522,
		0.337035, -0.646894, 0.684058,
		40.768929, 38.331738, 41.301678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207355, 38.458965, 40.647346>,  <40.533005, 38.784565, 40.822834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207355, 38.458965, 40.647346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014847, 38.202072, 40.885979>,  <40.899342, 38.047935, 41.029160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014847, 38.202072, 40.885979>,  <41.207355, 38.458965, 40.647346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014847, 38.202072, 40.885979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154889, -0.732186, -0.663260,
		0.862777, -0.226806, 0.451858,
		-0.481275, -0.642233, 0.596583,
		40.870464, 38.009403, 41.064953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576054, 37.879944, 40.634037>,  <41.207355, 38.458965, 40.647346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576054, 37.879944, 40.634037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207390, 37.771599, 40.745159>,  <40.986191, 37.706593, 40.811832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207390, 37.771599, 40.745159>,  <41.576054, 37.879944, 40.634037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207390, 37.771599, 40.745159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028810, -0.761798, -0.647174,
		0.386928, -0.588470, 0.709922,
		-0.921660, -0.270862, 0.277807,
		40.930893, 37.690342, 40.828503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610535, 37.188751, 40.771660>,  <41.576054, 37.879944, 40.634037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610535, 37.188751, 40.771660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221832, 37.252586, 40.702126>,  <40.988609, 37.290886, 40.660404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221832, 37.252586, 40.702126>,  <41.610535, 37.188751, 40.771660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221832, 37.252586, 40.702126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048271, -0.855510, -0.515531,
		-0.230992, -0.492580, 0.839052,
		-0.971757, 0.159585, -0.173838,
		40.930305, 37.300461, 40.649975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352211, 36.611038, 40.953224>,  <41.610535, 37.188751, 40.771660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352211, 36.611038, 40.953224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093750, 36.773087, 40.694500>,  <40.938671, 36.870316, 40.539265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093750, 36.773087, 40.694500>,  <41.352211, 36.611038, 40.953224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093750, 36.773087, 40.694500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080454, -0.806610, -0.585583,
		-0.758953, -0.430416, 0.488602,
		-0.646156, 0.405120, -0.646808,
		40.899902, 36.894623, 40.500458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999332, 36.073513, 40.743980>,  <41.352211, 36.611038, 40.953224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999332, 36.073513, 40.743980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875645, 36.337994, 40.470573>,  <40.801434, 36.496681, 40.306530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875645, 36.337994, 40.470573>,  <40.999332, 36.073513, 40.743980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875645, 36.337994, 40.470573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106764, -0.738337, -0.665927,
		-0.944980, -0.132939, 0.298898,
		-0.309215, 0.661200, -0.683521,
		40.782879, 36.536354, 40.265518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503571, 35.713333, 40.324287>,  <40.999332, 36.073513, 40.743980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503571, 35.713333, 40.324287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596134, 36.025993, 40.092606>,  <40.651672, 36.213589, 39.953598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596134, 36.025993, 40.092606>,  <40.503571, 35.713333, 40.324287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596134, 36.025993, 40.092606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073392, -0.579638, -0.811563,
		-0.970085, 0.230309, -0.076764,
		0.231406, 0.781651, -0.579200,
		40.665554, 36.260490, 39.918846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047314, 35.681812, 39.745628>,  <40.503571, 35.713333, 40.324287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047314, 35.681812, 39.745628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325409, 35.931854, 39.603703>,  <40.492264, 36.081879, 39.518547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325409, 35.931854, 39.603703>,  <40.047314, 35.681812, 39.745628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325409, 35.931854, 39.603703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062914, -0.438810, -0.896375,
		-0.716023, 0.645514, -0.265749,
		0.695236, 0.625105, -0.354810,
		40.533981, 36.119385, 39.497261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742184, 35.920746, 39.024815>,  <40.047314, 35.681812, 39.745628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742184, 35.920746, 39.024815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141525, 35.941963, 39.033516>,  <40.381130, 35.954693, 39.038738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141525, 35.941963, 39.033516>,  <39.742184, 35.920746, 39.024815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141525, 35.941963, 39.033516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044373, -0.474676, -0.879042,
		-0.036302, 0.878561, -0.476249,
		0.998355, 0.053044, 0.021753,
		40.441032, 35.957878, 39.040043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923908, 35.938847, 38.287052>,  <39.742184, 35.920746, 39.024815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923908, 35.938847, 38.287052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284203, 35.870529, 38.446808>,  <40.500378, 35.829540, 38.542660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284203, 35.870529, 38.446808>,  <39.923908, 35.938847, 38.287052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284203, 35.870529, 38.446808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269892, -0.500384, -0.822663,
		0.340350, 0.848791, -0.404617,
		0.900733, -0.170791, 0.399388,
		40.554424, 35.819290, 38.566624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442818, 36.145763, 37.807629>,  <39.923908, 35.938847, 38.287052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442818, 36.145763, 37.807629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586590, 35.860233, 38.048050>,  <40.672852, 35.688915, 38.192303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586590, 35.860233, 38.048050>,  <40.442818, 36.145763, 37.807629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586590, 35.860233, 38.048050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165877, -0.584968, -0.793913,
		0.918311, 0.385056, -0.091847,
		0.359429, -0.713824, 0.601055,
		40.694420, 35.646088, 38.228367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166397, 35.911022, 37.547508>,  <40.442818, 36.145763, 37.807629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166397, 35.911022, 37.547508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978973, 35.622131, 37.751015>,  <40.866520, 35.448795, 37.873119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978973, 35.622131, 37.751015>,  <41.166397, 35.911022, 37.547508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978973, 35.622131, 37.751015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286418, -0.668980, -0.685880,
		0.835716, -0.175653, 0.520313,
		-0.468556, -0.722228, 0.508766,
		40.838406, 35.405464, 37.903645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558853, 35.417732, 37.219585>,  <41.166397, 35.911022, 37.547508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558853, 35.417732, 37.219585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281334, 35.225479, 37.434113>,  <41.114822, 35.110126, 37.562828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281334, 35.225479, 37.434113>,  <41.558853, 35.417732, 37.219585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281334, 35.225479, 37.434113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090334, -0.796912, -0.597303,
		0.714482, -0.365959, 0.596313,
		-0.693798, -0.480629, 0.536321,
		41.073196, 35.081291, 37.595009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839771, 34.754593, 37.214783>,  <41.558853, 35.417732, 37.219585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839771, 34.754593, 37.214783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453426, 34.716331, 37.311081>,  <41.221619, 34.693375, 37.368862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453426, 34.716331, 37.311081>,  <41.839771, 34.754593, 37.214783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453426, 34.716331, 37.311081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074233, -0.788173, -0.610960,
		0.248191, -0.607975, 0.754167,
		-0.965863, -0.095651, 0.240749,
		41.163666, 34.687637, 37.383305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731522, 34.084553, 37.406879>,  <41.839771, 34.754593, 37.214783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731522, 34.084553, 37.406879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392521, 34.237965, 37.260101>,  <41.189121, 34.330009, 37.172035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392521, 34.237965, 37.260101>,  <41.731522, 34.084553, 37.406879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392521, 34.237965, 37.260101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123190, -0.814559, -0.566848,
		-0.516297, -0.435202, 0.737588,
		-0.847503, 0.383526, -0.366942,
		41.138271, 34.353024, 37.150017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363644, 33.537910, 37.218277>,  <41.731522, 34.084553, 37.406879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363644, 33.537910, 37.218277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173527, 33.824745, 37.014362>,  <41.059456, 33.996845, 36.892014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173527, 33.824745, 37.014362>,  <41.363644, 33.537910, 37.218277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173527, 33.824745, 37.014362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193070, -0.650298, -0.734736,
		-0.858385, -0.250786, 0.447527,
		-0.475288, 0.717090, -0.509787,
		41.030941, 34.039871, 36.861427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998665, 33.087925, 37.189163>,  <41.363644, 33.537910, 37.218277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998665, 33.087925, 37.189163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366821, 33.150700, 37.045910>,  <42.587715, 33.188366, 36.959957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366821, 33.150700, 37.045910>,  <41.998665, 33.087925, 37.189163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366821, 33.150700, 37.045910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382437, 0.170602, -0.908095,
		-0.081417, 0.972762, 0.217039,
		0.920388, 0.156938, -0.358130,
		42.642937, 33.197781, 36.938473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959019, 33.475643, 36.568462>,  <41.998665, 33.087925, 37.189163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959019, 33.475643, 36.568462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325676, 33.325058, 36.514744>,  <42.545670, 33.234707, 36.482513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325676, 33.325058, 36.514744>,  <41.959019, 33.475643, 36.568462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325676, 33.325058, 36.514744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151134, -0.015401, -0.988393,
		0.370021, 0.926305, -0.071013,
		0.916647, -0.376459, -0.134297,
		42.600670, 33.212120, 36.474453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252132, 33.904701, 36.091366>,  <41.959019, 33.475643, 36.568462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252132, 33.904701, 36.091366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433590, 33.548313, 36.083603>,  <42.542465, 33.334480, 36.078945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433590, 33.548313, 36.083603>,  <42.252132, 33.904701, 36.091366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433590, 33.548313, 36.083603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151940, -0.055863, -0.986810,
		0.878138, 0.450605, -0.160716,
		0.453639, -0.890974, -0.019410,
		42.569683, 33.281021, 36.077782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717037, 33.860279, 35.499214>,  <42.252132, 33.904701, 36.091366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717037, 33.860279, 35.499214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574280, 33.498005, 35.590752>,  <42.488625, 33.280640, 35.645676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574280, 33.498005, 35.590752>,  <42.717037, 33.860279, 35.499214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574280, 33.498005, 35.590752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210312, -0.160784, -0.964322,
		0.910163, -0.392288, -0.133094,
		-0.356893, -0.905682, 0.228842,
		42.467213, 33.226299, 35.659405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923264, 34.317692, 36.149281>,  <42.717037, 33.860279, 35.499214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923264, 34.317692, 36.149281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924015, 34.707764, 36.060715>,  <42.924465, 34.941807, 36.007576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924015, 34.707764, 36.060715>,  <42.923264, 34.317692, 36.149281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924015, 34.707764, 36.060715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877935, -0.107619, -0.466528,
		-0.478776, -0.193508, -0.856346,
		0.001882, 0.975178, -0.221413,
		42.924580, 35.000317, 35.994289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349827, 34.547436, 35.627563>,  <42.923264, 34.317692, 36.149281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349827, 34.547436, 35.627563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661503, 34.614166, 35.385895>,  <43.848511, 34.654205, 35.240894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661503, 34.614166, 35.385895>,  <43.349827, 34.547436, 35.627563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661503, 34.614166, 35.385895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542558, 0.662162, -0.516887,
		0.313828, 0.730554, 0.606468,
		0.779194, 0.166831, -0.604172,
		43.895260, 34.664215, 35.204643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574379, 35.239380, 35.502880>,  <43.349827, 34.547436, 35.627563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574379, 35.239380, 35.502880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686123, 35.058002, 35.164330>,  <43.753170, 34.949177, 34.961201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686123, 35.058002, 35.164330>,  <43.574379, 35.239380, 35.502880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686123, 35.058002, 35.164330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665143, 0.544331, -0.511164,
		0.692492, 0.705756, -0.149544,
		0.279356, -0.453445, -0.846374,
		43.769928, 34.921970, 34.910416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741005, 35.713860, 34.970184>,  <43.574379, 35.239380, 35.502880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741005, 35.713860, 34.970184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677502, 35.380226, 34.758865>,  <43.639400, 35.180046, 34.632076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677502, 35.380226, 34.758865>,  <43.741005, 35.713860, 34.970184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677502, 35.380226, 34.758865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713436, 0.466796, -0.522600,
		0.682500, 0.293937, -0.669175,
		-0.158756, -0.834088, -0.528294,
		43.629875, 35.130001, 34.600376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921875, 35.917385, 34.249908>,  <43.741005, 35.713860, 34.970184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921875, 35.917385, 34.249908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670155, 35.607471, 34.274200>,  <43.519123, 35.421524, 34.288776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670155, 35.607471, 34.274200>,  <43.921875, 35.917385, 34.249908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670155, 35.607471, 34.274200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717025, 0.548693, -0.429896,
		0.299753, -0.314082, -0.900833,
		-0.629304, -0.774783, 0.060732,
		43.481365, 35.375038, 34.292419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445442, 35.957764, 33.600643>,  <43.921875, 35.917385, 34.249908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445442, 35.957764, 33.600643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262253, 35.697632, 33.843079>,  <43.152340, 35.541553, 33.988541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262253, 35.697632, 33.843079>,  <43.445442, 35.957764, 33.600643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262253, 35.697632, 33.843079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886588, 0.383965, -0.257938,
		-0.064971, -0.655476, -0.752416,
		-0.457973, -0.650325, 0.606084,
		43.124863, 35.502533, 34.024902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055573, 35.523403, 33.172123>,  <43.445442, 35.957764, 33.600643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055573, 35.523403, 33.172123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900261, 35.521366, 33.540733>,  <42.807076, 35.520145, 33.761902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900261, 35.521366, 33.540733>,  <43.055573, 35.523403, 33.172123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900261, 35.521366, 33.540733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905330, 0.188852, -0.380410,
		-0.172095, -0.981992, -0.077938,
		-0.388279, -0.005093, 0.921528,
		42.783779, 35.519836, 33.817192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492580, 35.119236, 33.179375>,  <43.055573, 35.523403, 33.172123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492580, 35.119236, 33.179375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415470, 35.340866, 33.503311>,  <42.369205, 35.473843, 33.697674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415470, 35.340866, 33.503311>,  <42.492580, 35.119236, 33.179375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415470, 35.340866, 33.503311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965464, 0.040311, -0.257400,
		-0.175265, -0.831490, 0.527169,
		-0.192775, 0.554075, 0.809838,
		42.357639, 35.507088, 33.746262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799465, 34.915840, 33.480789>,  <42.492580, 35.119236, 33.179375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799465, 34.915840, 33.480789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867722, 35.274281, 33.644688>,  <41.908676, 35.489346, 33.743027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867722, 35.274281, 33.644688>,  <41.799465, 34.915840, 33.480789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867722, 35.274281, 33.644688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971600, 0.222208, -0.081340,
		-0.163938, -0.384231, 0.908565,
		0.170637, 0.896097, 0.409748,
		41.918911, 35.543110, 33.767612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305500, 34.966751, 34.123001>,  <41.799465, 34.915840, 33.480789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305500, 34.966751, 34.123001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406509, 35.330215, 33.989998>,  <41.467113, 35.548294, 33.910194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406509, 35.330215, 33.989998>,  <41.305500, 34.966751, 34.123001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406509, 35.330215, 33.989998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946793, 0.302914, 0.108750,
		0.199539, 0.287359, 0.936808,
		0.252522, 0.908663, -0.332512,
		41.482265, 35.602814, 33.890244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056423, 35.536568, 34.660992>,  <41.305500, 34.966751, 34.123001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056423, 35.536568, 34.660992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126266, 35.736607, 34.321720>,  <41.168175, 35.856632, 34.118156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126266, 35.736607, 34.321720>,  <41.056423, 35.536568, 34.660992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126266, 35.736607, 34.321720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949826, 0.312578, -0.011234,
		0.259504, 0.807585, 0.529588,
		0.174610, 0.500101, -0.848181,
		41.178650, 35.886639, 34.067265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638748, 36.087578, 34.769833>,  <41.056423, 35.536568, 34.660992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638748, 36.087578, 34.769833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709293, 36.064831, 34.376759>,  <40.751621, 36.051182, 34.140915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709293, 36.064831, 34.376759>,  <40.638748, 36.087578, 34.769833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709293, 36.064831, 34.376759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925213, 0.331176, -0.185211,
		0.335973, 0.941854, 0.005796,
		0.176361, -0.056863, -0.982682,
		40.762203, 36.047771, 34.081955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357090, 36.720993, 34.372944>,  <40.638748, 36.087578, 34.769833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357090, 36.720993, 34.372944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372288, 36.408028, 34.124306>,  <40.381405, 36.220249, 33.975121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372288, 36.408028, 34.124306>,  <40.357090, 36.720993, 34.372944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372288, 36.408028, 34.124306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862553, 0.288395, -0.415728,
		0.504537, 0.551959, -0.663915,
		0.037995, -0.782413, -0.621600,
		40.383686, 36.173306, 33.937824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955399, 37.084148, 33.932693>,  <40.357090, 36.720993, 34.372944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955399, 37.084148, 33.932693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999817, 36.705315, 33.812233>,  <40.026470, 36.478012, 33.739956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999817, 36.705315, 33.812233>,  <39.955399, 37.084148, 33.932693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999817, 36.705315, 33.812233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852931, 0.064703, -0.517998,
		0.510074, 0.314387, -0.800615,
		0.111050, -0.947087, -0.301154,
		40.033131, 36.421188, 33.721886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003677, 37.058449, 33.294205>,  <39.955399, 37.084148, 33.932693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003677, 37.058449, 33.294205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862858, 36.688568, 33.352150>,  <39.778366, 36.466640, 33.386917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862858, 36.688568, 33.352150>,  <40.003677, 37.058449, 33.294205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862858, 36.688568, 33.352150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721280, 0.169384, -0.671613,
		0.596506, -0.340925, -0.726602,
		-0.352045, -0.924705, 0.144863,
		39.757244, 36.411156, 33.395611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916382, 36.700645, 32.670311>,  <40.003677, 37.058449, 33.294205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916382, 36.700645, 32.670311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684532, 36.507637, 32.932976>,  <39.545422, 36.391830, 33.090576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684532, 36.507637, 32.932976>,  <39.916382, 36.700645, 32.670311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684532, 36.507637, 32.932976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742945, -0.018142, -0.669107,
		0.334773, -0.875695, -0.347973,
		-0.579621, -0.482524, 0.656667,
		39.510647, 36.362881, 33.129974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405067, 36.425247, 32.158588>,  <39.916382, 36.700645, 32.670311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405067, 36.425247, 32.158588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266235, 36.344986, 32.525036>,  <39.182938, 36.296829, 32.744904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266235, 36.344986, 32.525036>,  <39.405067, 36.425247, 32.158588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266235, 36.344986, 32.525036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885613, -0.251304, -0.390559,
		0.308591, -0.946882, -0.090477,
		-0.347076, -0.200650, 0.916121,
		39.162113, 36.284790, 32.799873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083920, 35.741005, 32.155128>,  <39.405067, 36.425247, 32.158588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083920, 35.741005, 32.155128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909878, 35.953468, 32.445938>,  <38.805454, 36.080944, 32.620422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909878, 35.953468, 32.445938>,  <39.083920, 35.741005, 32.155128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909878, 35.953468, 32.445938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900090, -0.236048, -0.366222,
		-0.022908, -0.813730, 0.580792,
		-0.435100, 0.531155, 0.727023,
		38.779346, 36.112816, 32.664043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523708, 35.359093, 32.442245>,  <39.083920, 35.741005, 32.155128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523708, 35.359093, 32.442245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412384, 35.725891, 32.556557>,  <38.345589, 35.945969, 32.625145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412384, 35.725891, 32.556557>,  <38.523708, 35.359093, 32.442245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412384, 35.725891, 32.556557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946238, -0.210690, -0.245443,
		-0.164858, -0.338726, 0.926330,
		-0.278307, 0.916992, 0.285781,
		38.328892, 36.000988, 32.642292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895977, 35.222095, 32.698910>,  <38.523708, 35.359093, 32.442245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895977, 35.222095, 32.698910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900856, 35.615707, 32.627872>,  <37.903782, 35.851875, 32.585251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900856, 35.615707, 32.627872>,  <37.895977, 35.222095, 32.698910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900856, 35.615707, 32.627872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969576, -0.031787, -0.242716,
		-0.244485, 0.175154, 0.953702,
		0.012198, 0.984027, -0.177597,
		37.904514, 35.910915, 32.574593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266186, 35.467976, 32.936401>,  <37.895977, 35.222095, 32.698910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266186, 35.467976, 32.936401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392292, 35.756474, 32.689690>,  <37.467957, 35.929573, 32.541664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392292, 35.756474, 32.689690>,  <37.266186, 35.467976, 32.936401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392292, 35.756474, 32.689690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893765, 0.007159, -0.448478,
		-0.319046, 0.692646, 0.646878,
		0.315268, 0.721242, -0.616778,
		37.486874, 35.972847, 32.504658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730873, 36.016010, 32.979183>,  <37.266186, 35.467976, 32.936401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730873, 36.016010, 32.979183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941292, 36.066036, 32.642700>,  <37.067543, 36.096050, 32.440811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941292, 36.066036, 32.642700>,  <36.730873, 36.016010, 32.979183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941292, 36.066036, 32.642700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849196, 0.131040, -0.511561,
		0.046253, 0.983457, 0.175139,
		0.526048, 0.125066, -0.841209,
		37.099106, 36.103558, 32.390339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467594, 36.596794, 32.634823>,  <36.730873, 36.016010, 32.979183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467594, 36.596794, 32.634823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636452, 36.390850, 32.336372>,  <36.737766, 36.267284, 32.157303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636452, 36.390850, 32.336372>,  <36.467594, 36.596794, 32.634823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636452, 36.390850, 32.336372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874925, -0.015978, -0.483995,
		0.237270, 0.857123, -0.457213,
		0.422149, -0.514864, -0.746127,
		36.763096, 36.236389, 32.112534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238468, 36.943462, 31.977619>,  <36.467594, 36.596794, 32.634823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238468, 36.943462, 31.977619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334702, 36.569229, 31.874233>,  <36.392441, 36.344688, 31.812202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334702, 36.569229, 31.874233>,  <36.238468, 36.943462, 31.977619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334702, 36.569229, 31.874233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913098, -0.127837, -0.387183,
		0.329201, 0.329151, -0.885035,
		0.240582, -0.935584, -0.258463,
		36.406876, 36.288555, 31.796694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245132, 36.716141, 31.237743>,  <36.238468, 36.943462, 31.977619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245132, 36.716141, 31.237743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152321, 36.378765, 31.431559>,  <36.096634, 36.176342, 31.547848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152321, 36.378765, 31.431559>,  <36.245132, 36.716141, 31.237743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152321, 36.378765, 31.431559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893497, -0.012091, -0.448907,
		0.384483, -0.537093, -0.750802,
		-0.232027, -0.843436, 0.484540,
		36.082714, 36.125732, 31.576921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990696, 36.176105, 30.733032>,  <36.245132, 36.716141, 31.237743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990696, 36.176105, 30.733032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830429, 36.097172, 31.090921>,  <35.734268, 36.049812, 31.305655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830429, 36.097172, 31.090921>,  <35.990696, 36.176105, 30.733032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830429, 36.097172, 31.090921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915044, 0.036622, -0.401687,
		0.046503, -0.979650, -0.195251,
		-0.400664, -0.197343, 0.894720,
		35.710228, 36.037971, 31.359339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091076, 36.614704, 30.062351>,  <35.990696, 36.176105, 30.733032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091076, 36.614704, 30.062351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294762, 36.276375, 30.125952>,  <36.416973, 36.073376, 30.164112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294762, 36.276375, 30.125952>,  <36.091076, 36.614704, 30.062351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294762, 36.276375, 30.125952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746678, 0.342308, -0.570349,
		0.427989, 0.409151, 0.805866,
		0.509213, -0.845825, 0.159000,
		36.447525, 36.022629, 30.173653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823570, 36.783360, 30.364658>,  <36.091076, 36.614704, 30.062351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823570, 36.783360, 30.364658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812187, 36.460068, 30.129383>,  <36.805359, 36.266094, 29.988218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812187, 36.460068, 30.129383>,  <36.823570, 36.783360, 30.364658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812187, 36.460068, 30.129383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750763, 0.371211, -0.546404,
		0.659959, -0.457138, 0.596221,
		-0.028458, -0.808225, -0.588186,
		36.803650, 36.217602, 29.952927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460091, 36.378334, 30.256763>,  <36.823570, 36.783360, 30.364658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460091, 36.378334, 30.256763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265583, 36.253784, 29.930185>,  <37.148876, 36.179054, 29.734238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265583, 36.253784, 29.930185>,  <37.460091, 36.378334, 30.256763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265583, 36.253784, 29.930185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822141, 0.153493, -0.548202,
		0.296015, -0.937809, 0.181355,
		-0.486271, -0.311375, -0.816447,
		37.119701, 36.160370, 29.685251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810230, 35.790714, 29.848255>,  <37.460091, 36.378334, 30.256763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810230, 35.790714, 29.848255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581623, 36.021145, 29.614502>,  <37.444458, 36.159401, 29.474251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581623, 36.021145, 29.614502>,  <37.810230, 35.790714, 29.848255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581623, 36.021145, 29.614502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771269, 0.133942, -0.622257,
		-0.280194, -0.806348, -0.520860,
		-0.571521, 0.576075, -0.584381,
		37.410168, 36.193966, 29.439188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940845, 35.499214, 29.229536>,  <37.810230, 35.790714, 29.848255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940845, 35.499214, 29.229536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828533, 35.879047, 29.173748>,  <37.761147, 36.106949, 29.140276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828533, 35.879047, 29.173748>,  <37.940845, 35.499214, 29.229536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828533, 35.879047, 29.173748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698402, 0.102476, -0.708331,
		-0.658327, -0.296293, -0.691965,
		-0.280784, 0.949583, -0.139469,
		37.744297, 36.163921, 29.131907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198788, 35.320229, 28.529696>,  <37.940845, 35.499214, 29.229536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198788, 35.320229, 28.529696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057377, 35.602909, 28.284552>,  <37.972530, 35.772518, 28.137466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057377, 35.602909, 28.284552>,  <38.198788, 35.320229, 28.529696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057377, 35.602909, 28.284552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491935, -0.697709, -0.520771,
		-0.795626, 0.117381, 0.594307,
		-0.353524, 0.706700, -0.612859,
		37.951321, 35.814919, 28.100695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168724, 36.094086, 28.779835>,  <38.198788, 35.320229, 28.529696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168724, 36.094086, 28.779835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089611, 36.191498, 29.159639>,  <38.042141, 36.249943, 29.387522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089611, 36.191498, 29.159639>,  <38.168724, 36.094086, 28.779835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089611, 36.191498, 29.159639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933824, -0.247748, 0.258059,
		0.298084, 0.937718, -0.178409,
		-0.197786, 0.243526, 0.949513,
		38.030273, 36.264557, 29.444494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746277, 36.535374, 28.945288>,  <38.168724, 36.094086, 28.779835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746277, 36.535374, 28.945288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571236, 36.368439, 29.263870>,  <38.466213, 36.268280, 29.455019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571236, 36.368439, 29.263870>,  <38.746277, 36.535374, 28.945288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571236, 36.368439, 29.263870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895770, -0.279295, 0.345819,
		0.078123, 0.864770, 0.496054,
		-0.437599, -0.417334, 0.796454,
		38.439957, 36.243240, 29.502806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998486, 36.759460, 29.638145>,  <38.746277, 36.535374, 28.945288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998486, 36.759460, 29.638145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902145, 36.371281, 29.643919>,  <38.844341, 36.138371, 29.647383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902145, 36.371281, 29.643919>,  <38.998486, 36.759460, 29.638145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902145, 36.371281, 29.643919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802945, -0.190881, 0.564662,
		-0.545223, 0.147592, 0.825196,
		-0.240854, -0.970454, 0.014436,
		38.829887, 36.080143, 29.648251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062099, 36.425034, 30.327362>,  <38.998486, 36.759460, 29.638145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062099, 36.425034, 30.327362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093006, 36.120949, 30.069336>,  <39.111549, 35.938499, 29.914520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093006, 36.120949, 30.069336>,  <39.062099, 36.425034, 30.327362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093006, 36.120949, 30.069336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774555, -0.361617, 0.518940,
		-0.627770, -0.539732, 0.560886,
		0.077262, -0.760212, -0.645064,
		39.116184, 35.892883, 29.875816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179390, 35.820667, 30.742086>,  <39.062099, 36.425034, 30.327362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179390, 35.820667, 30.742086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299660, 35.703804, 30.378937>,  <39.371822, 35.633686, 30.161047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299660, 35.703804, 30.378937>,  <39.179390, 35.820667, 30.742086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299660, 35.703804, 30.378937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856932, -0.335093, 0.391638,
		-0.418644, -0.895743, 0.149607,
		0.300675, -0.292160, -0.907875,
		39.389862, 35.616158, 30.106575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665485, 35.236210, 30.930595>,  <39.179390, 35.820667, 30.742086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665485, 35.236210, 30.930595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745529, 35.331699, 30.550497>,  <39.793556, 35.388992, 30.322437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745529, 35.331699, 30.550497>,  <39.665485, 35.236210, 30.930595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745529, 35.331699, 30.550497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939335, -0.322503, 0.116792,
		-0.278577, -0.915972, -0.288774,
		0.200109, 0.238721, -0.950247,
		39.805561, 35.403316, 30.265423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751450, 34.607914, 30.509157>,  <39.665485, 35.236210, 30.930595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751450, 34.607914, 30.509157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959816, 34.921383, 30.373808>,  <40.084835, 35.109467, 30.292599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959816, 34.921383, 30.373808>,  <39.751450, 34.607914, 30.509157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959816, 34.921383, 30.373808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850502, -0.442725, 0.283975,
		0.072737, -0.435716, -0.897141,
		0.520918, 0.783675, -0.338374,
		40.116093, 35.156487, 30.272295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344505, 34.396709, 30.207319>,  <39.751450, 34.607914, 30.509157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344505, 34.396709, 30.207319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445518, 34.783264, 30.226589>,  <40.506126, 35.015198, 30.238152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445518, 34.783264, 30.226589>,  <40.344505, 34.396709, 30.207319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445518, 34.783264, 30.226589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966729, -0.254091, 0.029551,
		0.040798, 0.039109, -0.998402,
		0.252529, 0.966389, 0.048174,
		40.521278, 35.073181, 30.241041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004375, 34.399719, 29.871290>,  <40.344505, 34.396709, 30.207319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004375, 34.399719, 29.871290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023678, 34.733765, 30.090475>,  <41.035259, 34.934193, 30.221987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023678, 34.733765, 30.090475>,  <41.004375, 34.399719, 29.871290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023678, 34.733765, 30.090475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986479, -0.125871, 0.104953,
		0.156620, 0.535489, -0.829893,
		0.048258, 0.835110, 0.547962,
		41.038155, 34.984299, 30.254864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583481, 34.692898, 29.662016>,  <41.004375, 34.399719, 29.871290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583481, 34.692898, 29.662016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532314, 34.895573, 30.003050>,  <41.501614, 35.017178, 30.207670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532314, 34.895573, 30.003050>,  <41.583481, 34.692898, 29.662016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532314, 34.895573, 30.003050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990141, 0.015778, 0.139181,
		0.057070, 0.861984, -0.503712,
		-0.127920, 0.506689, 0.852586,
		41.493938, 35.047581, 30.258825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120827, 35.242886, 29.644838>,  <41.583481, 34.692898, 29.662016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120827, 35.242886, 29.644838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999111, 35.198620, 30.023291>,  <41.926083, 35.172062, 30.250362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999111, 35.198620, 30.023291>,  <42.120827, 35.242886, 29.644838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999111, 35.198620, 30.023291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952410, -0.054108, 0.299981,
		0.017996, 0.992384, 0.121862,
		-0.304290, -0.110665, 0.946130,
		41.907825, 35.165421, 30.307129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642673, 35.520138, 30.002577>,  <42.120827, 35.242886, 29.644838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642673, 35.520138, 30.002577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465290, 35.329071, 30.305939>,  <42.358860, 35.214432, 30.487955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465290, 35.329071, 30.305939>,  <42.642673, 35.520138, 30.002577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465290, 35.329071, 30.305939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890993, -0.143041, 0.430894,
		-0.097342, 0.866817, 0.489033,
		-0.443458, -0.477669, 0.758404,
		42.332253, 35.185772, 30.533461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923622, 35.832195, 30.579847>,  <42.642673, 35.520138, 30.002577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923622, 35.832195, 30.579847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769821, 35.487801, 30.713032>,  <42.677540, 35.281166, 30.792942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769821, 35.487801, 30.713032>,  <42.923622, 35.832195, 30.579847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769821, 35.487801, 30.713032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879865, -0.232698, 0.414353,
		-0.279272, 0.452282, 0.847023,
		-0.384505, -0.860983, 0.332961,
		42.654469, 35.229507, 30.812920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975819, 35.872807, 31.331339>,  <42.923622, 35.832195, 30.579847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975819, 35.872807, 31.331339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973320, 35.493042, 31.205748>,  <42.971821, 35.265182, 31.130394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973320, 35.493042, 31.205748>,  <42.975819, 35.872807, 31.331339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973320, 35.493042, 31.205748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772146, -0.204093, 0.601778,
		-0.635414, -0.238676, 0.734358,
		-0.006248, -0.949410, -0.313977,
		42.971447, 35.208218, 31.111555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942593, 35.541267, 32.005154>,  <42.975819, 35.872807, 31.331339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942593, 35.541267, 32.005154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078171, 35.313793, 31.705362>,  <43.159519, 35.177307, 31.525488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078171, 35.313793, 31.705362>,  <42.942593, 35.541267, 32.005154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078171, 35.313793, 31.705362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732253, -0.340711, 0.589680,
		-0.590697, -0.748674, 0.300939,
		0.338944, -0.568685, -0.749475,
		43.179855, 35.143188, 31.480520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031666, 34.932510, 32.325623>,  <42.942593, 35.541267, 32.005154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031666, 34.932510, 32.325623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259514, 34.918617, 31.997152>,  <43.396221, 34.910282, 31.800070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259514, 34.918617, 31.997152>,  <43.031666, 34.932510, 32.325623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259514, 34.918617, 31.997152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722972, -0.454073, 0.520701,
		-0.390957, -0.890288, -0.233540,
		0.569618, -0.034729, -0.821176,
		43.430401, 34.908199, 31.750799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375534, 34.355377, 32.425365>,  <43.031666, 34.932510, 32.325623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375534, 34.355377, 32.425365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616581, 34.472992, 32.128613>,  <43.761211, 34.543560, 31.950562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616581, 34.472992, 32.128613>,  <43.375534, 34.355377, 32.425365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616581, 34.472992, 32.128613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797871, -0.240363, 0.552835,
		-0.015764, -0.925076, -0.379456,
		0.602622, 0.294042, -0.741880,
		43.797367, 34.561203, 31.906048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952320, 33.886749, 32.327438>,  <43.375534, 34.355377, 32.425365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952320, 33.886749, 32.327438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087811, 34.226486, 32.165504>,  <44.169106, 34.430328, 32.068344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087811, 34.226486, 32.165504>,  <43.952320, 33.886749, 32.327438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087811, 34.226486, 32.165504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904507, -0.175454, 0.388695,
		0.259105, -0.497833, -0.827664,
		0.338722, 0.849340, -0.404832,
		44.189426, 34.481289, 32.044056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559120, 33.716175, 31.833605>,  <43.952320, 33.886749, 32.327438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559120, 33.716175, 31.833605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594749, 34.097309, 31.949648>,  <44.616127, 34.325989, 32.019276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594749, 34.097309, 31.949648>,  <44.559120, 33.716175, 31.833605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594749, 34.097309, 31.949648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875412, -0.213827, 0.433512,
		0.475100, 0.215350, -0.853173,
		0.089075, 0.952839, 0.290109,
		44.621471, 34.383160, 32.036682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211334, 33.976181, 31.589830>,  <44.559120, 33.716175, 31.833605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211334, 33.976181, 31.589830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089470, 34.188148, 31.906403>,  <45.016350, 34.315331, 32.096348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089470, 34.188148, 31.906403>,  <45.211334, 33.976181, 31.589830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089470, 34.188148, 31.906403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899081, -0.114260, 0.422610,
		0.314377, 0.840316, -0.441628,
		-0.304666, 0.529918, 0.791433,
		44.998070, 34.347122, 32.143833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791912, 33.992603, 31.980652>,  <45.211334, 33.976181, 31.589830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791912, 33.992603, 31.980652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546570, 34.150551, 32.254257>,  <45.399364, 34.245319, 32.418423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546570, 34.150551, 32.254257>,  <45.791912, 33.992603, 31.980652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546570, 34.150551, 32.254257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593800, -0.340494, 0.729017,
		0.520770, 0.853312, -0.025632,
		-0.613352, 0.394871, 0.684015,
		45.362564, 34.269012, 32.459461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227940, 34.366978, 32.404545>,  <45.791912, 33.992603, 31.980652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227940, 34.366978, 32.404545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895966, 34.300907, 32.617680>,  <45.696781, 34.261265, 32.745560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895966, 34.300907, 32.617680>,  <46.227940, 34.366978, 32.404545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895966, 34.300907, 32.617680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557830, -0.236791, 0.795460,
		-0.005220, 0.957417, 0.288662,
		-0.829939, -0.165177, 0.532839,
		45.646984, 34.251354, 32.777531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219090, 34.822411, 33.062782>,  <46.227940, 34.366978, 32.404545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219090, 34.822411, 33.062782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995255, 34.493122, 33.101082>,  <45.860954, 34.295547, 33.124062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995255, 34.493122, 33.101082>,  <46.219090, 34.822411, 33.062782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995255, 34.493122, 33.101082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569560, -0.298070, 0.766000,
		-0.602047, 0.483180, 0.635670,
		-0.559590, -0.823220, 0.095748,
		45.827377, 34.246155, 33.129807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934650, 34.789738, 32.787716>,  <46.219090, 34.822411, 33.062782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934650, 34.789738, 32.787716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.173763, 35.051945, 32.972301>,  <47.317230, 35.209270, 33.083054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.173763, 35.051945, 32.972301>,  <46.934650, 34.789738, 32.787716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.173763, 35.051945, 32.972301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448638, -0.203497, 0.870237,
		0.664362, -0.727246, 0.172443,
		0.597785, 0.655517, 0.461466,
		47.353100, 35.248600, 33.110741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772133, 35.143742, 33.532585>,  <46.934650, 34.789738, 32.787716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772133, 35.143742, 33.532585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911896, 34.867493, 33.785870>,  <46.995754, 34.701744, 33.937840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911896, 34.867493, 33.785870>,  <46.772133, 35.143742, 33.532585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.911896, 34.867493, 33.785870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840802, -0.529337, -0.113379,
		0.413485, -0.492791, -0.765629,
		0.349403, -0.690623, 0.633212,
		47.016716, 34.660305, 33.975834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.872456, 35.266739, 34.331081>,  <46.772133, 35.143742, 33.532585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.872456, 35.266739, 34.331081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.966209, 35.068863, 34.665829>,  <47.022461, 34.950138, 34.866676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.966209, 35.068863, 34.665829>,  <46.872456, 35.266739, 34.331081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.966209, 35.068863, 34.665829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628364, -0.579755, -0.518693,
		0.741769, 0.647433, 0.174956,
		0.234388, -0.494687, 0.836868,
		47.036526, 34.920456, 34.916889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.732632, 35.183231, 34.472233>,  <46.872456, 35.266739, 34.331081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.732632, 35.183231, 34.472233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.519939, 34.890598, 34.642902>,  <47.392326, 34.715019, 34.745304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.519939, 34.890598, 34.642902>,  <47.732632, 35.183231, 34.472233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.519939, 34.890598, 34.642902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714132, -0.658135, -0.238482,
		0.455279, 0.177896, 0.872395,
		-0.531729, -0.731582, 0.426676,
		47.360420, 34.671124, 34.770905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.117165, 41.383373, 43.328613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743282, 41.242355, 43.346695>,  <37.518955, 41.157745, 43.357544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743282, 41.242355, 43.346695>,  <38.117165, 41.383373, 43.328613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743282, 41.242355, 43.346695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066809, -0.299173, -0.951857,
		0.349097, -0.886683, 0.303190,
		-0.934702, -0.352546, 0.045202,
		37.462872, 41.136593, 43.360256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104603, 40.647972, 42.951336>,  <38.117165, 41.383373, 43.328613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104603, 40.647972, 42.951336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728355, 40.783501, 42.942947>,  <37.502605, 40.864819, 42.937916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728355, 40.783501, 42.942947>,  <38.104603, 40.647972, 42.951336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728355, 40.783501, 42.942947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030306, -0.145342, -0.988917,
		-0.338114, -0.929557, 0.146980,
		-0.940617, 0.338821, -0.020971,
		37.446171, 40.885147, 42.936657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651562, 40.088448, 42.688713>,  <38.104603, 40.647972, 42.951336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651562, 40.088448, 42.688713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437950, 40.419514, 42.619678>,  <37.309784, 40.618153, 42.578259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437950, 40.419514, 42.619678>,  <37.651562, 40.088448, 42.688713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437950, 40.419514, 42.619678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175653, -0.308287, -0.934936,
		-0.827017, -0.468970, 0.310016,
		-0.534031, 0.827663, -0.172582,
		37.277740, 40.667812, 42.567905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972797, 39.810040, 42.530384>,  <37.651562, 40.088448, 42.688713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972797, 39.810040, 42.530384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.031879, 40.181778, 42.395031>,  <37.067329, 40.404819, 42.313820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.031879, 40.181778, 42.395031>,  <36.972797, 39.810040, 42.530384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031879, 40.181778, 42.395031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214087, -0.303979, -0.928312,
		-0.965583, 0.209560, 0.154061,
		0.147706, 0.929345, -0.338381,
		37.076191, 40.460583, 42.293518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424999, 39.862450, 42.051506>,  <36.972797, 39.810040, 42.530384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424999, 39.862450, 42.051506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683998, 40.157230, 41.973896>,  <36.839397, 40.334099, 41.927330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683998, 40.157230, 41.973896>,  <36.424999, 39.862450, 42.051506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683998, 40.157230, 41.973896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083876, -0.184139, -0.979315,
		-0.757439, 0.650376, -0.057416,
		0.647496, 0.736956, -0.194026,
		36.878246, 40.378319, 41.915688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216549, 40.218132, 41.535591>,  <36.424999, 39.862450, 42.051506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216549, 40.218132, 41.535591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596325, 40.343353, 41.526081>,  <36.824188, 40.418488, 41.520374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596325, 40.343353, 41.526081>,  <36.216549, 40.218132, 41.535591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596325, 40.343353, 41.526081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042162, -0.202166, -0.978443,
		-0.311110, 0.927969, -0.205143,
		0.949438, 0.313053, -0.023771,
		36.881157, 40.437267, 41.518951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140354, 40.687012, 41.022583>,  <36.216549, 40.218132, 41.535591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140354, 40.687012, 41.022583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511074, 40.545357, 41.072582>,  <36.733505, 40.460365, 41.102581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511074, 40.545357, 41.072582>,  <36.140354, 40.687012, 41.022583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511074, 40.545357, 41.072582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052021, -0.208583, -0.976620,
		0.371933, 0.911635, -0.174892,
		0.926801, -0.354139, 0.125002,
		36.789116, 40.439114, 41.110085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386833, 40.855961, 40.386597>,  <36.140354, 40.687012, 41.022583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386833, 40.855961, 40.386597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665340, 40.615208, 40.543034>,  <36.832443, 40.470757, 40.636898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665340, 40.615208, 40.543034>,  <36.386833, 40.855961, 40.386597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665340, 40.615208, 40.543034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124697, -0.435150, -0.891681,
		0.706871, 0.669614, -0.227926,
		0.696264, -0.601882, 0.391094,
		36.874218, 40.434643, 40.660362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668461, 40.604290, 39.850307>,  <36.386833, 40.855961, 40.386597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668461, 40.604290, 39.850307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801697, 40.346748, 40.125843>,  <36.881638, 40.192223, 40.291164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801697, 40.346748, 40.125843>,  <36.668461, 40.604290, 39.850307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801697, 40.346748, 40.125843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111292, -0.698605, -0.706800,
		0.936304, 0.312091, -0.161043,
		0.333091, -0.643856, 0.688839,
		36.901623, 40.153591, 40.332497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355904, 40.208221, 39.685684>,  <36.668461, 40.604290, 39.850307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355904, 40.208221, 39.685684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134247, 39.970245, 39.918568>,  <37.001251, 39.827461, 40.058300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134247, 39.970245, 39.918568>,  <37.355904, 40.208221, 39.685684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134247, 39.970245, 39.918568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080217, -0.734332, -0.674034,
		0.828546, -0.326809, 0.454650,
		-0.554145, -0.594939, 0.582213,
		36.968002, 39.791763, 40.093231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777466, 39.692516, 39.999447>,  <37.355904, 40.208221, 39.685684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777466, 39.692516, 39.999447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393002, 39.584751, 39.975487>,  <37.162323, 39.520092, 39.961113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393002, 39.584751, 39.975487>,  <37.777466, 39.692516, 39.999447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393002, 39.584751, 39.975487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258651, -0.803599, -0.536031,
		0.096281, -0.530704, 0.842071,
		-0.961160, -0.269412, -0.059896,
		37.104652, 39.503929, 39.957520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760967, 38.973663, 40.106388>,  <37.777466, 39.692516, 39.999447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760967, 38.973663, 40.106388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.398224, 39.046417, 39.954319>,  <37.180580, 39.090069, 39.863075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.398224, 39.046417, 39.954319>,  <37.760967, 38.973663, 40.106388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398224, 39.046417, 39.954319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111815, -0.765910, -0.633150,
		-0.406341, -0.616684, 0.674231,
		-0.906854, 0.181885, -0.380175,
		37.126167, 39.100983, 39.840267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471134, 38.396832, 39.998093>,  <37.760967, 38.973663, 40.106388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471134, 38.396832, 39.998093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240898, 38.603630, 39.744667>,  <37.102757, 38.727711, 39.592613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240898, 38.603630, 39.744667>,  <37.471134, 38.396832, 39.998093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240898, 38.603630, 39.744667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152896, -0.693071, -0.704467,
		-0.803315, -0.502356, 0.319880,
		-0.575593, 0.517001, -0.633563,
		37.068218, 38.758732, 39.554600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121712, 37.926941, 39.566608>,  <37.471134, 38.396832, 39.998093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121712, 37.926941, 39.566608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.064953, 38.272018, 39.372444>,  <37.030895, 38.479065, 39.255943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.064953, 38.272018, 39.372444>,  <37.121712, 37.926941, 39.566608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064953, 38.272018, 39.372444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208025, -0.505414, -0.837426,
		-0.967776, -0.017853, 0.251180,
		-0.141901, 0.862692, -0.485413,
		37.022381, 38.530827, 39.226822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438820, 37.848030, 39.207100>,  <37.121712, 37.926941, 39.566608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438820, 37.848030, 39.207100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636009, 38.138771, 39.015827>,  <36.754322, 38.313217, 38.901062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636009, 38.138771, 39.015827>,  <36.438820, 37.848030, 39.207100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636009, 38.138771, 39.015827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197659, -0.441672, -0.875133,
		-0.847294, 0.525935, -0.074062,
		0.492974, 0.726856, -0.478182,
		36.783901, 38.356827, 38.872372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006210, 38.052364, 38.639668>,  <36.438820, 37.848030, 39.207100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006210, 38.052364, 38.639668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378742, 38.173393, 38.558601>,  <36.602261, 38.246010, 38.509960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378742, 38.173393, 38.558601>,  <36.006210, 38.052364, 38.639668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378742, 38.173393, 38.558601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080461, -0.371786, -0.924825,
		-0.355177, 0.877624, -0.321909,
		0.931330, 0.302576, -0.202664,
		36.658142, 38.264168, 38.497803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016956, 38.282337, 37.909981>,  <36.006210, 38.052364, 38.639668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016956, 38.282337, 37.909981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406445, 38.222420, 37.978611>,  <36.640137, 38.186470, 38.019791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406445, 38.222420, 37.978611>,  <36.016956, 38.282337, 37.909981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406445, 38.222420, 37.978611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060001, -0.558000, -0.827669,
		0.219719, 0.816209, -0.534346,
		0.973716, -0.149793, 0.171577,
		36.698559, 38.177483, 38.030083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411163, 38.406113, 37.259480>,  <36.016956, 38.282337, 37.909981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411163, 38.406113, 37.259480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645214, 38.171501, 37.483482>,  <36.785645, 38.030735, 37.617886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645214, 38.171501, 37.483482>,  <36.411163, 38.406113, 37.259480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645214, 38.171501, 37.483482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048514, -0.664007, -0.746151,
		0.809490, 0.463760, -0.360073,
		0.585125, -0.586533, 0.560006,
		36.820751, 37.995541, 37.651485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947529, 38.120831, 36.765095>,  <36.411163, 38.406113, 37.259480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947529, 38.120831, 36.765095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939278, 37.869995, 37.076565>,  <36.934326, 37.719494, 37.263447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939278, 37.869995, 37.076565>,  <36.947529, 38.120831, 36.765095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939278, 37.869995, 37.076565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175780, -0.768984, -0.614626,
		0.984213, 0.124196, 0.126093,
		-0.020629, -0.627088, 0.778676,
		36.933090, 37.681870, 37.310169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565372, 37.665550, 36.720490>,  <36.947529, 38.120831, 36.765095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565372, 37.665550, 36.720490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317951, 37.481339, 36.975140>,  <37.169498, 37.370811, 37.127930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317951, 37.481339, 36.975140>,  <37.565372, 37.665550, 36.720490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317951, 37.481339, 36.975140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029807, -0.823399, -0.566680,
		0.785174, -0.331548, 0.523046,
		-0.618557, -0.460533, 0.636629,
		37.132385, 37.343178, 37.166130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787060, 36.992069, 36.862518>,  <37.565372, 37.665550, 36.720490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787060, 36.992069, 36.862518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.397816, 36.934830, 36.934727>,  <37.164268, 36.900486, 36.978054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.397816, 36.934830, 36.934727>,  <37.787060, 36.992069, 36.862518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397816, 36.934830, 36.934727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046572, -0.889688, -0.454187,
		0.225603, -0.433565, 0.872425,
		-0.973105, -0.143096, 0.180524,
		37.105885, 36.891899, 36.988884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751217, 36.274517, 37.162312>,  <37.787060, 36.992069, 36.862518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751217, 36.274517, 37.162312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409668, 36.396423, 36.993542>,  <37.204739, 36.469566, 36.892281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409668, 36.396423, 36.993542>,  <37.751217, 36.274517, 37.162312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409668, 36.396423, 36.993542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053874, -0.858039, -0.510750,
		-0.517681, -0.413387, 0.749078,
		-0.853876, 0.304762, -0.421920,
		37.153503, 36.487850, 36.866966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417244, 36.138123, 37.027210>,  <37.751217, 36.274517, 37.162312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417244, 36.138123, 37.027210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717297, 36.283073, 36.805943>,  <38.897327, 36.370045, 36.673183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717297, 36.283073, 36.805943>,  <38.417244, 36.138123, 37.027210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717297, 36.283073, 36.805943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445406, 0.341435, 0.827669,
		0.488796, -0.867241, 0.094716,
		0.750128, 0.362374, -0.553167,
		38.942333, 36.391785, 36.639992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024353, 36.060207, 37.457607>,  <38.417244, 36.138123, 37.027210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024353, 36.060207, 37.457607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087536, 36.336430, 37.175282>,  <39.125446, 36.502163, 37.005886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087536, 36.336430, 37.175282>,  <39.024353, 36.060207, 37.457607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087536, 36.336430, 37.175282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446407, 0.587637, 0.674836,
		0.880779, -0.421675, -0.215450,
		0.157955, 0.690560, -0.705817,
		39.134922, 36.543598, 36.963535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651470, 36.397892, 37.666733>,  <39.024353, 36.060207, 37.457607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651470, 36.397892, 37.666733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.495377, 36.650070, 37.398331>,  <39.401722, 36.801376, 37.237289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.495377, 36.650070, 37.398331>,  <39.651470, 36.397892, 37.666733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495377, 36.650070, 37.398331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381317, 0.774014, 0.505470,
		0.838043, -0.058617, -0.542446,
		-0.390232, 0.630449, -0.671009,
		39.378307, 36.839207, 37.197029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065620, 36.940331, 37.764202>,  <39.651470, 36.397892, 37.666733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065620, 36.940331, 37.764202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.768597, 37.086582, 37.539734>,  <39.590382, 37.174332, 37.405052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.768597, 37.086582, 37.539734>,  <40.065620, 36.940331, 37.764202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768597, 37.086582, 37.539734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169522, 0.913169, 0.370655,
		0.647968, 0.180103, -0.740068,
		-0.742563, 0.365630, -0.561172,
		39.545826, 37.196270, 37.371384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302467, 37.638706, 37.740314>,  <40.065620, 36.940331, 37.764202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302467, 37.638706, 37.740314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.918324, 37.637245, 37.628819>,  <39.687836, 37.636368, 37.561920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.918324, 37.637245, 37.628819>,  <40.302467, 37.638706, 37.740314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918324, 37.637245, 37.628819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135670, 0.879628, 0.455903,
		0.243525, 0.475648, -0.845254,
		-0.960359, -0.003652, -0.278743,
		39.630215, 37.636150, 37.545197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203972, 38.327057, 37.473042>,  <40.302467, 37.638706, 37.740314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203972, 38.327057, 37.473042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.842926, 38.188488, 37.575241>,  <39.626301, 38.105347, 37.636562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.842926, 38.188488, 37.575241>,  <40.203972, 38.327057, 37.473042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842926, 38.188488, 37.575241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103957, 0.751419, 0.651584,
		-0.417712, 0.561567, -0.714254,
		-0.902613, -0.346426, 0.255498,
		39.572144, 38.084560, 37.651890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702408, 38.840164, 37.446339>,  <40.203972, 38.327057, 37.473042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702408, 38.840164, 37.446339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.522686, 38.601238, 37.712074>,  <39.414852, 38.457882, 37.871513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.522686, 38.601238, 37.712074>,  <39.702408, 38.840164, 37.446339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522686, 38.601238, 37.712074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051859, 0.759803, 0.648082,
		-0.891874, 0.256732, -0.372356,
		-0.449301, -0.597318, 0.664335,
		39.387897, 38.422043, 37.911373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071354, 39.115032, 37.661964>,  <39.702408, 38.840164, 37.446339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071354, 39.115032, 37.661964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195030, 38.883377, 37.963692>,  <39.269238, 38.744385, 38.144730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195030, 38.883377, 37.963692>,  <39.071354, 39.115032, 37.661964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195030, 38.883377, 37.963692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033151, 0.799266, 0.600062,
		-0.950421, -0.160529, 0.266328,
		0.309195, -0.579141, 0.754317,
		39.287788, 38.709633, 38.189987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904083, 39.567062, 38.196007>,  <39.071354, 39.115032, 37.661964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904083, 39.567062, 38.196007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104710, 39.284676, 38.396023>,  <39.225086, 39.115246, 38.516033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104710, 39.284676, 38.396023>,  <38.904083, 39.567062, 38.196007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104710, 39.284676, 38.396023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088171, 0.616712, 0.782236,
		-0.860613, -0.348256, 0.371568,
		0.501569, -0.705964, 0.500044,
		39.255180, 39.072887, 38.546036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565529, 39.515045, 38.851227>,  <38.904083, 39.567062, 38.196007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565529, 39.515045, 38.851227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.933174, 39.361580, 38.887058>,  <39.153763, 39.269501, 38.908558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.933174, 39.361580, 38.887058>,  <38.565529, 39.515045, 38.851227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933174, 39.361580, 38.887058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152042, 0.555163, 0.817727,
		-0.363467, -0.737966, 0.568593,
		0.919117, -0.383667, 0.089582,
		39.208908, 39.246479, 38.913933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647884, 39.226170, 39.527000>,  <38.565529, 39.515045, 38.851227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647884, 39.226170, 39.527000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018097, 39.278187, 39.384743>,  <39.240223, 39.309399, 39.299389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018097, 39.278187, 39.384743>,  <38.647884, 39.226170, 39.527000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018097, 39.278187, 39.384743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230457, 0.551779, 0.801517,
		0.300468, -0.823789, 0.480719,
		0.925531, 0.130045, -0.355640,
		39.295757, 39.317200, 39.278049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056549, 38.945446, 40.031216>,  <38.647884, 39.226170, 39.527000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056549, 38.945446, 40.031216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.244175, 39.226368, 39.817024>,  <39.356750, 39.394920, 39.688507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.244175, 39.226368, 39.817024>,  <39.056549, 38.945446, 40.031216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244175, 39.226368, 39.817024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236874, 0.484061, 0.842363,
		0.850804, -0.521967, 0.060699,
		0.469067, 0.702307, -0.535481,
		39.384895, 39.437061, 39.656380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663761, 39.027935, 40.334827>,  <39.056549, 38.945446, 40.031216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663761, 39.027935, 40.334827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597843, 39.369270, 40.136978>,  <39.558292, 39.574070, 40.018269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597843, 39.369270, 40.136978>,  <39.663761, 39.027935, 40.334827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597843, 39.369270, 40.136978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490593, 0.505967, 0.709448,
		0.855663, -0.125744, -0.502025,
		-0.164799, 0.853338, -0.494626,
		39.548405, 39.625271, 39.988590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249691, 39.505802, 40.391899>,  <39.663761, 39.027935, 40.334827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249691, 39.505802, 40.391899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.967804, 39.765644, 40.277782>,  <39.798672, 39.921551, 40.209312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.967804, 39.765644, 40.277782>,  <40.249691, 39.505802, 40.391899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967804, 39.765644, 40.277782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420333, 0.706202, 0.569736,
		0.571575, 0.281585, -0.770722,
		-0.704714, 0.649607, -0.285287,
		39.756390, 39.960526, 40.192196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548923, 40.186211, 40.218937>,  <40.249691, 39.505802, 40.391899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548923, 40.186211, 40.218937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.162941, 40.262012, 40.291550>,  <39.931351, 40.307495, 40.335117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.162941, 40.262012, 40.291550>,  <40.548923, 40.186211, 40.218937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162941, 40.262012, 40.291550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261780, 0.646859, 0.716271,
		0.018312, 0.738689, -0.673797,
		-0.964954, 0.189503, 0.181529,
		39.873455, 40.318863, 40.346008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558643, 40.935658, 40.372803>,  <40.548923, 40.186211, 40.218937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558643, 40.935658, 40.372803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.218800, 40.801773, 40.535843>,  <40.014893, 40.721443, 40.633667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.218800, 40.801773, 40.535843>,  <40.558643, 40.935658, 40.372803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218800, 40.801773, 40.535843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081970, 0.679630, 0.728961,
		-0.521007, 0.652741, -0.549982,
		-0.849607, -0.334712, 0.407598,
		39.963917, 40.701359, 40.658123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164574, 41.507004, 40.495121>,  <40.558643, 40.935658, 40.372803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164574, 41.507004, 40.495121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.022499, 41.223682, 40.739140>,  <39.937256, 41.053692, 40.885551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.022499, 41.223682, 40.739140>,  <40.164574, 41.507004, 40.495121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022499, 41.223682, 40.739140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021730, 0.658674, 0.752115,
		-0.934543, 0.253885, -0.249344,
		-0.355187, -0.708301, 0.610042,
		39.915943, 41.011192, 40.922153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457523, 41.824791, 40.916656>,  <40.164574, 41.507004, 40.495121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457523, 41.824791, 40.916656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.606754, 41.512493, 41.117157>,  <39.696293, 41.325115, 41.237457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.606754, 41.512493, 41.117157>,  <39.457523, 41.824791, 40.916656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606754, 41.512493, 41.117157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204439, 0.457806, 0.865227,
		-0.904995, -0.425275, 0.011185,
		0.373080, -0.780740, 0.501255,
		39.718678, 41.278271, 41.267532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.888035, 41.546738, 41.259998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.201008, 41.405987, 41.465515>,  <39.388790, 41.321537, 41.588825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.201008, 41.405987, 41.465515>,  <38.888035, 41.546738, 41.259998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201008, 41.405987, 41.465515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472521, 0.201937, 0.857872,
		-0.405617, -0.914006, -0.008266,
		0.782431, -0.351874, 0.513796,
		39.435738, 41.300426, 41.619656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619263, 41.251499, 41.873562>,  <38.888035, 41.546738, 41.259998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619263, 41.251499, 41.873562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009514, 41.285351, 41.954548>,  <39.243664, 41.305660, 42.003139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009514, 41.285351, 41.954548>,  <38.619263, 41.251499, 41.873562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009514, 41.285351, 41.954548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218384, 0.284093, 0.933595,
		0.021487, -0.955055, 0.295649,
		0.975627, 0.084625, 0.202465,
		39.302200, 41.310738, 42.015285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649792, 40.972778, 42.594162>,  <38.619263, 41.251499, 41.873562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649792, 40.972778, 42.594162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.948383, 41.218552, 42.491993>,  <39.127537, 41.366016, 42.430691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.948383, 41.218552, 42.491993>,  <38.649792, 40.972778, 42.594162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948383, 41.218552, 42.491993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059033, 0.321196, 0.945171,
		0.662787, -0.720627, 0.203494,
		0.746478, 0.614434, -0.255426,
		39.172325, 41.402882, 42.415367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005917, 40.813644, 43.173916>,  <38.649792, 40.972778, 42.594162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005917, 40.813644, 43.173916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.130722, 41.172890, 43.049953>,  <39.205605, 41.388435, 42.975578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.130722, 41.172890, 43.049953>,  <39.005917, 40.813644, 43.173916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130722, 41.172890, 43.049953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185332, 0.377458, 0.907291,
		0.931825, -0.225653, 0.284222,
		0.312015, 0.898112, -0.309904,
		39.224327, 41.442322, 42.956982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442280, 40.986244, 43.622345>,  <39.005917, 40.813644, 43.173916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442280, 40.986244, 43.622345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.397881, 41.340431, 43.441841>,  <39.371243, 41.552944, 43.333538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.397881, 41.340431, 43.441841>,  <39.442280, 40.986244, 43.622345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397881, 41.340431, 43.441841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096258, 0.461509, 0.881898,
		0.989149, 0.054448, -0.136458,
		-0.110994, 0.885463, -0.451259,
		39.364582, 41.606071, 43.306465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983337, 41.376114, 43.814732>,  <39.442280, 40.986244, 43.622345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983337, 41.376114, 43.814732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.688908, 41.620235, 43.697613>,  <39.512249, 41.766708, 43.627342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.688908, 41.620235, 43.697613>,  <39.983337, 41.376114, 43.814732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688908, 41.620235, 43.697613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014946, 0.447102, 0.894358,
		0.676736, 0.653938, -0.338222,
		-0.736074, 0.610300, -0.292796,
		39.468086, 41.803326, 43.609776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316025, 41.999126, 43.820805>,  <39.983337, 41.376114, 43.814732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316025, 41.999126, 43.820805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.922508, 42.069370, 43.835293>,  <39.686398, 42.111519, 43.843987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.922508, 42.069370, 43.835293>,  <40.316025, 41.999126, 43.820805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922508, 42.069370, 43.835293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113575, 0.453988, 0.883740,
		0.138754, 0.873530, -0.466576,
		-0.983793, 0.175613, 0.036219,
		39.627369, 42.122055, 43.846157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209908, 42.647800, 44.103359>,  <40.316025, 41.999126, 43.820805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209908, 42.647800, 44.103359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832909, 42.518532, 44.137440>,  <39.606709, 42.440971, 44.157887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832909, 42.518532, 44.137440>,  <40.209908, 42.647800, 44.103359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832909, 42.518532, 44.137440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124228, 0.575412, 0.808374,
		-0.310273, 0.751305, -0.582471,
		-0.942496, -0.323175, 0.085202,
		39.550159, 42.421577, 44.163002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723152, 43.242950, 44.214996>,  <40.209908, 42.647800, 44.103359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723152, 43.242950, 44.214996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569386, 42.907246, 44.368813>,  <39.477127, 42.705822, 44.461102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569386, 42.907246, 44.368813>,  <39.723152, 43.242950, 44.214996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569386, 42.907246, 44.368813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192539, 0.480273, 0.855726,
		-0.902859, 0.254914, -0.346214,
		-0.384414, -0.839260, 0.384538,
		39.454060, 42.655468, 44.484173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035755, 43.374920, 44.368694>,  <39.723152, 43.242950, 44.214996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035755, 43.374920, 44.368694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172981, 43.082733, 44.604904>,  <39.255318, 42.907421, 44.746632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172981, 43.082733, 44.604904>,  <39.035755, 43.374920, 44.368694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172981, 43.082733, 44.604904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234890, 0.541991, 0.806890,
		-0.909469, -0.415524, 0.014357,
		0.343064, -0.730469, 0.590527,
		39.275902, 42.863594, 44.782063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634327, 43.459160, 44.935837>,  <39.035755, 43.374920, 44.368694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634327, 43.459160, 44.935837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.933140, 43.237698, 45.083027>,  <39.112427, 43.104820, 45.171341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.933140, 43.237698, 45.083027>,  <38.634327, 43.459160, 44.935837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933140, 43.237698, 45.083027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133329, 0.417497, 0.898843,
		-0.651281, -0.720526, 0.238065,
		0.747031, -0.553659, 0.367975,
		39.157249, 43.071598, 45.193420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327335, 43.295074, 45.464573>,  <38.634327, 43.459160, 44.935837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327335, 43.295074, 45.464573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712021, 43.216503, 45.541016>,  <38.942833, 43.169361, 45.586884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712021, 43.216503, 45.541016>,  <38.327335, 43.295074, 45.464573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712021, 43.216503, 45.541016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065265, 0.513126, 0.855828,
		-0.266170, -0.835535, 0.480661,
		0.961714, -0.196425, 0.191110,
		39.000534, 43.157578, 45.598351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393242, 43.075985, 46.194473>,  <38.327335, 43.295074, 45.464573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393242, 43.075985, 46.194473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.746323, 43.212902, 46.065678>,  <38.958172, 43.295052, 45.988400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.746323, 43.212902, 46.065678>,  <38.393242, 43.075985, 46.194473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746323, 43.212902, 46.065678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139676, 0.463119, 0.875221,
		0.448697, -0.817533, 0.360986,
		0.882701, 0.342288, -0.321990,
		39.011131, 43.315590, 45.969078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770092, 42.967907, 46.756538>,  <38.393242, 43.075985, 46.194473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770092, 42.967907, 46.756538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.932552, 43.253319, 46.528183>,  <39.030029, 43.424568, 46.391171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.932552, 43.253319, 46.528183>,  <38.770092, 42.967907, 46.756538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932552, 43.253319, 46.528183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122609, 0.576534, 0.807821,
		0.905544, -0.398092, 0.146673,
		0.406149, 0.713534, -0.570887,
		39.054398, 43.467381, 46.356918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343422, 43.134529, 47.106312>,  <38.770092, 42.967907, 46.756538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343422, 43.134529, 47.106312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.328403, 43.458660, 46.872406>,  <39.319393, 43.653141, 46.732063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.328403, 43.458660, 46.872406>,  <39.343422, 43.134529, 47.106312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328403, 43.458660, 46.872406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382304, 0.552312, 0.740807,
		0.923273, -0.195743, -0.330532,
		-0.037549, 0.810331, -0.584769,
		39.317139, 43.701759, 46.696976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922749, 43.490471, 47.326817>,  <39.343422, 43.134529, 47.106312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922749, 43.490471, 47.326817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.696815, 43.766186, 47.145336>,  <39.561256, 43.931614, 47.036449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.696815, 43.766186, 47.145336>,  <39.922749, 43.490471, 47.326817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696815, 43.766186, 47.145336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124086, 0.614499, 0.779098,
		0.815821, 0.383764, -0.432621,
		-0.564835, 0.689287, -0.453702,
		39.527367, 43.972973, 47.009224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363731, 44.150864, 47.149158>,  <39.922749, 43.490471, 47.326817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363731, 44.150864, 47.149158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.973236, 44.227501, 47.189655>,  <39.738937, 44.273483, 47.213951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.973236, 44.227501, 47.189655>,  <40.363731, 44.150864, 47.149158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973236, 44.227501, 47.189655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194470, 0.568536, 0.799342,
		0.095589, 0.800037, -0.592286,
		-0.976240, 0.191590, 0.101238,
		39.680363, 44.284977, 47.220028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384029, 44.836979, 47.457462>,  <40.363731, 44.150864, 47.149158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384029, 44.836979, 47.457462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007660, 44.711060, 47.507351>,  <39.781837, 44.635506, 47.537285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007660, 44.711060, 47.507351>,  <40.384029, 44.836979, 47.457462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007660, 44.711060, 47.507351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025971, 0.434339, 0.900375,
		-0.337610, 0.843949, -0.416858,
		-0.940928, -0.314802, 0.124719,
		39.725380, 44.616619, 47.544765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055691, 45.437481, 47.651695>,  <40.384029, 44.836979, 47.457462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055691, 45.437481, 47.651695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.852978, 45.128712, 47.805214>,  <39.731350, 44.943451, 47.897324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.852978, 45.128712, 47.805214>,  <40.055691, 45.437481, 47.651695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852978, 45.128712, 47.805214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084625, 0.398505, 0.913254,
		-0.857909, 0.495302, -0.136632,
		-0.506785, -0.771926, 0.383795,
		39.700943, 44.897133, 47.920353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640812, 45.698544, 48.100288>,  <40.055691, 45.437481, 47.651695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640812, 45.698544, 48.100288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.616562, 45.317238, 48.218689>,  <39.602013, 45.088455, 48.289730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.616562, 45.317238, 48.218689>,  <39.640812, 45.698544, 48.100288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616562, 45.317238, 48.218689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121824, 0.301401, 0.945683,
		-0.990699, 0.021268, -0.134402,
		-0.060621, -0.953260, 0.296006,
		39.598377, 45.031261, 48.307491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133270, 45.648407, 48.580475>,  <39.640812, 45.698544, 48.100288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133270, 45.648407, 48.580475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.336689, 45.315517, 48.668831>,  <39.458740, 45.115784, 48.721844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.336689, 45.315517, 48.668831>,  <39.133270, 45.648407, 48.580475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336689, 45.315517, 48.668831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082501, 0.302460, 0.949585,
		-0.857076, -0.464680, 0.222473,
		0.508542, -0.832220, 0.220895,
		39.489250, 45.065853, 48.735100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779465, 45.228149, 49.158100>,  <39.133270, 45.648407, 48.580475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779465, 45.228149, 49.158100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.166145, 45.126369, 49.147243>,  <39.398155, 45.065300, 49.140732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.166145, 45.126369, 49.147243>,  <38.779465, 45.228149, 49.158100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166145, 45.126369, 49.147243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072984, 0.172518, 0.982299,
		-0.245265, -0.951574, 0.185345,
		0.966705, -0.254451, -0.027137,
		39.456158, 45.050034, 49.139103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918823, 44.683727, 49.643627>,  <38.779465, 45.228149, 49.158100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918823, 44.683727, 49.643627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264664, 44.879311, 49.597351>,  <39.472168, 44.996662, 49.569588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264664, 44.879311, 49.597351>,  <38.918823, 44.683727, 49.643627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264664, 44.879311, 49.597351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119274, 0.023938, 0.992573,
		0.488098, -0.871978, -0.037624,
		0.864600, 0.488960, -0.115688,
		39.524044, 45.025997, 49.562645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941975, 44.837814, 50.379921>,  <38.918823, 44.683727, 49.643627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941975, 44.837814, 50.379921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708652, 44.633472, 50.632519>,  <38.568661, 44.510868, 50.784077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708652, 44.633472, 50.632519>,  <38.941975, 44.837814, 50.379921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708652, 44.633472, 50.632519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281118, -0.602443, -0.747017,
		0.762055, -0.613264, 0.207798,
		-0.583305, -0.510852, 0.631494,
		38.533661, 44.480217, 50.821968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147793, 44.216301, 50.368896>,  <38.941975, 44.837814, 50.379921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147793, 44.216301, 50.368896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762856, 44.209908, 50.477440>,  <38.531891, 44.206070, 50.542564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762856, 44.209908, 50.477440>,  <39.147793, 44.216301, 50.368896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762856, 44.209908, 50.477440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210429, -0.588118, -0.780920,
		0.172073, -0.808617, 0.562610,
		-0.962346, -0.015986, 0.271355,
		38.474152, 44.205112, 50.558846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878826, 43.451035, 50.424988>,  <39.147793, 44.216301, 50.368896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878826, 43.451035, 50.424988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.573544, 43.702564, 50.365540>,  <38.390373, 43.853481, 50.329868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.573544, 43.702564, 50.365540>,  <38.878826, 43.451035, 50.424988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573544, 43.702564, 50.365540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306416, -0.554728, -0.773554,
		-0.568886, -0.544835, 0.616055,
		-0.763202, 0.628834, -0.148631,
		38.344582, 43.891212, 50.320953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400696, 43.064507, 50.259800>,  <38.878826, 43.451035, 50.424988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400696, 43.064507, 50.259800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214466, 43.391018, 50.123016>,  <38.102730, 43.586926, 50.040947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214466, 43.391018, 50.123016>,  <38.400696, 43.064507, 50.259800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214466, 43.391018, 50.123016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431068, -0.546618, -0.717906,
		-0.772930, -0.186830, 0.606361,
		-0.465574, 0.816274, -0.341961,
		38.074795, 43.635899, 50.020428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735462, 42.814941, 50.158211>,  <38.400696, 43.064507, 50.259800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735462, 42.814941, 50.158211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753822, 43.152840, 49.944935>,  <37.764839, 43.355579, 49.816967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753822, 43.152840, 49.944935>,  <37.735462, 42.814941, 50.158211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753822, 43.152840, 49.944935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410589, -0.470630, -0.780976,
		-0.910665, 0.254771, 0.325241,
		0.045901, 0.844748, -0.533193,
		37.767593, 43.406265, 49.784977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118851, 42.884766, 49.946724>,  <37.735462, 42.814941, 50.158211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118851, 42.884766, 49.946724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.350601, 43.093964, 49.696667>,  <37.489651, 43.219482, 49.546631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.350601, 43.093964, 49.696667>,  <37.118851, 42.884766, 49.946724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350601, 43.093964, 49.696667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312594, -0.565759, -0.763022,
		-0.752735, 0.637491, -0.164301,
		0.579374, 0.522994, -0.625142,
		37.524414, 43.250862, 49.509125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858658, 42.651573, 49.358013>,  <37.118851, 42.884766, 49.946724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858658, 42.651573, 49.358013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177189, 42.862995, 49.240379>,  <37.368309, 42.989849, 49.169800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177189, 42.862995, 49.240379>,  <36.858658, 42.651573, 49.358013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177189, 42.862995, 49.240379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042115, -0.533480, -0.844764,
		-0.603394, 0.660326, -0.447086,
		0.796331, 0.528554, -0.294089,
		37.416088, 43.021561, 49.152153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571823, 43.088066, 48.724365>,  <36.858658, 42.651573, 49.358013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571823, 43.088066, 48.724365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.965679, 43.018612, 48.731712>,  <37.201992, 42.976940, 48.736122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.965679, 43.018612, 48.731712>,  <36.571823, 43.088066, 48.724365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965679, 43.018612, 48.731712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034456, -0.296365, -0.954453,
		0.171169, 0.939159, -0.297795,
		0.984639, -0.173634, 0.018368,
		37.261070, 42.966522, 48.737225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835686, 43.352139, 48.004200>,  <36.571823, 43.088066, 48.724365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835686, 43.352139, 48.004200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.129135, 43.109482, 48.126694>,  <37.305202, 42.963886, 48.200191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.129135, 43.109482, 48.126694>,  <36.835686, 43.352139, 48.004200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129135, 43.109482, 48.126694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065773, -0.385138, -0.920512,
		0.676369, 0.695449, -0.242644,
		0.733621, -0.606646, 0.306237,
		37.349220, 42.927486, 48.218563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287891, 43.369209, 47.488480>,  <36.835686, 43.352139, 48.004200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287891, 43.369209, 47.488480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356304, 43.037445, 47.701210>,  <37.397350, 42.838387, 47.828846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356304, 43.037445, 47.701210>,  <37.287891, 43.369209, 47.488480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356304, 43.037445, 47.701210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108406, -0.520657, -0.846856,
		0.979284, 0.202490, 0.000865,
		0.171030, -0.829406, 0.531822,
		37.407612, 42.788624, 47.860756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841648, 43.127602, 47.280571>,  <37.287891, 43.369209, 47.488480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841648, 43.127602, 47.280571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658897, 42.794106, 47.404594>,  <37.549248, 42.594009, 47.479008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658897, 42.794106, 47.404594>,  <37.841648, 43.127602, 47.280571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658897, 42.794106, 47.404594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035477, -0.365365, -0.930188,
		0.888820, -0.413986, 0.196507,
		-0.456881, -0.833741, 0.310057,
		37.521832, 42.543983, 47.497612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300335, 42.477730, 47.069275>,  <37.841648, 43.127602, 47.280571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300335, 42.477730, 47.069275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920452, 42.367279, 47.128349>,  <37.692524, 42.301010, 47.163792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920452, 42.367279, 47.128349>,  <38.300335, 42.477730, 47.069275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920452, 42.367279, 47.128349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009285, -0.496242, -0.868134,
		0.313000, -0.823103, 0.473849,
		-0.949708, -0.276126, 0.147681,
		37.635540, 42.284443, 47.172653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299286, 41.667809, 47.081047>,  <38.300335, 42.477730, 47.069275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299286, 41.667809, 47.081047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943485, 41.824039, 46.986198>,  <37.730003, 41.917778, 46.929287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943485, 41.824039, 46.986198>,  <38.299286, 41.667809, 47.081047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943485, 41.824039, 46.986198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056269, -0.608647, -0.791444,
		-0.453444, -0.690652, 0.563372,
		-0.889507, 0.390576, -0.237125,
		37.676632, 41.941212, 46.915062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033173, 41.106205, 46.757477>,  <38.299286, 41.667809, 47.081047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033173, 41.106205, 46.757477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751133, 41.374969, 46.666824>,  <37.581909, 41.536228, 46.612431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751133, 41.374969, 46.666824>,  <38.033173, 41.106205, 46.757477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751133, 41.374969, 46.666824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093010, -0.404478, -0.909806,
		-0.702980, -0.620426, 0.347693,
		-0.705101, 0.671915, -0.226634,
		37.539604, 41.576546, 46.598835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567516, 40.748257, 46.304695>,  <38.033173, 41.106205, 46.757477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567516, 40.748257, 46.304695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.479599, 41.125229, 46.203892>,  <37.426849, 41.351414, 46.143410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.479599, 41.125229, 46.203892>,  <37.567516, 40.748257, 46.304695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479599, 41.125229, 46.203892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106815, -0.233524, -0.966466,
		-0.969681, -0.239342, -0.049339,
		-0.219794, 0.942434, -0.252009,
		37.413662, 41.407959, 46.128288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039673, 40.699558, 45.812149>,  <37.567516, 40.748257, 46.304695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039673, 40.699558, 45.812149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194572, 41.065865, 45.769409>,  <37.287514, 41.285648, 45.743763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194572, 41.065865, 45.769409>,  <37.039673, 40.699558, 45.812149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194572, 41.065865, 45.769409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025088, -0.105386, -0.994115,
		-0.921634, 0.387651, -0.017836,
		0.387249, 0.915762, -0.106853,
		37.310745, 41.340591, 45.737354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591400, 41.092991, 45.432243>,  <37.039673, 40.699558, 45.812149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591400, 41.092991, 45.432243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943256, 41.273216, 45.371269>,  <37.154369, 41.381351, 45.334686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943256, 41.273216, 45.371269>,  <36.591400, 41.092991, 45.432243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943256, 41.273216, 45.371269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150126, -0.041105, -0.987812,
		-0.451333, 0.891800, 0.031483,
		0.879637, 0.450559, -0.152434,
		37.207146, 41.408382, 45.325539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383945, 41.529953, 44.931049>,  <36.591400, 41.092991, 45.432243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383945, 41.529953, 44.931049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783775, 41.520119, 44.937336>,  <37.023674, 41.514217, 44.941109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783775, 41.520119, 44.937336>,  <36.383945, 41.529953, 44.931049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783775, 41.520119, 44.937336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013952, -0.070341, -0.997425,
		0.025626, 0.997220, -0.069968,
		0.999574, -0.024584, 0.015715,
		37.083649, 41.512745, 44.942051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673298, 42.163704, 44.518101>,  <36.383945, 41.529953, 44.931049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673298, 42.163704, 44.518101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918858, 41.847958, 44.520168>,  <37.066193, 41.658508, 44.521408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918858, 41.847958, 44.520168>,  <36.673298, 42.163704, 44.518101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918858, 41.847958, 44.520168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025566, -0.026423, -0.999324,
		0.788969, 0.613354, -0.036402,
		0.613901, -0.789366, 0.005166,
		37.103027, 41.611149, 44.521717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217728, 42.371475, 44.108433>,  <36.673298, 42.163704, 44.518101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217728, 42.371475, 44.108433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225159, 41.971546, 44.108646>,  <37.229618, 41.731586, 44.108772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225159, 41.971546, 44.108646>,  <37.217728, 42.371475, 44.108433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225159, 41.971546, 44.108646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110046, -0.002573, -0.993923,
		0.993753, 0.018411, -0.110075,
		0.018582, -0.999827, 0.000531,
		37.230732, 41.671597, 44.108807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636810, 42.198097, 43.571568>,  <37.217728, 42.371475, 44.108433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636810, 42.198097, 43.571568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439842, 41.855419, 43.633007>,  <37.321663, 41.649811, 43.669868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439842, 41.855419, 43.633007>,  <37.636810, 42.198097, 43.571568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439842, 41.855419, 43.633007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224530, -0.045464, -0.973406,
		0.840899, -0.513809, -0.169968,
		-0.492417, -0.856699, 0.153596,
		37.292118, 41.598408, 43.679085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.558125, 35.245041, 30.510117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.365673, 34.896519, 30.471451>,  <37.250202, 34.687405, 30.448252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.365673, 34.896519, 30.471451>,  <37.558125, 35.245041, 30.510117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365673, 34.896519, 30.471451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011063, 0.116292, -0.993153,
		0.876578, -0.476769, -0.065591,
		-0.481133, -0.871302, -0.096664,
		37.221333, 34.635128, 30.442451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318493, 35.558113, 31.141552>,  <37.558125, 35.245041, 30.510117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318493, 35.558113, 31.141552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.138546, 35.786758, 31.416033>,  <37.030579, 35.923946, 31.580721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.138546, 35.786758, 31.416033>,  <37.318493, 35.558113, 31.141552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138546, 35.786758, 31.416033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873740, 0.122597, 0.470690,
		0.184927, 0.811312, -0.554594,
		-0.449868, 0.571614, 0.686204,
		37.003586, 35.958244, 31.621895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582169, 36.294930, 31.230192>,  <37.318493, 35.558113, 31.141552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582169, 36.294930, 31.230192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.449036, 36.214676, 31.598751>,  <37.369156, 36.166523, 31.819885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.449036, 36.214676, 31.598751>,  <37.582169, 36.294930, 31.230192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449036, 36.214676, 31.598751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891889, 0.250302, 0.376674,
		-0.306201, 0.947151, 0.095638,
		-0.332829, -0.200637, 0.921396,
		37.349186, 36.154484, 31.875170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847649, 36.788300, 31.570648>,  <37.582169, 36.294930, 31.230192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847649, 36.788300, 31.570648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.739056, 36.536064, 31.861481>,  <37.673901, 36.384724, 32.035980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.739056, 36.536064, 31.861481>,  <37.847649, 36.788300, 31.570648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739056, 36.536064, 31.861481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830239, 0.228685, 0.508337,
		-0.486827, 0.741659, 0.461457,
		-0.271484, -0.630592, 0.727084,
		37.657612, 36.346886, 32.079605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935307, 37.186066, 32.256893>,  <37.847649, 36.788300, 31.570648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935307, 37.186066, 32.256893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899612, 36.804974, 32.373055>,  <37.878197, 36.576317, 32.442753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899612, 36.804974, 32.373055>,  <37.935307, 37.186066, 32.256893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899612, 36.804974, 32.373055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685971, 0.152608, 0.711446,
		-0.722136, 0.262700, 0.639928,
		-0.089239, -0.952733, 0.290408,
		37.872841, 36.519154, 32.460178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020332, 37.181049, 33.096272>,  <37.935307, 37.186066, 32.256893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020332, 37.181049, 33.096272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120663, 36.816696, 32.965199>,  <38.180862, 36.598083, 32.886555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120663, 36.816696, 32.965199>,  <38.020332, 37.181049, 33.096272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120663, 36.816696, 32.965199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868626, 0.062364, 0.491528,
		-0.427289, -0.407923, 0.806860,
		0.250825, -0.910884, -0.327685,
		38.195911, 36.543430, 32.866894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195129, 36.713493, 33.676762>,  <38.020332, 37.181049, 33.096272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195129, 36.713493, 33.676762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380478, 36.522408, 33.378208>,  <38.491688, 36.407757, 33.199078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380478, 36.522408, 33.378208>,  <38.195129, 36.713493, 33.676762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380478, 36.522408, 33.378208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803017, -0.129851, 0.581638,
		-0.374774, -0.868867, 0.323441,
		0.463367, -0.477711, -0.746380,
		38.519489, 36.379093, 33.154293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444149, 36.114101, 33.925743>,  <38.195129, 36.713493, 33.676762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444149, 36.114101, 33.925743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.662292, 36.197617, 33.601032>,  <38.793179, 36.247726, 33.406204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.662292, 36.197617, 33.601032>,  <38.444149, 36.114101, 33.925743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662292, 36.197617, 33.601032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836161, -0.203023, 0.509525,
		-0.058428, -0.956655, -0.285302,
		0.545363, 0.208788, -0.811780,
		38.825901, 36.260254, 33.357498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767223, 35.596050, 33.853844>,  <38.444149, 36.114101, 33.925743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767223, 35.596050, 33.853844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992073, 35.857605, 33.651279>,  <39.126984, 36.014538, 33.529743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992073, 35.857605, 33.651279>,  <38.767223, 35.596050, 33.853844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992073, 35.857605, 33.651279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815188, -0.334692, 0.472705,
		0.139608, -0.678533, -0.721181,
		0.562120, 0.653892, -0.506406,
		39.160709, 36.053772, 33.499359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352715, 35.237923, 33.712715>,  <38.767223, 35.596050, 33.853844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352715, 35.237923, 33.712715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490425, 35.595615, 33.598301>,  <39.573051, 35.810230, 33.529652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490425, 35.595615, 33.598301>,  <39.352715, 35.237923, 33.712715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490425, 35.595615, 33.598301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898229, -0.225048, 0.377543,
		0.273240, -0.386905, -0.880706,
		0.344275, 0.894236, -0.286037,
		39.593708, 35.863888, 33.512489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031624, 35.141533, 33.557091>,  <39.352715, 35.237923, 33.712715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031624, 35.141533, 33.557091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056324, 35.539070, 33.593880>,  <40.071144, 35.777592, 33.615952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056324, 35.539070, 33.593880>,  <40.031624, 35.141533, 33.557091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056324, 35.539070, 33.593880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931413, -0.090492, 0.352534,
		0.358687, 0.063897, -0.931268,
		0.061747, 0.993845, 0.091973,
		40.074848, 35.837223, 33.621471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442081, 35.354813, 32.971722>,  <40.031624, 35.141533, 33.557091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442081, 35.354813, 32.971722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.443798, 35.624531, 33.267101>,  <40.444828, 35.786362, 33.444328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.443798, 35.624531, 33.267101>,  <40.442081, 35.354813, 32.971722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443798, 35.624531, 33.267101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992611, -0.092419, 0.078623,
		0.121262, 0.732652, -0.669714,
		0.004291, 0.674299, 0.738446,
		40.445084, 35.826820, 33.488636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906288, 35.973988, 32.780819>,  <40.442081, 35.354813, 32.971722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906288, 35.973988, 32.780819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876549, 35.985332, 33.179550>,  <40.858704, 35.992138, 33.418789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876549, 35.985332, 33.179550>,  <40.906288, 35.973988, 32.780819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876549, 35.985332, 33.179550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996032, 0.051138, 0.072834,
		-0.048911, 0.998289, -0.032049,
		-0.074348, 0.028359, 0.996829,
		40.854244, 35.993839, 33.478600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437447, 36.582504, 33.042191>,  <40.906288, 35.973988, 32.780819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437447, 36.582504, 33.042191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.362114, 36.362583, 33.367706>,  <41.316914, 36.230633, 33.563015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.362114, 36.362583, 33.367706>,  <41.437447, 36.582504, 33.042191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362114, 36.362583, 33.367706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982081, -0.099587, 0.159999,
		-0.006925, 0.829339, 0.558703,
		-0.188333, -0.549799, 0.813789,
		41.305614, 36.197643, 33.611843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804928, 36.869526, 33.656845>,  <41.437447, 36.582504, 33.042191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804928, 36.869526, 33.656845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.724827, 36.486320, 33.738922>,  <41.676765, 36.256397, 33.788170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.724827, 36.486320, 33.738922>,  <41.804928, 36.869526, 33.656845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724827, 36.486320, 33.738922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944472, -0.133075, 0.300439,
		-0.260519, 0.253963, 0.931468,
		-0.200256, -0.958016, 0.205192,
		41.664749, 36.198917, 33.800480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155041, 36.703270, 34.322502>,  <41.804928, 36.869526, 33.656845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155041, 36.703270, 34.322502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.073669, 36.339111, 34.178394>,  <42.024845, 36.120617, 34.091930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.073669, 36.339111, 34.178394>,  <42.155041, 36.703270, 34.322502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073669, 36.339111, 34.178394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835209, -0.353375, 0.421368,
		-0.510922, -0.215181, 0.832259,
		-0.203430, -0.910397, -0.360268,
		42.012642, 36.065990, 34.070312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210155, 36.183994, 34.838680>,  <42.155041, 36.703270, 34.322502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210155, 36.183994, 34.838680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.258171, 35.972820, 34.502377>,  <42.286980, 35.846115, 34.300594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.258171, 35.972820, 34.502377>,  <42.210155, 36.183994, 34.838680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258171, 35.972820, 34.502377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802304, -0.447211, 0.395362,
		-0.584723, -0.722000, 0.369885,
		0.120034, -0.527937, -0.840758,
		42.294182, 35.814438, 34.250149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446625, 35.451538, 35.073212>,  <42.210155, 36.183994, 34.838680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446625, 35.451538, 35.073212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.512035, 35.440231, 34.678757>,  <42.551281, 35.433449, 34.442085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.512035, 35.440231, 34.678757>,  <42.446625, 35.451538, 35.073212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512035, 35.440231, 34.678757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791342, -0.593133, 0.148225,
		-0.589099, -0.804608, -0.074626,
		0.163527, -0.028265, -0.986134,
		42.561092, 35.431751, 34.382915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427334, 34.721077, 34.797520>,  <42.446625, 35.451538, 35.073212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427334, 34.721077, 34.797520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.647644, 34.958988, 34.563293>,  <42.779831, 35.101734, 34.422760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.647644, 34.958988, 34.563293>,  <42.427334, 34.721077, 34.797520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647644, 34.958988, 34.563293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817081, -0.527428, 0.232806,
		-0.170374, -0.606676, -0.776477,
		0.550773, 0.594781, -0.585564,
		42.812878, 35.137421, 34.387623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694050, 34.295795, 34.255268>,  <42.427334, 34.721077, 34.797520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694050, 34.295795, 34.255268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.933632, 34.615074, 34.280991>,  <43.077381, 34.806641, 34.296425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.933632, 34.615074, 34.280991>,  <42.694050, 34.295795, 34.255268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933632, 34.615074, 34.280991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765485, -0.594287, 0.246688,
		0.235124, -0.098527, -0.966959,
		0.598957, 0.798195, 0.064310,
		43.113319, 34.854534, 34.300285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423450, 34.026974, 34.013439>,  <42.694050, 34.295795, 34.255268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423450, 34.026974, 34.013439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492577, 34.377132, 34.194023>,  <43.534054, 34.587227, 34.302372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492577, 34.377132, 34.194023>,  <43.423450, 34.026974, 34.013439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492577, 34.377132, 34.194023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903049, -0.323817, 0.282214,
		0.393240, 0.358921, -0.846486,
		0.172814, 0.875396, 0.451461,
		43.544422, 34.639751, 34.329460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148914, 34.083130, 34.011898>,  <43.423450, 34.026974, 34.013439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148914, 34.083130, 34.011898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.016342, 34.327145, 34.299789>,  <43.936798, 34.473553, 34.472527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.016342, 34.327145, 34.299789>,  <44.148914, 34.083130, 34.011898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016342, 34.327145, 34.299789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645863, -0.409388, 0.644409,
		0.687759, 0.678426, -0.258312,
		-0.331434, 0.610032, 0.719730,
		43.916912, 34.510155, 34.515709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525936, 33.981960, 33.356277>,  <44.148914, 34.083130, 34.011898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525936, 33.981960, 33.356277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.879147, 34.062500, 33.186699>,  <45.091072, 34.110825, 33.084953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.879147, 34.062500, 33.186699>,  <44.525936, 33.981960, 33.356277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879147, 34.062500, 33.186699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462433, 0.527570, -0.712619,
		0.080174, 0.825304, 0.558968,
		0.883022, 0.201351, -0.423946,
		45.144054, 34.122906, 33.059517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526672, 34.694172, 33.309959>,  <44.525936, 33.981960, 33.356277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526672, 34.694172, 33.309959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799091, 34.578812, 33.040737>,  <44.962543, 34.509594, 32.879204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799091, 34.578812, 33.040737>,  <44.526672, 34.694172, 33.309959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799091, 34.578812, 33.040737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533949, 0.433398, -0.725992,
		0.501078, 0.853810, 0.141171,
		0.681043, -0.288400, -0.673057,
		45.003403, 34.492290, 32.838821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743118, 35.287659, 32.984642>,  <44.526672, 34.694172, 33.309959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743118, 35.287659, 32.984642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.814823, 34.980549, 32.738590>,  <44.857845, 34.796284, 32.590958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.814823, 34.980549, 32.738590>,  <44.743118, 35.287659, 32.984642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814823, 34.980549, 32.738590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652831, 0.374925, -0.658212,
		0.735986, 0.519573, -0.434015,
		0.179266, -0.767773, -0.615133,
		44.868603, 34.750217, 32.554050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637897, 35.653721, 32.368523>,  <44.743118, 35.287659, 32.984642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637897, 35.653721, 32.368523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.625370, 35.261772, 32.289661>,  <44.617851, 35.026604, 32.242344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.625370, 35.261772, 32.289661>,  <44.637897, 35.653721, 32.368523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625370, 35.261772, 32.289661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708443, 0.160909, -0.687181,
		0.705073, 0.118148, -0.699223,
		-0.031322, -0.979872, -0.197154,
		44.615974, 34.967812, 32.230515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672047, 35.591019, 31.571669>,  <44.637897, 35.653721, 32.368523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672047, 35.591019, 31.571669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.511982, 35.262154, 31.733620>,  <44.415943, 35.064835, 31.830790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.511982, 35.262154, 31.733620>,  <44.672047, 35.591019, 31.571669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511982, 35.262154, 31.733620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764224, 0.055536, -0.642555,
		0.505798, -0.566542, -0.650538,
		-0.400162, -0.822160, 0.404875,
		44.391933, 35.015507, 31.855082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241627, 35.405769, 30.999966>,  <44.672047, 35.591019, 31.571669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241627, 35.405769, 30.999966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.137276, 35.144531, 31.284334>,  <44.074665, 34.987789, 31.454956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.137276, 35.144531, 31.284334>,  <44.241627, 35.405769, 30.999966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137276, 35.144531, 31.284334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853896, -0.187427, -0.485522,
		0.450339, -0.733714, -0.508781,
		-0.260875, -0.653096, 0.710922,
		44.059013, 34.948601, 31.497610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104504, 34.768829, 30.682426>,  <44.241627, 35.405769, 30.999966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104504, 34.768829, 30.682426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878132, 34.806530, 31.010046>,  <43.742310, 34.829151, 31.206617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878132, 34.806530, 31.010046>,  <44.104504, 34.768829, 30.682426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878132, 34.806530, 31.010046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821596, 0.018176, -0.569781,
		-0.068591, -0.995382, 0.067152,
		-0.565929, 0.094254, 0.819049,
		43.708355, 34.834805, 31.255760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578876, 34.284252, 30.590887>,  <44.104504, 34.768829, 30.682426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578876, 34.284252, 30.590887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.447140, 34.546196, 30.862974>,  <43.368099, 34.703362, 31.026226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.447140, 34.546196, 30.862974>,  <43.578876, 34.284252, 30.590887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447140, 34.546196, 30.862974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916308, -0.047823, -0.397608,
		-0.227847, -0.754236, 0.615803,
		-0.329340, 0.654860, 0.680216,
		43.348339, 34.742653, 31.067039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013569, 33.911163, 30.994921>,  <43.578876, 34.284252, 30.590887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013569, 33.911163, 30.994921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970829, 34.308147, 31.018921>,  <42.945187, 34.546337, 31.033321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970829, 34.308147, 31.018921>,  <43.013569, 33.911163, 30.994921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970829, 34.308147, 31.018921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944784, -0.082543, -0.317127,
		-0.309784, -0.090573, 0.946483,
		-0.106848, 0.992463, 0.060001,
		42.938774, 34.605885, 31.036921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305916, 34.000027, 31.229870>,  <43.013569, 33.911163, 30.994921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305916, 34.000027, 31.229870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.403439, 34.361958, 31.090246>,  <42.461952, 34.579117, 31.006472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.403439, 34.361958, 31.090246>,  <42.305916, 34.000027, 31.229870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403439, 34.361958, 31.090246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967052, 0.199617, -0.158001,
		-0.073287, 0.376078, 0.923685,
		0.243804, 0.904831, -0.349058,
		42.476582, 34.633408, 30.985529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910709, 34.508045, 31.512453>,  <42.305916, 34.000027, 31.229870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910709, 34.508045, 31.512453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.025475, 34.719505, 31.192900>,  <42.094334, 34.846382, 31.001167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.025475, 34.719505, 31.192900>,  <41.910709, 34.508045, 31.512453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025475, 34.719505, 31.192900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899443, 0.435655, -0.034744,
		0.329670, 0.728518, 0.600483,
		0.286915, 0.528646, -0.798882,
		42.111549, 34.878098, 30.953236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522186, 35.094234, 31.558374>,  <41.910709, 34.508045, 31.512453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522186, 35.094234, 31.558374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.637341, 35.123756, 31.176447>,  <41.706432, 35.141468, 30.947290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.637341, 35.123756, 31.176447>,  <41.522186, 35.094234, 31.558374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637341, 35.123756, 31.176447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909917, 0.331972, -0.248689,
		0.298619, 0.940398, 0.162723,
		0.287887, 0.073801, -0.954817,
		41.723705, 35.145897, 30.890001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233871, 35.642887, 31.363283>,  <41.522186, 35.094234, 31.558374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233871, 35.642887, 31.363283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.325451, 35.471607, 31.013603>,  <41.380398, 35.368839, 30.803795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.325451, 35.471607, 31.013603>,  <41.233871, 35.642887, 31.363283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325451, 35.471607, 31.013603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923191, 0.189293, -0.334495,
		0.308712, 0.883635, -0.351976,
		0.228945, -0.428203, -0.874200,
		41.394135, 35.343147, 30.751343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124207, 36.095543, 30.854483>,  <41.233871, 35.642887, 31.363283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124207, 36.095543, 30.854483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.081791, 35.739750, 30.676685>,  <41.056339, 35.526276, 30.570007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.081791, 35.739750, 30.676685>,  <41.124207, 36.095543, 30.854483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081791, 35.739750, 30.676685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871763, 0.298189, -0.388732,
		0.478314, 0.346271, -0.807039,
		-0.106043, -0.889483, -0.444494,
		41.049976, 35.472904, 30.543337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832836, 36.300083, 30.173479>,  <41.124207, 36.095543, 30.854483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832836, 36.300083, 30.173479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745911, 35.910511, 30.199478>,  <40.693756, 35.676765, 30.215076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745911, 35.910511, 30.199478>,  <40.832836, 36.300083, 30.173479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745911, 35.910511, 30.199478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875859, 0.165174, -0.453418,
		0.430864, -0.155462, -0.888925,
		-0.217316, -0.973935, 0.064995,
		40.680717, 35.618332, 30.218977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656830, 36.149036, 29.571508>,  <40.832836, 36.300083, 30.173479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656830, 36.149036, 29.571508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509354, 35.859447, 29.804722>,  <40.420868, 35.685692, 29.944651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509354, 35.859447, 29.804722>,  <40.656830, 36.149036, 29.571508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509354, 35.859447, 29.804722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902673, 0.129105, -0.410503,
		0.221922, -0.677635, -0.701114,
		-0.368689, -0.723977, 0.583032,
		40.398746, 35.642254, 29.979631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206219, 35.746284, 29.084110>,  <40.656830, 36.149036, 29.571508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206219, 35.746284, 29.084110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079865, 35.609451, 29.438105>,  <40.004051, 35.527351, 29.650501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079865, 35.609451, 29.438105>,  <40.206219, 35.746284, 29.084110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079865, 35.609451, 29.438105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948737, 0.103293, -0.298711,
		0.010770, -0.933976, -0.357173,
		-0.315882, -0.342081, 0.884985,
		39.985100, 35.506828, 29.703600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737305, 35.147537, 28.916925>,  <40.206219, 35.746284, 29.084110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737305, 35.147537, 28.916925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.639545, 35.293213, 29.276400>,  <39.580891, 35.380619, 29.492085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.639545, 35.293213, 29.276400>,  <39.737305, 35.147537, 28.916925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639545, 35.293213, 29.276400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961476, 0.029242, -0.273328,
		-0.125822, -0.930866, 0.343011,
		-0.244402, 0.364188, 0.898685,
		39.566223, 35.402470, 29.546005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080292, 34.920635, 29.030987>,  <39.737305, 35.147537, 28.916925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080292, 34.920635, 29.030987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102524, 35.228413, 29.285505>,  <39.115864, 35.413078, 29.438215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102524, 35.228413, 29.285505>,  <39.080292, 34.920635, 29.030987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102524, 35.228413, 29.285505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987708, 0.135617, -0.077720,
		-0.146093, -0.624154, 0.767521,
		0.055579, 0.769441, 0.636295,
		39.119198, 35.459244, 29.476395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603165, 34.792980, 29.600031>,  <39.080292, 34.920635, 29.030987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603165, 34.792980, 29.600031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640839, 35.191200, 29.601494>,  <38.663445, 35.430130, 29.602371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640839, 35.191200, 29.601494>,  <38.603165, 34.792980, 29.600031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640839, 35.191200, 29.601494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995552, 0.094195, -0.001977,
		-0.002312, -0.003453, 0.999991,
		0.094187, 0.995547, 0.003656,
		38.669094, 35.489864, 29.602591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.167900, 40.223656, 38.924904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930664, 40.008747, 39.164764>,  <39.788322, 39.879803, 39.308681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930664, 40.008747, 39.164764>,  <40.167900, 40.223656, 38.924904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930664, 40.008747, 39.164764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004709, -0.747087, -0.664709,
		0.805124, -0.391408, 0.445619,
		-0.593088, -0.537271, 0.599654,
		39.752739, 39.847565, 39.344662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524456, 39.555134, 38.960083>,  <40.167900, 40.223656, 38.924904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524456, 39.555134, 38.960083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140213, 39.497185, 39.054955>,  <39.909668, 39.462414, 39.111877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140213, 39.497185, 39.054955>,  <40.524456, 39.555134, 38.960083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140213, 39.497185, 39.054955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067422, -0.706431, -0.704563,
		0.269622, -0.692797, 0.668832,
		-0.960603, -0.144872, 0.237179,
		39.852032, 39.453724, 39.126110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450180, 38.791645, 38.975498>,  <40.524456, 39.555134, 38.960083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450180, 38.791645, 38.975498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071838, 38.921387, 38.970577>,  <39.844833, 38.999233, 38.967625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071838, 38.921387, 38.970577>,  <40.450180, 38.791645, 38.975498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071838, 38.921387, 38.970577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247183, -0.744345, -0.620364,
		-0.210378, -0.583733, 0.784217,
		-0.945855, 0.324357, -0.012305,
		39.788082, 39.018692, 38.966885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031609, 38.235416, 39.109875>,  <40.450180, 38.791645, 38.975498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031609, 38.235416, 39.109875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761814, 38.483608, 38.949844>,  <39.599937, 38.632523, 38.853825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761814, 38.483608, 38.949844>,  <40.031609, 38.235416, 39.109875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761814, 38.483608, 38.949844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405706, -0.764258, -0.501312,
		-0.616818, -0.175816, 0.767218,
		-0.674491, 0.620483, -0.400078,
		39.559467, 38.669754, 38.829823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431442, 37.875683, 39.142284>,  <40.031609, 38.235416, 39.109875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431442, 37.875683, 39.142284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402489, 38.138790, 38.842392>,  <39.385117, 38.296654, 38.662457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402489, 38.138790, 38.842392>,  <39.431442, 37.875683, 39.142284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402489, 38.138790, 38.842392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301596, -0.730950, -0.612170,
		-0.950684, 0.181809, 0.251286,
		-0.072380, 0.657767, -0.749736,
		39.380775, 38.336121, 38.617470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802227, 37.625370, 38.757763>,  <39.431442, 37.875683, 39.142284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802227, 37.625370, 38.757763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986988, 37.874340, 38.505024>,  <39.097847, 38.023720, 38.353378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986988, 37.874340, 38.505024>,  <38.802227, 37.625370, 38.757763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986988, 37.874340, 38.505024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127973, -0.658176, -0.741907,
		-0.877647, 0.423553, -0.224363,
		0.461907, 0.622420, -0.631850,
		39.125561, 38.061066, 38.315468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439430, 37.563229, 38.124317>,  <38.802227, 37.625370, 38.757763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439430, 37.563229, 38.124317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778366, 37.715469, 37.976181>,  <38.981728, 37.806812, 37.887299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778366, 37.715469, 37.976181>,  <38.439430, 37.563229, 38.124317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778366, 37.715469, 37.976181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034118, -0.734955, -0.677257,
		-0.529947, 0.561235, -0.635745,
		0.847344, 0.380600, -0.370339,
		39.032570, 37.829651, 37.865078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353844, 37.578945, 37.384632>,  <38.439430, 37.563229, 38.124317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353844, 37.578945, 37.384632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752251, 37.595276, 37.416355>,  <38.991295, 37.605076, 37.435390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752251, 37.595276, 37.416355>,  <38.353844, 37.578945, 37.384632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752251, 37.595276, 37.416355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084680, -0.712191, -0.696860,
		0.028030, 0.700798, -0.712809,
		0.996014, 0.040828, 0.079306,
		39.051056, 37.607525, 37.440147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568249, 37.709164, 36.720253>,  <38.353844, 37.578945, 37.384632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568249, 37.709164, 36.720253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879337, 37.554375, 36.918404>,  <39.065990, 37.461502, 37.037292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879337, 37.554375, 36.918404>,  <38.568249, 37.709164, 36.720253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879337, 37.554375, 36.918404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124733, -0.677381, -0.724980,
		0.616105, 0.625625, -0.478548,
		0.777725, -0.386973, 0.495374,
		39.112656, 37.438282, 37.067017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893326, 37.493832, 36.227871>,  <38.568249, 37.709164, 36.720253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893326, 37.493832, 36.227871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046669, 37.294407, 36.538864>,  <39.138676, 37.174751, 36.725460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046669, 37.294407, 36.538864>,  <38.893326, 37.493832, 36.227871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046669, 37.294407, 36.538864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275506, -0.741739, -0.611490,
		0.881552, 0.448618, -0.146994,
		0.383356, -0.498563, 0.777479,
		39.161674, 37.144836, 36.772106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533707, 37.258717, 35.971237>,  <38.893326, 37.493832, 36.227871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533707, 37.258717, 35.971237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410553, 37.053829, 36.291946>,  <39.336662, 36.930897, 36.484371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410553, 37.053829, 36.291946>,  <39.533707, 37.258717, 35.971237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410553, 37.053829, 36.291946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143832, -0.858081, -0.492959,
		0.940489, -0.036454, 0.337863,
		-0.307884, -0.512218, 0.801773,
		39.318188, 36.900166, 36.532478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052040, 36.751801, 35.989708>,  <39.533707, 37.258717, 35.971237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052040, 36.751801, 35.989708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724113, 36.636806, 36.187805>,  <39.527359, 36.567810, 36.306664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724113, 36.636806, 36.187805>,  <40.052040, 36.751801, 35.989708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724113, 36.636806, 36.187805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011854, -0.873181, -0.487251,
		0.572509, -0.393585, 0.719253,
		-0.819813, -0.287481, 0.495238,
		39.478168, 36.550564, 36.336376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105442, 36.090630, 36.116066>,  <40.052040, 36.751801, 35.989708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105442, 36.090630, 36.116066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709003, 36.137527, 36.090843>,  <39.471138, 36.165665, 36.075710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709003, 36.137527, 36.090843>,  <40.105442, 36.090630, 36.116066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709003, 36.137527, 36.090843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077400, -0.892872, -0.443610,
		-0.108313, -0.434780, 0.893999,
		-0.991099, 0.117244, -0.063058,
		39.411674, 36.172699, 36.071926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856064, 35.517120, 36.466515>,  <40.105442, 36.090630, 36.116066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856064, 35.517120, 36.466515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613708, 35.660084, 36.182217>,  <39.468296, 35.745861, 36.011639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613708, 35.660084, 36.182217>,  <39.856064, 35.517120, 36.466515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613708, 35.660084, 36.182217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074823, -0.915042, -0.396358,
		-0.792020, -0.186970, 0.581159,
		-0.605892, 0.357407, -0.710742,
		39.431942, 35.767307, 35.968994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478493, 35.079689, 36.449200>,  <39.856064, 35.517120, 36.466515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478493, 35.079689, 36.449200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578777, 34.706020, 36.550766>,  <40.638947, 34.481819, 36.611706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578777, 34.706020, 36.550766>,  <40.478493, 35.079689, 36.449200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578777, 34.706020, 36.550766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082267, 0.240781, 0.967087,
		-0.964561, -0.263346, -0.016485,
		0.250709, -0.934170, 0.253913,
		40.653992, 34.425770, 36.626942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905613, 34.839302, 36.956154>,  <40.478493, 35.079689, 36.449200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905613, 34.839302, 36.956154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284454, 34.713703, 36.982708>,  <40.511757, 34.638344, 36.998642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284454, 34.713703, 36.982708>,  <39.905613, 34.839302, 36.956154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284454, 34.713703, 36.982708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063199, 0.385268, 0.920638,
		-0.314654, -0.867741, 0.384732,
		0.947100, -0.313997, 0.066386,
		40.568584, 34.619503, 37.002625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922962, 34.659706, 37.591969>,  <39.905613, 34.839302, 36.956154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922962, 34.659706, 37.591969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319443, 34.647774, 37.540390>,  <40.557331, 34.640614, 37.509445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319443, 34.647774, 37.540390>,  <39.922962, 34.659706, 37.591969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319443, 34.647774, 37.540390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128883, 0.439106, 0.889143,
		0.030095, -0.897940, 0.439088,
		0.991203, -0.029832, -0.128944,
		40.616802, 34.638824, 37.501705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355621, 34.246216, 38.218567>,  <39.922962, 34.659706, 37.591969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355621, 34.246216, 38.218567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553875, 34.530319, 38.018612>,  <40.672825, 34.700783, 37.898640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553875, 34.530319, 38.018612>,  <40.355621, 34.246216, 38.218567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553875, 34.530319, 38.018612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222508, 0.452506, 0.863556,
		0.839548, -0.539232, 0.066237,
		0.495630, 0.710258, -0.499884,
		40.702564, 34.743397, 37.868649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951832, 34.356346, 38.573719>,  <40.355621, 34.246216, 38.218567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951832, 34.356346, 38.573719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923065, 34.688442, 38.352623>,  <40.905807, 34.887699, 38.219967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923065, 34.688442, 38.352623>,  <40.951832, 34.356346, 38.573719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923065, 34.688442, 38.352623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281194, 0.548573, 0.787399,
		0.956953, -0.098802, -0.272909,
		-0.071914, 0.830245, -0.552741,
		40.901489, 34.937515, 38.186802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461124, 34.893578, 39.006062>,  <40.951832, 34.356346, 38.573719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461124, 34.893578, 39.006062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243435, 35.128822, 38.766747>,  <41.112823, 35.269970, 38.623158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243435, 35.128822, 38.766747>,  <41.461124, 34.893578, 39.006062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243435, 35.128822, 38.766747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214946, 0.787087, 0.578180,
		0.810939, 0.186058, -0.554762,
		-0.544221, 0.588112, -0.598287,
		41.080170, 35.305256, 38.587261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732456, 35.488258, 39.080929>,  <41.461124, 34.893578, 39.006062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732456, 35.488258, 39.080929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374367, 35.577847, 38.926834>,  <41.159512, 35.631599, 38.834377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374367, 35.577847, 38.926834>,  <41.732456, 35.488258, 39.080929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374367, 35.577847, 38.926834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031168, 0.893863, 0.447255,
		0.444523, 0.388387, -0.807189,
		-0.895225, 0.223974, -0.385238,
		41.105801, 35.645039, 38.811264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737694, 36.118752, 38.805923>,  <41.732456, 35.488258, 39.080929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737694, 36.118752, 38.805923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354202, 36.059315, 38.902893>,  <41.124107, 36.023655, 38.961075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354202, 36.059315, 38.902893>,  <41.737694, 36.118752, 38.805923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354202, 36.059315, 38.902893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028304, 0.798477, 0.601359,
		-0.282923, 0.583399, -0.761315,
		-0.958725, -0.148590, 0.242420,
		41.066586, 36.014736, 38.975620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547367, 36.745384, 39.015640>,  <41.737694, 36.118752, 38.805923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547367, 36.745384, 39.015640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224957, 36.553551, 39.154392>,  <41.031509, 36.438450, 39.237644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224957, 36.553551, 39.154392>,  <41.547367, 36.745384, 39.015640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224957, 36.553551, 39.154392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009390, 0.575627, 0.817658,
		-0.591805, 0.662311, -0.459468,
		-0.806026, -0.479580, 0.346878,
		40.983150, 36.409676, 39.258457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074982, 37.243649, 39.180408>,  <41.547367, 36.745384, 39.015640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074982, 37.243649, 39.180408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939636, 36.939442, 39.402081>,  <40.858429, 36.756916, 39.535084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939636, 36.939442, 39.402081>,  <41.074982, 37.243649, 39.180408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939636, 36.939442, 39.402081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216961, 0.636103, 0.740474,
		-0.915661, 0.130316, -0.380240,
		-0.338367, -0.760520, 0.554181,
		40.838127, 36.711285, 39.568336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452412, 37.429073, 39.377445>,  <41.074982, 37.243649, 39.180408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452412, 37.429073, 39.377445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557972, 37.152489, 39.646439>,  <40.621307, 36.986538, 39.807835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557972, 37.152489, 39.646439>,  <40.452412, 37.429073, 39.377445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557972, 37.152489, 39.646439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234614, 0.630247, 0.740098,
		-0.935580, -0.353090, 0.004098,
		0.263904, -0.691460, 0.672486,
		40.637142, 36.945049, 39.848183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953957, 37.543758, 39.808445>,  <40.452412, 37.429073, 39.377445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953957, 37.543758, 39.808445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220257, 37.329498, 40.016235>,  <40.380035, 37.200943, 40.140911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220257, 37.329498, 40.016235>,  <39.953957, 37.543758, 39.808445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220257, 37.329498, 40.016235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125249, 0.606089, 0.785474,
		-0.735589, -0.587992, 0.336413,
		0.665748, -0.535651, 0.519478,
		40.419983, 37.168804, 40.172077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598679, 37.400494, 40.536999>,  <39.953957, 37.543758, 39.808445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598679, 37.400494, 40.536999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997932, 37.380150, 40.550484>,  <40.237484, 37.367943, 40.558575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997932, 37.380150, 40.550484>,  <39.598679, 37.400494, 40.536999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997932, 37.380150, 40.550484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005185, 0.479834, 0.877344,
		-0.060797, -0.875884, 0.478676,
		0.998137, -0.050858, 0.033713,
		40.297375, 37.364891, 40.560596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768826, 37.294109, 41.177814>,  <39.598679, 37.400494, 40.536999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768826, 37.294109, 41.177814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131874, 37.425461, 41.073212>,  <40.349705, 37.504272, 41.010448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131874, 37.425461, 41.073212>,  <39.768826, 37.294109, 41.177814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131874, 37.425461, 41.073212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058399, 0.518126, 0.853308,
		0.415701, -0.789756, 0.451087,
		0.907625, 0.328378, -0.261506,
		40.404160, 37.523975, 40.994759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868874, 36.596485, 41.287045>,  <39.768826, 37.294109, 41.177814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868874, 36.596485, 41.287045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581184, 36.477890, 41.538383>,  <39.408573, 36.406734, 41.689186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581184, 36.477890, 41.538383>,  <39.868874, 36.596485, 41.287045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581184, 36.477890, 41.538383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472658, -0.454061, -0.755264,
		0.509232, -0.840194, 0.186434,
		-0.719220, -0.296485, 0.628347,
		39.365417, 36.388943, 41.726887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643639, 35.837177, 41.229584>,  <39.868874, 36.596485, 41.287045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643639, 35.837177, 41.229584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314991, 36.002415, 41.386711>,  <39.117802, 36.101555, 41.480988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314991, 36.002415, 41.386711>,  <39.643639, 35.837177, 41.229584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314991, 36.002415, 41.386711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557327, -0.437374, -0.705755,
		-0.119731, -0.798787, 0.589579,
		-0.821615, 0.413089, 0.392818,
		39.068508, 36.126343, 41.504555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140575, 35.316906, 41.505199>,  <39.643639, 35.837177, 41.229584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140575, 35.316906, 41.505199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947784, 35.651058, 41.399490>,  <38.832108, 35.851547, 41.336063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947784, 35.651058, 41.399490>,  <39.140575, 35.316906, 41.505199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947784, 35.651058, 41.399490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571761, -0.528422, -0.627583,
		-0.663917, -0.151380, 0.732324,
		-0.481980, 0.835377, -0.264275,
		38.803192, 35.901672, 41.320210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524147, 35.068748, 41.369926>,  <39.140575, 35.316906, 41.505199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524147, 35.068748, 41.369926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498573, 35.420799, 41.181763>,  <38.483227, 35.632030, 41.068863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498573, 35.420799, 41.181763>,  <38.524147, 35.068748, 41.369926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498573, 35.420799, 41.181763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577237, -0.417134, -0.701995,
		-0.814070, 0.226654, 0.534713,
		-0.063937, 0.880129, -0.470409,
		38.479393, 35.684837, 41.040642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885117, 35.069546, 40.948078>,  <38.524147, 35.068748, 41.369926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885117, 35.069546, 40.948078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047794, 35.411579, 40.819439>,  <38.145401, 35.616798, 40.742256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047794, 35.411579, 40.819439>,  <37.885117, 35.069546, 40.948078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047794, 35.411579, 40.819439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528680, -0.066798, -0.846189,
		-0.745047, 0.514164, 0.424901,
		0.406697, 0.855087, -0.321595,
		38.169804, 35.668106, 40.722961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386269, 35.538479, 40.697296>,  <37.885117, 35.069546, 40.948078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386269, 35.538479, 40.697296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726768, 35.666470, 40.530933>,  <37.931068, 35.743263, 40.431114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726768, 35.666470, 40.530933>,  <37.386269, 35.538479, 40.697296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726768, 35.666470, 40.530933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417364, -0.067579, -0.906223,
		-0.318080, 0.945011, 0.076022,
		0.851253, 0.319980, -0.415909,
		37.982143, 35.762463, 40.406162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191391, 36.004902, 40.113327>,  <37.386269, 35.538479, 40.697296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191391, 36.004902, 40.113327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565784, 35.876026, 40.056564>,  <37.790421, 35.798702, 40.022507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565784, 35.876026, 40.056564>,  <37.191391, 36.004902, 40.113327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565784, 35.876026, 40.056564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200567, -0.156721, -0.967063,
		0.289336, 0.933613, -0.211308,
		0.935980, -0.322187, -0.141907,
		37.846577, 35.779369, 40.013992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562881, 36.511227, 39.655884>,  <37.191391, 36.004902, 40.113327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562881, 36.511227, 39.655884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739262, 36.154449, 39.615875>,  <37.845089, 35.940384, 39.591869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739262, 36.154449, 39.615875>,  <37.562881, 36.511227, 39.655884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739262, 36.154449, 39.615875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231526, -0.005369, -0.972814,
		0.867156, 0.452119, -0.208875,
		0.440949, -0.891942, -0.100022,
		37.871548, 35.886868, 39.585869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753624, 36.494465, 39.021233>,  <37.562881, 36.511227, 39.655884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753624, 36.494465, 39.021233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769897, 36.103573, 39.104538>,  <37.779663, 35.869038, 39.154522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769897, 36.103573, 39.104538>,  <37.753624, 36.494465, 39.021233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769897, 36.103573, 39.104538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245069, -0.211825, -0.946082,
		0.968651, -0.012549, -0.248106,
		0.040683, -0.977227, 0.208260,
		37.782101, 35.810406, 39.167015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148705, 36.238445, 38.564121>,  <37.753624, 36.494465, 39.021233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148705, 36.238445, 38.564121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933350, 35.927784, 38.694939>,  <37.804138, 35.741386, 38.773430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933350, 35.927784, 38.694939>,  <38.148705, 36.238445, 38.564121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933350, 35.927784, 38.694939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308160, -0.179762, -0.934197,
		0.784333, -0.603739, -0.142552,
		-0.538385, -0.776650, 0.327041,
		37.771835, 35.694790, 38.793053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399914, 35.626747, 38.226383>,  <38.148705, 36.238445, 38.564121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399914, 35.626747, 38.226383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010498, 35.610176, 38.316269>,  <37.776848, 35.600235, 38.370201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010498, 35.610176, 38.316269>,  <38.399914, 35.626747, 38.226383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010498, 35.610176, 38.316269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222611, -0.049860, -0.973631,
		0.051544, -0.997896, 0.039317,
		-0.973544, -0.041432, 0.224713,
		37.718433, 35.597748, 38.383682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934231, 35.793949, 38.861881>,  <38.399914, 35.626747, 38.226383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934231, 35.793949, 38.861881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646461, 35.974052, 39.073429>,  <38.473801, 36.082115, 39.200356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646461, 35.974052, 39.073429>,  <38.934231, 35.793949, 38.861881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646461, 35.974052, 39.073429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407868, 0.342457, -0.846385,
		-0.562207, -0.824615, -0.062724,
		-0.719422, 0.450260, 0.528866,
		38.430634, 36.109131, 39.232090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.145615, 37.278927, 44.851173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.761406, 37.323387, 44.953194>,  <40.530880, 37.350063, 45.014408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.761406, 37.323387, 44.953194>,  <41.145615, 37.278927, 44.851173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761406, 37.323387, 44.953194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273985, -0.537241, -0.797687,
		0.048360, -0.836072, 0.546484,
		-0.960517, 0.111152, 0.255053,
		40.473251, 37.356731, 45.029709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810616, 36.537987, 44.668625>,  <41.145615, 37.278927, 44.851173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810616, 36.537987, 44.668625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.543186, 36.835243, 44.679585>,  <40.382729, 37.013596, 44.686161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.543186, 36.835243, 44.679585>,  <40.810616, 36.537987, 44.668625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543186, 36.835243, 44.679585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363319, -0.294279, -0.883968,
		-0.648851, -0.600951, 0.466745,
		-0.668574, 0.743140, 0.027394,
		40.342613, 37.058186, 44.687801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234909, 36.122517, 44.630009>,  <40.810616, 36.537987, 44.668625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234909, 36.122517, 44.630009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.144192, 36.492218, 44.507168>,  <40.089760, 36.714039, 44.433464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.144192, 36.492218, 44.507168>,  <40.234909, 36.122517, 44.630009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144192, 36.492218, 44.507168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498593, -0.381047, -0.778594,
		-0.836641, -0.023464, 0.547248,
		-0.226796, 0.924257, -0.307101,
		40.076153, 36.769497, 44.415039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501617, 36.117725, 44.444832>,  <40.234909, 36.122517, 44.630009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501617, 36.117725, 44.444832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.681202, 36.425213, 44.262619>,  <39.788952, 36.609703, 44.153290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.681202, 36.425213, 44.262619>,  <39.501617, 36.117725, 44.444832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681202, 36.425213, 44.262619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501288, -0.205335, -0.840564,
		-0.739690, 0.605736, 0.293160,
		0.448964, 0.768714, -0.455532,
		39.815891, 36.655827, 44.125957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032833, 36.372608, 44.047375>,  <39.501617, 36.117725, 44.444832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032833, 36.372608, 44.047375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346836, 36.569450, 43.896862>,  <39.535240, 36.687557, 43.806553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346836, 36.569450, 43.896862>,  <39.032833, 36.372608, 44.047375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346836, 36.569450, 43.896862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407709, -0.046902, -0.911907,
		-0.466405, 0.869270, 0.163819,
		0.785009, 0.492108, -0.376284,
		39.582340, 36.717083, 43.783978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712910, 36.926731, 43.756607>,  <39.032833, 36.372608, 44.047375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712910, 36.926731, 43.756607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.069263, 36.875118, 43.582401>,  <39.283077, 36.844151, 43.477879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.069263, 36.875118, 43.582401>,  <38.712910, 36.926731, 43.756607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069263, 36.875118, 43.582401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445242, -0.058337, -0.893508,
		0.089882, 0.989923, -0.109421,
		0.890888, -0.129029, -0.435512,
		39.336529, 36.836411, 43.451748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695999, 37.331467, 43.133537>,  <38.712910, 36.926731, 43.756607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695999, 37.331467, 43.133537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.022820, 37.111637, 43.063801>,  <39.218914, 36.979740, 43.021961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.022820, 37.111637, 43.063801>,  <38.695999, 37.331467, 43.133537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022820, 37.111637, 43.063801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228517, -0.031064, -0.973044,
		0.529342, 0.834869, -0.150967,
		0.817054, -0.549572, -0.174338,
		39.267937, 36.946766, 43.011501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893017, 37.593819, 42.521324>,  <38.695999, 37.331467, 43.133537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893017, 37.593819, 42.521324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082199, 37.242603, 42.550629>,  <39.195709, 37.031876, 42.568211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082199, 37.242603, 42.550629>,  <38.893017, 37.593819, 42.521324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082199, 37.242603, 42.550629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120253, -0.146701, -0.981844,
		0.872843, 0.455556, -0.174969,
		0.472953, -0.878036, 0.073265,
		39.224087, 36.979191, 42.572609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395256, 37.527256, 41.947437>,  <38.893017, 37.593819, 42.521324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395256, 37.527256, 41.947437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.311707, 37.154934, 42.067425>,  <39.261578, 36.931541, 42.139416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.311707, 37.154934, 42.067425>,  <39.395256, 37.527256, 41.947437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311707, 37.154934, 42.067425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031157, -0.300243, -0.953354,
		0.977447, -0.208473, 0.033711,
		-0.208870, -0.930802, 0.299967,
		39.249046, 36.875694, 42.157413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129105, 37.322918, 41.846333>,  <39.395256, 37.527256, 41.947437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129105, 37.322918, 41.846333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.395123, 37.522892, 41.624416>,  <40.554733, 37.642876, 41.491268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.395123, 37.522892, 41.624416>,  <40.129105, 37.322918, 41.846333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395123, 37.522892, 41.624416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269327, 0.532334, 0.802548,
		0.696552, -0.683146, 0.219378,
		0.665040, 0.499933, -0.554788,
		40.594635, 37.672871, 41.457981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709343, 37.367321, 42.197216>,  <40.129105, 37.322918, 41.846333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709343, 37.367321, 42.197216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.771046, 37.661495, 41.933296>,  <40.808067, 37.838001, 41.774944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.771046, 37.661495, 41.933296>,  <40.709343, 37.367321, 42.197216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771046, 37.661495, 41.933296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401185, 0.563645, 0.722049,
		0.902916, -0.376081, -0.208102,
		0.154253, 0.735437, -0.659802,
		40.817322, 37.882126, 41.735355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515297, 37.645176, 42.097988>,  <40.709343, 37.367321, 42.197216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515297, 37.645176, 42.097988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.259476, 37.935371, 41.996296>,  <41.105984, 38.109489, 41.935280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.259476, 37.935371, 41.996296>,  <41.515297, 37.645176, 42.097988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259476, 37.935371, 41.996296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510351, 0.648014, 0.565349,
		0.574903, 0.231822, -0.784694,
		-0.639553, 0.725490, -0.254235,
		41.067608, 38.153019, 41.920025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943371, 38.333889, 42.061214>,  <41.515297, 37.645176, 42.097988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943371, 38.333889, 42.061214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.556984, 38.430214, 42.099007>,  <41.325153, 38.488010, 42.121681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.556984, 38.430214, 42.099007>,  <41.943371, 38.333889, 42.061214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556984, 38.430214, 42.099007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249401, 0.770028, 0.587245,
		0.068666, 0.590819, -0.803877,
		-0.965963, 0.240812, 0.094476,
		41.267197, 38.502457, 42.127350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969284, 39.044464, 42.161083>,  <41.943371, 38.333889, 42.061214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969284, 39.044464, 42.161083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596584, 38.959103, 42.278595>,  <41.372967, 38.907887, 42.349102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596584, 38.959103, 42.278595>,  <41.969284, 39.044464, 42.161083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596584, 38.959103, 42.278595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119239, 0.584376, 0.802675,
		-0.342976, 0.782919, -0.519044,
		-0.931745, -0.213408, 0.293782,
		41.317062, 38.895081, 42.366730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680668, 39.649559, 42.282322>,  <41.969284, 39.044464, 42.161083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680668, 39.649559, 42.282322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.443493, 39.396996, 42.482220>,  <41.301186, 39.245457, 42.602158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.443493, 39.396996, 42.482220>,  <41.680668, 39.649559, 42.282322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443493, 39.396996, 42.482220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031223, 0.638176, 0.769257,
		-0.804640, 0.440521, -0.398116,
		-0.592942, -0.631405, 0.499748,
		41.265610, 39.207573, 42.632145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179871, 40.106068, 42.594509>,  <41.680668, 39.649559, 42.282322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179871, 40.106068, 42.594509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169106, 39.752129, 42.780548>,  <41.162647, 39.539764, 42.892170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169106, 39.752129, 42.780548>,  <41.179871, 40.106068, 42.594509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169106, 39.752129, 42.780548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046825, 0.465872, 0.883612,
		-0.998540, 0.002003, -0.053972,
		-0.026914, -0.884850, 0.465098,
		41.161030, 39.486675, 42.920078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677921, 40.119350, 43.133453>,  <41.179871, 40.106068, 42.594509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677921, 40.119350, 43.133453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861633, 39.784958, 43.253578>,  <40.971863, 39.584320, 43.325653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861633, 39.784958, 43.253578>,  <40.677921, 40.119350, 43.133453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861633, 39.784958, 43.253578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007674, 0.341797, 0.939743,
		-0.888256, -0.429304, 0.163397,
		0.459284, -0.835986, 0.300309,
		40.999420, 39.534161, 43.343670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172085, 39.736301, 43.580376>,  <40.677921, 40.119350, 43.133453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172085, 39.736301, 43.580376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.560699, 39.671726, 43.649727>,  <40.793869, 39.632980, 43.691338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.560699, 39.671726, 43.649727>,  <40.172085, 39.736301, 43.580376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560699, 39.671726, 43.649727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047514, 0.584196, 0.810221,
		-0.232083, -0.795395, 0.559896,
		0.971535, -0.161435, 0.173374,
		40.852161, 39.623295, 43.701740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180176, 39.651665, 44.356522>,  <40.172085, 39.736301, 43.580376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180176, 39.651665, 44.356522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.571960, 39.676998, 44.279949>,  <40.807030, 39.692196, 44.234005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.571960, 39.676998, 44.279949>,  <40.180176, 39.651665, 44.356522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571960, 39.676998, 44.279949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155077, 0.370188, 0.915921,
		0.128870, -0.926796, 0.352764,
		0.979461, 0.063329, -0.191431,
		40.865799, 39.695999, 44.222519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517399, 39.413593, 44.980984>,  <40.180176, 39.651665, 44.356522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517399, 39.413593, 44.980984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.784645, 39.642094, 44.790283>,  <40.944992, 39.779194, 44.675861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.784645, 39.642094, 44.790283>,  <40.517399, 39.413593, 44.980984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784645, 39.642094, 44.790283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218450, 0.461914, 0.859602,
		0.711269, -0.678459, 0.183821,
		0.668114, 0.571252, -0.476754,
		40.985081, 39.813469, 44.647259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171013, 39.370953, 45.243549>,  <40.517399, 39.413593, 44.980984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171013, 39.370953, 45.243549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.151001, 39.724667, 45.057842>,  <41.138992, 39.936893, 44.946419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.151001, 39.724667, 45.057842>,  <41.171013, 39.370953, 45.243549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151001, 39.724667, 45.057842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227109, 0.462743, 0.856908,
		0.972583, -0.062568, -0.223980,
		-0.050030, 0.884282, -0.464265,
		41.135990, 39.989952, 44.918564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718857, 39.749386, 45.623821>,  <41.171013, 39.370953, 45.243549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718857, 39.749386, 45.623821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.488739, 40.017757, 45.436680>,  <41.350670, 40.178780, 45.324394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.488739, 40.017757, 45.436680>,  <41.718857, 39.749386, 45.623821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488739, 40.017757, 45.436680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080140, 0.615468, 0.784077,
		0.814010, 0.413582, -0.407845,
		-0.575296, 0.670932, -0.467852,
		41.316151, 40.219036, 45.296326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090500, 40.360672, 45.589767>,  <41.718857, 39.749386, 45.623821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090500, 40.360672, 45.589767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.718689, 40.497650, 45.535042>,  <41.495602, 40.579838, 45.502209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.718689, 40.497650, 45.535042>,  <42.090500, 40.360672, 45.589767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718689, 40.497650, 45.535042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202279, 0.783698, 0.587282,
		0.308327, 0.518220, -0.797736,
		-0.929525, 0.342441, -0.136810,
		41.439831, 40.600384, 45.493999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.908585, 40.549553, 46.068012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204906, 40.281487, 46.086239>,  <35.382702, 40.120647, 46.097176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204906, 40.281487, 46.086239>,  <34.908585, 40.549553, 46.068012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204906, 40.281487, 46.086239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099915, 0.042863, -0.994072,
		0.664245, 0.740969, 0.098713,
		0.740808, -0.670170, 0.045562,
		35.427147, 40.080437, 46.099907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535023, 40.811329, 45.679920>,  <34.908585, 40.549553, 46.068012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535023, 40.811329, 45.679920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567123, 40.413097, 45.699467>,  <35.586384, 40.174160, 45.711197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567123, 40.413097, 45.699467>,  <35.535023, 40.811329, 45.679920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567123, 40.413097, 45.699467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092622, -0.041368, -0.994841,
		0.992462, 0.084364, 0.088893,
		0.080251, -0.995576, 0.048870,
		35.591198, 40.114426, 45.714127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000824, 40.705860, 45.156883>,  <35.535023, 40.811329, 45.679920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000824, 40.705860, 45.156883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.858170, 40.339539, 45.230759>,  <35.772575, 40.119743, 45.275082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.858170, 40.339539, 45.230759>,  <36.000824, 40.705860, 45.156883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858170, 40.339539, 45.230759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097037, -0.160302, -0.982287,
		0.929190, -0.368241, -0.031698,
		-0.356637, -0.915807, 0.184685,
		35.751179, 40.064796, 45.286163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480228, 40.236870, 44.850918>,  <36.000824, 40.705860, 45.156883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480228, 40.236870, 44.850918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112865, 40.078785, 44.858192>,  <35.892448, 39.983932, 44.862556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112865, 40.078785, 44.858192>,  <36.480228, 40.236870, 44.850918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112865, 40.078785, 44.858192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014884, -0.011421, -0.999824,
		0.395353, -0.918518, 0.004607,
		-0.918408, -0.395215, 0.018186,
		35.837341, 39.960220, 44.863647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528675, 39.691780, 44.342003>,  <36.480228, 40.236870, 44.850918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528675, 39.691780, 44.342003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133381, 39.714664, 44.398731>,  <35.896202, 39.728394, 44.432770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133381, 39.714664, 44.398731>,  <36.528675, 39.691780, 44.342003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133381, 39.714664, 44.398731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152825, -0.335976, -0.929389,
		-0.005523, -0.940131, 0.340768,
		-0.988238, 0.057210, 0.141820,
		35.836910, 39.731827, 44.441277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286591, 39.009521, 44.213547>,  <36.528675, 39.691780, 44.342003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286591, 39.009521, 44.213547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948040, 39.220921, 44.187214>,  <35.744911, 39.347759, 44.171413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948040, 39.220921, 44.187214>,  <36.286591, 39.009521, 44.213547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948040, 39.220921, 44.187214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308487, -0.587245, -0.748318,
		-0.434145, -0.613051, 0.660066,
		-0.846377, 0.528500, -0.065831,
		35.694126, 39.379471, 44.167465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826015, 38.523788, 44.043724>,  <36.286591, 39.009521, 44.213547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826015, 38.523788, 44.043724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629520, 38.850845, 43.923626>,  <35.511623, 39.047077, 43.851566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.629520, 38.850845, 43.923626>,  <35.826015, 38.523788, 44.043724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629520, 38.850845, 43.923626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383591, -0.512558, -0.768207,
		-0.782013, -0.262199, 0.565427,
		-0.491237, 0.817640, -0.300250,
		35.482147, 39.096138, 43.833549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268848, 38.272686, 43.922260>,  <35.826015, 38.523788, 44.043724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268848, 38.272686, 43.922260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.267448, 38.609993, 43.707264>,  <35.266609, 38.812378, 43.578266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.267448, 38.609993, 43.707264>,  <35.268848, 38.272686, 43.922260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267448, 38.609993, 43.707264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458591, -0.478995, -0.748504,
		-0.888641, 0.243865, 0.388391,
		-0.003503, 0.843264, -0.537488,
		35.266396, 38.862972, 43.546017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642860, 38.334019, 43.514072>,  <35.268848, 38.272686, 43.922260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642860, 38.334019, 43.514072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.902611, 38.557388, 43.307590>,  <35.058460, 38.691410, 43.183701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.902611, 38.557388, 43.307590>,  <34.642860, 38.334019, 43.514072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902611, 38.557388, 43.307590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409206, -0.315560, -0.856138,
		-0.640983, 0.767192, 0.023593,
		0.649378, 0.558424, -0.516208,
		35.097424, 38.724915, 43.152729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289265, 38.672104, 42.939026>,  <34.642860, 38.334019, 43.514072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289265, 38.672104, 42.939026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.675983, 38.681438, 42.837238>,  <34.908016, 38.687038, 42.776165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.675983, 38.681438, 42.837238>,  <34.289265, 38.672104, 42.939026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675983, 38.681438, 42.837238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222126, -0.415544, -0.882033,
		-0.126331, 0.909274, -0.396563,
		0.966799, 0.023341, -0.254469,
		34.966022, 38.688442, 42.760899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273956, 39.046970, 42.389053>,  <34.289265, 38.672104, 42.939026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273956, 39.046970, 42.389053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625111, 38.858261, 42.356197>,  <34.835804, 38.745033, 42.336483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625111, 38.858261, 42.356197>,  <34.273956, 39.046970, 42.389053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625111, 38.858261, 42.356197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207336, -0.219854, -0.953245,
		0.431660, 0.853869, -0.290823,
		0.877885, -0.471776, -0.082136,
		34.888477, 38.716728, 42.331558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550114, 39.322697, 41.871323>,  <34.273956, 39.046970, 42.389053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550114, 39.322697, 41.871323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.769512, 38.989307, 41.898056>,  <34.901150, 38.789272, 41.914097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.769512, 38.989307, 41.898056>,  <34.550114, 39.322697, 41.871323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769512, 38.989307, 41.898056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147418, -0.175071, -0.973457,
		0.823054, 0.524086, -0.218896,
		0.548497, -0.833477, 0.066833,
		34.934063, 38.739265, 41.918106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921795, 39.428162, 41.355991>,  <34.550114, 39.322697, 41.871323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921795, 39.428162, 41.355991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.962189, 39.038452, 41.436588>,  <34.986423, 38.804626, 41.484947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.962189, 39.038452, 41.436588>,  <34.921795, 39.428162, 41.355991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962189, 39.038452, 41.436588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043715, -0.206674, -0.977433,
		0.993927, 0.089895, -0.063460,
		0.100982, -0.974271, 0.201490,
		34.992485, 38.746170, 41.497036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567215, 39.182720, 40.984550>,  <34.921795, 39.428162, 41.355991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567215, 39.182720, 40.984550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294441, 38.899025, 41.056038>,  <35.130775, 38.728809, 41.098930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294441, 38.899025, 41.056038>,  <35.567215, 39.182720, 40.984550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294441, 38.899025, 41.056038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046926, -0.201418, -0.978381,
		0.729903, -0.675581, 0.104073,
		-0.681938, -0.709239, 0.178718,
		35.089859, 38.686253, 41.109653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349442, 39.073296, 40.984486>,  <35.567215, 39.182720, 40.984550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349442, 39.073296, 40.984486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.541637, 39.292599, 40.710682>,  <36.656956, 39.424179, 40.546402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.541637, 39.292599, 40.710682>,  <36.349442, 39.073296, 40.984486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541637, 39.292599, 40.710682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096449, 0.742739, 0.662598,
		0.871682, -0.384390, 0.303998,
		0.480487, 0.548255, -0.684506,
		36.685783, 39.457077, 40.505329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010693, 39.249996, 41.213295>,  <36.349442, 39.073296, 40.984486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010693, 39.249996, 41.213295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.005951, 39.521862, 40.919922>,  <37.003105, 39.684982, 40.743896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.005951, 39.521862, 40.919922>,  <37.010693, 39.249996, 41.213295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005951, 39.521862, 40.919922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486706, 0.644655, 0.589523,
		0.873485, -0.349975, -0.338439,
		-0.011858, 0.679660, -0.733431,
		37.002392, 39.725761, 40.699894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656265, 39.485905, 41.177563>,  <37.010693, 39.249996, 41.213295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656265, 39.485905, 41.177563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.418919, 39.778732, 41.043709>,  <37.276508, 39.954430, 40.963394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.418919, 39.778732, 41.043709>,  <37.656265, 39.485905, 41.177563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418919, 39.778732, 41.043709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331929, 0.601280, 0.726832,
		0.733305, 0.320205, -0.599778,
		-0.593370, 0.732073, -0.334636,
		37.240910, 39.998356, 40.943317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052052, 40.137260, 41.272938>,  <37.656265, 39.485905, 41.177563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052052, 40.137260, 41.272938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.665337, 40.230564, 41.231171>,  <37.433308, 40.286549, 41.206108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.665337, 40.230564, 41.231171>,  <38.052052, 40.137260, 41.272938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665337, 40.230564, 41.231171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072375, 0.641752, 0.763490,
		0.245106, 0.730577, -0.637322,
		-0.966791, 0.233262, -0.104422,
		37.375298, 40.300541, 41.199844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117294, 40.694237, 41.532356>,  <38.052052, 40.137260, 41.272938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117294, 40.694237, 41.532356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721127, 40.644947, 41.507404>,  <37.483425, 40.615372, 41.492432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721127, 40.644947, 41.507404>,  <38.117294, 40.694237, 41.532356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721127, 40.644947, 41.507404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103931, 0.367437, 0.924223,
		-0.090967, 0.921849, -0.376723,
		-0.990416, -0.123227, -0.062384,
		37.424004, 40.607979, 41.488689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671406, 41.395279, 41.650581>,  <38.117294, 40.694237, 41.532356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671406, 41.395279, 41.650581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429188, 41.087818, 41.733028>,  <37.283855, 40.903343, 41.782497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429188, 41.087818, 41.733028>,  <37.671406, 41.395279, 41.650581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429188, 41.087818, 41.733028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180107, 0.384659, 0.905317,
		-0.775161, 0.511088, -0.371369,
		-0.605547, -0.768652, 0.206122,
		37.247524, 40.857224, 41.794865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138977, 41.654388, 41.903355>,  <37.671406, 41.395279, 41.650581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138977, 41.654388, 41.903355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.110519, 41.273743, 42.022930>,  <37.093445, 41.045353, 42.094677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.110519, 41.273743, 42.022930>,  <37.138977, 41.654388, 41.903355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110519, 41.273743, 42.022930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324577, 0.305476, 0.895173,
		-0.943180, -0.033342, -0.330606,
		-0.071145, -0.951616, 0.298940,
		37.089176, 40.988258, 42.112614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493023, 41.637848, 42.276550>,  <37.138977, 41.654388, 41.903355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493023, 41.637848, 42.276550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.731792, 41.334831, 42.382236>,  <36.875053, 41.153023, 42.445648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.731792, 41.334831, 42.382236>,  <36.493023, 41.637848, 42.276550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731792, 41.334831, 42.382236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095077, 0.260215, 0.960858,
		-0.796645, -0.598680, 0.083304,
		0.596924, -0.757542, 0.264219,
		36.910870, 41.107567, 42.461502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193100, 41.363361, 42.859791>,  <36.493023, 41.637848, 42.276550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193100, 41.363361, 42.859791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.562634, 41.211517, 42.879482>,  <36.784355, 41.120411, 42.891296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.562634, 41.211517, 42.879482>,  <36.193100, 41.363361, 42.859791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562634, 41.211517, 42.879482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067263, 0.287590, 0.955389,
		-0.376835, -0.879310, 0.291219,
		0.923835, -0.379612, 0.049229,
		36.839783, 41.097633, 42.894253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245007, 40.931698, 43.496586>,  <36.193100, 41.363361, 42.859791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245007, 40.931698, 43.496586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.614449, 41.067028, 43.424488>,  <36.836113, 41.148228, 43.381229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.614449, 41.067028, 43.424488>,  <36.245007, 40.931698, 43.496586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614449, 41.067028, 43.424488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188895, 0.007470, 0.981969,
		0.333576, -0.940998, -0.057010,
		0.923604, 0.338330, -0.180242,
		36.891529, 41.168526, 43.370415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684803, 40.502651, 43.863724>,  <36.245007, 40.931698, 43.496586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684803, 40.502651, 43.863724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.866932, 40.855030, 43.812168>,  <36.976212, 41.066456, 43.781235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.866932, 40.855030, 43.812168>,  <36.684803, 40.502651, 43.863724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866932, 40.855030, 43.812168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261154, 0.006245, 0.965277,
		0.851163, -0.473173, -0.227220,
		0.455324, 0.880947, -0.128887,
		37.003529, 41.119316, 43.773502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344273, 40.376392, 44.027431>,  <36.684803, 40.502651, 43.863724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344273, 40.376392, 44.027431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311543, 40.772808, 44.069653>,  <37.291904, 41.010658, 44.094986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311543, 40.772808, 44.069653>,  <37.344273, 40.376392, 44.027431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311543, 40.772808, 44.069653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442326, -0.058797, 0.894925,
		0.893114, 0.119913, -0.433552,
		-0.081822, 0.991042, 0.105552,
		37.286995, 41.070122, 44.101318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010410, 40.639393, 44.370636>,  <37.344273, 40.376392, 44.027431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010410, 40.639393, 44.370636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.750786, 40.938385, 44.427193>,  <37.595009, 41.117779, 44.461128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.750786, 40.938385, 44.427193>,  <38.010410, 40.639393, 44.370636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750786, 40.938385, 44.427193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355830, 0.134028, 0.924890,
		0.672383, 0.650626, -0.352968,
		-0.649065, 0.747477, 0.141394,
		37.556065, 41.162628, 44.469612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335613, 41.237713, 44.706806>,  <38.010410, 40.639393, 44.370636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335613, 41.237713, 44.706806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949833, 41.314960, 44.778957>,  <37.718365, 41.361309, 44.822247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949833, 41.314960, 44.778957>,  <38.335613, 41.237713, 44.706806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949833, 41.314960, 44.778957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242473, 0.375380, 0.894593,
		0.105052, 0.906529, -0.408863,
		-0.964454, 0.193117, 0.180375,
		37.660496, 41.372894, 44.833069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407471, 41.809139, 44.356964>,  <38.335613, 41.237713, 44.706806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407471, 41.809139, 44.356964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.744953, 42.015926, 44.299137>,  <38.947445, 42.139999, 44.264442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.744953, 42.015926, 44.299137>,  <38.407471, 41.809139, 44.356964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744953, 42.015926, 44.299137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032937, -0.318655, -0.947298,
		-0.535789, 0.794483, -0.285880,
		0.843709, 0.516968, -0.144564,
		38.998066, 42.171017, 44.255768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317699, 42.255844, 43.773487>,  <38.407471, 41.809139, 44.356964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317699, 42.255844, 43.773487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.711842, 42.209492, 43.823513>,  <38.948326, 42.181683, 43.853531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.711842, 42.209492, 43.823513>,  <38.317699, 42.255844, 43.773487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711842, 42.209492, 43.823513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118551, -0.061558, -0.991038,
		0.122539, 0.991354, -0.046919,
		0.985358, -0.115879, 0.125069,
		39.007450, 42.174728, 43.861034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507240, 42.613510, 43.237141>,  <38.317699, 42.255844, 43.773487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507240, 42.613510, 43.237141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.798920, 42.365883, 43.353775>,  <38.973927, 42.217308, 43.423756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.798920, 42.365883, 43.353775>,  <38.507240, 42.613510, 43.237141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798920, 42.365883, 43.353775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270908, -0.130128, -0.953769,
		0.628393, 0.774480, 0.072822,
		0.729200, -0.619069, 0.291584,
		39.017681, 42.180161, 43.441250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093956, 42.735428, 42.728886>,  <38.507240, 42.613510, 43.237141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093956, 42.735428, 42.728886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.167820, 42.382046, 42.901119>,  <39.212139, 42.170017, 43.004459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.167820, 42.382046, 42.901119>,  <39.093956, 42.735428, 42.728886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167820, 42.382046, 42.901119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289264, -0.369850, -0.882914,
		0.939269, 0.287594, 0.187255,
		0.184664, -0.883459, 0.430579,
		39.223221, 42.117008, 43.030293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639534, 42.520901, 42.315002>,  <39.093956, 42.735428, 42.728886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639534, 42.520901, 42.315002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.530003, 42.194370, 42.518429>,  <39.464283, 41.998451, 42.640484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.530003, 42.194370, 42.518429>,  <39.639534, 42.520901, 42.315002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530003, 42.194370, 42.518429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150839, -0.558679, -0.815552,
		0.949877, -0.146611, 0.276115,
		-0.273829, -0.816323, 0.508561,
		39.447853, 41.949474, 42.670998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207367, 42.115986, 42.207924>,  <39.639534, 42.520901, 42.315002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207367, 42.115986, 42.207924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.903797, 41.881695, 42.321735>,  <39.721657, 41.741119, 42.390022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.903797, 41.881695, 42.321735>,  <40.207367, 42.115986, 42.207924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903797, 41.881695, 42.321735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220497, -0.642283, -0.734066,
		0.612717, -0.494359, 0.616593,
		-0.758920, -0.585731, 0.284534,
		39.676121, 41.705975, 42.407097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570942, 41.488934, 42.274597>,  <40.207367, 42.115986, 42.207924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570942, 41.488934, 42.274597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.182198, 41.461403, 42.184486>,  <39.948952, 41.444885, 42.130421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.182198, 41.461403, 42.184486>,  <40.570942, 41.488934, 42.274597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182198, 41.461403, 42.184486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210555, -0.682633, -0.699771,
		-0.105621, -0.727513, 0.677915,
		-0.971860, -0.068828, -0.225281,
		39.890640, 41.440754, 42.116901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506924, 40.799736, 42.172306>,  <40.570942, 41.488934, 42.274597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506924, 40.799736, 42.172306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160904, 40.939209, 42.028023>,  <39.953293, 41.022892, 41.941452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160904, 40.939209, 42.028023>,  <40.506924, 40.799736, 42.172306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160904, 40.939209, 42.028023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022248, -0.691624, -0.721915,
		-0.501191, -0.632518, 0.590532,
		-0.865051, 0.348680, -0.360708,
		39.901390, 41.043812, 41.919811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087563, 40.263893, 41.960884>,  <40.506924, 40.799736, 42.172306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087563, 40.263893, 41.960884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.957535, 40.568863, 41.737080>,  <39.879520, 40.751842, 41.602798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.957535, 40.568863, 41.737080>,  <40.087563, 40.263893, 41.960884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957535, 40.568863, 41.737080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015627, -0.587227, -0.809272,
		-0.945562, -0.271809, 0.178973,
		-0.325065, 0.762420, -0.559507,
		39.860016, 40.797588, 41.569229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525337, 40.015663, 41.591831>,  <40.087563, 40.263893, 41.960884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525337, 40.015663, 41.591831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610664, 40.352295, 41.393341>,  <39.661861, 40.554272, 41.274246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610664, 40.352295, 41.393341>,  <39.525337, 40.015663, 41.591831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610664, 40.352295, 41.393341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430998, -0.374760, -0.820850,
		-0.876775, 0.388980, 0.282773,
		0.213322, 0.841576, -0.496229,
		39.674660, 40.604767, 41.244473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898952, 40.303551, 41.241028>,  <39.525337, 40.015663, 41.591831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898952, 40.303551, 41.241028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.230309, 40.423122, 41.051544>,  <39.429123, 40.494865, 40.937855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.230309, 40.423122, 41.051544>,  <38.898952, 40.303551, 41.241028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230309, 40.423122, 41.051544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324405, -0.433396, -0.840791,
		-0.456645, 0.850180, -0.262047,
		0.828394, 0.298933, -0.473711,
		39.478828, 40.512802, 40.909431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660480, 40.666950, 40.550777>,  <38.898952, 40.303551, 41.241028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660480, 40.666950, 40.550777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.040028, 40.549160, 40.505299>,  <39.267757, 40.478485, 40.478012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.040028, 40.549160, 40.505299>,  <38.660480, 40.666950, 40.550777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040028, 40.549160, 40.505299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246590, -0.466615, -0.849391,
		0.197072, 0.833999, -0.515372,
		0.948871, -0.294477, -0.113699,
		39.324688, 40.460815, 40.471188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793591, 40.807827, 39.859196>,  <38.660480, 40.666950, 40.550777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793591, 40.807827, 39.859196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067173, 40.532345, 39.955444>,  <39.231323, 40.367058, 40.013191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067173, 40.532345, 39.955444>,  <38.793591, 40.807827, 39.859196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067173, 40.532345, 39.955444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162222, -0.465148, -0.870242,
		0.711262, 0.556170, -0.429862,
		0.683952, -0.688703, 0.240620,
		39.272358, 40.325733, 40.027630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249096, 40.763386, 39.324589>,  <38.793591, 40.807827, 39.859196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249096, 40.763386, 39.324589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300503, 40.415154, 39.514565>,  <39.331345, 40.206215, 39.628551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.300503, 40.415154, 39.514565>,  <39.249096, 40.763386, 39.324589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300503, 40.415154, 39.514565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028871, -0.481994, -0.875699,
		0.991287, 0.098828, -0.087078,
		0.128515, -0.870583, 0.474942,
		39.339058, 40.153980, 39.657047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.987356, 40.231575, 29.378309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354589, 40.100262, 29.467167>,  <30.574930, 40.021473, 29.520481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354589, 40.100262, 29.467167>,  <29.987356, 40.231575, 29.378309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354589, 40.100262, 29.467167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395236, -0.800797, 0.450015,
		0.030158, -0.500951, -0.864950,
		0.918084, -0.328288, 0.222144,
		30.630014, 40.001774, 29.533810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103802, 39.521877, 29.130901>,  <29.987356, 40.231575, 29.378309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103802, 39.521877, 29.130901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.334816, 39.623013, 29.441391>,  <30.473425, 39.683693, 29.627686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.334816, 39.623013, 29.441391>,  <30.103802, 39.521877, 29.130901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334816, 39.623013, 29.441391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311500, -0.810642, 0.495810,
		0.754599, -0.528143, -0.389417,
		0.577537, 0.252834, 0.776226,
		30.508078, 39.698864, 29.674259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557829, 38.986732, 29.205608>,  <30.103802, 39.521877, 29.130901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557829, 38.986732, 29.205608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.565481, 39.169788, 29.561180>,  <30.570072, 39.279621, 29.774523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.565481, 39.169788, 29.561180>,  <30.557829, 38.986732, 29.205608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565481, 39.169788, 29.561180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251884, -0.858210, 0.447248,
		0.967568, -0.232464, 0.098853,
		0.019132, 0.457642, 0.888931,
		30.571220, 39.307079, 29.827860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016447, 38.459042, 29.609268>,  <30.557829, 38.986732, 29.205608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016447, 38.459042, 29.609268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.777735, 38.659031, 29.860310>,  <30.634508, 38.779022, 30.010935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.777735, 38.659031, 29.860310>,  <31.016447, 38.459042, 29.609268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777735, 38.659031, 29.860310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288673, -0.863557, 0.413444,
		0.748681, 0.065563, 0.659681,
		-0.596778, 0.499970, 0.627603,
		30.598701, 38.809021, 30.048590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003103, 38.144436, 30.263308>,  <31.016447, 38.459042, 29.609268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003103, 38.144436, 30.263308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683458, 38.374283, 30.333998>,  <30.491673, 38.512192, 30.376411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683458, 38.374283, 30.333998>,  <31.003103, 38.144436, 30.263308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683458, 38.374283, 30.333998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500780, -0.798888, 0.333162,
		0.332626, 0.177732, 0.926159,
		-0.799111, 0.574620, 0.176727,
		30.443726, 38.546669, 30.387016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832092, 38.098358, 30.962379>,  <31.003103, 38.144436, 30.263308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832092, 38.098358, 30.962379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.507030, 38.176926, 30.742920>,  <30.311995, 38.224064, 30.611244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.507030, 38.176926, 30.742920>,  <30.832092, 38.098358, 30.962379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507030, 38.176926, 30.742920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470710, -0.776286, 0.419301,
		-0.343553, 0.599001, 0.723304,
		-0.812652, 0.196414, -0.548651,
		30.263235, 38.235851, 30.578325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193287, 38.312588, 31.400663>,  <30.832092, 38.098358, 30.962379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193287, 38.312588, 31.400663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.033916, 38.190300, 31.054762>,  <29.938295, 38.116928, 30.847221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.033916, 38.190300, 31.054762>,  <30.193287, 38.312588, 31.400663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033916, 38.190300, 31.054762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707401, -0.497697, 0.501878,
		-0.583817, 0.811687, -0.017969,
		-0.398425, -0.305716, -0.864752,
		29.914389, 38.098587, 30.795336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444517, 38.381233, 31.466236>,  <30.193287, 38.312588, 31.400663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444517, 38.381233, 31.466236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.504904, 38.122463, 31.167250>,  <29.541136, 37.967201, 30.987858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.504904, 38.122463, 31.167250>,  <29.444517, 38.381233, 31.466236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504904, 38.122463, 31.167250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761341, -0.558380, 0.329502,
		-0.630531, 0.519331, -0.576824,
		0.150966, -0.646921, -0.747464,
		29.550194, 37.928387, 30.943010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729334, 38.152977, 31.348394>,  <29.444517, 38.381233, 31.466236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729334, 38.152977, 31.348394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977369, 37.895836, 31.168510>,  <29.126190, 37.741550, 31.060581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977369, 37.895836, 31.168510>,  <28.729334, 38.152977, 31.348394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977369, 37.895836, 31.168510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709090, -0.704508, 0.029339,
		-0.335683, 0.300690, -0.892694,
		0.620088, -0.642848, -0.449708,
		29.163395, 37.702980, 31.033598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276224, 37.725185, 30.853407>,  <28.729334, 38.152977, 31.348394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276224, 37.725185, 30.853407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.616749, 37.526634, 30.921385>,  <28.821064, 37.407505, 30.962172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.616749, 37.526634, 30.921385>,  <28.276224, 37.725185, 30.853407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616749, 37.526634, 30.921385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523260, -0.826909, 0.205961,
		0.038294, -0.264262, -0.963690,
		0.851312, -0.496373, 0.169944,
		28.872143, 37.377724, 30.972368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267370, 37.045761, 30.393763>,  <28.276224, 37.725185, 30.853407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267370, 37.045761, 30.393763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.516724, 36.992271, 30.701921>,  <28.666336, 36.960178, 30.886816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.516724, 36.992271, 30.701921>,  <28.267370, 37.045761, 30.393763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516724, 36.992271, 30.701921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431748, -0.880319, 0.196548,
		0.651911, -0.455142, -0.606512,
		0.623382, -0.133729, 0.770397,
		28.703739, 36.952152, 30.933041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219639, 36.419266, 30.537294>,  <28.267370, 37.045761, 30.393763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219639, 36.419266, 30.537294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427578, 36.478508, 30.873823>,  <28.552341, 36.514053, 31.075741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427578, 36.478508, 30.873823>,  <28.219639, 36.419266, 30.537294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427578, 36.478508, 30.873823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385556, -0.838165, 0.385780,
		0.762303, -0.524923, -0.378615,
		0.519847, 0.148104, 0.841323,
		28.583532, 36.522938, 31.126221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358147, 35.712296, 30.869598>,  <28.219639, 36.419266, 30.537294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358147, 35.712296, 30.869598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381737, 35.980835, 31.165115>,  <28.395891, 36.141956, 31.342426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381737, 35.980835, 31.165115>,  <28.358147, 35.712296, 30.869598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381737, 35.980835, 31.165115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221907, -0.712748, 0.665393,
		0.973283, -0.203186, 0.106941,
		0.058977, 0.671346, 0.738793,
		28.399429, 36.182240, 31.386753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373596, 35.291950, 31.393848>,  <28.358147, 35.712296, 30.869598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373596, 35.291950, 31.393848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297041, 35.634457, 31.585756>,  <28.251108, 35.839962, 31.700901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297041, 35.634457, 31.585756>,  <28.373596, 35.291950, 31.393848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297041, 35.634457, 31.585756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415006, -0.513560, 0.751017,
		0.889461, -0.055371, 0.453645,
		-0.191389, 0.856265, 0.479771,
		28.239624, 35.891335, 31.729687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669024, 35.248440, 32.123173>,  <28.373596, 35.291950, 31.393848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669024, 35.248440, 32.123173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.382463, 35.527393, 32.114944>,  <28.210527, 35.694767, 32.110008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.382463, 35.527393, 32.114944>,  <28.669024, 35.248440, 32.123173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382463, 35.527393, 32.114944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434189, -0.422562, 0.795563,
		0.546123, 0.578873, 0.605521,
		-0.716401, 0.697386, -0.020570,
		28.167543, 35.736610, 32.108772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660807, 35.536335, 32.811928>,  <28.669024, 35.248440, 32.123173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660807, 35.536335, 32.811928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297211, 35.627331, 32.672222>,  <28.079052, 35.681927, 32.588398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297211, 35.627331, 32.672222>,  <28.660807, 35.536335, 32.811928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297211, 35.627331, 32.672222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416608, -0.522225, 0.744122,
		-0.013114, 0.821906, 0.569472,
		-0.908992, 0.227488, -0.349261,
		28.024513, 35.695576, 32.567444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298853, 35.587814, 33.431152>,  <28.660807, 35.536335, 32.811928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298853, 35.587814, 33.431152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.005390, 35.574688, 33.159660>,  <27.829313, 35.566814, 32.996765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.005390, 35.574688, 33.159660>,  <28.298853, 35.587814, 33.431152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005390, 35.574688, 33.159660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644898, -0.281138, 0.710682,
		-0.214134, 0.959106, 0.185099,
		-0.733658, -0.032811, -0.678727,
		27.785294, 35.564846, 32.956043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830973, 35.886276, 33.723766>,  <28.298853, 35.587814, 33.431152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830973, 35.886276, 33.723766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644703, 35.665363, 33.447178>,  <27.532942, 35.532818, 33.281223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644703, 35.665363, 33.447178>,  <27.830973, 35.886276, 33.723766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644703, 35.665363, 33.447178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696010, -0.254005, 0.671604,
		-0.546551, 0.794020, -0.266109,
		-0.465674, -0.552281, -0.691473,
		27.505001, 35.499680, 33.239735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184471, 35.909199, 33.881805>,  <27.830973, 35.886276, 33.723766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184471, 35.909199, 33.881805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.227684, 35.572628, 33.670021>,  <27.253611, 35.370686, 33.542950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.227684, 35.572628, 33.670021>,  <27.184471, 35.909199, 33.881805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227684, 35.572628, 33.670021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628646, -0.470396, 0.619299,
		-0.770152, 0.265939, -0.579778,
		0.108030, -0.841430, -0.529458,
		27.260094, 35.320198, 33.511185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663645, 36.287605, 34.303555>,  <27.184471, 35.909199, 33.881805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663645, 36.287605, 34.303555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959452, 36.032059, 34.388378>,  <28.136936, 35.878731, 34.439274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959452, 36.032059, 34.388378>,  <27.663645, 36.287605, 34.303555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959452, 36.032059, 34.388378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655447, 0.755166, -0.010674,
		-0.153320, 0.146887, 0.977199,
		0.739515, -0.638865, 0.212058,
		28.181307, 35.840401, 34.451996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925638, 36.388920, 34.935684>,  <27.663645, 36.287605, 34.303555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925638, 36.388920, 34.935684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.250782, 36.241951, 34.754902>,  <28.445868, 36.153770, 34.646431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.250782, 36.241951, 34.754902>,  <27.925638, 36.388920, 34.935684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250782, 36.241951, 34.754902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463480, 0.877966, 0.119841,
		0.352772, -0.306887, 0.883953,
		0.812858, -0.367418, -0.451958,
		28.494640, 36.131725, 34.619316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406820, 36.671883, 35.368004>,  <27.925638, 36.388920, 34.935684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406820, 36.671883, 35.368004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606462, 36.571796, 35.036152>,  <28.726248, 36.511745, 34.837040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606462, 36.571796, 35.036152>,  <28.406820, 36.671883, 35.368004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606462, 36.571796, 35.036152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488338, 0.872113, 0.030755,
		0.715834, -0.420488, 0.557469,
		0.499108, -0.250218, -0.829628,
		28.756195, 36.496731, 34.787262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077784, 36.701572, 35.497829>,  <28.406820, 36.671883, 35.368004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077784, 36.701572, 35.497829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056673, 36.735615, 35.099842>,  <29.044006, 36.756042, 34.861050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056673, 36.735615, 35.099842>,  <29.077784, 36.701572, 35.497829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056673, 36.735615, 35.099842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688649, 0.724647, 0.025458,
		0.723171, -0.683844, -0.096855,
		-0.052776, 0.085110, -0.994973,
		29.040840, 36.761147, 34.801350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676405, 36.808739, 35.317841>,  <29.077784, 36.701572, 35.497829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676405, 36.808739, 35.317841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468786, 36.930584, 34.998390>,  <29.344215, 37.003693, 34.806721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468786, 36.930584, 34.998390>,  <29.676405, 36.808739, 35.317841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468786, 36.930584, 34.998390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542295, 0.839570, -0.032220,
		0.660685, -0.449813, -0.600969,
		-0.519049, 0.304616, -0.798623,
		29.313072, 37.021969, 34.758804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187061, 37.148468, 34.868973>,  <29.676405, 36.808739, 35.317841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187061, 37.148468, 34.868973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.840410, 37.287590, 34.725868>,  <29.632420, 37.371063, 34.640007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.840410, 37.287590, 34.725868>,  <30.187061, 37.148468, 34.868973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840410, 37.287590, 34.725868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435500, 0.877196, -0.202154,
		0.243515, -0.330996, -0.911670,
		-0.866626, 0.347805, -0.357759,
		29.580423, 37.391933, 34.618542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460299, 37.598892, 34.457893>,  <30.187061, 37.148468, 34.868973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460299, 37.598892, 34.457893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073431, 37.696774, 34.485325>,  <29.841311, 37.755501, 34.501785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073431, 37.696774, 34.485325>,  <30.460299, 37.598892, 34.457893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073431, 37.696774, 34.485325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247806, 0.967938, 0.041089,
		-0.056325, 0.056735, -0.996799,
		-0.967171, 0.244698, 0.068578,
		29.783279, 37.770184, 34.505898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426788, 38.186504, 34.000744>,  <30.460299, 37.598892, 34.457893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426788, 38.186504, 34.000744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.100531, 38.208820, 34.231087>,  <29.904776, 38.222210, 34.369293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.100531, 38.208820, 34.231087>,  <30.426788, 38.186504, 34.000744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100531, 38.208820, 34.231087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054726, 0.983437, -0.172790,
		-0.575958, -0.172450, -0.799083,
		-0.815646, 0.055789, 0.575855,
		29.855837, 38.225555, 34.403843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826021, 38.386162, 33.595695>,  <30.426788, 38.186504, 34.000744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826021, 38.386162, 33.595695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763136, 38.497337, 33.974754>,  <29.725405, 38.564045, 34.202190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763136, 38.497337, 33.974754>,  <29.826021, 38.386162, 33.595695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763136, 38.497337, 33.974754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141423, 0.956025, -0.256936,
		-0.977386, 0.093625, -0.189608,
		-0.157215, 0.277940, 0.947646,
		29.715971, 38.580719, 34.259048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291525, 38.819138, 33.470592>,  <29.826021, 38.386162, 33.595695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291525, 38.819138, 33.470592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412766, 38.910984, 33.840546>,  <29.485510, 38.966091, 34.062519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412766, 38.910984, 33.840546>,  <29.291525, 38.819138, 33.470592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412766, 38.910984, 33.840546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018360, 0.968950, -0.246573,
		-0.952781, 0.091718, 0.289475,
		0.303102, 0.229615, 0.924882,
		29.503696, 38.979870, 34.118011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797501, 39.171555, 33.735001>,  <29.291525, 38.819138, 33.470592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797501, 39.171555, 33.735001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.122007, 39.278446, 33.943016>,  <29.316711, 39.342583, 34.067825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.122007, 39.278446, 33.943016>,  <28.797501, 39.171555, 33.735001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122007, 39.278446, 33.943016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189314, 0.961583, -0.198793,
		-0.553181, 0.062823, 0.830689,
		0.811265, 0.267229, 0.520036,
		29.365387, 39.358616, 34.099026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580729, 39.726570, 34.157227>,  <28.797501, 39.171555, 33.735001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580729, 39.726570, 34.157227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979204, 39.758015, 34.142109>,  <29.218290, 39.776882, 34.133038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979204, 39.758015, 34.142109>,  <28.580729, 39.726570, 34.157227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979204, 39.758015, 34.142109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081171, 0.994120, -0.071676,
		0.031934, 0.074470, 0.996712,
		0.996189, 0.078615, -0.037791,
		29.278061, 39.781601, 34.130772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670389, 40.352982, 34.489506>,  <28.580729, 39.726570, 34.157227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670389, 40.352982, 34.489506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024054, 40.294281, 34.312092>,  <29.236252, 40.259060, 34.205643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024054, 40.294281, 34.312092>,  <28.670389, 40.352982, 34.489506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024054, 40.294281, 34.312092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166654, 0.985997, 0.005987,
		0.436445, -0.079210, 0.896238,
		0.884162, -0.146748, -0.443534,
		29.289303, 40.250256, 34.179031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254927, 40.815166, 34.830101>,  <28.670389, 40.352982, 34.489506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254927, 40.815166, 34.830101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366173, 40.714039, 34.459431>,  <29.432920, 40.653362, 34.237026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366173, 40.714039, 34.459431>,  <29.254927, 40.815166, 34.830101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366173, 40.714039, 34.459431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063536, 0.967470, -0.244878,
		0.958445, 0.009227, 0.285129,
		0.278114, -0.252818, -0.926680,
		29.449608, 40.638195, 34.181427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793907, 41.267822, 34.788906>,  <29.254927, 40.815166, 34.830101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793907, 41.267822, 34.788906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.729668, 41.117744, 34.423737>,  <29.691124, 41.027699, 34.204636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.729668, 41.117744, 34.423737>,  <29.793907, 41.267822, 34.788906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729668, 41.117744, 34.423737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072799, 0.917911, -0.390052,
		0.984331, -0.129102, -0.120101,
		-0.160598, -0.375197, -0.912927,
		29.681488, 41.005184, 34.149857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328253, 41.606537, 34.332821>,  <29.793907, 41.267822, 34.788906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328253, 41.606537, 34.332821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014059, 41.494099, 34.112278>,  <29.825542, 41.426636, 33.979950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014059, 41.494099, 34.112278>,  <30.328253, 41.606537, 34.332821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014059, 41.494099, 34.112278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075954, 0.840381, -0.536648,
		0.614202, -0.463408, -0.638756,
		-0.785486, -0.281094, -0.551361,
		29.778414, 41.409771, 33.946869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564129, 41.720615, 33.590008>,  <30.328253, 41.606537, 34.332821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564129, 41.720615, 33.590008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.166340, 41.696899, 33.555355>,  <29.927666, 41.682671, 33.534561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.166340, 41.696899, 33.555355>,  <30.564129, 41.720615, 33.590008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166340, 41.696899, 33.555355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003980, 0.845951, -0.533247,
		0.104903, -0.529955, -0.841512,
		-0.994475, -0.059289, -0.086633,
		29.867998, 41.679111, 33.529366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373905, 41.786491, 32.904644>,  <30.564129, 41.720615, 33.590008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373905, 41.786491, 32.904644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017647, 41.873657, 33.064274>,  <29.803892, 41.925957, 33.160053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017647, 41.873657, 33.064274>,  <30.373905, 41.786491, 32.904644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017647, 41.873657, 33.064274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094978, 0.769157, -0.631962,
		-0.444665, -0.600759, -0.664351,
		-0.890647, 0.217913, 0.399076,
		29.750452, 41.939030, 33.183998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844059, 41.742607, 32.356823>,  <30.373905, 41.786491, 32.904644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844059, 41.742607, 32.356823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.700930, 41.978611, 32.646336>,  <29.615051, 42.120213, 32.820042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.700930, 41.978611, 32.646336>,  <29.844059, 41.742607, 32.356823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700930, 41.978611, 32.646336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118774, 0.740046, -0.661986,
		-0.926204, -0.322841, -0.194730,
		-0.357825, 0.590005, 0.723778,
		29.593582, 42.155613, 32.863468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380491, 42.071384, 32.055965>,  <29.844059, 41.742607, 32.356823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380491, 42.071384, 32.055965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.420191, 42.304989, 32.378227>,  <29.444010, 42.445152, 32.571583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.420191, 42.304989, 32.378227>,  <29.380491, 42.071384, 32.055965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420191, 42.304989, 32.378227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145496, 0.809469, -0.568851,
		-0.984368, -0.060762, 0.165309,
		0.099248, 0.584011, 0.805656,
		29.449965, 42.480190, 32.619923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839231, 42.638493, 31.907063>,  <29.380491, 42.071384, 32.055965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839231, 42.638493, 31.907063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098190, 42.797859, 32.166954>,  <29.253565, 42.893478, 32.322887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098190, 42.797859, 32.166954>,  <28.839231, 42.638493, 31.907063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098190, 42.797859, 32.166954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113550, 0.893395, -0.434686,
		-0.753649, 0.207637, 0.623619,
		0.647395, 0.398413, 0.649729,
		29.292408, 42.917381, 32.361874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525618, 43.157845, 32.215824>,  <28.839231, 42.638493, 31.907063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525618, 43.157845, 32.215824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.914259, 43.230087, 32.276974>,  <29.147444, 43.273434, 32.313663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.914259, 43.230087, 32.276974>,  <28.525618, 43.157845, 32.215824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914259, 43.230087, 32.276974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079434, 0.857549, -0.508233,
		-0.222889, 0.481656, 0.847542,
		0.971602, 0.180603, 0.152878,
		29.205740, 43.284267, 32.322838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555990, 43.964119, 32.494186>,  <28.525618, 43.157845, 32.215824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555990, 43.964119, 32.494186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.854240, 43.807652, 32.278400>,  <29.033192, 43.713772, 32.148930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.854240, 43.807652, 32.278400>,  <28.555990, 43.964119, 32.494186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854240, 43.807652, 32.278400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083767, 0.748126, -0.658248,
		0.661078, 0.535997, 0.525055,
		0.745626, -0.391172, -0.539468,
		29.077929, 43.690300, 32.116558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.215946, 41.062176, 45.625580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.820274, 41.006775, 45.644955>,  <41.582870, 40.973534, 45.656578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.820274, 41.006775, 45.644955>,  <42.215946, 41.062176, 45.625580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820274, 41.006775, 45.644955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057931, 0.671951, 0.738327,
		-0.134805, 0.727530, -0.672702,
		-0.989177, -0.138501, 0.048436,
		41.523521, 40.965225, 45.659485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027706, 41.734299, 45.679718>,  <42.215946, 41.062176, 45.625580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027706, 41.734299, 45.679718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.732185, 41.496052, 45.805832>,  <41.554871, 41.353104, 45.881500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.732185, 41.496052, 45.805832>,  <42.027706, 41.734299, 45.679718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732185, 41.496052, 45.805832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092871, 0.553363, 0.827746,
		-0.667489, 0.582262, -0.464143,
		-0.738805, -0.595617, 0.315289,
		41.510544, 41.317368, 45.900417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435566, 42.147106, 45.876045>,  <42.027706, 41.734299, 45.679718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435566, 42.147106, 45.876045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.403679, 41.802414, 46.076473>,  <41.384544, 41.595600, 46.196728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.403679, 41.802414, 46.076473>,  <41.435566, 42.147106, 45.876045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403679, 41.802414, 46.076473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189635, 0.506597, 0.841070,
		-0.978613, -0.027968, -0.203801,
		-0.079722, -0.861729, 0.501066,
		41.379761, 41.543896, 46.226791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890251, 42.232521, 46.249950>,  <41.435566, 42.147106, 45.876045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890251, 42.232521, 46.249950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.035591, 41.911499, 46.439217>,  <41.122795, 41.718887, 46.552776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.035591, 41.911499, 46.439217>,  <40.890251, 42.232521, 46.249950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035591, 41.911499, 46.439217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253993, 0.403308, 0.879108,
		-0.896361, -0.439606, -0.057300,
		0.363351, -0.802552, 0.473166,
		41.144596, 41.670734, 46.581165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354698, 41.926849, 46.643845>,  <40.890251, 42.232521, 46.249950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354698, 41.926849, 46.643845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.681713, 41.776833, 46.818645>,  <40.877922, 41.686821, 46.923527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.681713, 41.776833, 46.818645>,  <40.354698, 41.926849, 46.643845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681713, 41.776833, 46.818645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382468, 0.213696, 0.898917,
		-0.430519, -0.902040, 0.031263,
		0.817540, -0.375044, 0.437002,
		40.926975, 41.664318, 46.949745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081451, 41.538532, 47.302799>,  <40.354698, 41.926849, 46.643845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081451, 41.538532, 47.302799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.465729, 41.634666, 47.358376>,  <40.696297, 41.692348, 47.391720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.465729, 41.634666, 47.358376>,  <40.081451, 41.538532, 47.302799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465729, 41.634666, 47.358376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210174, 0.302707, 0.929621,
		0.181360, -0.922284, 0.341321,
		0.960695, 0.240333, 0.138941,
		40.753937, 41.706768, 47.400059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208221, 41.347355, 47.992504>,  <40.081451, 41.538532, 47.302799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208221, 41.347355, 47.992504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.506676, 41.591286, 47.885620>,  <40.685749, 41.737644, 47.821487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.506676, 41.591286, 47.885620>,  <40.208221, 41.347355, 47.992504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506676, 41.591286, 47.885620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013137, 0.414748, 0.909841,
		0.665668, -0.675352, 0.317469,
		0.746132, 0.609823, -0.267213,
		40.730515, 41.774231, 47.805458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589058, 41.427364, 48.628544>,  <40.208221, 41.347355, 47.992504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589058, 41.427364, 48.628544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.722813, 41.720268, 48.391235>,  <40.803066, 41.896011, 48.248848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.722813, 41.720268, 48.391235>,  <40.589058, 41.427364, 48.628544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722813, 41.720268, 48.391235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215108, 0.553593, 0.804527,
		0.917559, -0.396641, 0.027598,
		0.334386, 0.732264, -0.593275,
		40.823128, 41.939949, 48.213253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286819, 41.573406, 48.936253>,  <40.589058, 41.427364, 48.628544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286819, 41.573406, 48.936253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.125729, 41.880756, 48.737293>,  <41.029076, 42.065166, 48.617916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.125729, 41.880756, 48.737293>,  <41.286819, 41.573406, 48.936253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125729, 41.880756, 48.737293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221616, 0.609101, 0.761500,
		0.888086, 0.196446, -0.415587,
		-0.402728, 0.768378, -0.497398,
		41.004910, 42.111271, 48.588074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783833, 42.166382, 48.855820>,  <41.286819, 41.573406, 48.936253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783833, 42.166382, 48.855820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.439545, 42.363419, 48.804417>,  <41.232971, 42.481640, 48.773575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.439545, 42.363419, 48.804417>,  <41.783833, 42.166382, 48.855820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439545, 42.363419, 48.804417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264095, 0.647865, 0.714511,
		0.435222, 0.581053, -0.687720,
		-0.860718, 0.492594, -0.128512,
		41.181328, 42.511196, 48.765862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937645, 42.808105, 48.988232>,  <41.783833, 42.166382, 48.855820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937645, 42.808105, 48.988232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.540379, 42.803375, 49.034668>,  <41.302017, 42.800537, 49.062531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.540379, 42.803375, 49.034668>,  <41.937645, 42.808105, 48.988232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540379, 42.803375, 49.034668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084308, 0.615092, 0.783935,
		-0.080679, 0.788367, -0.609893,
		-0.993168, -0.011829, 0.116091,
		41.242428, 42.799828, 49.069496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810318, 43.532433, 48.995152>,  <41.937645, 42.808105, 48.988232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810318, 43.532433, 48.995152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.507484, 43.338749, 49.170586>,  <41.325783, 43.222538, 49.275845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.507484, 43.338749, 49.170586>,  <41.810318, 43.532433, 48.995152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507484, 43.338749, 49.170586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071471, 0.605909, 0.792317,
		-0.649393, 0.631199, -0.424119,
		-0.757087, -0.484213, 0.438586,
		41.280357, 43.193485, 49.302162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382744, 43.987286, 49.289349>,  <41.810318, 43.532433, 48.995152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382744, 43.987286, 49.289349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.313438, 43.658836, 49.506874>,  <41.271854, 43.461765, 49.637390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.313438, 43.658836, 49.506874>,  <41.382744, 43.987286, 49.289349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313438, 43.658836, 49.506874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043284, 0.557977, 0.828727,
		-0.983923, 0.120054, -0.132221,
		-0.173268, -0.821127, 0.543810,
		41.261459, 43.412498, 49.670017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733318, 43.986439, 49.600407>,  <41.382744, 43.987286, 49.289349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733318, 43.986439, 49.600407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.985775, 43.762112, 49.814751>,  <41.137249, 43.627518, 49.943356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.985775, 43.762112, 49.814751>,  <40.733318, 43.986439, 49.600407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985775, 43.762112, 49.814751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198753, 0.550847, 0.810595,
		-0.749768, -0.618107, 0.236201,
		0.631145, -0.560813, 0.535859,
		41.175117, 43.593868, 49.975510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629917, 44.625217, 49.056286>,  <40.733318, 43.986439, 49.600407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629917, 44.625217, 49.056286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247250, 44.726715, 49.113403>,  <40.017647, 44.787613, 49.147675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247250, 44.726715, 49.113403>,  <40.629917, 44.625217, 49.056286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247250, 44.726715, 49.113403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256830, -0.504366, -0.824411,
		-0.137165, -0.825367, 0.547682,
		-0.956673, 0.253741, 0.142798,
		39.960247, 44.802837, 49.156242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205944, 44.006130, 48.885864>,  <40.629917, 44.625217, 49.056286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205944, 44.006130, 48.885864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.966156, 44.324543, 48.852478>,  <39.822285, 44.515591, 48.832447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.966156, 44.324543, 48.852478>,  <40.205944, 44.006130, 48.885864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966156, 44.324543, 48.852478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359463, -0.360930, -0.860533,
		-0.715140, -0.485858, 0.502511,
		-0.599467, 0.796035, -0.083467,
		39.786316, 44.563354, 48.827438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434937, 43.782104, 48.707748>,  <40.205944, 44.006130, 48.885864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434937, 43.782104, 48.707748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.520416, 44.152340, 48.582775>,  <39.571705, 44.374481, 48.507793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.520416, 44.152340, 48.582775>,  <39.434937, 43.782104, 48.707748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520416, 44.152340, 48.582775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333305, -0.231546, -0.913944,
		-0.918281, 0.299444, 0.259023,
		0.213700, 0.925591, -0.312431,
		39.584526, 44.430016, 48.489044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871670, 43.925678, 48.295097>,  <39.434937, 43.782104, 48.707748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871670, 43.925678, 48.295097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127422, 44.210705, 48.179554>,  <39.280876, 44.381721, 48.110229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127422, 44.210705, 48.179554>,  <38.871670, 43.925678, 48.295097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127422, 44.210705, 48.179554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187458, -0.219881, -0.957346,
		-0.745685, 0.666262, -0.007013,
		0.639385, 0.712564, -0.288858,
		39.319237, 44.424473, 48.092896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557388, 44.261913, 47.830055>,  <38.871670, 43.925678, 48.295097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557388, 44.261913, 47.830055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.930935, 44.364178, 47.730030>,  <39.155064, 44.425537, 47.670017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.930935, 44.364178, 47.730030>,  <38.557388, 44.261913, 47.830055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930935, 44.364178, 47.730030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229248, -0.108701, -0.967279,
		-0.274481, 0.960635, -0.042901,
		0.933866, 0.255665, -0.250060,
		39.211094, 44.440876, 47.655014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413342, 44.727573, 47.265182>,  <38.557388, 44.261913, 47.830055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413342, 44.727573, 47.265182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.793289, 44.603199, 47.252113>,  <39.021259, 44.528576, 47.244274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.793289, 44.603199, 47.252113>,  <38.413342, 44.727573, 47.265182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793289, 44.603199, 47.252113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180097, -0.458755, -0.870120,
		0.255562, 0.832385, -0.491755,
		0.949870, -0.310933, -0.032670,
		39.078251, 44.509918, 47.242313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630600, 44.768311, 46.555542>,  <38.413342, 44.727573, 47.265182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630600, 44.768311, 46.555542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.912407, 44.525909, 46.703285>,  <39.081490, 44.380470, 46.791931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.912407, 44.525909, 46.703285>,  <38.630600, 44.768311, 46.555542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912407, 44.525909, 46.703285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027444, -0.496802, -0.867430,
		0.709160, 0.621252, -0.333372,
		0.704513, -0.605998, 0.369362,
		39.123760, 44.344109, 46.814095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036583, 44.665398, 45.931866>,  <38.630600, 44.768311, 46.555542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036583, 44.665398, 45.931866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.166912, 44.380112, 46.180111>,  <39.245110, 44.208942, 46.329060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.166912, 44.380112, 46.180111>,  <39.036583, 44.665398, 45.931866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166912, 44.380112, 46.180111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151984, -0.608388, -0.778951,
		0.933133, 0.348127, -0.089833,
		0.325827, -0.713212, 0.620617,
		39.264660, 44.166149, 46.366295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677933, 44.368778, 45.665287>,  <39.036583, 44.665398, 45.931866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677933, 44.368778, 45.665287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.497925, 44.084175, 45.881157>,  <39.389919, 43.913414, 46.010677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.497925, 44.084175, 45.881157>,  <39.677933, 44.368778, 45.665287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497925, 44.084175, 45.881157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250184, -0.680573, -0.688643,
		0.857260, -0.174882, 0.484275,
		-0.450016, -0.711504, 0.539675,
		39.362919, 43.870724, 46.043060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201744, 43.840752, 45.694370>,  <39.677933, 44.368778, 45.665287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201744, 43.840752, 45.694370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.846657, 43.675484, 45.775612>,  <39.633606, 43.576324, 45.824356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.846657, 43.675484, 45.775612>,  <40.201744, 43.840752, 45.694370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846657, 43.675484, 45.775612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274051, -0.828706, -0.487998,
		0.369940, -0.377543, 0.848885,
		-0.887716, -0.413167, 0.203105,
		39.580341, 43.551533, 45.836544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315231, 43.065376, 45.775154>,  <40.201744, 43.840752, 45.694370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315231, 43.065376, 45.775154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.918404, 43.098122, 45.737000>,  <39.680305, 43.117767, 45.714108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.918404, 43.098122, 45.737000>,  <40.315231, 43.065376, 45.775154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918404, 43.098122, 45.737000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010977, -0.812392, -0.583008,
		-0.125220, -0.577337, 0.806847,
		-0.992068, 0.081861, -0.095390,
		39.620785, 43.122681, 45.708382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976215, 42.338280, 45.839962>,  <40.315231, 43.065376, 45.775154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976215, 42.338280, 45.839962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.740864, 42.569263, 45.613567>,  <39.599651, 42.707855, 45.477730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.740864, 42.569263, 45.613567>,  <39.976215, 42.338280, 45.839962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740864, 42.569263, 45.613567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144337, -0.763742, -0.629178,
		-0.795599, -0.288501, 0.532719,
		-0.588378, 0.577464, -0.565991,
		39.564350, 42.742504, 45.443771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545757, 41.837006, 45.495247>,  <39.976215, 42.338280, 45.839962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545757, 41.837006, 45.495247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.420353, 42.153660, 45.285477>,  <39.345112, 42.343651, 45.159615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.420353, 42.153660, 45.285477>,  <39.545757, 41.837006, 45.495247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420353, 42.153660, 45.285477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208053, -0.596115, -0.775475,
		-0.926512, -0.134011, 0.351590,
		-0.313510, 0.791636, -0.524427,
		39.326302, 42.391151, 45.128147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980152, 41.612091, 44.996227>,  <39.545757, 41.837006, 45.495247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980152, 41.612091, 44.996227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121300, 41.950569, 44.836510>,  <39.205990, 42.153656, 44.740681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.121300, 41.950569, 44.836510>,  <38.980152, 41.612091, 44.996227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121300, 41.950569, 44.836510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188295, -0.353794, -0.916174,
		-0.916531, 0.398474, 0.034492,
		0.352868, 0.846196, -0.399294,
		39.227161, 42.204430, 44.716721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313164, 41.999287, 45.184044>,  <38.980152, 41.612091, 44.996227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313164, 41.999287, 45.184044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947918, 41.837860, 45.207203>,  <37.728771, 41.741005, 45.221100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947918, 41.837860, 45.207203>,  <38.313164, 41.999287, 45.184044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947918, 41.837860, 45.207203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059926, 0.273333, 0.960051,
		-0.403267, 0.873170, -0.273769,
		-0.913118, -0.403563, 0.057900,
		37.673981, 41.716793, 45.224571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836437, 42.493752, 45.443291>,  <38.313164, 41.999287, 45.184044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836437, 42.493752, 45.443291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680611, 42.142937, 45.555744>,  <37.587112, 41.932446, 45.623215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680611, 42.142937, 45.555744>,  <37.836437, 42.493752, 45.443291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680611, 42.142937, 45.555744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035651, 0.290657, 0.956163,
		-0.920306, 0.382515, -0.081964,
		-0.389571, -0.877041, 0.281130,
		37.563740, 41.879826, 45.640083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350491, 42.690670, 45.901390>,  <37.836437, 42.493752, 45.443291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350491, 42.690670, 45.901390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349007, 42.296947, 45.971951>,  <37.348114, 42.060715, 46.014286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349007, 42.296947, 45.971951>,  <37.350491, 42.690670, 45.901390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349007, 42.296947, 45.971951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116810, 0.175623, 0.977503,
		-0.993147, -0.016976, -0.115629,
		-0.003713, -0.984311, 0.176403,
		37.347893, 42.001656, 46.024872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813560, 42.592392, 46.321827>,  <37.350491, 42.690670, 45.901390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813560, 42.592392, 46.321827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021667, 42.262070, 46.408882>,  <37.146534, 42.063877, 46.461113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021667, 42.262070, 46.408882>,  <36.813560, 42.592392, 46.321827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021667, 42.262070, 46.408882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120242, 0.181469, 0.976018,
		-0.845495, -0.533962, -0.004884,
		0.520270, -0.825805, 0.217636,
		37.177750, 42.014328, 46.474174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396927, 42.225559, 46.750706>,  <36.813560, 42.592392, 46.321827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396927, 42.225559, 46.750706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785145, 42.148266, 46.808262>,  <37.018074, 42.101891, 46.842796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785145, 42.148266, 46.808262>,  <36.396927, 42.225559, 46.750706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785145, 42.148266, 46.808262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100293, 0.218989, 0.970559,
		-0.219058, -0.956401, 0.193158,
		0.970544, -0.193236, 0.143892,
		37.076309, 42.090294, 46.851429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383183, 41.975693, 47.461891>,  <36.396927, 42.225559, 46.750706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383183, 41.975693, 47.461891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764595, 42.052574, 47.369080>,  <36.993443, 42.098701, 47.313393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764595, 42.052574, 47.369080>,  <36.383183, 41.975693, 47.461891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764595, 42.052574, 47.369080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195208, 0.192530, 0.961679,
		0.229515, -0.962283, 0.146062,
		0.953528, 0.192208, -0.232033,
		37.050655, 42.110233, 47.299469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847759, 41.494080, 47.872875>,  <36.383183, 41.975693, 47.461891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847759, 41.494080, 47.872875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021626, 41.836849, 47.762058>,  <37.125946, 42.042511, 47.695568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021626, 41.836849, 47.762058>,  <36.847759, 41.494080, 47.872875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021626, 41.836849, 47.762058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245304, 0.183337, 0.951953,
		0.866542, -0.481737, -0.130518,
		0.434662, 0.856923, -0.277041,
		37.152023, 42.093925, 47.678947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193687, 41.023762, 48.346924>,  <36.847759, 41.494080, 47.872875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193687, 41.023762, 48.346924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.847271, 40.900299, 48.504250>,  <36.639420, 40.826221, 48.598644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.847271, 40.900299, 48.504250>,  <37.193687, 41.023762, 48.346924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847271, 40.900299, 48.504250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196199, -0.513770, -0.835192,
		0.459862, -0.800482, 0.384390,
		-0.866044, -0.308656, 0.393317,
		36.587456, 40.807701, 48.622246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165009, 40.256065, 48.248669>,  <37.193687, 41.023762, 48.346924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165009, 40.256065, 48.248669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786324, 40.383095, 48.270130>,  <36.559113, 40.459312, 48.283005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.786324, 40.383095, 48.270130>,  <37.165009, 40.256065, 48.248669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786324, 40.383095, 48.270130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214342, -0.496904, -0.840918,
		-0.240394, -0.807609, 0.538496,
		-0.946714, 0.317575, 0.053652,
		36.502308, 40.478367, 48.286224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832623, 39.791161, 47.904560>,  <37.165009, 40.256065, 48.248669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832623, 39.791161, 47.904560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.574783, 40.096962, 47.902840>,  <36.420078, 40.280445, 47.901806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.574783, 40.096962, 47.902840>,  <36.832623, 39.791161, 47.904560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574783, 40.096962, 47.902840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367008, -0.314371, -0.875486,
		-0.670668, -0.562761, 0.483224,
		-0.644601, 0.764507, -0.004301,
		36.381405, 40.326313, 47.901550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189972, 39.430557, 47.904987>,  <36.832623, 39.791161, 47.904560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189972, 39.430557, 47.904987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178661, 39.798801, 47.749203>,  <36.171875, 40.019749, 47.655731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178661, 39.798801, 47.749203>,  <36.189972, 39.430557, 47.904987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178661, 39.798801, 47.749203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403287, -0.367006, -0.838252,
		-0.914637, 0.133361, 0.381647,
		-0.028276, 0.920609, -0.389460,
		36.170177, 40.074986, 47.632366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516300, 39.358410, 47.607487>,  <36.189972, 39.430557, 47.904987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516300, 39.358410, 47.607487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684921, 39.678940, 47.437702>,  <35.786095, 39.871258, 47.335831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684921, 39.678940, 47.437702>,  <35.516300, 39.358410, 47.607487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684921, 39.678940, 47.437702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588376, -0.114465, -0.800444,
		-0.690004, 0.587173, 0.423229,
		0.421554, 0.801327, -0.424460,
		35.811386, 39.919338, 47.310364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929092, 39.657375, 47.194469>,  <35.516300, 39.358410, 47.607487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929092, 39.657375, 47.194469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268677, 39.828323, 47.070141>,  <35.472427, 39.930893, 46.995544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268677, 39.828323, 47.070141>,  <34.929092, 39.657375, 47.194469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268677, 39.828323, 47.070141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251214, -0.191077, -0.948884,
		-0.464919, 0.883652, -0.054855,
		0.848965, 0.427374, -0.310821,
		35.523365, 39.956535, 46.976894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746788, 40.040672, 46.641968>,  <34.929092, 39.657375, 47.194469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746788, 40.040672, 46.641968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141300, 39.991505, 46.597881>,  <35.378006, 39.962002, 46.571430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141300, 39.991505, 46.597881>,  <34.746788, 40.040672, 46.641968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141300, 39.991505, 46.597881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129415, -0.161057, -0.978423,
		0.102518, 0.979260, -0.174755,
		0.986277, -0.122922, -0.110220,
		35.437183, 39.954628, 46.564816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.224827, 40.337078, 50.984924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.370872, 40.628914, 50.753620>,  <39.458500, 40.804016, 50.614838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.370872, 40.628914, 50.753620>,  <39.224827, 40.337078, 50.984924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370872, 40.628914, 50.753620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267492, -0.677165, -0.685489,
		-0.891706, 0.095602, -0.442403,
		0.365114, 0.729594, -0.578260,
		39.480408, 40.847794, 50.580143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039536, 40.181225, 50.300961>,  <39.224827, 40.337078, 50.984924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039536, 40.181225, 50.300961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.346527, 40.432411, 50.249386>,  <39.530724, 40.583122, 50.218441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.346527, 40.432411, 50.249386>,  <39.039536, 40.181225, 50.300961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346527, 40.432411, 50.249386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294317, -0.523833, -0.799360,
		-0.569517, 0.575545, -0.586854,
		0.767481, 0.627970, -0.128939,
		39.576771, 40.620804, 50.210705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979012, 40.421257, 49.613678>,  <39.039536, 40.181225, 50.300961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979012, 40.421257, 49.613678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.360031, 40.484970, 49.717430>,  <39.588642, 40.523197, 49.779682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.360031, 40.484970, 49.717430>,  <38.979012, 40.421257, 49.613678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360031, 40.484970, 49.717430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301082, -0.367878, -0.879781,
		-0.044713, 0.916130, -0.398380,
		0.952549, 0.159283, 0.259382,
		39.645798, 40.532757, 49.795246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330288, 40.547157, 48.989029>,  <38.979012, 40.421257, 49.613678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330288, 40.547157, 48.989029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.624931, 40.474220, 49.249538>,  <39.801720, 40.430458, 49.405842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.624931, 40.474220, 49.249538>,  <39.330288, 40.547157, 48.989029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624931, 40.474220, 49.249538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530341, -0.441844, -0.723541,
		0.419691, 0.878365, -0.228765,
		0.736612, -0.182340, 0.651271,
		39.845917, 40.419518, 49.444920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977055, 40.788494, 48.666935>,  <39.330288, 40.547157, 48.989029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977055, 40.788494, 48.666935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.070393, 40.505947, 48.934246>,  <40.126396, 40.336418, 49.094631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.070393, 40.505947, 48.934246>,  <39.977055, 40.788494, 48.666935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070393, 40.505947, 48.934246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560049, -0.464188, -0.686203,
		0.794919, 0.534387, 0.287287,
		0.233343, -0.706371, 0.668275,
		40.140396, 40.294037, 49.134727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628021, 40.636986, 48.583103>,  <39.977055, 40.788494, 48.666935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628021, 40.636986, 48.583103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.481869, 40.306038, 48.753731>,  <40.394176, 40.107468, 48.856106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.481869, 40.306038, 48.753731>,  <40.628021, 40.636986, 48.583103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481869, 40.306038, 48.753731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587881, -0.560398, -0.583394,
		0.721729, 0.037610, 0.691153,
		-0.365380, -0.827369, 0.426566,
		40.372253, 40.057827, 48.881702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204376, 40.095062, 48.584442>,  <40.628021, 40.636986, 48.583103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204376, 40.095062, 48.584442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.852074, 39.910095, 48.625317>,  <40.640694, 39.799114, 48.649841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.852074, 39.910095, 48.625317>,  <41.204376, 40.095062, 48.584442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852074, 39.910095, 48.625317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324613, -0.746606, -0.580694,
		0.344816, -0.478278, 0.807683,
		-0.880754, -0.462417, 0.102187,
		40.587849, 39.771370, 48.655972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387341, 39.371864, 48.663059>,  <41.204376, 40.095062, 48.584442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387341, 39.371864, 48.663059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.996731, 39.384418, 48.577816>,  <40.762363, 39.391953, 48.526669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.996731, 39.384418, 48.577816>,  <41.387341, 39.371864, 48.663059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996731, 39.384418, 48.577816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081021, -0.863153, -0.498400,
		-0.199587, -0.503966, 0.840347,
		-0.976525, 0.031388, -0.213106,
		40.703773, 39.393833, 48.513885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267262, 38.759846, 48.438377>,  <41.387341, 39.371864, 48.663059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267262, 38.759846, 48.438377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.923206, 38.921223, 48.313545>,  <40.716774, 39.018047, 48.238647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.923206, 38.921223, 48.313545>,  <41.267262, 38.759846, 48.438377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923206, 38.921223, 48.313545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096230, -0.729220, -0.677479,
		-0.500898, -0.552696, 0.666055,
		-0.860140, 0.403442, -0.312079,
		40.665165, 39.042255, 48.219921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915867, 38.236080, 48.305672>,  <41.267262, 38.759846, 48.438377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915867, 38.236080, 48.305672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.705204, 38.507568, 48.100937>,  <40.578808, 38.670460, 47.978096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.705204, 38.507568, 48.100937>,  <40.915867, 38.236080, 48.305672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705204, 38.507568, 48.100937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047617, -0.577603, -0.814928,
		-0.848746, -0.453556, 0.271878,
		-0.526653, 0.678721, -0.511835,
		40.547207, 38.711185, 47.947388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234474, 37.914314, 48.103817>,  <40.915867, 38.236080, 48.305672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234474, 37.914314, 48.103817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.275848, 38.216145, 47.844616>,  <40.300671, 38.397243, 47.689095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.275848, 38.216145, 47.844616>,  <40.234474, 37.914314, 48.103817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275848, 38.216145, 47.844616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107544, -0.639195, -0.761487,
		-0.988805, 0.148451, 0.015038,
		0.103432, 0.754580, -0.648005,
		40.306877, 38.442520, 47.650215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723728, 37.841209, 47.595310>,  <40.234474, 37.914314, 48.103817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723728, 37.841209, 47.595310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.976662, 38.090847, 47.411720>,  <40.128422, 38.240631, 47.301567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.976662, 38.090847, 47.411720>,  <39.723728, 37.841209, 47.595310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976662, 38.090847, 47.411720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162214, -0.472659, -0.866187,
		-0.757521, 0.622174, -0.197642,
		0.632336, 0.624094, -0.458974,
		40.166363, 38.278076, 47.274029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119648, 38.228653, 47.571819>,  <39.723728, 37.841209, 47.595310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119648, 38.228653, 47.571819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.827045, 38.009007, 47.733498>,  <38.651485, 37.877220, 47.830505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.827045, 38.009007, 47.733498>,  <39.119648, 38.228653, 47.571819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827045, 38.009007, 47.733498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176159, 0.420474, 0.890039,
		-0.658689, 0.722270, -0.210846,
		-0.731504, -0.549116, 0.404196,
		38.607594, 37.844273, 47.854755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824680, 38.658024, 48.038052>,  <39.119648, 38.228653, 47.571819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824680, 38.658024, 48.038052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.677128, 38.314449, 48.180126>,  <38.588596, 38.108303, 48.265369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.677128, 38.314449, 48.180126>,  <38.824680, 38.658024, 48.038052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677128, 38.314449, 48.180126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114707, 0.421284, 0.899646,
		-0.922372, 0.291120, -0.253929,
		-0.368881, -0.858935, 0.355187,
		38.566463, 38.056770, 48.286682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135132, 38.753765, 48.362507>,  <38.824680, 38.658024, 48.038052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135132, 38.753765, 48.362507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.300465, 38.436398, 48.541229>,  <38.399666, 38.245975, 48.648464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.300465, 38.436398, 48.541229>,  <38.135132, 38.753765, 48.362507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300465, 38.436398, 48.541229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234125, 0.381588, 0.894190,
		-0.879966, -0.474209, -0.028036,
		0.413334, -0.793421, 0.446809,
		38.424465, 38.198372, 48.675270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729801, 38.706837, 48.968822>,  <38.135132, 38.753765, 48.362507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729801, 38.706837, 48.968822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.998264, 38.419994, 49.043972>,  <38.159344, 38.247887, 49.089062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.998264, 38.419994, 49.043972>,  <37.729801, 38.706837, 48.968822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998264, 38.419994, 49.043972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073471, 0.187839, 0.979448,
		-0.737661, -0.671171, 0.073384,
		0.671161, -0.717110, 0.187873,
		38.199612, 38.204861, 49.100334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388523, 38.417290, 49.469341>,  <37.729801, 38.706837, 48.968822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388523, 38.417290, 49.469341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.778381, 38.333725, 49.501377>,  <38.012299, 38.283588, 49.520599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.778381, 38.333725, 49.501377>,  <37.388523, 38.417290, 49.469341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778381, 38.333725, 49.501377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054410, 0.125918, 0.990547,
		-0.217018, -0.969795, 0.111359,
		0.974650, -0.208907, 0.080093,
		38.070778, 38.271053, 49.525406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512897, 37.995522, 50.026211>,  <37.388523, 38.417290, 49.469341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512897, 37.995522, 50.026211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.863281, 38.187630, 50.008160>,  <38.073513, 38.302895, 49.997330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.863281, 38.187630, 50.008160>,  <37.512897, 37.995522, 50.026211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863281, 38.187630, 50.008160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048814, 0.181327, 0.982211,
		0.479909, -0.858174, 0.182279,
		0.875959, 0.480269, -0.045130,
		38.126068, 38.331711, 49.994621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924938, 37.804966, 50.686184>,  <37.512897, 37.995522, 50.026211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924938, 37.804966, 50.686184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.105171, 38.126312, 50.530457>,  <38.213310, 38.319122, 50.437019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.105171, 38.126312, 50.530457>,  <37.924938, 37.804966, 50.686184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105171, 38.126312, 50.530457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123437, 0.375848, 0.918424,
		0.884159, -0.461885, 0.070186,
		0.450585, 0.803369, -0.389323,
		38.240345, 38.367321, 50.413658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626816, 37.845818, 51.014412>,  <37.924938, 37.804966, 50.686184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626816, 37.845818, 51.014412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.523247, 38.213280, 50.895065>,  <38.461105, 38.433758, 50.823456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.523247, 38.213280, 50.895065>,  <38.626816, 37.845818, 51.014412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523247, 38.213280, 50.895065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081374, 0.328553, 0.940973,
		0.962463, 0.219364, -0.159826,
		-0.258927, 0.918658, -0.298370,
		38.445568, 38.488876, 50.805553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035767, 38.301811, 51.440639>,  <38.626816, 37.845818, 51.014412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035767, 38.301811, 51.440639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.730301, 38.522377, 51.306324>,  <38.547020, 38.654716, 51.225735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.730301, 38.522377, 51.306324>,  <39.035767, 38.301811, 51.440639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730301, 38.522377, 51.306324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001065, 0.519033, 0.854753,
		0.645610, 0.653104, -0.395781,
		-0.763667, 0.551416, -0.335789,
		38.501202, 38.687801, 51.205585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250996, 38.952610, 51.545841>,  <39.035767, 38.301811, 51.440639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250996, 38.952610, 51.545841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.851379, 38.955334, 51.528507>,  <38.611610, 38.956970, 51.518105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.851379, 38.955334, 51.528507>,  <39.250996, 38.952610, 51.545841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851379, 38.955334, 51.528507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031666, 0.571683, 0.819863,
		0.030361, 0.820446, -0.570917,
		-0.999037, 0.006814, -0.043337,
		38.551670, 38.957378, 51.515507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109589, 39.573872, 51.888561>,  <39.250996, 38.952610, 51.545841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109589, 39.573872, 51.888561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.751724, 39.399857, 51.847923>,  <38.537006, 39.295448, 51.823540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.751724, 39.399857, 51.847923>,  <39.109589, 39.573872, 51.888561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751724, 39.399857, 51.847923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351369, 0.544774, 0.761420,
		-0.275903, 0.716910, -0.640248,
		-0.894660, -0.435042, -0.101596,
		38.483326, 39.269344, 51.817444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640991, 40.085526, 51.964836>,  <39.109589, 39.573872, 51.888561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640991, 40.085526, 51.964836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.437943, 39.749851, 52.042904>,  <38.316113, 39.548447, 52.089745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.437943, 39.749851, 52.042904>,  <38.640991, 40.085526, 51.964836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437943, 39.749851, 52.042904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500760, 0.471698, 0.725769,
		-0.701114, 0.270684, -0.659674,
		-0.507621, -0.839185, 0.195167,
		38.285656, 39.498096, 52.101456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964760, 40.314857, 51.983711>,  <38.640991, 40.085526, 51.964836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964760, 40.314857, 51.983711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.991711, 39.963432, 52.172852>,  <38.007881, 39.752579, 52.286335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.991711, 39.963432, 52.172852>,  <37.964760, 40.314857, 51.983711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991711, 39.963432, 52.172852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659130, 0.316584, 0.682145,
		-0.749004, -0.357630, -0.557758,
		0.067378, -0.878565, 0.472847,
		38.011925, 39.699863, 52.314705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252277, 40.062542, 52.125038>,  <37.964760, 40.314857, 51.983711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252277, 40.062542, 52.125038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.493244, 39.891624, 52.394707>,  <37.637825, 39.789074, 52.556507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.493244, 39.891624, 52.394707>,  <37.252277, 40.062542, 52.125038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493244, 39.891624, 52.394707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573657, 0.355511, 0.737923,
		-0.554990, -0.831281, -0.030957,
		0.602415, -0.427298, 0.674175,
		37.673969, 39.763435, 52.596958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963341, 40.597923, 51.743118>,  <37.252277, 40.062542, 52.125038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963341, 40.597923, 51.743118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.023941, 40.966084, 51.598946>,  <37.060303, 41.186981, 51.512440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.023941, 40.966084, 51.598946>,  <36.963341, 40.597923, 51.743118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023941, 40.966084, 51.598946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607251, -0.201052, -0.768650,
		-0.779931, 0.335325, 0.528454,
		0.151501, 0.920399, -0.360433,
		37.069393, 41.242203, 51.490814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348518, 40.769188, 51.311474>,  <36.963341, 40.597923, 51.743118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348518, 40.769188, 51.311474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617981, 41.040508, 51.194111>,  <36.779659, 41.203300, 51.123692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617981, 41.040508, 51.194111>,  <36.348518, 40.769188, 51.311474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617981, 41.040508, 51.194111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438654, 0.047465, -0.897402,
		-0.594782, 0.733250, 0.329514,
		0.673660, 0.678301, -0.293412,
		36.820080, 41.243999, 51.106087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918709, 41.333763, 50.906303>,  <36.348518, 40.769188, 51.311474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918709, 41.333763, 50.906303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.298954, 41.333355, 50.782154>,  <36.527103, 41.333111, 50.707664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.298954, 41.333355, 50.782154>,  <35.918709, 41.333763, 50.906303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298954, 41.333355, 50.782154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307501, -0.138790, -0.941372,
		-0.042114, 0.990321, -0.132250,
		0.950615, -0.001022, -0.310369,
		36.584137, 41.333050, 50.689045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748871, 41.664600, 50.312492>,  <35.918709, 41.333763, 50.906303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748871, 41.664600, 50.312492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.121517, 41.522217, 50.283131>,  <36.345104, 41.436787, 50.265514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.121517, 41.522217, 50.283131>,  <35.748871, 41.664600, 50.312492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121517, 41.522217, 50.283131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096318, -0.047059, -0.994238,
		0.350450, 0.933318, -0.078126,
		0.931616, -0.355955, -0.073403,
		36.401001, 41.415432, 50.261108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043316, 42.000885, 49.678356>,  <35.748871, 41.664600, 50.312492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043316, 42.000885, 49.678356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.230202, 41.657742, 49.763954>,  <36.342331, 41.451855, 49.815315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.230202, 41.657742, 49.763954>,  <36.043316, 42.000885, 49.678356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230202, 41.657742, 49.763954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098890, -0.291222, -0.951531,
		0.878599, 0.423402, -0.220895,
		0.467210, -0.857858, 0.213997,
		36.370365, 41.400383, 49.828152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453442, 41.963585, 49.060486>,  <36.043316, 42.000885, 49.678356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453442, 41.963585, 49.060486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.468758, 41.599586, 49.225620>,  <36.477947, 41.381187, 49.324699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.468758, 41.599586, 49.225620>,  <36.453442, 41.963585, 49.060486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468758, 41.599586, 49.225620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085100, -0.414607, -0.906013,
		0.995636, -0.000440, -0.093317,
		0.038292, -0.910000, 0.412836,
		36.480244, 41.326588, 49.349472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924213, 41.602695, 48.650780>,  <36.453442, 41.963585, 49.060486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924213, 41.602695, 48.650780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.669601, 41.355530, 48.835392>,  <36.516834, 41.207230, 48.946159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.669601, 41.355530, 48.835392>,  <36.924213, 41.602695, 48.650780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669601, 41.355530, 48.835392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224820, -0.423769, -0.877425,
		0.737757, -0.662269, 0.130823,
		-0.636531, -0.617915, 0.461530,
		36.478642, 41.170155, 48.973850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691650, 41.621632, 48.503830>,  <36.924213, 41.602695, 48.650780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691650, 41.621632, 48.503830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.633305, 41.963364, 48.304295>,  <37.598297, 42.168404, 48.184574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.633305, 41.963364, 48.304295>,  <37.691650, 41.621632, 48.503830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633305, 41.963364, 48.304295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078854, 0.492592, 0.866681,
		0.986157, 0.165756, -0.004486,
		-0.145867, 0.854329, -0.498843,
		37.589546, 42.219662, 48.154640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251820, 42.052357, 48.604118>,  <37.691650, 41.621632, 48.503830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251820, 42.052357, 48.604118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.969425, 42.312366, 48.491657>,  <37.799988, 42.468372, 48.424183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.969425, 42.312366, 48.491657>,  <38.251820, 42.052357, 48.604118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969425, 42.312366, 48.491657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191262, 0.557220, 0.808038,
		0.681910, 0.516691, -0.517716,
		-0.705987, 0.650028, -0.281150,
		37.757629, 42.507374, 48.407310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524517, 42.665550, 48.725548>,  <38.251820, 42.052357, 48.604118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524517, 42.665550, 48.725548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.132313, 42.744141, 48.725563>,  <37.896992, 42.791294, 48.725571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.132313, 42.744141, 48.725563>,  <38.524517, 42.665550, 48.725548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132313, 42.744141, 48.725563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131767, 0.657465, 0.741874,
		0.145736, 0.727419, -0.670539,
		-0.980509, 0.196473, 0.000034,
		37.838161, 42.803082, 48.725574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563908, 43.461105, 48.791702>,  <38.524517, 42.665550, 48.725548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563908, 43.461105, 48.791702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.195778, 43.340923, 48.891891>,  <37.974899, 43.268814, 48.952003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.195778, 43.340923, 48.891891>,  <38.563908, 43.461105, 48.791702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195778, 43.340923, 48.891891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074111, 0.762658, 0.642542,
		-0.384075, 0.572783, -0.724158,
		-0.920323, -0.300452, 0.250469,
		37.919682, 43.250786, 48.967033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148815, 44.082642, 48.734489>,  <38.563908, 43.461105, 48.791702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148815, 44.082642, 48.734489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.946789, 43.828621, 48.968281>,  <37.825573, 43.676208, 49.108555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.946789, 43.828621, 48.968281>,  <38.148815, 44.082642, 48.734489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946789, 43.828621, 48.968281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029505, 0.664105, 0.747057,
		-0.862576, 0.394558, -0.316680,
		-0.505066, -0.635050, 0.584483,
		37.795269, 43.638107, 49.143627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916016, 44.542786, 49.133305>,  <38.148815, 44.082642, 48.734489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916016, 44.542786, 49.133305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.890808, 44.191517, 49.322971>,  <37.875683, 43.980755, 49.436771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.890808, 44.191517, 49.322971>,  <37.916016, 44.542786, 49.133305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890808, 44.191517, 49.322971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209282, 0.452920, 0.866639,
		-0.975823, 0.153848, 0.155245,
		-0.063017, -0.878177, 0.474168,
		37.871902, 43.928062, 49.465221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525990, 44.729980, 49.611130>,  <37.916016, 44.542786, 49.133305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525990, 44.729980, 49.611130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.684040, 44.386425, 49.741474>,  <37.778870, 44.180290, 49.819683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.684040, 44.386425, 49.741474>,  <37.525990, 44.729980, 49.611130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684040, 44.386425, 49.741474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004426, 0.352944, 0.935634,
		-0.918618, -0.371131, 0.135654,
		0.395121, -0.858890, 0.325863,
		37.802578, 44.128757, 49.839233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221966, 44.549496, 50.166927>,  <37.525990, 44.729980, 49.611130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221966, 44.549496, 50.166927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.573509, 44.361107, 50.197392>,  <37.784435, 44.248074, 50.215668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.573509, 44.361107, 50.197392>,  <37.221966, 44.549496, 50.166927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573509, 44.361107, 50.197392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133623, 0.396234, 0.908374,
		-0.457994, -0.788153, 0.411165,
		0.878855, -0.470971, 0.076158,
		37.837166, 44.219814, 50.220238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127228, 44.201042, 50.688759>,  <37.221966, 44.549496, 50.166927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127228, 44.201042, 50.688759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.524174, 44.232361, 50.650623>,  <37.762341, 44.251152, 50.627743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.524174, 44.232361, 50.650623>,  <37.127228, 44.201042, 50.688759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524174, 44.232361, 50.650623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049357, 0.456303, 0.888455,
		0.113071, -0.886373, 0.448952,
		0.992360, 0.078300, -0.095343,
		37.821880, 44.255852, 50.622021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.003521, 37.044037, 36.535770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345554, 36.855095, 36.621296>,  <36.550774, 36.741730, 36.672611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345554, 36.855095, 36.621296>,  <36.003521, 37.044037, 36.535770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345554, 36.855095, 36.621296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053222, 0.490161, 0.870005,
		-0.515757, -0.732545, 0.444267,
		0.855080, -0.472356, 0.213817,
		36.602077, 36.713387, 36.685440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867657, 36.724648, 37.147556>,  <36.003521, 37.044037, 36.535770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867657, 36.724648, 37.147556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264156, 36.771488, 37.123188>,  <36.502056, 36.799591, 37.108566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264156, 36.771488, 37.123188>,  <35.867657, 36.724648, 37.147556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264156, 36.771488, 37.123188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024201, 0.614912, 0.788224,
		0.129762, -0.779853, 0.612365,
		0.991250, 0.117102, -0.060919,
		36.561531, 36.806618, 37.104912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262417, 36.709484, 37.842266>,  <35.867657, 36.724648, 37.147556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262417, 36.709484, 37.842266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504814, 36.924473, 37.607693>,  <36.650253, 37.053467, 37.466949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504814, 36.924473, 37.607693>,  <36.262417, 36.709484, 37.842266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504814, 36.924473, 37.607693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212065, 0.601376, 0.770309,
		0.766685, -0.591160, 0.250448,
		0.605989, 0.537473, -0.586430,
		36.686611, 37.085716, 37.431763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891037, 36.807735, 38.226109>,  <36.262417, 36.709484, 37.842266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891037, 36.807735, 38.226109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877399, 37.097561, 37.950764>,  <36.869217, 37.271458, 37.785557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877399, 37.097561, 37.950764>,  <36.891037, 36.807735, 38.226109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877399, 37.097561, 37.950764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273907, 0.669165, 0.690792,
		0.961152, -0.164998, -0.221276,
		-0.034091, 0.724565, -0.688363,
		36.867172, 37.314930, 37.744255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530437, 37.284412, 38.424976>,  <36.891037, 36.807735, 38.226109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530437, 37.284412, 38.424976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304726, 37.506542, 38.180618>,  <37.169296, 37.639820, 38.034004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304726, 37.506542, 38.180618>,  <37.530437, 37.284412, 38.424976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304726, 37.506542, 38.180618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131625, 0.791011, 0.597475,
		0.815022, 0.256736, -0.519448,
		-0.564282, 0.555327, -0.610898,
		37.135441, 37.673141, 37.997349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848164, 37.886963, 38.447689>,  <37.530437, 37.284412, 38.424976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848164, 37.886963, 38.447689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470612, 37.944267, 38.328651>,  <37.244080, 37.978649, 38.257229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470612, 37.944267, 38.328651>,  <37.848164, 37.886963, 38.447689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470612, 37.944267, 38.328651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060302, 0.811133, 0.581745,
		0.324726, 0.567045, -0.756976,
		-0.943884, 0.143260, -0.297590,
		37.187447, 37.987244, 38.239376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924171, 38.534737, 38.284698>,  <37.848164, 37.886963, 38.447689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924171, 38.534737, 38.284698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541855, 38.449623, 38.365871>,  <37.312466, 38.398556, 38.414574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541855, 38.449623, 38.365871>,  <37.924171, 38.534737, 38.284698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541855, 38.449623, 38.365871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001298, 0.687087, 0.726574,
		-0.294038, 0.694717, -0.656437,
		-0.955793, -0.212788, 0.202931,
		37.255116, 38.385788, 38.426750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482559, 39.187801, 38.231884>,  <37.924171, 38.534737, 38.284698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482559, 39.187801, 38.231884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267075, 38.930408, 38.449406>,  <37.137783, 38.775974, 38.579918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267075, 38.930408, 38.449406>,  <37.482559, 39.187801, 38.231884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267075, 38.930408, 38.449406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171856, 0.715834, 0.676792,
		-0.824773, 0.271143, -0.496216,
		-0.538716, -0.643478, 0.543803,
		37.105461, 38.737366, 38.612545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961742, 39.597008, 38.476063>,  <37.482559, 39.187801, 38.231884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961742, 39.597008, 38.476063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973076, 39.263889, 38.697205>,  <36.979874, 39.064018, 38.829891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973076, 39.263889, 38.697205>,  <36.961742, 39.597008, 38.476063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973076, 39.263889, 38.697205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129236, 0.545387, 0.828161,
		-0.991209, -0.094910, -0.092176,
		0.028329, -0.832793, 0.552859,
		36.981575, 39.014050, 38.863064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370075, 39.603897, 38.901062>,  <36.961742, 39.597008, 38.476063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370075, 39.603897, 38.901062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584660, 39.330475, 39.099037>,  <36.713409, 39.166420, 39.217823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584660, 39.330475, 39.099037>,  <36.370075, 39.603897, 38.901062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584660, 39.330475, 39.099037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247904, 0.432954, 0.866657,
		-0.806695, -0.587621, 0.062804,
		0.536457, -0.683558, 0.494936,
		36.745598, 39.125408, 39.247517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915222, 39.320038, 39.422745>,  <36.370075, 39.603897, 38.901062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915222, 39.320038, 39.422745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280724, 39.219784, 39.550648>,  <36.500023, 39.159634, 39.627388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280724, 39.219784, 39.550648>,  <35.915222, 39.320038, 39.422745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280724, 39.219784, 39.550648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234400, 0.317622, 0.918789,
		-0.331840, -0.914494, 0.231479,
		0.913750, -0.250632, 0.319758,
		36.554848, 39.144596, 39.646576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761665, 39.347965, 40.149738>,  <35.915222, 39.320038, 39.422745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761665, 39.347965, 40.149738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157597, 39.354836, 40.093243>,  <36.395157, 39.358959, 40.059345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157597, 39.354836, 40.093243>,  <35.761665, 39.347965, 40.149738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157597, 39.354836, 40.093243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111092, 0.526865, 0.842658,
		0.088889, -0.849776, 0.519596,
		0.989827, 0.017180, -0.141236,
		36.454544, 39.359989, 40.050873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639851, 38.669827, 40.448921>,  <35.761665, 39.347965, 40.149738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639851, 38.669827, 40.448921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287243, 38.554085, 40.598164>,  <35.075680, 38.484642, 40.687710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287243, 38.554085, 40.598164>,  <35.639851, 38.669827, 40.448921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287243, 38.554085, 40.598164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327168, -0.195425, -0.924538,
		0.340430, -0.937062, 0.077603,
		-0.881515, -0.289351, 0.373105,
		35.022789, 38.467281, 40.710094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530907, 37.955116, 40.187717>,  <35.639851, 38.669827, 40.448921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530907, 37.955116, 40.187717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154922, 38.050121, 40.285755>,  <34.929333, 38.107124, 40.344578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154922, 38.050121, 40.285755>,  <35.530907, 37.955116, 40.187717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154922, 38.050121, 40.285755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297253, -0.216870, -0.929843,
		-0.167699, -0.946865, 0.274451,
		-0.939956, 0.237515, 0.245089,
		34.872936, 38.121376, 40.359283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113541, 37.382660, 39.916996>,  <35.530907, 37.955116, 40.187717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113541, 37.382660, 39.916996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844467, 37.667370, 39.997868>,  <34.683022, 37.838196, 40.046391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844467, 37.667370, 39.997868>,  <35.113541, 37.382660, 39.916996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844467, 37.667370, 39.997868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557289, -0.307613, -0.771235,
		-0.486752, -0.631467, 0.603590,
		-0.672682, 0.711774, 0.202179,
		34.642662, 37.880901, 40.058521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419804, 36.993652, 40.147369>,  <35.113541, 37.382660, 39.916996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419804, 36.993652, 40.147369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340309, 37.362194, 40.013741>,  <34.292610, 37.583321, 39.933563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340309, 37.362194, 40.013741>,  <34.419804, 36.993652, 40.147369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340309, 37.362194, 40.013741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697851, -0.372369, -0.611837,
		-0.688118, 0.111534, 0.716975,
		-0.198739, 0.921358, -0.334068,
		34.280689, 37.638603, 39.913521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679131, 37.097080, 40.228310>,  <34.419804, 36.993652, 40.147369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679131, 37.097080, 40.228310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819576, 37.345539, 39.948055>,  <33.903843, 37.494614, 39.779903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819576, 37.345539, 39.948055>,  <33.679131, 37.097080, 40.228310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819576, 37.345539, 39.948055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590524, -0.433794, -0.680518,
		-0.726634, 0.652684, 0.214490,
		0.351119, 0.621149, -0.700635,
		33.924911, 37.531883, 39.737865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089573, 37.128952, 39.820213>,  <33.679131, 37.097080, 40.228310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089573, 37.128952, 39.820213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368965, 37.300102, 39.590763>,  <33.536598, 37.402794, 39.453091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368965, 37.300102, 39.590763>,  <33.089573, 37.128952, 39.820213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368965, 37.300102, 39.590763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408622, -0.419594, -0.810536,
		-0.587501, 0.800539, -0.118237,
		0.698477, 0.427877, -0.573630,
		33.578506, 37.428467, 39.418674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785610, 37.363411, 39.209755>,  <33.089573, 37.128952, 39.820213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785610, 37.363411, 39.209755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170414, 37.322861, 39.108356>,  <33.401295, 37.298531, 39.047516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170414, 37.322861, 39.108356>,  <32.785610, 37.363411, 39.209755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170414, 37.322861, 39.108356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264510, -0.576082, -0.773411,
		-0.067632, 0.811081, -0.581011,
		0.962009, -0.101376, -0.253500,
		33.459015, 37.292446, 39.032307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890221, 37.661648, 38.585808>,  <32.785610, 37.363411, 39.209755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890221, 37.661648, 38.585808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168232, 37.374538, 38.602459>,  <33.335041, 37.202274, 38.612450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168232, 37.374538, 38.602459>,  <32.890221, 37.661648, 38.585808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168232, 37.374538, 38.602459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275095, -0.318980, -0.906959,
		0.664271, 0.618912, -0.419156,
		0.695030, -0.717774, 0.041630,
		33.376740, 37.159206, 38.614948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027740, 37.517937, 37.815182>,  <32.890221, 37.661648, 38.585808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027740, 37.517937, 37.815182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196941, 37.213982, 38.012623>,  <33.298462, 37.031609, 38.131088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196941, 37.213982, 38.012623>,  <33.027740, 37.517937, 37.815182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196941, 37.213982, 38.012623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281034, -0.627889, -0.725793,
		0.861448, 0.168291, -0.479150,
		0.422997, -0.759890, 0.493599,
		33.323841, 36.986015, 38.160702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544701, 37.113697, 37.385551>,  <33.027740, 37.517937, 37.815182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544701, 37.113697, 37.385551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445641, 36.852867, 37.672180>,  <33.386204, 36.696369, 37.844158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445641, 36.852867, 37.672180>,  <33.544701, 37.113697, 37.385551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445641, 36.852867, 37.672180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261160, -0.667305, -0.697495,
		0.932988, -0.359872, -0.005039,
		-0.247646, -0.652070, 0.716572,
		33.371346, 36.657246, 37.887154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829166, 36.522579, 37.091930>,  <33.544701, 37.113697, 37.385551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829166, 36.522579, 37.091930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569038, 36.399960, 37.369957>,  <33.412960, 36.326389, 37.536774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569038, 36.399960, 37.369957>,  <33.829166, 36.522579, 37.091930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569038, 36.399960, 37.369957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374654, -0.666527, -0.644497,
		0.660846, -0.679537, 0.318608,
		-0.650321, -0.306545, 0.695064,
		33.373943, 36.307995, 37.578476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850014, 35.719276, 37.110352>,  <33.829166, 36.522579, 37.091930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850014, 35.719276, 37.110352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486458, 35.847885, 37.216591>,  <33.268326, 35.925053, 37.280334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486458, 35.847885, 37.216591>,  <33.850014, 35.719276, 37.110352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486458, 35.847885, 37.216591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413837, -0.616587, -0.669745,
		-0.051576, -0.718638, 0.693469,
		-0.908889, 0.321526, 0.265598,
		33.213791, 35.944344, 37.296268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409359, 35.141186, 37.160828>,  <33.850014, 35.719276, 37.110352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409359, 35.141186, 37.160828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150112, 35.442806, 37.118214>,  <32.994564, 35.623779, 37.092644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150112, 35.442806, 37.118214>,  <33.409359, 35.141186, 37.160828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150112, 35.442806, 37.118214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606761, -0.595854, -0.526118,
		-0.460198, -0.276346, 0.843712,
		-0.648119, 0.754050, -0.106535,
		32.955677, 35.669022, 37.086254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043903, 34.766556, 37.367699>,  <33.409359, 35.141186, 37.160828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043903, 34.766556, 37.367699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867714, 34.563229, 37.663696>,  <33.762001, 34.441231, 37.841297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867714, 34.563229, 37.663696>,  <34.043903, 34.766556, 37.367699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867714, 34.563229, 37.663696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864570, -0.018101, 0.502186,
		-0.241875, 0.860979, 0.447449,
		-0.440472, -0.508318, 0.739999,
		33.735573, 34.410732, 37.885696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182243, 35.236317, 37.966396>,  <34.043903, 34.766556, 37.367699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182243, 35.236317, 37.966396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118629, 34.847515, 38.035583>,  <34.080460, 34.614235, 38.077095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118629, 34.847515, 38.035583>,  <34.182243, 35.236317, 37.966396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118629, 34.847515, 38.035583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703199, 0.011447, 0.710901,
		-0.692977, 0.234691, 0.681691,
		-0.159039, -0.972003, 0.172967,
		34.070919, 34.555916, 38.087475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016441, 35.023491, 38.715919>,  <34.182243, 35.236317, 37.966396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016441, 35.023491, 38.715919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252628, 34.784424, 38.498978>,  <34.394341, 34.640984, 38.368813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252628, 34.784424, 38.498978>,  <34.016441, 35.023491, 38.715919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252628, 34.784424, 38.498978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638851, -0.064513, 0.766620,
		-0.493170, -0.799147, 0.343726,
		0.590468, -0.597664, -0.542352,
		34.429768, 34.605125, 38.336273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124542, 34.397446, 39.015171>,  <34.016441, 35.023491, 38.715919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124542, 34.397446, 39.015171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444328, 34.478104, 38.788826>,  <34.636200, 34.526497, 38.653019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444328, 34.478104, 38.788826>,  <34.124542, 34.397446, 39.015171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444328, 34.478104, 38.788826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587529, -0.066204, 0.806490,
		0.125160, -0.977219, -0.171398,
		0.799465, 0.201642, -0.565859,
		34.684166, 34.538597, 38.619068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482159, 33.813168, 39.157379>,  <34.124542, 34.397446, 39.015171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482159, 33.813168, 39.157379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683720, 34.134228, 39.029736>,  <34.804657, 34.326862, 38.953148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683720, 34.134228, 39.029736>,  <34.482159, 33.813168, 39.157379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683720, 34.134228, 39.029736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629089, -0.087882, 0.772349,
		0.591884, -0.589938, -0.549224,
		0.503905, 0.802651, -0.319107,
		34.834892, 34.375023, 38.934002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182697, 33.746807, 39.543758>,  <34.482159, 33.813168, 39.157379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182697, 33.746807, 39.543758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176346, 34.116817, 39.391933>,  <35.172535, 34.338825, 39.300838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176346, 34.116817, 39.391933>,  <35.182697, 33.746807, 39.543758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176346, 34.116817, 39.391933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582747, 0.317036, 0.748261,
		0.812499, -0.209309, -0.544092,
		-0.015879, 0.925029, -0.379565,
		35.171581, 34.394325, 39.278065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836227, 33.976547, 39.618050>,  <35.182697, 33.746807, 39.543758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836227, 33.976547, 39.618050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618763, 34.311634, 39.597420>,  <35.488285, 34.512688, 39.585041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618763, 34.311634, 39.597420>,  <35.836227, 33.976547, 39.618050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618763, 34.311634, 39.597420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445631, 0.340184, 0.828063,
		0.711230, 0.427201, -0.558258,
		-0.543659, 0.837720, -0.051575,
		35.455666, 34.562950, 39.581947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324738, 34.556629, 39.655010>,  <35.836227, 33.976547, 39.618050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324738, 34.556629, 39.655010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962906, 34.688728, 39.762836>,  <35.745808, 34.767990, 39.827530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962906, 34.688728, 39.762836>,  <36.324738, 34.556629, 39.655010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962906, 34.688728, 39.762836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391128, 0.391464, 0.832931,
		0.169553, 0.858889, -0.483283,
		-0.904583, 0.330251, 0.269562,
		35.691532, 34.787804, 39.843704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449177, 35.268486, 39.887104>,  <36.324738, 34.556629, 39.655010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449177, 35.268486, 39.887104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089607, 35.180275, 40.038528>,  <35.873867, 35.127346, 40.129383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089607, 35.180275, 40.038528>,  <36.449177, 35.268486, 39.887104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089607, 35.180275, 40.038528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268494, 0.405497, 0.873775,
		-0.346200, 0.887096, -0.305298,
		-0.898920, -0.220530, 0.378563,
		35.819931, 35.114117, 40.152096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188519, 35.851147, 40.317677>,  <36.449177, 35.268486, 39.887104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188519, 35.851147, 40.317677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022942, 35.514534, 40.456520>,  <35.923595, 35.312569, 40.539825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022942, 35.514534, 40.456520>,  <36.188519, 35.851147, 40.317677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022942, 35.514534, 40.456520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271111, 0.250036, 0.929506,
		-0.868995, 0.478863, 0.124648,
		-0.413939, -0.841530, 0.347105,
		35.898758, 35.262074, 40.560650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871868, 36.173817, 40.892071>,  <36.188519, 35.851147, 40.317677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871868, 36.173817, 40.892071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844299, 35.778149, 40.943893>,  <35.827759, 35.540749, 40.974987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844299, 35.778149, 40.943893>,  <35.871868, 36.173817, 40.892071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844299, 35.778149, 40.943893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217709, 0.111820, 0.969587,
		-0.973577, 0.095033, 0.207645,
		-0.068924, -0.989174, 0.129555,
		35.823624, 35.481396, 40.982761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350037, 36.021702, 41.524296>,  <35.871868, 36.173817, 40.892071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350037, 36.021702, 41.524296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620102, 35.727634, 41.500000>,  <35.782143, 35.551193, 41.485424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620102, 35.727634, 41.500000>,  <35.350037, 36.021702, 41.524296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620102, 35.727634, 41.500000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191039, 0.094726, 0.977001,
		-0.712503, -0.671238, 0.204401,
		0.675162, -0.735164, -0.060740,
		35.822651, 35.507084, 41.481777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227619, 35.618755, 42.143200>,  <35.350037, 36.021702, 41.524296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227619, 35.618755, 42.143200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577553, 35.485817, 42.002228>,  <35.787514, 35.406055, 41.917645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577553, 35.485817, 42.002228>,  <35.227619, 35.618755, 42.143200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577553, 35.485817, 42.002228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413457, 0.133170, 0.900733,
		-0.252418, -0.933710, 0.253911,
		0.874837, -0.332342, -0.352434,
		35.840004, 35.386116, 41.896496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461723, 34.983860, 42.584667>,  <35.227619, 35.618755, 42.143200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461723, 34.983860, 42.584667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770149, 35.191563, 42.437244>,  <35.955204, 35.316185, 42.348789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770149, 35.191563, 42.437244>,  <35.461723, 34.983860, 42.584667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770149, 35.191563, 42.437244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321057, 0.182809, 0.929249,
		0.549896, -0.834836, -0.025755,
		0.771062, 0.519259, -0.368556,
		36.001469, 35.347340, 42.326679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059448, 35.003880, 43.163860>,  <35.461723, 34.983860, 42.584667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059448, 35.003880, 43.163860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209690, 35.269085, 42.904835>,  <36.299835, 35.428207, 42.749420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209690, 35.269085, 42.904835>,  <36.059448, 35.003880, 43.163860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209690, 35.269085, 42.904835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492495, 0.449112, 0.745485,
		0.785092, -0.598930, -0.157840,
		0.375606, 0.663009, -0.647564,
		36.322372, 35.467987, 42.710564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810596, 34.983742, 43.171093>,  <36.059448, 35.003880, 43.163860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810596, 34.983742, 43.171093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712330, 35.352589, 43.051521>,  <36.653370, 35.573895, 42.979778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712330, 35.352589, 43.051521>,  <36.810596, 34.983742, 43.171093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712330, 35.352589, 43.051521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528833, 0.385933, 0.755905,
		0.812395, 0.027617, -0.582454,
		-0.245664, 0.922113, -0.298925,
		36.638630, 35.629223, 42.961845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397266, 35.372063, 43.414181>,  <36.810596, 34.983742, 43.171093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397266, 35.372063, 43.414181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109783, 35.641521, 43.345287>,  <36.937294, 35.803196, 43.303951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109783, 35.641521, 43.345287>,  <37.397266, 35.372063, 43.414181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109783, 35.641521, 43.345287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283191, 0.509826, 0.812330,
		0.635032, 0.535051, -0.557185,
		-0.718706, 0.673645, -0.172234,
		36.894173, 35.843616, 43.293617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786880, 36.026821, 43.435131>,  <37.397266, 35.372063, 43.414181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786880, 36.026821, 43.435131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404022, 36.135059, 43.476410>,  <37.174309, 36.200005, 43.501175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404022, 36.135059, 43.476410>,  <37.786880, 36.026821, 43.435131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404022, 36.135059, 43.476410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261434, 0.654019, 0.709867,
		0.124600, 0.706424, -0.696736,
		-0.957145, 0.270600, 0.103192,
		37.116879, 36.216240, 43.507366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731411, 36.808464, 43.458496>,  <37.786880, 36.026821, 43.435131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731411, 36.808464, 43.458496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412838, 36.658066, 43.647949>,  <37.221695, 36.567825, 43.761620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412838, 36.658066, 43.647949>,  <37.731411, 36.808464, 43.458496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412838, 36.658066, 43.647949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173280, 0.608480, 0.774420,
		-0.579375, 0.698841, -0.419459,
		-0.796429, -0.375996, 0.473633,
		37.173908, 36.545269, 43.790039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377892, 37.322407, 43.916168>,  <37.731411, 36.808464, 43.458496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377892, 37.322407, 43.916168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257511, 36.982231, 44.088764>,  <37.185284, 36.778126, 44.192322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257511, 36.982231, 44.088764>,  <37.377892, 37.322407, 43.916168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257511, 36.982231, 44.088764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046971, 0.438700, 0.897405,
		-0.952481, 0.290345, -0.092082,
		-0.300953, -0.850436, 0.431491,
		37.167225, 36.727100, 44.218212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888588, 37.539371, 44.380527>,  <37.377892, 37.322407, 43.916168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888588, 37.539371, 44.380527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929539, 37.160583, 44.502354>,  <36.954109, 36.933311, 44.575451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929539, 37.160583, 44.502354>,  <36.888588, 37.539371, 44.380527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929539, 37.160583, 44.502354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157860, 0.317759, 0.934938,
		-0.982140, -0.047638, 0.182021,
		0.102377, -0.946974, 0.304564,
		36.960251, 36.876492, 44.593723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464764, 37.493324, 44.970535>,  <36.888588, 37.539371, 44.380527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464764, 37.493324, 44.970535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746086, 37.209274, 44.983669>,  <36.914879, 37.038845, 44.991550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746086, 37.209274, 44.983669>,  <36.464764, 37.493324, 44.970535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746086, 37.209274, 44.983669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047667, 0.093197, 0.994506,
		-0.709288, -0.697876, 0.099396,
		0.703305, -0.710129, 0.032838,
		36.957077, 36.996235, 44.993519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349216, 37.137878, 45.570557>,  <36.464764, 37.493324, 44.970535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349216, 37.137878, 45.570557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731091, 37.055748, 45.484383>,  <36.960217, 37.006470, 45.432678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731091, 37.055748, 45.484383>,  <36.349216, 37.137878, 45.570557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731091, 37.055748, 45.484383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234265, 0.072006, 0.969503,
		-0.183554, -0.976041, 0.116845,
		0.954687, -0.205329, -0.215435,
		37.017498, 36.994148, 45.419750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487656, 36.624401, 46.105312>,  <36.349216, 37.137878, 45.570557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487656, 36.624401, 46.105312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833439, 36.770420, 45.967068>,  <37.040909, 36.858032, 45.884121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833439, 36.770420, 45.967068>,  <36.487656, 36.624401, 46.105312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833439, 36.770420, 45.967068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328598, 0.109959, 0.938047,
		0.380433, -0.924473, -0.024898,
		0.864462, 0.365046, -0.345612,
		37.092777, 36.879932, 45.863384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050247, 36.195328, 46.461731>,  <36.487656, 36.624401, 46.105312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050247, 36.195328, 46.461731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194427, 36.547276, 46.337860>,  <37.280937, 36.758446, 46.263538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194427, 36.547276, 46.337860>,  <37.050247, 36.195328, 46.461731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194427, 36.547276, 46.337860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353208, 0.178529, 0.918353,
		0.863319, -0.440403, -0.246427,
		0.360451, 0.879871, -0.309681,
		37.302563, 36.811237, 46.244957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595509, 36.268505, 46.856361>,  <37.050247, 36.195328, 46.461731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595509, 36.268505, 46.856361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568424, 36.644794, 46.723419>,  <37.552174, 36.870567, 46.643654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568424, 36.644794, 46.723419>,  <37.595509, 36.268505, 46.856361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568424, 36.644794, 46.723419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326008, 0.335696, 0.883758,
		0.942939, -0.048514, -0.329411,
		-0.067707, 0.940720, -0.332357,
		37.548111, 36.927010, 46.623711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238388, 36.513535, 46.906361>,  <37.595509, 36.268505, 46.856361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238388, 36.513535, 46.906361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025547, 36.852051, 46.896103>,  <37.897842, 37.055161, 46.889950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025547, 36.852051, 46.896103>,  <38.238388, 36.513535, 46.906361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025547, 36.852051, 46.896103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615902, 0.407669, 0.674145,
		0.580978, 0.342919, -0.738154,
		-0.532099, 0.846294, -0.025642,
		37.865917, 37.105938, 46.888409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764149, 36.997181, 46.875633>,  <38.238388, 36.513535, 46.906361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764149, 36.997181, 46.875633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447876, 37.180294, 47.038242>,  <38.258114, 37.290161, 47.135807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447876, 37.180294, 47.038242>,  <38.764149, 36.997181, 46.875633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447876, 37.180294, 47.038242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595430, 0.420508, 0.684570,
		0.142434, 0.783334, -0.605063,
		-0.790681, 0.457779, 0.406525,
		38.210670, 37.317627, 47.160198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114685, 37.582638, 47.224518>,  <38.764149, 36.997181, 46.875633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114685, 37.582638, 47.224518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742290, 37.603504, 47.369038>,  <38.518852, 37.616024, 47.455750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742290, 37.603504, 47.369038>,  <39.114685, 37.582638, 47.224518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742290, 37.603504, 47.369038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351725, 0.393115, 0.849559,
		-0.097716, 0.918009, -0.384333,
		-0.930989, 0.052164, 0.361300,
		38.462994, 37.619152, 47.477428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312546, 38.078598, 46.773937>,  <39.114685, 37.582638, 47.224518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312546, 38.078598, 46.773937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699516, 38.179855, 46.773533>,  <39.931698, 38.240608, 46.773289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699516, 38.179855, 46.773533>,  <39.312546, 38.078598, 46.773937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699516, 38.179855, 46.773533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087517, -0.338202, -0.936995,
		-0.237534, 0.906388, -0.349341,
		0.967429, 0.253141, -0.001010,
		39.989746, 38.255798, 46.773232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535679, 38.539177, 46.152565>,  <39.312546, 38.078598, 46.773937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535679, 38.539177, 46.152565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884998, 38.372772, 46.253983>,  <40.094589, 38.272930, 46.314835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884998, 38.372772, 46.253983>,  <39.535679, 38.539177, 46.152565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884998, 38.372772, 46.253983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145944, -0.273139, -0.950839,
		0.464813, 0.867369, -0.177817,
		0.873298, -0.416012, 0.253546,
		40.146988, 38.247971, 46.330048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087440, 38.704884, 45.599266>,  <39.535679, 38.539177, 46.152565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087440, 38.704884, 45.599266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235451, 38.391636, 45.799187>,  <40.324257, 38.203686, 45.919140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235451, 38.391636, 45.799187>,  <40.087440, 38.704884, 45.599266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235451, 38.391636, 45.799187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149685, -0.480700, -0.864015,
		0.916882, 0.394524, -0.060652,
		0.370030, -0.783121, 0.499800,
		40.346458, 38.156700, 45.949127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664539, 38.565842, 45.310555>,  <40.087440, 38.704884, 45.599266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664539, 38.565842, 45.310555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582703, 38.220261, 45.494610>,  <40.533600, 38.012913, 45.605042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582703, 38.220261, 45.494610>,  <40.664539, 38.565842, 45.310555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582703, 38.220261, 45.494610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190345, -0.496223, -0.847072,
		0.960161, -0.085721, 0.265974,
		-0.204594, -0.863953, 0.460138,
		40.521324, 37.961075, 45.632652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091751, 38.025883, 45.059647>,  <40.664539, 38.565842, 45.310555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091751, 38.025883, 45.059647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782146, 37.816063, 45.201492>,  <40.596382, 37.690170, 45.286602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782146, 37.816063, 45.201492>,  <41.091751, 38.025883, 45.059647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782146, 37.816063, 45.201492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002355, -0.562445, -0.826831,
		0.633167, -0.639141, 0.436574,
		-0.774011, -0.524551, 0.354617,
		40.549942, 37.658699, 45.307877>
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
