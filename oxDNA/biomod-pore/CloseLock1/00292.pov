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
	<24.068514, 35.082706, 34.634068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331165, 35.026936, 34.930553>,  <24.488756, 34.993473, 35.108444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331165, 35.026936, 34.930553>,  <24.068514, 35.082706, 34.634068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.331165, 35.026936, 34.930553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706986, -0.228517, -0.669292,
		0.262697, 0.963504, -0.051478,
		0.656629, -0.139426, 0.741214,
		24.528154, 34.985107, 35.152916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.667576, 35.423168, 34.618664>,  <24.068514, 35.082706, 34.634068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.667576, 35.423168, 34.618664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755289, 35.073536, 34.792049>,  <24.807917, 34.863754, 34.896080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755289, 35.073536, 34.792049>,  <24.667576, 35.423168, 34.618664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755289, 35.073536, 34.792049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652505, -0.198916, -0.731211,
		0.725363, 0.443180, 0.526726,
		0.219284, -0.874085, 0.433463,
		24.821074, 34.811310, 34.922089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481560, 35.237793, 34.859501>,  <24.667576, 35.423168, 34.618664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481560, 35.237793, 34.859501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260742, 34.933422, 34.723129>,  <25.128252, 34.750797, 34.641308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260742, 34.933422, 34.723129>,  <25.481560, 35.237793, 34.859501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260742, 34.933422, 34.723129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749728, -0.274048, -0.602333,
		0.364904, -0.588116, 0.721779,
		-0.552044, -0.760932, -0.340926,
		25.095129, 34.705143, 34.620853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860567, 34.565845, 34.904919>,  <25.481560, 35.237793, 34.859501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860567, 34.565845, 34.904919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615177, 34.548126, 34.589531>,  <25.467943, 34.537495, 34.400299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615177, 34.548126, 34.589531>,  <25.860567, 34.565845, 34.904919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615177, 34.548126, 34.589531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766771, -0.272328, -0.581291,
		-0.188974, -0.961184, 0.201032,
		-0.613474, -0.044296, -0.788472,
		25.431135, 34.534840, 34.352989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323238, 34.167843, 34.617382>,  <25.860567, 34.565845, 34.904919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323238, 34.167843, 34.617382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071978, 34.328560, 34.350853>,  <25.921221, 34.424992, 34.190937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071978, 34.328560, 34.350853>,  <26.323238, 34.167843, 34.617382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071978, 34.328560, 34.350853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644153, -0.211822, -0.734982,
		-0.436455, -0.890893, -0.125761,
		-0.628152, 0.401796, -0.666323,
		25.883532, 34.449097, 34.150955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100733, 34.036041, 34.170841>,  <26.323238, 34.167843, 34.617382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100733, 34.036041, 34.170841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493397, 33.968723, 34.206661>,  <27.728994, 33.928333, 34.228153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493397, 33.968723, 34.206661>,  <27.100733, 34.036041, 34.170841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493397, 33.968723, 34.206661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180505, -0.669388, 0.720650,
		-0.061338, -0.723598, -0.687490,
		0.981660, -0.168299, 0.089554,
		27.787895, 33.918232, 34.233528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289244, 33.330460, 34.289371>,  <27.100733, 34.036041, 34.170841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289244, 33.330460, 34.289371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620768, 33.490032, 34.446304>,  <27.819683, 33.585777, 34.540466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620768, 33.490032, 34.446304>,  <27.289244, 33.330460, 34.289371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620768, 33.490032, 34.446304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083408, -0.605265, 0.791642,
		0.553277, -0.688845, -0.468376,
		0.828811, 0.398931, 0.392335,
		27.869411, 33.609711, 34.564003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640343, 32.780155, 34.577904>,  <27.289244, 33.330460, 34.289371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640343, 32.780155, 34.577904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794960, 33.101170, 34.759682>,  <27.887730, 33.293777, 34.868748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794960, 33.101170, 34.759682>,  <27.640343, 32.780155, 34.577904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794960, 33.101170, 34.759682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032969, -0.504456, 0.862808,
		0.921683, -0.318528, -0.221452,
		0.386541, 0.802536, 0.454447,
		27.910923, 33.341930, 34.896015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235548, 32.542881, 35.118816>,  <27.640343, 32.780155, 34.577904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235548, 32.542881, 35.118816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128864, 32.914040, 35.223022>,  <28.064854, 33.136734, 35.285545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128864, 32.914040, 35.223022>,  <28.235548, 32.542881, 35.118816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128864, 32.914040, 35.223022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015225, -0.266219, 0.963792,
		0.963656, 0.261020, 0.056876,
		-0.266711, 0.927899, 0.260518,
		28.048851, 33.192410, 35.301178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699261, 32.796112, 35.654457>,  <28.235548, 32.542881, 35.118816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699261, 32.796112, 35.654457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349161, 32.984875, 35.696877>,  <28.139101, 33.098133, 35.722328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349161, 32.984875, 35.696877>,  <28.699261, 32.796112, 35.654457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349161, 32.984875, 35.696877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021222, -0.256505, 0.966310,
		0.483211, 0.843509, 0.234520,
		-0.875246, 0.471909, 0.106045,
		28.086588, 33.126446, 35.728691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845503, 33.169876, 36.306065>,  <28.699261, 32.796112, 35.654457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845503, 33.169876, 36.306065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449883, 33.133766, 36.259365>,  <28.212511, 33.112099, 36.231346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449883, 33.133766, 36.259365>,  <28.845503, 33.169876, 36.306065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449883, 33.133766, 36.259365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087866, -0.275361, 0.957317,
		-0.118572, 0.957093, 0.264413,
		-0.989050, -0.090279, -0.116746,
		28.153168, 33.106682, 36.224342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525520, 33.427410, 36.973724>,  <28.845503, 33.169876, 36.306065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525520, 33.427410, 36.973724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230379, 33.202217, 36.824795>,  <28.053295, 33.067101, 36.735439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230379, 33.202217, 36.824795>,  <28.525520, 33.427410, 36.973724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230379, 33.202217, 36.824795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172260, -0.376280, 0.910351,
		-0.652612, 0.735839, 0.180659,
		-0.737851, -0.562986, -0.372321,
		28.009024, 33.033321, 36.713100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000004, 33.543911, 37.441570>,  <28.525520, 33.427410, 36.973724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000004, 33.543911, 37.441570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905531, 33.212345, 37.238743>,  <27.848846, 33.013405, 37.117046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905531, 33.212345, 37.238743>,  <28.000004, 33.543911, 37.441570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905531, 33.212345, 37.238743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181263, -0.475089, 0.861066,
		-0.954652, 0.295282, -0.038044,
		-0.236183, -0.828914, -0.507068,
		27.834677, 32.963673, 37.086624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385397, 33.258335, 37.927189>,  <28.000004, 33.543911, 37.441570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385397, 33.258335, 37.927189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527149, 32.963291, 37.697285>,  <27.612200, 32.786266, 37.559341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527149, 32.963291, 37.697285>,  <27.385397, 33.258335, 37.927189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527149, 32.963291, 37.697285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342402, -0.674319, 0.654259,
		-0.870159, -0.035056, -0.491523,
		0.354379, -0.737608, -0.574761,
		27.633463, 32.742008, 37.524857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797327, 32.765190, 37.920906>,  <27.385397, 33.258335, 37.927189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797327, 32.765190, 37.920906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123949, 32.557663, 37.819668>,  <27.319923, 32.433147, 37.758923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123949, 32.557663, 37.819668>,  <26.797327, 32.765190, 37.920906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123949, 32.557663, 37.819668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245602, -0.709021, 0.661036,
		-0.522411, -0.477612, -0.706380,
		0.816557, -0.518821, -0.253098,
		27.368916, 32.402016, 37.743736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683115, 32.081062, 37.823700>,  <26.797327, 32.765190, 37.920906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683115, 32.081062, 37.823700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079102, 32.043800, 37.866196>,  <27.316694, 32.021442, 37.891693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079102, 32.043800, 37.866196>,  <26.683115, 32.081062, 37.823700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079102, 32.043800, 37.866196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140603, -0.723863, 0.675465,
		0.013985, -0.683627, -0.729698,
		0.989967, -0.093152, 0.106243,
		27.376091, 32.015854, 37.898067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733349, 31.498699, 38.003338>,  <26.683115, 32.081062, 37.823700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733349, 31.498699, 38.003338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084476, 31.643160, 38.129196>,  <27.295153, 31.729836, 38.204712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084476, 31.643160, 38.129196>,  <26.733349, 31.498699, 38.003338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084476, 31.643160, 38.129196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035811, -0.704536, 0.708764,
		0.477648, -0.610900, -0.631390,
		0.877821, 0.361150, 0.314644,
		27.347822, 31.751505, 38.223591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171036, 30.878609, 38.148590>,  <26.733349, 31.498699, 38.003338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171036, 30.878609, 38.148590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338905, 31.172531, 38.361732>,  <27.439627, 31.348885, 38.489616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338905, 31.172531, 38.361732>,  <27.171036, 30.878609, 38.148590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338905, 31.172531, 38.361732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221238, -0.652160, 0.725080,
		0.880299, -0.186411, -0.436263,
		0.419675, 0.734805, 0.532854,
		27.464808, 31.392973, 38.521587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752247, 30.586620, 38.443272>,  <27.171036, 30.878609, 38.148590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752247, 30.586620, 38.443272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692047, 30.912146, 38.667793>,  <27.655928, 31.107460, 38.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692047, 30.912146, 38.667793>,  <27.752247, 30.586620, 38.443272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692047, 30.912146, 38.667793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277148, -0.510272, 0.814132,
		0.948968, 0.278089, -0.148751,
		-0.150498, 0.813811, 0.561303,
		27.646898, 31.156288, 38.836185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364094, 30.667933, 38.896244>,  <27.752247, 30.586620, 38.443272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364094, 30.667933, 38.896244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067184, 30.872765, 39.069126>,  <27.889038, 30.995663, 39.172855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067184, 30.872765, 39.069126>,  <28.364094, 30.667933, 38.896244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067184, 30.872765, 39.069126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284527, -0.343112, 0.895164,
		0.606690, 0.787432, 0.108982,
		-0.742274, 0.512079, 0.432209,
		27.844501, 31.026388, 39.198788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663412, 30.844133, 39.590511>,  <28.364094, 30.667933, 38.896244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663412, 30.844133, 39.590511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267635, 30.872799, 39.640900>,  <28.030169, 30.889997, 39.671131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267635, 30.872799, 39.640900>,  <28.663412, 30.844133, 39.590511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267635, 30.872799, 39.640900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100498, -0.287011, 0.952641,
		0.104424, 0.955243, 0.276778,
		-0.989442, 0.071663, 0.125970,
		27.970802, 30.894299, 39.678692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604679, 31.137728, 40.200920>,  <28.663412, 30.844133, 39.590511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604679, 31.137728, 40.200920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247843, 30.966167, 40.144047>,  <28.033741, 30.863232, 40.109924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247843, 30.966167, 40.144047>,  <28.604679, 31.137728, 40.200920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247843, 30.966167, 40.144047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035343, -0.379932, 0.924339,
		-0.450469, 0.819570, 0.354093,
		-0.892092, -0.428901, -0.142182,
		27.980215, 30.837498, 40.101391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241528, 31.202782, 40.788933>,  <28.604679, 31.137728, 40.200920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241528, 31.202782, 40.788933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063988, 30.910089, 40.582024>,  <27.957464, 30.734474, 40.457878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063988, 30.910089, 40.582024>,  <28.241528, 31.202782, 40.788933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063988, 30.910089, 40.582024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038645, -0.592342, 0.804759,
		-0.895268, 0.337201, 0.291187,
		-0.443848, -0.731728, -0.517274,
		27.930834, 30.690571, 40.426842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640579, 31.010639, 41.145340>,  <28.241528, 31.202782, 40.788933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640579, 31.010639, 41.145340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734848, 30.686230, 40.931164>,  <27.791410, 30.491583, 40.802658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734848, 30.686230, 40.931164>,  <27.640579, 31.010639, 41.145340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734848, 30.686230, 40.931164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056203, -0.538662, 0.840645,
		-0.970206, -0.228212, -0.081366,
		0.235674, -0.811026, -0.535439,
		27.805550, 30.442923, 40.770531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252832, 30.552601, 41.410160>,  <27.640579, 31.010639, 41.145340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252832, 30.552601, 41.410160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543949, 30.337444, 41.239986>,  <27.718618, 30.208351, 41.137882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543949, 30.337444, 41.239986>,  <27.252832, 30.552601, 41.410160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543949, 30.337444, 41.239986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100731, -0.697462, 0.709507,
		-0.678361, -0.473519, -0.561789,
		0.727791, -0.537891, -0.425433,
		27.762287, 30.176077, 41.112358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006783, 29.939152, 41.459480>,  <27.252832, 30.552601, 41.410160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006783, 29.939152, 41.459480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404537, 29.919756, 41.421860>,  <27.643190, 29.908119, 41.399288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404537, 29.919756, 41.421860>,  <27.006783, 29.939152, 41.459480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404537, 29.919756, 41.421860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014605, -0.817422, 0.575854,
		-0.104798, -0.573995, -0.812125,
		0.994386, -0.048488, -0.094047,
		27.702852, 29.905210, 41.393646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285170, 29.231165, 41.447609>,  <27.006783, 29.939152, 41.459480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285170, 29.231165, 41.447609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579462, 29.460293, 41.592152>,  <27.756039, 29.597769, 41.678875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579462, 29.460293, 41.592152>,  <27.285170, 29.231165, 41.447609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579462, 29.460293, 41.592152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247642, -0.724125, 0.643674,
		0.630374, -0.384085, -0.674616,
		0.735732, 0.572819, 0.361354,
		27.800182, 29.632139, 41.700558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990343, 28.921478, 41.170216>,  <27.285170, 29.231165, 41.447609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990343, 28.921478, 41.170216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937088, 29.043947, 41.547264>,  <27.905134, 29.117428, 41.773495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937088, 29.043947, 41.547264>,  <27.990343, 28.921478, 41.170216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937088, 29.043947, 41.547264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381343, -0.862041, 0.333860,
		0.914796, 0.403911, -0.001987,
		-0.133137, 0.306172, 0.942620,
		27.897146, 29.135799, 41.830051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565382, 28.896496, 41.553253>,  <27.990343, 28.921478, 41.170216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565382, 28.896496, 41.553253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302425, 28.848536, 41.850834>,  <28.144651, 28.819759, 42.029381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302425, 28.848536, 41.850834>,  <28.565382, 28.896496, 41.553253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302425, 28.848536, 41.850834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480484, -0.827227, 0.291257,
		0.580493, 0.548925, 0.601423,
		-0.657391, -0.119901, 0.743949,
		28.105207, 28.812565, 42.074020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924723, 28.781746, 42.147469>,  <28.565382, 28.896496, 41.553253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924723, 28.781746, 42.147469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572226, 28.598200, 42.192818>,  <28.360727, 28.488071, 42.220028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572226, 28.598200, 42.192818>,  <28.924723, 28.781746, 42.147469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572226, 28.598200, 42.192818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471951, -0.841038, 0.264420,
		-0.025981, 0.286525, 0.957720,
		-0.881242, -0.458867, 0.113375,
		28.307854, 28.460539, 42.226830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688784, 28.744299, 42.376781>,  <28.924723, 28.781746, 42.147469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688784, 28.744299, 42.376781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057655, 28.592051, 42.404251>,  <30.278978, 28.500702, 42.420734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057655, 28.592051, 42.404251>,  <29.688784, 28.744299, 42.376781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057655, 28.592051, 42.404251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384095, -0.880410, 0.278116,
		-0.045395, -0.282849, -0.958089,
		0.922177, -0.380622, 0.068675,
		30.334309, 28.477863, 42.424854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516621, 28.930134, 43.128559>,  <29.688784, 28.744299, 42.376781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516621, 28.930134, 43.128559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550495, 29.216469, 43.405804>,  <29.570820, 29.388269, 43.572151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550495, 29.216469, 43.405804>,  <29.516621, 28.930134, 43.128559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550495, 29.216469, 43.405804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201434, 0.668949, -0.715494,
		-0.975834, 0.200210, -0.087542,
		0.084688, 0.715837, 0.693113,
		29.575901, 29.431219, 43.613739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081810, 29.524012, 42.881222>,  <29.516621, 28.930134, 43.128559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081810, 29.524012, 42.881222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360920, 29.642397, 43.142147>,  <29.528385, 29.713428, 43.298702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360920, 29.642397, 43.142147>,  <29.081810, 29.524012, 42.881222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360920, 29.642397, 43.142147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383690, 0.614569, -0.689265,
		-0.604892, 0.731238, 0.315272,
		0.697774, 0.295964, 0.652317,
		29.570251, 29.731186, 43.337841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046883, 30.218391, 43.146526>,  <29.081810, 29.524012, 42.881222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046883, 30.218391, 43.146526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425137, 30.093542, 43.109966>,  <29.652088, 30.018633, 43.088032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425137, 30.093542, 43.109966>,  <29.046883, 30.218391, 43.146526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425137, 30.093542, 43.109966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167637, 0.708598, -0.685410,
		0.278698, 0.632826, 0.722398,
		0.945635, -0.312123, -0.091400,
		29.708828, 29.999905, 43.082546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538055, 30.823294, 43.235481>,  <29.046883, 30.218391, 43.146526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538055, 30.823294, 43.235481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684093, 30.533058, 43.002167>,  <29.771717, 30.358917, 42.862179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684093, 30.533058, 43.002167>,  <29.538055, 30.823294, 43.235481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684093, 30.533058, 43.002167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203790, 0.673634, -0.710414,
		0.908391, 0.140501, 0.393808,
		0.365096, -0.725587, -0.583290,
		29.793623, 30.315382, 42.827179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009520, 31.225454, 42.740738>,  <29.538055, 30.823294, 43.235481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009520, 31.225454, 42.740738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897018, 30.875374, 42.583298>,  <29.829517, 30.665325, 42.488834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897018, 30.875374, 42.583298>,  <30.009520, 31.225454, 42.740738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897018, 30.875374, 42.583298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081114, 0.387003, -0.918504,
		0.956200, -0.290256, -0.037853,
		-0.281251, -0.875203, -0.393596,
		29.812643, 30.612814, 42.465218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576256, 31.038002, 42.323521>,  <30.009520, 31.225454, 42.740738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576256, 31.038002, 42.323521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263906, 30.833834, 42.179462>,  <30.076496, 30.711332, 42.093025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263906, 30.833834, 42.179462>,  <30.576256, 31.038002, 42.323521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263906, 30.833834, 42.179462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189733, 0.355505, -0.915214,
		0.595179, -0.782999, -0.180760,
		-0.780874, -0.510420, -0.360150,
		30.029644, 30.680708, 42.071419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874271, 30.652399, 41.747654>,  <30.576256, 31.038002, 42.323521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874271, 30.652399, 41.747654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483040, 30.703175, 41.681629>,  <30.248301, 30.733639, 41.642014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483040, 30.703175, 41.681629>,  <30.874271, 30.652399, 41.747654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483040, 30.703175, 41.681629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184780, 0.163643, -0.969060,
		-0.096000, -0.978319, -0.183512,
		-0.978080, 0.126939, -0.165064,
		30.189615, 30.741257, 41.632111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847952, 30.420816, 41.038219>,  <30.874271, 30.652399, 41.747654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847952, 30.420816, 41.038219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493023, 30.601061, 41.077435>,  <30.280066, 30.709208, 41.100964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493023, 30.601061, 41.077435>,  <30.847952, 30.420816, 41.038219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493023, 30.601061, 41.077435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024798, 0.258913, -0.965582,
		-0.460485, -0.854351, -0.240913,
		-0.887321, 0.450610, 0.098039,
		30.226826, 30.736244, 41.106846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528667, 30.166346, 40.470917>,  <30.847952, 30.420816, 41.038219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528667, 30.166346, 40.470917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372738, 30.516109, 40.586464>,  <30.279181, 30.725967, 40.655792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372738, 30.516109, 40.586464>,  <30.528667, 30.166346, 40.470917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372738, 30.516109, 40.586464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047609, 0.332405, -0.941935,
		-0.919658, -0.353436, -0.171209,
		-0.389824, 0.874409, 0.288872,
		30.255791, 30.778433, 40.673126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851549, 30.272131, 40.078983>,  <30.528667, 30.166346, 40.470917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851549, 30.272131, 40.078983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965933, 30.629620, 40.217255>,  <30.034563, 30.844112, 40.300217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965933, 30.629620, 40.217255>,  <29.851549, 30.272131, 40.078983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965933, 30.629620, 40.217255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074611, 0.338881, -0.937866,
		-0.955333, 0.293981, 0.030224,
		0.285957, 0.893720, 0.345679,
		30.051720, 30.897736, 40.320957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415655, 30.804771, 39.824543>,  <29.851549, 30.272131, 40.078983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415655, 30.804771, 39.824543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738743, 31.017365, 39.926613>,  <29.932596, 31.144920, 39.987854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738743, 31.017365, 39.926613>,  <29.415655, 30.804771, 39.824543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738743, 31.017365, 39.926613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086344, 0.534793, -0.840560,
		-0.583208, 0.656905, 0.477854,
		0.807721, 0.531481, 0.255175,
		29.981060, 31.176809, 40.003166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251431, 31.494339, 39.907509>,  <29.415655, 30.804771, 39.824543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251431, 31.494339, 39.907509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633621, 31.449961, 39.798141>,  <29.862936, 31.423334, 39.732521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633621, 31.449961, 39.798141>,  <29.251431, 31.494339, 39.907509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633621, 31.449961, 39.798141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186528, 0.490879, -0.851026,
		0.228629, 0.864135, 0.448329,
		0.955477, -0.110944, -0.273415,
		29.920265, 31.416677, 39.716118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377684, 32.167511, 39.611485>,  <29.251431, 31.494339, 39.907509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377684, 32.167511, 39.611485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716059, 31.999067, 39.480606>,  <29.919083, 31.898001, 39.402077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716059, 31.999067, 39.480606>,  <29.377684, 32.167511, 39.611485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716059, 31.999067, 39.480606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118448, 0.449861, -0.885209,
		0.519964, 0.787586, 0.330674,
		0.845936, -0.421109, -0.327200,
		29.969839, 31.872734, 39.382446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659203, 32.694569, 39.142529>,  <29.377684, 32.167511, 39.611485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659203, 32.694569, 39.142529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837185, 32.346035, 39.059780>,  <29.943974, 32.136917, 39.010132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837185, 32.346035, 39.059780>,  <29.659203, 32.694569, 39.142529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837185, 32.346035, 39.059780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053951, 0.204502, -0.977378,
		0.893926, 0.446051, 0.043985,
		0.444956, -0.871331, -0.206875,
		29.970671, 32.084637, 38.997719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298180, 32.823063, 38.700573>,  <29.659203, 32.694569, 39.142529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298180, 32.823063, 38.700573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228018, 32.439491, 38.611401>,  <30.185921, 32.209351, 38.557899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228018, 32.439491, 38.611401>,  <30.298180, 32.823063, 38.700573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228018, 32.439491, 38.611401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205692, 0.185747, -0.960827,
		0.962769, -0.214386, 0.164663,
		-0.175402, -0.958925, -0.222929,
		30.175398, 32.151814, 38.544521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900724, 32.607319, 38.265099>,  <30.298180, 32.823063, 38.700573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900724, 32.607319, 38.265099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599794, 32.358055, 38.179604>,  <30.419235, 32.208496, 38.128307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599794, 32.358055, 38.179604>,  <30.900724, 32.607319, 38.265099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599794, 32.358055, 38.179604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055223, 0.263640, -0.963039,
		0.656473, -0.736322, -0.163931,
		-0.752326, -0.623156, -0.213734,
		30.374096, 32.171108, 38.115482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170975, 32.072002, 37.787285>,  <30.900724, 32.607319, 38.265099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170975, 32.072002, 37.787285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774462, 32.088730, 37.737301>,  <30.536554, 32.098766, 37.707310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774462, 32.088730, 37.737301>,  <31.170975, 32.072002, 37.787285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774462, 32.088730, 37.737301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130851, 0.200474, -0.970921,
		-0.015547, -0.978806, -0.204197,
		-0.991280, 0.041815, -0.124961,
		30.477077, 32.101273, 37.699814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049595, 31.838247, 37.085117>,  <31.170975, 32.072002, 37.787285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049595, 31.838247, 37.085117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698389, 32.009720, 37.170269>,  <30.487665, 32.112602, 37.221359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698389, 32.009720, 37.170269>,  <31.049595, 31.838247, 37.085117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698389, 32.009720, 37.170269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149049, 0.177770, -0.972719,
		-0.454833, -0.885792, -0.092190,
		-0.878016, 0.428684, 0.212883,
		30.434984, 32.138325, 37.234135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612579, 31.529993, 36.538586>,  <31.049595, 31.838247, 37.085117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612579, 31.529993, 36.538586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455200, 31.866997, 36.685760>,  <30.360773, 32.069199, 36.774067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455200, 31.866997, 36.685760>,  <30.612579, 31.529993, 36.538586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455200, 31.866997, 36.685760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155808, 0.333324, -0.929849,
		-0.906049, -0.423174, 0.000125,
		-0.393446, 0.842508, 0.367942,
		30.337166, 32.119751, 36.796143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042589, 31.724251, 36.051033>,  <30.612579, 31.529993, 36.538586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042589, 31.724251, 36.051033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146690, 32.050468, 36.257782>,  <30.209152, 32.246197, 36.381832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146690, 32.050468, 36.257782>,  <30.042589, 31.724251, 36.051033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146690, 32.050468, 36.257782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010741, 0.537734, -0.843046,
		-0.965480, 0.213855, 0.148707,
		0.260254, 0.815542, 0.516874,
		30.224766, 32.295132, 36.412846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624308, 32.234921, 35.869099>,  <30.042589, 31.724251, 36.051033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624308, 32.234921, 35.869099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935232, 32.451767, 35.996784>,  <30.121788, 32.581875, 36.073395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935232, 32.451767, 35.996784>,  <29.624308, 32.234921, 35.869099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935232, 32.451767, 35.996784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139972, 0.643709, -0.752361,
		-0.613346, 0.540138, 0.576244,
		0.777312, 0.542116, 0.319212,
		30.168427, 32.614403, 36.092548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398548, 32.984055, 35.792496>,  <29.624308, 32.234921, 35.869099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398548, 32.984055, 35.792496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796391, 32.994213, 35.832714>,  <30.035097, 33.000309, 35.856846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796391, 32.994213, 35.832714>,  <29.398548, 32.984055, 35.792496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796391, 32.994213, 35.832714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047751, 0.748516, -0.661395,
		-0.092060, 0.662630, 0.743267,
		0.994608, 0.025396, 0.100550,
		30.094772, 33.001831, 35.862881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607672, 33.645130, 35.796978>,  <29.398548, 32.984055, 35.792496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607672, 33.645130, 35.796978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982780, 33.521072, 35.734497>,  <30.207846, 33.446640, 35.697010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982780, 33.521072, 35.734497>,  <29.607672, 33.645130, 35.796978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982780, 33.521072, 35.734497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185453, 0.827591, -0.529812,
		0.293588, 0.467874, 0.833607,
		0.937770, -0.310141, -0.156202,
		30.264112, 33.428028, 35.687637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019424, 34.196991, 35.931885>,  <29.607672, 33.645130, 35.796978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019424, 34.196991, 35.931885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246643, 33.955448, 35.708214>,  <30.382975, 33.810520, 35.574013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246643, 33.955448, 35.708214>,  <30.019424, 34.196991, 35.931885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246643, 33.955448, 35.708214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181325, 0.754570, -0.630670,
		0.802772, 0.256859, 0.538127,
		0.568048, -0.603860, -0.559173,
		30.417057, 33.774288, 35.540462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713730, 34.456203, 35.974342>,  <30.019424, 34.196991, 35.931885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713730, 34.456203, 35.974342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689217, 34.245293, 35.635349>,  <30.674509, 34.118748, 35.431953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689217, 34.245293, 35.635349>,  <30.713730, 34.456203, 35.974342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689217, 34.245293, 35.635349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007440, 0.848814, -0.528640,
		0.998093, -0.038703, -0.048097,
		-0.061285, -0.527274, -0.847483,
		30.670832, 34.087112, 35.381104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222782, 34.682724, 35.441654>,  <30.713730, 34.456203, 35.974342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222782, 34.682724, 35.441654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921532, 34.505047, 35.247543>,  <30.740782, 34.398441, 35.131077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921532, 34.505047, 35.247543>,  <31.222782, 34.682724, 35.441654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921532, 34.505047, 35.247543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121526, 0.818878, -0.560955,
		0.646556, -0.363495, -0.670698,
		-0.753124, -0.444196, -0.485277,
		30.695595, 34.371788, 35.101959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917437, 34.506351, 35.272549>,  <31.222782, 34.682724, 35.441654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917437, 34.506351, 35.272549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745428, 34.516068, 35.633545>,  <31.642223, 34.521896, 35.850143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745428, 34.516068, 35.633545>,  <31.917437, 34.506351, 35.272549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745428, 34.516068, 35.633545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232344, -0.968944, -0.084634,
		0.872410, -0.246083, 0.422307,
		-0.430019, 0.024285, 0.902493,
		31.616423, 34.523354, 35.904293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234680, 33.991337, 35.668499>,  <31.917437, 34.506351, 35.272549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234680, 33.991337, 35.668499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865192, 34.078308, 35.794647>,  <31.643499, 34.130489, 35.870338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865192, 34.078308, 35.794647>,  <32.234680, 33.991337, 35.668499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865192, 34.078308, 35.794647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220342, -0.975053, 0.026849,
		0.313344, -0.044690, 0.948587,
		-0.923723, 0.217427, 0.315374,
		31.588076, 34.143536, 35.889259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912807, 34.078388, 35.406788>,  <32.234680, 33.991337, 35.668499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912807, 34.078388, 35.406788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995628, 33.843006, 35.094162>,  <33.045322, 33.701778, 34.906586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995628, 33.843006, 35.094162>,  <32.912807, 34.078388, 35.406788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995628, 33.843006, 35.094162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059278, 0.789868, -0.610406,
		0.976531, 0.172719, 0.128665,
		0.207057, -0.588453, -0.781569,
		33.057747, 33.666470, 34.859692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476124, 34.381477, 35.024426>,  <32.912807, 34.078388, 35.406788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476124, 34.381477, 35.024426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247993, 34.175762, 34.768227>,  <33.111115, 34.052334, 34.614510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247993, 34.175762, 34.768227>,  <33.476124, 34.381477, 35.024426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247993, 34.175762, 34.768227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054781, 0.801820, -0.595049,
		0.819592, -0.304283, -0.485470,
		-0.570323, -0.514292, -0.640496,
		33.076897, 34.021477, 34.576080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730541, 34.552662, 34.370281>,  <33.476124, 34.381477, 35.024426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730541, 34.552662, 34.370281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353573, 34.431992, 34.312531>,  <33.127392, 34.359589, 34.277882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353573, 34.431992, 34.312531>,  <33.730541, 34.552662, 34.370281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353573, 34.431992, 34.312531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185465, 0.830641, -0.525013,
		0.278305, -0.468004, -0.838760,
		-0.942416, -0.301675, -0.144373,
		33.070847, 34.341488, 34.269218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308846, 34.963314, 34.662251>,  <33.730541, 34.552662, 34.370281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308846, 34.963314, 34.662251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353298, 34.580372, 34.768929>,  <34.379971, 34.350609, 34.832935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353298, 34.580372, 34.768929>,  <34.308846, 34.963314, 34.662251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353298, 34.580372, 34.768929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545648, 0.283073, 0.788757,
		-0.830612, 0.057864, 0.553836,
		0.111135, -0.957351, 0.266698,
		34.386639, 34.293167, 34.848938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213612, 34.896717, 35.455898>,  <34.308846, 34.963314, 34.662251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213612, 34.896717, 35.455898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413475, 34.571926, 35.335213>,  <34.533394, 34.377052, 35.262802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413475, 34.571926, 35.335213>,  <34.213612, 34.896717, 35.455898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413475, 34.571926, 35.335213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544267, 0.023321, 0.838588,
		-0.673881, -0.583218, 0.453587,
		0.499658, -0.811981, -0.301711,
		34.563374, 34.328331, 35.244698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087967, 34.284863, 35.984550>,  <34.213612, 34.896717, 35.455898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087967, 34.284863, 35.984550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434074, 34.213264, 35.797249>,  <34.641739, 34.170307, 35.684868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434074, 34.213264, 35.797249>,  <34.087967, 34.284863, 35.984550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434074, 34.213264, 35.797249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471003, -0.029546, 0.881637,
		-0.171643, -0.983406, 0.058742,
		0.865272, -0.178994, -0.468258,
		34.693657, 34.159565, 35.656773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342937, 33.713692, 36.275627>,  <34.087967, 34.284863, 35.984550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342937, 33.713692, 36.275627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675968, 33.867397, 36.116051>,  <34.875786, 33.959621, 36.020306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675968, 33.867397, 36.116051>,  <34.342937, 33.713692, 36.275627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675968, 33.867397, 36.116051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497757, -0.203056, 0.843212,
		0.243012, -0.900615, -0.360332,
		0.832576, 0.384268, -0.398943,
		34.925739, 33.982677, 35.996368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785503, 33.347939, 36.583412>,  <34.342937, 33.713692, 36.275627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785503, 33.347939, 36.583412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016453, 33.651478, 36.462891>,  <35.155022, 33.833603, 36.390579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016453, 33.651478, 36.462891>,  <34.785503, 33.347939, 36.583412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016453, 33.651478, 36.462891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620812, -0.168331, 0.765675,
		0.530315, -0.629133, -0.568294,
		0.577372, 0.758852, -0.301305,
		35.189663, 33.879135, 36.372498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464592, 33.066494, 36.654224>,  <34.785503, 33.347939, 36.583412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464592, 33.066494, 36.654224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529625, 33.460903, 36.639633>,  <35.568645, 33.697548, 36.630878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529625, 33.460903, 36.639633>,  <35.464592, 33.066494, 36.654224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529625, 33.460903, 36.639633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659254, -0.081043, 0.747540,
		0.734133, -0.145587, -0.663214,
		0.162580, 0.986021, -0.036482,
		35.578400, 33.756710, 36.628689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164322, 33.098095, 36.740181>,  <35.464592, 33.066494, 36.654224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164322, 33.098095, 36.740181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043659, 33.463951, 36.847836>,  <35.971260, 33.683464, 36.912426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043659, 33.463951, 36.847836>,  <36.164322, 33.098095, 36.740181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043659, 33.463951, 36.847836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588825, -0.043289, 0.807101,
		0.749859, 0.401939, -0.525506,
		-0.301657, 0.914643, 0.269133,
		35.953163, 33.738342, 36.928574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761593, 33.408958, 37.083607>,  <36.164322, 33.098095, 36.740181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761593, 33.408958, 37.083607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440235, 33.611328, 37.209209>,  <36.247421, 33.732750, 37.284573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440235, 33.611328, 37.209209>,  <36.761593, 33.408958, 37.083607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440235, 33.611328, 37.209209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345971, -0.032592, 0.937679,
		0.484630, 0.861961, -0.148851,
		-0.803392, 0.505925, 0.314009,
		36.199219, 33.763107, 37.303413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956577, 34.046024, 37.476158>,  <36.761593, 33.408958, 37.083607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956577, 34.046024, 37.476158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591648, 33.931957, 37.593689>,  <36.372688, 33.863518, 37.664207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591648, 33.931957, 37.593689>,  <36.956577, 34.046024, 37.476158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591648, 33.931957, 37.593689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322191, -0.057126, 0.944949,
		-0.252688, 0.956772, 0.143998,
		-0.912328, -0.285172, 0.293828,
		36.317951, 33.846405, 37.681839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908108, 34.407402, 38.114525>,  <36.956577, 34.046024, 37.476158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908108, 34.407402, 38.114525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644875, 34.106529, 38.101009>,  <36.486935, 33.926006, 38.092899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644875, 34.106529, 38.101009>,  <36.908108, 34.407402, 38.114525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644875, 34.106529, 38.101009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276504, -0.283162, 0.918349,
		-0.700334, 0.595012, 0.394326,
		-0.658087, -0.752184, -0.033785,
		36.447449, 33.880875, 38.090874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735855, 34.429825, 38.754860>,  <36.908108, 34.407402, 38.114525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735855, 34.429825, 38.754860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612793, 34.072598, 38.623547>,  <36.538956, 33.858261, 38.544758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612793, 34.072598, 38.623547>,  <36.735855, 34.429825, 38.754860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612793, 34.072598, 38.623547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138007, -0.383253, 0.913275,
		-0.941438, 0.235665, 0.241159,
		-0.307651, -0.893073, -0.328285,
		36.520496, 33.804676, 38.525063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201099, 34.077286, 39.249325>,  <36.735855, 34.429825, 38.754860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201099, 34.077286, 39.249325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318081, 33.779621, 39.009094>,  <36.388268, 33.601021, 38.864956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318081, 33.779621, 39.009094>,  <36.201099, 34.077286, 39.249325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318081, 33.779621, 39.009094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110706, -0.597468, 0.794214,
		-0.949852, -0.298755, -0.092345,
		0.292449, -0.744162, -0.600580,
		36.405815, 33.556374, 38.828918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743889, 33.398571, 39.495552>,  <36.201099, 34.077286, 39.249325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743889, 33.398571, 39.495552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072929, 33.293789, 39.293678>,  <36.270355, 33.230919, 39.172554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072929, 33.293789, 39.293678>,  <35.743889, 33.398571, 39.495552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072929, 33.293789, 39.293678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116047, -0.791541, 0.599996,
		-0.556648, -0.552126, -0.620725,
		0.822603, -0.261953, -0.504683,
		36.319710, 33.215202, 39.142273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668308, 32.688431, 39.497189>,  <35.743889, 33.398571, 39.495552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668308, 32.688431, 39.497189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048225, 32.755867, 39.391766>,  <36.276176, 32.796329, 39.328514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048225, 32.755867, 39.391766>,  <35.668308, 32.688431, 39.497189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048225, 32.755867, 39.391766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306950, -0.665177, 0.680677,
		-0.060554, -0.727404, -0.683533,
		0.949797, 0.168592, -0.263555,
		36.333164, 32.806446, 39.312698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945930, 32.073093, 39.333355>,  <35.668308, 32.688431, 39.497189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945930, 32.073093, 39.333355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228626, 32.323956, 39.464317>,  <36.398243, 32.474472, 39.542896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228626, 32.323956, 39.464317>,  <35.945930, 32.073093, 39.333355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228626, 32.323956, 39.464317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306480, -0.688512, 0.657284,
		0.637640, -0.364188, -0.678810,
		0.706743, 0.627152, 0.327406,
		36.440651, 32.512100, 39.562538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389908, 31.591614, 39.502392>,  <35.945930, 32.073093, 39.333355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389908, 31.591614, 39.502392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526855, 31.929815, 39.666298>,  <36.609024, 32.132736, 39.764641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526855, 31.929815, 39.666298>,  <36.389908, 31.591614, 39.502392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526855, 31.929815, 39.666298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246644, -0.501704, 0.829132,
		0.906616, -0.182799, -0.380305,
		0.342365, 0.845504, 0.409767,
		36.629566, 32.183468, 39.789227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037296, 31.381653, 39.907581>,  <36.389908, 31.591614, 39.502392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037296, 31.381653, 39.907581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893127, 31.723671, 40.056705>,  <36.806625, 31.928883, 40.146179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893127, 31.723671, 40.056705>,  <37.037296, 31.381653, 39.907581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893127, 31.723671, 40.056705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158653, -0.337657, 0.927802,
		0.919196, 0.393552, -0.013955,
		-0.360426, 0.855046, 0.372812,
		36.785000, 31.980185, 40.168549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441280, 31.420942, 40.498867>,  <37.037296, 31.381653, 39.907581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441280, 31.420942, 40.498867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164623, 31.707031, 40.539032>,  <36.998627, 31.878685, 40.563129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164623, 31.707031, 40.539032>,  <37.441280, 31.420942, 40.498867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164623, 31.707031, 40.539032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076276, -0.210587, 0.974595,
		0.718198, 0.666415, 0.200206,
		-0.691645, 0.715223, 0.100412,
		36.957130, 31.921598, 40.569157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639210, 31.684896, 41.104343>,  <37.441280, 31.420942, 40.498867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639210, 31.684896, 41.104343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248928, 31.766850, 41.073296>,  <37.014759, 31.816021, 41.054668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248928, 31.766850, 41.073296>,  <37.639210, 31.684896, 41.104343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248928, 31.766850, 41.073296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137058, -0.294406, 0.945801,
		0.170926, 0.933461, 0.315334,
		-0.975705, 0.204881, -0.077617,
		36.956215, 31.828314, 41.050011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532085, 31.807291, 41.688801>,  <37.639210, 31.684896, 41.104343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532085, 31.807291, 41.688801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151222, 31.762924, 41.574898>,  <36.922703, 31.736305, 41.506557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151222, 31.762924, 41.574898>,  <37.532085, 31.807291, 41.688801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151222, 31.762924, 41.574898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245392, -0.277820, 0.928762,
		-0.182125, 0.954208, 0.237312,
		-0.952163, -0.110916, -0.284753,
		36.865574, 31.729649, 41.489471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919529, 32.106045, 42.196926>,  <37.532085, 31.807291, 41.688801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919529, 32.106045, 42.196926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734566, 31.816542, 41.992046>,  <36.623589, 31.642839, 41.869118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734566, 31.816542, 41.992046>,  <36.919529, 32.106045, 42.196926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734566, 31.816542, 41.992046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286850, -0.424496, 0.858790,
		-0.838985, 0.544036, -0.011320,
		-0.462408, -0.723759, -0.512203,
		36.595844, 31.599415, 41.838387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221214, 31.993649, 42.482788>,  <36.919529, 32.106045, 42.196926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221214, 31.993649, 42.482788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319221, 31.653496, 42.296532>,  <36.378025, 31.449404, 42.184780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319221, 31.653496, 42.296532>,  <36.221214, 31.993649, 42.482788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319221, 31.653496, 42.296532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177989, -0.511569, 0.840605,
		-0.953040, -0.123087, -0.276704,
		0.245021, -0.850380, -0.465638,
		36.392727, 31.398382, 42.156841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660290, 31.534378, 42.545700>,  <36.221214, 31.993649, 42.482788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660290, 31.534378, 42.545700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985611, 31.315823, 42.465694>,  <36.180801, 31.184689, 42.417690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985611, 31.315823, 42.465694>,  <35.660290, 31.534378, 42.545700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985611, 31.315823, 42.465694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268921, -0.657823, 0.703528,
		-0.515972, -0.518391, -0.681942,
		0.813299, -0.546389, -0.200012,
		36.229599, 31.151907, 42.405689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464546, 30.855553, 42.614948>,  <35.660290, 31.534378, 42.545700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464546, 30.855553, 42.614948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861771, 30.825233, 42.650925>,  <36.100105, 30.807041, 42.672508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861771, 30.825233, 42.650925>,  <35.464546, 30.855553, 42.614948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861771, 30.825233, 42.650925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117369, -0.688457, 0.715717,
		0.007668, -0.721305, -0.692575,
		0.993059, -0.075799, 0.089938,
		36.159687, 30.802494, 42.677906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668373, 30.210716, 42.626949>,  <35.464546, 30.855553, 42.614948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668373, 30.210716, 42.626949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980423, 30.383186, 42.808273>,  <36.167652, 30.486668, 42.917068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980423, 30.383186, 42.808273>,  <35.668373, 30.210716, 42.626949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980423, 30.383186, 42.808273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110213, -0.618528, 0.777995,
		0.615838, -0.656895, -0.435009,
		0.780126, 0.431176, 0.453311,
		36.214462, 30.512539, 42.944267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881096, 29.725161, 43.029282>,  <35.668373, 30.210716, 42.626949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881096, 29.725161, 43.029282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107414, 30.004704, 43.204315>,  <36.243206, 30.172430, 43.309334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107414, 30.004704, 43.204315>,  <35.881096, 29.725161, 43.029282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107414, 30.004704, 43.204315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192068, -0.404390, 0.894192,
		0.801866, -0.589972, -0.094573,
		0.565792, 0.698858, 0.437581,
		36.277153, 30.214361, 43.335590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413910, 29.394142, 43.532200>,  <35.881096, 29.725161, 43.029282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413910, 29.394142, 43.532200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333340, 29.768663, 43.647274>,  <36.284996, 29.993376, 43.716320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333340, 29.768663, 43.647274>,  <36.413910, 29.394142, 43.532200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333340, 29.768663, 43.647274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245265, -0.332563, 0.910630,
		0.948300, 0.112864, 0.296629,
		-0.201426, 0.936303, 0.287688,
		36.272911, 30.049555, 43.733582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477665, 29.262564, 44.151665>,  <36.413910, 29.394142, 43.532200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477665, 29.262564, 44.151665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363625, 29.645868, 44.143139>,  <36.295200, 29.875851, 44.138023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363625, 29.645868, 44.143139>,  <36.477665, 29.262564, 44.151665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363625, 29.645868, 44.143139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315415, -0.072795, 0.946158,
		0.905114, 0.276472, 0.323004,
		-0.285099, 0.958261, -0.021315,
		36.278095, 29.933346, 44.136745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670597, 29.679197, 44.726543>,  <36.477665, 29.262564, 44.151665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670597, 29.679197, 44.726543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348030, 29.876253, 44.595699>,  <36.154491, 29.994488, 44.517193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348030, 29.876253, 44.595699>,  <36.670597, 29.679197, 44.726543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348030, 29.876253, 44.595699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395345, -0.037771, 0.917756,
		0.439768, 0.869413, 0.225222,
		-0.806416, 0.492640, -0.327107,
		36.106106, 30.024046, 44.497566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583458, 30.080914, 45.247372>,  <36.670597, 29.679197, 44.726543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583458, 30.080914, 45.247372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223934, 30.066925, 45.072590>,  <36.008221, 30.058531, 44.967720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223934, 30.066925, 45.072590>,  <36.583458, 30.080914, 45.247372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223934, 30.066925, 45.072590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432569, -0.090552, 0.897042,
		-0.070938, 0.995277, 0.066260,
		-0.898806, -0.034972, -0.436950,
		35.954292, 30.056433, 44.941505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149906, 30.470068, 45.674740>,  <36.583458, 30.080914, 45.247372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149906, 30.470068, 45.674740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857113, 30.303410, 45.459106>,  <35.681438, 30.203415, 45.329727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857113, 30.303410, 45.459106>,  <36.149906, 30.470068, 45.674740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857113, 30.303410, 45.459106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606654, 0.038427, 0.794037,
		-0.310116, 0.908257, -0.280888,
		-0.731983, -0.416646, -0.539081,
		35.637520, 30.178415, 45.297382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605259, 30.914087, 45.680454>,  <36.149906, 30.470068, 45.674740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605259, 30.914087, 45.680454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424511, 30.564018, 45.611301>,  <35.316063, 30.353977, 45.569809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424511, 30.564018, 45.611301>,  <35.605259, 30.914087, 45.680454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424511, 30.564018, 45.611301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696189, 0.224787, 0.681757,
		-0.557793, 0.428423, -0.710859,
		-0.451873, -0.875171, -0.172879,
		35.288948, 30.301468, 45.559437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883675, 31.017946, 45.695202>,  <35.605259, 30.914087, 45.680454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883675, 31.017946, 45.695202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842762, 30.620136, 45.703815>,  <34.818214, 30.381451, 45.708984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842762, 30.620136, 45.703815>,  <34.883675, 31.017946, 45.695202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842762, 30.620136, 45.703815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818587, 0.096446, 0.566228,
		-0.565204, 0.040284, -0.823967,
		-0.102279, -0.994523, 0.021535,
		34.812077, 30.321779, 45.710278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161930, 30.828815, 45.528625>,  <34.883675, 31.017946, 45.695202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161930, 30.828815, 45.528625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339588, 30.559401, 45.764957>,  <34.446182, 30.397751, 45.906757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339588, 30.559401, 45.764957>,  <34.161930, 30.828815, 45.528625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339588, 30.559401, 45.764957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683472, 0.171687, 0.709500,
		-0.579313, -0.718938, -0.384089,
		0.444143, -0.673536, 0.590835,
		34.472832, 30.357340, 45.942207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793186, 30.906061, 46.224003>,  <34.161930, 30.828815, 45.528625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793186, 30.906061, 46.224003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944267, 30.535774, 46.231827>,  <34.034916, 30.313602, 46.236519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944267, 30.535774, 46.231827>,  <33.793186, 30.906061, 46.224003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944267, 30.535774, 46.231827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600589, -0.228864, 0.766103,
		-0.704720, -0.301106, -0.642421,
		0.377705, -0.925719, 0.019556,
		34.057579, 30.258059, 46.237694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246140, 30.387402, 46.146519>,  <33.793186, 30.906061, 46.224003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246140, 30.387402, 46.146519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571888, 30.283455, 46.354084>,  <33.767338, 30.221087, 46.478622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571888, 30.283455, 46.354084>,  <33.246140, 30.387402, 46.146519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571888, 30.283455, 46.354084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576834, -0.264259, 0.772936,
		-0.063730, -0.928784, -0.365102,
		0.814371, -0.259863, 0.518913,
		33.816200, 30.205496, 46.509758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208630, 29.718485, 46.293644>,  <33.246140, 30.387402, 46.146519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208630, 29.718485, 46.293644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432636, 29.913383, 46.561668>,  <33.567039, 30.030323, 46.722481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432636, 29.913383, 46.561668>,  <33.208630, 29.718485, 46.293644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432636, 29.913383, 46.561668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524924, -0.417043, 0.741977,
		0.640969, -0.767245, 0.022219,
		0.560012, 0.487247, 0.670057,
		33.600639, 30.059557, 46.762684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496937, 29.267414, 46.863091>,  <33.208630, 29.718485, 46.293644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496937, 29.267414, 46.863091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480209, 29.636084, 47.017372>,  <33.470173, 29.857285, 47.109940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480209, 29.636084, 47.017372>,  <33.496937, 29.267414, 46.863091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480209, 29.636084, 47.017372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358154, -0.374215, 0.855388,
		0.932726, -0.102373, 0.345749,
		-0.041815, 0.921674, 0.385705,
		33.467667, 29.912586, 47.133083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779099, 29.191803, 47.515034>,  <33.496937, 29.267414, 46.863091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779099, 29.191803, 47.515034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565414, 29.529881, 47.508453>,  <33.437206, 29.732727, 47.504505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565414, 29.529881, 47.508453>,  <33.779099, 29.191803, 47.515034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565414, 29.529881, 47.508453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410908, -0.242615, 0.878802,
		0.738768, 0.476220, 0.476903,
		-0.534207, 0.845194, -0.016447,
		33.405151, 29.783440, 47.503521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689247, 29.431656, 48.209309>,  <33.779099, 29.191803, 47.515034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689247, 29.431656, 48.209309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407288, 29.661404, 48.042828>,  <33.238113, 29.799252, 47.942940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407288, 29.661404, 48.042828>,  <33.689247, 29.431656, 48.209309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407288, 29.661404, 48.042828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588785, -0.146597, 0.794884,
		0.395544, 0.805363, 0.441516,
		-0.704895, 0.574370, -0.416200,
		33.195820, 29.833715, 47.917969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358707, 29.747839, 48.751995>,  <33.689247, 29.431656, 48.209309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358707, 29.747839, 48.751995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072102, 29.845095, 48.490463>,  <32.900139, 29.903448, 48.333546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072102, 29.845095, 48.490463>,  <33.358707, 29.747839, 48.751995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072102, 29.845095, 48.490463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696070, -0.187719, 0.692999,
		0.045759, 0.951654, 0.303745,
		-0.716514, 0.243138, -0.653829,
		32.857147, 29.918036, 48.294315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852634, 30.331734, 49.035065>,  <33.358707, 29.747839, 48.751995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852634, 30.331734, 49.035065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680645, 30.093416, 48.763725>,  <32.577454, 29.950426, 48.600922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680645, 30.093416, 48.763725>,  <32.852634, 30.331734, 49.035065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680645, 30.093416, 48.763725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647557, -0.320044, 0.691550,
		-0.629123, 0.736614, -0.248202,
		-0.429969, -0.595795, -0.678347,
		32.551655, 29.914679, 48.560223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220181, 30.240450, 49.283546>,  <32.852634, 30.331734, 49.035065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220181, 30.240450, 49.283546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225239, 29.961958, 48.996464>,  <32.228271, 29.794863, 48.824215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225239, 29.961958, 48.996464>,  <32.220181, 30.240450, 49.283546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225239, 29.961958, 48.996464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653304, -0.549136, 0.521194,
		-0.756990, 0.462292, -0.461792,
		0.012643, -0.696229, -0.717708,
		32.229031, 29.753090, 48.781151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491590, 30.101755, 49.126991>,  <32.220181, 30.240450, 49.283546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491590, 30.101755, 49.126991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695721, 29.769566, 49.037655>,  <31.818199, 29.570251, 48.984051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695721, 29.769566, 49.037655>,  <31.491590, 30.101755, 49.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695721, 29.769566, 49.037655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664673, -0.545689, 0.510328,
		-0.545689, -0.111984, -0.830472,
		-0.510328, 0.830472, 0.223343,
		31.848820, 29.520424, 48.970654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060638, 29.540087, 48.877716>,  <31.491590, 30.101755, 49.126991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060638, 29.540087, 48.877716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393787, 29.359259, 49.005440>,  <31.593678, 29.250761, 49.082073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393787, 29.359259, 49.005440>,  <31.060638, 29.540087, 48.877716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393787, 29.359259, 49.005440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550560, -0.617677, 0.561568,
		-0.056641, -0.643511, -0.763338,
		0.832872, -0.452071, 0.319306,
		31.643648, 29.223637, 49.101231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931725, 28.881021, 48.835506>,  <31.060638, 29.540087, 48.877716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931725, 28.881021, 48.835506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178600, 28.927326, 49.146809>,  <31.326727, 28.955109, 49.333588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178600, 28.927326, 49.146809>,  <30.931725, 28.881021, 48.835506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178600, 28.927326, 49.146809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476206, -0.732426, 0.486600,
		0.626340, -0.670933, -0.396921,
		0.617192, 0.115760, 0.778251,
		31.363758, 28.962055, 49.380283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342554, 28.277477, 49.111809>,  <30.931725, 28.881021, 48.835506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342554, 28.277477, 49.111809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314631, 28.524059, 49.425526>,  <31.297876, 28.672009, 49.613754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314631, 28.524059, 49.425526>,  <31.342554, 28.277477, 49.111809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314631, 28.524059, 49.425526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314534, -0.759707, 0.569134,
		0.946676, -0.206955, 0.246931,
		-0.069810, 0.616454, 0.784290,
		31.293688, 28.708996, 49.660812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670063, 27.939743, 49.651131>,  <31.342554, 28.277477, 49.111809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670063, 27.939743, 49.651131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502821, 28.241739, 49.853191>,  <31.402475, 28.422937, 49.974426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502821, 28.241739, 49.853191>,  <31.670063, 27.939743, 49.651131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502821, 28.241739, 49.853191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170919, -0.480773, 0.860026,
		0.892175, 0.445920, 0.071971,
		-0.418104, 0.754992, 0.505149,
		31.377390, 28.468237, 50.004738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245258, 27.375191, 49.870644>,  <31.670063, 27.939743, 49.651131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245258, 27.375191, 49.870644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267748, 26.982914, 49.795719>,  <31.281240, 26.747549, 49.750767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267748, 26.982914, 49.795719>,  <31.245258, 27.375191, 49.870644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267748, 26.982914, 49.795719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781095, 0.160056, -0.603551,
		0.621877, -0.112373, 0.775011,
		0.056222, -0.980691, -0.187309,
		31.284615, 26.688707, 49.739525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860407, 27.272043, 49.831341>,  <31.245258, 27.375191, 49.870644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860407, 27.272043, 49.831341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719696, 26.938061, 49.662060>,  <31.635269, 26.737671, 49.560490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719696, 26.938061, 49.662060>,  <31.860407, 27.272043, 49.831341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719696, 26.938061, 49.662060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695559, 0.069411, -0.715108,
		0.626459, -0.545922, 0.556344,
		-0.351777, -0.834956, -0.423204,
		31.614162, 26.687574, 49.535099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391598, 26.745235, 49.764359>,  <31.860407, 27.272043, 49.831341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391598, 26.745235, 49.764359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127972, 26.703255, 49.466465>,  <31.969797, 26.678066, 49.287731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127972, 26.703255, 49.466465>,  <32.391598, 26.745235, 49.764359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127972, 26.703255, 49.466465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718789, 0.203489, -0.664782,
		0.221316, -0.973435, -0.058671,
		-0.659061, -0.104955, -0.744730,
		31.930254, 26.671770, 49.243046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739342, 26.636374, 49.100819>,  <32.391598, 26.745235, 49.764359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739342, 26.636374, 49.100819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384029, 26.648455, 48.917492>,  <32.170841, 26.655703, 48.807495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384029, 26.648455, 48.917492>,  <32.739342, 26.636374, 49.100819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384029, 26.648455, 48.917492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458690, 0.110017, -0.881759,
		0.023787, -0.993471, -0.111582,
		-0.888278, 0.030207, -0.458312,
		32.117546, 26.657516, 48.779999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686523, 26.144621, 48.538418>,  <32.739342, 26.636374, 49.100819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686523, 26.144621, 48.538418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411034, 26.419397, 48.445667>,  <32.245739, 26.584263, 48.390015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411034, 26.419397, 48.445667>,  <32.686523, 26.144621, 48.538418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411034, 26.419397, 48.445667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264128, -0.060119, -0.962612,
		-0.675201, -0.724220, -0.140036,
		-0.688724, 0.686944, -0.231879,
		32.204418, 26.625481, 48.376102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245972, 25.881348, 47.966778>,  <32.686523, 26.144621, 48.538418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245972, 25.881348, 47.966778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282310, 26.279572, 47.976604>,  <32.304115, 26.518507, 47.982502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282310, 26.279572, 47.976604>,  <32.245972, 25.881348, 47.966778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282310, 26.279572, 47.976604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131042, 0.012503, -0.991298,
		-0.987205, 0.093279, -0.129324,
		0.090850, 0.995562, 0.024567,
		32.309566, 26.578239, 47.983974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727152, 26.072132, 47.558174>,  <32.245972, 25.881348, 47.966778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727152, 26.072132, 47.558174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029762, 26.332165, 47.586628>,  <32.211330, 26.488184, 47.603703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029762, 26.332165, 47.586628>,  <31.727152, 26.072132, 47.558174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029762, 26.332165, 47.586628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104771, -0.013111, -0.994410,
		-0.645514, 0.759752, -0.078029,
		0.756528, 0.650080, 0.071137,
		32.256721, 26.527189, 47.607967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720835, 26.433393, 46.936047>,  <31.727152, 26.072132, 47.558174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720835, 26.433393, 46.936047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080250, 26.575689, 47.038868>,  <32.295898, 26.661066, 47.100563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080250, 26.575689, 47.038868>,  <31.720835, 26.433393, 46.936047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080250, 26.575689, 47.038868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225232, 0.128945, -0.965735,
		-0.376696, 0.925647, 0.035738,
		0.898538, 0.355739, 0.257058,
		32.349812, 26.682411, 47.115986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865097, 27.040731, 46.481579>,  <31.720835, 26.433393, 46.936047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865097, 27.040731, 46.481579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217587, 26.934963, 46.638306>,  <32.429081, 26.871502, 46.732342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217587, 26.934963, 46.638306>,  <31.865097, 27.040731, 46.481579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217587, 26.934963, 46.638306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471277, 0.427255, -0.771590,
		0.036618, 0.864601, 0.501124,
		0.881225, -0.264422, 0.391821,
		32.481953, 26.855637, 46.755852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375919, 27.652197, 46.430695>,  <31.865097, 27.040731, 46.481579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375919, 27.652197, 46.430695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584934, 27.312052, 46.455460>,  <32.710342, 27.107964, 46.470318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584934, 27.312052, 46.455460>,  <32.375919, 27.652197, 46.430695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584934, 27.312052, 46.455460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594209, 0.311131, -0.741696,
		0.611447, 0.424358, 0.667872,
		0.522540, -0.850364, 0.061917,
		32.741695, 27.056942, 46.474033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029934, 27.847944, 46.306911>,  <32.375919, 27.652197, 46.430695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029934, 27.847944, 46.306911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047722, 27.456156, 46.228260>,  <33.058395, 27.221083, 46.181068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047722, 27.456156, 46.228260>,  <33.029934, 27.847944, 46.306911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047722, 27.456156, 46.228260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575321, 0.186017, -0.796494,
		0.816718, -0.077702, 0.571782,
		0.044472, -0.979469, -0.196627,
		33.061062, 27.162315, 46.169273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758797, 27.864986, 46.053135>,  <33.029934, 27.847944, 46.306911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758797, 27.864986, 46.053135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591724, 27.511972, 45.966717>,  <33.491482, 27.300163, 45.914867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591724, 27.511972, 45.966717>,  <33.758797, 27.864986, 46.053135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591724, 27.511972, 45.966717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657633, -0.129570, -0.742112,
		0.626947, -0.452043, 0.634503,
		-0.417678, -0.882536, -0.216045,
		33.466419, 27.247211, 45.901905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257313, 27.359827, 45.969578>,  <33.758797, 27.864986, 46.053135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257313, 27.359827, 45.969578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945984, 27.209074, 45.768711>,  <33.759186, 27.118622, 45.648190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945984, 27.209074, 45.768711>,  <34.257313, 27.359827, 45.969578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945984, 27.209074, 45.768711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565971, -0.074868, -0.821018,
		0.271830, -0.923230, 0.271576,
		-0.778322, -0.376882, -0.502171,
		33.712486, 27.096010, 45.618061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539307, 26.960405, 45.405521>,  <34.257313, 27.359827, 45.969578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539307, 26.960405, 45.405521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153282, 26.954836, 45.300854>,  <33.921669, 26.951494, 45.238052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153282, 26.954836, 45.300854>,  <34.539307, 26.960405, 45.405521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153282, 26.954836, 45.300854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262031, -0.057479, -0.963346,
		-0.001624, -0.998250, 0.059120,
		-0.965058, -0.013927, -0.261665,
		33.863766, 26.950659, 45.222355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529881, 26.403818, 44.889496>,  <34.539307, 26.960405, 45.405521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529881, 26.403818, 44.889496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245461, 26.682684, 44.852909>,  <34.074810, 26.850004, 44.830956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245461, 26.682684, 44.852909>,  <34.529881, 26.403818, 44.889496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245461, 26.682684, 44.852909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237238, 0.115413, -0.964571,
		-0.661910, -0.707559, -0.247459,
		-0.711051, 0.697166, -0.091467,
		34.032146, 26.891834, 44.825470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121418, 26.334871, 44.273041>,  <34.529881, 26.403818, 44.889496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121418, 26.334871, 44.273041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057426, 26.721621, 44.352600>,  <34.019032, 26.953671, 44.400333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057426, 26.721621, 44.352600>,  <34.121418, 26.334871, 44.273041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057426, 26.721621, 44.352600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194046, 0.228362, -0.954042,
		-0.967860, -0.114031, -0.224151,
		-0.159978, 0.966875, 0.198895,
		34.009434, 27.011683, 44.412270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519711, 26.558216, 43.851330>,  <34.121418, 26.334871, 44.273041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519711, 26.558216, 43.851330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738632, 26.879930, 43.943924>,  <33.869984, 27.072958, 43.999481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738632, 26.879930, 43.943924>,  <33.519711, 26.558216, 43.851330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738632, 26.879930, 43.943924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067909, 0.232996, -0.970104,
		-0.834173, 0.546663, 0.072902,
		0.547306, 0.804284, 0.231482,
		33.902824, 27.121216, 44.013367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297371, 27.070915, 43.389484>,  <33.519711, 26.558216, 43.851330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297371, 27.070915, 43.389484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647301, 27.229759, 43.500473>,  <33.857258, 27.325066, 43.567066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647301, 27.229759, 43.500473>,  <33.297371, 27.070915, 43.389484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647301, 27.229759, 43.500473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069115, 0.464596, -0.882821,
		-0.479492, 0.791488, 0.378992,
		0.874820, 0.397111, 0.277474,
		33.909748, 27.348892, 43.583714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251377, 27.722496, 43.018753>,  <33.297371, 27.070915, 43.389484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251377, 27.722496, 43.018753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632805, 27.696274, 43.136330>,  <33.861664, 27.680540, 43.206875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632805, 27.696274, 43.136330>,  <33.251377, 27.722496, 43.018753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632805, 27.696274, 43.136330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295492, 0.392140, -0.871155,
		-0.058158, 0.917567, 0.393305,
		0.953573, -0.065554, 0.293939,
		33.918877, 27.676607, 43.224510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628731, 28.300848, 42.729340>,  <33.251377, 27.722496, 43.018753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628731, 28.300848, 42.729340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922318, 28.038311, 42.799206>,  <34.098469, 27.880789, 42.841125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922318, 28.038311, 42.799206>,  <33.628731, 28.300848, 42.729340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922318, 28.038311, 42.799206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392478, 0.199987, -0.897756,
		0.554307, 0.727474, 0.404384,
		0.733966, -0.656344, 0.174663,
		34.142506, 27.841408, 42.851604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287918, 28.604534, 42.658783>,  <33.628731, 28.300848, 42.729340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287918, 28.604534, 42.658783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362164, 28.217125, 42.592434>,  <34.406712, 27.984680, 42.552624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362164, 28.217125, 42.592434>,  <34.287918, 28.604534, 42.658783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362164, 28.217125, 42.592434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352185, 0.223162, -0.908936,
		0.917341, 0.110292, 0.382521,
		0.185613, -0.968522, -0.165872,
		34.417847, 27.926569, 42.542671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878075, 28.610241, 42.231064>,  <34.287918, 28.604534, 42.658783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878075, 28.610241, 42.231064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746799, 28.235262, 42.184608>,  <34.668034, 28.010275, 42.156734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746799, 28.235262, 42.184608>,  <34.878075, 28.610241, 42.231064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746799, 28.235262, 42.184608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335778, -0.000860, -0.941941,
		0.882920, -0.348126, 0.315056,
		-0.328185, -0.937447, -0.116134,
		34.648342, 27.954027, 42.149769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526165, 28.178726, 41.956169>,  <34.878075, 28.610241, 42.231064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526165, 28.178726, 41.956169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162582, 28.046707, 41.854294>,  <34.944431, 27.967495, 41.793167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162582, 28.046707, 41.854294>,  <35.526165, 28.178726, 41.956169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162582, 28.046707, 41.854294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236438, 0.095052, -0.966986,
		0.343361, -0.939166, -0.008362,
		-0.908955, -0.330048, -0.254692,
		34.889896, 27.947693, 41.777885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684696, 27.710751, 41.508858>,  <35.526165, 28.178726, 41.956169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684696, 27.710751, 41.508858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291103, 27.729725, 41.440128>,  <35.054947, 27.741110, 41.398891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291103, 27.729725, 41.440128>,  <35.684696, 27.710751, 41.508858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291103, 27.729725, 41.440128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175386, 0.085397, -0.980789,
		-0.031850, -0.995217, -0.092348,
		-0.983984, 0.047435, -0.171827,
		34.995907, 27.743956, 41.388580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539951, 27.279909, 41.031521>,  <35.684696, 27.710751, 41.508858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539951, 27.279909, 41.031521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204239, 27.496250, 41.009274>,  <35.002811, 27.626055, 40.995926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204239, 27.496250, 41.009274>,  <35.539951, 27.279909, 41.031521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204239, 27.496250, 41.009274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017978, -0.074635, -0.997049,
		-0.543408, -0.837799, 0.052915,
		-0.839276, 0.540853, -0.055619,
		34.952457, 27.658506, 40.992588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036819, 26.890324, 40.547436>,  <35.539951, 27.279909, 41.031521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036819, 26.890324, 40.547436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957802, 27.281933, 40.567402>,  <34.910393, 27.516899, 40.579380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957802, 27.281933, 40.567402>,  <35.036819, 26.890324, 40.547436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957802, 27.281933, 40.567402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125925, 0.025152, -0.991721,
		-0.972173, -0.202193, 0.118315,
		-0.197543, 0.979023, 0.049913,
		34.898540, 27.575640, 40.582375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448441, 27.052084, 40.055298>,  <35.036819, 26.890324, 40.547436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448441, 27.052084, 40.055298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632397, 27.401285, 40.120255>,  <34.742771, 27.610806, 40.159229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632397, 27.401285, 40.120255>,  <34.448441, 27.052084, 40.055298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632397, 27.401285, 40.120255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141658, 0.252668, -0.957127,
		-0.876606, 0.417165, 0.239866,
		0.459887, 0.873002, 0.162396,
		34.770363, 27.663185, 40.168972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963684, 27.488928, 39.683632>,  <34.448441, 27.052084, 40.055298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963684, 27.488928, 39.683632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292492, 27.710077, 39.738213>,  <34.489777, 27.842768, 39.770962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292492, 27.710077, 39.738213>,  <33.963684, 27.488928, 39.683632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292492, 27.710077, 39.738213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153919, 0.446401, -0.881496,
		-0.548268, 0.703602, 0.452047,
		0.822017, 0.552874, 0.136450,
		34.539097, 27.875940, 39.779148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830074, 28.135841, 39.338558>,  <33.963684, 27.488928, 39.683632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830074, 28.135841, 39.338558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219669, 28.174019, 39.420773>,  <34.453426, 28.196926, 39.470100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219669, 28.174019, 39.420773>,  <33.830074, 28.135841, 39.338558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219669, 28.174019, 39.420773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092728, 0.659724, -0.745765,
		-0.206776, 0.745422, 0.633711,
		0.973984, 0.095444, 0.205536,
		34.511864, 28.202652, 39.482433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988159, 28.899345, 39.514885>,  <33.830074, 28.135841, 39.338558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988159, 28.899345, 39.514885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312843, 28.707869, 39.381031>,  <34.507652, 28.592981, 39.300720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312843, 28.707869, 39.381031>,  <33.988159, 28.899345, 39.514885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312843, 28.707869, 39.381031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125457, 0.702470, -0.700569,
		0.570428, 0.526677, 0.630257,
		0.811710, -0.478694, -0.334633,
		34.556355, 28.564260, 39.280640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470783, 29.458712, 39.374180>,  <33.988159, 28.899345, 39.514885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470783, 29.458712, 39.374180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580692, 29.133661, 39.168602>,  <34.646637, 28.938631, 39.045258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580692, 29.133661, 39.168602>,  <34.470783, 29.458712, 39.374180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580692, 29.133661, 39.168602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359507, 0.582577, -0.728944,
		0.891770, 0.015532, 0.452223,
		0.274776, -0.812627, -0.513940,
		34.663124, 28.889874, 39.014420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089436, 29.639069, 39.121967>,  <34.470783, 29.458712, 39.374180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089436, 29.639069, 39.121967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988800, 29.330595, 38.888050>,  <34.928421, 29.145512, 38.747700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988800, 29.330595, 38.888050>,  <35.089436, 29.639069, 39.121967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988800, 29.330595, 38.888050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471946, 0.429769, -0.769783,
		0.844969, -0.469656, 0.255833,
		-0.251584, -0.771182, -0.584794,
		34.913326, 29.099241, 38.712612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675095, 29.419491, 38.830051>,  <35.089436, 29.639069, 39.121967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675095, 29.419491, 38.830051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384888, 29.311354, 38.576897>,  <35.210766, 29.246471, 38.425003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384888, 29.311354, 38.576897>,  <35.675095, 29.419491, 38.830051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384888, 29.311354, 38.576897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518854, 0.389291, -0.761081,
		0.452132, -0.880548, -0.142165,
		-0.725512, -0.270346, -0.632887,
		35.167233, 29.230251, 38.387032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056076, 29.311403, 38.192436>,  <35.675095, 29.419491, 38.830051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056076, 29.311403, 38.192436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678207, 29.322289, 38.061684>,  <35.451485, 29.328819, 37.983234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678207, 29.322289, 38.061684>,  <36.056076, 29.311403, 38.192436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678207, 29.322289, 38.061684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295448, 0.503472, -0.811928,
		0.142481, -0.863583, -0.483656,
		-0.944674, 0.027211, -0.326879,
		35.394806, 29.330452, 37.963619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983364, 28.914122, 37.482910>,  <36.056076, 29.311403, 38.192436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983364, 28.914122, 37.482910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685795, 29.179426, 37.515553>,  <35.507252, 29.338610, 37.535137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685795, 29.179426, 37.515553>,  <35.983364, 28.914122, 37.482910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685795, 29.179426, 37.515553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259638, 0.399388, -0.879248,
		-0.615764, -0.632907, -0.469323,
		-0.743924, 0.663263, 0.081601,
		35.462616, 29.378405, 37.540031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959515, 29.132095, 36.883236>,  <35.983364, 28.914122, 37.482910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959515, 29.132095, 36.883236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709454, 29.403450, 37.037624>,  <35.559418, 29.566263, 37.130257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709454, 29.403450, 37.037624>,  <35.959515, 29.132095, 36.883236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709454, 29.403450, 37.037624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172434, 0.602341, -0.779392,
		-0.761214, -0.420688, -0.493534,
		-0.625156, 0.678386, 0.385969,
		35.521908, 29.606966, 37.153416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539398, 29.285891, 36.343525>,  <35.959515, 29.132095, 36.883236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539398, 29.285891, 36.343525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518272, 29.607063, 36.581017>,  <35.505596, 29.799767, 36.723511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518272, 29.607063, 36.581017>,  <35.539398, 29.285891, 36.343525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518272, 29.607063, 36.581017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159477, 0.593711, -0.788717,
		-0.985788, 0.053029, -0.159407,
		-0.052816, 0.802929, 0.593729,
		35.502426, 29.847942, 36.759136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110313, 29.745592, 36.010574>,  <35.539398, 29.285891, 36.343525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110313, 29.745592, 36.010574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302284, 29.995314, 36.257122>,  <35.417465, 30.145147, 36.405052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302284, 29.995314, 36.257122>,  <35.110313, 29.745592, 36.010574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302284, 29.995314, 36.257122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189348, 0.612301, -0.767616,
		-0.856631, 0.485109, 0.175650,
		0.479928, 0.624305, 0.616370,
		35.446262, 30.182606, 36.442032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948025, 30.438576, 35.755577>,  <35.110313, 29.745592, 36.010574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948025, 30.438576, 35.755577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266743, 30.509346, 35.986687>,  <35.457973, 30.551809, 36.125351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266743, 30.509346, 35.986687>,  <34.948025, 30.438576, 35.755577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266743, 30.509346, 35.986687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333551, 0.668510, -0.664709,
		-0.503850, 0.722351, 0.473651,
		0.796793, 0.176927, 0.577769,
		35.505779, 30.562424, 36.160019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948280, 31.106958, 35.873581>,  <34.948025, 30.438576, 35.755577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948280, 31.106958, 35.873581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319038, 30.968254, 35.931023>,  <35.541492, 30.885031, 35.965488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319038, 30.968254, 35.931023>,  <34.948280, 31.106958, 35.873581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319038, 30.968254, 35.931023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314691, 0.509513, -0.800853,
		0.204536, 0.787498, 0.581388,
		0.926895, -0.346761, 0.143605,
		35.597107, 30.864225, 35.974106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384155, 31.654671, 35.876907>,  <34.948280, 31.106958, 35.873581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384155, 31.654671, 35.876907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658119, 31.373287, 35.800961>,  <35.822498, 31.204458, 35.755394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658119, 31.373287, 35.800961>,  <35.384155, 31.654671, 35.876907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658119, 31.373287, 35.800961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451391, 0.614197, -0.647308,
		0.571968, 0.357644, 0.738203,
		0.684908, -0.703458, -0.189864,
		35.863590, 31.162251, 35.743999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088707, 32.026363, 35.874592>,  <35.384155, 31.654671, 35.876907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088707, 32.026363, 35.874592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117649, 31.687731, 35.663662>,  <36.135014, 31.484552, 35.537106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117649, 31.687731, 35.663662>,  <36.088707, 32.026363, 35.874592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117649, 31.687731, 35.663662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450246, 0.499497, -0.740123,
		0.889968, -0.183873, 0.417309,
		0.072356, -0.846577, -0.527325,
		36.139355, 31.433758, 35.505463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802052, 32.110306, 35.653603>,  <36.088707, 32.026363, 35.874592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802052, 32.110306, 35.653603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588593, 31.864475, 35.421219>,  <36.460518, 31.716976, 35.281788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588593, 31.864475, 35.421219>,  <36.802052, 32.110306, 35.653603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588593, 31.864475, 35.421219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446606, 0.378557, -0.810702,
		0.718166, -0.692089, 0.072459,
		-0.533648, -0.614579, -0.580958,
		36.428497, 31.680101, 35.246933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210087, 31.889849, 35.176716>,  <36.802052, 32.110306, 35.653603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210087, 31.889849, 35.176716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872776, 31.796299, 34.983147>,  <36.670387, 31.740170, 34.867004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872776, 31.796299, 34.983147>,  <37.210087, 31.889849, 35.176716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872776, 31.796299, 34.983147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359185, 0.424558, -0.831106,
		0.399821, -0.874674, -0.274021,
		-0.843285, -0.233869, -0.483917,
		36.619793, 31.726135, 34.837971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346790, 31.383528, 34.651947>,  <37.210087, 31.889849, 35.176716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346790, 31.383528, 34.651947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034023, 31.626112, 34.594246>,  <36.846363, 31.771664, 34.559624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034023, 31.626112, 34.594246>,  <37.346790, 31.383528, 34.651947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034023, 31.626112, 34.594246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464393, 0.412312, -0.783797,
		-0.415866, -0.679854, -0.604031,
		-0.781917, 0.606463, -0.144253,
		36.799450, 31.808050, 34.550972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766003, 30.851538, 34.656544>,  <37.346790, 31.383528, 34.651947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766003, 30.851538, 34.656544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153385, 30.897511, 34.744987>,  <38.385815, 30.925095, 34.798054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153385, 30.897511, 34.744987>,  <37.766003, 30.851538, 34.656544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153385, 30.897511, 34.744987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124888, -0.543982, 0.829751,
		0.215648, -0.831188, -0.512466,
		0.968452, 0.114934, 0.221114,
		38.443920, 30.931992, 34.811321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941235, 30.217760, 35.058868>,  <37.766003, 30.851538, 34.656544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941235, 30.217760, 35.058868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290939, 30.409056, 35.092216>,  <38.500763, 30.523832, 35.112225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290939, 30.409056, 35.092216>,  <37.941235, 30.217760, 35.058868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290939, 30.409056, 35.092216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235614, -0.568168, 0.788461,
		0.424440, -0.669681, -0.609408,
		0.874264, 0.478240, 0.083367,
		38.553219, 30.552528, 35.117226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392391, 29.752300, 35.283932>,  <37.941235, 30.217760, 35.058868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392391, 29.752300, 35.283932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567471, 30.098436, 35.381592>,  <38.672516, 30.306118, 35.440189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567471, 30.098436, 35.381592>,  <38.392391, 29.752300, 35.283932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567471, 30.098436, 35.381592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231603, -0.370890, 0.899333,
		0.868783, -0.337086, -0.362752,
		0.437694, 0.865340, 0.244153,
		38.698780, 30.358038, 35.454838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173687, 29.686684, 35.552677>,  <38.392391, 29.752300, 35.283932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173687, 29.686684, 35.552677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038651, 30.030592, 35.705948>,  <38.957630, 30.236937, 35.797913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038651, 30.030592, 35.705948>,  <39.173687, 29.686684, 35.552677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038651, 30.030592, 35.705948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362644, -0.256858, 0.895831,
		0.868631, 0.441384, -0.225077,
		-0.337593, 0.859770, 0.383180,
		38.937374, 30.288523, 35.820904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639397, 29.906942, 35.959682>,  <39.173687, 29.686684, 35.552677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639397, 29.906942, 35.959682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288784, 30.054316, 36.083584>,  <39.078415, 30.142738, 36.157925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288784, 30.054316, 36.083584>,  <39.639397, 29.906942, 35.959682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288784, 30.054316, 36.083584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107724, -0.477047, 0.872251,
		0.469132, 0.797925, 0.378459,
		-0.876533, 0.368432, 0.309754,
		39.025826, 30.164845, 36.176510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721653, 29.733206, 36.615135>,  <39.639397, 29.906942, 35.959682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721653, 29.733206, 36.615135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351257, 29.884180, 36.618683>,  <39.129021, 29.974766, 36.620811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351257, 29.884180, 36.618683>,  <39.721653, 29.733206, 36.615135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351257, 29.884180, 36.618683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136375, -0.356292, 0.924369,
		0.352050, 0.854750, 0.381397,
		-0.925993, 0.377437, 0.008866,
		39.073460, 29.997412, 36.621342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673210, 30.148134, 37.246204>,  <39.721653, 29.733206, 36.615135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673210, 30.148134, 37.246204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297298, 30.059824, 37.141842>,  <39.071751, 30.006838, 37.079224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297298, 30.059824, 37.141842>,  <39.673210, 30.148134, 37.246204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297298, 30.059824, 37.141842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191487, -0.292195, 0.936992,
		-0.283102, 0.930526, 0.232324,
		-0.939780, -0.220777, -0.260904,
		39.015366, 29.993591, 37.063572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302170, 30.473116, 37.761383>,  <39.673210, 30.148134, 37.246204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302170, 30.473116, 37.761383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048309, 30.187166, 37.643963>,  <38.895992, 30.015596, 37.573509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048309, 30.187166, 37.643963>,  <39.302170, 30.473116, 37.761383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048309, 30.187166, 37.643963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104197, -0.297231, 0.949103,
		-0.765741, 0.632938, 0.114151,
		-0.634653, -0.714873, -0.293553,
		38.857914, 29.972704, 37.555897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753803, 30.448338, 38.307503>,  <39.302170, 30.473116, 37.761383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753803, 30.448338, 38.307503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744896, 30.093830, 38.122452>,  <38.739552, 29.881124, 38.011421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744896, 30.093830, 38.122452>,  <38.753803, 30.448338, 38.307503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744896, 30.093830, 38.122452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089873, -0.459098, 0.883828,
		-0.995704, 0.061257, -0.069430,
		-0.022266, -0.886271, -0.462631,
		38.738216, 29.827950, 37.983662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130653, 30.137997, 38.543564>,  <38.753803, 30.448338, 38.307503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130653, 30.137997, 38.543564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386875, 29.858147, 38.416935>,  <38.540607, 29.690237, 38.340958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386875, 29.858147, 38.416935>,  <38.130653, 30.137997, 38.543564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386875, 29.858147, 38.416935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138537, -0.510769, 0.848482,
		-0.755314, -0.499640, -0.424099,
		0.640552, -0.699624, -0.316573,
		38.579041, 29.648260, 38.321964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867542, 29.574373, 38.793926>,  <38.130653, 30.137997, 38.543564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867542, 29.574373, 38.793926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228806, 29.424541, 38.710030>,  <38.445564, 29.334642, 38.659691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228806, 29.424541, 38.710030>,  <37.867542, 29.574373, 38.793926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228806, 29.424541, 38.710030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016187, -0.458503, 0.888546,
		-0.428991, -0.805897, -0.408040,
		0.903164, -0.374573, -0.209739,
		38.499752, 29.312168, 38.647106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861095, 28.836649, 38.856739>,  <37.867542, 29.574373, 38.793926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861095, 28.836649, 38.856739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252300, 28.914013, 38.887947>,  <38.487022, 28.960430, 38.906670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252300, 28.914013, 38.887947>,  <37.861095, 28.836649, 38.856739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252300, 28.914013, 38.887947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076701, -0.681452, 0.727833,
		0.193935, -0.705845, -0.681302,
		0.978011, 0.193408, 0.078019,
		38.545704, 28.972034, 38.911354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209038, 28.196177, 38.723969>,  <37.861095, 28.836649, 38.856739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209038, 28.196177, 38.723969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430325, 28.439899, 38.951195>,  <38.563095, 28.586134, 39.087532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430325, 28.439899, 38.951195>,  <38.209038, 28.196177, 38.723969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430325, 28.439899, 38.951195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082638, -0.638416, 0.765242,
		0.828930, -0.470287, -0.302829,
		0.553215, 0.609307, 0.568066,
		38.596291, 28.622692, 39.121616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573700, 27.695595, 39.183601>,  <38.209038, 28.196177, 38.723969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573700, 27.695595, 39.183601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595837, 28.062757, 39.340767>,  <38.609119, 28.283054, 39.435066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595837, 28.062757, 39.340767>,  <38.573700, 27.695595, 39.183601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595837, 28.062757, 39.340767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171239, -0.378966, 0.909429,
		0.983674, -0.117608, 0.136210,
		0.055337, 0.917907, 0.392918,
		38.612438, 28.338129, 39.458641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097733, 27.708805, 39.592785>,  <38.573700, 27.695595, 39.183601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097733, 27.708805, 39.592785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858318, 27.996325, 39.734257>,  <38.714672, 28.168837, 39.819138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858318, 27.996325, 39.734257>,  <39.097733, 27.708805, 39.592785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858318, 27.996325, 39.734257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117788, -0.515655, 0.848661,
		0.792391, 0.466293, 0.393303,
		-0.598533, 0.718798, 0.353676,
		38.678757, 28.211964, 39.840359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164631, 27.679670, 40.266327>,  <39.097733, 27.708805, 39.592785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164631, 27.679670, 40.266327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843456, 27.918009, 40.272861>,  <38.650753, 28.061012, 40.276783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843456, 27.918009, 40.272861>,  <39.164631, 27.679670, 40.266327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843456, 27.918009, 40.272861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340215, -0.480623, 0.808242,
		0.489439, 0.643407, 0.588624,
		-0.802934, 0.595844, 0.016339,
		38.602577, 28.096762, 40.277763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166477, 27.898502, 40.942829>,  <39.164631, 27.679670, 40.266327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166477, 27.898502, 40.942829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805046, 27.933344, 40.775040>,  <38.588188, 27.954248, 40.674366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805046, 27.933344, 40.775040>,  <39.166477, 27.898502, 40.942829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805046, 27.933344, 40.775040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406671, -0.482410, 0.775821,
		-0.134781, 0.871604, 0.471319,
		-0.903578, 0.087106, -0.419476,
		38.533974, 27.959476, 40.649197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665581, 28.157381, 41.418724>,  <39.166477, 27.898502, 40.942829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665581, 28.157381, 41.418724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434750, 27.993124, 41.136349>,  <38.296249, 27.894569, 40.966923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434750, 27.993124, 41.136349>,  <38.665581, 28.157381, 41.418724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434750, 27.993124, 41.136349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615366, -0.349669, 0.706439,
		-0.536938, 0.842084, -0.050907,
		-0.577081, -0.410641, -0.705940,
		38.261627, 27.869932, 40.924568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981865, 28.276686, 41.648666>,  <38.665581, 28.157381, 41.418724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981865, 28.276686, 41.648666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964161, 27.970617, 41.391743>,  <37.953537, 27.786976, 41.237591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964161, 27.970617, 41.391743>,  <37.981865, 28.276686, 41.648666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964161, 27.970617, 41.391743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674784, -0.451209, 0.584017,
		-0.736687, 0.459266, -0.496354,
		-0.044260, -0.765170, -0.642306,
		37.950882, 27.741066, 41.199051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291138, 28.100073, 41.569008>,  <37.981865, 28.276686, 41.648666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291138, 28.100073, 41.569008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484127, 27.765358, 41.465469>,  <37.599922, 27.564529, 41.403347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484127, 27.765358, 41.465469>,  <37.291138, 28.100073, 41.569008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484127, 27.765358, 41.465469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612754, -0.533617, 0.582912,
		-0.625901, -0.122627, -0.770201,
		0.482473, -0.836789, -0.258851,
		37.628868, 27.514320, 41.387814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786819, 27.595909, 41.635101>,  <37.291138, 28.100073, 41.569008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786819, 27.595909, 41.635101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111446, 27.362211, 41.636986>,  <37.306221, 27.221992, 41.638115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111446, 27.362211, 41.636986>,  <36.786819, 27.595909, 41.635101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111446, 27.362211, 41.636986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399507, -0.549032, 0.734138,
		-0.426332, -0.597681, -0.678984,
		0.811564, -0.584245, 0.004708,
		37.354916, 27.186937, 41.638397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571911, 26.821608, 41.645947>,  <36.786819, 27.595909, 41.635101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571911, 26.821608, 41.645947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931870, 26.885548, 41.808247>,  <37.147846, 26.923912, 41.905628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931870, 26.885548, 41.808247>,  <36.571911, 26.821608, 41.645947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931870, 26.885548, 41.808247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370517, -0.210473, 0.904665,
		0.230011, -0.964442, -0.130176,
		0.899895, 0.159850, 0.405754,
		37.201839, 26.933502, 41.929974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736275, 26.193043, 42.032806>,  <36.571911, 26.821608, 41.645947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736275, 26.193043, 42.032806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970200, 26.470007, 42.201836>,  <37.110554, 26.636185, 42.303253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970200, 26.470007, 42.201836>,  <36.736275, 26.193043, 42.032806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970200, 26.470007, 42.201836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315911, -0.285401, 0.904846,
		0.747125, -0.662659, 0.051834,
		0.584811, 0.692408, 0.422572,
		37.145641, 26.677729, 42.328606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002556, 25.902594, 42.680912>,  <36.736275, 26.193043, 42.032806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002556, 25.902594, 42.680912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066704, 26.288610, 42.763836>,  <37.105190, 26.520220, 42.813591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066704, 26.288610, 42.763836>,  <37.002556, 25.902594, 42.680912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066704, 26.288610, 42.763836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359998, -0.138375, 0.922634,
		0.919067, -0.222590, 0.325222,
		0.160367, 0.965042, 0.207307,
		37.114815, 26.578123, 42.826027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123379, 25.933201, 43.399414>,  <37.002556, 25.902594, 42.680912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123379, 25.933201, 43.399414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045742, 26.312250, 43.297955>,  <36.999161, 26.539680, 43.237080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045742, 26.312250, 43.297955>,  <37.123379, 25.933201, 43.399414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045742, 26.312250, 43.297955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429034, 0.150525, 0.890658,
		0.882189, 0.281695, 0.377347,
		-0.194094, 0.947624, -0.253648,
		36.987514, 26.596537, 43.221859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420399, 26.407402, 43.880829>,  <37.123379, 25.933201, 43.399414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420399, 26.407402, 43.880829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135361, 26.638414, 43.721493>,  <36.964340, 26.777021, 43.625893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135361, 26.638414, 43.721493>,  <37.420399, 26.407402, 43.880829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135361, 26.638414, 43.721493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112599, 0.466266, 0.877450,
		0.692486, 0.670114, -0.267227,
		-0.712591, 0.577532, -0.398336,
		36.921585, 26.811674, 43.601994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545971, 27.084146, 44.074371>,  <37.420399, 26.407402, 43.880829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545971, 27.084146, 44.074371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160576, 27.011631, 43.995552>,  <36.929340, 26.968122, 43.948261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160576, 27.011631, 43.995552>,  <37.545971, 27.084146, 44.074371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160576, 27.011631, 43.995552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246607, 0.314152, 0.916784,
		-0.104300, 0.931903, -0.347389,
		-0.963487, -0.181289, -0.197047,
		36.871529, 26.957245, 43.936440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178532, 27.672638, 44.383976>,  <37.545971, 27.084146, 44.074371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178532, 27.672638, 44.383976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914444, 27.375359, 44.340580>,  <36.755993, 27.196991, 44.314545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914444, 27.375359, 44.340580>,  <37.178532, 27.672638, 44.383976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914444, 27.375359, 44.340580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393609, 0.219348, 0.892726,
		-0.639676, 0.632094, -0.437346,
		-0.660218, -0.743198, -0.108486,
		36.716377, 27.152399, 44.308033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640759, 27.934095, 44.682533>,  <37.178532, 27.672638, 44.383976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640759, 27.934095, 44.682533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545116, 27.545824, 44.672661>,  <36.487732, 27.312860, 44.666737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545116, 27.545824, 44.672661>,  <36.640759, 27.934095, 44.682533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545116, 27.545824, 44.672661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434795, 0.084299, 0.896575,
		-0.868207, 0.225106, -0.442203,
		-0.239102, -0.970681, -0.024686,
		36.473385, 27.254620, 44.665257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963543, 27.906446, 44.858604>,  <36.640759, 27.934095, 44.682533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963543, 27.906446, 44.858604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110008, 27.541147, 44.930050>,  <36.197887, 27.321968, 44.972919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110008, 27.541147, 44.930050>,  <35.963543, 27.906446, 44.858604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110008, 27.541147, 44.930050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237732, 0.093772, 0.966794,
		-0.899672, -0.396464, -0.182773,
		0.366160, -0.913248, 0.178616,
		36.219856, 27.267172, 44.983635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439884, 27.653671, 45.354233>,  <35.963543, 27.906446, 44.858604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439884, 27.653671, 45.354233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736816, 27.391338, 45.409111>,  <35.914978, 27.233938, 45.442039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736816, 27.391338, 45.409111>,  <35.439884, 27.653671, 45.354233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736816, 27.391338, 45.409111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072861, 0.124537, 0.989536,
		-0.666057, -0.744562, 0.044664,
		0.742334, -0.655833, 0.137199,
		35.959518, 27.194588, 45.450272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183628, 27.219425, 45.819340>,  <35.439884, 27.653671, 45.354233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183628, 27.219425, 45.819340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578804, 27.180773, 45.867737>,  <35.815910, 27.157581, 45.896774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578804, 27.180773, 45.867737>,  <35.183628, 27.219425, 45.819340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578804, 27.180773, 45.867737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099232, 0.204713, 0.973779,
		-0.118867, -0.974041, 0.192655,
		0.987939, -0.096633, 0.120989,
		35.875187, 27.151783, 45.904034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257046, 26.734365, 46.330551>,  <35.183628, 27.219425, 45.819340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257046, 26.734365, 46.330551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592587, 26.952015, 46.324150>,  <35.793911, 27.082603, 46.320309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592587, 26.952015, 46.324150>,  <35.257046, 26.734365, 46.330551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592587, 26.952015, 46.324150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031293, 0.077543, 0.996498,
		0.543457, -0.835415, 0.082074,
		0.838853, 0.544122, -0.015999,
		35.844242, 27.115252, 46.319351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774326, 26.419857, 46.813953>,  <35.257046, 26.734365, 46.330551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774326, 26.419857, 46.813953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861050, 26.807617, 46.767902>,  <35.913082, 27.040274, 46.740273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861050, 26.807617, 46.767902>,  <35.774326, 26.419857, 46.813953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861050, 26.807617, 46.767902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185626, 0.074840, 0.979766,
		0.958403, -0.233791, -0.163721,
		0.216808, 0.969402, -0.115125,
		35.926090, 27.098438, 46.733364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325520, 26.441074, 47.057400>,  <35.774326, 26.419857, 46.813953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325520, 26.441074, 47.057400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168053, 26.807135, 47.092113>,  <36.073574, 27.026770, 47.112942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168053, 26.807135, 47.092113>,  <36.325520, 26.441074, 47.057400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168053, 26.807135, 47.092113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132405, -0.036972, 0.990506,
		0.909669, 0.401417, -0.106616,
		-0.393664, 0.915149, 0.086782,
		36.049953, 27.081680, 47.118149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671165, 26.816256, 47.667774>,  <36.325520, 26.441074, 47.057400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671165, 26.816256, 47.667774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351833, 27.044424, 47.590534>,  <36.160233, 27.181326, 47.544189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351833, 27.044424, 47.590534>,  <36.671165, 26.816256, 47.667774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351833, 27.044424, 47.590534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120028, 0.163499, 0.979215,
		0.590135, 0.804915, -0.062061,
		-0.798332, 0.570420, -0.193099,
		36.112335, 27.215549, 47.532604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866608, 27.447351, 47.937504>,  <36.671165, 26.816256, 47.667774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866608, 27.447351, 47.937504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471344, 27.392475, 47.910011>,  <36.234188, 27.359550, 47.893517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471344, 27.392475, 47.910011>,  <36.866608, 27.447351, 47.937504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471344, 27.392475, 47.910011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094102, 0.187973, 0.977656,
		-0.121204, 0.972546, -0.198657,
		-0.988157, -0.137190, -0.068736,
		36.174896, 27.351318, 47.889389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767372, 27.917822, 48.541153>,  <36.866608, 27.447351, 47.937504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767372, 27.917822, 48.541153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432381, 27.733732, 48.423294>,  <36.231384, 27.623278, 48.352581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432381, 27.733732, 48.423294>,  <36.767372, 27.917822, 48.541153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432381, 27.733732, 48.423294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406314, 0.163879, 0.898917,
		-0.365419, 0.872545, -0.324243,
		-0.837483, -0.460226, -0.294643,
		36.181137, 27.595665, 48.334900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580631, 28.620348, 48.783825>,  <36.767372, 27.917822, 48.541153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580631, 28.620348, 48.783825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699139, 28.974499, 48.927120>,  <36.770245, 29.186989, 49.013100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699139, 28.974499, 48.927120>,  <36.580631, 28.620348, 48.783825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699139, 28.974499, 48.927120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569233, 0.137507, -0.810596,
		-0.766942, 0.444076, -0.463246,
		0.296267, 0.885375, 0.358242,
		36.788017, 29.240110, 49.034592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491638, 29.110462, 48.196808>,  <36.580631, 28.620348, 48.783825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491638, 29.110462, 48.196808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749336, 29.308254, 48.430199>,  <36.903954, 29.426929, 48.570232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749336, 29.308254, 48.430199>,  <36.491638, 29.110462, 48.196808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749336, 29.308254, 48.430199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524145, 0.270118, -0.807656,
		-0.556978, 0.826150, -0.085159,
		0.644242, 0.494482, 0.583472,
		36.942608, 29.456598, 48.605240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610630, 29.763224, 47.955090>,  <36.491638, 29.110462, 48.196808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610630, 29.763224, 47.955090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939819, 29.702179, 48.173969>,  <37.137333, 29.665552, 48.305298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939819, 29.702179, 48.173969>,  <36.610630, 29.763224, 47.955090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939819, 29.702179, 48.173969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555898, 0.414738, -0.720396,
		-0.117002, 0.897052, 0.426155,
		0.822975, -0.152611, 0.547195,
		37.186710, 29.656395, 48.338127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130943, 30.449604, 47.944061>,  <36.610630, 29.763224, 47.955090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130943, 30.449604, 47.944061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326141, 30.114532, 48.042168>,  <37.443260, 29.913488, 48.101032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326141, 30.114532, 48.042168>,  <37.130943, 30.449604, 47.944061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326141, 30.114532, 48.042168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758331, 0.267746, -0.594346,
		0.432203, 0.476028, 0.765897,
		0.487991, -0.837681, 0.245266,
		37.472538, 29.863228, 48.115746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813641, 30.653873, 47.892467>,  <37.130943, 30.449604, 47.944061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813641, 30.653873, 47.892467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893097, 30.264946, 47.941681>,  <37.940769, 30.031590, 47.971210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893097, 30.264946, 47.941681>,  <37.813641, 30.653873, 47.892467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893097, 30.264946, 47.941681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853263, 0.109806, -0.509788,
		0.482166, 0.206247, 0.851456,
		0.198638, -0.972319, 0.123038,
		37.952686, 29.973249, 47.978592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510845, 30.611303, 48.121170>,  <37.813641, 30.653873, 47.892467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510845, 30.611303, 48.121170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414192, 30.259556, 47.957058>,  <38.356201, 30.048508, 47.858593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414192, 30.259556, 47.957058>,  <38.510845, 30.611303, 48.121170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414192, 30.259556, 47.957058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876004, -0.015805, -0.482046,
		0.417410, -0.475883, 0.774148,
		-0.241633, -0.879367, -0.410278,
		38.341702, 29.995747, 47.833973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132610, 30.102325, 48.285603>,  <38.510845, 30.611303, 48.121170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132610, 30.102325, 48.285603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915920, 30.002886, 47.964420>,  <38.785908, 29.943222, 47.771709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915920, 30.002886, 47.964420>,  <39.132610, 30.102325, 48.285603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915920, 30.002886, 47.964420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833578, -0.036040, -0.551225,
		0.108095, -0.967936, 0.226749,
		-0.541723, -0.248597, -0.802954,
		38.753403, 29.928307, 47.723534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575089, 29.845453, 47.802528>,  <39.132610, 30.102325, 48.285603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575089, 29.845453, 47.802528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264446, 29.856049, 47.550758>,  <39.078060, 29.862406, 47.399696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264446, 29.856049, 47.550758>,  <39.575089, 29.845453, 47.802528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264446, 29.856049, 47.550758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629609, 0.067166, -0.774004,
		0.021772, -0.997390, -0.068840,
		-0.776607, 0.026491, -0.629428,
		39.031464, 29.863995, 47.361931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688641, 29.333965, 47.162056>,  <39.575089, 29.845453, 47.802528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688641, 29.333965, 47.162056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416058, 29.600159, 47.040237>,  <39.252506, 29.759874, 46.967148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416058, 29.600159, 47.040237>,  <39.688641, 29.333965, 47.162056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416058, 29.600159, 47.040237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435158, 0.033866, -0.899717,
		-0.588434, -0.745643, -0.312669,
		-0.681456, 0.665485, -0.304545,
		39.211620, 29.799805, 46.948875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460545, 29.034166, 46.446499>,  <39.688641, 29.333965, 47.162056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460545, 29.034166, 46.446499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365128, 29.421976, 46.468830>,  <39.307877, 29.654663, 46.482227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365128, 29.421976, 46.468830>,  <39.460545, 29.034166, 46.446499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365128, 29.421976, 46.468830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206433, 0.106797, -0.972615,
		-0.948938, -0.220484, -0.225618,
		-0.238542, 0.969526, 0.055828,
		39.293564, 29.712833, 46.485580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844242, 29.258865, 45.983894>,  <39.460545, 29.034166, 46.446499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844242, 29.258865, 45.983894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041985, 29.598162, 46.059895>,  <39.160629, 29.801741, 46.105495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041985, 29.598162, 46.059895>,  <38.844242, 29.258865, 45.983894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041985, 29.598162, 46.059895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230753, 0.082675, -0.969494,
		-0.838073, 0.523116, -0.154864,
		0.494354, 0.848242, 0.189998,
		39.190292, 29.852634, 46.116894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552906, 29.730171, 45.502251>,  <38.844242, 29.258865, 45.983894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552906, 29.730171, 45.502251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887615, 29.925001, 45.602310>,  <39.088440, 30.041899, 45.662346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887615, 29.925001, 45.602310>,  <38.552906, 29.730171, 45.502251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887615, 29.925001, 45.602310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120513, 0.281825, -0.951867,
		-0.534131, 0.826639, 0.177123,
		0.836768, 0.487076, 0.250152,
		39.138645, 30.071123, 45.677357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517578, 30.294006, 45.133091>,  <38.552906, 29.730171, 45.502251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517578, 30.294006, 45.133091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907776, 30.289724, 45.221001>,  <39.141895, 30.287155, 45.273746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907776, 30.289724, 45.221001>,  <38.517578, 30.294006, 45.133091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907776, 30.289724, 45.221001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219825, 0.091243, -0.971263,
		-0.009656, 0.995771, 0.091359,
		0.975492, -0.010704, 0.219776,
		39.200424, 30.286512, 45.286934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773083, 30.805820, 44.797276>,  <38.517578, 30.294006, 45.133091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773083, 30.805820, 44.797276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079144, 30.555161, 44.856396>,  <39.262779, 30.404764, 44.891869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079144, 30.555161, 44.856396>,  <38.773083, 30.805820, 44.797276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079144, 30.555161, 44.856396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228791, 0.050060, -0.972188,
		0.601822, 0.777691, 0.181676,
		0.765157, -0.626650, 0.147801,
		39.308689, 30.367165, 44.900738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452381, 31.225584, 44.466507>,  <38.773083, 30.805820, 44.797276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452381, 31.225584, 44.466507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529942, 30.835127, 44.505585>,  <39.576477, 30.600853, 44.529030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529942, 30.835127, 44.505585>,  <39.452381, 31.225584, 44.466507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529942, 30.835127, 44.505585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301940, -0.035364, -0.952670,
		0.933399, 0.214223, 0.287880,
		0.193904, -0.976144, 0.097691,
		39.588112, 30.542284, 44.534893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987724, 31.139450, 44.174591>,  <39.452381, 31.225584, 44.466507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987724, 31.139450, 44.174591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874340, 30.756401, 44.195042>,  <39.806309, 30.526571, 44.207314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874340, 30.756401, 44.195042>,  <39.987724, 31.139450, 44.174591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874340, 30.756401, 44.195042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257570, -0.127379, -0.957827,
		0.923747, -0.258337, 0.282761,
		-0.283460, -0.957620, 0.051126,
		39.789303, 30.469114, 44.210381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399574, 30.836348, 43.702328>,  <39.987724, 31.139450, 44.174591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399574, 30.836348, 43.702328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098663, 30.574827, 43.734882>,  <39.918118, 30.417915, 43.754417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098663, 30.574827, 43.734882>,  <40.399574, 30.836348, 43.702328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098663, 30.574827, 43.734882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040252, -0.168912, -0.984809,
		0.657617, -0.737572, 0.153386,
		-0.752276, -0.653801, 0.081390,
		39.872982, 30.378687, 43.759300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605751, 30.251595, 43.346001>,  <40.399574, 30.836348, 43.702328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605751, 30.251595, 43.346001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210690, 30.197443, 43.377537>,  <39.973652, 30.164953, 43.396458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210690, 30.197443, 43.377537>,  <40.605751, 30.251595, 43.346001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210690, 30.197443, 43.377537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010136, -0.446979, -0.894487,
		0.156333, -0.884241, 0.440088,
		-0.987652, -0.135377, 0.078840,
		39.914394, 30.156830, 43.401188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414536, 29.438473, 43.303436>,  <40.605751, 30.251595, 43.346001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414536, 29.438473, 43.303436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110352, 29.673721, 43.193302>,  <39.927841, 29.814871, 43.127224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110352, 29.673721, 43.193302>,  <40.414536, 29.438473, 43.303436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110352, 29.673721, 43.193302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089556, -0.324961, -0.941478,
		-0.643176, -0.740617, 0.194451,
		-0.760463, 0.588122, -0.275333,
		39.882214, 29.850159, 43.110703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932209, 29.066179, 42.846165>,  <40.414536, 29.438473, 43.303436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932209, 29.066179, 42.846165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871876, 29.454748, 42.772858>,  <39.835674, 29.687889, 42.728874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871876, 29.454748, 42.772858>,  <39.932209, 29.066179, 42.846165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871876, 29.454748, 42.772858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000374, -0.185441, -0.982655,
		-0.988559, -0.148149, 0.028334,
		-0.150834, 0.971423, -0.183264,
		39.826626, 29.746176, 42.717880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664673, 29.046463, 42.179462>,  <39.932209, 29.066179, 42.846165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664673, 29.046463, 42.179462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740395, 29.438061, 42.209763>,  <39.785828, 29.673019, 42.227943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740395, 29.438061, 42.209763>,  <39.664673, 29.046463, 42.179462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740395, 29.438061, 42.209763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020649, 0.081096, -0.996492,
		-0.981701, 0.187077, 0.035567,
		0.189305, 0.978992, 0.075749,
		39.797188, 29.731758, 42.232487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275513, 29.401361, 41.610336>,  <39.664673, 29.046463, 42.179462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275513, 29.401361, 41.610336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541668, 29.685463, 41.702244>,  <39.701363, 29.855923, 41.757389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541668, 29.685463, 41.702244>,  <39.275513, 29.401361, 41.610336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541668, 29.685463, 41.702244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135002, 0.188234, -0.972801,
		-0.734185, 0.678314, 0.029364,
		0.665392, 0.710252, 0.229772,
		39.741287, 29.898539, 41.771175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072617, 29.946999, 41.137585>,  <39.275513, 29.401361, 41.610336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072617, 29.946999, 41.137585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448212, 30.047195, 41.231861>,  <39.673569, 30.107313, 41.288425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448212, 30.047195, 41.231861>,  <39.072617, 29.946999, 41.137585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448212, 30.047195, 41.231861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135585, 0.360193, -0.922972,
		-0.316091, 0.898618, 0.304256,
		0.938991, 0.250490, 0.235692,
		39.729908, 30.122343, 41.302570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171356, 30.670269, 41.036076>,  <39.072617, 29.946999, 41.137585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171356, 30.670269, 41.036076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522541, 30.482470, 40.998661>,  <39.733253, 30.369791, 40.976212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522541, 30.482470, 40.998661>,  <39.171356, 30.670269, 41.036076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522541, 30.482470, 40.998661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174189, 0.495290, -0.851085,
		0.445908, 0.730931, 0.516629,
		0.877966, -0.469497, -0.093534,
		39.785931, 30.341619, 40.970600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611267, 31.223015, 40.719742>,  <39.171356, 30.670269, 41.036076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611267, 31.223015, 40.719742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810871, 30.883602, 40.649334>,  <39.930634, 30.679955, 40.607090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810871, 30.883602, 40.649334>,  <39.611267, 31.223015, 40.719742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810871, 30.883602, 40.649334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271498, 0.345968, -0.898106,
		0.822967, 0.400378, 0.403017,
		0.499013, -0.848530, -0.176018,
		39.960575, 30.629044, 40.596527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254772, 31.409733, 40.381172>,  <39.611267, 31.223015, 40.719742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254772, 31.409733, 40.381172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302273, 31.021049, 40.299503>,  <40.330772, 30.787840, 40.250504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302273, 31.021049, 40.299503>,  <40.254772, 31.409733, 40.381172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302273, 31.021049, 40.299503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475139, 0.236165, -0.847625,
		0.871861, 0.003647, 0.489741,
		0.118751, -0.971706, -0.204170,
		40.337898, 30.729538, 40.238251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006607, 31.223324, 40.337818>,  <40.254772, 31.409733, 40.381172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006607, 31.223324, 40.337818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792137, 30.958916, 40.127842>,  <40.663456, 30.800270, 40.001854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792137, 30.958916, 40.127842>,  <41.006607, 31.223324, 40.337818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792137, 30.958916, 40.127842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605622, 0.131953, -0.784736,
		0.587994, -0.738675, 0.329578,
		-0.536176, -0.661020, -0.524945,
		40.631283, 30.760609, 39.970360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502747, 30.891478, 40.009914>,  <41.006607, 31.223324, 40.337818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502747, 30.891478, 40.009914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162785, 30.851433, 39.802975>,  <40.958809, 30.827406, 39.678810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162785, 30.851433, 39.802975>,  <41.502747, 30.891478, 40.009914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162785, 30.851433, 39.802975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496581, 0.176284, -0.849901,
		0.176284, -0.979235, -0.100111,
		0.849901, 0.100111, 0.517346,
		40.907814, 30.821400, 39.647770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761448, 30.571436, 39.454334>,  <41.502747, 30.891478, 40.009914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761448, 30.571436, 39.454334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416000, 30.741341, 39.345711>,  <41.208733, 30.843283, 39.280537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416000, 30.741341, 39.345711>,  <41.761448, 30.571436, 39.454334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416000, 30.741341, 39.345711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325076, 0.057455, -0.943941,
		-0.385346, -0.903481, -0.187698,
		-0.863617, 0.424760, -0.271560,
		41.156914, 30.868769, 39.264244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647488, 30.188837, 38.886311>,  <41.761448, 30.571436, 39.454334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647488, 30.188837, 38.886311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450535, 30.531218, 38.823177>,  <41.332363, 30.736647, 38.785297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450535, 30.531218, 38.823177>,  <41.647488, 30.188837, 38.886311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450535, 30.531218, 38.823177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506037, 0.133984, -0.852042,
		-0.708160, -0.499395, -0.499114,
		-0.492378, 0.855952, -0.157831,
		41.302822, 30.788004, 38.775829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498997, 30.212057, 38.142872>,  <41.647488, 30.188837, 38.886311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498997, 30.212057, 38.142872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457230, 30.581160, 38.291260>,  <41.432167, 30.802620, 38.380291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457230, 30.581160, 38.291260>,  <41.498997, 30.212057, 38.142872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457230, 30.581160, 38.291260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552031, 0.364049, -0.750154,
		-0.827259, 0.126455, -0.547404,
		-0.104421, 0.922755, 0.370970,
		41.425903, 30.857986, 38.402550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309967, 30.667728, 37.625626>,  <41.498997, 30.212057, 38.142872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309967, 30.667728, 37.625626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472069, 30.907410, 37.901806>,  <41.569332, 31.051218, 38.067513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472069, 30.907410, 37.901806>,  <41.309967, 30.667728, 37.625626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472069, 30.907410, 37.901806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560062, 0.434206, -0.705547,
		-0.722563, 0.672624, -0.159625,
		0.405257, 0.599202, 0.690452,
		41.593647, 31.087170, 38.108940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229980, 31.304617, 37.392292>,  <41.309967, 30.667728, 37.625626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229980, 31.304617, 37.392292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526760, 31.365799, 37.653404>,  <41.704826, 31.402508, 37.810070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526760, 31.365799, 37.653404>,  <41.229980, 31.304617, 37.392292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526760, 31.365799, 37.653404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475851, 0.565750, -0.673419,
		-0.472312, 0.810266, 0.346973,
		0.741948, 0.152957, 0.652776,
		41.749344, 31.411686, 37.849236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367123, 31.961042, 37.370384>,  <41.229980, 31.304617, 37.392292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367123, 31.961042, 37.370384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690063, 31.824984, 37.563248>,  <41.883827, 31.743349, 37.678967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690063, 31.824984, 37.563248>,  <41.367123, 31.961042, 37.370384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690063, 31.824984, 37.563248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568518, 0.667213, -0.481263,
		-0.158004, 0.662667, 0.732057,
		0.807355, -0.340146, 0.482160,
		41.932270, 31.722940, 37.707897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739281, 32.584820, 37.483009>,  <41.367123, 31.961042, 37.370384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739281, 32.584820, 37.483009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987099, 32.271442, 37.502544>,  <42.135788, 32.083416, 37.514263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987099, 32.271442, 37.502544>,  <41.739281, 32.584820, 37.483009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987099, 32.271442, 37.502544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711605, 0.534294, -0.456232,
		0.331339, 0.317407, 0.888520,
		0.619542, -0.783443, 0.048836,
		42.172962, 32.036411, 37.517197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310787, 32.889309, 37.567539>,  <41.739281, 32.584820, 37.483009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310787, 32.889309, 37.567539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445179, 32.526802, 37.464939>,  <42.525814, 32.309296, 37.403378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445179, 32.526802, 37.464939>,  <42.310787, 32.889309, 37.567539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445179, 32.526802, 37.464939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892268, 0.393466, -0.221456,
		0.301624, -0.154466, 0.940831,
		0.335977, -0.906270, -0.256504,
		42.545971, 32.254921, 37.387989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919411, 32.717236, 37.972389>,  <42.310787, 32.889309, 37.567539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919411, 32.717236, 37.972389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934113, 32.514011, 37.628174>,  <42.942932, 32.392075, 37.421646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934113, 32.514011, 37.628174>,  <42.919411, 32.717236, 37.972389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934113, 32.514011, 37.628174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864928, 0.447493, -0.227264,
		0.500548, -0.735948, 0.455885,
		0.036751, -0.508065, -0.860534,
		42.945137, 32.361591, 37.370014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584248, 32.479156, 37.884735>,  <42.919411, 32.717236, 37.972389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584248, 32.479156, 37.884735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442745, 32.466156, 37.510826>,  <43.357845, 32.458355, 37.286480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442745, 32.466156, 37.510826>,  <43.584248, 32.479156, 37.884735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442745, 32.466156, 37.510826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887022, 0.305395, -0.346304,
		0.296730, -0.951671, -0.079205,
		-0.353756, -0.032502, -0.934773,
		43.336617, 32.456406, 37.230392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109417, 32.117290, 37.474823>,  <43.584248, 32.479156, 37.884735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109417, 32.117290, 37.474823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880344, 32.325871, 37.221802>,  <43.742901, 32.451019, 37.069988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880344, 32.325871, 37.221802>,  <44.109417, 32.117290, 37.474823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880344, 32.325871, 37.221802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819252, 0.391680, -0.418824,
		0.029364, -0.758075, -0.651506,
		-0.572682, 0.521449, -0.632556,
		43.708538, 32.482304, 37.032036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445496, 32.087502, 36.910244>,  <44.109417, 32.117290, 37.474823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445496, 32.087502, 36.910244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197224, 32.389626, 36.826088>,  <44.048260, 32.570900, 36.775597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197224, 32.389626, 36.826088>,  <44.445496, 32.087502, 36.910244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197224, 32.389626, 36.826088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756322, 0.506023, -0.414631,
		-0.206714, -0.416474, -0.885336,
		-0.620683, 0.755308, -0.210386,
		44.011021, 32.616219, 36.762974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382774, 32.237419, 36.120617>,  <44.445496, 32.087502, 36.910244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382774, 32.237419, 36.120617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336727, 32.536102, 36.382664>,  <44.309097, 32.715313, 36.539890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336727, 32.536102, 36.382664>,  <44.382774, 32.237419, 36.120617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336727, 32.536102, 36.382664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762142, 0.489370, -0.423860,
		-0.637093, 0.450495, -0.625434,
		-0.115122, 0.746707, 0.655115,
		44.302189, 32.760113, 36.579197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343407, 32.847160, 35.818947>,  <44.382774, 32.237419, 36.120617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343407, 32.847160, 35.818947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499222, 32.946690, 36.173653>,  <44.592709, 33.006409, 36.386475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499222, 32.946690, 36.173653>,  <44.343407, 32.847160, 35.818947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499222, 32.946690, 36.173653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696498, 0.550389, -0.460394,
		-0.602623, 0.796967, 0.041088,
		0.389534, 0.248826, 0.886763,
		44.616081, 33.021339, 36.439682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581638, 33.566696, 35.871071>,  <44.343407, 32.847160, 35.818947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581638, 33.566696, 35.871071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803074, 33.332367, 36.107834>,  <44.935936, 33.191769, 36.249889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803074, 33.332367, 36.107834>,  <44.581638, 33.566696, 35.871071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803074, 33.332367, 36.107834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781819, 0.120747, -0.611702,
		0.286878, 0.801394, 0.524851,
		0.553588, -0.585822, 0.591906,
		44.969151, 33.156620, 36.285404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184578, 33.913990, 35.962021>,  <44.581638, 33.566696, 35.871071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184578, 33.913990, 35.962021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.284485, 33.530399, 36.015648>,  <45.344429, 33.300243, 36.047825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.284485, 33.530399, 36.015648>,  <45.184578, 33.913990, 35.962021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284485, 33.530399, 36.015648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869806, 0.161353, -0.466264,
		0.425505, 0.233072, 0.874427,
		0.249765, -0.958980, 0.134071,
		45.359413, 33.242706, 36.055870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415810, 34.670616, 36.065739>,  <45.184578, 33.913990, 35.962021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415810, 34.670616, 36.065739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354988, 34.452114, 36.395222>,  <45.318497, 34.321014, 36.592911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354988, 34.452114, 36.395222>,  <45.415810, 34.670616, 36.065739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354988, 34.452114, 36.395222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367986, 0.742190, 0.560126,
		-0.917315, 0.388279, 0.088163,
		-0.152051, -0.546254, 0.823703,
		45.309372, 34.288239, 36.642334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842350, 34.260105, 36.372421>,  <45.415810, 34.670616, 36.065739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842350, 34.260105, 36.372421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053875, 34.481213, 36.630043>,  <46.180790, 34.613876, 36.784615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053875, 34.481213, 36.630043>,  <45.842350, 34.260105, 36.372421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.053875, 34.481213, 36.630043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396554, 0.831829, -0.388337,
		-0.750402, -0.050044, 0.659085,
		0.528812, 0.552771, 0.644051,
		46.212517, 34.647045, 36.823257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401134, 34.824520, 36.847305>,  <45.842350, 34.260105, 36.372421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401134, 34.824520, 36.847305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764011, 34.885624, 36.690506>,  <45.981739, 34.922287, 36.596424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764011, 34.885624, 36.690506>,  <45.401134, 34.824520, 36.847305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764011, 34.885624, 36.690506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351454, 0.787342, -0.506531,
		0.231261, 0.597291, 0.767959,
		0.907193, 0.152761, -0.392002,
		46.036171, 34.931454, 36.572906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734879, 35.377148, 37.126659>,  <45.401134, 34.824520, 36.847305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734879, 35.377148, 37.126659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.858292, 35.300835, 36.753906>,  <45.932339, 35.255047, 36.530254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.858292, 35.300835, 36.753906>,  <45.734879, 35.377148, 37.126659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858292, 35.300835, 36.753906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344972, 0.890541, -0.296533,
		0.886454, 0.412965, 0.208950,
		0.308536, -0.190781, -0.931884,
		45.950851, 35.243599, 36.474342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073116, 35.955013, 36.953125>,  <45.734879, 35.377148, 37.126659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073116, 35.955013, 36.953125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976879, 35.781261, 36.605923>,  <45.919136, 35.677010, 36.397602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976879, 35.781261, 36.605923>,  <46.073116, 35.955013, 36.953125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976879, 35.781261, 36.605923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300855, 0.883603, -0.358792,
		0.922824, 0.174823, -0.343269,
		-0.240589, -0.434376, -0.868006,
		45.904701, 35.650948, 36.345520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392838, 36.333229, 36.395206>,  <46.073116, 35.955013, 36.953125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392838, 36.333229, 36.395206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096008, 36.121971, 36.230095>,  <45.917912, 35.995216, 36.131027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096008, 36.121971, 36.230095>,  <46.392838, 36.333229, 36.395206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096008, 36.121971, 36.230095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256269, 0.792550, -0.553345,
		0.619394, -0.304842, -0.723480,
		-0.742077, -0.528143, -0.412779,
		45.873386, 35.963528, 36.106262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281082, 36.675419, 35.878033>,  <46.392838, 36.333229, 36.395206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281082, 36.675419, 35.878033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951717, 36.448673, 35.867687>,  <45.754101, 36.312626, 35.861481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951717, 36.448673, 35.867687>,  <46.281082, 36.675419, 35.878033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951717, 36.448673, 35.867687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455082, 0.686892, -0.566639,
		0.338970, -0.454806, -0.823560,
		-0.823408, -0.566861, -0.025862,
		45.704697, 36.278614, 35.859928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995750, 36.681263, 35.125130>,  <46.281082, 36.675419, 35.878033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995750, 36.681263, 35.125130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684422, 36.575260, 35.352810>,  <45.497623, 36.511658, 35.489418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684422, 36.575260, 35.352810>,  <45.995750, 36.681263, 35.125130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.684422, 36.575260, 35.352810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584574, 0.636654, -0.502936,
		-0.229104, -0.724185, -0.650436,
		-0.778322, -0.265004, 0.569200,
		45.450924, 36.495758, 35.523571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343506, 36.658558, 34.696468>,  <45.995750, 36.681263, 35.125130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343506, 36.658558, 34.696468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227657, 36.696228, 35.077469>,  <45.158146, 36.718830, 35.306068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227657, 36.696228, 35.077469>,  <45.343506, 36.658558, 34.696468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227657, 36.696228, 35.077469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780462, 0.552840, -0.291971,
		-0.554074, -0.827949, -0.086618,
		-0.289623, 0.094172, 0.952497,
		45.140770, 36.724480, 35.363216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634159, 36.553577, 34.641335>,  <45.343506, 36.658558, 34.696468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634159, 36.553577, 34.641335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693489, 36.766518, 34.974705>,  <44.729088, 36.894283, 35.174728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693489, 36.766518, 34.974705>,  <44.634159, 36.553577, 34.641335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693489, 36.766518, 34.974705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798467, 0.561695, -0.216678,
		-0.583481, -0.633326, 0.508377,
		0.148325, 0.532350, 0.833429,
		44.737988, 36.926224, 35.224735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922745, 36.684128, 34.879738>,  <44.634159, 36.553577, 34.641335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922745, 36.684128, 34.879738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151161, 36.954483, 35.066109>,  <44.288212, 37.116695, 35.177933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151161, 36.954483, 35.066109>,  <43.922745, 36.684128, 34.879738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151161, 36.954483, 35.066109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654090, 0.717574, -0.239275,
		-0.496062, -0.168123, 0.851855,
		0.571042, 0.675886, 0.465929,
		44.322475, 37.157249, 35.205887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468998, 37.111511, 35.249023>,  <43.922745, 36.684128, 34.879738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468998, 37.111511, 35.249023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784813, 37.355774, 35.224602>,  <43.974304, 37.502331, 35.209949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784813, 37.355774, 35.224602>,  <43.468998, 37.111511, 35.249023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784813, 37.355774, 35.224602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599489, 0.746145, -0.289620,
		-0.131300, 0.265269, 0.955192,
		0.789539, 0.610655, -0.061057,
		44.021675, 37.538971, 35.206284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275196, 37.702339, 35.542999>,  <43.468998, 37.111511, 35.249023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275196, 37.702339, 35.542999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576107, 37.812733, 35.303696>,  <43.756653, 37.878967, 35.160114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576107, 37.812733, 35.303696>,  <43.275196, 37.702339, 35.542999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576107, 37.812733, 35.303696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580855, 0.706368, -0.404539,
		0.310944, 0.651826, 0.691691,
		0.752277, 0.275983, -0.598258,
		43.801788, 37.895527, 35.124218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163254, 38.424763, 35.420715>,  <43.275196, 37.702339, 35.542999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163254, 38.424763, 35.420715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389977, 38.306255, 35.113220>,  <43.526009, 38.235149, 34.928722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389977, 38.306255, 35.113220>,  <43.163254, 38.424763, 35.420715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389977, 38.306255, 35.113220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453278, 0.667024, -0.591285,
		0.687945, 0.683596, 0.243781,
		0.566808, -0.296271, -0.768734,
		43.560020, 38.217373, 34.882599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189266, 38.973358, 35.065350>,  <43.163254, 38.424763, 35.420715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189266, 38.973358, 35.065350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314091, 38.704674, 34.796600>,  <43.388985, 38.543461, 34.635349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314091, 38.704674, 34.796600>,  <43.189266, 38.973358, 35.065350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314091, 38.704674, 34.796600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648556, 0.366163, -0.667308,
		0.694256, 0.643991, -0.321378,
		0.312064, -0.671714, -0.671876,
		43.407711, 38.503159, 34.595039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355118, 39.377834, 34.503815>,  <43.189266, 38.973358, 35.065350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355118, 39.377834, 34.503815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312187, 39.011120, 34.349937>,  <43.286430, 38.791092, 34.257610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312187, 39.011120, 34.349937>,  <43.355118, 39.377834, 34.503815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312187, 39.011120, 34.349937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603738, 0.367517, -0.707412,
		0.789925, 0.156331, -0.592941,
		-0.107325, -0.916784, -0.384694,
		43.279991, 38.736084, 34.234528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650627, 39.454453, 33.897671>,  <43.355118, 39.377834, 34.503815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650627, 39.454453, 33.897671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407532, 39.140572, 33.848843>,  <43.261673, 38.952244, 33.819546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407532, 39.140572, 33.848843>,  <43.650627, 39.454453, 33.897671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407532, 39.140572, 33.848843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308658, 0.375034, -0.874117,
		0.731700, -0.493555, -0.470126,
		-0.607738, -0.784699, -0.122073,
		43.225212, 38.905163, 33.812222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648430, 39.340370, 33.213947>,  <43.650627, 39.454453, 33.897671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648430, 39.340370, 33.213947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328815, 39.128578, 33.327923>,  <43.137047, 39.001503, 33.396309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328815, 39.128578, 33.327923>,  <43.648430, 39.340370, 33.213947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328815, 39.128578, 33.327923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441238, 0.194407, -0.876080,
		0.408475, -0.825745, -0.388966,
		-0.799035, -0.529482, 0.284939,
		43.089104, 38.969734, 33.413406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465160, 38.788803, 32.686531>,  <43.648430, 39.340370, 33.213947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465160, 38.788803, 32.686531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153763, 38.890114, 32.916245>,  <42.966927, 38.950901, 33.054073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153763, 38.890114, 32.916245>,  <43.465160, 38.788803, 32.686531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153763, 38.890114, 32.916245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475498, 0.359256, -0.803017,
		-0.409699, -0.898214, -0.159247,
		-0.778492, 0.253274, 0.574285,
		42.920216, 38.966095, 33.088531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888767, 38.486069, 32.335953>,  <43.465160, 38.788803, 32.686531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888767, 38.486069, 32.335953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747761, 38.780746, 32.566784>,  <42.663158, 38.957554, 32.705284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747761, 38.780746, 32.566784>,  <42.888767, 38.486069, 32.335953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747761, 38.780746, 32.566784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668023, 0.233753, -0.706474,
		-0.655346, -0.634544, 0.409725,
		-0.352515, 0.736690, 0.577079,
		42.642006, 39.001755, 32.739906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089531, 38.471455, 32.280567>,  <42.888767, 38.486069, 32.335953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089531, 38.471455, 32.280567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170345, 38.832195, 32.433323>,  <42.218834, 39.048641, 32.524975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170345, 38.832195, 32.433323>,  <42.089531, 38.471455, 32.280567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170345, 38.832195, 32.433323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579417, 0.424436, -0.695795,
		-0.789594, -0.080697, 0.608301,
		0.202036, 0.901855, 0.381889,
		42.230957, 39.102753, 32.547890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476803, 38.772747, 32.358311>,  <42.089531, 38.471455, 32.280567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476803, 38.772747, 32.358311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723209, 39.087608, 32.346264>,  <41.871056, 39.276527, 32.339035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723209, 39.087608, 32.346264>,  <41.476803, 38.772747, 32.358311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723209, 39.087608, 32.346264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694291, 0.524485, -0.492823,
		-0.372131, 0.324500, 0.869608,
		0.616018, 0.787156, -0.030121,
		41.908016, 39.323753, 32.337227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997452, 39.304100, 32.401886>,  <41.476803, 38.772747, 32.358311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997452, 39.304100, 32.401886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334198, 39.477551, 32.273369>,  <41.536247, 39.581619, 32.196259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334198, 39.477551, 32.273369>,  <40.997452, 39.304100, 32.401886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334198, 39.477551, 32.273369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535566, 0.597886, -0.596407,
		-0.066522, 0.674168, 0.735576,
		0.841869, 0.433624, -0.321289,
		41.586758, 39.607639, 32.176983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069115, 40.100292, 32.487164>,  <40.997452, 39.304100, 32.401886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069115, 40.100292, 32.487164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251514, 39.950005, 32.164452>,  <41.360954, 39.859833, 31.970823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251514, 39.950005, 32.164452>,  <41.069115, 40.100292, 32.487164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251514, 39.950005, 32.164452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462338, 0.674591, -0.575475,
		0.760466, 0.635422, 0.133904,
		0.456000, -0.375719, -0.806783,
		41.388313, 39.837288, 31.922417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464077, 40.552025, 31.950897>,  <41.069115, 40.100292, 32.487164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464077, 40.552025, 31.950897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283611, 40.229843, 31.797174>,  <41.175331, 40.036533, 31.704941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283611, 40.229843, 31.797174>,  <41.464077, 40.552025, 31.950897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283611, 40.229843, 31.797174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659272, 0.591041, -0.464792,
		0.601512, 0.043668, -0.797669,
		-0.451158, -0.805459, -0.384308,
		41.148262, 39.988205, 31.681883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349155, 40.398872, 31.220190>,  <41.464077, 40.552025, 31.950897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349155, 40.398872, 31.220190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014347, 40.263050, 31.391819>,  <40.813461, 40.181557, 31.494797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014347, 40.263050, 31.391819>,  <41.349155, 40.398872, 31.220190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014347, 40.263050, 31.391819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544745, 0.590924, -0.595031,
		-0.051503, -0.731786, -0.679586,
		-0.837019, -0.339555, 0.429071,
		40.763241, 40.161182, 31.520540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861214, 40.431389, 30.676098>,  <41.349155, 40.398872, 31.220190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861214, 40.431389, 30.676098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630054, 40.472775, 30.999907>,  <40.491360, 40.497604, 31.194191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630054, 40.472775, 30.999907>,  <40.861214, 40.431389, 30.676098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630054, 40.472775, 30.999907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677678, 0.491866, -0.546645,
		-0.454733, -0.864502, -0.214137,
		-0.577902, 0.103461, 0.809522,
		40.456684, 40.503811, 31.242764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323055, 40.133492, 30.462830>,  <40.861214, 40.431389, 30.676098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323055, 40.133492, 30.462830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199455, 40.379665, 30.752869>,  <40.125298, 40.527370, 30.926891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199455, 40.379665, 30.752869>,  <40.323055, 40.133492, 30.462830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199455, 40.379665, 30.752869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748945, 0.312440, -0.584348,
		-0.586176, -0.723618, 0.364382,
		-0.308997, 0.615433, 0.725095,
		40.106754, 40.564297, 30.970398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740364, 40.552685, 29.980961>,  <40.323055, 40.133492, 30.462830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740364, 40.552685, 29.980961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066765, 40.752987, 30.096466>,  <41.262604, 40.873169, 30.165770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066765, 40.752987, 30.096466>,  <40.740364, 40.552685, 29.980961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066765, 40.752987, 30.096466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444142, -0.862864, 0.241253,
		0.369972, -0.068611, -0.926506,
		0.816002, 0.500757, 0.288762,
		41.311565, 40.903214, 30.183094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321331, 40.361263, 29.610971>,  <40.740364, 40.552685, 29.980961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321331, 40.361263, 29.610971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396130, 40.391129, 30.002779>,  <41.441010, 40.409046, 30.237864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396130, 40.391129, 30.002779>,  <41.321331, 40.361263, 29.610971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396130, 40.391129, 30.002779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391313, -0.920246, -0.004563,
		0.901058, 0.384152, -0.201299,
		0.186998, 0.074660, 0.979519,
		41.452229, 40.413525, 30.296635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067421, 40.126221, 28.915518>,  <41.321331, 40.361263, 29.610971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067421, 40.126221, 28.915518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293621, 40.369530, 28.692730>,  <41.429340, 40.515514, 28.559057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293621, 40.369530, 28.692730>,  <41.067421, 40.126221, 28.915518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293621, 40.369530, 28.692730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795750, -0.579904, 0.174622,
		-0.216772, -0.541959, -0.811967,
		0.565501, 0.608270, -0.556971,
		41.463272, 40.552010, 28.525639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511646, 39.734497, 28.542065>,  <41.067421, 40.126221, 28.915518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511646, 39.734497, 28.542065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702324, 40.082230, 28.594257>,  <41.816730, 40.290871, 28.625572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702324, 40.082230, 28.594257>,  <41.511646, 39.734497, 28.542065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702324, 40.082230, 28.594257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813668, -0.492522, 0.308816,
		0.332729, -0.041041, -0.942129,
		0.476693, 0.869332, 0.130482,
		41.845333, 40.343029, 28.633402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229187, 39.646038, 28.223740>,  <41.511646, 39.734497, 28.542065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229187, 39.646038, 28.223740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217255, 39.919731, 28.515200>,  <42.210094, 40.083946, 28.690075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217255, 39.919731, 28.515200>,  <42.229187, 39.646038, 28.223740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217255, 39.919731, 28.515200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706717, -0.501081, 0.499469,
		0.706867, 0.529849, -0.468614,
		-0.029830, 0.684236, 0.728651,
		42.208305, 40.125000, 28.733795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858688, 39.950375, 28.209246>,  <42.229187, 39.646038, 28.223740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858688, 39.950375, 28.209246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698696, 39.995449, 28.573074>,  <42.602703, 40.022495, 28.791372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698696, 39.995449, 28.573074>,  <42.858688, 39.950375, 28.209246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698696, 39.995449, 28.573074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815082, -0.410085, 0.409232,
		0.419117, 0.905059, 0.072176,
		-0.399977, 0.112687, 0.909571,
		42.578705, 40.029255, 28.845945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349663, 40.270447, 28.641102>,  <42.858688, 39.950375, 28.209246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349663, 40.270447, 28.641102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094418, 40.027550, 28.830442>,  <42.941269, 39.881809, 28.944046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094418, 40.027550, 28.830442>,  <43.349663, 40.270447, 28.641102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094418, 40.027550, 28.830442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768075, -0.459303, 0.446209,
		-0.053547, 0.648301, 0.759499,
		-0.638117, -0.607245, 0.473349,
		42.902981, 39.845375, 28.972446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665081, 40.130966, 29.347075>,  <43.349663, 40.270447, 28.641102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665081, 40.130966, 29.347075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376179, 39.858639, 29.298347>,  <43.202839, 39.695244, 29.269112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376179, 39.858639, 29.298347>,  <43.665081, 40.130966, 29.347075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376179, 39.858639, 29.298347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545089, -0.668740, 0.505633,
		-0.425707, 0.298793, 0.854105,
		-0.722254, -0.680815, -0.121818,
		43.159504, 39.654396, 29.261803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501629, 39.920712, 30.046663>,  <43.665081, 40.130966, 29.347075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501629, 39.920712, 30.046663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373280, 39.632111, 29.801235>,  <43.296268, 39.458950, 29.653978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373280, 39.632111, 29.801235>,  <43.501629, 39.920712, 30.046663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373280, 39.632111, 29.801235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422224, -0.688862, 0.589234,
		-0.847800, -0.069994, 0.525676,
		-0.320875, -0.721506, -0.613571,
		43.277016, 39.415657, 29.617165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144680, 39.380280, 30.486593>,  <43.501629, 39.920712, 30.046663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144680, 39.380280, 30.486593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217857, 39.188221, 30.143433>,  <43.261765, 39.072987, 29.937536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217857, 39.188221, 30.143433>,  <43.144680, 39.380280, 30.486593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217857, 39.188221, 30.143433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193715, -0.837915, 0.510268,
		-0.963849, -0.259538, -0.060281,
		0.182944, -0.480144, -0.857900,
		43.272739, 39.044178, 29.886063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824230, 38.646145, 30.562218>,  <43.144680, 39.380280, 30.486593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824230, 38.646145, 30.562218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103207, 38.649452, 30.275581>,  <43.270592, 38.651436, 30.103600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103207, 38.649452, 30.275581>,  <42.824230, 38.646145, 30.562218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103207, 38.649452, 30.275581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332427, -0.889580, 0.313274,
		-0.634874, -0.456705, -0.623182,
		0.697444, 0.008273, -0.716592,
		43.312439, 38.651936, 30.060604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779720, 38.001793, 30.201904>,  <42.824230, 38.646145, 30.562218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779720, 38.001793, 30.201904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135090, 38.184986, 30.189501>,  <43.348312, 38.294903, 30.182058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135090, 38.184986, 30.189501>,  <42.779720, 38.001793, 30.201904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135090, 38.184986, 30.189501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455004, -0.869684, 0.191369,
		0.060678, -0.184124, -0.981028,
		0.888420, 0.457983, -0.031007,
		43.401615, 38.322380, 30.180199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111698, 37.474880, 30.332424>,  <42.779720, 38.001793, 30.201904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111698, 37.474880, 30.332424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394363, 37.757576, 30.345999>,  <43.563961, 37.927193, 30.354143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394363, 37.757576, 30.345999>,  <43.111698, 37.474880, 30.332424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394363, 37.757576, 30.345999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650268, -0.667607, 0.362564,
		0.278895, -0.234140, -0.931341,
		0.706660, 0.706739, 0.033938,
		43.606361, 37.969597, 30.356180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711834, 37.113068, 30.161755>,  <43.111698, 37.474880, 30.332424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711834, 37.113068, 30.161755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851707, 37.445255, 30.335211>,  <43.935631, 37.644569, 30.439285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851707, 37.445255, 30.335211>,  <43.711834, 37.113068, 30.161755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851707, 37.445255, 30.335211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761177, -0.521692, 0.385288,
		0.546196, 0.195347, -0.814561,
		0.349685, 0.830468, 0.433640,
		43.956612, 37.694397, 30.465303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365463, 37.091179, 30.149139>,  <43.711834, 37.113068, 30.161755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365463, 37.091179, 30.149139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310848, 37.339684, 30.457787>,  <44.278080, 37.488785, 30.642975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310848, 37.339684, 30.457787>,  <44.365463, 37.091179, 30.149139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310848, 37.339684, 30.457787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703061, -0.487971, 0.517290,
		0.697899, 0.613122, -0.370159,
		-0.136535, 0.621261, 0.771617,
		44.269886, 37.526062, 30.689272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006535, 37.245800, 30.396704>,  <44.365463, 37.091179, 30.149139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006535, 37.245800, 30.396704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761253, 37.345142, 30.696651>,  <44.614086, 37.404747, 30.876619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761253, 37.345142, 30.696651>,  <45.006535, 37.245800, 30.396704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761253, 37.345142, 30.696651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673671, -0.331295, 0.660614,
		0.412497, 0.910254, 0.035838,
		-0.613199, 0.248359, 0.749870,
		44.577293, 37.419651, 30.921612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331989, 37.678093, 30.798666>,  <45.006535, 37.245800, 30.396704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331989, 37.678093, 30.798666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058918, 37.511974, 31.039156>,  <44.895073, 37.412304, 31.183451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058918, 37.511974, 31.039156>,  <45.331989, 37.678093, 30.798666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058918, 37.511974, 31.039156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722336, -0.259292, 0.641092,
		-0.110352, 0.871949, 0.476999,
		-0.682681, -0.415299, 0.601227,
		44.854115, 37.387386, 31.219524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512524, 37.832039, 31.459213>,  <45.331989, 37.678093, 30.798666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512524, 37.832039, 31.459213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260532, 37.545101, 31.578238>,  <45.109337, 37.372940, 31.649652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260532, 37.545101, 31.578238>,  <45.512524, 37.832039, 31.459213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260532, 37.545101, 31.578238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712782, -0.381965, 0.588255,
		-0.308323, 0.582685, 0.751941,
		-0.629983, -0.717342, 0.297559,
		45.071537, 37.329899, 31.667505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595074, 37.803509, 32.187611>,  <45.512524, 37.832039, 31.459213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595074, 37.803509, 32.187611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424313, 37.449631, 32.112709>,  <45.321854, 37.237305, 32.067768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424313, 37.449631, 32.112709>,  <45.595074, 37.803509, 32.187611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424313, 37.449631, 32.112709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573925, -0.425093, 0.699933,
		-0.698829, 0.191335, 0.689223,
		-0.426905, -0.884696, -0.187256,
		45.296242, 37.184223, 32.056534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575764, 37.512592, 32.807453>,  <45.595074, 37.803509, 32.187611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575764, 37.512592, 32.807453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542629, 37.200378, 32.559612>,  <45.522747, 37.013050, 32.410908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542629, 37.200378, 32.559612>,  <45.575764, 37.512592, 32.807453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542629, 37.200378, 32.559612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540733, -0.557461, 0.629956,
		-0.837105, -0.282854, 0.468239,
		-0.082840, -0.780533, -0.619602,
		45.517776, 36.966217, 32.373734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522842, 36.920673, 33.226578>,  <45.575764, 37.512592, 32.807453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522842, 36.920673, 33.226578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657890, 36.760426, 32.885868>,  <45.738918, 36.664276, 32.681442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657890, 36.760426, 32.885868>,  <45.522842, 36.920673, 33.226578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657890, 36.760426, 32.885868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458529, -0.720283, 0.520522,
		-0.822048, -0.566302, -0.059488,
		0.337621, -0.400617, -0.851773,
		45.759178, 36.640240, 32.630337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500046, 36.184818, 33.334862>,  <45.522842, 36.920673, 33.226578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500046, 36.184818, 33.334862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754234, 36.219082, 33.027920>,  <45.906746, 36.239639, 32.843754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754234, 36.219082, 33.027920>,  <45.500046, 36.184818, 33.334862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754234, 36.219082, 33.027920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483345, -0.819148, 0.308827,
		-0.602125, -0.567149, -0.561950,
		0.635471, 0.085663, -0.767358,
		45.944874, 36.244781, 32.797714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488682, 35.430046, 33.069355>,  <45.500046, 36.184818, 33.334862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488682, 35.430046, 33.069355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808849, 35.623077, 32.927120>,  <46.000950, 35.738895, 32.841778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808849, 35.623077, 32.927120>,  <45.488682, 35.430046, 33.069355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808849, 35.623077, 32.927120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592896, -0.724755, 0.351005,
		-0.088327, -0.491780, -0.866228,
		0.800420, 0.482580, -0.355590,
		46.048977, 35.767853, 32.820442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748547, 34.999607, 32.686092>,  <45.488682, 35.430046, 33.069355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748547, 34.999607, 32.686092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068867, 35.233170, 32.739418>,  <46.261059, 35.373306, 32.771412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068867, 35.233170, 32.739418>,  <45.748547, 34.999607, 32.686092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068867, 35.233170, 32.739418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515029, -0.784963, 0.344353,
		0.305713, -0.207100, -0.929327,
		0.800803, 0.583903, 0.133311,
		46.309109, 35.408340, 32.779411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333599, 34.589870, 32.601509>,  <45.748547, 34.999607, 32.686092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333599, 34.589870, 32.601509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488052, 34.887398, 32.819733>,  <46.580727, 35.065914, 32.950665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488052, 34.887398, 32.819733>,  <46.333599, 34.589870, 32.601509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488052, 34.887398, 32.819733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530907, -0.662853, 0.527980,
		0.754345, 0.085767, -0.650851,
		0.386136, 0.743821, 0.545554,
		46.603893, 35.110542, 32.983398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.080719, 34.508629, 32.655773>,  <46.333599, 34.589870, 32.601509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.080719, 34.508629, 32.655773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004742, 34.752220, 32.963818>,  <46.959156, 34.898373, 33.148643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004742, 34.752220, 32.963818>,  <47.080719, 34.508629, 32.655773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.004742, 34.752220, 32.963818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615692, -0.537100, 0.576581,
		0.764750, 0.583670, -0.272922,
		-0.189947, 0.608976, 0.770109,
		46.947758, 34.934914, 33.194851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.679554, 34.753117, 32.959702>,  <47.080719, 34.508629, 32.655773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.679554, 34.753117, 32.959702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417000, 34.792252, 33.258923>,  <47.259468, 34.815731, 33.438457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417000, 34.792252, 33.258923>,  <47.679554, 34.753117, 32.959702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417000, 34.792252, 33.258923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576834, -0.573979, 0.581214,
		0.486232, 0.813004, 0.320316,
		-0.656384, 0.097836, 0.748056,
		47.220085, 34.821602, 33.483341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.042450, 34.934521, 33.578690>,  <47.679554, 34.753117, 32.959702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.042450, 34.934521, 33.578690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699894, 34.747982, 33.667336>,  <47.494358, 34.636059, 33.720524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699894, 34.747982, 33.667336>,  <48.042450, 34.934521, 33.578690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.699894, 34.747982, 33.667336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492419, -0.608587, 0.622210,
		-0.155294, 0.641983, 0.750827,
		-0.856392, -0.466347, 0.221615,
		47.442978, 34.608078, 33.733818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.896282, 34.685169, 34.293423>,  <48.042450, 34.934521, 33.578690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.896282, 34.685169, 34.293423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613407, 34.444092, 34.145561>,  <47.443680, 34.299446, 34.056847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613407, 34.444092, 34.145561>,  <47.896282, 34.685169, 34.293423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.613407, 34.444092, 34.145561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233127, -0.692362, 0.682852,
		-0.667482, 0.396732, 0.630136,
		-0.707191, -0.602693, -0.369650,
		47.401249, 34.263283, 34.034668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.785805, 34.249657, 34.897736>,  <47.896282, 34.685169, 34.293423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.785805, 34.249657, 34.897736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583973, 34.058964, 34.609810>,  <47.462875, 33.944546, 34.437054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583973, 34.058964, 34.609810>,  <47.785805, 34.249657, 34.897736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583973, 34.058964, 34.609810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022652, -0.826128, 0.563027,
		-0.863071, 0.300394, 0.406044,
		-0.504575, -0.476735, -0.719811,
		47.432602, 33.915943, 34.393867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.321335, 34.783325, 34.971466>,  <47.785805, 34.249657, 34.897736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.321335, 34.783325, 34.971466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.008701, 34.883316, 35.200077>,  <47.821121, 34.943310, 35.337246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.008701, 34.883316, 35.200077>,  <48.321335, 34.783325, 34.971466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.008701, 34.883316, 35.200077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326535, -0.944595, -0.033400,
		0.531516, -0.212729, 0.819901,
		-0.781579, 0.249973, 0.571530,
		47.774227, 34.958309, 35.371536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.046131, 34.426857, 44.001823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880791, 34.106396, 43.828716>,  <36.781586, 33.914120, 43.724854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880791, 34.106396, 43.828716>,  <37.046131, 34.426857, 44.001823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880791, 34.106396, 43.828716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404362, 0.264337, -0.875567,
		0.815863, -0.536912, 0.214693,
		-0.413351, -0.801157, -0.432769,
		36.756786, 33.866047, 43.698887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559231, 34.020050, 43.559963>,  <37.046131, 34.426857, 44.001823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559231, 34.020050, 43.559963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203243, 33.929115, 43.401840>,  <36.989651, 33.874554, 43.306965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203243, 33.929115, 43.401840>,  <37.559231, 34.020050, 43.559963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203243, 33.929115, 43.401840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306814, 0.342817, -0.887886,
		0.337360, -0.911481, -0.235351,
		-0.889974, -0.227329, -0.395308,
		36.936253, 33.860912, 43.283249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749313, 33.527752, 42.920452>,  <37.559231, 34.020050, 43.559963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749313, 33.527752, 42.920452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385170, 33.678101, 42.851212>,  <37.166683, 33.768311, 42.809666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385170, 33.678101, 42.851212>,  <37.749313, 33.527752, 42.920452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385170, 33.678101, 42.851212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285126, 0.266565, -0.920677,
		-0.299915, -0.887504, -0.349841,
		-0.910360, 0.375873, -0.173103,
		37.112061, 33.790863, 42.799282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518215, 33.276115, 42.318703>,  <37.749313, 33.527752, 42.920452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518215, 33.276115, 42.318703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281872, 33.597832, 42.344044>,  <37.140068, 33.790859, 42.359249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281872, 33.597832, 42.344044>,  <37.518215, 33.276115, 42.318703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281872, 33.597832, 42.344044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223722, 0.238783, -0.944950,
		-0.775139, -0.544155, -0.321023,
		-0.590854, 0.804287, 0.063350,
		37.104614, 33.839119, 42.363049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127804, 33.245865, 41.688087>,  <37.518215, 33.276115, 42.318703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127804, 33.245865, 41.688087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071392, 33.615486, 41.830212>,  <37.037544, 33.837257, 41.915485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071392, 33.615486, 41.830212>,  <37.127804, 33.245865, 41.688087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071392, 33.615486, 41.830212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491766, 0.376875, -0.784940,
		-0.859230, 0.064031, -0.507566,
		-0.141028, 0.924048, 0.355310,
		37.029083, 33.892700, 41.936806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812489, 33.731052, 41.116085>,  <37.127804, 33.245865, 41.688087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812489, 33.731052, 41.116085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.011482, 33.953487, 41.382401>,  <37.130878, 34.086948, 41.542191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.011482, 33.953487, 41.382401>,  <36.812489, 33.731052, 41.116085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011482, 33.953487, 41.382401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389887, 0.542282, -0.744257,
		-0.774917, 0.629840, 0.052966,
		0.497485, 0.556087, 0.665790,
		37.160728, 34.120312, 41.582138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660244, 34.414890, 40.928982>,  <36.812489, 33.731052, 41.116085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660244, 34.414890, 40.928982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997620, 34.422138, 41.143749>,  <37.200043, 34.426487, 41.272610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997620, 34.422138, 41.143749>,  <36.660244, 34.414890, 40.928982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997620, 34.422138, 41.143749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458805, 0.495648, -0.737449,
		-0.279486, 0.868335, 0.409735,
		0.843437, 0.018119, 0.536923,
		37.250652, 34.427574, 41.304825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884727, 35.067596, 40.766430>,  <36.660244, 34.414890, 40.928982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884727, 35.067596, 40.766430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204487, 34.901676, 40.940285>,  <37.396343, 34.802124, 41.044598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204487, 34.901676, 40.940285>,  <36.884727, 35.067596, 40.766430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204487, 34.901676, 40.940285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586541, 0.382097, -0.714123,
		0.130145, 0.825798, 0.548744,
		0.799395, -0.414800, 0.434636,
		37.444305, 34.777237, 41.070675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488518, 35.511787, 40.766075>,  <36.884727, 35.067596, 40.766430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488518, 35.511787, 40.766075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664482, 35.155373, 40.810871>,  <37.770061, 34.941525, 40.837749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664482, 35.155373, 40.810871>,  <37.488518, 35.511787, 40.766075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664482, 35.155373, 40.810871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572060, 0.181907, -0.799785,
		0.692264, 0.415896, 0.589747,
		0.439907, -0.891033, 0.111990,
		37.796455, 34.888062, 40.844467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254559, 35.603558, 40.596581>,  <37.488518, 35.511787, 40.766075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254559, 35.603558, 40.596581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187000, 35.211140, 40.558582>,  <38.146465, 34.975689, 40.535782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187000, 35.211140, 40.558582>,  <38.254559, 35.603558, 40.596581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187000, 35.211140, 40.558582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727430, -0.059033, -0.683637,
		0.665071, -0.184569, 0.723613,
		-0.168896, -0.981045, -0.095000,
		38.136333, 34.916824, 40.530083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856022, 35.143574, 40.722900>,  <38.254559, 35.603558, 40.596581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856022, 35.143574, 40.722900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612228, 34.923000, 40.495056>,  <38.465954, 34.790657, 40.358349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612228, 34.923000, 40.495056>,  <38.856022, 35.143574, 40.722900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612228, 34.923000, 40.495056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686472, -0.007655, -0.727116,
		0.396592, -0.834186, 0.383207,
		-0.609484, -0.551429, -0.569610,
		38.429382, 34.757572, 40.324173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343987, 34.648628, 40.397884>,  <38.856022, 35.143574, 40.722900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343987, 34.648628, 40.397884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.017769, 34.624786, 40.167641>,  <38.822037, 34.610481, 40.029495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.017769, 34.624786, 40.167641>,  <39.343987, 34.648628, 40.397884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017769, 34.624786, 40.167641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578625, -0.098958, -0.809568,
		-0.008710, -0.993305, 0.115193,
		-0.815547, -0.059602, -0.575613,
		38.773106, 34.606907, 39.994957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489113, 34.119827, 39.975117>,  <39.343987, 34.648628, 40.397884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489113, 34.119827, 39.975117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205425, 34.315693, 39.772240>,  <39.035213, 34.433212, 39.650513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205425, 34.315693, 39.772240>,  <39.489113, 34.119827, 39.975117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205425, 34.315693, 39.772240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521141, -0.120381, -0.844938,
		-0.474789, -0.863563, -0.169805,
		-0.709216, 0.489660, -0.507194,
		38.992661, 34.462589, 39.620083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265751, 33.713150, 39.450325>,  <39.489113, 34.119827, 39.975117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265751, 33.713150, 39.450325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.146774, 34.076092, 39.331512>,  <39.075386, 34.293858, 39.260223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.146774, 34.076092, 39.331512>,  <39.265751, 33.713150, 39.450325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146774, 34.076092, 39.331512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553686, -0.089517, -0.827900,
		-0.777791, -0.410719, -0.475765,
		-0.297445, 0.907357, -0.297035,
		39.057541, 34.348297, 39.242401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977951, 33.608150, 38.743629>,  <39.265751, 33.713150, 39.450325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977951, 33.608150, 38.743629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053391, 34.000439, 38.764091>,  <39.098656, 34.235813, 38.776367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053391, 34.000439, 38.764091>,  <38.977951, 33.608150, 38.743629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053391, 34.000439, 38.764091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509704, -0.053229, -0.858702,
		-0.839424, 0.188027, -0.509916,
		0.188601, 0.980720, 0.051157,
		39.109970, 34.294655, 38.779438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065388, 33.895088, 37.963619>,  <38.977951, 33.608150, 38.743629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065388, 33.895088, 37.963619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216980, 34.179306, 38.200771>,  <39.307934, 34.349834, 38.343063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216980, 34.179306, 38.200771>,  <39.065388, 33.895088, 37.963619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216980, 34.179306, 38.200771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742943, 0.148358, -0.652706,
		-0.551733, 0.687838, -0.471666,
		0.378981, 0.710541, 0.592879,
		39.330673, 34.392467, 38.378635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099964, 34.486454, 37.649754>,  <39.065388, 33.895088, 37.963619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099964, 34.486454, 37.649754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384113, 34.510536, 37.930252>,  <39.554604, 34.524986, 38.098549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384113, 34.510536, 37.930252>,  <39.099964, 34.486454, 37.649754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384113, 34.510536, 37.930252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686571, 0.159968, -0.709246,
		-0.154879, 0.985284, 0.072300,
		0.710375, 0.060208, 0.701244,
		39.597225, 34.528599, 38.140625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453663, 35.051056, 37.450710>,  <39.099964, 34.486454, 37.649754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453663, 35.051056, 37.450710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.692741, 34.851151, 37.701469>,  <39.836189, 34.731205, 37.851925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.692741, 34.851151, 37.701469>,  <39.453663, 35.051056, 37.450710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692741, 34.851151, 37.701469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765787, 0.124390, -0.630950,
		0.237349, 0.857181, 0.457062,
		0.597692, -0.499767, 0.626894,
		39.872047, 34.701221, 37.889538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010338, 35.359592, 37.402443>,  <39.453663, 35.051056, 37.450710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010338, 35.359592, 37.402443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144138, 35.011475, 37.547050>,  <40.224419, 34.802605, 37.633816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144138, 35.011475, 37.547050>,  <40.010338, 35.359592, 37.402443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144138, 35.011475, 37.547050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838504, 0.099759, -0.535686,
		0.430139, 0.482325, 0.763114,
		0.334502, -0.870294, 0.361521,
		40.244488, 34.750385, 37.655506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809837, 35.522789, 37.356556>,  <40.010338, 35.359592, 37.402443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809837, 35.522789, 37.356556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.762188, 35.128704, 37.405819>,  <40.733597, 34.892254, 37.435375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.762188, 35.128704, 37.405819>,  <40.809837, 35.522789, 37.356556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762188, 35.128704, 37.405819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908351, -0.158227, -0.387121,
		0.400883, 0.065754, 0.913767,
		-0.119128, -0.985211, 0.123159,
		40.726448, 34.833141, 37.442768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402874, 35.332699, 37.721661>,  <40.809837, 35.522789, 37.356556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402874, 35.332699, 37.721661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.253212, 35.007114, 37.543907>,  <41.163414, 34.811764, 37.437256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.253212, 35.007114, 37.543907>,  <41.402874, 35.332699, 37.721661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253212, 35.007114, 37.543907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859620, -0.124626, -0.495502,
		0.347935, -0.567400, 0.746323,
		-0.374159, -0.813957, -0.444386,
		41.140965, 34.762928, 37.410591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915512, 34.774296, 37.851734>,  <41.402874, 35.332699, 37.721661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915512, 34.774296, 37.851734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.680183, 34.675339, 37.543793>,  <41.538986, 34.615963, 37.359028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.680183, 34.675339, 37.543793>,  <41.915512, 34.774296, 37.851734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680183, 34.675339, 37.543793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788727, 0.034338, -0.613784,
		0.178283, -0.968306, 0.174926,
		-0.588324, -0.247396, -0.769851,
		41.503685, 34.601120, 37.312836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534157, 34.471153, 37.545345>,  <41.915512, 34.774296, 37.851734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534157, 34.471153, 37.545345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.854847, 34.331387, 37.739315>,  <43.047260, 34.247528, 37.855698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.854847, 34.331387, 37.739315>,  <42.534157, 34.471153, 37.545345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854847, 34.331387, 37.739315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540263, -0.076618, 0.838001,
		-0.255655, -0.933831, -0.250202,
		0.801721, -0.349414, 0.484927,
		43.095364, 34.226562, 37.884792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249836, 34.013470, 37.943909>,  <42.534157, 34.471153, 37.545345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249836, 34.013470, 37.943909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.604240, 34.053356, 38.125038>,  <42.816883, 34.077290, 38.233715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.604240, 34.053356, 38.125038>,  <42.249836, 34.013470, 37.943909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604240, 34.053356, 38.125038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449052, -0.058768, 0.891571,
		0.115517, -0.993279, -0.007290,
		0.886007, 0.099718, 0.452822,
		42.870041, 34.083271, 38.260883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338776, 33.487480, 38.380562>,  <42.249836, 34.013470, 37.943909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338776, 33.487480, 38.380562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.596569, 33.761589, 38.516239>,  <42.751244, 33.926052, 38.597645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.596569, 33.761589, 38.516239>,  <42.338776, 33.487480, 38.380562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596569, 33.761589, 38.516239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354331, -0.125440, 0.926669,
		0.677566, -0.717405, 0.161969,
		0.644480, 0.685270, 0.339193,
		42.789913, 33.967171, 38.617996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558743, 33.189072, 39.015972>,  <42.338776, 33.487480, 38.380562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558743, 33.189072, 39.015972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.624481, 33.583534, 39.007088>,  <42.663925, 33.820210, 39.001759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.624481, 33.583534, 39.007088>,  <42.558743, 33.189072, 39.015972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624481, 33.583534, 39.007088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310061, 0.073024, 0.947908,
		0.936404, -0.148900, 0.317769,
		0.164348, 0.986152, -0.022212,
		42.673786, 33.879379, 39.000423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949791, 33.228634, 39.628376>,  <42.558743, 33.189072, 39.015972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949791, 33.228634, 39.628376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.807140, 33.586163, 39.519642>,  <42.721550, 33.800682, 39.454403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.807140, 33.586163, 39.519642>,  <42.949791, 33.228634, 39.628376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807140, 33.586163, 39.519642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189667, 0.215639, 0.957876,
		0.914790, 0.393166, 0.092626,
		-0.356631, 0.893824, -0.271835,
		42.700150, 33.854309, 39.438091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264153, 33.745014, 40.089664>,  <42.949791, 33.228634, 39.628376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264153, 33.745014, 40.089664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.916126, 33.886585, 39.952423>,  <42.707310, 33.971527, 39.870079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.916126, 33.886585, 39.952423>,  <43.264153, 33.745014, 40.089664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916126, 33.886585, 39.952423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368652, -0.005143, 0.929553,
		0.327234, 0.935257, 0.134953,
		-0.870065, 0.353932, -0.343102,
		42.655106, 33.992764, 39.849491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054302, 34.338120, 40.496159>,  <43.264153, 33.745014, 40.089664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054302, 34.338120, 40.496159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.730305, 34.168175, 40.334461>,  <42.535908, 34.066208, 40.237442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.730305, 34.168175, 40.334461>,  <43.054302, 34.338120, 40.496159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730305, 34.168175, 40.334461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471060, 0.060774, 0.880005,
		-0.349313, 0.903216, -0.249362,
		-0.809989, -0.424862, -0.404239,
		42.487309, 34.040714, 40.213188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593372, 34.579819, 40.966354>,  <43.054302, 34.338120, 40.496159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593372, 34.579819, 40.966354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.346039, 34.354118, 40.747524>,  <42.197639, 34.218700, 40.616226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.346039, 34.354118, 40.747524>,  <42.593372, 34.579819, 40.966354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346039, 34.354118, 40.747524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669765, 0.014130, 0.742438,
		-0.411189, 0.825485, -0.386651,
		-0.618335, -0.564248, -0.547071,
		42.160538, 34.184845, 40.583405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938072, 34.800827, 41.102631>,  <42.593372, 34.579819, 40.966354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938072, 34.800827, 41.102631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.848030, 34.452976, 40.926868>,  <41.794003, 34.244267, 40.821411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.848030, 34.452976, 40.926868>,  <41.938072, 34.800827, 41.102631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848030, 34.452976, 40.926868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644892, -0.205074, 0.736247,
		-0.730371, 0.449102, -0.514652,
		-0.225108, -0.869628, -0.439402,
		41.780499, 34.192089, 40.795048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152248, 34.710484, 41.047695>,  <41.938072, 34.800827, 41.102631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152248, 34.710484, 41.047695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.334904, 34.355202, 41.068016>,  <41.444496, 34.142033, 41.080208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.334904, 34.355202, 41.068016>,  <41.152248, 34.710484, 41.047695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334904, 34.355202, 41.068016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629969, -0.282497, 0.723418,
		-0.628188, -0.362348, -0.688538,
		0.456639, -0.888200, 0.050806,
		41.471897, 34.088741, 41.083260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534676, 34.247570, 41.008984>,  <41.152248, 34.710484, 41.047695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534676, 34.247570, 41.008984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.830486, 34.012562, 41.140385>,  <41.007973, 33.871555, 41.219223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.830486, 34.012562, 41.140385>,  <40.534676, 34.247570, 41.008984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830486, 34.012562, 41.140385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585641, -0.321001, 0.744300,
		-0.331874, -0.742792, -0.581481,
		0.739516, -0.587553, 0.328478,
		41.052345, 33.836304, 41.238934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286346, 33.571224, 41.094753>,  <40.534676, 34.247570, 41.008984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286346, 33.571224, 41.094753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.598080, 33.611710, 41.342102>,  <40.785122, 33.636002, 41.490513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.598080, 33.611710, 41.342102>,  <40.286346, 33.571224, 41.094753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598080, 33.611710, 41.342102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575205, -0.275880, 0.770084,
		0.248541, -0.955848, -0.156784,
		0.779337, 0.101215, 0.618376,
		40.831882, 33.642075, 41.527615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377514, 33.035614, 41.554691>,  <40.286346, 33.571224, 41.094753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377514, 33.035614, 41.554691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.570702, 33.329884, 41.744652>,  <40.686615, 33.506443, 41.858627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.570702, 33.329884, 41.744652>,  <40.377514, 33.035614, 41.554691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570702, 33.329884, 41.744652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461458, -0.247081, 0.852061,
		0.744175, -0.630664, 0.220149,
		0.482970, 0.735672, 0.474897,
		40.715591, 33.550587, 41.887119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595798, 32.679005, 42.216034>,  <40.377514, 33.035614, 41.554691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595798, 32.679005, 42.216034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603500, 33.067898, 42.309330>,  <40.608120, 33.301231, 42.365307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603500, 33.067898, 42.309330>,  <40.595798, 32.679005, 42.216034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603500, 33.067898, 42.309330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445659, -0.200478, 0.872466,
		0.894996, -0.120740, 0.429424,
		0.019251, 0.972230, 0.233236,
		40.609276, 33.359566, 42.379299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828194, 32.692139, 42.970852>,  <40.595798, 32.679005, 42.216034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828194, 32.692139, 42.970852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.662621, 33.043865, 42.876644>,  <40.563278, 33.254902, 42.820118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.662621, 33.043865, 42.876644>,  <40.828194, 32.692139, 42.970852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662621, 33.043865, 42.876644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557906, -0.040610, 0.828910,
		0.719305, 0.474512, 0.507383,
		-0.413933, 0.879312, -0.235522,
		40.538441, 33.307659, 42.805988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913815, 33.115620, 43.582333>,  <40.828194, 32.692139, 42.970852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913815, 33.115620, 43.582333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.602623, 33.291424, 43.402740>,  <40.415909, 33.396908, 43.294987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.602623, 33.291424, 43.402740>,  <40.913815, 33.115620, 43.582333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602623, 33.291424, 43.402740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483043, 0.038550, 0.874748,
		0.401770, 0.897409, 0.182312,
		-0.777978, 0.439512, -0.448976,
		40.369228, 33.423279, 43.268047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815685, 33.716698, 44.004986>,  <40.913815, 33.115620, 43.582333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815685, 33.716698, 44.004986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.493332, 33.628815, 43.785065>,  <40.299919, 33.576084, 43.653111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.493332, 33.628815, 43.785065>,  <40.815685, 33.716698, 44.004986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493332, 33.628815, 43.785065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588742, 0.198901, 0.783468,
		-0.062775, 0.955075, -0.289640,
		-0.805880, -0.219706, -0.549806,
		40.251568, 33.562904, 43.620121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335590, 34.227032, 44.165150>,  <40.815685, 33.716698, 44.004986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335590, 34.227032, 44.165150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.109489, 33.937759, 44.006405>,  <39.973827, 33.764194, 43.911160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.109489, 33.937759, 44.006405>,  <40.335590, 34.227032, 44.165150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109489, 33.937759, 44.006405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747641, 0.245825, 0.616930,
		-0.348594, 0.645432, -0.679632,
		-0.565257, -0.723179, -0.396858,
		39.939911, 33.720806, 43.887348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.440208, 34.482666, 44.063709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436531, 34.083561, 44.037205>,  <39.434322, 33.844097, 44.021301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.436531, 34.083561, 44.037205>,  <39.440208, 34.482666, 44.063709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436531, 34.083561, 44.037205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660320, -0.043705, 0.749711,
		-0.750928, 0.050652, -0.658439,
		-0.009198, -0.997760, -0.066266,
		39.433773, 33.784233, 44.017326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772465, 34.304081, 44.142246>,  <39.440208, 34.482666, 44.063709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772465, 34.304081, 44.142246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.987862, 33.985168, 44.251328>,  <39.117100, 33.793819, 44.316776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.987862, 33.985168, 44.251328>,  <38.772465, 34.304081, 44.142246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987862, 33.985168, 44.251328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538938, -0.077093, 0.838810,
		-0.647745, -0.598662, -0.471200,
		0.538490, -0.797283, 0.272705,
		39.149410, 33.745983, 44.333138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222916, 33.831821, 44.310867>,  <38.772465, 34.304081, 44.142246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222916, 33.831821, 44.310867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.559448, 33.711903, 44.490776>,  <38.761368, 33.639954, 44.598721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.559448, 33.711903, 44.490776>,  <38.222916, 33.831821, 44.310867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559448, 33.711903, 44.490776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525583, -0.259430, 0.810221,
		-0.126214, -0.918053, -0.375831,
		0.841328, -0.299792, 0.449770,
		38.811848, 33.621964, 44.625706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145279, 33.102619, 44.593678>,  <38.222916, 33.831821, 44.310867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145279, 33.102619, 44.593678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434288, 33.285385, 44.801208>,  <38.607693, 33.395046, 44.925728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434288, 33.285385, 44.801208>,  <38.145279, 33.102619, 44.593678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434288, 33.285385, 44.801208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400897, -0.334500, 0.852872,
		0.563239, -0.824220, -0.058509,
		0.722525, 0.456915, 0.518831,
		38.651047, 33.422459, 44.956860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340542, 32.563328, 45.046574>,  <38.145279, 33.102619, 44.593678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340542, 32.563328, 45.046574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.463169, 32.910870, 45.202061>,  <38.536743, 33.119396, 45.295353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.463169, 32.910870, 45.202061>,  <38.340542, 32.563328, 45.046574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463169, 32.910870, 45.202061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509571, -0.195125, 0.838012,
		0.803963, -0.454985, 0.382927,
		0.306564, 0.868858, 0.388720,
		38.555138, 33.171528, 45.318676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481388, 32.348129, 45.737782>,  <38.340542, 32.563328, 45.046574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481388, 32.348129, 45.737782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.455685, 32.745426, 45.776459>,  <38.440262, 32.983803, 45.799664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.455685, 32.745426, 45.776459>,  <38.481388, 32.348129, 45.737782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455685, 32.745426, 45.776459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502008, -0.115908, 0.857061,
		0.862473, 0.006531, 0.506061,
		-0.064254, 0.993238, 0.096689,
		38.436409, 33.043396, 45.805466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468334, 32.425392, 46.533096>,  <38.481388, 32.348129, 45.737782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468334, 32.425392, 46.533096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.362667, 32.784946, 46.393253>,  <38.299267, 33.000679, 46.309349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.362667, 32.784946, 46.393253>,  <38.468334, 32.425392, 46.533096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362667, 32.784946, 46.393253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618077, 0.120487, 0.776829,
		0.740401, 0.421298, 0.523750,
		-0.264172, 0.898883, -0.349604,
		38.283417, 33.054611, 46.288372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631714, 32.882130, 47.055443>,  <38.468334, 32.425392, 46.533096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631714, 32.882130, 47.055443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351597, 33.063179, 46.834637>,  <38.183525, 33.171810, 46.702152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351597, 33.063179, 46.834637>,  <38.631714, 32.882130, 47.055443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351597, 33.063179, 46.834637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499793, 0.241253, 0.831868,
		0.509699, 0.858445, 0.057271,
		-0.700296, 0.452625, -0.552011,
		38.141506, 33.198967, 46.669033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489319, 33.572670, 47.311394>,  <38.631714, 32.882130, 47.055443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489319, 33.572670, 47.311394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163292, 33.446953, 47.116711>,  <37.967674, 33.371521, 46.999901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163292, 33.446953, 47.116711>,  <38.489319, 33.572670, 47.311394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163292, 33.446953, 47.116711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548573, 0.148424, 0.822823,
		-0.186367, 0.937652, -0.293387,
		-0.815068, -0.314292, -0.486709,
		37.918770, 33.352665, 46.970699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958889, 33.915600, 47.588261>,  <38.489319, 33.572670, 47.311394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958889, 33.915600, 47.588261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766869, 33.614071, 47.408794>,  <37.651657, 33.433151, 47.301113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766869, 33.614071, 47.408794>,  <37.958889, 33.915600, 47.588261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766869, 33.614071, 47.408794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537205, -0.151721, 0.829694,
		-0.693516, 0.639319, -0.332125,
		-0.480049, -0.753825, -0.448666,
		37.622852, 33.387924, 47.274193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312798, 33.940910, 47.916779>,  <37.958889, 33.915600, 47.588261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312798, 33.940910, 47.916779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338806, 33.572899, 47.762215>,  <37.354412, 33.352093, 47.669476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338806, 33.572899, 47.762215>,  <37.312798, 33.940910, 47.916779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338806, 33.572899, 47.762215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444479, -0.373396, 0.814257,
		-0.893427, 0.118811, -0.433212,
		0.065017, -0.920033, -0.386411,
		37.358311, 33.296890, 47.646290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659515, 33.522316, 47.914593>,  <37.312798, 33.940910, 47.916779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659515, 33.522316, 47.914593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916458, 33.217571, 47.881283>,  <37.070625, 33.034725, 47.861298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916458, 33.217571, 47.881283>,  <36.659515, 33.522316, 47.914593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916458, 33.217571, 47.881283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455300, -0.466754, 0.758184,
		-0.616504, -0.449110, -0.646701,
		0.642359, -0.761866, -0.083276,
		37.109165, 32.989010, 47.856300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262100, 33.024040, 47.861027>,  <36.659515, 33.522316, 47.914593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262100, 33.024040, 47.861027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605717, 32.846157, 47.962440>,  <36.811886, 32.739426, 48.023289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605717, 32.846157, 47.962440>,  <36.262100, 33.024040, 47.861027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605717, 32.846157, 47.962440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474250, -0.504941, 0.721195,
		-0.192699, -0.739777, -0.644668,
		0.859043, -0.444707, 0.253537,
		36.863430, 32.712746, 48.038502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157303, 32.324734, 47.885269>,  <36.262100, 33.024040, 47.861027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157303, 32.324734, 47.885269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496990, 32.332558, 48.096340>,  <36.700802, 32.337254, 48.222984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496990, 32.332558, 48.096340>,  <36.157303, 32.324734, 47.885269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496990, 32.332558, 48.096340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453268, -0.485633, 0.747468,
		0.270878, -0.873944, -0.403543,
		0.849219, 0.019560, 0.527678,
		36.751755, 32.338425, 48.254642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322575, 31.580038, 48.117329>,  <36.157303, 32.324734, 47.885269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322575, 31.580038, 48.117329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507336, 31.835062, 48.363956>,  <36.618195, 31.988077, 48.511932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507336, 31.835062, 48.363956>,  <36.322575, 31.580038, 48.117329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507336, 31.835062, 48.363956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449285, -0.431185, 0.782446,
		0.764713, -0.638433, 0.087279,
		0.461906, 0.637560, 0.616571,
		36.645908, 32.026329, 48.548927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610798, 31.144644, 48.657310>,  <36.322575, 31.580038, 48.117329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610798, 31.144644, 48.657310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635189, 31.505802, 48.827515>,  <36.649822, 31.722498, 48.929638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635189, 31.505802, 48.827515>,  <36.610798, 31.144644, 48.657310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635189, 31.505802, 48.827515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492336, -0.343632, 0.799701,
		0.868267, -0.258256, 0.423576,
		0.060974, 0.902896, 0.425513,
		36.653481, 31.776670, 48.955170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948776, 31.147184, 49.365242>,  <36.610798, 31.144644, 48.657310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948776, 31.147184, 49.365242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.725941, 31.479364, 49.366245>,  <36.592239, 31.678673, 49.366848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.725941, 31.479364, 49.366245>,  <36.948776, 31.147184, 49.365242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725941, 31.479364, 49.366245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449055, -0.303770, 0.840282,
		0.698574, 0.466983, 0.542144,
		-0.557085, 0.830452, 0.002504,
		36.558815, 31.728500, 49.366997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933281, 31.227184, 50.093887>,  <36.948776, 31.147184, 49.365242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933281, 31.227184, 50.093887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.657944, 31.461292, 49.922474>,  <36.492741, 31.601757, 49.819626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.657944, 31.461292, 49.922474>,  <36.933281, 31.227184, 50.093887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657944, 31.461292, 49.922474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552999, -0.041084, 0.832168,
		0.469436, 0.809798, 0.351933,
		-0.688348, 0.585268, -0.428531,
		36.451439, 31.636873, 49.793915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692425, 31.579296, 50.577332>,  <36.933281, 31.227184, 50.093887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692425, 31.579296, 50.577332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388325, 31.579859, 50.317482>,  <36.205864, 31.580196, 50.161572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388325, 31.579859, 50.317482>,  <36.692425, 31.579296, 50.577332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388325, 31.579859, 50.317482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639806, -0.174831, 0.748386,
		-0.112522, 0.984597, 0.133816,
		-0.760254, 0.001407, -0.649624,
		36.160248, 31.580280, 50.122593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202782, 32.068836, 50.832912>,  <36.692425, 31.579296, 50.577332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202782, 32.068836, 50.832912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.987453, 31.830690, 50.594334>,  <35.858257, 31.687803, 50.451187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.987453, 31.830690, 50.594334>,  <36.202782, 32.068836, 50.832912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987453, 31.830690, 50.594334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708596, -0.063340, 0.702766,
		-0.456179, 0.800957, -0.387774,
		-0.538324, -0.595362, -0.596449,
		35.825958, 31.652082, 50.415398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528973, 32.242218, 51.036541>,  <36.202782, 32.068836, 50.832912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528973, 32.242218, 51.036541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497265, 31.891268, 50.847260>,  <35.478241, 31.680696, 50.733692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497265, 31.891268, 50.847260>,  <35.528973, 32.242218, 51.036541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497265, 31.891268, 50.847260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652420, -0.313249, 0.690090,
		-0.753701, 0.363430, -0.547589,
		-0.079267, -0.877379, -0.473205,
		35.473484, 31.628054, 50.705299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862221, 32.163986, 51.058784>,  <35.528973, 32.242218, 51.036541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862221, 32.163986, 51.058784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004288, 31.802731, 50.962296>,  <35.089527, 31.585976, 50.904400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004288, 31.802731, 50.962296>,  <34.862221, 32.163986, 51.058784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004288, 31.802731, 50.962296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494785, -0.400561, 0.771193,
		-0.793122, -0.154549, -0.589128,
		0.355169, -0.903142, -0.241225,
		35.110840, 31.531788, 50.889927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518734, 31.830750, 51.533417>,  <34.862221, 32.163986, 51.058784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518734, 31.830750, 51.533417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720554, 31.539515, 51.347805>,  <34.841644, 31.364773, 51.236439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720554, 31.539515, 51.347805>,  <34.518734, 31.830750, 51.533417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720554, 31.539515, 51.347805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306430, -0.653471, 0.692154,
		-0.807176, -0.207032, -0.552815,
		0.504546, -0.728089, -0.464025,
		34.871918, 31.321089, 51.208599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965065, 31.656895, 51.153526>,  <34.518734, 31.830750, 51.533417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965065, 31.656895, 51.153526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764858, 31.376865, 50.949810>,  <33.644733, 31.208847, 50.827579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764858, 31.376865, 50.949810>,  <33.965065, 31.656895, 51.153526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764858, 31.376865, 50.949810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279011, 0.426450, -0.860403,
		0.819533, -0.572745, -0.018117,
		-0.500517, -0.700074, -0.509293,
		33.614704, 31.166843, 50.797024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327782, 31.248093, 50.608742>,  <33.965065, 31.656895, 51.153526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327782, 31.248093, 50.608742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.953110, 31.235607, 50.469223>,  <33.728306, 31.228117, 50.385513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.953110, 31.235607, 50.469223>,  <34.327782, 31.248093, 50.608742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953110, 31.235607, 50.469223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291183, 0.483893, -0.825264,
		0.194538, -0.874571, -0.444164,
		-0.936679, -0.031212, -0.348796,
		33.672108, 31.226244, 50.364586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489677, 31.107260, 49.887360>,  <34.327782, 31.248093, 50.608742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489677, 31.107260, 49.887360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105560, 31.218592, 49.879734>,  <33.875088, 31.285391, 49.875160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105560, 31.218592, 49.879734>,  <34.489677, 31.107260, 49.887360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105560, 31.218592, 49.879734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114630, 0.331365, -0.936513,
		-0.254344, -0.901515, -0.350114,
		-0.960296, 0.278330, -0.019060,
		33.817471, 31.302092, 49.874016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318325, 30.973455, 49.260014>,  <34.489677, 31.107260, 49.887360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318325, 30.973455, 49.260014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.019737, 31.211151, 49.379784>,  <33.840584, 31.353769, 49.451645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.019737, 31.211151, 49.379784>,  <34.318325, 30.973455, 49.260014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019737, 31.211151, 49.379784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055720, 0.392579, -0.918029,
		-0.663078, -0.701968, -0.259939,
		-0.746473, 0.594241, 0.299425,
		33.795795, 31.389423, 49.469612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701237, 30.857206, 48.818024>,  <34.318325, 30.973455, 49.260014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701237, 30.857206, 48.818024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695412, 31.222145, 48.981686>,  <33.691917, 31.441109, 49.079884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695412, 31.222145, 48.981686>,  <33.701237, 30.857206, 48.818024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695412, 31.222145, 48.981686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126605, 0.404222, -0.905856,
		-0.991846, -0.064996, 0.109620,
		-0.014566, 0.912348, 0.409155,
		33.691040, 31.495850, 49.104431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203434, 31.204489, 48.496925>,  <33.701237, 30.857206, 48.818024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203434, 31.204489, 48.496925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.412655, 31.510384, 48.647438>,  <33.538189, 31.693920, 48.737747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.412655, 31.510384, 48.647438>,  <33.203434, 31.204489, 48.496925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412655, 31.510384, 48.647438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080857, 0.394977, -0.915126,
		-0.848456, 0.509085, 0.144759,
		0.523053, 0.764739, 0.376284,
		33.569572, 31.739805, 48.760323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968296, 31.786684, 48.133068>,  <33.203434, 31.204489, 48.496925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968296, 31.786684, 48.133068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.315796, 31.916887, 48.282372>,  <33.524296, 31.995010, 48.371956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.315796, 31.916887, 48.282372>,  <32.968296, 31.786684, 48.133068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315796, 31.916887, 48.282372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221890, 0.417979, -0.880942,
		-0.442771, 0.848137, 0.290889,
		0.868745, 0.325510, 0.373262,
		33.576420, 32.014542, 48.394352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029877, 32.435455, 47.852798>,  <32.968296, 31.786684, 48.133068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029877, 32.435455, 47.852798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.396431, 32.329666, 47.972988>,  <33.616364, 32.266193, 48.045101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.396431, 32.329666, 47.972988>,  <33.029877, 32.435455, 47.852798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396431, 32.329666, 47.972988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364934, 0.243516, -0.898623,
		0.164491, 0.933142, 0.319671,
		0.916387, -0.264474, 0.300479,
		33.671349, 32.250324, 48.063133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497562, 32.892796, 47.428062>,  <33.029877, 32.435455, 47.852798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497562, 32.892796, 47.428062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.732395, 32.610291, 47.586315>,  <33.873295, 32.440788, 47.681267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.732395, 32.610291, 47.586315>,  <33.497562, 32.892796, 47.428062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732395, 32.610291, 47.586315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721155, 0.234234, -0.651974,
		0.367796, 0.668075, 0.646840,
		0.587079, -0.706266, 0.395635,
		33.908520, 32.398411, 47.705006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166779, 33.189358, 47.583767>,  <33.497562, 32.892796, 47.428062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166779, 33.189358, 47.583767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231358, 32.800285, 47.517036>,  <34.270103, 32.566841, 47.476997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231358, 32.800285, 47.517036>,  <34.166779, 33.189358, 47.583767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231358, 32.800285, 47.517036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658658, 0.232086, -0.715756,
		0.734918, 0.005674, 0.678132,
		0.161446, -0.972679, -0.166827,
		34.279793, 32.508480, 47.466988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750271, 33.067322, 47.635357>,  <34.166779, 33.189358, 47.583767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750271, 33.067322, 47.635357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672695, 32.744553, 47.412189>,  <34.626152, 32.550892, 47.278290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672695, 32.744553, 47.412189>,  <34.750271, 33.067322, 47.635357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672695, 32.744553, 47.412189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785757, 0.212727, -0.580803,
		0.587345, -0.551026, 0.592787,
		-0.193936, -0.806918, -0.557917,
		34.614513, 32.502476, 47.244816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383915, 32.786690, 47.530289>,  <34.750271, 33.067322, 47.635357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383915, 32.786690, 47.530289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.152653, 32.625580, 47.246456>,  <35.013897, 32.528912, 47.076157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.152653, 32.625580, 47.246456>,  <35.383915, 32.786690, 47.530289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152653, 32.625580, 47.246456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634920, 0.324125, -0.701299,
		0.512461, -0.855987, 0.068337,
		-0.578153, -0.402777, -0.709584,
		34.979206, 32.504745, 47.033581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885284, 32.434212, 47.091541>,  <35.383915, 32.786690, 47.530289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885284, 32.434212, 47.091541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.554741, 32.461723, 46.867970>,  <35.356415, 32.478230, 46.733826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.554741, 32.461723, 46.867970>,  <35.885284, 32.434212, 47.091541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554741, 32.461723, 46.867970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556549, 0.251224, -0.791922,
		0.085949, -0.965482, -0.245880,
		-0.826357, 0.068780, -0.558930,
		35.306835, 32.482357, 46.700291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942566, 31.977360, 46.503872>,  <35.885284, 32.434212, 47.091541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942566, 31.977360, 46.503872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670380, 32.238712, 46.371174>,  <35.507069, 32.395523, 46.291553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670380, 32.238712, 46.371174>,  <35.942566, 31.977360, 46.503872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670380, 32.238712, 46.371174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524943, 0.118780, -0.842809,
		-0.511272, -0.747651, -0.423815,
		-0.680467, 0.653383, -0.331745,
		35.466240, 32.434727, 46.271652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852600, 31.795517, 45.827835>,  <35.942566, 31.977360, 46.503872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852600, 31.795517, 45.827835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.726204, 32.173901, 45.856995>,  <35.650364, 32.400928, 45.874489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.726204, 32.173901, 45.856995>,  <35.852600, 31.795517, 45.827835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726204, 32.173901, 45.856995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462426, 0.220648, -0.858765,
		-0.828439, -0.237655, -0.507159,
		-0.315993, 0.945957, 0.072895,
		35.631405, 32.457687, 45.878864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746307, 31.948645, 45.185490>,  <35.852600, 31.795517, 45.827835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746307, 31.948645, 45.185490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727623, 32.309925, 45.356155>,  <35.716412, 32.526695, 45.458557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727623, 32.309925, 45.356155>,  <35.746307, 31.948645, 45.185490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727623, 32.309925, 45.356155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470366, 0.396702, -0.788279,
		-0.881234, 0.163871, -0.443365,
		-0.046708, 0.903202, 0.426666,
		35.713612, 32.580887, 45.484154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324707, 32.300468, 44.756245>,  <35.746307, 31.948645, 45.185490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324707, 32.300468, 44.756245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.577198, 32.528034, 44.967106>,  <35.728691, 32.664574, 45.093624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.577198, 32.528034, 44.967106>,  <35.324707, 32.300468, 44.756245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577198, 32.528034, 44.967106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336753, 0.411232, -0.847045,
		-0.698680, 0.712195, 0.067995,
		0.631223, 0.568916, 0.527154,
		35.766563, 32.698708, 45.125252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152874, 32.880924, 44.464901>,  <35.324707, 32.300468, 44.756245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152874, 32.880924, 44.464901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495472, 32.942341, 44.662018>,  <35.701031, 32.979191, 44.780289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495472, 32.942341, 44.662018>,  <35.152874, 32.880924, 44.464901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495472, 32.942341, 44.662018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341399, 0.547543, -0.763965,
		-0.387126, 0.822570, 0.416548,
		0.856493, 0.153542, 0.492792,
		35.752419, 32.988403, 44.809856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256363, 33.440052, 44.227406>,  <35.152874, 32.880924, 44.464901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256363, 33.440052, 44.227406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604568, 33.317345, 44.381336>,  <35.813492, 33.243721, 44.473694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604568, 33.317345, 44.381336>,  <35.256363, 33.440052, 44.227406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604568, 33.317345, 44.381336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481045, 0.365295, -0.796967,
		0.103911, 0.878892, 0.465566,
		0.870516, -0.306771, 0.384828,
		35.865723, 33.225315, 44.496784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631538, 34.069561, 44.367702>,  <35.256363, 33.440052, 44.227406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631538, 34.069561, 44.367702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882126, 33.763214, 44.309761>,  <36.032478, 33.579407, 44.274998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882126, 33.763214, 44.309761>,  <35.631538, 34.069561, 44.367702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882126, 33.763214, 44.309761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416840, 0.486223, -0.768005,
		0.658623, 0.420749, 0.623847,
		0.626466, -0.765871, -0.144853,
		36.070065, 33.533451, 44.266304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211945, 34.350258, 44.249676>,  <35.631538, 34.069561, 44.367702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211945, 34.350258, 44.249676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339298, 33.989697, 44.132301>,  <36.415710, 33.773361, 44.061878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339298, 33.989697, 44.132301>,  <36.211945, 34.350258, 44.249676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339298, 33.989697, 44.132301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386664, 0.406108, -0.827990,
		0.865519, 0.150158, 0.477838,
		0.318383, -0.901404, -0.293434,
		36.434814, 33.719276, 44.044270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.457340, 39.560520, 31.413307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.179764, 39.789848, 31.587553>,  <42.013218, 39.927444, 31.692101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.179764, 39.789848, 31.587553>,  <42.457340, 39.560520, 31.413307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179764, 39.789848, 31.587553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322150, -0.293849, 0.899929,
		0.643949, 0.764827, 0.019219,
		-0.693937, 0.573318, 0.435613,
		41.971584, 39.961845, 31.718237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645020, 40.283024, 31.833288>,  <42.457340, 39.560520, 31.413307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645020, 40.283024, 31.833288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.316311, 40.084961, 31.946083>,  <42.119087, 39.966125, 32.013760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.316311, 40.084961, 31.946083>,  <42.645020, 40.283024, 31.833288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316311, 40.084961, 31.946083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515304, -0.434547, 0.738668,
		-0.243217, 0.752325, 0.612252,
		-0.821771, -0.495153, 0.281987,
		42.069778, 39.936417, 32.030678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601330, 40.402069, 32.487251>,  <42.645020, 40.283024, 31.833288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601330, 40.402069, 32.487251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.384438, 40.068043, 32.450050>,  <42.254303, 39.867626, 32.427731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.384438, 40.068043, 32.450050>,  <42.601330, 40.402069, 32.487251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384438, 40.068043, 32.450050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527313, -0.424377, 0.736102,
		-0.654163, 0.350094, 0.670451,
		-0.542229, -0.835068, -0.093002,
		42.221767, 39.817524, 32.422150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441502, 40.237354, 33.089897>,  <42.601330, 40.402069, 32.487251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441502, 40.237354, 33.089897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376560, 39.882339, 32.917419>,  <42.337597, 39.669331, 32.813934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376560, 39.882339, 32.917419>,  <42.441502, 40.237354, 33.089897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376560, 39.882339, 32.917419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375947, -0.459666, 0.804593,
		-0.912308, -0.031476, 0.408294,
		-0.162354, -0.887534, -0.431190,
		42.327854, 39.616081, 32.788063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089619, 39.906971, 33.584103>,  <42.441502, 40.237354, 33.089897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089619, 39.906971, 33.584103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.227425, 39.631691, 33.328701>,  <42.310108, 39.466522, 33.175461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.227425, 39.631691, 33.328701>,  <42.089619, 39.906971, 33.584103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227425, 39.631691, 33.328701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294235, -0.566717, 0.769583,
		-0.891481, -0.453000, 0.007253,
		0.344510, -0.688203, -0.638506,
		42.330776, 39.425232, 33.137150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795467, 39.133476, 33.755745>,  <42.089619, 39.906971, 33.584103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795467, 39.133476, 33.755745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.142883, 39.114067, 33.558453>,  <42.351334, 39.102421, 33.440075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.142883, 39.114067, 33.558453>,  <41.795467, 39.133476, 33.755745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142883, 39.114067, 33.558453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350736, -0.642961, 0.680871,
		-0.350168, -0.764360, -0.541420,
		0.868543, -0.048523, -0.493233,
		42.403446, 39.099510, 33.410484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961697, 38.485889, 33.888485>,  <41.795467, 39.133476, 33.755745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961697, 38.485889, 33.888485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.311932, 38.613121, 33.743065>,  <42.522072, 38.689461, 33.655815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.311932, 38.613121, 33.743065>,  <41.961697, 38.485889, 33.888485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311932, 38.613121, 33.743065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478051, -0.678635, 0.557603,
		-0.069352, -0.662026, -0.746266,
		0.875590, 0.318082, -0.363547,
		42.574608, 38.708546, 33.634003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415588, 37.853310, 33.807064>,  <41.961697, 38.485889, 33.888485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415588, 37.853310, 33.807064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.660629, 38.169281, 33.817860>,  <42.807652, 38.358864, 33.824337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.660629, 38.169281, 33.817860>,  <42.415588, 37.853310, 33.807064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660629, 38.169281, 33.817860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642422, -0.517518, 0.565216,
		0.460453, -0.328909, -0.824501,
		0.612598, 0.789933, 0.026994,
		42.844410, 38.406261, 33.825958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167103, 37.557526, 33.697296>,  <42.415588, 37.853310, 33.807064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167103, 37.557526, 33.697296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195999, 37.916920, 33.870502>,  <43.213337, 38.132557, 33.974426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195999, 37.916920, 33.870502>,  <43.167103, 37.557526, 33.697296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195999, 37.916920, 33.870502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820817, -0.300190, 0.485949,
		0.566605, 0.320322, -0.759179,
		0.072238, 0.898488, 0.433014,
		43.217670, 38.186466, 34.000408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846714, 37.731255, 33.696339>,  <43.167103, 37.557526, 33.697296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846714, 37.731255, 33.696339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694561, 37.951263, 33.993736>,  <43.603268, 38.083271, 34.172173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694561, 37.951263, 33.993736>,  <43.846714, 37.731255, 33.696339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694561, 37.951263, 33.993736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819448, -0.172233, 0.546663,
		0.428732, 0.817196, -0.385201,
		-0.380386, 0.550024, 0.743492,
		43.580444, 38.116272, 34.216785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331657, 38.049202, 33.912674>,  <43.846714, 37.731255, 33.696339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331657, 38.049202, 33.912674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.114552, 38.106590, 34.243690>,  <43.984287, 38.141022, 34.442299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.114552, 38.106590, 34.243690>,  <44.331657, 38.049202, 33.912674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114552, 38.106590, 34.243690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792119, -0.240110, 0.561155,
		0.279209, 0.960086, 0.016679,
		-0.542762, 0.143468, 0.827543,
		43.951721, 38.149632, 34.491955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.799088, 38.239532, 34.361561>,  <44.331657, 38.049202, 33.912674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.799088, 38.239532, 34.361561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499332, 38.145821, 34.609280>,  <44.319477, 38.089592, 34.757912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499332, 38.145821, 34.609280>,  <44.799088, 38.239532, 34.361561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499332, 38.145821, 34.609280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644315, -0.473520, 0.600531,
		0.152557, 0.849053, 0.505801,
		-0.749389, -0.234281, 0.619297,
		44.274517, 38.075535, 34.795067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102337, 38.248898, 35.095394>,  <44.799088, 38.239532, 34.361561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102337, 38.248898, 35.095394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.766102, 38.039303, 35.150307>,  <44.564362, 37.913548, 35.183254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.766102, 38.039303, 35.150307>,  <45.102337, 38.248898, 35.095394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766102, 38.039303, 35.150307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501387, -0.656758, 0.563276,
		-0.204988, 0.542316, 0.814784,
		-0.840590, -0.523987, 0.137283,
		44.513924, 37.882107, 35.191490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032001, 38.114182, 35.802593>,  <45.102337, 38.248898, 35.095394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032001, 38.114182, 35.802593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822701, 37.829018, 35.615849>,  <44.697121, 37.657921, 35.503799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822701, 37.829018, 35.615849>,  <45.032001, 38.114182, 35.802593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822701, 37.829018, 35.615849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437342, -0.694853, 0.570887,
		-0.731395, 0.094539, 0.675370,
		-0.523253, -0.712911, -0.466866,
		44.665726, 37.615143, 35.475788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971687, 37.608204, 36.292389>,  <45.032001, 38.114182, 35.802593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971687, 37.608204, 36.292389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867916, 37.380535, 35.980301>,  <44.805653, 37.243935, 35.793049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867916, 37.380535, 35.980301>,  <44.971687, 37.608204, 36.292389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867916, 37.380535, 35.980301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533900, -0.757724, 0.375240,
		-0.804767, -0.319213, 0.500453,
		-0.259424, -0.569173, -0.780219,
		44.790089, 37.209782, 35.746235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606304, 36.904305, 36.504017>,  <44.971687, 37.608204, 36.292389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606304, 36.904305, 36.504017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804482, 36.872566, 36.158012>,  <44.923386, 36.853523, 35.950409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804482, 36.872566, 36.158012>,  <44.606304, 36.904305, 36.504017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804482, 36.872566, 36.158012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573959, -0.717559, 0.394564,
		-0.652003, -0.691963, -0.309965,
		0.495442, -0.079350, -0.865009,
		44.953114, 36.848763, 35.898510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431759, 36.275558, 36.276833>,  <44.606304, 36.904305, 36.504017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431759, 36.275558, 36.276833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760830, 36.363430, 36.067089>,  <44.958271, 36.416153, 35.941242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760830, 36.363430, 36.067089>,  <44.431759, 36.275558, 36.276833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760830, 36.363430, 36.067089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343356, -0.927103, 0.150290,
		-0.453117, -0.303680, -0.838131,
		0.822674, 0.219678, -0.524356,
		45.007633, 36.429333, 35.909782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603523, 35.547676, 36.095272>,  <44.431759, 36.275558, 36.276833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603523, 35.547676, 36.095272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921169, 35.777138, 36.014969>,  <45.111755, 35.914814, 35.966785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921169, 35.777138, 36.014969>,  <44.603523, 35.547676, 36.095272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921169, 35.777138, 36.014969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595136, -0.800959, 0.065398,
		-0.123284, -0.171412, -0.977455,
		0.794112, 0.573657, -0.200759,
		45.159405, 35.949234, 35.954742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998997, 35.300285, 35.475521>,  <44.603523, 35.547676, 36.095272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998997, 35.300285, 35.475521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.259762, 35.510616, 35.694069>,  <45.416222, 35.636814, 35.825199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.259762, 35.510616, 35.694069>,  <44.998997, 35.300285, 35.475521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259762, 35.510616, 35.694069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558138, -0.820478, 0.123682,
		0.513319, 0.224321, -0.828362,
		0.651909, 0.525829, 0.546369,
		45.455334, 35.668365, 35.857979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620007, 35.151722, 35.211620>,  <44.998997, 35.300285, 35.475521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620007, 35.151722, 35.211620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.703449, 35.284027, 35.579769>,  <45.753513, 35.363411, 35.800659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.703449, 35.284027, 35.579769>,  <45.620007, 35.151722, 35.211620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703449, 35.284027, 35.579769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520673, -0.834181, 0.181774,
		0.827879, 0.441294, -0.346230,
		0.208602, 0.330760, 0.920371,
		45.766029, 35.383255, 35.855881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.261810, 34.907181, 35.223690>,  <45.620007, 35.151722, 35.211620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.261810, 34.907181, 35.223690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.162262, 35.019463, 35.594475>,  <46.102531, 35.086830, 35.816948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.162262, 35.019463, 35.594475>,  <46.261810, 34.907181, 35.223690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162262, 35.019463, 35.594475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491967, -0.787778, 0.370640,
		0.834285, 0.548279, 0.057960,
		-0.248873, 0.280705, 0.926966,
		46.087601, 35.103676, 35.872566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356934, 34.895706, 34.429985>,  <46.261810, 34.907181, 35.223690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356934, 34.895706, 34.429985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.635086, 34.907940, 34.142788>,  <46.801979, 34.915279, 33.970470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.635086, 34.907940, 34.142788>,  <46.356934, 34.895706, 34.429985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.635086, 34.907940, 34.142788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549021, 0.667276, -0.503308,
		0.463702, 0.744182, 0.480804,
		0.695382, 0.030586, -0.717989,
		46.843700, 34.917114, 33.927391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488026, 35.590538, 34.222511>,  <46.356934, 34.895706, 34.429985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488026, 35.590538, 34.222511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.611633, 35.375286, 33.908844>,  <46.685799, 35.246136, 33.720642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.611633, 35.375286, 33.908844>,  <46.488026, 35.590538, 34.222511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.611633, 35.375286, 33.908844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436087, 0.652566, -0.619666,
		0.845183, 0.533456, -0.033015,
		0.309020, -0.538129, -0.784171,
		46.704338, 35.213848, 33.673592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857471, 36.114826, 33.793999>,  <46.488026, 35.590538, 34.222511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857471, 36.114826, 33.793999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.795147, 35.811962, 33.540249>,  <46.757751, 35.630245, 33.387997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.795147, 35.811962, 33.540249>,  <46.857471, 36.114826, 33.793999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795147, 35.811962, 33.540249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412274, 0.633457, -0.654800,
		0.897637, 0.159511, -0.410857,
		-0.155812, -0.757158, -0.634377,
		46.748402, 35.584816, 33.349937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.223660, 36.218498, 33.177845>,  <46.857471, 36.114826, 33.793999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.223660, 36.218498, 33.177845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.915852, 35.983601, 33.077454>,  <46.731167, 35.842663, 33.017220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.915852, 35.983601, 33.077454>,  <47.223660, 36.218498, 33.177845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.915852, 35.983601, 33.077454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340040, 0.709421, -0.617329,
		0.540573, -0.389701, -0.745597,
		-0.769516, -0.587243, -0.250980,
		46.684998, 35.807426, 33.002159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.176601, 36.299816, 32.414249>,  <47.223660, 36.218498, 33.177845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.176601, 36.299816, 32.414249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.834255, 36.140953, 32.546768>,  <46.628849, 36.045635, 32.626278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.834255, 36.140953, 32.546768>,  <47.176601, 36.299816, 32.414249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.834255, 36.140953, 32.546768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512995, 0.570388, -0.641477,
		0.065803, -0.718972, -0.691917,
		-0.855866, -0.397161, 0.331296,
		46.577496, 36.021805, 32.646156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750938, 36.327629, 31.802277>,  <47.176601, 36.299816, 32.414249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750938, 36.327629, 31.802277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.480568, 36.271023, 32.091579>,  <46.318344, 36.237061, 32.265160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.480568, 36.271023, 32.091579>,  <46.750938, 36.327629, 31.802277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480568, 36.271023, 32.091579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678655, 0.502134, -0.535994,
		-0.287320, -0.853132, -0.435445,
		-0.675926, -0.141516, 0.723255,
		46.277790, 36.228569, 32.308556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064465, 36.157352, 31.483799>,  <46.750938, 36.327629, 31.802277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064465, 36.157352, 31.483799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.970703, 36.291252, 31.848873>,  <45.914444, 36.371593, 32.067917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.970703, 36.291252, 31.848873>,  <46.064465, 36.157352, 31.483799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.970703, 36.291252, 31.848873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763365, 0.517938, -0.386023,
		-0.601936, -0.787199, 0.134128,
		-0.234407, 0.334749, 0.912686,
		45.900379, 36.391678, 32.122681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323101, 36.002522, 31.543873>,  <46.064465, 36.157352, 31.483799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323101, 36.002522, 31.543873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380619, 36.285332, 31.820837>,  <45.415131, 36.455017, 31.987017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380619, 36.285332, 31.820837>,  <45.323101, 36.002522, 31.543873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380619, 36.285332, 31.820837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745511, 0.537527, -0.394053,
		-0.650797, -0.459539, 0.604390,
		0.143793, 0.707029, 0.692412,
		45.423756, 36.497440, 32.028561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716377, 36.061012, 31.928654>,  <45.323101, 36.002522, 31.543873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716377, 36.061012, 31.928654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.892494, 36.418900, 31.958632>,  <44.998165, 36.633633, 31.976618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.892494, 36.418900, 31.958632>,  <44.716377, 36.061012, 31.928654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892494, 36.418900, 31.958632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831910, 0.437928, -0.340800,
		-0.337743, 0.087702, 0.937144,
		0.440290, 0.894722, 0.074947,
		45.024582, 36.687317, 31.981115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171700, 36.449211, 31.933426>,  <44.716377, 36.061012, 31.928654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171700, 36.449211, 31.933426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453728, 36.729927, 31.892687>,  <44.622944, 36.898357, 31.868242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453728, 36.729927, 31.892687>,  <44.171700, 36.449211, 31.933426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453728, 36.729927, 31.892687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642395, 0.571254, -0.510879,
		-0.300347, 0.425632, 0.853598,
		0.705067, 0.701788, -0.101850,
		44.665249, 36.940464, 31.862131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888935, 37.033669, 32.037537>,  <44.171700, 36.449211, 31.933426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888935, 37.033669, 32.037537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.199211, 37.154980, 31.816145>,  <44.385376, 37.227764, 31.683311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.199211, 37.154980, 31.816145>,  <43.888935, 37.033669, 32.037537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199211, 37.154980, 31.816145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603858, 0.611607, -0.511169,
		0.183484, 0.730727, 0.657550,
		0.775687, 0.303275, -0.553475,
		44.431915, 37.245964, 31.650103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775448, 37.761528, 31.934771>,  <43.888935, 37.033669, 32.037537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775448, 37.761528, 31.934771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020130, 37.668419, 31.632345>,  <44.166939, 37.612553, 31.450890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020130, 37.668419, 31.632345>,  <43.775448, 37.761528, 31.934771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020130, 37.668419, 31.632345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440373, 0.693760, -0.569885,
		0.657182, 0.681552, 0.321868,
		0.611705, -0.232776, -0.756064,
		44.203640, 37.598587, 31.405525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998669, 38.386543, 31.656427>,  <43.775448, 37.761528, 31.934771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998669, 38.386543, 31.656427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.083084, 38.119942, 31.370426>,  <44.133732, 37.959980, 31.198826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.083084, 38.119942, 31.370426>,  <43.998669, 38.386543, 31.656427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083084, 38.119942, 31.370426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279569, 0.659767, -0.697531,
		0.936645, 0.347098, -0.047100,
		0.211037, -0.666507, -0.715005,
		44.146397, 37.919991, 31.155924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393589, 38.771954, 31.104610>,  <43.998669, 38.386543, 31.656427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393589, 38.771954, 31.104610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.255466, 38.453690, 30.905539>,  <44.172592, 38.262730, 30.786097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.255466, 38.453690, 30.905539>,  <44.393589, 38.771954, 31.104610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255466, 38.453690, 30.905539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342469, 0.600558, -0.722526,
		0.873772, -0.079053, -0.479867,
		-0.345307, -0.795663, -0.497678,
		44.151875, 38.214989, 30.756235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464684, 38.958488, 30.424835>,  <44.393589, 38.771954, 31.104610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464684, 38.958488, 30.424835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202774, 38.656219, 30.418837>,  <44.045628, 38.474857, 30.415237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202774, 38.656219, 30.418837>,  <44.464684, 38.958488, 30.424835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202774, 38.656219, 30.418837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463300, 0.416961, -0.781982,
		0.597178, -0.505075, -0.623120,
		-0.654776, -0.755674, -0.014999,
		44.006340, 38.429516, 30.414337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583847, 38.705524, 29.815048>,  <44.464684, 38.958488, 30.424835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583847, 38.705524, 29.815048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.210068, 38.647297, 29.945047>,  <43.985802, 38.612362, 30.023046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.210068, 38.647297, 29.945047>,  <44.583847, 38.705524, 29.815048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210068, 38.647297, 29.945047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356108, 0.384234, -0.851793,
		-0.000884, -0.911688, -0.410882,
		-0.934445, -0.145565, 0.324999,
		43.929733, 38.603626, 30.042547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310165, 38.613361, 29.187309>,  <44.583847, 38.705524, 29.815048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310165, 38.613361, 29.187309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002033, 38.636250, 29.441339>,  <43.817154, 38.649982, 29.593758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002033, 38.636250, 29.441339>,  <44.310165, 38.613361, 29.187309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002033, 38.636250, 29.441339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532167, 0.490968, -0.689745,
		-0.351272, -0.869296, -0.347754,
		-0.770329, 0.057225, 0.635073,
		43.770935, 38.653416, 29.631861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650940, 38.374466, 28.798864>,  <44.310165, 38.613361, 29.187309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650940, 38.374466, 28.798864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.536411, 38.599052, 29.109419>,  <43.467693, 38.733803, 29.295752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.536411, 38.599052, 29.109419>,  <43.650940, 38.374466, 28.798864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536411, 38.599052, 29.109419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616151, 0.512642, -0.597960,
		-0.733743, -0.649580, 0.199168,
		-0.286321, 0.561466, 0.776386,
		43.450516, 38.767490, 29.342335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903934, 38.453274, 28.851444>,  <43.650940, 38.374466, 28.798864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903934, 38.453274, 28.851444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.015022, 38.764050, 29.077448>,  <43.081676, 38.950516, 29.213051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.015022, 38.764050, 29.077448>,  <42.903934, 38.453274, 28.851444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015022, 38.764050, 29.077448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697889, 0.567344, -0.437118,
		-0.660169, -0.272917, 0.699781,
		0.277719, 0.776941, 0.565009,
		43.098339, 38.997131, 29.246950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251389, 38.717361, 29.195198>,  <42.903934, 38.453274, 28.851444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251389, 38.717361, 29.195198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.518017, 39.014603, 29.218822>,  <42.677994, 39.192947, 29.232998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.518017, 39.014603, 29.218822>,  <42.251389, 38.717361, 29.195198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518017, 39.014603, 29.218822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714877, 0.659679, -0.231893,
		-0.211283, 0.112349, 0.970947,
		0.666566, 0.743103, 0.059063,
		42.717987, 39.237534, 29.236542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015461, 39.252228, 29.704596>,  <42.251389, 38.717361, 29.195198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015461, 39.252228, 29.704596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.284000, 39.416225, 29.457632>,  <42.445126, 39.514626, 29.309454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.284000, 39.416225, 29.457632>,  <42.015461, 39.252228, 29.704596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284000, 39.416225, 29.457632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666634, 0.698082, -0.261307,
		0.323867, 0.587013, 0.741974,
		0.671349, 0.409996, -0.617408,
		42.485405, 39.539223, 29.272409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.933083, 33.664928, 42.223404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594185, 33.647243, 42.011662>,  <41.390846, 33.636635, 41.884617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594185, 33.647243, 42.011662>,  <41.933083, 33.664928, 42.223404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594185, 33.647243, 42.011662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523959, 0.094443, -0.846491,
		0.087390, -0.994549, -0.056870,
		-0.847248, -0.044178, -0.529357,
		41.340012, 33.633980, 41.852856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070004, 33.137909, 41.636940>,  <41.933083, 33.664928, 42.223404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070004, 33.137909, 41.636940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743168, 33.341301, 41.528259>,  <41.547066, 33.463337, 41.463051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743168, 33.341301, 41.528259>,  <42.070004, 33.137909, 41.636940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743168, 33.341301, 41.528259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338992, 0.042538, -0.939827,
		-0.466322, -0.860025, -0.207126,
		-0.817085, 0.508476, -0.271705,
		41.498043, 33.493843, 41.446747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851234, 32.817959, 41.054073>,  <42.070004, 33.137909, 41.636940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851234, 32.817959, 41.054073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724903, 33.197479, 41.056179>,  <41.649105, 33.425190, 41.057442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724903, 33.197479, 41.056179>,  <41.851234, 32.817959, 41.054073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724903, 33.197479, 41.056179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284262, 0.099913, -0.953527,
		-0.905235, -0.299652, -0.301263,
		-0.315826, 0.948803, 0.005265,
		41.630154, 33.482121, 41.057758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358418, 33.031548, 40.482140>,  <41.851234, 32.817959, 41.054073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358418, 33.031548, 40.482140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517948, 33.387474, 40.570839>,  <41.613667, 33.601028, 40.624058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517948, 33.387474, 40.570839>,  <41.358418, 33.031548, 40.482140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517948, 33.387474, 40.570839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354470, 0.073431, -0.932180,
		-0.845748, 0.450381, -0.286125,
		0.398826, 0.889812, 0.221751,
		41.637596, 33.654419, 40.637363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481312, 33.266724, 39.931740>,  <41.358418, 33.031548, 40.482140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481312, 33.266724, 39.931740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670719, 33.575623, 40.101173>,  <41.784363, 33.760960, 40.202835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670719, 33.575623, 40.101173>,  <41.481312, 33.266724, 39.931740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670719, 33.575623, 40.101173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480353, 0.176684, -0.859095,
		-0.738271, 0.610265, -0.287286,
		0.473517, 0.772243, 0.423583,
		41.812775, 33.807297, 40.228249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466274, 33.842258, 39.521011>,  <41.481312, 33.266724, 39.931740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466274, 33.842258, 39.521011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785599, 33.939926, 39.741222>,  <41.977192, 33.998528, 39.873348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785599, 33.939926, 39.741222>,  <41.466274, 33.842258, 39.521011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785599, 33.939926, 39.741222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521638, 0.176515, -0.834707,
		-0.300987, 0.953532, 0.013545,
		0.798311, 0.244170, 0.550527,
		42.025093, 34.013176, 39.906380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629005, 34.481453, 39.248276>,  <41.466274, 33.842258, 39.521011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629005, 34.481453, 39.248276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951420, 34.347172, 39.443256>,  <42.144871, 34.266605, 39.560246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951420, 34.347172, 39.443256>,  <41.629005, 34.481453, 39.248276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951420, 34.347172, 39.443256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557881, 0.155877, -0.815151,
		0.197665, 0.928982, 0.312924,
		0.806038, -0.335701, 0.487450,
		42.193230, 34.246460, 39.589493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157310, 35.027386, 39.169682>,  <41.629005, 34.481453, 39.248276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157310, 35.027386, 39.169682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346470, 34.684834, 39.252605>,  <42.459965, 34.479301, 39.302361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346470, 34.684834, 39.252605>,  <42.157310, 35.027386, 39.169682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346470, 34.684834, 39.252605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471088, 0.046903, -0.880838,
		0.744612, 0.514205, 0.425612,
		0.472894, -0.856384, 0.207312,
		42.488338, 34.427917, 39.314800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950130, 35.168156, 39.094597>,  <42.157310, 35.027386, 39.169682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950130, 35.168156, 39.094597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851185, 34.782230, 39.058941>,  <42.791817, 34.550674, 39.037548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851185, 34.782230, 39.058941>,  <42.950130, 35.168156, 39.094597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851185, 34.782230, 39.058941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601127, -0.080666, -0.795072,
		0.759906, -0.250255, 0.599929,
		-0.247365, -0.964814, -0.089136,
		42.776974, 34.492786, 39.032200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610909, 34.832981, 39.137543>,  <42.950130, 35.168156, 39.094597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610909, 34.832981, 39.137543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352024, 34.574493, 38.975792>,  <43.196693, 34.419399, 38.878742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352024, 34.574493, 38.975792>,  <43.610909, 34.832981, 39.137543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352024, 34.574493, 38.975792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573953, -0.063981, -0.816385,
		0.501691, -0.760465, 0.412309,
		-0.647212, -0.646219, -0.404372,
		43.157860, 34.380627, 38.854481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019562, 34.257690, 38.871883>,  <43.610909, 34.832981, 39.137543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019562, 34.257690, 38.871883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668240, 34.210197, 38.686634>,  <43.457447, 34.181702, 38.575485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668240, 34.210197, 38.686634>,  <44.019562, 34.257690, 38.871883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668240, 34.210197, 38.686634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473220, -0.077812, -0.877501,
		0.068157, -0.989872, 0.124532,
		-0.878304, -0.118739, -0.463124,
		43.404747, 34.174576, 38.547695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098351, 33.686340, 38.433895>,  <44.019562, 34.257690, 38.871883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098351, 33.686340, 38.433895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789093, 33.885189, 38.276352>,  <43.603539, 34.004498, 38.181828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789093, 33.885189, 38.276352>,  <44.098351, 33.686340, 38.433895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789093, 33.885189, 38.276352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400075, -0.099596, -0.911055,
		-0.492131, -0.861947, -0.121883,
		-0.773141, 0.497120, -0.393858,
		43.557152, 34.034325, 38.158195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743942, 33.368229, 37.863808>,  <44.098351, 33.686340, 38.433895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743942, 33.368229, 37.863808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695312, 33.762917, 37.820724>,  <43.666134, 33.999729, 37.794872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695312, 33.762917, 37.820724>,  <43.743942, 33.368229, 37.863808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695312, 33.762917, 37.820724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319666, -0.063813, -0.945379,
		-0.939699, -0.149361, -0.307663,
		-0.121570, 0.986721, -0.107711,
		43.658840, 34.058933, 37.788410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475906, 33.490013, 37.271568>,  <43.743942, 33.368229, 37.863808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475906, 33.490013, 37.271568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630306, 33.848278, 37.359928>,  <43.722946, 34.063236, 37.412945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630306, 33.848278, 37.359928>,  <43.475906, 33.490013, 37.271568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630306, 33.848278, 37.359928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357213, 0.075662, -0.930953,
		-0.850532, 0.438255, -0.290736,
		0.385997, 0.895661, 0.220903,
		43.746105, 34.116978, 37.426201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312443, 33.641388, 36.639721>,  <43.475906, 33.490013, 37.271568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312443, 33.641388, 36.639721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462490, 33.277401, 36.569023>,  <43.552517, 33.059010, 36.526604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462490, 33.277401, 36.569023>,  <43.312443, 33.641388, 36.639721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462490, 33.277401, 36.569023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813630, -0.414572, 0.407599,
		-0.444175, -0.009096, -0.895894,
		0.375120, -0.909971, -0.176742,
		43.575027, 33.004410, 36.515999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891361, 33.099388, 36.206253>,  <43.312443, 33.641388, 36.639721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891361, 33.099388, 36.206253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129093, 32.895920, 36.455418>,  <43.271732, 32.773838, 36.604916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129093, 32.895920, 36.455418>,  <42.891361, 33.099388, 36.206253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129093, 32.895920, 36.455418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799457, -0.457868, 0.388877,
		0.087401, -0.729115, -0.678787,
		0.594331, -0.508673, 0.622914,
		43.307392, 32.743317, 36.642292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853256, 32.356251, 36.036068>,  <42.891361, 33.099388, 36.206253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853256, 32.356251, 36.036068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000706, 32.370773, 36.407616>,  <43.089176, 32.379486, 36.630543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000706, 32.370773, 36.407616>,  <42.853256, 32.356251, 36.036068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000706, 32.370773, 36.407616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607908, -0.746535, 0.270431,
		0.703254, -0.664355, -0.253115,
		0.368622, 0.036311, 0.928870,
		43.111294, 32.381668, 36.686275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873325, 31.645269, 36.257214>,  <42.853256, 32.356251, 36.036068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873325, 31.645269, 36.257214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916710, 31.852842, 36.596375>,  <42.942741, 31.977386, 36.799873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916710, 31.852842, 36.596375>,  <42.873325, 31.645269, 36.257214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916710, 31.852842, 36.596375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517387, -0.698846, 0.493888,
		0.848851, -0.492261, 0.192695,
		0.108458, 0.518935, 0.847905,
		42.949245, 32.008522, 36.850746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956829, 31.169252, 36.820614>,  <42.873325, 31.645269, 36.257214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956829, 31.169252, 36.820614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872234, 31.502100, 37.025692>,  <42.821476, 31.701809, 37.148739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872234, 31.502100, 37.025692>,  <42.956829, 31.169252, 36.820614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872234, 31.502100, 37.025692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622694, -0.519031, 0.585542,
		0.753343, -0.195416, 0.627923,
		-0.211487, 0.832117, 0.512693,
		42.808788, 31.751736, 37.179501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090557, 31.068968, 37.508636>,  <42.956829, 31.169252, 36.820614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090557, 31.068968, 37.508636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812252, 31.355936, 37.522614>,  <42.645267, 31.528116, 37.531002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812252, 31.355936, 37.522614>,  <43.090557, 31.068968, 37.508636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812252, 31.355936, 37.522614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513162, -0.530536, 0.674682,
		0.502570, 0.451488, 0.737280,
		-0.695765, 0.717419, 0.034945,
		42.603523, 31.571161, 37.533096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936733, 31.103357, 38.236496>,  <43.090557, 31.068968, 37.508636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936733, 31.103357, 38.236496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632881, 31.288851, 38.054108>,  <42.450569, 31.400146, 37.944675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632881, 31.288851, 38.054108>,  <42.936733, 31.103357, 38.236496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632881, 31.288851, 38.054108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606696, -0.252747, 0.753684,
		0.234263, 0.849158, 0.473340,
		-0.759632, 0.463734, -0.455971,
		42.404991, 31.427971, 37.917316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680309, 31.570162, 38.744171>,  <42.936733, 31.103357, 38.236496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680309, 31.570162, 38.744171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398407, 31.517786, 38.465267>,  <42.229267, 31.486361, 38.297924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398407, 31.517786, 38.465267>,  <42.680309, 31.570162, 38.744171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398407, 31.517786, 38.465267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701721, -0.016022, 0.712271,
		-0.104437, 0.991261, -0.080592,
		-0.704755, -0.130941, -0.697262,
		42.186981, 31.478504, 38.256088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965096, 31.990194, 38.949829>,  <42.680309, 31.570162, 38.744171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965096, 31.990194, 38.949829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869804, 31.695271, 38.696964>,  <41.812630, 31.518316, 38.545246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869804, 31.695271, 38.696964>,  <41.965096, 31.990194, 38.949829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869804, 31.695271, 38.696964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837605, -0.173487, 0.517995,
		-0.491593, 0.652901, -0.576243,
		-0.238229, -0.737307, -0.632159,
		41.798336, 31.474079, 38.507317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267570, 32.099377, 38.714226>,  <41.965096, 31.990194, 38.949829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267570, 32.099377, 38.714226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319733, 31.710741, 38.635220>,  <41.351032, 31.477560, 38.587814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319733, 31.710741, 38.635220>,  <41.267570, 32.099377, 38.714226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319733, 31.710741, 38.635220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838461, -0.214393, 0.501019,
		-0.529129, 0.100273, -0.842596,
		0.130408, -0.971587, -0.197517,
		41.358856, 31.419266, 38.575966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464466, 31.776379, 38.692322>,  <41.267570, 32.099377, 38.714226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464466, 31.776379, 38.692322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719067, 31.468233, 38.707310>,  <40.871826, 31.283346, 38.716301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719067, 31.468233, 38.707310>,  <40.464466, 31.776379, 38.692322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719067, 31.468233, 38.707310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546172, -0.415898, 0.727135,
		-0.544577, -0.483285, -0.685472,
		0.636500, -0.770366, 0.037468,
		40.910015, 31.237123, 38.718552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031132, 31.203678, 38.691750>,  <40.464466, 31.776379, 38.692322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031132, 31.203678, 38.691750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369698, 31.095680, 38.875351>,  <40.572838, 31.030882, 38.985512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369698, 31.095680, 38.875351>,  <40.031132, 31.203678, 38.691750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369698, 31.095680, 38.875351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532466, -0.441599, 0.722129,
		0.007725, -0.855624, -0.517540,
		0.846416, -0.269994, 0.459002,
		40.623623, 31.014681, 39.013050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873379, 30.488148, 38.922180>,  <40.031132, 31.203678, 38.691750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873379, 30.488148, 38.922180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191067, 30.597013, 39.139484>,  <40.381680, 30.662333, 39.269867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191067, 30.597013, 39.139484>,  <39.873379, 30.488148, 38.922180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191067, 30.597013, 39.139484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422974, -0.394253, 0.815878,
		0.436236, -0.877776, -0.198007,
		0.794223, 0.272164, 0.543265,
		40.429333, 30.678663, 39.302464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933048, 29.868223, 39.301449>,  <39.873379, 30.488148, 38.922180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933048, 29.868223, 39.301449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141682, 30.146091, 39.499592>,  <40.266861, 30.312813, 39.618477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141682, 30.146091, 39.499592>,  <39.933048, 29.868223, 39.301449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141682, 30.146091, 39.499592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273109, -0.414101, 0.868292,
		0.808307, -0.588175, -0.026268,
		0.521586, 0.694672, 0.495357,
		40.298157, 30.354494, 39.648197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777836, 29.267433, 38.986858>,  <39.933048, 29.868223, 39.301449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777836, 29.267433, 38.986858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394665, 29.152838, 38.980034>,  <39.164761, 29.084080, 38.975941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394665, 29.152838, 38.980034>,  <39.777836, 29.267433, 38.986858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394665, 29.152838, 38.980034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038194, 0.186175, -0.981774,
		0.284444, -0.939820, -0.189285,
		-0.957931, -0.286490, -0.017061,
		39.107285, 29.066891, 38.974915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674583, 28.838051, 38.378674>,  <39.777836, 29.267433, 38.986858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674583, 28.838051, 38.378674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318882, 29.008884, 38.444191>,  <39.105461, 29.111383, 38.483501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318882, 29.008884, 38.444191>,  <39.674583, 28.838051, 38.378674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318882, 29.008884, 38.444191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072138, 0.222668, -0.972222,
		-0.451691, -0.876367, -0.167199,
		-0.889253, 0.427082, 0.163796,
		39.052105, 29.137009, 38.493328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220268, 28.621992, 37.820747>,  <39.674583, 28.838051, 38.378674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220268, 28.621992, 37.820747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032085, 28.936468, 37.981033>,  <38.919174, 29.125153, 38.077206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032085, 28.936468, 37.981033>,  <39.220268, 28.621992, 37.820747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032085, 28.936468, 37.981033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163328, 0.368684, -0.915094,
		-0.867174, -0.495964, -0.045045,
		-0.470461, 0.786189, 0.400717,
		38.890945, 29.172325, 38.101250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738293, 28.689409, 37.381931>,  <39.220268, 28.621992, 37.820747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738293, 28.689409, 37.381931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711716, 29.040865, 37.571068>,  <38.695770, 29.251738, 37.684551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711716, 29.040865, 37.571068>,  <38.738293, 28.689409, 37.381931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711716, 29.040865, 37.571068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297167, 0.434959, -0.850002,
		-0.952511, -0.196987, 0.232203,
		-0.066441, 0.878639, 0.472841,
		38.691784, 29.304457, 37.712921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147865, 29.000099, 37.114864>,  <38.738293, 28.689409, 37.381931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147865, 29.000099, 37.114864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356010, 29.313423, 37.250893>,  <38.480896, 29.501417, 37.332508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356010, 29.313423, 37.250893>,  <38.147865, 29.000099, 37.114864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356010, 29.313423, 37.250893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205875, 0.501561, -0.840269,
		-0.828756, 0.367235, 0.422258,
		0.520364, 0.783310, 0.340067,
		38.512119, 29.548416, 37.352913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817062, 29.580254, 36.825104>,  <38.147865, 29.000099, 37.114864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817062, 29.580254, 36.825104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188255, 29.704351, 36.907669>,  <38.410969, 29.778811, 36.957207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188255, 29.704351, 36.907669>,  <37.817062, 29.580254, 36.825104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188255, 29.704351, 36.907669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002377, 0.558840, -0.829272,
		-0.372626, 0.769056, 0.519329,
		0.927979, 0.310242, 0.206410,
		38.466648, 29.797424, 36.969593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875366, 30.303366, 36.832092>,  <37.817062, 29.580254, 36.825104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875366, 30.303366, 36.832092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247246, 30.185987, 36.743050>,  <38.470371, 30.115561, 36.689625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247246, 30.185987, 36.743050>,  <37.875366, 30.303366, 36.832092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247246, 30.185987, 36.743050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040075, 0.520202, -0.853103,
		0.366139, 0.802048, 0.471870,
		0.929697, -0.293444, -0.222608,
		38.526154, 30.097954, 36.676266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073631, 30.942965, 36.492214>,  <37.875366, 30.303366, 36.832092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073631, 30.942965, 36.492214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382706, 30.702560, 36.410488>,  <38.568150, 30.558317, 36.361454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382706, 30.702560, 36.410488>,  <38.073631, 30.942965, 36.492214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382706, 30.702560, 36.410488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176255, 0.512331, -0.840507,
		0.609830, 0.613435, 0.501801,
		0.772685, -0.601011, -0.204314,
		38.614510, 30.522257, 36.349194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577633, 31.378271, 36.374878>,  <38.073631, 30.942965, 36.492214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577633, 31.378271, 36.374878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679955, 31.031937, 36.202881>,  <38.741348, 30.824137, 36.099682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679955, 31.031937, 36.202881>,  <38.577633, 31.378271, 36.374878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679955, 31.031937, 36.202881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135713, 0.472549, -0.870792,
		0.957154, 0.164399, 0.238387,
		0.255807, -0.865835, -0.429991,
		38.756695, 30.772186, 36.073883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063038, 31.509626, 35.893131>,  <38.577633, 31.378271, 36.374878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063038, 31.509626, 35.893131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921890, 31.150753, 35.786892>,  <38.837200, 30.935429, 35.723148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921890, 31.150753, 35.786892>,  <39.063038, 31.509626, 35.893131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921890, 31.150753, 35.786892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004914, 0.285629, -0.958327,
		0.935659, -0.336861, -0.105199,
		-0.352871, -0.897185, -0.265596,
		38.816029, 30.881598, 35.707214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531986, 31.282965, 35.492596>,  <39.063038, 31.509626, 35.893131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531986, 31.282965, 35.492596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214741, 31.062424, 35.389072>,  <39.024395, 30.930099, 35.326958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214741, 31.062424, 35.389072>,  <39.531986, 31.282965, 35.492596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214741, 31.062424, 35.389072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064306, 0.346748, -0.935752,
		0.605670, -0.758800, -0.239555,
		-0.793114, -0.551352, -0.258810,
		38.976807, 30.897018, 35.311428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759609, 30.944715, 34.881477>,  <39.531986, 31.282965, 35.492596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759609, 30.944715, 34.881477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360619, 30.965923, 34.862564>,  <39.121223, 30.978649, 34.851215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360619, 30.965923, 34.862564>,  <39.759609, 30.944715, 34.881477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360619, 30.965923, 34.862564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063562, 0.368720, -0.927365,
		-0.031735, -0.928027, -0.371158,
		-0.997473, 0.053022, -0.047286,
		39.061378, 30.981829, 34.848377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.403744, 26.468300, 41.707035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.068726, 26.683525, 41.669067>,  <37.867714, 26.812660, 41.646286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.068726, 26.683525, 41.669067>,  <38.403744, 26.468300, 41.707035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068726, 26.683525, 41.669067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273141, 0.261880, -0.925642,
		-0.473198, -0.801190, -0.366304,
		-0.837543, 0.538064, -0.094917,
		37.817463, 26.844944, 41.640591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120499, 26.389315, 41.001942>,  <38.403744, 26.468300, 41.707035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120499, 26.389315, 41.001942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969204, 26.743919, 41.108551>,  <37.878426, 26.956682, 41.172516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969204, 26.743919, 41.108551>,  <38.120499, 26.389315, 41.001942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969204, 26.743919, 41.108551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282962, 0.384856, -0.878532,
		-0.881402, -0.256875, -0.396415,
		-0.378236, 0.886511, 0.266527,
		37.855732, 27.009872, 41.188511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793724, 26.728403, 40.400532>,  <38.120499, 26.389315, 41.001942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793724, 26.728403, 40.400532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.849518, 27.030783, 40.656372>,  <37.882996, 27.212210, 40.809875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.849518, 27.030783, 40.656372>,  <37.793724, 26.728403, 40.400532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849518, 27.030783, 40.656372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216326, 0.607048, -0.764654,
		-0.966306, 0.245020, -0.078857,
		0.139486, 0.755948, 0.639598,
		37.891365, 27.257566, 40.848251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467167, 27.332651, 40.103836>,  <37.793724, 26.728403, 40.400532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467167, 27.332651, 40.103836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742466, 27.480257, 40.353683>,  <37.907646, 27.568821, 40.503590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742466, 27.480257, 40.353683>,  <37.467167, 27.332651, 40.103836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742466, 27.480257, 40.353683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110801, 0.797406, -0.593183,
		-0.716965, 0.477465, 0.507926,
		0.688247, 0.369013, 0.624616,
		37.948940, 27.590961, 40.541069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383072, 28.039007, 40.019394>,  <37.467167, 27.332651, 40.103836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383072, 28.039007, 40.019394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736626, 27.999056, 40.202160>,  <37.948757, 27.975086, 40.311817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736626, 27.999056, 40.202160>,  <37.383072, 28.039007, 40.019394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736626, 27.999056, 40.202160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375162, 0.734765, -0.565132,
		-0.279280, 0.670929, 0.686919,
		0.883887, -0.099876, 0.456912,
		38.001793, 27.969093, 40.339233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477921, 28.735727, 40.177223>,  <37.383072, 28.039007, 40.019394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477921, 28.735727, 40.177223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.824017, 28.538651, 40.214333>,  <38.031673, 28.420404, 40.236599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.824017, 28.538651, 40.214333>,  <37.477921, 28.735727, 40.177223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824017, 28.538651, 40.214333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451162, 0.684479, -0.572662,
		0.218643, 0.537349, 0.814525,
		0.865245, -0.492691, 0.092775,
		38.083591, 28.390842, 40.242165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991905, 29.231976, 40.349072>,  <37.477921, 28.735727, 40.177223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991905, 29.231976, 40.349072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.179001, 28.922157, 40.178753>,  <38.291256, 28.736265, 40.076561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.179001, 28.922157, 40.178753>,  <37.991905, 29.231976, 40.349072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179001, 28.922157, 40.178753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407710, 0.616497, -0.673575,
		0.784217, 0.141453, 0.604148,
		0.467735, -0.774547, -0.425795,
		38.319321, 28.689793, 40.051014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701214, 29.460083, 40.093864>,  <37.991905, 29.231976, 40.349072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701214, 29.460083, 40.093864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.673920, 29.122206, 39.881512>,  <38.657543, 28.919479, 39.754101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.673920, 29.122206, 39.881512>,  <38.701214, 29.460083, 40.093864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673920, 29.122206, 39.881512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352029, 0.477514, -0.805019,
		0.933499, -0.241816, 0.264773,
		-0.068234, -0.844692, -0.530885,
		38.653450, 28.868797, 39.722244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395836, 29.418087, 39.704891>,  <38.701214, 29.460083, 40.093864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395836, 29.418087, 39.704891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.131168, 29.168978, 39.537872>,  <38.972370, 29.019512, 39.437660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.131168, 29.168978, 39.537872>,  <39.395836, 29.418087, 39.704891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131168, 29.168978, 39.537872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336520, 0.250988, -0.907612,
		0.670038, -0.741050, 0.043506,
		-0.661667, -0.622776, -0.417550,
		38.932667, 28.982145, 39.412609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159679, 29.523094, 39.879066>,  <39.395836, 29.418087, 39.704891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159679, 29.523094, 39.879066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.240269, 29.893654, 40.006310>,  <40.288624, 30.115990, 40.082657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.240269, 29.893654, 40.006310>,  <40.159679, 29.523094, 39.879066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240269, 29.893654, 40.006310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121563, -0.298612, 0.946601,
		0.971921, -0.229385, 0.052453,
		0.201473, 0.926398, 0.318112,
		40.300709, 30.171574, 40.101742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624302, 29.565233, 40.395599>,  <40.159679, 29.523094, 39.879066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624302, 29.565233, 40.395599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400387, 29.892616, 40.447376>,  <40.266037, 30.089046, 40.478443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400387, 29.892616, 40.447376>,  <40.624302, 29.565233, 40.395599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400387, 29.892616, 40.447376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034027, -0.133379, 0.990481,
		0.827934, 0.558868, 0.046815,
		-0.559793, 0.818460, 0.129446,
		40.232449, 30.138155, 40.486210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030296, 29.963324, 40.885792>,  <40.624302, 29.565233, 40.395599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030296, 29.963324, 40.885792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.654522, 30.095625, 40.921719>,  <40.429058, 30.175005, 40.943275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.654522, 30.095625, 40.921719>,  <41.030296, 29.963324, 40.885792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654522, 30.095625, 40.921719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052874, -0.119067, 0.991477,
		0.338628, 0.936176, 0.094367,
		-0.939434, 0.330752, 0.089819,
		40.372692, 30.194851, 40.948666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978943, 30.233263, 41.556770>,  <41.030296, 29.963324, 40.885792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978943, 30.233263, 41.556770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589928, 30.184605, 41.477394>,  <40.356518, 30.155409, 41.429768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589928, 30.184605, 41.477394>,  <40.978943, 30.233263, 41.556770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589928, 30.184605, 41.477394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181848, -0.135035, 0.974011,
		-0.145283, 0.983345, 0.109205,
		-0.972535, -0.121648, -0.198438,
		40.298168, 30.148109, 41.417862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715645, 30.676174, 42.046745>,  <40.978943, 30.233263, 41.556770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715645, 30.676174, 42.046745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.412113, 30.429306, 41.963524>,  <40.229996, 30.281185, 41.913589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.412113, 30.429306, 41.963524>,  <40.715645, 30.676174, 42.046745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412113, 30.429306, 41.963524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262776, -0.002174, 0.964854,
		-0.595930, 0.786828, -0.160527,
		-0.758825, -0.617169, -0.208055,
		40.184467, 30.244156, 41.901108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136791, 31.000317, 42.372421>,  <40.715645, 30.676174, 42.046745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136791, 31.000317, 42.372421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.037243, 30.614717, 42.334953>,  <39.977516, 30.383358, 42.312473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.037243, 30.614717, 42.334953>,  <40.136791, 31.000317, 42.372421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037243, 30.614717, 42.334953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270216, -0.023761, 0.962507,
		-0.930080, 0.264846, -0.254574,
		-0.248867, -0.963998, -0.093666,
		39.962582, 30.325518, 42.306854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398346, 30.901865, 42.408970>,  <40.136791, 31.000317, 42.372421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398346, 30.901865, 42.408970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.539280, 30.545223, 42.522739>,  <39.623840, 30.331238, 42.591000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.539280, 30.545223, 42.522739>,  <39.398346, 30.901865, 42.408970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539280, 30.545223, 42.522739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558895, 0.043304, 0.828107,
		-0.750662, -0.450736, -0.483057,
		0.352339, -0.891607, 0.284421,
		39.644981, 30.277740, 42.608067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893902, 30.625818, 42.733887>,  <39.398346, 30.901865, 42.408970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893902, 30.625818, 42.733887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.199036, 30.399445, 42.858974>,  <39.382118, 30.263620, 42.934029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.199036, 30.399445, 42.858974>,  <38.893902, 30.625818, 42.733887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199036, 30.399445, 42.858974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287019, 0.137003, 0.948077,
		-0.579395, -0.812986, -0.057924,
		0.762838, -0.565936, 0.312721,
		39.427887, 30.229664, 42.952789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627815, 30.101238, 43.359352>,  <38.893902, 30.625818, 42.733887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627815, 30.101238, 43.359352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026264, 30.129503, 43.380322>,  <39.265335, 30.146461, 43.392902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026264, 30.129503, 43.380322>,  <38.627815, 30.101238, 43.359352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026264, 30.129503, 43.380322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057792, 0.076182, 0.995418,
		0.066324, -0.994588, 0.079969,
		0.996123, 0.070641, 0.052427,
		39.325100, 30.150702, 43.396049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813644, 29.573240, 43.855186>,  <38.627815, 30.101238, 43.359352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813644, 29.573240, 43.855186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.133183, 29.813824, 43.851242>,  <39.324905, 29.958174, 43.848877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.133183, 29.813824, 43.851242>,  <38.813644, 29.573240, 43.855186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133183, 29.813824, 43.851242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055220, -0.056998, 0.996846,
		0.599000, -0.796868, -0.078745,
		0.798843, 0.601459, -0.009861,
		39.372837, 29.994261, 43.848282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274391, 29.299253, 44.277424>,  <38.813644, 29.573240, 43.855186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274391, 29.299253, 44.277424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.437695, 29.662134, 44.236809>,  <39.535675, 29.879864, 44.212440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.437695, 29.662134, 44.236809>,  <39.274391, 29.299253, 44.277424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437695, 29.662134, 44.236809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149264, 0.043395, 0.987845,
		0.900582, -0.418450, -0.117696,
		0.408256, 0.907203, -0.101541,
		39.560173, 29.934296, 44.206348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953945, 29.275703, 44.657639>,  <39.274391, 29.299253, 44.277424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953945, 29.275703, 44.657639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.842834, 29.657925, 44.618118>,  <39.776169, 29.887257, 44.594406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.842834, 29.657925, 44.618118>,  <39.953945, 29.275703, 44.657639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842834, 29.657925, 44.618118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143727, 0.143027, 0.979227,
		0.949833, 0.257807, -0.177068,
		-0.277777, 0.955552, -0.098798,
		39.759502, 29.944590, 44.588478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434296, 29.697374, 45.074596>,  <39.953945, 29.275703, 44.657639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434296, 29.697374, 45.074596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.091988, 29.898525, 45.025982>,  <39.886604, 30.019215, 44.996811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.091988, 29.898525, 45.025982>,  <40.434296, 29.697374, 45.074596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091988, 29.898525, 45.025982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180059, -0.069269, 0.981214,
		0.485010, 0.861578, 0.149826,
		-0.855771, 0.502876, -0.121539,
		39.835255, 30.049389, 44.989521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479958, 30.191349, 45.538822>,  <40.434296, 29.697374, 45.074596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479958, 30.191349, 45.538822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087017, 30.201975, 45.464760>,  <39.851254, 30.208349, 45.420322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087017, 30.201975, 45.464760>,  <40.479958, 30.191349, 45.538822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087017, 30.201975, 45.464760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185229, -0.000238, 0.982695,
		0.026059, 0.999647, 0.005154,
		-0.982350, 0.026563, -0.185158,
		39.792313, 30.209944, 45.409214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.168919, 30.760193, 44.111885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460659, 30.531122, 44.261597>,  <35.635704, 30.393679, 44.351425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460659, 30.531122, 44.261597>,  <35.168919, 30.760193, 44.111885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460659, 30.531122, 44.261597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660845, 0.448188, -0.602006,
		0.177007, 0.686416, 0.705338,
		0.729351, -0.572678, 0.374282,
		35.679466, 30.359320, 44.373882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714642, 31.169012, 44.159145>,  <35.168919, 30.760193, 44.111885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714642, 31.169012, 44.159145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.877613, 30.803885, 44.148064>,  <35.975395, 30.584808, 44.141415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.877613, 30.803885, 44.148064>,  <35.714642, 31.169012, 44.159145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877613, 30.803885, 44.148064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711571, 0.336323, -0.616890,
		0.572425, 0.231628, 0.786561,
		0.407427, -0.912818, -0.027700,
		35.999840, 30.530039, 44.139755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399086, 31.367638, 43.951420>,  <35.714642, 31.169012, 44.159145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399086, 31.367638, 43.951420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331280, 30.979246, 43.883930>,  <36.290596, 30.746212, 43.843437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331280, 30.979246, 43.883930>,  <36.399086, 31.367638, 43.951420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331280, 30.979246, 43.883930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530024, 0.054512, -0.846229,
		0.830866, -0.232879, 0.505400,
		-0.169518, -0.970977, -0.168723,
		36.280426, 30.687954, 43.833313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978939, 31.205355, 43.748405>,  <36.399086, 31.367638, 43.951420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978939, 31.205355, 43.748405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.734489, 30.915264, 43.621552>,  <36.587818, 30.741209, 43.545441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.734489, 30.915264, 43.621552>,  <36.978939, 31.205355, 43.748405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734489, 30.915264, 43.621552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296765, 0.161501, -0.941195,
		0.733797, -0.669301, 0.116525,
		-0.611124, -0.725227, -0.317134,
		36.551151, 30.697697, 43.526413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390251, 30.835398, 43.396435>,  <36.978939, 31.205355, 43.748405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390251, 30.835398, 43.396435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.029053, 30.721601, 43.267647>,  <36.812336, 30.653324, 43.190372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.029053, 30.721601, 43.267647>,  <37.390251, 30.835398, 43.396435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029053, 30.721601, 43.267647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288922, 0.152583, -0.945115,
		0.318005, -0.946458, -0.055586,
		-0.902993, -0.284492, -0.321974,
		36.758156, 30.636253, 43.171055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439228, 30.812050, 42.663086>,  <37.390251, 30.835398, 43.396435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439228, 30.812050, 42.663086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.041187, 30.778149, 42.683426>,  <36.802361, 30.757809, 42.695629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.041187, 30.778149, 42.683426>,  <37.439228, 30.812050, 42.663086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041187, 30.778149, 42.683426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075656, 0.322146, -0.943662,
		0.063597, -0.942889, -0.326980,
		-0.995104, -0.084752, 0.050847,
		36.742657, 30.752724, 42.698681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240902, 30.391466, 42.033226>,  <37.439228, 30.812050, 42.663086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240902, 30.391466, 42.033226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.936436, 30.624542, 42.147141>,  <36.753757, 30.764387, 42.215488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.936436, 30.624542, 42.147141>,  <37.240902, 30.391466, 42.033226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936436, 30.624542, 42.147141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075541, 0.356469, -0.931248,
		-0.644146, -0.730345, -0.227314,
		-0.761163, 0.582688, 0.284789,
		36.708088, 30.799349, 42.232578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671078, 30.335968, 41.489059>,  <37.240902, 30.391466, 42.033226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671078, 30.335968, 41.489059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.578152, 30.665854, 41.695312>,  <36.522396, 30.863785, 41.819065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.578152, 30.665854, 41.695312>,  <36.671078, 30.335968, 41.489059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578152, 30.665854, 41.695312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066821, 0.515351, -0.854370,
		-0.970343, -0.232938, -0.064615,
		-0.232315, 0.824714, 0.515632,
		36.508457, 30.913267, 41.850002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063271, 30.674583, 41.152687>,  <36.671078, 30.335968, 41.489059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063271, 30.674583, 41.152687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.238495, 30.965012, 41.364697>,  <36.343628, 31.139269, 41.491901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.238495, 30.965012, 41.364697>,  <36.063271, 30.674583, 41.152687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238495, 30.965012, 41.364697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017080, 0.596225, -0.802635,
		-0.898783, 0.342550, 0.273583,
		0.438060, 0.726068, 0.530027,
		36.369911, 31.182833, 41.523705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847321, 31.174520, 40.881325>,  <36.063271, 30.674583, 41.152687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847321, 31.174520, 40.881325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145721, 31.356487, 41.075867>,  <36.324760, 31.465668, 41.192593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145721, 31.356487, 41.075867>,  <35.847321, 31.174520, 40.881325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145721, 31.356487, 41.075867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073405, 0.669693, -0.739002,
		-0.661889, 0.586995, 0.466197,
		0.745999, 0.454916, 0.486351,
		36.369522, 31.492962, 41.221771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728107, 32.016357, 40.783028>,  <35.847321, 31.174520, 40.881325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728107, 32.016357, 40.783028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114838, 32.000267, 40.883930>,  <36.346874, 31.990612, 40.944473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114838, 32.000267, 40.883930>,  <35.728107, 32.016357, 40.783028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114838, 32.000267, 40.883930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236977, 0.509888, -0.826956,
		-0.095356, 0.859300, 0.502505,
		0.966824, -0.040227, 0.252255,
		36.404884, 31.988199, 40.959606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888908, 32.669724, 40.832977>,  <35.728107, 32.016357, 40.783028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888908, 32.669724, 40.832977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220982, 32.464756, 40.745144>,  <36.420227, 32.341774, 40.692444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220982, 32.464756, 40.745144>,  <35.888908, 32.669724, 40.832977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220982, 32.464756, 40.745144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230602, 0.674253, -0.701574,
		0.507557, 0.531799, 0.677920,
		0.830186, -0.512418, -0.219588,
		36.470036, 32.311031, 40.679268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393345, 33.235771, 40.593410>,  <35.888908, 32.669724, 40.832977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393345, 33.235771, 40.593410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.502983, 32.868542, 40.478859>,  <36.568768, 32.648205, 40.410130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.502983, 32.868542, 40.478859>,  <36.393345, 33.235771, 40.593410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502983, 32.868542, 40.478859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288039, 0.362481, -0.886364,
		0.917554, 0.160461, 0.363795,
		0.274096, -0.918074, -0.286377,
		36.585213, 32.593121, 40.392944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135834, 33.283077, 40.319946>,  <36.393345, 33.235771, 40.593410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135834, 33.283077, 40.319946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.978745, 32.955750, 40.152084>,  <36.884491, 32.759354, 40.051365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.978745, 32.955750, 40.152084>,  <37.135834, 33.283077, 40.319946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978745, 32.955750, 40.152084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014792, 0.450643, -0.892582,
		0.919537, -0.356747, -0.164874,
		-0.392725, -0.818323, -0.419660,
		36.860928, 32.710251, 40.026188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779110, 33.644299, 40.261627>,  <37.135834, 33.283077, 40.319946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779110, 33.644299, 40.261627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855698, 34.023853, 40.361984>,  <37.901649, 34.251587, 40.422199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855698, 34.023853, 40.361984>,  <37.779110, 33.644299, 40.261627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855698, 34.023853, 40.361984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426208, -0.149879, 0.892123,
		0.884131, -0.277743, 0.375728,
		0.191467, 0.948892, 0.250889,
		37.913139, 34.308521, 40.437252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012924, 33.628452, 40.940708>,  <37.779110, 33.644299, 40.261627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012924, 33.628452, 40.940708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962261, 34.023903, 40.908249>,  <37.931866, 34.261173, 40.888771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962261, 34.023903, 40.908249>,  <38.012924, 33.628452, 40.940708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962261, 34.023903, 40.908249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277797, 0.043187, 0.959669,
		0.952254, 0.144090, 0.269166,
		-0.126654, 0.988622, -0.081153,
		37.924267, 34.320488, 40.883904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304718, 33.980103, 41.576801>,  <38.012924, 33.628452, 40.940708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304718, 33.980103, 41.576801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.044956, 34.235001, 41.410816>,  <37.889099, 34.387939, 41.311226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.044956, 34.235001, 41.410816>,  <38.304718, 33.980103, 41.576801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044956, 34.235001, 41.410816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483322, 0.075406, 0.872189,
		0.587089, 0.766963, 0.259026,
		-0.649404, 0.637246, -0.414960,
		37.850136, 34.426174, 41.286327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288010, 34.669930, 42.033024>,  <38.304718, 33.980103, 41.576801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288010, 34.669930, 42.033024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969563, 34.582012, 41.807495>,  <37.778496, 34.529263, 41.672176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969563, 34.582012, 41.807495>,  <38.288010, 34.669930, 42.033024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969563, 34.582012, 41.807495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577484, -0.002551, 0.816398,
		-0.180875, 0.975544, -0.124895,
		-0.796113, -0.219791, -0.563822,
		37.730728, 34.516075, 41.638348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739578, 34.953293, 42.378811>,  <38.288010, 34.669930, 42.033024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739578, 34.953293, 42.378811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569408, 34.680935, 42.140347>,  <37.467308, 34.517521, 41.997269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569408, 34.680935, 42.140347>,  <37.739578, 34.953293, 42.378811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569408, 34.680935, 42.140347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628043, -0.252170, 0.736188,
		-0.651596, 0.687604, -0.320349,
		-0.425423, -0.680890, -0.596158,
		37.441780, 34.476669, 41.961498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893986, 35.139584, 42.343548>,  <37.739578, 34.953293, 42.378811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893986, 35.139584, 42.343548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.950684, 34.759979, 42.230911>,  <36.984703, 34.532219, 42.163330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.950684, 34.759979, 42.230911>,  <36.893986, 35.139584, 42.343548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950684, 34.759979, 42.230911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540806, -0.312499, 0.780944,
		-0.829118, 0.041592, -0.557524,
		0.141745, -0.949007, -0.281591,
		36.993206, 34.475277, 42.146435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234921, 34.775539, 42.427464>,  <36.893986, 35.139584, 42.343548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234921, 34.775539, 42.427464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.499249, 34.475460, 42.418316>,  <36.657845, 34.295414, 42.412827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.499249, 34.475460, 42.418316>,  <36.234921, 34.775539, 42.427464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499249, 34.475460, 42.418316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440772, -0.412556, 0.797194,
		-0.607487, -0.516721, -0.603290,
		0.660817, -0.750199, -0.022866,
		36.697495, 34.250401, 42.411457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892834, 34.066044, 42.526413>,  <36.234921, 34.775539, 42.427464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892834, 34.066044, 42.526413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.276714, 34.020020, 42.628971>,  <36.507042, 33.992405, 42.690506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.276714, 34.020020, 42.628971>,  <35.892834, 34.066044, 42.526413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276714, 34.020020, 42.628971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280187, -0.462289, 0.841299,
		0.021731, -0.879233, -0.475896,
		0.959700, -0.115057, 0.256395,
		36.564625, 33.985500, 42.705891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712650, 33.514656, 42.837856>,  <35.892834, 34.066044, 42.526413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712650, 33.514656, 42.837856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.082981, 33.601849, 42.961361>,  <36.305180, 33.654163, 43.035465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.082981, 33.601849, 42.961361>,  <35.712650, 33.514656, 42.837856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082981, 33.601849, 42.961361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156186, -0.523264, 0.837735,
		0.344172, -0.823820, -0.450406,
		0.925825, 0.217978, 0.308761,
		36.360729, 33.667240, 43.053989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180286, 32.907829, 43.049702>,  <35.712650, 33.514656, 42.837856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180286, 32.907829, 43.049702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.363621, 33.193169, 43.261765>,  <36.473621, 33.364372, 43.389004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.363621, 33.193169, 43.261765>,  <36.180286, 32.907829, 43.049702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363621, 33.193169, 43.261765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045647, -0.576822, 0.815593,
		0.887608, -0.398014, -0.231814,
		0.458333, 0.713345, 0.530160,
		36.501122, 33.407173, 43.420811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621811, 32.570953, 43.534489>,  <36.180286, 32.907829, 43.049702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621811, 32.570953, 43.534489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.536861, 32.924934, 43.700260>,  <36.485889, 33.137325, 43.799725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.536861, 32.924934, 43.700260>,  <36.621811, 32.570953, 43.534489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536861, 32.924934, 43.700260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064718, -0.435910, 0.897660,
		0.975043, 0.163820, 0.149849,
		-0.212376, 0.884955, 0.414429,
		36.473148, 33.190422, 43.824589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993614, 32.562195, 44.191963>,  <36.621811, 32.570953, 43.534489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993614, 32.562195, 44.191963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699711, 32.832111, 44.219631>,  <36.523369, 32.994061, 44.236233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699711, 32.832111, 44.219631>,  <36.993614, 32.562195, 44.191963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699711, 32.832111, 44.219631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188585, -0.301158, 0.934740,
		0.651590, 0.673761, 0.348534,
		-0.734756, 0.674796, 0.069170,
		36.479282, 33.034550, 44.240383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043667, 32.796791, 44.847160>,  <36.993614, 32.562195, 44.191963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043667, 32.796791, 44.847160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.686481, 32.942387, 44.741230>,  <36.472172, 33.029743, 44.677673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.686481, 32.942387, 44.741230>,  <37.043667, 32.796791, 44.847160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686481, 32.942387, 44.741230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368547, -0.253406, 0.894404,
		0.258444, 0.896269, 0.360428,
		-0.892961, 0.363988, -0.264826,
		36.418594, 33.051582, 44.661781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890430, 33.206203, 45.396976>,  <37.043667, 32.796791, 44.847160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890430, 33.206203, 45.396976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.542187, 33.117092, 45.221523>,  <36.333241, 33.063625, 45.116249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.542187, 33.117092, 45.221523>,  <36.890430, 33.206203, 45.396976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542187, 33.117092, 45.221523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386408, -0.242204, 0.889958,
		-0.304500, 0.944304, 0.124784,
		-0.870614, -0.222775, -0.438637,
		36.281002, 33.050259, 45.089931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179401, 33.663578, 45.933025>,  <36.890430, 33.206203, 45.396976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179401, 33.663578, 45.933025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.470470, 33.491570, 46.146778>,  <37.645111, 33.388363, 46.275032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.470470, 33.491570, 46.146778>,  <37.179401, 33.663578, 45.933025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470470, 33.491570, 46.146778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632552, 0.119419, -0.765256,
		0.265262, 0.894885, 0.358910,
		0.727677, -0.430023, 0.534384,
		37.688774, 33.362564, 46.307095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735439, 34.154457, 45.913551>,  <37.179401, 33.663578, 45.933025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735439, 34.154457, 45.913551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.923050, 33.818588, 46.023075>,  <38.035614, 33.617069, 46.088791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.923050, 33.818588, 46.023075>,  <37.735439, 34.154457, 45.913551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923050, 33.818588, 46.023075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676695, 0.142432, -0.722355,
		0.567539, 0.524090, 0.635003,
		0.469023, -0.839669, 0.273813,
		38.063755, 33.566689, 46.105221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437248, 34.336452, 45.962391>,  <37.735439, 34.154457, 45.913551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437248, 34.336452, 45.962391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434002, 33.940952, 45.902637>,  <38.432056, 33.703651, 45.866787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434002, 33.940952, 45.902637>,  <38.437248, 34.336452, 45.962391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434002, 33.940952, 45.902637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726678, 0.096794, -0.680125,
		0.686931, -0.114073, 0.717714,
		-0.008113, -0.988746, -0.149385,
		38.431568, 33.644329, 45.857822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165981, 34.217434, 45.944622>,  <38.437248, 34.336452, 45.962391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165981, 34.217434, 45.944622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.976490, 33.911713, 45.769615>,  <38.862793, 33.728279, 45.664612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.976490, 33.911713, 45.769615>,  <39.165981, 34.217434, 45.944622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976490, 33.911713, 45.769615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638769, 0.043800, -0.768151,
		0.606261, -0.643373, 0.467461,
		-0.473733, -0.764300, -0.437520,
		38.834370, 33.682423, 45.638359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645664, 33.795803, 45.563263>,  <39.165981, 34.217434, 45.944622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645664, 33.795803, 45.563263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.333847, 33.635136, 45.371025>,  <39.146755, 33.538734, 45.255680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.333847, 33.635136, 45.371025>,  <39.645664, 33.795803, 45.563263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333847, 33.635136, 45.371025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590315, -0.214646, -0.778110,
		0.209384, -0.890275, 0.404437,
		-0.779543, -0.401669, -0.480599,
		39.099983, 33.514637, 45.226845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908310, 33.182858, 45.226173>,  <39.645664, 33.795803, 45.563263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908310, 33.182858, 45.226173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.591423, 33.331257, 45.032368>,  <39.401291, 33.420296, 44.916084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.591423, 33.331257, 45.032368>,  <39.908310, 33.182858, 45.226173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591423, 33.331257, 45.032368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487506, -0.092813, -0.868173,
		-0.367060, -0.923984, -0.107336,
		-0.792215, 0.370998, -0.484515,
		39.353760, 33.442554, 44.887012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772900, 32.695976, 44.711864>,  <39.908310, 33.182858, 45.226173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772900, 32.695976, 44.711864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.574711, 33.016766, 44.578392>,  <39.455795, 33.209240, 44.498310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.574711, 33.016766, 44.578392>,  <39.772900, 32.695976, 44.711864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574711, 33.016766, 44.578392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485577, -0.062792, -0.871936,
		-0.720223, -0.594049, -0.358308,
		-0.495474, 0.801974, -0.333681,
		39.426067, 33.257359, 44.478287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586559, 32.459724, 44.027744>,  <39.772900, 32.695976, 44.711864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586559, 32.459724, 44.027744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.557976, 32.858475, 44.041218>,  <39.540825, 33.097725, 44.049301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.557976, 32.858475, 44.041218>,  <39.586559, 32.459724, 44.027744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557976, 32.858475, 44.041218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431136, 0.061326, -0.900201,
		-0.899453, -0.049805, -0.434171,
		-0.071460, 0.996875, 0.033687,
		39.536537, 33.157536, 44.051323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216362, 32.721828, 43.477917>,  <39.586559, 32.459724, 44.027744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216362, 32.721828, 43.477917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.439823, 33.038708, 43.576160>,  <39.573898, 33.228836, 43.635105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.439823, 33.038708, 43.576160>,  <39.216362, 32.721828, 43.477917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439823, 33.038708, 43.576160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346434, 0.046175, -0.936937,
		-0.753584, 0.608510, -0.248649,
		0.558654, 0.792202, 0.245605,
		39.607418, 33.276367, 43.649841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142071, 33.300999, 42.911606>,  <39.216362, 32.721828, 43.477917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142071, 33.300999, 42.911606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.463482, 33.378300, 43.136818>,  <39.656326, 33.424679, 43.271946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.463482, 33.378300, 43.136818>,  <39.142071, 33.300999, 42.911606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463482, 33.378300, 43.136818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502204, 0.287730, -0.815477,
		-0.319595, 0.938011, 0.134146,
		0.803524, 0.193254, 0.563029,
		39.704540, 33.436275, 43.305725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402756, 33.943180, 42.584751>,  <39.142071, 33.300999, 42.911606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402756, 33.943180, 42.584751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.690746, 33.788250, 42.815094>,  <39.863541, 33.695293, 42.953300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.690746, 33.788250, 42.815094>,  <39.402756, 33.943180, 42.584751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690746, 33.788250, 42.815094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688968, 0.299214, -0.660147,
		0.083385, 0.872039, 0.482280,
		0.719979, -0.387322, 0.575857,
		39.906738, 33.672054, 42.987850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870605, 34.428833, 42.475929>,  <39.402756, 33.943180, 42.584751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870605, 34.428833, 42.475929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.075817, 34.109531, 42.602165>,  <40.198944, 33.917950, 42.677906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.075817, 34.109531, 42.602165>,  <39.870605, 34.428833, 42.475929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075817, 34.109531, 42.602165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713779, 0.192515, -0.673393,
		0.476781, 0.570731, 0.668540,
		0.513030, -0.798251, 0.315588,
		40.229725, 33.870056, 42.696842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656727, 34.670197, 42.490650>,  <39.870605, 34.428833, 42.475929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656727, 34.670197, 42.490650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.625629, 34.273823, 42.446812>,  <40.606972, 34.035999, 42.420509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.625629, 34.273823, 42.446812>,  <40.656727, 34.670197, 42.490650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625629, 34.273823, 42.446812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714898, 0.021213, -0.698907,
		0.694893, -0.132690, 0.706765,
		-0.077745, -0.990930, -0.109601,
		40.602306, 33.976543, 42.413933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410648, 34.397831, 42.584778>,  <40.656727, 34.670197, 42.490650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410648, 34.397831, 42.584778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.200436, 34.153141, 42.348267>,  <41.074306, 34.006329, 42.206360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.200436, 34.153141, 42.348267>,  <41.410648, 34.397831, 42.584778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200436, 34.153141, 42.348267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687873, 0.103449, -0.718421,
		0.500643, -0.784277, 0.366423,
		-0.525535, -0.611725, -0.591274,
		41.042774, 33.969624, 42.170883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.707561, 29.548681, 40.444996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400988, 29.707756, 40.646755>,  <28.217043, 29.803202, 40.767811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400988, 29.707756, 40.646755>,  <28.707561, 29.548681, 40.444996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400988, 29.707756, 40.646755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241805, 0.548871, -0.800169,
		-0.595071, -0.735244, -0.324510,
		-0.766434, 0.397689, 0.504403,
		28.171057, 29.827063, 40.798077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999027, 29.360270, 40.143070>,  <28.707561, 29.548681, 40.444996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999027, 29.360270, 40.143070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.988010, 29.710611, 40.335789>,  <27.981400, 29.920816, 40.451420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.988010, 29.710611, 40.335789>,  <27.999027, 29.360270, 40.143070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988010, 29.710611, 40.335789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423752, 0.426296, -0.799190,
		-0.905359, -0.226172, 0.359403,
		-0.027542, 0.875852, 0.481792,
		27.979748, 29.973368, 40.480328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465223, 29.654699, 39.854874>,  <27.999027, 29.360270, 40.143070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465223, 29.654699, 39.854874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634148, 29.981705, 40.011501>,  <27.735502, 30.177908, 40.105476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634148, 29.981705, 40.011501>,  <27.465223, 29.654699, 39.854874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634148, 29.981705, 40.011501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390836, 0.553986, -0.735083,
		-0.817863, 0.157395, 0.553468,
		0.422311, 0.817512, 0.391569,
		27.760841, 30.226959, 40.128971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866024, 30.188070, 39.921532>,  <27.465223, 29.654699, 39.854874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866024, 30.188070, 39.921532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.217487, 30.378706, 39.932991>,  <27.428366, 30.493088, 39.939865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.217487, 30.378706, 39.932991>,  <26.866024, 30.188070, 39.921532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217487, 30.378706, 39.932991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315050, 0.623831, -0.715247,
		-0.358752, 0.619431, 0.698285,
		0.878658, 0.476591, 0.028649,
		27.481085, 30.521683, 39.941586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709988, 30.968624, 39.843712>,  <26.866024, 30.188070, 39.921532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709988, 30.968624, 39.843712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.103096, 30.938042, 39.776409>,  <27.338961, 30.919693, 39.736027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.103096, 30.938042, 39.776409>,  <26.709988, 30.968624, 39.843712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103096, 30.938042, 39.776409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072906, 0.676212, -0.733091,
		0.169829, 0.732729, 0.658989,
		0.982773, -0.076456, -0.168261,
		27.397928, 30.915106, 39.725929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920685, 31.703009, 39.790138>,  <26.709988, 30.968624, 39.843712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920685, 31.703009, 39.790138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.215309, 31.493164, 39.619370>,  <27.392084, 31.367258, 39.516907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.215309, 31.493164, 39.619370>,  <26.920685, 31.703009, 39.790138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215309, 31.493164, 39.619370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104580, 0.535271, -0.838181,
		0.668237, 0.662019, 0.339396,
		0.736561, -0.524610, -0.426922,
		27.436277, 31.335781, 39.491291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440632, 32.218082, 39.574081>,  <26.920685, 31.703009, 39.790138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440632, 32.218082, 39.574081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.506605, 31.893185, 39.350277>,  <27.546188, 31.698246, 39.215996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.506605, 31.893185, 39.350277>,  <27.440632, 32.218082, 39.574081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506605, 31.893185, 39.350277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019764, 0.569887, -0.821485,
		0.986107, 0.124432, 0.110047,
		0.164934, -0.812247, -0.559510,
		27.556086, 31.649511, 39.182423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069397, 32.300171, 39.260544>,  <27.440632, 32.218082, 39.574081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069397, 32.300171, 39.260544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838814, 32.055702, 39.043598>,  <27.700464, 31.909021, 38.913429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838814, 32.055702, 39.043598>,  <28.069397, 32.300171, 39.260544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838814, 32.055702, 39.043598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216031, 0.526144, -0.822499,
		0.788052, -0.591305, -0.171268,
		-0.576459, -0.611172, -0.542368,
		27.665876, 31.872351, 38.880886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461370, 32.258717, 38.644623>,  <28.069397, 32.300171, 39.260544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461370, 32.258717, 38.644623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.110683, 32.113522, 38.518383>,  <27.900270, 32.026405, 38.442638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.110683, 32.113522, 38.518383>,  <28.461370, 32.258717, 38.644623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110683, 32.113522, 38.518383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161664, 0.395592, -0.904086,
		0.453022, -0.843650, -0.288141,
		-0.876719, -0.362989, -0.315600,
		27.847668, 32.004627, 38.423702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644331, 32.067024, 38.018009>,  <28.461370, 32.258717, 38.644623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644331, 32.067024, 38.018009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244448, 32.060585, 38.010845>,  <28.004517, 32.056721, 38.006546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244448, 32.060585, 38.010845>,  <28.644331, 32.067024, 38.018009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244448, 32.060585, 38.010845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006248, 0.545070, -0.838367,
		0.023256, -0.838236, -0.544812,
		-0.999710, -0.016093, -0.017913,
		27.944534, 32.055756, 38.005470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454355, 31.859835, 37.353905>,  <28.644331, 32.067024, 38.018009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454355, 31.859835, 37.353905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107788, 32.023979, 37.467693>,  <27.899849, 32.122467, 37.535969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107788, 32.023979, 37.467693>,  <28.454355, 31.859835, 37.353905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107788, 32.023979, 37.467693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089143, 0.433446, -0.896760,
		-0.491300, -0.802326, -0.338964,
		-0.866417, 0.410362, 0.284474,
		27.847862, 32.147087, 37.553036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007683, 31.775738, 36.776428>,  <28.454355, 31.859835, 37.353905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007683, 31.775738, 36.776428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.853983, 32.072887, 36.995697>,  <27.761763, 32.251179, 37.127258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.853983, 32.072887, 36.995697>,  <28.007683, 31.775738, 36.776428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853983, 32.072887, 36.995697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128274, 0.545033, -0.828544,
		-0.914274, -0.388683, -0.114137,
		-0.384250, 0.742876, 0.548167,
		27.738708, 32.295750, 37.160149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530142, 31.951851, 36.361618>,  <28.007683, 31.775738, 36.776428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530142, 31.951851, 36.361618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.592451, 32.256916, 36.612720>,  <27.629837, 32.439957, 36.763382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.592451, 32.256916, 36.612720>,  <27.530142, 31.951851, 36.361618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592451, 32.256916, 36.612720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065588, 0.642098, -0.763812,
		-0.985613, 0.077809, 0.150045,
		0.155775, 0.762664, 0.627757,
		27.639183, 32.485714, 36.801048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022676, 32.447910, 36.127426>,  <27.530142, 31.951851, 36.361618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022676, 32.447910, 36.127426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.333458, 32.615353, 36.315517>,  <27.519926, 32.715816, 36.428371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.333458, 32.615353, 36.315517>,  <27.022676, 32.447910, 36.127426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333458, 32.615353, 36.315517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049228, 0.704238, -0.708256,
		-0.627631, 0.573430, 0.526553,
		0.776953, 0.418602, 0.470230,
		27.566544, 32.740932, 36.456585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826651, 33.120152, 36.101120>,  <27.022676, 32.447910, 36.127426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826651, 33.120152, 36.101120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.225813, 33.115696, 36.126617>,  <27.465309, 33.113022, 36.141914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.225813, 33.115696, 36.126617>,  <26.826651, 33.120152, 36.101120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225813, 33.115696, 36.126617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052911, 0.707512, -0.704717,
		-0.037250, 0.706613, 0.706619,
		0.997904, -0.011137, 0.063742,
		27.525185, 33.112354, 36.145741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046808, 33.861515, 35.998943>,  <26.826651, 33.120152, 36.101120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046808, 33.861515, 35.998943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373360, 33.645096, 35.918152>,  <27.569290, 33.515244, 35.869678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373360, 33.645096, 35.918152>,  <27.046808, 33.861515, 35.998943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373360, 33.645096, 35.918152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084607, 0.458006, -0.884914,
		0.571288, 0.705335, 0.419682,
		0.816377, -0.541049, -0.201977,
		27.618273, 33.482780, 35.857559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621237, 34.347767, 35.769859>,  <27.046808, 33.861515, 35.998943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621237, 34.347767, 35.769859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.738548, 33.995808, 35.620316>,  <27.808935, 33.784634, 35.530590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.738548, 33.995808, 35.620316>,  <27.621237, 34.347767, 35.769859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738548, 33.995808, 35.620316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300977, 0.456150, -0.837461,
		0.907414, 0.133086, 0.398607,
		0.293279, -0.879895, -0.373861,
		27.826532, 33.731838, 35.508156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365911, 34.456848, 35.504753>,  <27.621237, 34.347767, 35.769859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365911, 34.456848, 35.504753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240477, 34.126606, 35.317123>,  <28.165216, 33.928459, 35.204544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240477, 34.126606, 35.317123>,  <28.365911, 34.456848, 35.504753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240477, 34.126606, 35.317123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288198, 0.387941, -0.875468,
		0.904769, -0.409721, 0.116286,
		-0.313585, -0.825609, -0.469077,
		28.146400, 33.878922, 35.176399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914585, 34.092190, 35.065220>,  <28.365911, 34.456848, 35.504753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914585, 34.092190, 35.065220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.569246, 33.971287, 34.903587>,  <28.362043, 33.898746, 34.806610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.569246, 33.971287, 34.903587>,  <28.914585, 34.092190, 35.065220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569246, 33.971287, 34.903587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276026, 0.387475, -0.879587,
		0.422432, -0.870921, -0.251093,
		-0.863343, -0.302257, -0.404078,
		28.310244, 33.880611, 34.782364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123280, 33.774464, 34.445732>,  <28.914585, 34.092190, 35.065220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123280, 33.774464, 34.445732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733513, 33.841713, 34.386066>,  <28.499653, 33.882061, 34.350266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733513, 33.841713, 34.386066>,  <29.123280, 33.774464, 34.445732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733513, 33.841713, 34.386066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195943, 0.310317, -0.930220,
		-0.110103, -0.935648, -0.335320,
		-0.974415, 0.168123, -0.149167,
		28.441189, 33.892151, 34.341316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886341, 33.714996, 34.237381>,  <29.123280, 33.774464, 34.445732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886341, 33.714996, 34.237381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.134306, 33.919682, 34.475327>,  <30.283085, 34.042492, 34.618092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.134306, 33.919682, 34.475327>,  <29.886341, 33.714996, 34.237381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134306, 33.919682, 34.475327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282456, -0.852805, 0.439252,
		0.732072, -0.104274, -0.673199,
		0.619910, 0.511713, 0.594862,
		30.320278, 34.073196, 34.653786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546904, 33.364891, 34.265083>,  <29.886341, 33.714996, 34.237381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546904, 33.364891, 34.265083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.569870, 33.577675, 34.603012>,  <30.583649, 33.705345, 34.805767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.569870, 33.577675, 34.603012>,  <30.546904, 33.364891, 34.265083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569870, 33.577675, 34.603012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135995, -0.842494, 0.521258,
		0.989045, 0.084964, -0.120715,
		0.057414, 0.531964, 0.844818,
		30.587093, 33.737263, 34.856457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922863, 32.954746, 34.653938>,  <30.546904, 33.364891, 34.265083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922863, 32.954746, 34.653938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.792566, 33.211266, 34.931824>,  <30.714388, 33.365177, 35.098557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.792566, 33.211266, 34.931824>,  <30.922863, 32.954746, 34.653938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792566, 33.211266, 34.931824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127531, -0.698272, 0.704381,
		0.936818, 0.318044, 0.145671,
		-0.325743, 0.641299, 0.694714,
		30.694843, 33.403656, 35.140240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294373, 32.817379, 35.305504>,  <30.922863, 32.954746, 34.653938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294373, 32.817379, 35.305504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969263, 33.016869, 35.425949>,  <30.774197, 33.136562, 35.498215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969263, 33.016869, 35.425949>,  <31.294373, 32.817379, 35.305504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969263, 33.016869, 35.425949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018469, -0.538654, 0.842324,
		0.582285, 0.679059, 0.447016,
		-0.812775, 0.498728, 0.301109,
		30.725431, 33.166489, 35.516281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439512, 33.095291, 35.960026>,  <31.294373, 32.817379, 35.305504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439512, 33.095291, 35.960026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.047432, 33.037899, 35.905437>,  <30.812183, 33.003464, 35.872684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.047432, 33.037899, 35.905437>,  <31.439512, 33.095291, 35.960026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047432, 33.037899, 35.905437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041114, -0.526703, 0.849055,
		-0.193697, 0.837854, 0.510375,
		-0.980200, -0.143476, -0.136468,
		30.753372, 32.994858, 35.864498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181637, 33.231285, 36.653297>,  <31.439512, 33.095291, 35.960026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181637, 33.231285, 36.653297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.857660, 33.069176, 36.483707>,  <30.663275, 32.971909, 36.381954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.857660, 33.069176, 36.483707>,  <31.181637, 33.231285, 36.653297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857660, 33.069176, 36.483707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289939, -0.351700, 0.890080,
		-0.509836, 0.843837, 0.167351,
		-0.809940, -0.405273, -0.423971,
		30.614677, 32.947594, 36.356518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626806, 33.411266, 37.097580>,  <31.181637, 33.231285, 36.653297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626806, 33.411266, 37.097580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.524443, 33.090153, 36.882156>,  <30.463024, 32.897484, 36.752903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.524443, 33.090153, 36.882156>,  <30.626806, 33.411266, 37.097580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524443, 33.090153, 36.882156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219285, -0.494383, 0.841130,
		-0.941501, 0.333350, -0.049522,
		-0.255908, -0.802785, -0.538561,
		30.447670, 32.849316, 36.720589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898142, 33.232697, 37.369099>,  <30.626806, 33.411266, 37.097580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898142, 33.232697, 37.369099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046707, 32.911240, 37.183105>,  <30.135847, 32.718365, 37.071510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046707, 32.911240, 37.183105>,  <29.898142, 33.232697, 37.369099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046707, 32.911240, 37.183105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158390, -0.548306, 0.821141,
		-0.914857, -0.231336, -0.330938,
		0.371415, -0.803644, -0.464981,
		30.158133, 32.670147, 37.043610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352297, 32.696907, 37.487106>,  <29.898142, 33.232697, 37.369099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352297, 32.696907, 37.487106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.693817, 32.503868, 37.409008>,  <29.898729, 32.388042, 37.362148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.693817, 32.503868, 37.409008>,  <29.352297, 32.696907, 37.487106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693817, 32.503868, 37.409008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188488, -0.636163, 0.748177,
		-0.485278, -0.601993, -0.634121,
		0.853802, -0.482599, -0.195248,
		29.949957, 32.359089, 37.350433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184805, 32.007069, 37.536045>,  <29.352297, 32.696907, 37.487106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184805, 32.007069, 37.536045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.575350, 32.043507, 37.614445>,  <29.809677, 32.065369, 37.661484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.575350, 32.043507, 37.614445>,  <29.184805, 32.007069, 37.536045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575350, 32.043507, 37.614445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106118, -0.587981, 0.801884,
		0.188290, -0.803729, -0.564417,
		0.976364, 0.091092, 0.196001,
		29.868259, 32.070835, 37.673244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274813, 31.451017, 37.976891>,  <29.184805, 32.007069, 37.536045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274813, 31.451017, 37.976891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.620960, 31.649471, 38.005138>,  <29.828650, 31.768543, 38.022087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.620960, 31.649471, 38.005138>,  <29.274813, 31.451017, 37.976891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620960, 31.649471, 38.005138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101316, -0.311214, 0.944924,
		0.490785, -0.810554, -0.319582,
		0.865370, 0.496133, 0.070618,
		29.880571, 31.798311, 38.026325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816236, 30.950306, 38.208065>,  <29.274813, 31.451017, 37.976891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816236, 30.950306, 38.208065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897173, 31.329407, 38.306717>,  <29.945736, 31.556868, 38.365910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897173, 31.329407, 38.306717>,  <29.816236, 30.950306, 38.208065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897173, 31.329407, 38.306717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148029, -0.278547, 0.948946,
		0.968062, -0.155504, -0.196656,
		0.202342, 0.947750, 0.246632,
		29.957876, 31.613731, 38.380707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470617, 30.934837, 38.575775>,  <29.816236, 30.950306, 38.208065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470617, 30.934837, 38.575775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329285, 31.282156, 38.715038>,  <30.244486, 31.490547, 38.798595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329285, 31.282156, 38.715038>,  <30.470617, 30.934837, 38.575775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329285, 31.282156, 38.715038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296940, -0.248823, 0.921908,
		0.887122, 0.429120, -0.169916,
		-0.353330, 0.868299, 0.348159,
		30.223286, 31.542646, 38.819485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967903, 31.121162, 38.995384>,  <30.470617, 30.934837, 38.575775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967903, 31.121162, 38.995384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.659092, 31.346912, 39.112312>,  <30.473804, 31.482363, 39.182468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.659092, 31.346912, 39.112312>,  <30.967903, 31.121162, 38.995384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659092, 31.346912, 39.112312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276441, -0.115973, 0.954008,
		0.572320, 0.817331, -0.066482,
		-0.772030, 0.564376, 0.292317,
		30.427483, 31.516226, 39.200008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182764, 31.594250, 39.534306>,  <30.967903, 31.121162, 38.995384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182764, 31.594250, 39.534306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.792383, 31.523697, 39.585541>,  <30.558155, 31.481365, 39.616280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.792383, 31.523697, 39.585541>,  <31.182764, 31.594250, 39.534306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792383, 31.523697, 39.585541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169485, -0.244485, 0.954726,
		-0.137083, 0.953476, 0.268500,
		-0.975952, -0.176383, 0.128085,
		30.499598, 31.470781, 39.623966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947470, 31.923319, 40.281067>,  <31.182764, 31.594250, 39.534306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947470, 31.923319, 40.281067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661638, 31.654882, 40.202061>,  <30.490139, 31.493820, 40.154655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.661638, 31.654882, 40.202061>,  <30.947470, 31.923319, 40.281067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661638, 31.654882, 40.202061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000594, -0.281768, 0.959482,
		-0.699554, 0.685744, 0.200947,
		-0.714579, -0.671090, -0.197520,
		30.447264, 31.453556, 40.142803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479601, 32.055504, 40.869480>,  <30.947470, 31.923319, 40.281067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479601, 32.055504, 40.869480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.379637, 31.700777, 40.713997>,  <30.319658, 31.487940, 40.620705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.379637, 31.700777, 40.713997>,  <30.479601, 32.055504, 40.869480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379637, 31.700777, 40.713997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074360, -0.382685, 0.920881,
		-0.965410, 0.259041, 0.029693,
		-0.249909, -0.886820, -0.388711,
		30.304665, 31.434731, 40.597385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705225, 31.822863, 41.099792>,  <30.479601, 32.055504, 40.869480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705225, 31.822863, 41.099792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907766, 31.499117, 40.980770>,  <30.029291, 31.304869, 40.909359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907766, 31.499117, 40.980770>,  <29.705225, 31.822863, 41.099792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907766, 31.499117, 40.980770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082457, -0.388920, 0.917574,
		-0.858376, -0.440079, -0.263668,
		0.506351, -0.809365, -0.297552,
		30.059671, 31.256308, 40.891506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154654, 31.408094, 41.183380>,  <29.705225, 31.822863, 41.099792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154654, 31.408094, 41.183380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498186, 31.203629, 41.170010>,  <29.704306, 31.080950, 41.161987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498186, 31.203629, 41.170010>,  <29.154654, 31.408094, 41.183380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498186, 31.203629, 41.170010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342978, -0.622277, 0.703660,
		-0.380487, -0.592861, -0.709750,
		0.858834, -0.511162, -0.033430,
		29.755836, 31.050280, 41.159981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928789, 30.703285, 41.170124>,  <29.154654, 31.408094, 41.183380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928789, 30.703285, 41.170124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.290836, 30.761312, 41.329983>,  <29.508064, 30.796129, 41.425900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.290836, 30.761312, 41.329983>,  <28.928789, 30.703285, 41.170124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290836, 30.761312, 41.329983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246026, -0.587909, 0.770607,
		0.346747, -0.795813, -0.496436,
		0.905117, 0.145070, 0.399647,
		29.562372, 30.804832, 41.449875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963118, 30.092514, 41.560600>,  <28.928789, 30.703285, 41.170124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963118, 30.092514, 41.560600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279078, 30.283169, 41.714939>,  <29.468653, 30.397562, 41.807541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279078, 30.283169, 41.714939>,  <28.963118, 30.092514, 41.560600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279078, 30.283169, 41.714939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043842, -0.583695, 0.810789,
		0.611669, -0.657357, -0.440163,
		0.789899, 0.476636, 0.385848,
		29.516047, 30.426159, 41.830692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370667, 29.521433, 41.799267>,  <28.963118, 30.092514, 41.560600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370667, 29.521433, 41.799267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.500778, 29.846951, 41.991905>,  <29.578846, 30.042261, 42.107487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.500778, 29.846951, 41.991905>,  <29.370667, 29.521433, 41.799267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500778, 29.846951, 41.991905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058022, -0.491158, 0.869136,
		0.943836, -0.310655, -0.112545,
		0.325279, 0.813792, 0.481597,
		29.598362, 30.091087, 42.136383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.176678, 30.748859, 45.962090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.841007, 30.547562, 45.879608>,  <39.639603, 30.426783, 45.830120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.841007, 30.547562, 45.879608>,  <40.176678, 30.748859, 45.962090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841007, 30.547562, 45.879608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274213, 0.064097, 0.959531,
		-0.469663, 0.861763, -0.191785,
		-0.839181, -0.503246, -0.206202,
		39.589252, 30.396587, 45.817749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455776, 31.058016, 46.170040>,  <40.176678, 30.748859, 45.962090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455776, 31.058016, 46.170040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.401566, 30.661814, 46.160851>,  <39.369038, 30.424091, 46.155334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.401566, 30.661814, 46.160851>,  <39.455776, 31.058016, 46.170040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401566, 30.661814, 46.160851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487866, 0.046533, 0.871677,
		-0.862333, 0.129347, -0.489542,
		-0.135529, -0.990507, -0.022977,
		39.360909, 30.364662, 46.153957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994812, 31.021469, 46.616817>,  <39.455776, 31.058016, 46.170040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994812, 31.021469, 46.616817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.063869, 30.633600, 46.547615>,  <39.105305, 30.400879, 46.506096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.063869, 30.633600, 46.547615>,  <38.994812, 31.021469, 46.616817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063869, 30.633600, 46.547615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607896, -0.243094, 0.755889,
		-0.775020, -0.025332, -0.631428,
		0.172645, -0.969672, -0.173004,
		39.115662, 30.342699, 46.495712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330933, 30.668854, 46.620159>,  <38.994812, 31.021469, 46.616817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330933, 30.668854, 46.620159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598099, 30.381195, 46.696812>,  <38.758396, 30.208599, 46.742805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598099, 30.381195, 46.696812>,  <38.330933, 30.668854, 46.620159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598099, 30.381195, 46.696812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612629, -0.385054, 0.690231,
		-0.422589, -0.578411, -0.697753,
		0.667910, -0.719148, 0.191632,
		38.798473, 30.165451, 46.754303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021523, 30.026697, 46.594822>,  <38.330933, 30.668854, 46.620159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021523, 30.026697, 46.594822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335823, 29.961365, 46.833458>,  <38.524403, 29.922165, 46.976639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335823, 29.961365, 46.833458>,  <38.021523, 30.026697, 46.594822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335823, 29.961365, 46.833458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596698, -0.454218, 0.661541,
		0.162930, -0.875790, -0.454363,
		0.785751, -0.163332, 0.596588,
		38.571548, 29.912365, 47.012436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042416, 29.347094, 46.721497>,  <38.021523, 30.026697, 46.594822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042416, 29.347094, 46.721497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.244579, 29.500154, 47.030853>,  <38.365879, 29.591991, 47.216469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.244579, 29.500154, 47.030853>,  <38.042416, 29.347094, 46.721497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244579, 29.500154, 47.030853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661790, -0.403252, 0.631998,
		0.553707, -0.831244, 0.049425,
		0.505414, 0.382650, 0.773392,
		38.396202, 29.614950, 47.262871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091743, 28.879723, 47.287571>,  <38.042416, 29.347094, 46.721497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091743, 28.879723, 47.287571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.174942, 29.225912, 47.469864>,  <38.224861, 29.433626, 47.579239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.174942, 29.225912, 47.469864>,  <38.091743, 28.879723, 47.287571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174942, 29.225912, 47.469864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521330, -0.296140, 0.800322,
		0.827619, -0.404049, 0.389603,
		0.207992, 0.865474, 0.455734,
		38.237339, 29.485554, 47.606583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016876, 28.708563, 47.956337>,  <38.091743, 28.879723, 47.287571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016876, 28.708563, 47.956337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037003, 29.106508, 47.991478>,  <38.049080, 29.345276, 48.012562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037003, 29.106508, 47.991478>,  <38.016876, 28.708563, 47.956337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037003, 29.106508, 47.991478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670561, -0.031534, 0.741184,
		0.740146, -0.096203, 0.665529,
		0.050317, 0.994862, 0.087849,
		38.052097, 29.404966, 48.017834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203152, 28.907763, 48.672020>,  <38.016876, 28.708563, 47.956337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203152, 28.907763, 48.672020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973961, 29.201702, 48.526859>,  <37.836445, 29.378065, 48.439762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973961, 29.201702, 48.526859>,  <38.203152, 28.907763, 48.672020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973961, 29.201702, 48.526859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596629, -0.070413, 0.799422,
		0.561901, 0.674567, 0.478777,
		-0.572976, 0.734848, -0.362901,
		37.802067, 29.422157, 48.417988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074287, 29.358063, 49.229607>,  <38.203152, 28.907763, 48.672020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074287, 29.358063, 49.229607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.820400, 29.468597, 48.940948>,  <37.668068, 29.534918, 48.767754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.820400, 29.468597, 48.940948>,  <38.074287, 29.358063, 49.229607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820400, 29.468597, 48.940948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741241, 0.046210, 0.669646,
		0.218394, 0.959950, 0.175501,
		-0.634717, 0.276335, -0.721646,
		37.629986, 29.551498, 48.724453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855125, 29.932152, 49.395729>,  <38.074287, 29.358063, 49.229607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855125, 29.932152, 49.395729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560020, 29.818460, 49.150806>,  <37.382957, 29.750246, 49.003853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560020, 29.818460, 49.150806>,  <37.855125, 29.932152, 49.395729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560020, 29.818460, 49.150806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661320, 0.122259, 0.740074,
		-0.135491, 0.950929, -0.278165,
		-0.737766, -0.284230, -0.612303,
		37.338692, 29.733192, 48.967117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242611, 30.395319, 49.395706>,  <37.855125, 29.932152, 49.395729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242611, 30.395319, 49.395706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113289, 30.032795, 49.286842>,  <37.035694, 29.815281, 49.221523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113289, 30.032795, 49.286842>,  <37.242611, 30.395319, 49.395706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113289, 30.032795, 49.286842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517055, -0.071691, 0.852945,
		-0.792545, 0.416486, -0.445435,
		-0.323306, -0.906311, -0.272164,
		37.016296, 29.760902, 49.205193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756081, 30.281155, 49.968689>,  <37.242611, 30.395319, 49.395706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756081, 30.281155, 49.968689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.713890, 29.940573, 49.763203>,  <36.688576, 29.736223, 49.639912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.713890, 29.940573, 49.763203>,  <36.756081, 30.281155, 49.968689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713890, 29.940573, 49.763203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686810, -0.311216, 0.656839,
		-0.719144, 0.422106, -0.551959,
		-0.105477, -0.851453, -0.513716,
		36.682247, 29.685137, 49.609089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225281, 29.979887, 50.510078>,  <36.756081, 30.281155, 49.968689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225281, 29.979887, 50.510078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295547, 29.641081, 50.309399>,  <36.337708, 29.437798, 50.188992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295547, 29.641081, 50.309399>,  <36.225281, 29.979887, 50.510078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295547, 29.641081, 50.309399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445841, -0.522816, 0.726559,
		-0.877705, 0.096045, -0.469478,
		0.175668, -0.847017, -0.501699,
		36.348248, 29.386976, 50.158890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589142, 30.321293, 50.701206>,  <36.225281, 29.979887, 50.510078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589142, 30.321293, 50.701206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.414837, 30.678268, 50.747952>,  <35.310253, 30.892454, 50.776001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.414837, 30.678268, 50.747952>,  <35.589142, 30.321293, 50.701206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414837, 30.678268, 50.747952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336116, 0.281805, -0.898672,
		-0.834945, -0.352330, -0.422765,
		-0.435767, 0.892440, 0.116868,
		35.284107, 30.946001, 50.783012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212795, 30.473967, 50.115330>,  <35.589142, 30.321293, 50.701206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212795, 30.473967, 50.115330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279663, 30.834320, 50.275562>,  <35.319782, 31.050531, 50.371704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279663, 30.834320, 50.275562>,  <35.212795, 30.473967, 50.115330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279663, 30.834320, 50.275562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418673, 0.302986, -0.856103,
		-0.892619, 0.310824, -0.326526,
		0.167165, 0.900882, 0.400585,
		35.329811, 31.104584, 50.395737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155041, 30.953976, 49.595184>,  <35.212795, 30.473967, 50.115330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155041, 30.953976, 49.595184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349468, 31.179850, 49.861977>,  <35.466125, 31.315374, 50.022053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349468, 31.179850, 49.861977>,  <35.155041, 30.953976, 49.595184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349468, 31.179850, 49.861977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547091, 0.398536, -0.736112,
		-0.681488, 0.722703, -0.115218,
		0.486072, 0.564686, 0.666981,
		35.495289, 31.349255, 50.062073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153538, 31.600323, 49.261417>,  <35.155041, 30.953976, 49.595184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153538, 31.600323, 49.261417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455414, 31.596989, 49.523830>,  <35.636539, 31.594988, 49.681278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455414, 31.596989, 49.523830>,  <35.153538, 31.600323, 49.261417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455414, 31.596989, 49.523830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585938, 0.458420, -0.668228,
		-0.295169, 0.888697, 0.350847,
		0.754687, -0.008334, 0.656032,
		35.681820, 31.594488, 49.720638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391899, 32.319885, 49.264660>,  <35.153538, 31.600323, 49.261417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391899, 32.319885, 49.264660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699448, 32.111267, 49.412621>,  <35.883976, 31.986097, 49.501396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699448, 32.111267, 49.412621>,  <35.391899, 32.319885, 49.264660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699448, 32.111267, 49.412621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606626, 0.412166, -0.679797,
		0.202084, 0.747069, 0.633286,
		0.768874, -0.521543, 0.369899,
		35.930111, 31.954803, 49.523590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941086, 32.860954, 49.396523>,  <35.391899, 32.319885, 49.264660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941086, 32.860954, 49.396523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119236, 32.503033, 49.384083>,  <36.226124, 32.288280, 49.376617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119236, 32.503033, 49.384083>,  <35.941086, 32.860954, 49.396523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119236, 32.503033, 49.384083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668442, 0.355412, -0.653351,
		0.595675, 0.270196, 0.756416,
		0.445372, -0.894805, -0.031100,
		36.252846, 32.234592, 49.374752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704865, 32.996414, 49.518379>,  <35.941086, 32.860954, 49.396523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704865, 32.996414, 49.518379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662540, 32.649715, 49.323418>,  <36.637146, 32.441696, 49.206440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662540, 32.649715, 49.323418>,  <36.704865, 32.996414, 49.518379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662540, 32.649715, 49.323418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678329, 0.295488, -0.672723,
		0.727100, -0.401798, 0.556673,
		-0.105808, -0.866744, -0.487401,
		36.630798, 32.389690, 49.177197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344757, 32.810448, 49.269974>,  <36.704865, 32.996414, 49.518379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344757, 32.810448, 49.269974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128498, 32.542362, 49.066597>,  <36.998741, 32.381512, 48.944569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128498, 32.542362, 49.066597>,  <37.344757, 32.810448, 49.269974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128498, 32.542362, 49.066597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571701, 0.150663, -0.806510,
		0.617136, -0.726717, 0.301705,
		-0.540649, -0.670211, -0.508445,
		36.966305, 32.341297, 48.914062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797882, 32.410957, 48.936001>,  <37.344757, 32.810448, 49.269974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797882, 32.410957, 48.936001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451431, 32.387268, 48.737476>,  <37.243561, 32.373055, 48.618362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451431, 32.387268, 48.737476>,  <37.797882, 32.410957, 48.936001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451431, 32.387268, 48.737476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468616, 0.249181, -0.847531,
		0.173864, -0.966644, -0.188069,
		-0.866124, -0.059223, -0.496309,
		37.191593, 32.369499, 48.588585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002544, 32.109192, 48.400578>,  <37.797882, 32.410957, 48.936001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002544, 32.109192, 48.400578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655354, 32.263515, 48.275509>,  <37.447041, 32.356110, 48.200466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655354, 32.263515, 48.275509>,  <38.002544, 32.109192, 48.400578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655354, 32.263515, 48.275509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452988, 0.357079, -0.816882,
		-0.203510, -0.850674, -0.484703,
		-0.867978, 0.385808, -0.312676,
		37.394958, 32.379257, 48.181705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949741, 32.019447, 47.646202>,  <38.002544, 32.109192, 48.400578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949741, 32.019447, 47.646202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680614, 32.308498, 47.709606>,  <37.519138, 32.481930, 47.747646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680614, 32.308498, 47.709606>,  <37.949741, 32.019447, 47.646202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680614, 32.308498, 47.709606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297136, 0.460166, -0.836634,
		-0.677517, -0.515803, -0.524327,
		-0.672816, 0.722630, 0.158507,
		37.478771, 32.525288, 47.757156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398304, 32.095604, 47.109955>,  <37.949741, 32.019447, 47.646202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398304, 32.095604, 47.109955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416000, 32.455536, 47.283550>,  <37.426617, 32.671497, 47.387707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416000, 32.455536, 47.283550>,  <37.398304, 32.095604, 47.109955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416000, 32.455536, 47.283550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184890, 0.419535, -0.888710,
		-0.981763, 0.119557, -0.147810,
		0.044240, 0.899832, 0.433988,
		37.429272, 32.725487, 47.413746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875622, 32.480598, 46.692909>,  <37.398304, 32.095604, 47.109955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875622, 32.480598, 46.692909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139248, 32.731266, 46.859241>,  <37.297424, 32.881664, 46.959042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139248, 32.731266, 46.859241>,  <36.875622, 32.480598, 46.692909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139248, 32.731266, 46.859241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274389, 0.314444, -0.908755,
		-0.700243, 0.713032, 0.035290,
		0.659068, 0.626666, 0.415835,
		37.336967, 32.919266, 46.983994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891541, 33.082668, 46.238678>,  <36.875622, 32.480598, 46.692909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891541, 33.082668, 46.238678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207500, 33.170868, 46.467567>,  <37.397076, 33.223789, 46.604900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207500, 33.170868, 46.467567>,  <36.891541, 33.082668, 46.238678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207500, 33.170868, 46.467567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534378, 0.210263, -0.818676,
		-0.300838, 0.952454, 0.048254,
		0.789896, 0.220503, 0.572226,
		37.444469, 33.237019, 46.639236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461361, 33.532887, 45.922207>,  <36.891541, 33.082668, 46.238678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461361, 33.532887, 45.922207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.259743, 33.298016, 45.668858>,  <36.138771, 33.157093, 45.516850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.259743, 33.298016, 45.668858>,  <36.461361, 33.532887, 45.922207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259743, 33.298016, 45.668858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595269, -0.295157, 0.747353,
		-0.625776, 0.753724, -0.200759,
		-0.504043, -0.587182, -0.633371,
		36.108528, 33.121861, 45.478848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812141, 33.748795, 46.085201>,  <36.461361, 33.532887, 45.922207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812141, 33.748795, 46.085201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764961, 33.396812, 45.901131>,  <35.736652, 33.185623, 45.790688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764961, 33.396812, 45.901131>,  <35.812141, 33.748795, 46.085201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764961, 33.396812, 45.901131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718640, -0.244170, 0.651105,
		-0.685306, 0.407499, -0.603572,
		-0.117951, -0.879957, -0.460176,
		35.729576, 33.132824, 45.763077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123009, 33.619080, 45.715332>,  <35.812141, 33.748795, 46.085201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123009, 33.619080, 45.715332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285492, 33.263206, 45.798714>,  <35.382980, 33.049683, 45.848743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285492, 33.263206, 45.798714>,  <35.123009, 33.619080, 45.715332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285492, 33.263206, 45.798714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859559, -0.294618, 0.417562,
		-0.310086, -0.348794, -0.884415,
		0.406208, -0.889687, 0.208452,
		35.407356, 32.996300, 45.861252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561760, 33.165844, 45.802708>,  <35.123009, 33.619080, 45.715332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561760, 33.165844, 45.802708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850163, 32.931599, 45.950871>,  <35.023205, 32.791050, 46.039768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850163, 32.931599, 45.950871>,  <34.561760, 33.165844, 45.802708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850163, 32.931599, 45.950871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657396, -0.409118, 0.632813,
		-0.219044, -0.699769, -0.679958,
		0.721006, -0.585616, 0.370410,
		35.066463, 32.755913, 46.061993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296833, 32.484585, 45.927704>,  <34.561760, 33.165844, 45.802708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296833, 32.484585, 45.927704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609760, 32.500214, 46.176365>,  <34.797516, 32.509590, 46.325562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609760, 32.500214, 46.176365>,  <34.296833, 32.484585, 45.927704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609760, 32.500214, 46.176365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479121, -0.599995, 0.640663,
		0.398016, -0.799049, -0.450670,
		0.782321, 0.039068, 0.621649,
		34.844456, 32.511932, 46.362858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364662, 31.851021, 46.148991>,  <34.296833, 32.484585, 45.927704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364662, 31.851021, 46.148991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.546043, 32.060310, 46.437607>,  <34.654873, 32.185883, 46.610775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.546043, 32.060310, 46.437607>,  <34.364662, 31.851021, 46.148991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546043, 32.060310, 46.437607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581999, -0.439305, 0.684316,
		0.675026, -0.730240, 0.105312,
		0.453451, 0.523222, 0.721540,
		34.682079, 32.217278, 46.654068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618496, 31.350624, 46.661064>,  <34.364662, 31.851021, 46.148991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618496, 31.350624, 46.661064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608643, 31.700108, 46.855392>,  <34.602730, 31.909798, 46.971989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608643, 31.700108, 46.855392>,  <34.618496, 31.350624, 46.661064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608643, 31.700108, 46.855392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410948, -0.451862, 0.791797,
		0.911326, -0.180144, 0.370180,
		-0.024633, 0.873710, 0.485823,
		34.601254, 31.962221, 47.001141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824783, 30.645424, 46.970028>,  <34.618496, 31.350624, 46.661064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824783, 30.645424, 46.970028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498245, 30.439699, 46.864902>,  <34.302322, 30.316263, 46.801826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498245, 30.439699, 46.864902>,  <34.824783, 30.645424, 46.970028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498245, 30.439699, 46.864902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517791, -0.450093, -0.727536,
		0.255891, -0.729999, 0.633736,
		-0.816341, -0.514313, -0.262812,
		34.253342, 30.285406, 46.786060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059280, 29.994267, 46.949303>,  <34.824783, 30.645424, 46.970028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059280, 29.994267, 46.949303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732136, 30.017557, 46.720318>,  <34.535851, 30.031532, 46.582928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732136, 30.017557, 46.720318>,  <35.059280, 29.994267, 46.949303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732136, 30.017557, 46.720318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509293, -0.389784, -0.767261,
		-0.267811, -0.919064, 0.289136,
		-0.817862, 0.058226, -0.572461,
		34.486778, 30.035025, 46.548580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923988, 29.301855, 46.638153>,  <35.059280, 29.994267, 46.949303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923988, 29.301855, 46.638153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792973, 29.601053, 46.407253>,  <34.714363, 29.780573, 46.268715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792973, 29.601053, 46.407253>,  <34.923988, 29.301855, 46.638153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792973, 29.601053, 46.407253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584203, -0.319834, -0.745931,
		-0.742578, -0.581555, -0.332222,
		-0.327544, 0.747997, -0.577248,
		34.694710, 29.825453, 46.234077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944401, 29.048624, 45.972988>,  <34.923988, 29.301855, 46.638153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944401, 29.048624, 45.972988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880741, 29.434698, 45.889950>,  <34.842545, 29.666342, 45.840126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880741, 29.434698, 45.889950>,  <34.944401, 29.048624, 45.972988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880741, 29.434698, 45.889950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546347, -0.089036, -0.832813,
		-0.822300, -0.245956, -0.513155,
		-0.159146, 0.965183, -0.207592,
		34.832996, 29.724253, 45.827671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803486, 29.135691, 45.190968>,  <34.944401, 29.048624, 45.972988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803486, 29.135691, 45.190968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943836, 29.484606, 45.327202>,  <35.028046, 29.693954, 45.408943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943836, 29.484606, 45.327202>,  <34.803486, 29.135691, 45.190968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943836, 29.484606, 45.327202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404795, 0.186685, -0.895148,
		-0.844408, 0.451958, -0.287593,
		0.350880, 0.872286, 0.340588,
		35.049099, 29.746292, 45.429379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794395, 29.491804, 44.612236>,  <34.803486, 29.135691, 45.190968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794395, 29.491804, 44.612236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046524, 29.714157, 44.829010>,  <35.197800, 29.847569, 44.959076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046524, 29.714157, 44.829010>,  <34.794395, 29.491804, 44.612236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046524, 29.714157, 44.829010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464174, 0.289698, -0.837029,
		-0.622288, 0.779146, -0.075425,
		0.630318, 0.555883, 0.541935,
		35.235619, 29.880922, 44.991592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779095, 30.148958, 44.380196>,  <34.794395, 29.491804, 44.612236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779095, 30.148958, 44.380196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141907, 30.124735, 44.546871>,  <35.359592, 30.110201, 44.646877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141907, 30.124735, 44.546871>,  <34.779095, 30.148958, 44.380196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141907, 30.124735, 44.546871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405717, 0.390462, -0.826398,
		-0.112656, 0.918625, 0.378730,
		0.907030, -0.060559, 0.416689,
		35.414017, 30.106567, 44.671879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.095703, 26.975687, 48.465160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.393070, 27.226254, 48.371414>,  <35.571491, 27.376593, 48.315166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.393070, 27.226254, 48.371414>,  <35.095703, 26.975687, 48.465160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393070, 27.226254, 48.371414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178024, -0.152440, -0.972147,
		-0.644695, 0.764438, -0.001810,
		0.743422, 0.626416, -0.234366,
		35.616096, 27.414179, 48.301105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901287, 27.436974, 47.874817>,  <35.095703, 26.975687, 48.465160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901287, 27.436974, 47.874817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300728, 27.415878, 47.875858>,  <35.540394, 27.403221, 47.876484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300728, 27.415878, 47.875858>,  <34.901287, 27.436974, 47.874817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300728, 27.415878, 47.875858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001573, -0.019488, -0.999809,
		0.052781, 0.998418, -0.019378,
		0.998605, -0.052740, 0.002599,
		35.600307, 27.400057, 47.876637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164738, 28.137909, 47.447575>,  <34.901287, 27.436974, 47.874817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164738, 28.137909, 47.447575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.423912, 27.833399, 47.457657>,  <35.579418, 27.650694, 47.463707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.423912, 27.833399, 47.457657>,  <35.164738, 28.137909, 47.447575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423912, 27.833399, 47.457657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262589, 0.192184, -0.945575,
		0.714997, 0.619295, 0.324425,
		0.647940, -0.761274, 0.025209,
		35.618294, 27.605017, 47.465221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760010, 28.359892, 47.058727>,  <35.164738, 28.137909, 47.447575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760010, 28.359892, 47.058727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.833336, 27.967060, 47.076229>,  <35.877331, 27.731361, 47.086731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.833336, 27.967060, 47.076229>,  <35.760010, 28.359892, 47.058727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833336, 27.967060, 47.076229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218160, -0.002761, -0.975909,
		0.958542, 0.188443, 0.213745,
		0.183314, -0.982080, 0.043757,
		35.888329, 27.672436, 47.089355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342560, 28.297209, 46.622913>,  <35.760010, 28.359892, 47.058727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342560, 28.297209, 46.622913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.178635, 27.934126, 46.658966>,  <36.080280, 27.716276, 46.680595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.178635, 27.934126, 46.658966>,  <36.342560, 28.297209, 46.622913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178635, 27.934126, 46.658966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349866, -0.247665, -0.903469,
		0.842405, -0.338721, 0.419072,
		-0.409813, -0.907706, 0.090127,
		36.055691, 27.661814, 46.686005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816753, 27.894505, 46.284821>,  <36.342560, 28.297209, 46.622913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816753, 27.894505, 46.284821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.525948, 27.621202, 46.312004>,  <36.351463, 27.457222, 46.328316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.525948, 27.621202, 46.312004>,  <36.816753, 27.894505, 46.284821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525948, 27.621202, 46.312004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328475, -0.433006, -0.839410,
		0.602959, -0.587936, 0.539232,
		-0.727011, -0.683255, 0.067963,
		36.307846, 27.416225, 46.332394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166939, 27.175838, 46.046947>,  <36.816753, 27.894505, 46.284821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166939, 27.175838, 46.046947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.772480, 27.198484, 45.984573>,  <36.535805, 27.212072, 45.947151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.772480, 27.198484, 45.984573>,  <37.166939, 27.175838, 46.046947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772480, 27.198484, 45.984573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131583, -0.305463, -0.943069,
		-0.101023, -0.950519, 0.293781,
		-0.986144, 0.056615, -0.155931,
		36.476635, 27.215469, 45.937794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076786, 26.613504, 45.537636>,  <37.166939, 27.175838, 46.046947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076786, 26.613504, 45.537636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.709881, 26.772728, 45.532372>,  <36.489738, 26.868261, 45.529213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.709881, 26.772728, 45.532372>,  <37.076786, 26.613504, 45.537636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709881, 26.772728, 45.532372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093338, -0.246972, -0.964517,
		-0.387185, -0.883490, 0.263692,
		-0.917265, 0.398059, -0.013161,
		36.434700, 26.892145, 45.528423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675106, 26.079340, 45.189262>,  <37.076786, 26.613504, 45.537636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675106, 26.079340, 45.189262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.510357, 26.440186, 45.137810>,  <36.411507, 26.656693, 45.106937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.510357, 26.440186, 45.137810>,  <36.675106, 26.079340, 45.189262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510357, 26.440186, 45.137810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049442, -0.163076, -0.985374,
		-0.909898, -0.399492, 0.111769,
		-0.411876, 0.902115, -0.128631,
		36.386795, 26.710819, 45.099220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198620, 26.006094, 44.666626>,  <36.675106, 26.079340, 45.189262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198620, 26.006094, 44.666626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.284245, 26.396822, 44.666901>,  <36.335617, 26.631258, 44.667065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.284245, 26.396822, 44.666901>,  <36.198620, 26.006094, 44.666626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284245, 26.396822, 44.666901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095085, -0.020138, -0.995266,
		-0.972182, 0.213111, -0.097192,
		0.214059, 0.976821, 0.000685,
		36.348461, 26.689869, 44.667107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681454, 26.342163, 44.096146>,  <36.198620, 26.006094, 44.666626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681454, 26.342163, 44.096146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.004532, 26.572025, 44.148918>,  <36.198380, 26.709942, 44.180580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.004532, 26.572025, 44.148918>,  <35.681454, 26.342163, 44.096146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004532, 26.572025, 44.148918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116284, 0.064109, -0.991145,
		-0.578025, 0.815881, -0.015043,
		0.807692, 0.574655, 0.131931,
		36.246838, 26.744421, 44.188496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619537, 26.769123, 43.592388>,  <35.681454, 26.342163, 44.096146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619537, 26.769123, 43.592388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.000713, 26.821190, 43.701912>,  <36.229420, 26.852430, 43.767624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.000713, 26.821190, 43.701912>,  <35.619537, 26.769123, 43.592388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000713, 26.821190, 43.701912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260199, 0.112359, -0.958995,
		-0.155595, 0.985105, 0.073202,
		0.952936, 0.130168, 0.273806,
		36.286594, 26.860241, 43.784054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102806, 27.312347, 43.717262>,  <35.619537, 26.769123, 43.592388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102806, 27.312347, 43.717262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.759441, 27.438805, 43.555679>,  <34.553421, 27.514679, 43.458729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.759441, 27.438805, 43.555679>,  <35.102806, 27.312347, 43.717262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759441, 27.438805, 43.555679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361650, 0.185485, 0.913676,
		0.363780, 0.930403, -0.044890,
		-0.858413, 0.316143, -0.403956,
		34.501919, 27.533648, 43.434494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940823, 28.038248, 44.019966>,  <35.102806, 27.312347, 43.717262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940823, 28.038248, 44.019966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627903, 27.823072, 43.894344>,  <34.440151, 27.693966, 43.818974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627903, 27.823072, 43.894344>,  <34.940823, 28.038248, 44.019966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627903, 27.823072, 43.894344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415561, 0.075135, 0.906457,
		-0.464023, 0.839628, -0.282325,
		-0.782299, -0.537940, -0.314052,
		34.393211, 27.661690, 43.800129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469902, 28.227005, 44.483570>,  <34.940823, 28.038248, 44.019966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469902, 28.227005, 44.483570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314484, 27.891478, 44.331032>,  <34.221233, 27.690161, 44.239510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314484, 27.891478, 44.331032>,  <34.469902, 28.227005, 44.483570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314484, 27.891478, 44.331032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502094, -0.154281, 0.850940,
		-0.772617, 0.522095, -0.361221,
		-0.388542, -0.838817, -0.381341,
		34.197922, 27.639832, 44.216629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825844, 28.286957, 44.708317>,  <34.469902, 28.227005, 44.483570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825844, 28.286957, 44.708317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863998, 27.900015, 44.614399>,  <33.886890, 27.667850, 44.558048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863998, 27.900015, 44.614399>,  <33.825844, 28.286957, 44.708317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863998, 27.900015, 44.614399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562791, -0.246964, 0.788844,
		-0.821077, 0.056896, -0.567975,
		0.095387, -0.967353, -0.234797,
		33.892616, 27.609810, 44.543961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215385, 27.946732, 44.636719>,  <33.825844, 28.286957, 44.708317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215385, 27.946732, 44.636719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.452396, 27.629236, 44.691700>,  <33.594601, 27.438740, 44.724689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.452396, 27.629236, 44.691700>,  <33.215385, 27.946732, 44.636719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452396, 27.629236, 44.691700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634474, -0.354711, 0.686747,
		-0.496342, -0.494125, -0.713782,
		0.592525, -0.793738, 0.137451,
		33.630154, 27.391115, 44.732937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757519, 27.467817, 44.786518>,  <33.215385, 27.946732, 44.636719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757519, 27.467817, 44.786518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098949, 27.301661, 44.912289>,  <33.303806, 27.201967, 44.987751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098949, 27.301661, 44.912289>,  <32.757519, 27.467817, 44.786518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098949, 27.301661, 44.912289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469639, -0.352276, 0.809531,
		-0.225505, -0.838662, -0.495776,
		0.853573, -0.415389, 0.314428,
		33.355022, 27.177044, 45.006618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618984, 26.720907, 45.095695>,  <32.757519, 27.467817, 44.786518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618984, 26.720907, 45.095695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964680, 26.849483, 45.250496>,  <33.172096, 26.926630, 45.343376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964680, 26.849483, 45.250496>,  <32.618984, 26.720907, 45.095695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964680, 26.849483, 45.250496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268041, -0.356765, 0.894915,
		0.425731, -0.877151, -0.222170,
		0.864237, 0.321442, 0.386999,
		33.223949, 26.945915, 45.366596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766121, 26.171837, 45.525101>,  <32.618984, 26.720907, 45.095695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766121, 26.171837, 45.525101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.982151, 26.489477, 45.636620>,  <33.111767, 26.680061, 45.703529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.982151, 26.489477, 45.636620>,  <32.766121, 26.171837, 45.525101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982151, 26.489477, 45.636620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141681, -0.240749, 0.960191,
		0.829609, -0.558071, -0.017513,
		0.540071, 0.794101, 0.278795,
		33.144173, 26.727707, 45.720257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131252, 25.915903, 45.969231>,  <32.766121, 26.171837, 45.525101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131252, 25.915903, 45.969231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.147072, 26.308220, 46.045631>,  <33.156563, 26.543610, 46.091473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.147072, 26.308220, 46.045631>,  <33.131252, 25.915903, 45.969231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147072, 26.308220, 46.045631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279977, -0.172618, 0.944360,
		0.959192, -0.090826, 0.267773,
		0.039550, 0.980792, 0.191003,
		33.158936, 26.602457, 46.102932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572426, 26.030437, 46.567844>,  <33.131252, 25.915903, 45.969231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572426, 26.030437, 46.567844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313725, 26.334494, 46.542862>,  <33.158504, 26.516928, 46.527874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313725, 26.334494, 46.542862>,  <33.572426, 26.030437, 46.567844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313725, 26.334494, 46.542862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245458, -0.129916, 0.960662,
		0.722124, 0.636639, 0.270605,
		-0.646751, 0.760140, -0.062453,
		33.119698, 26.562536, 46.524128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571945, 26.296236, 47.208614>,  <33.572426, 26.030437, 46.567844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571945, 26.296236, 47.208614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.251663, 26.491016, 47.069038>,  <33.059494, 26.607885, 46.985294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.251663, 26.491016, 47.069038>,  <33.571945, 26.296236, 47.208614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251663, 26.491016, 47.069038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342073, 0.106530, 0.933615,
		0.491797, 0.866908, 0.081274,
		-0.800700, 0.486951, -0.348937,
		33.011452, 26.637102, 46.964355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555927, 27.006222, 47.498627>,  <33.571945, 26.296236, 47.208614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555927, 27.006222, 47.498627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.189163, 26.901852, 47.377831>,  <32.969105, 26.839230, 47.305351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.189163, 26.901852, 47.377831>,  <33.555927, 27.006222, 47.498627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189163, 26.901852, 47.377831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373699, 0.295653, 0.879169,
		-0.140114, 0.918970, -0.368594,
		-0.916906, -0.260928, -0.301993,
		32.914093, 26.823574, 47.287231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139568, 27.560251, 47.668560>,  <33.555927, 27.006222, 47.498627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139568, 27.560251, 47.668560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.874966, 27.260294, 47.665184>,  <32.716206, 27.080320, 47.663158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.874966, 27.260294, 47.665184>,  <33.139568, 27.560251, 47.668560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874966, 27.260294, 47.665184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403157, 0.346105, 0.847158,
		-0.632356, 0.563802, -0.531275,
		-0.661506, -0.749893, -0.008439,
		32.676514, 27.035326, 47.662651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670685, 27.862726, 48.065929>,  <33.139568, 27.560251, 47.668560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670685, 27.862726, 48.065929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.543167, 27.484756, 48.036297>,  <32.466656, 27.257975, 48.018517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.543167, 27.484756, 48.036297>,  <32.670685, 27.862726, 48.065929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543167, 27.484756, 48.036297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421175, 0.071206, 0.904180,
		-0.849106, 0.319450, -0.420679,
		-0.318795, -0.944924, -0.074083,
		32.447529, 27.201279, 48.014072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396492, 28.684425, 48.054432>,  <32.670685, 27.862726, 48.065929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396492, 28.684425, 48.054432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.290119, 29.017454, 48.248795>,  <32.226295, 29.217272, 48.365414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.290119, 29.017454, 48.248795>,  <32.396492, 28.684425, 48.054432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290119, 29.017454, 48.248795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494737, 0.550487, -0.672458,
		-0.827353, 0.061565, -0.558298,
		-0.265936, 0.832571, 0.485905,
		32.210339, 29.267225, 48.394566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021568, 29.157454, 47.659527>,  <32.396492, 28.684425, 48.054432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021568, 29.157454, 47.659527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.204304, 29.371967, 47.943413>,  <32.313946, 29.500675, 48.113743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.204304, 29.371967, 47.943413>,  <32.021568, 29.157454, 47.659527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204304, 29.371967, 47.943413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424051, 0.570056, -0.703716,
		-0.781969, 0.622442, 0.033012,
		0.456841, 0.536286, 0.709714,
		32.341354, 29.532852, 48.156326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985874, 29.894680, 47.509571>,  <32.021568, 29.157454, 47.659527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985874, 29.894680, 47.509571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310059, 29.839241, 47.737236>,  <32.504570, 29.805979, 47.873833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310059, 29.839241, 47.737236>,  <31.985874, 29.894680, 47.509571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310059, 29.839241, 47.737236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538566, 0.558485, -0.630905,
		-0.230426, 0.817854, 0.527275,
		0.810463, -0.138596, 0.569158,
		32.553196, 29.797663, 47.907982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263737, 30.612606, 47.598595>,  <31.985874, 29.894680, 47.509571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263737, 30.612606, 47.598595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.550919, 30.341259, 47.661015>,  <32.723228, 30.178452, 47.698467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.550919, 30.341259, 47.661015>,  <32.263737, 30.612606, 47.598595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550919, 30.341259, 47.661015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606968, 0.500353, -0.617444,
		0.340772, 0.538019, 0.770980,
		0.717958, -0.678368, 0.156054,
		32.766308, 30.137749, 47.707832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907192, 30.936825, 47.605873>,  <32.263737, 30.612606, 47.598595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907192, 30.936825, 47.605873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020973, 30.561110, 47.529118>,  <33.089241, 30.335680, 47.483067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020973, 30.561110, 47.529118>,  <32.907192, 30.936825, 47.605873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020973, 30.561110, 47.529118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820673, 0.342040, -0.457717,
		0.495562, -0.027275, 0.868144,
		0.284455, -0.939290, -0.191886,
		33.106308, 30.279324, 47.471550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566059, 30.967670, 47.821957>,  <32.907192, 30.936825, 47.605873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566059, 30.967670, 47.821957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.522430, 30.659889, 47.570229>,  <33.496254, 30.475220, 47.419193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.522430, 30.659889, 47.570229>,  <33.566059, 30.967670, 47.821957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522430, 30.659889, 47.570229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781687, 0.324699, -0.532480,
		0.614059, -0.550009, 0.566058,
		-0.109070, -0.769455, -0.629320,
		33.489708, 30.429052, 47.381432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246849, 30.603098, 47.771305>,  <33.566059, 30.967670, 47.821957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246849, 30.603098, 47.771305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039597, 30.456701, 47.462090>,  <33.915245, 30.368864, 47.276558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039597, 30.456701, 47.462090>,  <34.246849, 30.603098, 47.771305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039597, 30.456701, 47.462090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784622, 0.156380, -0.599928,
		0.340457, -0.917385, 0.206140,
		-0.518129, -0.365992, -0.773041,
		33.884159, 30.346903, 47.230179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512379, 31.222069, 47.401115>,  <34.246849, 30.603098, 47.771305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512379, 31.222069, 47.401115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.463589, 31.618603, 47.420628>,  <34.434315, 31.856524, 47.432335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.463589, 31.618603, 47.420628>,  <34.512379, 31.222069, 47.401115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463589, 31.618603, 47.420628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488427, -0.102738, 0.866536,
		0.864039, 0.081864, 0.496725,
		-0.121971, 0.991334, 0.048785,
		34.426998, 31.916002, 47.435265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652546, 31.372324, 48.063766>,  <34.512379, 31.222069, 47.401115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652546, 31.372324, 48.063766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.444283, 31.702053, 47.974857>,  <34.319324, 31.899891, 47.921513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.444283, 31.702053, 47.974857>,  <34.652546, 31.372324, 48.063766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444283, 31.702053, 47.974857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296668, 0.069444, 0.952453,
		0.800565, 0.561843, 0.208394,
		-0.520657, 0.824324, -0.222275,
		34.288086, 31.949350, 47.908176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849812, 31.813457, 48.428616>,  <34.652546, 31.372324, 48.063766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849812, 31.813457, 48.428616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476788, 31.942738, 48.364273>,  <34.252972, 32.020306, 48.325668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476788, 31.942738, 48.364273>,  <34.849812, 31.813457, 48.428616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476788, 31.942738, 48.364273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159724, 0.030206, 0.986699,
		0.323759, 0.945849, 0.023453,
		-0.932560, 0.323199, -0.160854,
		34.197018, 32.039696, 48.316017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683853, 32.298618, 49.004921>,  <34.849812, 31.813457, 48.428616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683853, 32.298618, 49.004921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.346828, 32.194012, 48.816582>,  <34.144615, 32.131248, 48.703579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.346828, 32.194012, 48.816582>,  <34.683853, 32.298618, 49.004921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346828, 32.194012, 48.816582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495139, 0.032073, 0.868222,
		-0.211955, 0.964666, -0.156512,
		-0.842563, -0.261519, -0.470845,
		34.094059, 32.115555, 48.675327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145653, 32.720364, 49.348797>,  <34.683853, 32.298618, 49.004921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145653, 32.720364, 49.348797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.979782, 32.416813, 49.147942>,  <33.880260, 32.234680, 49.027428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.979782, 32.416813, 49.147942>,  <34.145653, 32.720364, 49.348797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979782, 32.416813, 49.147942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513450, -0.260454, 0.817638,
		-0.751274, 0.596879, -0.281642,
		-0.414677, -0.758879, -0.502140,
		33.855377, 32.189148, 48.997299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516315, 32.683197, 49.729584>,  <34.145653, 32.720364, 49.348797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516315, 32.683197, 49.729584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566425, 32.332829, 49.543221>,  <33.596493, 32.122608, 49.431400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566425, 32.332829, 49.543221>,  <33.516315, 32.683197, 49.729584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566425, 32.332829, 49.543221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410329, -0.473309, 0.779493,
		-0.903292, 0.093523, -0.418710,
		0.125278, -0.875918, -0.465911,
		33.604008, 32.070053, 49.403446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842003, 32.211277, 49.823544>,  <33.516315, 32.683197, 49.729584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842003, 32.211277, 49.823544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124592, 31.955523, 49.702168>,  <33.294144, 31.802069, 49.629341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124592, 31.955523, 49.702168>,  <32.842003, 32.211277, 49.823544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124592, 31.955523, 49.702168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302732, -0.660548, 0.687044,
		-0.639720, -0.393522, -0.660226,
		0.706478, -0.639388, -0.303434,
		33.336533, 31.763706, 49.611137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566719, 31.580027, 49.799377>,  <32.842003, 32.211277, 49.823544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566719, 31.580027, 49.799377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.955616, 31.495790, 49.840153>,  <33.188953, 31.445248, 49.864616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.955616, 31.495790, 49.840153>,  <32.566719, 31.580027, 49.799377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955616, 31.495790, 49.840153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222343, -0.696037, 0.682713,
		-0.072823, -0.686428, -0.723542,
		0.972245, -0.210591, 0.101935,
		33.247288, 31.432613, 49.870731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538532, 30.921877, 49.885254>,  <32.566719, 31.580027, 49.799377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538532, 30.921877, 49.885254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882278, 31.025492, 50.061611>,  <33.088528, 31.087660, 50.167427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882278, 31.025492, 50.061611>,  <32.538532, 30.921877, 49.885254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882278, 31.025492, 50.061611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174368, -0.662085, 0.728861,
		0.480710, -0.703238, -0.523808,
		0.859368, 0.259036, 0.440893,
		33.140087, 31.103203, 50.193878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<40.780693, 34.224762, 36.322773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024761, 34.310036, 36.627991>,  <41.171204, 34.361198, 36.811123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024761, 34.310036, 36.627991>,  <40.780693, 34.224762, 36.322773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024761, 34.310036, 36.627991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707871, -0.285859, 0.645913,
		0.355822, -0.934258, -0.023517,
		0.610171, 0.213183, 0.763049,
		41.207813, 34.373989, 36.856907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676384, 33.657230, 36.836227>,  <40.780693, 34.224762, 36.322773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676384, 33.657230, 36.836227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816093, 33.982803, 37.021927>,  <40.899918, 34.178146, 37.133347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816093, 33.982803, 37.021927>,  <40.676384, 33.657230, 36.836227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816093, 33.982803, 37.021927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699302, -0.103357, 0.707314,
		0.623688, -0.571696, 0.533083,
		0.349271, 0.813929, 0.464251,
		40.920876, 34.226982, 37.161201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624779, 33.514679, 37.530819>,  <40.676384, 33.657230, 36.836227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624779, 33.514679, 37.530819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656776, 33.913376, 37.535004>,  <40.675976, 34.152596, 37.537514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656776, 33.913376, 37.535004>,  <40.624779, 33.514679, 37.530819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656776, 33.913376, 37.535004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561177, 0.036360, 0.826897,
		0.823821, -0.072012, 0.562257,
		0.079990, 0.996741, 0.010457,
		40.680775, 34.212399, 37.538139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812874, 33.704895, 38.207928>,  <40.624779, 33.514679, 37.530819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812874, 33.704895, 38.207928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637402, 34.018555, 38.032352>,  <40.532120, 34.206749, 37.927006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637402, 34.018555, 38.032352>,  <40.812874, 33.704895, 38.207928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637402, 34.018555, 38.032352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538257, 0.161858, 0.827092,
		0.719610, 0.599093, 0.351069,
		-0.438681, 0.784149, -0.438941,
		40.505798, 34.253799, 37.900669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681919, 34.165306, 38.762428>,  <40.812874, 33.704895, 38.207928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681919, 34.165306, 38.762428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436661, 34.337906, 38.497746>,  <40.289505, 34.441467, 38.338936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436661, 34.337906, 38.497746>,  <40.681919, 34.165306, 38.762428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436661, 34.337906, 38.497746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693199, 0.107814, 0.712636,
		0.378843, 0.895648, 0.233009,
		-0.613150, 0.431499, -0.661707,
		40.252716, 34.467354, 38.299232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447575, 34.696121, 39.108730>,  <40.681919, 34.165306, 38.762428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447575, 34.696121, 39.108730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190731, 34.648830, 38.805752>,  <40.036625, 34.620457, 38.623966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190731, 34.648830, 38.805752>,  <40.447575, 34.696121, 39.108730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190731, 34.648830, 38.805752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766518, 0.114889, 0.631863,
		0.012316, 0.986317, -0.164398,
		-0.642105, -0.118232, -0.757445,
		39.998100, 34.613361, 38.578518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013718, 35.142826, 39.197861>,  <40.447575, 34.696121, 39.108730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013718, 35.142826, 39.197861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811565, 34.928749, 38.927109>,  <39.690273, 34.800304, 38.764660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811565, 34.928749, 38.927109>,  <40.013718, 35.142826, 39.197861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811565, 34.928749, 38.927109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841771, 0.133262, 0.523129,
		-0.189772, 0.834154, -0.517855,
		-0.505380, -0.535190, -0.676877,
		39.659950, 34.768192, 38.724045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435116, 35.525471, 38.923058>,  <40.013718, 35.142826, 39.197861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435116, 35.525471, 38.923058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323513, 35.143051, 38.887009>,  <39.256550, 34.913601, 38.865379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323513, 35.143051, 38.887009>,  <39.435116, 35.525471, 38.923058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323513, 35.143051, 38.887009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772229, 0.167595, 0.612842,
		-0.570803, 0.240585, -0.785050,
		-0.279010, -0.956050, -0.090123,
		39.239811, 34.856236, 38.859970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669106, 35.469383, 38.838726>,  <39.435116, 35.525471, 38.923058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669106, 35.469383, 38.838726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808678, 35.120594, 38.976078>,  <38.892422, 34.911320, 39.058487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808678, 35.120594, 38.976078>,  <38.669106, 35.469383, 38.838726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808678, 35.120594, 38.976078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657615, 0.033220, 0.752622,
		-0.667674, -0.488424, -0.561831,
		0.348934, -0.871974, 0.343375,
		38.913357, 34.859001, 39.079090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088776, 35.173115, 38.968697>,  <38.669106, 35.469383, 38.838726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088776, 35.173115, 38.968697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321575, 34.923424, 39.177166>,  <38.461254, 34.773609, 39.302250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321575, 34.923424, 39.177166>,  <38.088776, 35.173115, 38.968697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321575, 34.923424, 39.177166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670759, -0.006167, 0.741649,
		-0.459741, -0.781221, -0.422293,
		0.581997, -0.624224, 0.521176,
		38.496174, 34.736156, 39.333519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706127, 34.609913, 39.232071>,  <38.088776, 35.173115, 38.968697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706127, 34.609913, 39.232071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025974, 34.593796, 39.471729>,  <38.217884, 34.584126, 39.615524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025974, 34.593796, 39.471729>,  <37.706127, 34.609913, 39.232071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025974, 34.593796, 39.471729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598689, -0.130977, 0.790200,
		0.046640, -0.990566, -0.128851,
		0.799622, -0.040287, 0.599151,
		38.265862, 34.581711, 39.651474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796925, 33.941795, 39.615868>,  <37.706127, 34.609913, 39.232071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796925, 33.941795, 39.615868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961918, 34.239681, 39.825726>,  <38.060913, 34.418411, 39.951641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961918, 34.239681, 39.825726>,  <37.796925, 33.941795, 39.615868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961918, 34.239681, 39.825726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540169, -0.263802, 0.799141,
		0.733534, -0.613034, 0.293457,
		0.412486, 0.744714, 0.524650,
		38.085663, 34.463097, 39.983120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530613, 33.220234, 39.739449>,  <37.796925, 33.941795, 39.615868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530613, 33.220234, 39.739449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203144, 33.002090, 39.667484>,  <37.006664, 32.871204, 39.624306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203144, 33.002090, 39.667484>,  <37.530613, 33.220234, 39.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203144, 33.002090, 39.667484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207726, 0.573301, -0.792576,
		0.535374, -0.611488, -0.582629,
		-0.818673, -0.545351, -0.179909,
		36.957542, 32.838486, 39.613510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637638, 32.934731, 39.104500>,  <37.530613, 33.220234, 39.739449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637638, 32.934731, 39.104500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241989, 32.941338, 39.162956>,  <37.004601, 32.945301, 39.198029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241989, 32.941338, 39.162956>,  <37.637638, 32.934731, 39.104500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241989, 32.941338, 39.162956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101475, 0.642607, -0.759446,
		-0.106451, -0.766018, -0.633944,
		-0.989127, 0.016514, 0.146138,
		36.945251, 32.946293, 39.206799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272396, 32.709953, 38.446770>,  <37.637638, 32.934731, 39.104500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272396, 32.709953, 38.446770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986725, 32.876633, 38.671738>,  <36.815323, 32.976639, 38.806717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986725, 32.876633, 38.671738>,  <37.272396, 32.709953, 38.446770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986725, 32.876633, 38.671738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503299, 0.252705, -0.826335,
		-0.486459, -0.873214, 0.029248,
		-0.714177, 0.416698, 0.562418,
		36.772472, 33.001640, 38.840462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685261, 32.587109, 38.084003>,  <37.272396, 32.709953, 38.446770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685261, 32.587109, 38.084003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587772, 32.871239, 38.348137>,  <36.529282, 33.041718, 38.506618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587772, 32.871239, 38.348137>,  <36.685261, 32.587109, 38.084003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587772, 32.871239, 38.348137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554681, 0.456427, -0.695703,
		-0.795569, -0.535831, 0.282764,
		-0.243718, 0.710323, 0.660335,
		36.514656, 33.084335, 38.546238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963223, 32.667038, 38.074913>,  <36.685261, 32.587109, 38.084003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963223, 32.667038, 38.074913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108742, 33.009815, 38.220951>,  <36.196053, 33.215481, 38.308575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108742, 33.009815, 38.220951>,  <35.963223, 32.667038, 38.074913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108742, 33.009815, 38.220951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468114, 0.507061, -0.723711,
		-0.805306, 0.092379, 0.585617,
		0.363800, 0.856945, 0.365095,
		36.217880, 33.266899, 38.330479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373596, 33.084511, 38.027176>,  <35.963223, 32.667038, 38.074913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373596, 33.084511, 38.027176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690216, 33.327812, 38.050766>,  <35.880188, 33.473793, 38.064919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690216, 33.327812, 38.050766>,  <35.373596, 33.084511, 38.027176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690216, 33.327812, 38.050766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431716, 0.624880, -0.650496,
		-0.432520, 0.489439, 0.757216,
		0.791548, 0.608255, 0.058974,
		35.927681, 33.510288, 38.068459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094231, 33.780369, 38.023407>,  <35.373596, 33.084511, 38.027176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094231, 33.780369, 38.023407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479736, 33.780754, 37.916706>,  <35.711040, 33.780983, 37.852684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479736, 33.780754, 37.916706>,  <35.094231, 33.780369, 38.023407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479736, 33.780754, 37.916706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227471, 0.525319, -0.819937,
		0.139344, 0.850905, 0.506502,
		0.963764, 0.000961, -0.266756,
		35.768864, 33.781044, 37.836678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213100, 34.463974, 37.841583>,  <35.094231, 33.780369, 38.023407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213100, 34.463974, 37.841583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501339, 34.252895, 37.661686>,  <35.674282, 34.126247, 37.553745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501339, 34.252895, 37.661686>,  <35.213100, 34.463974, 37.841583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501339, 34.252895, 37.661686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266073, 0.388531, -0.882184,
		0.640265, 0.755368, 0.139570,
		0.720601, -0.527695, -0.449746,
		35.717518, 34.094585, 37.526764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544121, 34.844387, 37.415886>,  <35.213100, 34.463974, 37.841583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544121, 34.844387, 37.415886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644264, 34.490349, 37.258949>,  <35.704350, 34.277927, 37.164787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644264, 34.490349, 37.258949>,  <35.544121, 34.844387, 37.415886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644264, 34.490349, 37.258949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352342, 0.294158, -0.888441,
		0.901763, 0.360663, -0.238212,
		0.250356, -0.885095, -0.392337,
		35.719372, 34.224819, 37.141247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629093, 35.050468, 36.743252>,  <35.544121, 34.844387, 37.415886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629093, 35.050468, 36.743252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616611, 34.651203, 36.722481>,  <35.609123, 34.411644, 36.710018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616611, 34.651203, 36.722481>,  <35.629093, 35.050468, 36.743252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616611, 34.651203, 36.722481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343274, 0.059495, -0.937349,
		0.938717, -0.011421, -0.344500,
		-0.031202, -0.998163, -0.051929,
		35.607250, 34.351753, 36.706902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892036, 34.934841, 36.048225>,  <35.629093, 35.050468, 36.743252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892036, 34.934841, 36.048225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677017, 34.612724, 36.148262>,  <35.548004, 34.419453, 36.208282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677017, 34.612724, 36.148262>,  <35.892036, 34.934841, 36.048225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677017, 34.612724, 36.148262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351211, -0.055816, -0.934631,
		0.766611, -0.590244, -0.252824,
		-0.537549, -0.805293, 0.250089,
		35.515751, 34.371136, 36.223289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030766, 34.412537, 35.431694>,  <35.892036, 34.934841, 36.048225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030766, 34.412537, 35.431694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691467, 34.305370, 35.614426>,  <35.487888, 34.241070, 35.724064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691467, 34.305370, 35.614426>,  <36.030766, 34.412537, 35.431694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691467, 34.305370, 35.614426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450178, -0.089582, -0.888434,
		0.278948, -0.959269, -0.044621,
		-0.848249, -0.267914, 0.456831,
		35.436993, 34.224995, 35.751476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832272, 33.795349, 35.103786>,  <36.030766, 34.412537, 35.431694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832272, 33.795349, 35.103786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489014, 33.914265, 35.271217>,  <35.283058, 33.985615, 35.371674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489014, 33.914265, 35.271217>,  <35.832272, 33.795349, 35.103786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489014, 33.914265, 35.271217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503585, -0.328699, -0.798974,
		-0.099938, -0.896425, 0.431781,
		-0.858146, 0.297286, 0.418576,
		35.231571, 34.003452, 35.396790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304150, 33.242062, 34.910198>,  <35.832272, 33.795349, 35.103786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304150, 33.242062, 34.910198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077969, 33.561546, 34.992485>,  <34.942261, 33.753239, 35.041859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077969, 33.561546, 34.992485>,  <35.304150, 33.242062, 34.910198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077969, 33.561546, 34.992485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544309, -0.173978, -0.820646,
		-0.619671, -0.576010, 0.533124,
		-0.565452, 0.798714, 0.205718,
		34.908333, 33.801159, 35.054199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492374, 33.171307, 34.861092>,  <35.304150, 33.242062, 34.910198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492374, 33.171307, 34.861092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561066, 33.563438, 34.822186>,  <34.602280, 33.798717, 34.798840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561066, 33.563438, 34.822186>,  <34.492374, 33.171307, 34.861092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561066, 33.563438, 34.822186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566275, 0.017437, -0.824032,
		-0.806127, 0.196590, 0.558131,
		0.171729, 0.980330, -0.097268,
		34.612583, 33.857536, 34.793007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900139, 32.626663, 34.637535>,  <34.492374, 33.171307, 34.861092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900139, 32.626663, 34.637535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803986, 32.248817, 34.726906>,  <34.746296, 32.022110, 34.780529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803986, 32.248817, 34.726906>,  <34.900139, 32.626663, 34.637535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803986, 32.248817, 34.726906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787737, -0.055348, 0.613520,
		-0.567174, 0.323479, 0.757413,
		-0.240382, -0.944615, 0.223425,
		34.731873, 31.965433, 34.793934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238132, 32.015564, 34.401634>,  <34.900139, 32.626663, 34.637535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238132, 32.015564, 34.401634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130066, 32.004932, 34.786613>,  <35.065228, 31.998552, 35.017601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130066, 32.004932, 34.786613>,  <35.238132, 32.015564, 34.401634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130066, 32.004932, 34.786613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685163, -0.707600, 0.172785,
		0.676434, 0.706113, 0.209383,
		-0.270165, -0.026584, 0.962447,
		35.049015, 31.996958, 35.075348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539886, 31.434603, 34.428421>,  <35.238132, 32.015564, 34.401634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539886, 31.434603, 34.428421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922764, 31.472322, 34.537880>,  <36.152493, 31.494953, 34.603558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922764, 31.472322, 34.537880>,  <35.539886, 31.434603, 34.428421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922764, 31.472322, 34.537880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153467, -0.636262, 0.756054,
		0.245408, -0.765688, -0.594556,
		0.957195, 0.094297, 0.273652,
		36.209923, 31.500612, 34.619976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810211, 30.769760, 34.531612>,  <35.539886, 31.434603, 34.428421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810211, 30.769760, 34.531612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028831, 31.019600, 34.754738>,  <36.160004, 31.169504, 34.888615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028831, 31.019600, 34.754738>,  <35.810211, 30.769760, 34.531612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028831, 31.019600, 34.754738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184645, -0.559829, 0.807774,
		0.816816, -0.544486, -0.190645,
		0.546551, 0.624601, 0.557814,
		36.192795, 31.206980, 34.922081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324890, 30.344889, 34.848721>,  <35.810211, 30.769760, 34.531612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324890, 30.344889, 34.848721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288528, 30.678877, 35.065815>,  <36.266712, 30.879271, 35.196072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288528, 30.678877, 35.065815>,  <36.324890, 30.344889, 34.848721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288528, 30.678877, 35.065815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118716, -0.550190, 0.826558,
		0.988758, 0.010705, 0.149138,
		-0.090902, 0.834971, 0.542734,
		36.261257, 30.929369, 35.228634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653625, 30.201265, 35.459888>,  <36.324890, 30.344889, 34.848721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653625, 30.201265, 35.459888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429810, 30.514261, 35.569160>,  <36.295521, 30.702059, 35.634724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429810, 30.514261, 35.569160>,  <36.653625, 30.201265, 35.459888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429810, 30.514261, 35.569160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193955, -0.444080, 0.874742,
		0.805792, 0.436464, 0.400247,
		-0.559536, 0.782491, 0.273182,
		36.261948, 30.749008, 35.651115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708622, 30.290937, 36.234692>,  <36.653625, 30.201265, 35.459888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708622, 30.290937, 36.234692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360996, 30.469044, 36.148468>,  <36.152420, 30.575907, 36.096733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360996, 30.469044, 36.148468>,  <36.708622, 30.290937, 36.234692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360996, 30.469044, 36.148468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346824, -0.237677, 0.907316,
		0.352763, 0.863277, 0.360985,
		-0.869063, 0.445266, -0.215561,
		36.100277, 30.602623, 36.083801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515358, 30.798973, 36.860714>,  <36.708622, 30.290937, 36.234692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515358, 30.798973, 36.860714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185429, 30.706123, 36.654499>,  <35.987473, 30.650414, 36.530769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185429, 30.706123, 36.654499>,  <36.515358, 30.798973, 36.860714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185429, 30.706123, 36.654499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448380, -0.286898, 0.846549,
		-0.344411, 0.929413, 0.132561,
		-0.824825, -0.232123, -0.515541,
		35.937981, 30.636486, 36.499836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949471, 31.032406, 37.251949>,  <36.515358, 30.798973, 36.860714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949471, 31.032406, 37.251949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789047, 30.761627, 37.005081>,  <35.692795, 30.599161, 36.856960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789047, 30.761627, 37.005081>,  <35.949471, 31.032406, 37.251949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789047, 30.761627, 37.005081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330535, -0.521401, 0.786694,
		-0.854342, 0.519505, -0.014642,
		-0.401058, -0.676945, -0.617169,
		35.668732, 30.558544, 36.819931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251389, 30.976870, 37.384190>,  <35.949471, 31.032406, 37.251949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251389, 30.976870, 37.384190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320312, 30.633499, 37.190937>,  <35.361668, 30.427477, 37.074986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320312, 30.633499, 37.190937>,  <35.251389, 30.976870, 37.384190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320312, 30.633499, 37.190937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441829, -0.505716, 0.740972,
		-0.880396, 0.085788, -0.466415,
		0.172306, -0.858424, -0.483134,
		35.372005, 30.375973, 37.045998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849991, 30.567703, 37.700954>,  <35.251389, 30.976870, 37.384190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849991, 30.567703, 37.700954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043327, 30.264313, 37.526096>,  <35.159328, 30.082279, 37.421181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043327, 30.264313, 37.526096>,  <34.849991, 30.567703, 37.700954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043327, 30.264313, 37.526096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448902, -0.643437, 0.620062,
		-0.751580, -0.103462, -0.651478,
		0.483338, -0.758475, -0.437150,
		35.188328, 30.036770, 37.394951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379314, 30.066517, 37.569927>,  <34.849991, 30.567703, 37.700954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379314, 30.066517, 37.569927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727264, 29.870089, 37.588528>,  <34.936035, 29.752232, 37.599689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727264, 29.870089, 37.588528>,  <34.379314, 30.066517, 37.569927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727264, 29.870089, 37.588528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403585, -0.654351, 0.639487,
		-0.283603, -0.575044, -0.767394,
		0.869879, -0.491069, 0.046503,
		34.988228, 29.722769, 37.602478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154617, 29.400738, 37.526867>,  <34.379314, 30.066517, 37.569927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154617, 29.400738, 37.526867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527908, 29.380733, 37.669186>,  <34.751881, 29.368731, 37.754578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527908, 29.380733, 37.669186>,  <34.154617, 29.400738, 37.526867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527908, 29.380733, 37.669186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257647, -0.783333, 0.565691,
		0.250415, -0.619587, -0.743912,
		0.933226, -0.050009, 0.355793,
		34.807877, 29.365730, 37.775925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350758, 28.710653, 37.494350>,  <34.154617, 29.400738, 37.526867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350758, 28.710653, 37.494350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595497, 28.870878, 37.767170>,  <34.742340, 28.967012, 37.930862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595497, 28.870878, 37.767170>,  <34.350758, 28.710653, 37.494350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595497, 28.870878, 37.767170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262693, -0.710440, 0.652892,
		0.746078, -0.578641, -0.329458,
		0.611850, 0.400562, 0.682049,
		34.779053, 28.991047, 37.971783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582890, 28.182762, 37.871460>,  <34.350758, 28.710653, 37.494350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582890, 28.182762, 37.871460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692917, 28.451241, 38.146805>,  <34.758934, 28.612328, 38.312012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692917, 28.451241, 38.146805>,  <34.582890, 28.182762, 37.871460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692917, 28.451241, 38.146805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035258, -0.708452, 0.704877,
		0.960779, -0.218156, -0.171204,
		0.275063, 0.671195, 0.688358,
		34.775436, 28.652599, 38.353313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236111, 28.049915, 38.260773>,  <34.582890, 28.182762, 37.871460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236111, 28.049915, 38.260773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045959, 28.303730, 38.504536>,  <34.931870, 28.456018, 38.650795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045959, 28.303730, 38.504536>,  <35.236111, 28.049915, 38.260773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045959, 28.303730, 38.504536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182108, -0.606710, 0.773783,
		0.860729, 0.478816, 0.172861,
		-0.475376, 0.634538, 0.609409,
		34.903347, 28.494091, 38.687359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657551, 28.079439, 38.790916>,  <35.236111, 28.049915, 38.260773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657551, 28.079439, 38.790916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307724, 28.213736, 38.930862>,  <35.097828, 28.294313, 39.014832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307724, 28.213736, 38.930862>,  <35.657551, 28.079439, 38.790916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307724, 28.213736, 38.930862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248025, -0.310254, 0.917729,
		0.416666, 0.889393, 0.188066,
		-0.874570, 0.335741, 0.349864,
		35.045353, 28.314459, 39.035820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733833, 27.930681, 39.447681>,  <35.657551, 28.079439, 38.790916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733833, 27.930681, 39.447681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353149, 28.052353, 39.464306>,  <35.124741, 28.125357, 39.474281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353149, 28.052353, 39.464306>,  <35.733833, 27.930681, 39.447681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353149, 28.052353, 39.464306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038488, -0.252533, 0.966823,
		0.304584, 0.918533, 0.252044,
		-0.951708, 0.304179, 0.041565,
		35.067638, 28.143606, 39.476776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710918, 28.494837, 39.948639>,  <35.733833, 27.930681, 39.447681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710918, 28.494837, 39.948639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351074, 28.327257, 39.899357>,  <35.135166, 28.226709, 39.869785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351074, 28.327257, 39.899357>,  <35.710918, 28.494837, 39.948639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351074, 28.327257, 39.899357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016155, -0.250021, 0.968105,
		-0.436390, 0.872910, 0.218154,
		-0.899613, -0.418947, -0.123209,
		35.081192, 28.201572, 39.862392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223938, 28.814825, 40.471439>,  <35.710918, 28.494837, 39.948639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223938, 28.814825, 40.471439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076756, 28.454416, 40.379555>,  <34.988445, 28.238171, 40.324425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076756, 28.454416, 40.379555>,  <35.223938, 28.814825, 40.471439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076756, 28.454416, 40.379555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231805, -0.150352, 0.961073,
		-0.900486, 0.406881, -0.153538,
		-0.367957, -0.901023, -0.229707,
		34.966370, 28.184109, 40.310642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563713, 28.875666, 40.723797>,  <35.223938, 28.814825, 40.471439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563713, 28.875666, 40.723797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633270, 28.484854, 40.674526>,  <34.675003, 28.250366, 40.644962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633270, 28.484854, 40.674526>,  <34.563713, 28.875666, 40.723797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633270, 28.484854, 40.674526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415250, -0.186166, 0.890455,
		-0.892933, -0.103691, -0.438085,
		0.173889, -0.977031, -0.123176,
		34.685436, 28.191744, 40.637573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953117, 28.488642, 40.935349>,  <34.563713, 28.875666, 40.723797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953117, 28.488642, 40.935349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257275, 28.229357, 40.951447>,  <34.439770, 28.073786, 40.961105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257275, 28.229357, 40.951447>,  <33.953117, 28.488642, 40.935349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257275, 28.229357, 40.951447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213372, -0.190813, 0.958156,
		-0.613411, -0.737164, -0.283403,
		0.760395, -0.648214, 0.040243,
		34.485394, 28.034893, 40.963520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679382, 27.792221, 41.187595>,  <33.953117, 28.488642, 40.935349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679382, 27.792221, 41.187595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071167, 27.807392, 41.266815>,  <34.306236, 27.816496, 41.314346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071167, 27.807392, 41.266815>,  <33.679382, 27.792221, 41.187595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071167, 27.807392, 41.266815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183219, -0.242834, 0.952608,
		0.084227, -0.969326, -0.230896,
		0.979457, 0.037930, 0.198052,
		34.365005, 27.818771, 41.326229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726040, 27.351557, 41.656258>,  <33.679382, 27.792221, 41.187595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726040, 27.351557, 41.656258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082096, 27.530851, 41.689075>,  <34.295731, 27.638428, 41.708767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082096, 27.530851, 41.689075>,  <33.726040, 27.351557, 41.656258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082096, 27.530851, 41.689075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060431, -0.294567, 0.953718,
		0.451658, -0.843987, -0.289294,
		0.890142, 0.448237, 0.082040,
		34.349140, 27.665323, 41.713688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312107, 26.743519, 41.932777>,  <33.726040, 27.351557, 41.656258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312107, 26.743519, 41.932777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388260, 27.127388, 42.015511>,  <34.433952, 27.357710, 42.065151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388260, 27.127388, 42.015511>,  <34.312107, 26.743519, 41.932777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388260, 27.127388, 42.015511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106459, -0.229626, 0.967439,
		0.975920, -0.162166, -0.145883,
		0.190384, 0.959674, 0.206832,
		34.445374, 27.415291, 42.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884583, 26.704725, 42.391693>,  <34.312107, 26.743519, 41.932777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884583, 26.704725, 42.391693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709896, 27.062286, 42.432129>,  <34.605083, 27.276823, 42.456390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709896, 27.062286, 42.432129>,  <34.884583, 26.704725, 42.391693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709896, 27.062286, 42.432129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208614, -0.209945, 0.955198,
		0.875076, 0.396062, 0.278167,
		-0.436717, 0.893901, 0.101093,
		34.578880, 27.330456, 42.462456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153538, 27.024067, 43.053310>,  <34.884583, 26.704725, 42.391693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153538, 27.024067, 43.053310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821491, 27.242031, 43.006016>,  <34.622265, 27.372808, 42.977638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821491, 27.242031, 43.006016>,  <35.153538, 27.024067, 43.053310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821491, 27.242031, 43.006016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080019, 0.093431, 0.992405,
		0.551817, 0.833274, -0.033956,
		-0.830117, 0.544909, -0.118234,
		34.572456, 27.405504, 42.970547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863766, 27.401867, 43.185303>,  <35.153538, 27.024067, 43.053310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863766, 27.401867, 43.185303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174282, 27.181780, 43.308350>,  <36.360592, 27.049726, 43.382179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174282, 27.181780, 43.308350>,  <35.863766, 27.401867, 43.185303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174282, 27.181780, 43.308350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356565, -0.019155, -0.934074,
		0.519837, 0.834801, 0.181319,
		0.776293, -0.550219, 0.307618,
		36.407169, 27.016714, 43.400635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521667, 27.761568, 42.889065>,  <35.863766, 27.401867, 43.185303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521667, 27.761568, 42.889065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661766, 27.399536, 42.985527>,  <36.745827, 27.182318, 43.043404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661766, 27.399536, 42.985527>,  <36.521667, 27.761568, 42.889065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661766, 27.399536, 42.985527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709450, 0.088241, -0.699210,
		0.611560, 0.415988, 0.673015,
		0.350250, -0.905079, 0.241158,
		36.766842, 27.128012, 43.057873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246376, 27.816038, 42.905205>,  <36.521667, 27.761568, 42.889065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246376, 27.816038, 42.905205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206776, 27.420639, 42.859470>,  <37.183018, 27.183399, 42.832031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206776, 27.420639, 42.859470>,  <37.246376, 27.816038, 42.905205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206776, 27.420639, 42.859470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612035, 0.030109, -0.790257,
		0.784610, -0.148210, 0.602014,
		-0.098998, -0.988497, -0.114333,
		37.177074, 27.124090, 42.825169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917606, 27.604219, 42.790150>,  <37.246376, 27.816038, 42.905205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917606, 27.604219, 42.790150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678379, 27.319075, 42.643646>,  <37.534843, 27.147987, 42.555744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678379, 27.319075, 42.643646>,  <37.917606, 27.604219, 42.790150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678379, 27.319075, 42.643646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436529, 0.093511, -0.894818,
		0.672131, -0.695041, 0.255259,
		-0.598065, -0.712863, -0.366257,
		37.498959, 27.105215, 42.533768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313698, 27.127483, 42.576527>,  <37.917606, 27.604219, 42.790150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313698, 27.127483, 42.576527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979454, 27.072254, 42.363853>,  <37.778908, 27.039116, 42.236248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979454, 27.072254, 42.363853>,  <38.313698, 27.127483, 42.576527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979454, 27.072254, 42.363853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506370, 0.181590, -0.842980,
		0.212953, -0.973631, -0.081815,
		-0.835608, -0.138086, -0.531687,
		37.728771, 27.030832, 42.204346>
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
