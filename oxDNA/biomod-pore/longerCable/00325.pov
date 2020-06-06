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
	<23.949760, 35.011257, 34.756149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270842, 35.193913, 34.909588>,  <24.463490, 35.303505, 35.001652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270842, 35.193913, 34.909588>,  <23.949760, 35.011257, 34.756149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270842, 35.193913, 34.909588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034740, 0.606313, -0.794467,
		-0.595367, 0.651047, 0.470825,
		0.802702, 0.456643, 0.383596,
		24.511652, 35.330906, 35.024666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.846004, 35.775364, 34.707699>,  <23.949760, 35.011257, 34.756149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.846004, 35.775364, 34.707699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.235529, 35.686722, 34.728031>,  <24.469244, 35.633537, 34.740231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.235529, 35.686722, 34.728031>,  <23.846004, 35.775364, 34.707699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.235529, 35.686722, 34.728031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191710, 0.680150, -0.707561,
		0.122222, 0.698777, 0.704821,
		0.973812, -0.221601, 0.050833,
		24.527672, 35.620243, 34.743282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.374819, 36.387753, 34.833378>,  <23.846004, 35.775364, 34.707699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.374819, 36.387753, 34.833378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532436, 36.085758, 34.623722>,  <24.627007, 35.904560, 34.497929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532436, 36.085758, 34.623722>,  <24.374819, 36.387753, 34.833378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532436, 36.085758, 34.623722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217143, 0.630609, -0.745105,
		0.893073, 0.179791, 0.412428,
		0.394044, -0.754989, -0.524139,
		24.650650, 35.859261, 34.466480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052032, 36.636551, 34.573074>,  <24.374819, 36.387753, 34.833378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052032, 36.636551, 34.573074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906363, 36.341881, 34.345150>,  <24.818960, 36.165077, 34.208393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906363, 36.341881, 34.345150>,  <25.052032, 36.636551, 34.573074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906363, 36.341881, 34.345150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179297, 0.544927, -0.819089,
		0.913910, -0.400456, -0.066364,
		-0.364173, -0.736675, -0.569815,
		24.797112, 36.120880, 34.174206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.538422, 36.519211, 34.202049>,  <25.052032, 36.636551, 34.573074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.538422, 36.519211, 34.202049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232382, 36.372005, 33.990696>,  <25.048758, 36.283680, 33.863884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232382, 36.372005, 33.990696>,  <25.538422, 36.519211, 34.202049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232382, 36.372005, 33.990696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234471, 0.605015, -0.760907,
		0.599673, -0.706075, -0.376629,
		-0.765124, -0.367987, -0.528366,
		25.002851, 36.261600, 33.832184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723703, 36.160240, 33.652920>,  <25.538422, 36.519211, 34.202049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723703, 36.160240, 33.652920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376255, 36.299980, 33.512379>,  <25.167786, 36.383823, 33.428055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376255, 36.299980, 33.512379>,  <25.723703, 36.160240, 33.652920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376255, 36.299980, 33.512379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477975, 0.404026, -0.779938,
		-0.130513, -0.845411, -0.517926,
		-0.868623, 0.349348, -0.351355,
		25.115667, 36.404785, 33.406971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836432, 36.089222, 32.954971>,  <25.723703, 36.160240, 33.652920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836432, 36.089222, 32.954971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523312, 36.337025, 32.978397>,  <25.335440, 36.485706, 32.992451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523312, 36.337025, 32.978397>,  <25.836432, 36.089222, 32.954971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.523312, 36.337025, 32.978397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292622, 0.449530, -0.843976,
		-0.549177, -0.643528, -0.533175,
		-0.782800, 0.619511, 0.058561,
		25.288471, 36.522877, 32.995964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393562, 36.096066, 32.354874>,  <25.836432, 36.089222, 32.954971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393562, 36.096066, 32.354874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410849, 36.447262, 32.545563>,  <25.421221, 36.657982, 32.659977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410849, 36.447262, 32.545563>,  <25.393562, 36.096066, 32.354874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410849, 36.447262, 32.545563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283941, 0.446693, -0.848436,
		-0.957867, 0.172027, -0.229993,
		0.043218, 0.877993, 0.476719,
		25.423815, 36.710659, 32.688580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.134111, 36.529186, 31.917221>,  <25.393562, 36.096066, 32.354874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.134111, 36.529186, 31.917221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330273, 36.781494, 32.157764>,  <25.447969, 36.932880, 32.302090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330273, 36.781494, 32.157764>,  <25.134111, 36.529186, 31.917221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330273, 36.781494, 32.157764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371397, 0.472968, -0.798978,
		-0.788395, 0.615165, -0.002321,
		0.490405, 0.630772, 0.601356,
		25.477394, 36.970726, 32.338173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990059, 37.218838, 31.665627>,  <25.134111, 36.529186, 31.917221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990059, 37.218838, 31.665627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323158, 37.245842, 31.885435>,  <25.523018, 37.262043, 32.017319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323158, 37.245842, 31.885435>,  <24.990059, 37.218838, 31.665627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323158, 37.245842, 31.885435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392642, 0.627748, -0.672134,
		-0.390336, 0.775483, 0.496249,
		0.832748, 0.067509, 0.549520,
		25.572983, 37.266094, 32.050293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267822, 37.967876, 31.700970>,  <24.990059, 37.218838, 31.665627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267822, 37.967876, 31.700970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590467, 37.743862, 31.776581>,  <25.784056, 37.609451, 31.821947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590467, 37.743862, 31.776581>,  <25.267822, 37.967876, 31.700970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590467, 37.743862, 31.776581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546350, 0.584385, -0.599996,
		0.225555, 0.587241, 0.777350,
		0.806614, -0.560037, 0.189028,
		25.832451, 37.575851, 31.833290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841982, 38.516479, 31.659498>,  <25.267822, 37.967876, 31.700970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841982, 38.516479, 31.659498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952055, 38.134018, 31.619425>,  <26.018099, 37.904541, 31.595381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952055, 38.134018, 31.619425>,  <25.841982, 38.516479, 31.659498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952055, 38.134018, 31.619425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458940, 0.222216, -0.860229,
		0.844777, 0.190743, 0.499969,
		0.275184, -0.956157, -0.100184,
		26.034611, 37.847172, 31.589371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570408, 38.525387, 31.581881>,  <25.841982, 38.516479, 31.659498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570408, 38.525387, 31.581881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427929, 38.187157, 31.422823>,  <26.342442, 37.984219, 31.327389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427929, 38.187157, 31.422823>,  <26.570408, 38.525387, 31.581881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427929, 38.187157, 31.422823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688509, 0.050196, -0.723489,
		0.631726, -0.531487, 0.564308,
		-0.356199, -0.845578, -0.397644,
		26.321070, 37.933483, 31.303530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994074, 38.005009, 31.314154>,  <26.570408, 38.525387, 31.581881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994074, 38.005009, 31.314154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689857, 37.898365, 31.077343>,  <26.507328, 37.834377, 30.935257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689857, 37.898365, 31.077343>,  <26.994074, 38.005009, 31.314154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689857, 37.898365, 31.077343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582847, 0.121470, -0.803451,
		0.286120, -0.956120, 0.063009,
		-0.760542, -0.266608, -0.592027,
		26.461695, 37.818382, 30.899734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218983, 37.366398, 30.961300>,  <26.994074, 38.005009, 31.314154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218983, 37.366398, 30.961300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970446, 37.627811, 30.788410>,  <26.821323, 37.784660, 30.684675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970446, 37.627811, 30.788410>,  <27.218983, 37.366398, 30.961300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970446, 37.627811, 30.788410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715840, 0.249177, -0.652291,
		-0.318597, -0.714702, -0.622653,
		-0.621345, 0.653538, -0.432226,
		26.784042, 37.823872, 30.658743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987980, 36.900196, 31.505976>,  <27.218983, 37.366398, 30.961300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987980, 36.900196, 31.505976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765621, 37.208145, 31.631372>,  <26.632206, 37.392914, 31.706610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765621, 37.208145, 31.631372>,  <26.987980, 36.900196, 31.505976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765621, 37.208145, 31.631372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540300, -0.621244, 0.567567,
		0.631708, 0.146129, 0.761309,
		-0.555896, 0.769872, 0.313491,
		26.598852, 37.439106, 31.725420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895334, 36.879627, 32.189808>,  <26.987980, 36.900196, 31.505976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895334, 36.879627, 32.189808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577383, 37.091007, 32.070538>,  <26.386612, 37.217834, 31.998976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577383, 37.091007, 32.070538>,  <26.895334, 36.879627, 32.189808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577383, 37.091007, 32.070538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577888, -0.509526, 0.637517,
		0.184969, 0.679061, 0.710397,
		-0.794878, 0.528451, -0.298175,
		26.338919, 37.249542, 31.981085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675167, 37.114147, 32.793068>,  <26.895334, 36.879627, 32.189808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675167, 37.114147, 32.793068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360601, 37.173649, 32.553257>,  <26.171862, 37.209351, 32.409370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360601, 37.173649, 32.553257>,  <26.675167, 37.114147, 32.793068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360601, 37.173649, 32.553257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612786, -0.310092, 0.726868,
		-0.077781, 0.938997, 0.335017,
		-0.786412, 0.148757, -0.599523,
		26.124678, 37.218277, 32.373402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330162, 37.489231, 33.243286>,  <26.675167, 37.114147, 32.793068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330162, 37.489231, 33.243286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084906, 37.346138, 32.961552>,  <25.937752, 37.260281, 32.792511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084906, 37.346138, 32.961552>,  <26.330162, 37.489231, 33.243286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084906, 37.346138, 32.961552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591343, -0.383346, 0.709478,
		-0.523807, 0.851513, 0.023503,
		-0.613139, -0.357731, -0.704335,
		25.900965, 37.238819, 32.750252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716633, 37.854160, 33.317009>,  <26.330162, 37.489231, 33.243286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716633, 37.854160, 33.317009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667452, 37.488670, 33.162094>,  <25.637943, 37.269375, 33.069145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667452, 37.488670, 33.162094>,  <25.716633, 37.854160, 33.317009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667452, 37.488670, 33.162094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649834, -0.220821, 0.727292,
		-0.750066, 0.341091, -0.566619,
		-0.122951, -0.913726, -0.387283,
		25.630566, 37.214554, 33.045910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.982328, 37.687851, 33.165760>,  <25.716633, 37.854160, 33.317009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.982328, 37.687851, 33.165760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188641, 37.370632, 33.295406>,  <25.312428, 37.180302, 33.373192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188641, 37.370632, 33.295406>,  <24.982328, 37.687851, 33.165760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188641, 37.370632, 33.295406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719361, -0.195431, 0.666578,
		-0.465285, -0.576962, -0.671286,
		0.515781, -0.793046, 0.324113,
		25.343374, 37.132717, 33.392639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.347404, 37.423164, 32.918522>,  <24.982328, 37.687851, 33.165760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.347404, 37.423164, 32.918522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.638779, 37.153526, 32.967472>,  <24.813604, 36.991745, 32.996841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.638779, 37.153526, 32.967472>,  <24.347404, 37.423164, 32.918522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.638779, 37.153526, 32.967472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641389, -0.608195, 0.467675,
		-0.240830, -0.419161, -0.875388,
		0.728438, -0.674094, 0.122374,
		24.857309, 36.951298, 33.004185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.980577, 36.984085, 33.165688>,  <24.347404, 37.423164, 32.918522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.980577, 36.984085, 33.165688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329441, 36.789104, 33.182308>,  <24.538759, 36.672115, 33.192280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329441, 36.789104, 33.182308>,  <23.980577, 36.984085, 33.165688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.329441, 36.789104, 33.182308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434818, -0.733446, 0.522484,
		-0.224210, -0.473758, -0.851636,
		0.872160, -0.487453, 0.041552,
		24.591089, 36.642868, 33.194775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.790476, 36.456539, 33.580063>,  <23.980577, 36.984085, 33.165688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.790476, 36.456539, 33.580063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170849, 36.394070, 33.473225>,  <24.399073, 36.356590, 33.409122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170849, 36.394070, 33.473225>,  <23.790476, 36.456539, 33.580063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.170849, 36.394070, 33.473225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000326, -0.862759, 0.505615,
		-0.309401, -0.480892, -0.820374,
		0.950932, -0.156170, -0.267095,
		24.456129, 36.347218, 33.393097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.013523, 35.707016, 33.197392>,  <23.790476, 36.456539, 33.580063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.013523, 35.707016, 33.197392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322889, 35.876690, 33.385815>,  <24.508509, 35.978497, 33.498867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322889, 35.876690, 33.385815>,  <24.013523, 35.707016, 33.197392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.322889, 35.876690, 33.385815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036794, -0.771896, 0.634683,
		0.632833, -0.473540, -0.612603,
		0.773414, 0.424188, 0.471058,
		24.554913, 36.003948, 33.527130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.426613, 35.145538, 33.373817>,  <24.013523, 35.707016, 33.197392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.426613, 35.145538, 33.373817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529497, 35.449802, 33.612225>,  <24.591228, 35.632362, 33.755268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529497, 35.449802, 33.612225>,  <24.426613, 35.145538, 33.373817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529497, 35.449802, 33.612225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005092, -0.615691, 0.787971,
		0.966342, -0.205709, -0.154489,
		0.257211, 0.760663, 0.596015,
		24.606661, 35.678001, 33.791031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089775, 34.917801, 33.778824>,  <24.426613, 35.145538, 33.373817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089775, 34.917801, 33.778824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930161, 35.218155, 33.989326>,  <24.834391, 35.398365, 34.115627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930161, 35.218155, 33.989326>,  <25.089775, 34.917801, 33.778824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930161, 35.218155, 33.989326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061129, -0.550870, 0.832349,
		0.914895, 0.364309, 0.173917,
		-0.399038, 0.750880, 0.526258,
		24.810450, 35.443420, 34.147205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964880, 34.317383, 34.162540>,  <25.089775, 34.917801, 33.778824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964880, 34.317383, 34.162540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232382, 34.530495, 34.369968>,  <25.392883, 34.658363, 34.494427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232382, 34.530495, 34.369968>,  <24.964880, 34.317383, 34.162540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232382, 34.530495, 34.369968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729637, 0.336310, 0.595421,
		0.142825, -0.776560, 0.613642,
		0.668754, 0.532777, 0.518573,
		25.433008, 34.690327, 34.525539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854567, 34.172043, 34.909260>,  <24.964880, 34.317383, 34.162540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854567, 34.172043, 34.909260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012457, 34.532070, 34.835423>,  <25.107191, 34.748085, 34.791119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012457, 34.532070, 34.835423>,  <24.854567, 34.172043, 34.909260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.012457, 34.532070, 34.835423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603015, 0.405364, 0.687061,
		0.693228, -0.159887, 0.702760,
		0.394726, 0.900065, -0.184595,
		25.130875, 34.802090, 34.780045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378757, 34.341663, 35.440327>,  <24.854567, 34.172043, 34.909260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378757, 34.341663, 35.440327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153833, 34.628761, 35.276058>,  <25.018879, 34.801022, 35.177498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153833, 34.628761, 35.276058>,  <25.378757, 34.341663, 35.440327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153833, 34.628761, 35.276058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546392, 0.050274, 0.836019,
		0.620694, 0.694490, 0.363900,
		-0.562312, 0.717744, -0.410668,
		24.985140, 34.844086, 35.152859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773148, 34.489838, 36.166862>,  <25.378757, 34.341663, 35.440327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773148, 34.489838, 36.166862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125904, 34.614494, 36.308369>,  <26.337557, 34.689289, 36.393272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125904, 34.614494, 36.308369>,  <25.773148, 34.489838, 36.166862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125904, 34.614494, 36.308369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080863, -0.839231, 0.537730,
		0.464470, -0.445612, -0.765309,
		0.881890, 0.311644, 0.353764,
		26.390471, 34.707989, 36.414497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363913, 33.982929, 36.038765>,  <25.773148, 34.489838, 36.166862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363913, 33.982929, 36.038765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456619, 34.197464, 36.363388>,  <26.512243, 34.326187, 36.558163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456619, 34.197464, 36.363388>,  <26.363913, 33.982929, 36.038765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456619, 34.197464, 36.363388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027115, -0.837511, 0.545748,
		0.972394, -0.104480, -0.208648,
		0.231765, 0.536339, 0.811557,
		26.526148, 34.358364, 36.606853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933167, 33.578545, 36.409908>,  <26.363913, 33.982929, 36.038765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933167, 33.578545, 36.409908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801790, 33.827026, 36.694508>,  <26.722965, 33.976116, 36.865265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801790, 33.827026, 36.694508>,  <26.933167, 33.578545, 36.409908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801790, 33.827026, 36.694508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057236, -0.738811, 0.671478,
		0.942789, 0.261263, 0.207099,
		-0.328439, 0.621209, 0.711496,
		26.703259, 34.013390, 36.907955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452389, 33.637306, 36.942085>,  <26.933167, 33.578545, 36.409908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452389, 33.637306, 36.942085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114964, 33.740837, 37.130302>,  <26.912508, 33.802956, 37.243233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114964, 33.740837, 37.130302>,  <27.452389, 33.637306, 36.942085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114964, 33.740837, 37.130302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214466, -0.640930, 0.737030,
		0.492351, 0.722646, 0.485153,
		-0.843561, 0.258829, 0.470545,
		26.861895, 33.818485, 37.271465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650061, 33.669235, 37.686768>,  <27.452389, 33.637306, 36.942085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650061, 33.669235, 37.686768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258236, 33.608742, 37.633720>,  <27.023142, 33.572445, 37.601891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258236, 33.608742, 37.633720>,  <27.650061, 33.669235, 37.686768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258236, 33.608742, 37.633720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004065, -0.674072, 0.738654,
		-0.201101, 0.723019, 0.660910,
		-0.979562, -0.151231, -0.132618,
		26.964367, 33.563374, 37.593937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288654, 33.769768, 38.270538>,  <27.650061, 33.669235, 37.686768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288654, 33.769768, 38.270538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102215, 33.505989, 38.034615>,  <26.990351, 33.347721, 37.893059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102215, 33.505989, 38.034615>,  <27.288654, 33.769768, 38.270538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102215, 33.505989, 38.034615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209987, -0.730064, 0.650317,
		-0.859452, 0.179259, 0.478757,
		-0.466098, -0.659449, -0.589813,
		26.962385, 33.308155, 37.857670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846270, 33.547295, 38.793182>,  <27.288654, 33.769768, 38.270538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846270, 33.547295, 38.793182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681482, 33.460922, 38.439083>,  <26.582611, 33.409100, 38.226624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681482, 33.460922, 38.439083>,  <26.846270, 33.547295, 38.793182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681482, 33.460922, 38.439083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253237, -0.906113, 0.338866,
		-0.875302, 0.363779, 0.318608,
		-0.411967, -0.215927, -0.885245,
		26.557892, 33.396145, 38.173508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204384, 33.200634, 38.926144>,  <26.846270, 33.547295, 38.793182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204384, 33.200634, 38.926144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327755, 33.094147, 38.560848>,  <26.401777, 33.030254, 38.341671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327755, 33.094147, 38.560848>,  <26.204384, 33.200634, 38.926144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327755, 33.094147, 38.560848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223129, -0.953502, 0.202599,
		-0.924708, 0.141283, -0.353488,
		0.308428, -0.266219, -0.913236,
		26.420282, 33.014282, 38.286877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671125, 32.773308, 38.673607>,  <26.204384, 33.200634, 38.926144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671125, 32.773308, 38.673607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011789, 32.675499, 38.488186>,  <26.216188, 32.616814, 38.376934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011789, 32.675499, 38.488186>,  <25.671125, 32.773308, 38.673607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011789, 32.675499, 38.488186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052473, -0.919824, 0.388806,
		-0.521462, -0.306806, -0.796208,
		0.851660, -0.244526, -0.463554,
		26.267286, 32.602142, 38.349121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653551, 32.025738, 38.695442>,  <25.671125, 32.773308, 38.673607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653551, 32.025738, 38.695442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013865, 32.126820, 38.554176>,  <26.230053, 32.187469, 38.469418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013865, 32.126820, 38.554176>,  <25.653551, 32.025738, 38.695442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013865, 32.126820, 38.554176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368220, -0.875588, 0.312665,
		-0.230216, -0.411687, -0.881768,
		0.900785, 0.252704, -0.353166,
		26.284100, 32.202629, 38.448227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044725, 31.553877, 38.219246>,  <25.653551, 32.025738, 38.695442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044725, 31.553877, 38.219246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929934, 31.205719, 38.059219>,  <25.861059, 30.996824, 37.963203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929934, 31.205719, 38.059219>,  <26.044725, 31.553877, 38.219246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929934, 31.205719, 38.059219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288718, 0.319621, -0.902488,
		0.913392, -0.374502, 0.159575,
		-0.286980, -0.870397, -0.400065,
		25.843840, 30.944599, 37.939201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827574, 31.698971, 38.002666>,  <26.044725, 31.553877, 38.219246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827574, 31.698971, 38.002666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714306, 31.705332, 38.386242>,  <26.646345, 31.709148, 38.616386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714306, 31.705332, 38.386242>,  <26.827574, 31.698971, 38.002666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714306, 31.705332, 38.386242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316216, -0.942404, 0.109007,
		0.905441, 0.334099, 0.261830,
		-0.283168, 0.015904, 0.958938,
		26.629354, 31.710104, 38.673923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217405, 32.348301, 37.725456>,  <26.827574, 31.698971, 38.002666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217405, 32.348301, 37.725456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848608, 32.428722, 37.857826>,  <26.627331, 32.476974, 37.937248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848608, 32.428722, 37.857826>,  <27.217405, 32.348301, 37.725456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848608, 32.428722, 37.857826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053254, 0.912349, -0.405935,
		-0.383532, -0.356645, -0.851885,
		-0.921991, 0.201055, 0.330922,
		26.572010, 32.489040, 37.957104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759069, 32.638149, 37.107952>,  <27.217405, 32.348301, 37.725456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759069, 32.638149, 37.107952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625072, 32.749023, 37.468163>,  <26.544674, 32.815548, 37.684288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625072, 32.749023, 37.468163>,  <26.759069, 32.638149, 37.107952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625072, 32.749023, 37.468163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008179, 0.956568, -0.291396,
		-0.942186, -0.090250, -0.322709,
		-0.334991, 0.277189, 0.900526,
		26.524574, 32.832180, 37.738319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177511, 33.011570, 36.974899>,  <26.759069, 32.638149, 37.107952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177511, 33.011570, 36.974899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278751, 33.124725, 37.344963>,  <26.339497, 33.192619, 37.567001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278751, 33.124725, 37.344963>,  <26.177511, 33.011570, 36.974899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278751, 33.124725, 37.344963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180752, 0.953282, -0.242036,
		-0.950404, -0.105964, 0.292410,
		0.253102, 0.282885, 0.925157,
		26.354683, 33.209591, 37.622509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681498, 33.461666, 37.334057>,  <26.177511, 33.011570, 36.974899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681498, 33.461666, 37.334057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048084, 33.551910, 37.466232>,  <26.268036, 33.606056, 37.545540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048084, 33.551910, 37.466232>,  <25.681498, 33.461666, 37.334057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048084, 33.551910, 37.466232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090639, 0.921460, -0.377752,
		-0.389715, 0.316245, 0.864934,
		0.916464, 0.225612, 0.330442,
		26.323023, 33.619595, 37.565365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733040, 34.251427, 37.666882>,  <25.681498, 33.461666, 37.334057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733040, 34.251427, 37.666882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105965, 34.125938, 37.594913>,  <26.329720, 34.050648, 37.551731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105965, 34.125938, 37.594913>,  <25.733040, 34.251427, 37.666882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105965, 34.125938, 37.594913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212113, 0.877289, -0.430549,
		0.292914, 0.363243, 0.884452,
		0.932314, -0.313717, -0.179922,
		26.385658, 34.031822, 37.540936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231934, 34.766468, 37.765724>,  <25.733040, 34.251427, 37.666882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231934, 34.766468, 37.765724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417664, 34.510906, 37.520382>,  <26.529100, 34.357567, 37.373177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417664, 34.510906, 37.520382>,  <26.231934, 34.766468, 37.765724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417664, 34.510906, 37.520382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202881, 0.750848, -0.628544,
		0.862115, 0.167410, 0.478258,
		0.464324, -0.638907, -0.613353,
		26.556961, 34.319233, 37.336376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875113, 35.109074, 37.651482>,  <26.231934, 34.766468, 37.765724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875113, 35.109074, 37.651482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776777, 34.877037, 37.340855>,  <26.717775, 34.737816, 37.154480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776777, 34.877037, 37.340855>,  <26.875113, 35.109074, 37.651482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776777, 34.877037, 37.340855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107796, 0.779824, -0.616648,
		0.963299, -0.235306, -0.129178,
		-0.245837, -0.580091, -0.776569,
		26.703026, 34.703011, 37.107883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248535, 35.423447, 37.056435>,  <26.875113, 35.109074, 37.651482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248535, 35.423447, 37.056435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985460, 35.172424, 36.889763>,  <26.827616, 35.021812, 36.789761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985460, 35.172424, 36.889763>,  <27.248535, 35.423447, 37.056435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985460, 35.172424, 36.889763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194428, 0.392986, -0.898754,
		0.727768, -0.672113, -0.136447,
		-0.657686, -0.627555, -0.416681,
		26.788155, 34.984158, 36.764759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887424, 34.974476, 36.907143>,  <27.248535, 35.423447, 37.056435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887424, 34.974476, 36.907143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679379, 34.704887, 37.116997>,  <27.554550, 34.543137, 37.242908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679379, 34.704887, 37.116997>,  <27.887424, 34.974476, 36.907143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679379, 34.704887, 37.116997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852497, -0.372076, 0.367164,
		-0.052252, 0.638220, 0.768079,
		-0.520115, -0.673970, 0.524639,
		27.523344, 34.502697, 37.274387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062195, 34.947037, 37.607330>,  <27.887424, 34.974476, 36.907143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062195, 34.947037, 37.607330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945993, 34.577648, 37.507088>,  <27.876274, 34.356014, 37.446941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945993, 34.577648, 37.507088>,  <28.062195, 34.947037, 37.607330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945993, 34.577648, 37.507088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738469, -0.382920, 0.555010,
		-0.608500, -0.023836, 0.793196,
		-0.290501, -0.923474, -0.250610,
		27.858843, 34.300606, 37.431904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284952, 35.637615, 37.520588>,  <28.062195, 34.947037, 37.607330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284952, 35.637615, 37.520588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533308, 35.935917, 37.617210>,  <28.682322, 36.114899, 37.675182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533308, 35.935917, 37.617210>,  <28.284952, 35.637615, 37.520588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533308, 35.935917, 37.617210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487348, -0.125864, -0.864089,
		-0.613992, 0.654227, -0.441589,
		0.620891, 0.745751, 0.241557,
		28.719576, 36.159641, 37.689678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740770, 35.696789, 37.010765>,  <28.284952, 35.637615, 37.520588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740770, 35.696789, 37.010765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916035, 35.977516, 37.235428>,  <29.021193, 36.145954, 37.370228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916035, 35.977516, 37.235428>,  <28.740770, 35.696789, 37.010765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916035, 35.977516, 37.235428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700282, 0.125238, -0.702795,
		-0.563578, 0.701256, -0.436599,
		0.438161, 0.701823, 0.561659,
		29.047483, 36.188065, 37.403927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896400, 36.445148, 36.699341>,  <28.740770, 35.696789, 37.010765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896400, 36.445148, 36.699341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145477, 36.390297, 37.007484>,  <29.294924, 36.357388, 37.192371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145477, 36.390297, 37.007484>,  <28.896400, 36.445148, 36.699341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145477, 36.390297, 37.007484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780275, 0.182472, -0.598227,
		-0.058535, 0.973602, 0.220621,
		0.622692, -0.137128, 0.770357,
		29.332285, 36.349159, 37.238590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397341, 37.006714, 36.781288>,  <28.896400, 36.445148, 36.699341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397341, 37.006714, 36.781288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570351, 36.687962, 36.950001>,  <29.674156, 36.496708, 37.051228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570351, 36.687962, 36.950001>,  <29.397341, 37.006714, 36.781288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570351, 36.687962, 36.950001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853498, 0.211082, -0.476431,
		0.290630, 0.566056, 0.771437,
		0.432523, -0.796885, 0.421781,
		29.700108, 36.448895, 37.076534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741806, 37.244259, 37.364086>,  <29.397341, 37.006714, 36.781288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741806, 37.244259, 37.364086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851759, 36.931953, 37.139641>,  <29.917730, 36.744572, 37.004974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851759, 36.931953, 37.139641>,  <29.741806, 37.244259, 37.364086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851759, 36.931953, 37.139641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666290, 0.575430, -0.474276,
		0.693179, -0.243495, 0.678390,
		0.274882, -0.780763, -0.561114,
		29.934223, 36.697723, 36.971306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413523, 37.162846, 37.434116>,  <29.741806, 37.244259, 37.364086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413523, 37.162846, 37.434116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349024, 36.964863, 37.092587>,  <30.310326, 36.846073, 36.887669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349024, 36.964863, 37.092587>,  <30.413523, 37.162846, 37.434116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349024, 36.964863, 37.092587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825266, 0.406832, -0.391693,
		0.541235, -0.767790, 0.342875,
		-0.161246, -0.494961, -0.853823,
		30.300650, 36.816376, 36.836441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997839, 36.866505, 37.145271>,  <30.413523, 37.162846, 37.434116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997839, 36.866505, 37.145271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778475, 36.899021, 36.812374>,  <30.646856, 36.918530, 36.612637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778475, 36.899021, 36.812374>,  <30.997839, 36.866505, 37.145271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778475, 36.899021, 36.812374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808679, 0.304829, -0.503109,
		0.212796, -0.948932, -0.232909,
		-0.548413, 0.081289, -0.832247,
		30.613951, 36.923409, 36.562698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217218, 36.494110, 36.689861>,  <30.997839, 36.866505, 37.145271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217218, 36.494110, 36.689861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026699, 36.766594, 36.467480>,  <30.912388, 36.930084, 36.334049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026699, 36.766594, 36.467480>,  <31.217218, 36.494110, 36.689861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026699, 36.766594, 36.467480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859575, 0.227610, -0.457521,
		-0.185128, -0.695802, -0.693965,
		-0.476297, 0.681214, -0.555957,
		30.883810, 36.970959, 36.300694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913095, 36.205601, 36.108616>,  <31.217218, 36.494110, 36.689861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913095, 36.205601, 36.108616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041351, 36.584457, 36.104546>,  <31.118305, 36.811771, 36.102104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041351, 36.584457, 36.104546>,  <30.913095, 36.205601, 36.108616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041351, 36.584457, 36.104546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602744, -0.212310, -0.769171,
		-0.730677, 0.240496, -0.638962,
		0.320640, 0.947146, -0.010172,
		31.137543, 36.868603, 36.101494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888496, 36.287491, 35.387508>,  <30.913095, 36.205601, 36.108616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888496, 36.287491, 35.387508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166185, 36.510983, 35.569000>,  <31.332800, 36.645077, 35.677895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166185, 36.510983, 35.569000>,  <30.888496, 36.287491, 35.387508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166185, 36.510983, 35.569000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707096, -0.411694, -0.574912,
		-0.134424, 0.719948, -0.680886,
		0.694223, 0.558733, 0.453730,
		31.374453, 36.678604, 35.705120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117603, 36.763550, 34.915894>,  <30.888496, 36.287491, 35.387508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117603, 36.763550, 34.915894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385599, 36.629234, 35.180729>,  <31.546396, 36.548645, 35.339630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385599, 36.629234, 35.180729>,  <31.117603, 36.763550, 34.915894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385599, 36.629234, 35.180729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539288, -0.392768, -0.744917,
		0.510180, 0.856143, -0.082065,
		0.669988, -0.335786, 0.662090,
		31.586596, 36.528500, 35.379356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848589, 36.995419, 34.735222>,  <31.117603, 36.763550, 34.915894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848589, 36.995419, 34.735222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866564, 36.653770, 34.942474>,  <31.877348, 36.448780, 35.066826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866564, 36.653770, 34.942474>,  <31.848589, 36.995419, 34.735222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866564, 36.653770, 34.942474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397408, -0.460567, -0.793690,
		0.916541, 0.241576, 0.318737,
		0.044937, -0.854119, 0.518133,
		31.880045, 36.397533, 35.097916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487980, 36.780571, 34.864876>,  <31.848589, 36.995419, 34.735222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487980, 36.780571, 34.864876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249054, 36.461258, 34.833996>,  <32.105698, 36.269672, 34.815468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249054, 36.461258, 34.833996>,  <32.487980, 36.780571, 34.864876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249054, 36.461258, 34.833996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512532, -0.305914, -0.802326,
		0.616863, -0.518813, 0.591872,
		-0.597319, -0.798279, -0.077202,
		32.069859, 36.221775, 34.810837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892689, 36.196301, 34.628075>,  <32.487980, 36.780571, 34.864876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892689, 36.196301, 34.628075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510540, 36.135372, 34.526829>,  <32.281250, 36.098816, 34.466084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510540, 36.135372, 34.526829>,  <32.892689, 36.196301, 34.628075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510540, 36.135372, 34.526829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294857, -0.439212, -0.848618,
		0.018094, -0.885376, 0.464523,
		-0.955370, -0.152323, -0.253113,
		32.223930, 36.089676, 34.450893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851082, 35.501385, 34.341518>,  <32.892689, 36.196301, 34.628075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851082, 35.501385, 34.341518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535263, 35.710041, 34.212208>,  <32.345772, 35.835236, 34.134621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535263, 35.710041, 34.212208>,  <32.851082, 35.501385, 34.341518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535263, 35.710041, 34.212208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205128, -0.272149, -0.940137,
		-0.578391, -0.808596, 0.107872,
		-0.789548, 0.521639, -0.323275,
		32.298397, 35.866531, 34.115227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409679, 35.176708, 33.848484>,  <32.851082, 35.501385, 34.341518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409679, 35.176708, 33.848484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336868, 35.563976, 33.779758>,  <32.293182, 35.796337, 33.738525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336868, 35.563976, 33.779758>,  <32.409679, 35.176708, 33.848484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336868, 35.563976, 33.779758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018156, -0.178011, -0.983861,
		-0.983126, -0.175969, 0.049981,
		-0.182026, 0.968167, -0.171812,
		32.282261, 35.854427, 33.728214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753096, 35.280499, 33.342663>,  <32.409679, 35.176708, 33.848484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753096, 35.280499, 33.342663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955019, 35.625614, 33.331627>,  <32.076172, 35.832684, 33.325005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955019, 35.625614, 33.331627>,  <31.753096, 35.280499, 33.342663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955019, 35.625614, 33.331627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136717, -0.111465, -0.984319,
		-0.852337, 0.493120, -0.174226,
		0.504807, 0.862791, -0.027588,
		32.106461, 35.884453, 33.323349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535381, 35.584999, 32.738468>,  <31.753096, 35.280499, 33.342663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535381, 35.584999, 32.738468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905148, 35.714024, 32.819870>,  <32.127007, 35.791439, 32.868710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905148, 35.714024, 32.819870>,  <31.535381, 35.584999, 32.738468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905148, 35.714024, 32.819870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264055, -0.156279, -0.951762,
		-0.275199, 0.933558, -0.229640,
		0.924414, 0.322562, 0.203503,
		32.182472, 35.810791, 32.880920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755505, 35.792351, 32.059544>,  <31.535381, 35.584999, 32.738468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755505, 35.792351, 32.059544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087891, 35.755348, 32.278976>,  <32.287323, 35.733147, 32.410637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087891, 35.755348, 32.278976>,  <31.755505, 35.792351, 32.059544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087891, 35.755348, 32.278976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525748, -0.191828, -0.828728,
		0.181899, 0.977059, -0.110765,
		0.830964, -0.092510, 0.548580,
		32.337181, 35.727596, 32.443550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207565, 36.258301, 31.800152>,  <31.755505, 35.792351, 32.059544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207565, 36.258301, 31.800152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481964, 36.013229, 31.957140>,  <32.646603, 35.866184, 32.051334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481964, 36.013229, 31.957140>,  <32.207565, 36.258301, 31.800152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481964, 36.013229, 31.957140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554563, 0.091070, -0.827144,
		0.471032, 0.785066, 0.402243,
		0.685995, -0.612680, 0.392472,
		32.687763, 35.829426, 32.074883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831581, 36.632748, 31.710703>,  <32.207565, 36.258301, 31.800152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831581, 36.632748, 31.710703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914131, 36.243374, 31.750368>,  <32.963661, 36.009750, 31.774166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914131, 36.243374, 31.750368>,  <32.831581, 36.632748, 31.710703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914131, 36.243374, 31.750368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545060, 0.030206, -0.837853,
		0.812600, 0.226959, 0.536815,
		0.206374, -0.973436, 0.099161,
		32.976044, 35.951344, 31.780117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544247, 36.572910, 31.530315>,  <32.831581, 36.632748, 31.710703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544247, 36.572910, 31.530315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416191, 36.195896, 31.492067>,  <33.339355, 35.969688, 31.469118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416191, 36.195896, 31.492067>,  <33.544247, 36.572910, 31.530315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416191, 36.195896, 31.492067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515159, -0.088491, -0.852514,
		0.795060, -0.322185, 0.513884,
		-0.320141, -0.942532, -0.095621,
		33.320148, 35.913136, 31.463381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112331, 36.342331, 31.357450>,  <33.544247, 36.572910, 31.530315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112331, 36.342331, 31.357450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851517, 36.056519, 31.256020>,  <33.695026, 35.885033, 31.195162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851517, 36.056519, 31.256020>,  <34.112331, 36.342331, 31.357450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851517, 36.056519, 31.256020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628085, -0.321707, -0.708530,
		0.424686, -0.621254, 0.658548,
		-0.652036, -0.714527, -0.253576,
		33.655907, 35.842159, 31.179947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493992, 35.634869, 31.212467>,  <34.112331, 36.342331, 31.357450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493992, 35.634869, 31.212467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131500, 35.641323, 31.043474>,  <33.914005, 35.645195, 30.942080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131500, 35.641323, 31.043474>,  <34.493992, 35.634869, 31.212467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131500, 35.641323, 31.043474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403292, -0.266961, -0.875264,
		-0.126906, -0.963572, 0.235422,
		-0.906228, 0.016132, -0.422480,
		33.859631, 35.646164, 30.916731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382797, 34.912434, 31.014252>,  <34.493992, 35.634869, 31.212467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382797, 34.912434, 31.014252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139893, 35.136990, 30.789368>,  <33.994152, 35.271725, 30.654438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139893, 35.136990, 30.789368>,  <34.382797, 34.912434, 31.014252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139893, 35.136990, 30.789368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350343, -0.445902, -0.823669,
		-0.713091, -0.697145, 0.074098,
		-0.607257, 0.561392, -0.562208,
		33.957714, 35.305408, 30.620705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193005, 34.497341, 30.449419>,  <34.382797, 34.912434, 31.014252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193005, 34.497341, 30.449419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086552, 34.863560, 30.328787>,  <34.022678, 35.083290, 30.256409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086552, 34.863560, 30.328787>,  <34.193005, 34.497341, 30.449419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086552, 34.863560, 30.328787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259439, -0.233285, -0.937160,
		-0.928367, -0.327650, -0.175443,
		-0.266133, 0.915545, -0.301579,
		34.006710, 35.138222, 30.238314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987907, 34.422947, 29.852947>,  <34.193005, 34.497341, 30.449419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987907, 34.422947, 29.852947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038853, 34.819641, 29.846773>,  <34.069420, 35.057659, 29.843069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038853, 34.819641, 29.846773>,  <33.987907, 34.422947, 29.852947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038853, 34.819641, 29.846773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092382, -0.027355, -0.995348,
		-0.987545, 0.125341, -0.095102,
		0.127360, 0.991736, -0.015435,
		34.077061, 35.117161, 29.842142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578392, 34.757679, 29.313139>,  <33.987907, 34.422947, 29.852947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578392, 34.757679, 29.313139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885498, 34.999081, 29.399227>,  <34.069763, 35.143921, 29.450880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885498, 34.999081, 29.399227>,  <33.578392, 34.757679, 29.313139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885498, 34.999081, 29.399227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181452, 0.117352, -0.976373,
		-0.614498, 0.788680, -0.019407,
		0.767768, 0.603500, 0.215220,
		34.115829, 35.180130, 29.463793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461250, 35.282700, 28.808062>,  <33.578392, 34.757679, 29.313139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461250, 35.282700, 28.808062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846249, 35.324471, 28.908213>,  <34.077248, 35.349533, 28.968304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846249, 35.324471, 28.908213>,  <33.461250, 35.282700, 28.808062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846249, 35.324471, 28.908213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230437, 0.172308, -0.957710,
		-0.143154, 0.979492, 0.141782,
		0.962500, 0.104428, 0.250377,
		34.134998, 35.355801, 28.983326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789177, 35.804165, 28.250832>,  <33.461250, 35.282700, 28.808062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789177, 35.804165, 28.250832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103371, 35.607136, 28.400702>,  <34.291889, 35.488918, 28.490623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103371, 35.607136, 28.400702>,  <33.789177, 35.804165, 28.250832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103371, 35.607136, 28.400702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471852, 0.084914, -0.877579,
		0.400455, 0.866120, 0.299119,
		0.785488, -0.492571, 0.374677,
		34.339016, 35.459366, 28.513105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405235, 36.291615, 28.181734>,  <33.789177, 35.804165, 28.250832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405235, 36.291615, 28.181734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513042, 35.910030, 28.234379>,  <34.577728, 35.681080, 28.265966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513042, 35.910030, 28.234379>,  <34.405235, 36.291615, 28.181734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513042, 35.910030, 28.234379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601038, 0.059855, -0.796976,
		0.752405, 0.293904, 0.589498,
		0.269519, -0.953959, 0.131613,
		34.593899, 35.623844, 28.273863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128098, 36.252647, 28.016539>,  <34.405235, 36.291615, 28.181734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128098, 36.252647, 28.016539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997791, 35.874809, 28.000471>,  <34.919605, 35.648106, 27.990831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997791, 35.874809, 28.000471>,  <35.128098, 36.252647, 28.016539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997791, 35.874809, 28.000471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479253, -0.128362, -0.868239,
		0.814979, -0.302097, 0.494517,
		-0.325770, -0.944595, -0.040168,
		34.900059, 35.591431, 27.988420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672344, 35.892353, 27.712944>,  <35.128098, 36.252647, 28.016539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672344, 35.892353, 27.712944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384811, 35.620636, 27.653837>,  <35.212292, 35.457603, 27.618372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384811, 35.620636, 27.653837>,  <35.672344, 35.892353, 27.712944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384811, 35.620636, 27.653837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347957, -0.167554, -0.922416,
		0.601833, -0.714482, 0.356809,
		-0.718834, -0.679295, -0.147769,
		35.169163, 35.416847, 27.609507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958973, 35.278416, 27.395458>,  <35.672344, 35.892353, 27.712944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958973, 35.278416, 27.395458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563560, 35.267223, 27.336090>,  <35.326313, 35.260506, 27.300468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563560, 35.267223, 27.336090>,  <35.958973, 35.278416, 27.395458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563560, 35.267223, 27.336090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150987, -0.207975, -0.966410,
		-0.003823, -0.977734, 0.209815,
		-0.988528, -0.027984, -0.148420,
		35.267002, 35.258827, 27.291563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931969, 34.671116, 27.157578>,  <35.958973, 35.278416, 27.395458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931969, 34.671116, 27.157578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600582, 34.859413, 27.036222>,  <35.401752, 34.972393, 26.963409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600582, 34.859413, 27.036222>,  <35.931969, 34.671116, 27.157578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600582, 34.859413, 27.036222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124507, -0.373354, -0.919296,
		-0.546029, -0.799377, 0.250699,
		-0.828463, 0.470748, -0.303390,
		35.352043, 35.000637, 26.945206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530075, 34.191330, 26.718460>,  <35.931969, 34.671116, 27.157578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530075, 34.191330, 26.718460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408813, 34.556065, 26.607719>,  <35.336056, 34.774906, 26.541275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408813, 34.556065, 26.607719>,  <35.530075, 34.191330, 26.718460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408813, 34.556065, 26.607719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035582, -0.279488, -0.959489,
		-0.952277, -0.300723, 0.052282,
		-0.303153, 0.911840, -0.276851,
		35.317867, 34.829617, 26.524664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029476, 34.039341, 26.211071>,  <35.530075, 34.191330, 26.718460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029476, 34.039341, 26.211071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115234, 34.422432, 26.134352>,  <35.166691, 34.652287, 26.088320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115234, 34.422432, 26.134352>,  <35.029476, 34.039341, 26.211071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115234, 34.422432, 26.134352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080056, -0.178471, -0.980683,
		-0.973460, 0.225610, 0.038408,
		0.214397, 0.957731, -0.191796,
		35.179554, 34.709751, 26.076813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560925, 34.317238, 25.729206>,  <35.029476, 34.039341, 26.211071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560925, 34.317238, 25.729206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845104, 34.598259, 25.712831>,  <35.015614, 34.766872, 25.703007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845104, 34.598259, 25.712831>,  <34.560925, 34.317238, 25.729206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845104, 34.598259, 25.712831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124907, 0.068638, -0.989791,
		-0.692572, 0.708313, 0.136518,
		0.710452, 0.702554, -0.040936,
		35.058239, 34.809025, 25.700550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246983, 34.837898, 25.362215>,  <34.560925, 34.317238, 25.729206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246983, 34.837898, 25.362215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636379, 34.898335, 25.293535>,  <34.870018, 34.934597, 25.252327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636379, 34.898335, 25.293535>,  <34.246983, 34.837898, 25.362215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636379, 34.898335, 25.293535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181129, 0.050940, -0.982139,
		-0.139648, 0.987206, 0.076958,
		0.973494, 0.151093, -0.171698,
		34.928429, 34.943661, 25.242025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270317, 35.400970, 24.876844>,  <34.246983, 34.837898, 25.362215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270317, 35.400970, 24.876844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627296, 35.221458, 24.858334>,  <34.841484, 35.113750, 24.847227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627296, 35.221458, 24.858334>,  <34.270317, 35.400970, 24.876844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627296, 35.221458, 24.858334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046221, 0.011089, -0.998870,
		0.448784, 0.893575, -0.010847,
		0.892444, -0.448778, -0.046278,
		34.895031, 35.086826, 24.844450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557262, 35.749729, 24.374886>,  <34.270317, 35.400970, 24.876844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557262, 35.749729, 24.374886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816761, 35.445709, 24.390171>,  <34.972458, 35.263298, 24.399343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816761, 35.445709, 24.390171>,  <34.557262, 35.749729, 24.374886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816761, 35.445709, 24.390171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122621, 0.054840, -0.990937,
		0.751063, 0.647551, 0.128775,
		0.648744, -0.760046, 0.038215,
		35.011383, 35.217697, 24.401636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180099, 35.835045, 23.843407>,  <34.557262, 35.749729, 24.374886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180099, 35.835045, 23.843407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178360, 35.440388, 23.908539>,  <35.177319, 35.203594, 23.947618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178360, 35.440388, 23.908539>,  <35.180099, 35.835045, 23.843407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178360, 35.440388, 23.908539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412148, -0.150127, -0.898663,
		0.911107, 0.063206, 0.407296,
		-0.004345, -0.986644, 0.162832,
		35.177055, 35.144394, 23.957388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850719, 35.576084, 23.684269>,  <35.180099, 35.835045, 23.843407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850719, 35.576084, 23.684269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604069, 35.262833, 23.652079>,  <35.456078, 35.074883, 23.632765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604069, 35.262833, 23.652079>,  <35.850719, 35.576084, 23.684269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604069, 35.262833, 23.652079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492299, -0.303809, -0.815685,
		0.614339, -0.542592, 0.572872,
		-0.616627, -0.783131, -0.080477,
		35.419079, 35.027893, 23.627935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245602, 34.999165, 23.633394>,  <35.850719, 35.576084, 23.684269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245602, 34.999165, 23.633394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893761, 34.894329, 23.474594>,  <35.682655, 34.831429, 23.379314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893761, 34.894329, 23.474594>,  <36.245602, 34.999165, 23.633394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893761, 34.894329, 23.474594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469378, -0.342451, -0.813887,
		0.077357, -0.902240, 0.424240,
		-0.879602, -0.262089, -0.397001,
		35.629879, 34.815704, 23.355494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395084, 34.464813, 23.403330>,  <36.245602, 34.999165, 23.633394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395084, 34.464813, 23.403330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052643, 34.543995, 23.212374>,  <35.847179, 34.591503, 23.097799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052643, 34.543995, 23.212374>,  <36.395084, 34.464813, 23.403330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052643, 34.543995, 23.212374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410268, -0.301409, -0.860717,
		-0.314272, -0.932720, 0.176824,
		-0.856104, 0.197954, -0.477389,
		35.795811, 34.603382, 23.069157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306221, 33.968998, 22.992418>,  <36.395084, 34.464813, 23.403330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306221, 33.968998, 22.992418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080685, 34.251957, 22.821930>,  <35.945362, 34.421734, 22.719637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080685, 34.251957, 22.821930>,  <36.306221, 33.968998, 22.992418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080685, 34.251957, 22.821930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440883, -0.178577, -0.879621,
		-0.698358, -0.683882, -0.211192,
		-0.563842, 0.707401, -0.426222,
		35.911533, 34.464176, 22.694063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055981, 33.719501, 22.304895>,  <36.306221, 33.968998, 22.992418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055981, 33.719501, 22.304895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013470, 34.115368, 22.266388>,  <35.987961, 34.352886, 22.243284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013470, 34.115368, 22.266388>,  <36.055981, 33.719501, 22.304895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013470, 34.115368, 22.266388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113408, -0.084119, -0.989981,
		-0.987848, -0.116133, -0.103296,
		-0.106280, 0.989665, -0.096267,
		35.981586, 34.412266, 22.237509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785576, 33.786636, 21.671253>,  <36.055981, 33.719501, 22.304895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785576, 33.786636, 21.671253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901024, 34.153557, 21.780981>,  <35.970295, 34.373711, 21.846817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901024, 34.153557, 21.780981>,  <35.785576, 33.786636, 21.671253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901024, 34.153557, 21.780981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289514, 0.189483, -0.938231,
		-0.912622, 0.350213, -0.210884,
		0.288622, 0.917304, 0.274318,
		35.987610, 34.428749, 21.863276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655464, 34.247833, 21.066557>,  <35.785576, 33.786636, 21.671253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655464, 34.247833, 21.066557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918381, 34.455185, 21.285370>,  <36.076130, 34.579597, 21.416658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918381, 34.455185, 21.285370>,  <35.655464, 34.247833, 21.066557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918381, 34.455185, 21.285370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470428, 0.284868, -0.835193,
		-0.588780, 0.806307, -0.056619,
		0.657294, 0.518381, 0.547034,
		36.115570, 34.610699, 21.449480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711681, 34.894726, 20.680761>,  <35.655464, 34.247833, 21.066557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711681, 34.894726, 20.680761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030609, 34.831802, 20.913837>,  <36.221966, 34.794048, 21.053684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030609, 34.831802, 20.913837>,  <35.711681, 34.894726, 20.680761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030609, 34.831802, 20.913837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576076, 0.486336, -0.656973,
		-0.180037, 0.859495, 0.478389,
		0.797323, -0.157309, 0.582693,
		36.269806, 34.784611, 21.088646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135635, 35.604443, 20.788021>,  <35.711681, 34.894726, 20.680761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135635, 35.604443, 20.788021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397846, 35.323528, 20.899073>,  <36.555172, 35.154980, 20.965704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397846, 35.323528, 20.899073>,  <36.135635, 35.604443, 20.788021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397846, 35.323528, 20.899073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701955, 0.431097, -0.566934,
		0.278463, 0.566526, 0.775568,
		0.655528, -0.702284, 0.277631,
		36.594505, 35.112843, 20.982363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673611, 36.035843, 21.033674>,  <36.135635, 35.604443, 20.788021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673611, 36.035843, 21.033674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810673, 35.665649, 20.969090>,  <36.892910, 35.443535, 20.930338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810673, 35.665649, 20.969090>,  <36.673611, 36.035843, 21.033674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810673, 35.665649, 20.969090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811349, 0.378168, -0.445759,
		0.473602, 0.021739, 0.880470,
		0.342656, -0.925482, -0.161463,
		36.913471, 35.388004, 20.920650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353333, 36.084629, 21.250996>,  <36.673611, 36.035843, 21.033674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353333, 36.084629, 21.250996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338863, 35.770405, 21.003906>,  <37.330181, 35.581871, 20.855654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338863, 35.770405, 21.003906>,  <37.353333, 36.084629, 21.250996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338863, 35.770405, 21.003906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760179, 0.379614, -0.527277,
		0.648706, -0.488652, 0.583438,
		-0.036174, -0.785565, -0.617721,
		37.328011, 35.534737, 20.818590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115467, 35.832268, 21.053558>,  <37.353333, 36.084629, 21.250996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115467, 35.832268, 21.053558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874748, 35.718224, 20.755148>,  <37.730316, 35.649796, 20.576101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874748, 35.718224, 20.755148>,  <38.115467, 35.832268, 21.053558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874748, 35.718224, 20.755148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642341, 0.382299, -0.664263,
		0.474595, -0.878953, -0.046926,
		-0.601795, -0.285114, -0.746024,
		37.694210, 35.632690, 20.531342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544483, 35.866104, 20.505959>,  <38.115467, 35.832268, 21.053558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544483, 35.866104, 20.505959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186260, 35.859905, 20.328091>,  <37.971325, 35.856186, 20.221371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186260, 35.859905, 20.328091>,  <38.544483, 35.866104, 20.505959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186260, 35.859905, 20.328091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422652, 0.282715, -0.861068,
		0.139055, -0.959079, -0.246640,
		-0.895561, -0.015492, -0.444670,
		37.917591, 35.855255, 20.194689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584236, 35.413601, 19.828314>,  <38.544483, 35.866104, 20.505959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584236, 35.413601, 19.828314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258408, 35.641083, 19.782608>,  <38.062912, 35.777573, 19.755184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258408, 35.641083, 19.782608>,  <38.584236, 35.413601, 19.828314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258408, 35.641083, 19.782608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344564, 0.315910, -0.884011,
		-0.466643, -0.759458, -0.453285,
		-0.814567, 0.568704, -0.114265,
		38.014038, 35.811695, 19.748329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298939, 35.219475, 19.148258>,  <38.584236, 35.413601, 19.828314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298939, 35.219475, 19.148258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183971, 35.580345, 19.276930>,  <38.114990, 35.796867, 19.354132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183971, 35.580345, 19.276930>,  <38.298939, 35.219475, 19.148258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183971, 35.580345, 19.276930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456838, 0.424310, -0.781832,
		-0.841838, -0.077758, -0.534101,
		-0.287418, 0.902172, 0.321677,
		38.097748, 35.850998, 19.373432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090981, 35.521664, 18.528664>,  <38.298939, 35.219475, 19.148258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090981, 35.521664, 18.528664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149509, 35.814686, 18.794580>,  <38.184628, 35.990501, 18.954130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149509, 35.814686, 18.794580>,  <38.090981, 35.521664, 18.528664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149509, 35.814686, 18.794580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318131, 0.601480, -0.732813,
		-0.936688, 0.318714, -0.145043,
		0.146318, 0.732559, 0.664792,
		38.193405, 36.034454, 18.994019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666729, 36.207806, 18.444344>,  <38.090981, 35.521664, 18.528664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666729, 36.207806, 18.444344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034336, 36.244171, 18.597775>,  <38.254902, 36.265991, 18.689833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034336, 36.244171, 18.597775>,  <37.666729, 36.207806, 18.444344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034336, 36.244171, 18.597775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253519, 0.608816, -0.751712,
		-0.301872, 0.788085, 0.536466,
		0.919022, 0.090916, 0.383579,
		38.310043, 36.271446, 18.712849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758408, 36.918446, 18.475195>,  <37.666729, 36.207806, 18.444344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758408, 36.918446, 18.475195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119301, 36.749142, 18.442146>,  <38.335838, 36.647560, 18.422318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119301, 36.749142, 18.442146>,  <37.758408, 36.918446, 18.475195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119301, 36.749142, 18.442146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228514, 0.631705, -0.740763,
		0.365726, 0.649462, 0.666666,
		0.902234, -0.423259, -0.082620,
		38.389973, 36.622166, 18.417360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280125, 37.404655, 18.620335>,  <37.758408, 36.918446, 18.475195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280125, 37.404655, 18.620335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409412, 37.145279, 18.344641>,  <38.486984, 36.989651, 18.179224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409412, 37.145279, 18.344641>,  <38.280125, 37.404655, 18.620335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409412, 37.145279, 18.344641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106816, 0.748675, -0.654275,
		0.940275, 0.137856, 0.311253,
		0.323223, -0.648445, -0.689236,
		38.506378, 36.950745, 18.137871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827213, 37.640682, 18.329184>,  <38.280125, 37.404655, 18.620335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827213, 37.640682, 18.329184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635777, 37.433235, 18.045778>,  <38.520916, 37.308769, 17.875736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635777, 37.433235, 18.045778>,  <38.827213, 37.640682, 18.329184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635777, 37.433235, 18.045778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027924, 0.797529, -0.602634,
		0.877593, -0.308200, -0.367209,
		-0.478592, -0.518614, -0.708512,
		38.492199, 37.277653, 17.833225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235111, 37.670002, 17.734749>,  <38.827213, 37.640682, 18.329184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235111, 37.670002, 17.734749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859241, 37.583515, 17.628717>,  <38.633720, 37.531624, 17.565098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859241, 37.583515, 17.628717>,  <39.235111, 37.670002, 17.734749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859241, 37.583515, 17.628717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000623, 0.775984, -0.630752,
		0.342079, -0.592534, -0.729304,
		-0.939671, -0.216221, -0.265079,
		38.577339, 37.518650, 17.549194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871346, 38.090984, 17.260511>,  <39.235111, 37.670002, 17.734749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871346, 38.090984, 17.260511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623219, 38.361069, 17.420162>,  <38.474342, 38.523121, 17.515953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623219, 38.361069, 17.420162>,  <38.871346, 38.090984, 17.260511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623219, 38.361069, 17.420162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473038, -0.083857, 0.877042,
		0.625657, 0.732844, -0.267382,
		-0.620313, 0.675210, 0.399128,
		38.437126, 38.563633, 17.539900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347462, 38.471279, 17.601059>,  <38.871346, 38.090984, 17.260511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347462, 38.471279, 17.601059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984501, 38.521038, 17.761627>,  <38.766724, 38.550896, 17.857967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984501, 38.521038, 17.761627>,  <39.347462, 38.471279, 17.601059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984501, 38.521038, 17.761627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413004, 0.087325, 0.906533,
		0.077720, 0.988382, -0.130617,
		-0.907407, 0.124401, 0.401419,
		38.712280, 38.558357, 17.882053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510841, 38.105694, 18.254906>,  <39.347462, 38.471279, 17.601059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510841, 38.105694, 18.254906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686974, 38.180775, 18.606104>,  <39.792652, 38.225822, 18.816822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686974, 38.180775, 18.606104>,  <39.510841, 38.105694, 18.254906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686974, 38.180775, 18.606104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893906, -0.000257, -0.448255,
		-0.083914, 0.982225, -0.167905,
		0.440331, 0.187706, 0.877995,
		39.819073, 38.237087, 18.869503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060791, 38.612228, 18.237045>,  <39.510841, 38.105694, 18.254906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060791, 38.612228, 18.237045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161121, 38.398323, 18.559813>,  <40.221321, 38.269981, 18.753473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161121, 38.398323, 18.559813>,  <40.060791, 38.612228, 18.237045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161121, 38.398323, 18.559813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958519, 0.020635, -0.284280,
		0.135371, 0.844751, 0.517756,
		0.250829, -0.534762, 0.806916,
		40.236370, 38.237896, 18.801888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413803, 39.070736, 18.696913>,  <40.060791, 38.612228, 18.237045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413803, 39.070736, 18.696913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516891, 38.686661, 18.740032>,  <40.578743, 38.456215, 18.765903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516891, 38.686661, 18.740032>,  <40.413803, 39.070736, 18.696913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516891, 38.686661, 18.740032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948667, 0.230290, -0.216789,
		0.183333, 0.158137, 0.970248,
		0.257721, -0.960187, 0.107800,
		40.594208, 38.398605, 18.772371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777229, 38.859928, 19.121141>,  <40.413803, 39.070736, 18.696913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777229, 38.859928, 19.121141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658619, 38.492378, 19.225245>,  <39.587452, 38.271847, 19.287706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658619, 38.492378, 19.225245>,  <39.777229, 38.859928, 19.121141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658619, 38.492378, 19.225245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537581, 0.385838, 0.749757,
		-0.789352, 0.082417, -0.608384,
		-0.296530, -0.918878, 0.260256,
		39.569660, 38.216717, 19.303322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050644, 38.919170, 19.140434>,  <39.777229, 38.859928, 19.121141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050644, 38.919170, 19.140434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174229, 38.602329, 19.351004>,  <39.248379, 38.412224, 19.477345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174229, 38.602329, 19.351004>,  <39.050644, 38.919170, 19.140434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174229, 38.602329, 19.351004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648673, 0.229283, 0.725708,
		-0.695534, -0.565691, -0.442975,
		0.308960, -0.792101, 0.526422,
		39.266918, 38.364700, 19.508930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482136, 38.713409, 19.602787>,  <39.050644, 38.919170, 19.140434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482136, 38.713409, 19.602787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722969, 38.450680, 19.784370>,  <38.867470, 38.293041, 19.893320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722969, 38.450680, 19.784370>,  <38.482136, 38.713409, 19.602787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722969, 38.450680, 19.784370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625338, -0.034412, 0.779595,
		-0.496435, -0.753258, -0.431456,
		0.602084, -0.656825, 0.453957,
		38.903595, 38.253632, 19.920557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067799, 38.097935, 19.915140>,  <38.482136, 38.713409, 19.602787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067799, 38.097935, 19.915140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406948, 38.168194, 20.115244>,  <38.610439, 38.210350, 20.235306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406948, 38.168194, 20.115244>,  <38.067799, 38.097935, 19.915140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406948, 38.168194, 20.115244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513072, 0.033930, 0.857675,
		0.133677, -0.983868, 0.118890,
		0.847872, 0.175651, 0.500259,
		38.661308, 38.220886, 20.265322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965786, 37.786888, 20.489492>,  <38.067799, 38.097935, 19.915140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965786, 37.786888, 20.489492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301788, 37.980713, 20.587132>,  <38.503391, 38.097008, 20.645716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301788, 37.980713, 20.587132>,  <37.965786, 37.786888, 20.489492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301788, 37.980713, 20.587132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350364, 0.140918, 0.925952,
		0.414287, -0.863330, 0.288146,
		0.840007, 0.484566, 0.244099,
		38.553791, 38.126083, 20.660360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245770, 37.438034, 21.052267>,  <37.965786, 37.786888, 20.489492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245770, 37.438034, 21.052267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406158, 37.804115, 21.068390>,  <38.502392, 38.023766, 21.078064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406158, 37.804115, 21.068390>,  <38.245770, 37.438034, 21.052267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406158, 37.804115, 21.068390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229113, 0.057583, 0.971695,
		0.886977, -0.398860, 0.232774,
		0.400974, 0.915202, 0.040309,
		38.526451, 38.078674, 21.080482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587643, 37.413647, 21.553530>,  <38.245770, 37.438034, 21.052267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587643, 37.413647, 21.553530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528748, 37.807762, 21.518810>,  <38.493412, 38.044231, 21.497978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528748, 37.807762, 21.518810>,  <38.587643, 37.413647, 21.553530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528748, 37.807762, 21.518810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297302, 0.039609, 0.953962,
		0.943362, 0.166265, 0.287095,
		-0.147239, 0.985285, -0.086796,
		38.484577, 38.103348, 21.492771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939842, 37.688057, 22.128061>,  <38.587643, 37.413647, 21.553530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939842, 37.688057, 22.128061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700268, 37.976578, 21.988922>,  <38.556522, 38.149693, 21.905437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700268, 37.976578, 21.988922>,  <38.939842, 37.688057, 22.128061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700268, 37.976578, 21.988922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308500, 0.193023, 0.931434,
		0.738991, 0.665177, 0.106916,
		-0.598932, 0.721306, -0.347849,
		38.520588, 38.192970, 21.884567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855953, 38.217232, 22.589907>,  <38.939842, 37.688057, 22.128061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855953, 38.217232, 22.589907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539261, 38.322124, 22.369215>,  <38.349247, 38.385059, 22.236801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539261, 38.322124, 22.369215>,  <38.855953, 38.217232, 22.589907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539261, 38.322124, 22.369215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436218, 0.389582, 0.811135,
		0.427645, 0.882872, -0.194054,
		-0.791728, 0.262228, -0.551727,
		38.301743, 38.400791, 22.203697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666306, 38.904171, 22.897736>,  <38.855953, 38.217232, 22.589907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666306, 38.904171, 22.897736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352196, 38.729427, 22.722239>,  <38.163731, 38.624580, 22.616941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352196, 38.729427, 22.722239>,  <38.666306, 38.904171, 22.897736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352196, 38.729427, 22.722239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560732, 0.201335, 0.803146,
		-0.262531, 0.876707, -0.403067,
		-0.785275, -0.436864, -0.438741,
		38.116611, 38.598370, 22.590616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995392, 39.362888, 23.018362>,  <38.666306, 38.904171, 22.897736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995392, 39.362888, 23.018362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863892, 38.997562, 22.922218>,  <37.784992, 38.778366, 22.864532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863892, 38.997562, 22.922218>,  <37.995392, 39.362888, 23.018362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863892, 38.997562, 22.922218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525795, -0.034412, 0.849915,
		-0.784515, 0.405788, -0.468906,
		-0.328749, -0.913319, -0.240358,
		37.765266, 38.723568, 22.850111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256805, 39.410519, 23.172743>,  <37.995392, 39.362888, 23.018362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256805, 39.410519, 23.172743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359554, 39.023941, 23.172869>,  <37.421204, 38.791992, 23.172945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359554, 39.023941, 23.172869>,  <37.256805, 39.410519, 23.172743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359554, 39.023941, 23.172869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364785, -0.096652, 0.926062,
		-0.894959, -0.237990, -0.377371,
		0.256867, -0.966446, 0.000316,
		37.436615, 38.734009, 23.172964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791683, 39.115391, 23.525204>,  <37.256805, 39.410519, 23.172743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791683, 39.115391, 23.525204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063725, 38.822178, 23.529633>,  <37.226948, 38.646252, 23.532290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063725, 38.822178, 23.529633>,  <36.791683, 39.115391, 23.525204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063725, 38.822178, 23.529633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115389, -0.092116, 0.989040,
		-0.723979, -0.673927, -0.147232,
		0.680103, -0.733033, 0.011074,
		37.267754, 38.602268, 23.532955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503597, 38.421162, 23.730383>,  <36.791683, 39.115391, 23.525204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503597, 38.421162, 23.730383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892296, 38.429283, 23.824440>,  <37.125515, 38.434155, 23.880875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892296, 38.429283, 23.824440>,  <36.503597, 38.421162, 23.730383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892296, 38.429283, 23.824440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208269, -0.394936, 0.894790,
		0.111032, -0.918484, -0.379551,
		0.971749, 0.020302, 0.235142,
		37.183819, 38.435375, 23.894983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569378, 37.836426, 24.066387>,  <36.503597, 38.421162, 23.730383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569378, 37.836426, 24.066387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907375, 38.026676, 24.164173>,  <37.110172, 38.140827, 24.222845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907375, 38.026676, 24.164173>,  <36.569378, 37.836426, 24.066387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907375, 38.026676, 24.164173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151682, -0.225201, 0.962433,
		0.512814, -0.850331, -0.118149,
		0.844994, 0.475628, 0.244466,
		37.160873, 38.169365, 24.237513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800060, 37.446796, 24.583675>,  <36.569378, 37.836426, 24.066387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800060, 37.446796, 24.583675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990490, 37.793594, 24.642565>,  <37.104748, 38.001675, 24.677898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990490, 37.793594, 24.642565>,  <36.800060, 37.446796, 24.583675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990490, 37.793594, 24.642565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260054, -0.021127, 0.965363,
		0.840075, -0.497869, 0.215407,
		0.476074, 0.866995, 0.147221,
		37.133312, 38.053692, 24.686731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165615, 37.326019, 25.192217>,  <36.800060, 37.446796, 24.583675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165615, 37.326019, 25.192217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132282, 37.722260, 25.148844>,  <37.112282, 37.960003, 25.122820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132282, 37.722260, 25.148844>,  <37.165615, 37.326019, 25.192217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132282, 37.722260, 25.148844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200927, 0.089877, 0.975474,
		0.976056, 0.103071, 0.191550,
		-0.083328, 0.990605, -0.108434,
		37.107285, 38.019440, 25.116314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428436, 37.607475, 25.804373>,  <37.165615, 37.326019, 25.192217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428436, 37.607475, 25.804373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205166, 37.901291, 25.650030>,  <37.071205, 38.077579, 25.557425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205166, 37.901291, 25.650030>,  <37.428436, 37.607475, 25.804373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205166, 37.901291, 25.650030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376280, 0.190375, 0.906736,
		0.739494, 0.651309, 0.170132,
		-0.558177, 0.734543, -0.385856,
		37.037712, 38.121655, 25.534273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586880, 38.131901, 26.243948>,  <37.428436, 37.607475, 25.804373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586880, 38.131901, 26.243948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259289, 38.256557, 26.051220>,  <37.062733, 38.331352, 25.935583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259289, 38.256557, 26.051220>,  <37.586880, 38.131901, 26.243948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259289, 38.256557, 26.051220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422055, 0.241734, 0.873747,
		0.388770, 0.918936, -0.066445,
		-0.818979, 0.311643, -0.481821,
		37.013596, 38.350052, 25.906673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428879, 38.734940, 26.638199>,  <37.586880, 38.131901, 26.243948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428879, 38.734940, 26.638199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099926, 38.597195, 26.457043>,  <36.902554, 38.514549, 26.348349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099926, 38.597195, 26.457043>,  <37.428879, 38.734940, 26.638199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099926, 38.597195, 26.457043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520129, 0.132473, 0.843752,
		-0.230559, 0.929445, -0.288054,
		-0.822380, -0.344359, -0.452888,
		36.853210, 38.493885, 26.321177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856113, 39.345657, 26.651588>,  <37.428879, 38.734940, 26.638199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856113, 39.345657, 26.651588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697166, 38.980515, 26.614069>,  <36.601799, 38.761429, 26.591558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697166, 38.980515, 26.614069>,  <36.856113, 39.345657, 26.651588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697166, 38.980515, 26.614069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532216, 0.145985, 0.833927,
		-0.747561, 0.381293, -0.543845,
		-0.397364, -0.912855, -0.093798,
		36.577957, 38.706657, 26.585930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190155, 39.416695, 26.802769>,  <36.856113, 39.345657, 26.651588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190155, 39.416695, 26.802769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216873, 39.019375, 26.840483>,  <36.232903, 38.780983, 26.863111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216873, 39.019375, 26.840483>,  <36.190155, 39.416695, 26.802769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216873, 39.019375, 26.840483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697916, 0.021018, 0.715871,
		-0.713058, -0.113620, -0.691838,
		0.066796, -0.993302, 0.094285,
		36.236912, 38.721386, 26.868769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565651, 39.159103, 26.658453>,  <36.190155, 39.416695, 26.802769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565651, 39.159103, 26.658453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748703, 38.865803, 26.859619>,  <35.858532, 38.689823, 26.980318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748703, 38.865803, 26.859619>,  <35.565651, 39.159103, 26.658453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748703, 38.865803, 26.859619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748789, -0.012811, 0.662685,
		-0.479471, -0.679839, -0.554911,
		0.457628, -0.733249, 0.502914,
		35.885990, 38.645828, 27.010492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184017, 38.521824, 26.678461>,  <35.565651, 39.159103, 26.658453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184017, 38.521824, 26.678461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402519, 38.508629, 27.013250>,  <35.533619, 38.500713, 27.214123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402519, 38.508629, 27.013250>,  <35.184017, 38.521824, 26.678461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402519, 38.508629, 27.013250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837525, -0.036701, 0.545165,
		0.012736, -0.998782, -0.047673,
		0.546251, -0.032984, 0.836972,
		35.566395, 38.498734, 27.264341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785133, 38.096592, 27.124897>,  <35.184017, 38.521824, 26.678461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785133, 38.096592, 27.124897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064720, 38.266685, 27.354897>,  <35.232471, 38.368740, 27.492895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064720, 38.266685, 27.354897>,  <34.785133, 38.096592, 27.124897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064720, 38.266685, 27.354897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568312, -0.157799, 0.807540,
		0.434125, -0.891223, 0.131367,
		0.698969, 0.425230, 0.574997,
		35.274410, 38.394253, 27.527395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750610, 37.605530, 27.709578>,  <34.785133, 38.096592, 27.124897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750610, 37.605530, 27.709578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912132, 37.963017, 27.787775>,  <35.009045, 38.177509, 27.834694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912132, 37.963017, 27.787775>,  <34.750610, 37.605530, 27.709578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912132, 37.963017, 27.787775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497810, 0.035368, 0.866565,
		0.767546, -0.447243, 0.459181,
		0.403805, 0.893713, 0.195495,
		35.033276, 38.231129, 27.846424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085068, 37.557686, 28.308903>,  <34.750610, 37.605530, 27.709578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085068, 37.557686, 28.308903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030594, 37.952496, 28.274885>,  <34.997910, 38.189381, 28.254475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030594, 37.952496, 28.274885>,  <35.085068, 37.557686, 28.308903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030594, 37.952496, 28.274885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387832, 0.025873, 0.921367,
		0.911614, 0.158459, 0.379276,
		-0.136185, 0.987026, -0.085042,
		34.989738, 38.248604, 28.249372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323647, 37.808151, 28.956078>,  <35.085068, 37.557686, 28.308903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323647, 37.808151, 28.956078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103859, 38.094887, 28.784391>,  <34.971985, 38.266926, 28.681379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103859, 38.094887, 28.784391>,  <35.323647, 37.808151, 28.956078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103859, 38.094887, 28.784391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547139, 0.079529, 0.833255,
		0.631442, 0.692692, 0.348509,
		-0.549473, 0.716835, -0.429217,
		34.939018, 38.309937, 28.655626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411213, 38.385197, 29.425756>,  <35.323647, 37.808151, 28.956078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411213, 38.385197, 29.425756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089695, 38.467285, 29.202398>,  <34.896786, 38.516537, 29.068384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089695, 38.467285, 29.202398>,  <35.411213, 38.385197, 29.425756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089695, 38.467285, 29.202398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539346, 0.144709, 0.829557,
		0.251045, 0.967959, -0.005633,
		-0.803792, 0.205218, -0.558394,
		34.848557, 38.528851, 29.034880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949623, 38.982430, 29.790255>,  <35.411213, 38.385197, 29.425756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949623, 38.982430, 29.790255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683609, 38.814228, 29.543386>,  <34.523998, 38.713306, 29.395266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683609, 38.814228, 29.543386>,  <34.949623, 38.982430, 29.790255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683609, 38.814228, 29.543386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703336, 0.074824, 0.706908,
		-0.251079, 0.904200, -0.345517,
		-0.665039, -0.420505, -0.617170,
		34.484097, 38.688076, 29.358236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274689, 39.385578, 29.853703>,  <34.949623, 38.982430, 29.790255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274689, 39.385578, 29.853703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169601, 39.032639, 29.697531>,  <34.106548, 38.820873, 29.603828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169601, 39.032639, 29.697531>,  <34.274689, 39.385578, 29.853703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169601, 39.032639, 29.697531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792175, -0.033763, 0.609360,
		-0.550851, 0.469380, -0.690105,
		-0.262721, -0.882351, -0.390429,
		34.090786, 38.767933, 29.580402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511024, 39.431744, 29.658836>,  <34.274689, 39.385578, 29.853703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511024, 39.431744, 29.658836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617233, 39.047794, 29.694914>,  <33.680958, 38.817425, 29.716560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617233, 39.047794, 29.694914>,  <33.511024, 39.431744, 29.658836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617233, 39.047794, 29.694914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785622, -0.161190, 0.597341,
		-0.558835, -0.229467, -0.796899,
		0.265522, -0.959877, 0.090196,
		33.696892, 38.759830, 29.721973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901764, 38.917984, 29.662811>,  <33.511024, 39.431744, 29.658836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901764, 38.917984, 29.662811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196552, 38.716385, 29.842972>,  <33.373425, 38.595425, 29.951069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196552, 38.716385, 29.842972>,  <32.901764, 38.917984, 29.662811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196552, 38.716385, 29.842972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618375, -0.233679, 0.750337,
		-0.272923, -0.831490, -0.483877,
		0.736970, -0.504002, 0.450397,
		33.417645, 38.565186, 29.978092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592049, 38.436699, 29.947838>,  <32.901764, 38.917984, 29.662811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592049, 38.436699, 29.947838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928661, 38.436680, 30.163923>,  <33.130627, 38.436668, 30.293575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928661, 38.436680, 30.163923>,  <32.592049, 38.436699, 29.947838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928661, 38.436680, 30.163923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521270, -0.262566, 0.811996,
		0.141802, -0.964914, -0.220982,
		0.841528, -0.000048, 0.540213,
		33.181118, 38.436665, 30.325987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596237, 37.765068, 30.419558>,  <32.592049, 38.436699, 29.947838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596237, 37.765068, 30.419558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866386, 38.026516, 30.556179>,  <33.028477, 38.183384, 30.638153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866386, 38.026516, 30.556179>,  <32.596237, 37.765068, 30.419558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866386, 38.026516, 30.556179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251614, -0.231129, 0.939824,
		0.693229, -0.720669, 0.008362,
		0.675369, 0.653617, 0.341556,
		33.068996, 38.222603, 30.658646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074657, 37.372749, 30.838100>,  <32.596237, 37.765068, 30.419558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074657, 37.372749, 30.838100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098381, 37.751175, 30.965508>,  <33.112614, 37.978230, 31.041952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098381, 37.751175, 30.965508>,  <33.074657, 37.372749, 30.838100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098381, 37.751175, 30.965508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250597, -0.294749, 0.922130,
		0.966273, -0.134509, 0.219599,
		0.059308, 0.946060, 0.318515,
		33.116173, 38.034992, 31.061062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346786, 37.286911, 31.451063>,  <33.074657, 37.372749, 30.838100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346786, 37.286911, 31.451063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194622, 37.656250, 31.471880>,  <33.103325, 37.877853, 31.484369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194622, 37.656250, 31.471880>,  <33.346786, 37.286911, 31.451063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194622, 37.656250, 31.471880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273802, -0.166197, 0.947318,
		0.883357, 0.346122, 0.316039,
		-0.380412, 0.923352, 0.052043,
		33.080498, 37.933254, 31.487494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572765, 37.503952, 32.101437>,  <33.346786, 37.286911, 31.451063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572765, 37.503952, 32.101437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254166, 37.713371, 31.980452>,  <33.063007, 37.839024, 31.907860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254166, 37.713371, 31.980452>,  <33.572765, 37.503952, 32.101437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254166, 37.713371, 31.980452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353462, 0.002690, 0.935445,
		0.490564, 0.851992, 0.182912,
		-0.796500, 0.523548, -0.302466,
		33.015217, 37.870434, 31.889711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601959, 38.079548, 32.457066>,  <33.572765, 37.503952, 32.101437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601959, 38.079548, 32.457066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220009, 38.048786, 32.342319>,  <32.990837, 38.030331, 32.273472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220009, 38.048786, 32.342319>,  <33.601959, 38.079548, 32.457066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220009, 38.048786, 32.342319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290515, 0.041177, 0.955984,
		-0.061705, 0.996188, -0.061661,
		-0.954879, -0.076902, -0.286867,
		32.933544, 38.025715, 32.256260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309513, 37.953800, 32.601532>,  <33.601959, 38.079548, 32.457066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309513, 37.953800, 32.601532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626152, 37.945759, 32.845818>,  <34.816135, 37.940933, 32.992390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626152, 37.945759, 32.845818>,  <34.309513, 37.953800, 32.601532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626152, 37.945759, 32.845818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604958, 0.166459, -0.778664,
		-0.086002, 0.985843, 0.143932,
		0.791599, -0.020106, 0.610710,
		34.863632, 37.939728, 33.029030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645485, 38.515217, 32.468044>,  <34.309513, 37.953800, 32.601532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645485, 38.515217, 32.468044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930695, 38.289524, 32.634533>,  <35.101822, 38.154110, 32.734425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930695, 38.289524, 32.634533>,  <34.645485, 38.515217, 32.468044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930695, 38.289524, 32.634533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597345, 0.178028, -0.781975,
		0.367118, 0.806193, 0.463980,
		0.713024, -0.564233, 0.416219,
		35.144600, 38.120255, 32.759399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244183, 38.877544, 32.604519>,  <34.645485, 38.515217, 32.468044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244183, 38.877544, 32.604519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374542, 38.500244, 32.579033>,  <35.452759, 38.273865, 32.563744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374542, 38.500244, 32.579033>,  <35.244183, 38.877544, 32.604519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374542, 38.500244, 32.579033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580510, 0.252850, -0.773999,
		0.746188, 0.215263, 0.629973,
		0.325902, -0.943254, -0.063711,
		35.472313, 38.217266, 32.559921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896618, 38.929855, 32.592602>,  <35.244183, 38.877544, 32.604519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896618, 38.929855, 32.592602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862610, 38.568192, 32.425144>,  <35.842205, 38.351192, 32.324669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862610, 38.568192, 32.425144>,  <35.896618, 38.929855, 32.592602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862610, 38.568192, 32.425144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609335, 0.285255, -0.739825,
		0.788342, -0.317991, 0.526687,
		-0.085017, -0.904164, -0.418641,
		35.837105, 38.296944, 32.299553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503696, 38.924477, 32.288059>,  <35.896618, 38.929855, 32.592602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503696, 38.924477, 32.288059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305336, 38.629719, 32.104294>,  <36.186321, 38.452862, 31.994034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305336, 38.629719, 32.104294>,  <36.503696, 38.924477, 32.288059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305336, 38.629719, 32.104294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589832, 0.102449, -0.801001,
		0.637322, -0.668196, 0.383841,
		-0.495902, -0.736898, -0.459417,
		36.156567, 38.408649, 31.966469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998905, 38.546322, 32.109585>,  <36.503696, 38.924477, 32.288059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998905, 38.546322, 32.109585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697311, 38.405830, 31.887541>,  <36.516354, 38.321537, 31.754314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697311, 38.405830, 31.887541>,  <36.998905, 38.546322, 32.109585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697311, 38.405830, 31.887541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613434, -0.074215, -0.786251,
		0.234957, -0.933344, 0.271412,
		-0.753986, -0.351228, -0.555108,
		36.471115, 38.300461, 31.721008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145603, 37.912857, 31.763496>,  <36.998905, 38.546322, 32.109585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145603, 37.912857, 31.763496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864540, 38.050495, 31.514381>,  <36.695900, 38.133080, 31.364912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864540, 38.050495, 31.514381>,  <37.145603, 37.912857, 31.763496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864540, 38.050495, 31.514381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636077, -0.088475, -0.766537,
		-0.318866, -0.934755, -0.156706,
		-0.702660, 0.344100, -0.622788,
		36.653744, 38.153725, 31.327545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295788, 37.478580, 31.212484>,  <37.145603, 37.912857, 31.763496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295788, 37.478580, 31.212484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039825, 37.741661, 31.053514>,  <36.886250, 37.899509, 30.958134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039825, 37.741661, 31.053514>,  <37.295788, 37.478580, 31.212484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039825, 37.741661, 31.053514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421140, -0.132442, -0.897274,
		-0.642778, -0.741540, -0.192236,
		-0.639904, 0.657706, -0.397423,
		36.847855, 37.938972, 30.934288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970322, 37.256397, 30.592009>,  <37.295788, 37.478580, 31.212484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970322, 37.256397, 30.592009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958290, 37.656216, 30.590910>,  <36.951069, 37.896107, 30.590250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958290, 37.656216, 30.590910>,  <36.970322, 37.256397, 30.592009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958290, 37.656216, 30.590910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566852, 0.014797, -0.823687,
		-0.823271, -0.026334, -0.567038,
		-0.030082, 0.999544, -0.002746,
		36.949265, 37.956078, 30.590086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680477, 37.514416, 29.889101>,  <36.970322, 37.256397, 30.592009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680477, 37.514416, 29.889101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893097, 37.810970, 30.052956>,  <37.020668, 37.988903, 30.151268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893097, 37.810970, 30.052956>,  <36.680477, 37.514416, 29.889101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893097, 37.810970, 30.052956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494767, 0.120770, -0.860593,
		-0.687500, 0.660126, -0.302616,
		0.531553, 0.741382, 0.409638,
		37.052563, 38.033386, 30.175848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793003, 37.993584, 29.371778>,  <36.680477, 37.514416, 29.889101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793003, 37.993584, 29.371778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048042, 38.161564, 29.630114>,  <37.201065, 38.262352, 29.785114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048042, 38.161564, 29.630114>,  <36.793003, 37.993584, 29.371778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048042, 38.161564, 29.630114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550752, 0.337689, -0.763308,
		-0.538644, 0.842382, -0.015978,
		0.637601, 0.419951, 0.645838,
		37.239323, 38.287548, 29.823864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920540, 38.763035, 29.145117>,  <36.793003, 37.993584, 29.371778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920540, 38.763035, 29.145117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230991, 38.629864, 29.359324>,  <37.417263, 38.549961, 29.487846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230991, 38.629864, 29.359324>,  <36.920540, 38.763035, 29.145117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230991, 38.629864, 29.359324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589537, 0.081768, -0.803592,
		0.223749, 0.939401, 0.259735,
		0.776133, -0.332926, 0.535516,
		37.463833, 38.529987, 29.519978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492825, 39.273819, 29.074438>,  <36.920540, 38.763035, 29.145117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492825, 39.273819, 29.074438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642658, 38.920574, 29.187433>,  <37.732559, 38.708626, 29.255230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642658, 38.920574, 29.187433>,  <37.492825, 39.273819, 29.074438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642658, 38.920574, 29.187433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705713, 0.073946, -0.704629,
		0.601377, 0.463300, 0.650922,
		0.374588, -0.883111, 0.282487,
		37.755035, 38.655640, 29.272179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138905, 39.354824, 28.965292>,  <37.492825, 39.273819, 29.074438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138905, 39.354824, 28.965292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153328, 38.955566, 28.984932>,  <38.161980, 38.716011, 28.996716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153328, 38.955566, 28.984932>,  <38.138905, 39.354824, 28.965292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153328, 38.955566, 28.984932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766546, -0.003899, -0.642178,
		0.641176, 0.060791, 0.764982,
		0.036056, -0.998143, 0.049099,
		38.164146, 38.656124, 28.999662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905678, 39.133217, 29.024704>,  <38.138905, 39.354824, 28.965292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905678, 39.133217, 29.024704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689064, 38.836807, 28.865902>,  <38.559093, 38.658962, 28.770620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689064, 38.836807, 28.865902>,  <38.905678, 39.133217, 29.024704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689064, 38.836807, 28.865902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594462, -0.003624, -0.804115,
		0.594433, -0.671464, 0.442476,
		-0.541538, -0.741028, -0.397006,
		38.526604, 38.614498, 28.746799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309204, 38.573097, 28.756685>,  <38.905678, 39.133217, 29.024704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309204, 38.573097, 28.756685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968014, 38.498528, 28.561678>,  <38.763298, 38.453785, 28.444674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968014, 38.498528, 28.561678>,  <39.309204, 38.573097, 28.756685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968014, 38.498528, 28.561678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521461, -0.344746, -0.780531,
		-0.022557, -0.919997, 0.391275,
		-0.852976, -0.186428, -0.487519,
		38.712120, 38.442600, 28.415422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239265, 37.848934, 28.452377>,  <39.309204, 38.573097, 28.756685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239265, 37.848934, 28.452377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002514, 38.080208, 28.227745>,  <38.860462, 38.218971, 28.092966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002514, 38.080208, 28.227745>,  <39.239265, 37.848934, 28.452377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002514, 38.080208, 28.227745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387934, -0.406381, -0.827261,
		-0.706528, -0.707499, 0.016231,
		-0.591883, 0.578187, -0.561583,
		38.824947, 38.253662, 28.059271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200691, 37.480000, 27.784483>,  <39.239265, 37.848934, 28.452377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200691, 37.480000, 27.784483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049217, 37.837879, 27.689737>,  <38.958332, 38.052608, 27.632889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049217, 37.837879, 27.689737>,  <39.200691, 37.480000, 27.784483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049217, 37.837879, 27.689737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148602, -0.193828, -0.969715,
		-0.913518, -0.402416, -0.059554,
		-0.378686, 0.894702, -0.236865,
		38.935612, 38.106289, 27.618677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867466, 37.336174, 27.253740>,  <39.200691, 37.480000, 27.784483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867466, 37.336174, 27.253740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917450, 37.727127, 27.185499>,  <38.947441, 37.961700, 27.144554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917450, 37.727127, 27.185499>,  <38.867466, 37.336174, 27.253740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917450, 37.727127, 27.185499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002416, -0.172251, -0.985050,
		-0.992159, 0.122679, -0.023885,
		0.124959, 0.977384, -0.170604,
		38.954937, 38.020344, 27.134317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447929, 37.526730, 26.671043>,  <38.867466, 37.336174, 27.253740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447929, 37.526730, 26.671043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705364, 37.832340, 26.689169>,  <38.859825, 38.015705, 26.700045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705364, 37.832340, 26.689169>,  <38.447929, 37.526730, 26.671043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705364, 37.832340, 26.689169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165276, -0.080926, -0.982922,
		-0.747312, 0.640088, -0.178358,
		0.643590, 0.764028, 0.045314,
		38.898441, 38.061550, 26.702763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267651, 37.875027, 26.056841>,  <38.447929, 37.526730, 26.671043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267651, 37.875027, 26.056841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623661, 38.009037, 26.180531>,  <38.837265, 38.089443, 26.254745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623661, 38.009037, 26.180531>,  <38.267651, 37.875027, 26.056841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623661, 38.009037, 26.180531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357119, -0.090661, -0.929649,
		-0.283417, 0.937839, -0.200333,
		0.890023, 0.335021, 0.309225,
		38.890667, 38.109543, 26.273298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504295, 38.421749, 25.681658>,  <38.267651, 37.875027, 26.056841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504295, 38.421749, 25.681658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840881, 38.255985, 25.820333>,  <39.042835, 38.156525, 25.903540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840881, 38.255985, 25.820333>,  <38.504295, 38.421749, 25.681658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840881, 38.255985, 25.820333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378095, -0.006738, -0.925742,
		0.385977, 0.910064, 0.151018,
		0.841467, -0.414414, 0.346691,
		39.093323, 38.131660, 25.924341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117317, 38.782639, 25.309618>,  <38.504295, 38.421749, 25.681658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117317, 38.782639, 25.309618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222038, 38.416737, 25.432703>,  <39.284870, 38.197197, 25.506554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222038, 38.416737, 25.432703>,  <39.117317, 38.782639, 25.309618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222038, 38.416737, 25.432703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488610, -0.149328, -0.859629,
		0.832298, 0.375403, 0.407863,
		0.261802, -0.914753, 0.307711,
		39.300579, 38.142311, 25.525017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725502, 38.744617, 24.838783>,  <39.117317, 38.782639, 25.309618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725502, 38.744617, 24.838783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644093, 38.388958, 25.002733>,  <39.595245, 38.175564, 25.101103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644093, 38.388958, 25.002733>,  <39.725502, 38.744617, 24.838783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644093, 38.388958, 25.002733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312576, -0.455737, -0.833427,
		0.927834, -0.041504, 0.370678,
		-0.203523, -0.889146, 0.409875,
		39.583035, 38.122215, 25.125696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398994, 38.325504, 24.981537>,  <39.725502, 38.744617, 24.838783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398994, 38.325504, 24.981537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091782, 38.069778, 24.966581>,  <39.907452, 37.916344, 24.957607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091782, 38.069778, 24.966581>,  <40.398994, 38.325504, 24.981537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091782, 38.069778, 24.966581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408728, -0.444402, -0.797150,
		0.493014, -0.627522, 0.602623,
		-0.768036, -0.639315, -0.037390,
		39.861370, 37.877983, 24.955364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659702, 37.652256, 24.837029>,  <40.398994, 38.325504, 24.981537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659702, 37.652256, 24.837029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277782, 37.670162, 24.719479>,  <40.048630, 37.680908, 24.648949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277782, 37.670162, 24.719479>,  <40.659702, 37.652256, 24.837029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277782, 37.670162, 24.719479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238593, -0.474256, -0.847440,
		-0.177309, -0.879248, 0.442136,
		-0.954796, 0.044768, -0.293872,
		39.991344, 37.683594, 24.631317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548531, 36.974140, 24.705484>,  <40.659702, 37.652256, 24.837029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548531, 36.974140, 24.705484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285297, 37.181671, 24.487219>,  <40.127357, 37.306190, 24.356260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285297, 37.181671, 24.487219>,  <40.548531, 36.974140, 24.705484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285297, 37.181671, 24.487219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228391, -0.553012, -0.801258,
		-0.717475, -0.651916, 0.245430,
		-0.658079, 0.518829, -0.545664,
		40.087872, 37.337318, 24.323521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287613, 36.561470, 24.327360>,  <40.548531, 36.974140, 24.705484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287613, 36.561470, 24.327360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165977, 36.888367, 24.131548>,  <40.092995, 37.084507, 24.014061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165977, 36.888367, 24.131548>,  <40.287613, 36.561470, 24.327360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165977, 36.888367, 24.131548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134608, -0.471850, -0.871343,
		-0.943086, -0.330861, 0.033477,
		-0.304089, 0.817245, -0.489532,
		40.074749, 37.133541, 23.984688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841560, 36.337627, 23.776571>,  <40.287613, 36.561470, 24.327360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841560, 36.337627, 23.776571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991409, 36.691727, 23.666304>,  <40.081318, 36.904186, 23.600143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991409, 36.691727, 23.666304>,  <39.841560, 36.337627, 23.776571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991409, 36.691727, 23.666304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147320, -0.350377, -0.924950,
		-0.915397, 0.305900, -0.261675,
		0.374627, 0.885246, -0.275669,
		40.103798, 36.957302, 23.583603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441162, 36.645344, 23.276114>,  <39.841560, 36.337627, 23.776571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441162, 36.645344, 23.276114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814419, 36.782192, 23.231947>,  <40.038372, 36.864300, 23.205446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814419, 36.782192, 23.231947>,  <39.441162, 36.645344, 23.276114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814419, 36.782192, 23.231947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002198, -0.301707, -0.953398,
		-0.359492, 0.889902, -0.280784,
		0.933146, 0.342122, -0.110417,
		40.094364, 36.884830, 23.198822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406273, 36.746136, 22.602264>,  <39.441162, 36.645344, 23.276114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406273, 36.746136, 22.602264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793476, 36.799103, 22.687525>,  <40.025799, 36.830883, 22.738682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793476, 36.799103, 22.687525>,  <39.406273, 36.746136, 22.602264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793476, 36.799103, 22.687525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230091, -0.129437, -0.964523,
		-0.100131, 0.982706, -0.155764,
		0.968004, 0.132418, 0.213152,
		40.083878, 36.838829, 22.751471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632778, 37.123535, 22.054565>,  <39.406273, 36.746136, 22.602264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632778, 37.123535, 22.054565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973114, 36.987816, 22.215036>,  <40.177315, 36.906384, 22.311319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973114, 36.987816, 22.215036>,  <39.632778, 37.123535, 22.054565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973114, 36.987816, 22.215036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378773, -0.133072, -0.915873,
		0.364143, 0.931217, 0.015296,
		0.850841, -0.339303, 0.401178,
		40.228367, 36.886024, 22.335390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217041, 37.266518, 21.518335>,  <39.632778, 37.123535, 22.054565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217041, 37.266518, 21.518335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390926, 36.999355, 21.759974>,  <40.495258, 36.839058, 21.904957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390926, 36.999355, 21.759974>,  <40.217041, 37.266518, 21.518335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390926, 36.999355, 21.759974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317190, -0.514255, -0.796827,
		0.842862, 0.538002, -0.011700,
		0.434711, -0.667904, 0.604095,
		40.521339, 36.798985, 21.941202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817184, 37.026634, 21.102413>,  <40.217041, 37.266518, 21.518335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817184, 37.026634, 21.102413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758541, 36.765720, 21.399878>,  <40.723354, 36.609173, 21.578358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758541, 36.765720, 21.399878>,  <40.817184, 37.026634, 21.102413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758541, 36.765720, 21.399878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365202, -0.734366, -0.572132,
		0.919312, 0.187710, 0.345876,
		-0.146604, -0.652282, 0.743663,
		40.714561, 36.570034, 21.622976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425079, 36.615639, 21.104156>,  <40.817184, 37.026634, 21.102413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425079, 36.615639, 21.104156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159824, 36.378517, 21.286947>,  <41.000671, 36.236244, 21.396622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159824, 36.378517, 21.286947>,  <41.425079, 36.615639, 21.104156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159824, 36.378517, 21.286947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235180, -0.744630, -0.624673,
		0.710587, -0.306775, 0.633211,
		-0.663142, -0.592803, 0.456977,
		40.960880, 36.200676, 21.424040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807838, 35.961494, 21.240282>,  <41.425079, 36.615639, 21.104156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807838, 35.961494, 21.240282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414970, 35.887505, 21.226845>,  <41.179249, 35.843109, 21.218782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414970, 35.887505, 21.226845>,  <41.807838, 35.961494, 21.240282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414970, 35.887505, 21.226845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173240, -0.821095, -0.543867,
		0.073018, -0.539989, 0.838499,
		-0.982169, -0.184974, -0.033593,
		41.120319, 35.832012, 21.216766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827408, 35.275703, 21.466908>,  <41.807838, 35.961494, 21.240282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827408, 35.275703, 21.466908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499493, 35.356419, 21.252533>,  <41.302742, 35.404846, 21.123909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499493, 35.356419, 21.252533>,  <41.827408, 35.275703, 21.466908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499493, 35.356419, 21.252533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276659, -0.679851, -0.679164,
		-0.501403, -0.705043, 0.501508,
		-0.819790, 0.201788, -0.535935,
		41.253555, 35.416954, 21.091753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558357, 34.625446, 21.255093>,  <41.827408, 35.275703, 21.466908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558357, 34.625446, 21.255093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404045, 34.893631, 21.001587>,  <41.311459, 35.054543, 20.849483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404045, 34.893631, 21.001587>,  <41.558357, 34.625446, 21.255093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404045, 34.893631, 21.001587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272082, -0.573710, -0.772547,
		-0.881557, -0.470471, 0.038907,
		-0.385782, 0.670458, -0.633765,
		41.288311, 35.094769, 20.811457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214424, 34.330231, 21.499514>,  <41.558357, 34.625446, 21.255093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214424, 34.330231, 21.499514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562080, 34.164825, 21.608036>,  <42.770672, 34.065582, 21.673149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562080, 34.164825, 21.608036>,  <42.214424, 34.330231, 21.499514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562080, 34.164825, 21.608036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156273, 0.290848, 0.943921,
		-0.469234, -0.862794, 0.188166,
		0.869137, -0.413515, 0.271307,
		42.822823, 34.040771, 21.689428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067894, 33.829067, 22.047857>,  <42.214424, 34.330231, 21.499514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067894, 33.829067, 22.047857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445019, 33.959923, 22.073439>,  <42.671291, 34.038437, 22.088787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445019, 33.959923, 22.073439>,  <42.067894, 33.829067, 22.047857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445019, 33.959923, 22.073439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158339, 0.270693, 0.949555,
		0.293338, -0.905371, 0.307012,
		0.942805, 0.327152, 0.063951,
		42.727863, 34.058064, 22.092625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344097, 33.524204, 22.651554>,  <42.067894, 33.829067, 22.047857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344097, 33.524204, 22.651554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627281, 33.798393, 22.583532>,  <42.797192, 33.962906, 22.542719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627281, 33.798393, 22.583532>,  <42.344097, 33.524204, 22.651554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627281, 33.798393, 22.583532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020276, 0.260415, 0.965284,
		0.705958, -0.679938, 0.198263,
		0.707964, 0.685469, -0.170056,
		42.839672, 34.004032, 22.532516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702908, 33.521484, 23.207344>,  <42.344097, 33.524204, 22.651554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702908, 33.521484, 23.207344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837093, 33.862793, 23.047646>,  <42.917606, 34.067577, 22.951826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837093, 33.862793, 23.047646>,  <42.702908, 33.521484, 23.207344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837093, 33.862793, 23.047646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227915, 0.337703, 0.913242,
		0.914066, -0.397356, -0.081184,
		0.335466, 0.853267, -0.399247,
		42.937733, 34.118774, 22.927872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355133, 33.687271, 23.466393>,  <42.702908, 33.521484, 23.207344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355133, 33.687271, 23.466393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184132, 34.031715, 23.356323>,  <43.081532, 34.238384, 23.290281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184132, 34.031715, 23.356323>,  <43.355133, 33.687271, 23.466393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184132, 34.031715, 23.356323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119512, 0.355556, 0.926982,
		0.896078, 0.363403, -0.254916,
		-0.427505, 0.861114, -0.275175,
		43.055882, 34.290051, 23.273771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689144, 34.261665, 23.844744>,  <43.355133, 33.687271, 23.466393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689144, 34.261665, 23.844744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351128, 34.445042, 23.734655>,  <43.148319, 34.555065, 23.668602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351128, 34.445042, 23.734655>,  <43.689144, 34.261665, 23.844744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351128, 34.445042, 23.734655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149914, 0.290940, 0.944923,
		0.513262, 0.839755, -0.177129,
		-0.845037, 0.458439, -0.275219,
		43.097618, 34.582573, 23.652090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711079, 34.928280, 24.265890>,  <43.689144, 34.261665, 23.844744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711079, 34.928280, 24.265890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332973, 34.862175, 24.153345>,  <43.106110, 34.822514, 24.085817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332973, 34.862175, 24.153345>,  <43.711079, 34.928280, 24.265890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332973, 34.862175, 24.153345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322148, 0.335392, 0.885287,
		-0.051935, 0.927471, -0.370272,
		-0.945264, -0.165260, -0.281364,
		43.049393, 34.812595, 24.068935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413334, 35.540180, 24.428045>,  <43.711079, 34.928280, 24.265890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413334, 35.540180, 24.428045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146446, 35.244350, 24.392584>,  <42.986313, 35.066853, 24.371307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146446, 35.244350, 24.392584>,  <43.413334, 35.540180, 24.428045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146446, 35.244350, 24.392584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471720, 0.327429, 0.818701,
		-0.576458, 0.588071, -0.567335,
		-0.667216, -0.739570, -0.088656,
		42.946281, 35.022480, 24.365988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830517, 35.915157, 24.414627>,  <43.413334, 35.540180, 24.428045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830517, 35.915157, 24.414627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715179, 35.551601, 24.535139>,  <42.645977, 35.333466, 24.607447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715179, 35.551601, 24.535139>,  <42.830517, 35.915157, 24.414627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715179, 35.551601, 24.535139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543341, 0.414391, 0.730110,
		-0.788440, 0.046825, -0.613326,
		-0.288345, -0.908893, 0.301281,
		42.628677, 35.278934, 24.625523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069595, 35.910393, 24.548227>,  <42.830517, 35.915157, 24.414627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069595, 35.910393, 24.548227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238003, 35.610664, 24.752684>,  <42.339046, 35.430828, 24.875357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238003, 35.610664, 24.752684>,  <42.069595, 35.910393, 24.548227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238003, 35.610664, 24.752684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563706, 0.225330, 0.794646,
		-0.710618, -0.622694, -0.327527,
		0.421020, -0.749319, 0.511140,
		42.364307, 35.385868, 24.906025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482544, 35.600788, 24.891354>,  <42.069595, 35.910393, 24.548227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482544, 35.600788, 24.891354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812653, 35.455303, 25.064163>,  <42.010719, 35.368011, 25.167849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812653, 35.455303, 25.064163>,  <41.482544, 35.600788, 24.891354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812653, 35.455303, 25.064163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414807, 0.128732, 0.900757,
		-0.383228, -0.922575, -0.044630,
		0.825271, -0.363708, 0.432024,
		42.060234, 35.346191, 25.193771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297886, 35.042446, 25.300833>,  <41.482544, 35.600788, 24.891354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297886, 35.042446, 25.300833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653008, 35.166573, 25.436781>,  <41.866081, 35.241047, 25.518349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653008, 35.166573, 25.436781>,  <41.297886, 35.042446, 25.300833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653008, 35.166573, 25.436781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366728, 0.030827, 0.929817,
		0.278062, -0.950133, 0.141171,
		0.887802, 0.310319, 0.339868,
		41.919350, 35.259666, 25.538742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333195, 34.689537, 25.814558>,  <41.297886, 35.042446, 25.300833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333195, 34.689537, 25.814558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593945, 34.982655, 25.892605>,  <41.750393, 35.158527, 25.939434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593945, 34.982655, 25.892605>,  <41.333195, 34.689537, 25.814558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593945, 34.982655, 25.892605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273082, -0.013196, 0.961900,
		0.707453, -0.680319, 0.191512,
		0.651871, 0.732798, 0.195118,
		41.789505, 35.202496, 25.951139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598946, 34.461941, 26.416624>,  <41.333195, 34.689537, 25.814558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598946, 34.461941, 26.416624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675552, 34.854031, 26.396729>,  <41.721516, 35.089287, 26.384790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675552, 34.854031, 26.396729>,  <41.598946, 34.461941, 26.416624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675552, 34.854031, 26.396729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278035, 0.102785, 0.955056,
		0.941285, -0.169079, 0.292223,
		0.191516, 0.980228, -0.049740,
		41.733006, 35.148098, 26.381807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009449, 34.617237, 26.990400>,  <41.598946, 34.461941, 26.416624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009449, 34.617237, 26.990400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845387, 34.963776, 26.876411>,  <41.746948, 35.171700, 26.808018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845387, 34.963776, 26.876411>,  <42.009449, 34.617237, 26.990400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845387, 34.963776, 26.876411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153601, 0.242384, 0.957944,
		0.898987, 0.436681, 0.033656,
		-0.410158, 0.866349, -0.284974,
		41.722340, 35.223679, 26.790918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157196, 35.085442, 27.572561>,  <42.009449, 34.617237, 26.990400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157196, 35.085442, 27.572561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869862, 35.299187, 27.394369>,  <41.697460, 35.427433, 27.287455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869862, 35.299187, 27.394369>,  <42.157196, 35.085442, 27.572561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869862, 35.299187, 27.394369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248432, 0.401086, 0.881709,
		0.649824, 0.744037, -0.155364,
		-0.718339, 0.534358, -0.445478,
		41.654362, 35.459496, 27.260725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068859, 35.777523, 27.915796>,  <42.157196, 35.085442, 27.572561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068859, 35.777523, 27.915796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730816, 35.772327, 27.702019>,  <41.527992, 35.769211, 27.573751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730816, 35.772327, 27.702019>,  <42.068859, 35.777523, 27.915796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730816, 35.772327, 27.702019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462006, 0.520743, 0.717898,
		0.268980, 0.853615, -0.446085,
		-0.845103, -0.012994, -0.534445,
		41.477283, 35.768429, 27.541685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772633, 36.446884, 27.916048>,  <42.068859, 35.777523, 27.915796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772633, 36.446884, 27.916048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470402, 36.207401, 27.809729>,  <41.289062, 36.063713, 27.745937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470402, 36.207401, 27.809729>,  <41.772633, 36.446884, 27.916048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470402, 36.207401, 27.809729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576564, 0.415237, 0.703670,
		-0.310924, 0.684929, -0.658938,
		-0.755579, -0.598708, -0.265799,
		41.243729, 36.027790, 27.729988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146549, 36.902035, 27.534472>,  <41.772633, 36.446884, 27.916048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146549, 36.902035, 27.534472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030014, 36.563915, 27.713621>,  <40.960091, 36.361042, 27.821112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030014, 36.563915, 27.713621>,  <41.146549, 36.902035, 27.534472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030014, 36.563915, 27.713621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602120, 0.525846, 0.600780,
		-0.743352, -0.094643, -0.662171,
		-0.291340, -0.845298, 0.447875,
		40.942612, 36.310326, 27.847984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492069, 37.027439, 27.771383>,  <41.146549, 36.902035, 27.534472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492069, 37.027439, 27.771383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544945, 36.695862, 27.988775>,  <40.576672, 36.496914, 28.119211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544945, 36.695862, 27.988775>,  <40.492069, 37.027439, 27.771383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544945, 36.695862, 27.988775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590161, 0.374703, 0.715058,
		-0.796389, -0.415264, -0.439681,
		0.132188, -0.828947, 0.543482,
		40.584602, 36.447178, 28.151819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830700, 36.849503, 27.971386>,  <40.492069, 37.027439, 27.771383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830700, 36.849503, 27.971386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052746, 36.640896, 28.230572>,  <40.185974, 36.515732, 28.386084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052746, 36.640896, 28.230572>,  <39.830700, 36.849503, 27.971386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052746, 36.640896, 28.230572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656180, 0.204148, 0.726465,
		-0.511148, -0.828456, -0.228886,
		0.555117, -0.521522, 0.647967,
		40.219280, 36.484440, 28.424961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374348, 36.612411, 28.381199>,  <39.830700, 36.849503, 27.971386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374348, 36.612411, 28.381199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705208, 36.548946, 28.596848>,  <39.903725, 36.510868, 28.726236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705208, 36.548946, 28.596848>,  <39.374348, 36.612411, 28.381199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705208, 36.548946, 28.596848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445582, 0.399433, 0.801193,
		-0.342465, -0.902928, 0.259691,
		0.827148, -0.158667, 0.539120,
		39.953354, 36.501347, 28.758583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157413, 36.313801, 28.952255>,  <39.374348, 36.612411, 28.381199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157413, 36.313801, 28.952255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521072, 36.440887, 29.059967>,  <39.739265, 36.517139, 29.124594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521072, 36.440887, 29.059967>,  <39.157413, 36.313801, 28.952255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521072, 36.440887, 29.059967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317639, 0.110767, 0.941720,
		0.269373, -0.941693, 0.201622,
		0.909144, 0.317717, 0.269281,
		39.793816, 36.536201, 29.140751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392277, 35.860073, 29.576574>,  <39.157413, 36.313801, 28.952255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392277, 35.860073, 29.576574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554733, 36.224247, 29.545179>,  <39.652206, 36.442749, 29.526342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554733, 36.224247, 29.545179>,  <39.392277, 35.860073, 29.576574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554733, 36.224247, 29.545179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250651, 0.193585, 0.948525,
		0.878762, -0.365563, 0.306824,
		0.406142, 0.910433, -0.078487,
		39.676575, 36.497375, 29.521633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696117, 35.921055, 30.215633>,  <39.392277, 35.860073, 29.576574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696117, 35.921055, 30.215633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671070, 36.300934, 30.092897>,  <39.656040, 36.528862, 30.019257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671070, 36.300934, 30.092897>,  <39.696117, 35.921055, 30.215633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671070, 36.300934, 30.092897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060206, 0.303289, 0.950994,
		0.996220, 0.078023, 0.038187,
		-0.062618, 0.949699, -0.306840,
		39.652287, 36.585842, 30.000845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083359, 36.289982, 30.728197>,  <39.696117, 35.921055, 30.215633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083359, 36.289982, 30.728197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857590, 36.567348, 30.549042>,  <39.722126, 36.733768, 30.441549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857590, 36.567348, 30.549042>,  <40.083359, 36.289982, 30.728197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857590, 36.567348, 30.549042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110964, 0.473918, 0.873550,
		0.817991, 0.542754, -0.190548,
		-0.564426, 0.693412, -0.447887,
		39.688263, 36.775372, 30.414675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340458, 36.864330, 30.978868>,  <40.083359, 36.289982, 30.728197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340458, 36.864330, 30.978868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974010, 36.949215, 30.842815>,  <39.754143, 37.000145, 30.761183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974010, 36.949215, 30.842815>,  <40.340458, 36.864330, 30.978868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974010, 36.949215, 30.842815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244418, 0.376859, 0.893441,
		0.317779, 0.901635, -0.293380,
		-0.916120, 0.212209, -0.340133,
		39.699173, 37.012878, 30.740776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176735, 37.435165, 31.287466>,  <40.340458, 36.864330, 30.978868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176735, 37.435165, 31.287466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799015, 37.362503, 31.177710>,  <39.572384, 37.318905, 31.111855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799015, 37.362503, 31.177710>,  <40.176735, 37.435165, 31.287466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799015, 37.362503, 31.177710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324926, 0.382713, 0.864843,
		-0.052090, 0.905832, -0.420422,
		-0.944304, -0.181656, -0.274393,
		39.515724, 37.308006, 31.095392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702312, 37.998436, 31.524563>,  <40.176735, 37.435165, 31.287466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702312, 37.998436, 31.524563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461037, 37.681774, 31.485695>,  <39.316273, 37.491776, 31.462374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461037, 37.681774, 31.485695>,  <39.702312, 37.998436, 31.524563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461037, 37.681774, 31.485695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477950, 0.261230, 0.838644,
		-0.638534, 0.552304, -0.535943,
		-0.603191, -0.791656, -0.097170,
		39.280079, 37.444279, 31.456545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939327, 38.213280, 31.651838>,  <39.702312, 37.998436, 31.524563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939327, 38.213280, 31.651838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972942, 37.818325, 31.705524>,  <38.993111, 37.581352, 31.737736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972942, 37.818325, 31.705524>,  <38.939327, 38.213280, 31.651838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972942, 37.818325, 31.705524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488772, 0.076530, 0.869048,
		-0.868354, -0.138636, -0.476173,
		0.084040, -0.987382, 0.134216,
		38.998154, 37.522110, 31.745789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445553, 38.095749, 32.122536>,  <38.939327, 38.213280, 31.651838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445553, 38.095749, 32.122536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648678, 37.751816, 32.143768>,  <38.770554, 37.545456, 32.156506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648678, 37.751816, 32.143768>,  <38.445553, 38.095749, 32.122536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648678, 37.751816, 32.143768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303729, -0.121042, 0.945038,
		-0.806147, -0.496027, -0.322622,
		0.507815, -0.859829, 0.053080,
		38.801022, 37.493866, 32.159691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004688, 37.596291, 32.452286>,  <38.445553, 38.095749, 32.122536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004688, 37.596291, 32.452286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381321, 37.477516, 32.515839>,  <38.607300, 37.406250, 32.553970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381321, 37.477516, 32.515839>,  <38.004688, 37.596291, 32.452286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381321, 37.477516, 32.515839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210794, -0.151731, 0.965683,
		-0.262643, -0.942764, -0.205461,
		0.941586, -0.296940, 0.158878,
		38.663795, 37.388435, 32.563503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757801, 36.940289, 32.740345>,  <38.004688, 37.596291, 32.452286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757801, 36.940289, 32.740345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146122, 36.999912, 32.815521>,  <38.379116, 37.035686, 32.860626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146122, 36.999912, 32.815521>,  <37.757801, 36.940289, 32.740345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146122, 36.999912, 32.815521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134184, -0.311974, 0.940567,
		0.198830, -0.938325, -0.282865,
		0.970805, 0.149057, 0.187938,
		38.437363, 37.044628, 32.871902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028458, 36.379108, 33.032333>,  <37.757801, 36.940289, 32.740345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028458, 36.379108, 33.032333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284023, 36.656322, 33.165897>,  <38.437363, 36.822651, 33.246037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284023, 36.656322, 33.165897>,  <38.028458, 36.379108, 33.032333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284023, 36.656322, 33.165897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117570, -0.340983, 0.932688,
		0.760245, -0.635161, -0.136377,
		0.638910, 0.693037, 0.333907,
		38.475697, 36.864235, 33.266068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339516, 36.023891, 33.630253>,  <38.028458, 36.379108, 33.032333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339516, 36.023891, 33.630253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485283, 36.396076, 33.645428>,  <38.572742, 36.619389, 33.654533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485283, 36.396076, 33.645428>,  <38.339516, 36.023891, 33.630253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485283, 36.396076, 33.645428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321992, -0.164130, 0.932407,
		0.873796, -0.327570, -0.359414,
		0.364419, 0.930462, 0.037941,
		38.594608, 36.675217, 33.656811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112396, 36.009483, 33.911842>,  <38.339516, 36.023891, 33.630253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112396, 36.009483, 33.911842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894444, 36.335987, 33.988598>,  <38.763672, 36.531891, 34.034653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894444, 36.335987, 33.988598>,  <39.112396, 36.009483, 33.911842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894444, 36.335987, 33.988598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115220, -0.153788, 0.981363,
		0.830561, 0.556833, -0.010254,
		-0.544879, 0.816263, 0.191889,
		38.730980, 36.580868, 34.046165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239922, 36.134865, 34.606499>,  <39.112396, 36.009483, 33.911842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239922, 36.134865, 34.606499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943306, 36.397850, 34.553032>,  <38.765335, 36.555641, 34.520950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943306, 36.397850, 34.553032>,  <39.239922, 36.134865, 34.606499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943306, 36.397850, 34.553032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070618, 0.121642, 0.990059,
		0.667183, 0.743607, -0.043774,
		-0.741539, 0.657459, -0.133669,
		38.720844, 36.595089, 34.512932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279564, 36.692177, 35.141029>,  <39.239922, 36.134865, 34.606499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279564, 36.692177, 35.141029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902260, 36.678020, 35.008961>,  <38.675877, 36.669525, 34.929718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902260, 36.678020, 35.008961>,  <39.279564, 36.692177, 35.141029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902260, 36.678020, 35.008961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331637, 0.150948, 0.931253,
		0.016878, 0.987908, -0.154120,
		-0.943256, -0.035394, -0.330175,
		38.619282, 36.667400, 34.909908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040367, 37.125446, 35.603905>,  <39.279564, 36.692177, 35.141029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040367, 37.125446, 35.603905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704578, 36.962666, 35.459862>,  <38.503105, 36.864998, 35.373436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704578, 36.962666, 35.459862>,  <39.040367, 37.125446, 35.603905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704578, 36.962666, 35.459862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383462, -0.025912, 0.923193,
		-0.385025, 0.913082, -0.134297,
		-0.839472, -0.406951, -0.360109,
		38.452736, 36.840580, 35.351830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366863, 37.417667, 35.929165>,  <39.040367, 37.125446, 35.603905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366863, 37.417667, 35.929165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244240, 37.060169, 35.798168>,  <38.170666, 36.845673, 35.719570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244240, 37.060169, 35.798168>,  <38.366863, 37.417667, 35.929165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244240, 37.060169, 35.798168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351216, -0.213574, 0.911611,
		-0.884687, 0.394479, -0.248424,
		-0.306555, -0.893741, -0.327493,
		38.152275, 36.792046, 35.699921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531792, 37.139568, 36.001583>,  <38.366863, 37.417667, 35.929165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531792, 37.139568, 36.001583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799034, 36.844929, 36.043625>,  <37.959381, 36.668144, 36.068851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799034, 36.844929, 36.043625>,  <37.531792, 37.139568, 36.001583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799034, 36.844929, 36.043625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316655, -0.153649, 0.936014,
		-0.673322, -0.658640, -0.335903,
		0.668108, -0.736604, 0.105106,
		37.999466, 36.623947, 36.075157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185162, 36.656002, 36.415596>,  <37.531792, 37.139568, 36.001583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185162, 36.656002, 36.415596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541988, 36.481087, 36.461185>,  <37.756084, 36.376137, 36.488537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541988, 36.481087, 36.461185>,  <37.185162, 36.656002, 36.415596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541988, 36.481087, 36.461185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325506, -0.446855, 0.833287,
		-0.313456, -0.780450, -0.540965,
		0.892071, -0.437286, 0.113972,
		37.809608, 36.349899, 36.495377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184814, 35.919075, 36.453762>,  <37.185162, 36.656002, 36.415596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184814, 35.919075, 36.453762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508751, 36.035187, 36.657684>,  <37.703114, 36.104855, 36.780037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508751, 36.035187, 36.657684>,  <37.184814, 35.919075, 36.453762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508751, 36.035187, 36.657684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497240, -0.121507, 0.859063,
		0.311312, -0.949197, 0.045937,
		0.809838, 0.290278, 0.509805,
		37.751701, 36.122269, 36.810627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527115, 35.353470, 36.927094>,  <37.184814, 35.919075, 36.453762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527115, 35.353470, 36.927094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589798, 35.724022, 37.064068>,  <37.627407, 35.946354, 37.146252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589798, 35.724022, 37.064068>,  <37.527115, 35.353470, 36.927094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589798, 35.724022, 37.064068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392713, -0.259684, 0.882236,
		0.906212, -0.272727, 0.323109,
		0.156703, 0.926382, 0.342432,
		37.636810, 36.001938, 37.166798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010281, 35.241131, 37.468380>,  <37.527115, 35.353470, 36.927094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010281, 35.241131, 37.468380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829346, 35.590229, 37.541828>,  <37.720787, 35.799686, 37.585896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829346, 35.590229, 37.541828>,  <38.010281, 35.241131, 37.468380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829346, 35.590229, 37.541828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021946, -0.216716, 0.975988,
		0.891578, 0.437444, 0.117181,
		-0.452335, 0.872741, 0.183619,
		37.693645, 35.852051, 37.596912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375538, 35.674137, 37.958450>,  <38.010281, 35.241131, 37.468380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375538, 35.674137, 37.958450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004375, 35.802975, 38.033550>,  <37.781677, 35.880280, 38.078609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004375, 35.802975, 38.033550>,  <38.375538, 35.674137, 37.958450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004375, 35.802975, 38.033550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146836, -0.147145, 0.978155,
		0.342687, 0.935201, 0.089241,
		-0.927903, 0.322097, 0.187746,
		37.726006, 35.899605, 38.089874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474449, 35.773430, 38.547112>,  <38.375538, 35.674137, 37.958450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474449, 35.773430, 38.547112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075535, 35.802883, 38.547302>,  <37.836185, 35.820553, 38.547417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075535, 35.802883, 38.547302>,  <38.474449, 35.773430, 38.547112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075535, 35.802883, 38.547302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010948, -0.154735, 0.987895,
		0.072814, 0.985208, 0.155121,
		-0.997285, 0.073631, 0.000481,
		37.776348, 35.824974, 38.547447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318462, 36.091324, 39.251450>,  <38.474449, 35.773430, 38.547112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318462, 36.091324, 39.251450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957462, 35.966766, 39.132435>,  <37.740864, 35.892033, 39.061028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957462, 35.966766, 39.132435>,  <38.318462, 36.091324, 39.251450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957462, 35.966766, 39.132435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251547, -0.179652, 0.951026,
		-0.349595, 0.933145, 0.083806,
		-0.902501, -0.311393, -0.297535,
		37.686710, 35.873348, 39.043175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743668, 36.490597, 39.467400>,  <38.318462, 36.091324, 39.251450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743668, 36.490597, 39.467400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584068, 36.125103, 39.436722>,  <37.488308, 35.905807, 39.418316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584068, 36.125103, 39.436722>,  <37.743668, 36.490597, 39.467400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584068, 36.125103, 39.436722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388126, 0.092513, 0.916951,
		-0.830758, 0.395631, -0.391558,
		-0.398998, -0.913738, -0.076699,
		37.464371, 35.850983, 39.413712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170387, 36.557907, 39.968925>,  <37.743668, 36.490597, 39.467400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170387, 36.557907, 39.968925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207664, 36.169273, 39.881893>,  <37.230030, 35.936092, 39.829674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207664, 36.169273, 39.881893>,  <37.170387, 36.557907, 39.968925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207664, 36.169273, 39.881893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487156, -0.235078, 0.841081,
		-0.868328, 0.027613, -0.495221,
		0.093190, -0.971584, -0.217576,
		37.235622, 35.877800, 39.816620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454449, 36.337181, 39.951073>,  <37.170387, 36.557907, 39.968925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454449, 36.337181, 39.951073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713589, 36.041252, 40.023682>,  <36.869072, 35.863693, 40.067245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713589, 36.041252, 40.023682>,  <36.454449, 36.337181, 39.951073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713589, 36.041252, 40.023682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437993, -0.166798, 0.883369,
		-0.623262, -0.651794, -0.432098,
		0.647848, -0.739826, 0.181522,
		36.907944, 35.819305, 40.078136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001354, 35.796932, 40.175907>,  <36.454449, 36.337181, 39.951073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001354, 35.796932, 40.175907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361897, 35.647121, 40.262890>,  <36.578224, 35.557236, 40.315079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361897, 35.647121, 40.262890>,  <36.001354, 35.796932, 40.175907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361897, 35.647121, 40.262890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352585, -0.343057, 0.870629,
		-0.251470, -0.861421, -0.441268,
		0.901358, -0.374521, 0.217455,
		36.632305, 35.534763, 40.328125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904293, 35.113667, 40.431553>,  <36.001354, 35.796932, 40.175907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904293, 35.113667, 40.431553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254910, 35.238400, 40.578213>,  <36.465279, 35.313240, 40.666206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254910, 35.238400, 40.578213>,  <35.904293, 35.113667, 40.431553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254910, 35.238400, 40.578213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342957, -0.129837, 0.930335,
		0.337710, -0.941225, -0.006864,
		0.876546, 0.311830, 0.366647,
		36.517872, 35.331947, 40.688206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121471, 34.622223, 40.955173>,  <35.904293, 35.113667, 40.431553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121471, 34.622223, 40.955173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298092, 34.975056, 41.020855>,  <36.404064, 35.186756, 41.060265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298092, 34.975056, 41.020855>,  <36.121471, 34.622223, 40.955173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298092, 34.975056, 41.020855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301445, -0.026527, 0.953115,
		0.845080, -0.470350, 0.254186,
		0.441555, 0.882081, 0.164202,
		36.430557, 35.239681, 41.070114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491413, 34.484001, 41.506916>,  <36.121471, 34.622223, 40.955173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491413, 34.484001, 41.506916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421558, 34.877697, 41.495838>,  <36.379646, 35.113914, 41.489193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421558, 34.877697, 41.495838>,  <36.491413, 34.484001, 41.506916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421558, 34.877697, 41.495838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437465, -0.052358, 0.897710,
		0.882115, 0.168887, 0.439716,
		-0.174634, 0.984244, -0.027696,
		36.369167, 35.172970, 41.487530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720867, 34.887383, 42.064583>,  <36.491413, 34.484001, 41.506916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720867, 34.887383, 42.064583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426735, 35.129044, 41.941761>,  <36.250256, 35.274040, 41.868069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426735, 35.129044, 41.941761>,  <36.720867, 34.887383, 42.064583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426735, 35.129044, 41.941761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202851, 0.236093, 0.950322,
		0.646635, 0.761089, -0.051054,
		-0.735333, 0.604155, -0.307054,
		36.206135, 35.310291, 41.849644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656208, 35.555485, 42.574913>,  <36.720867, 34.887383, 42.064583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656208, 35.555485, 42.574913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312992, 35.486179, 42.381519>,  <36.107063, 35.444595, 42.265484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312992, 35.486179, 42.381519>,  <36.656208, 35.555485, 42.574913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312992, 35.486179, 42.381519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509384, 0.166862, 0.844207,
		-0.065596, 0.970637, -0.231431,
		-0.858036, -0.173264, -0.483481,
		36.055580, 35.434200, 42.236473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244881, 36.026646, 42.815929>,  <36.656208, 35.555485, 42.574913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244881, 36.026646, 42.815929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995316, 35.747921, 42.674408>,  <35.845577, 35.580685, 42.589497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995316, 35.747921, 42.674408>,  <36.244881, 36.026646, 42.815929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995316, 35.747921, 42.674408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477951, -0.017952, 0.878203,
		-0.618296, 0.717027, -0.321843,
		-0.623917, -0.696815, -0.353804,
		35.808140, 35.538876, 42.568268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499229, 36.196461, 43.110989>,  <36.244881, 36.026646, 42.815929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499229, 36.196461, 43.110989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513851, 35.806141, 43.024761>,  <35.522625, 35.571949, 42.973026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513851, 35.806141, 43.024761>,  <35.499229, 36.196461, 43.110989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513851, 35.806141, 43.024761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431465, -0.209983, 0.877352,
		-0.901389, 0.060937, -0.428701,
		0.036557, -0.975804, -0.215568,
		35.524818, 35.513401, 42.960091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761436, 35.844326, 43.117104>,  <35.499229, 36.196461, 43.110989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761436, 35.844326, 43.117104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983471, 35.518955, 43.186642>,  <35.116692, 35.323734, 43.228363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983471, 35.518955, 43.186642>,  <34.761436, 35.844326, 43.117104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983471, 35.518955, 43.186642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388224, -0.068516, 0.919014,
		-0.735638, -0.577620, -0.353824,
		0.555084, -0.813425, 0.173843,
		35.149998, 35.274929, 43.238796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544548, 35.612663, 43.762474>,  <34.761436, 35.844326, 43.117104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544548, 35.612663, 43.762474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198349, 35.710655, 43.587708>,  <33.990631, 35.769451, 43.482845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198349, 35.710655, 43.587708>,  <34.544548, 35.612663, 43.762474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198349, 35.710655, 43.587708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036135, -0.900513, -0.433326,
		-0.499607, -0.359255, 0.788244,
		-0.865498, 0.244976, -0.436920,
		33.938698, 35.784149, 43.456631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108402, 35.130424, 43.922211>,  <34.544548, 35.612663, 43.762474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108402, 35.130424, 43.922211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017433, 35.270557, 43.558773>,  <33.962852, 35.354637, 43.340710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017433, 35.270557, 43.558773>,  <34.108402, 35.130424, 43.922211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017433, 35.270557, 43.558773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207729, -0.894116, -0.396743,
		-0.951383, -0.278969, 0.130566,
		-0.227420, 0.350332, -0.908597,
		33.949207, 35.375656, 43.286194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813129, 34.876255, 44.207458>,  <34.108402, 35.130424, 43.922211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813129, 34.876255, 44.207458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138443, 34.648911, 44.257309>,  <35.333630, 34.512505, 44.287220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138443, 34.648911, 44.257309>,  <34.813129, 34.876255, 44.207458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138443, 34.648911, 44.257309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215217, 0.094834, -0.971950,
		0.540604, 0.817293, 0.199449,
		0.813283, -0.568365, 0.124628,
		35.382427, 34.478401, 44.294697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522434, 35.178894, 44.018707>,  <34.813129, 34.876255, 44.207458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522434, 35.178894, 44.018707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440563, 34.791180, 43.964169>,  <35.391441, 34.558552, 43.931446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440563, 34.791180, 43.964169>,  <35.522434, 35.178894, 44.018707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440563, 34.791180, 43.964169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021045, 0.134903, -0.990635,
		0.978604, -0.205628, -0.007213,
		-0.204675, -0.969287, -0.136344,
		35.379162, 34.500393, 43.923264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059483, 34.787376, 43.648735>,  <35.522434, 35.178894, 44.018707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059483, 34.787376, 43.648735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684452, 34.667923, 43.577438>,  <35.459435, 34.596252, 43.534660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684452, 34.667923, 43.577438>,  <36.059483, 34.787376, 43.648735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684452, 34.667923, 43.577438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114750, 0.218174, -0.969140,
		0.328305, -0.929095, -0.170287,
		-0.937576, -0.298634, -0.178242,
		35.403179, 34.578335, 43.523968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933437, 34.300732, 43.113422>,  <36.059483, 34.787376, 43.648735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933437, 34.300732, 43.113422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620098, 34.547962, 43.139790>,  <35.432095, 34.696301, 43.155609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620098, 34.547962, 43.139790>,  <35.933437, 34.300732, 43.113422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620098, 34.547962, 43.139790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095300, 0.224222, -0.969867,
		-0.614237, -0.753459, -0.234547,
		-0.783346, 0.618081, 0.065921,
		35.385094, 34.733387, 43.159565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383049, 34.227032, 42.590500>,  <35.933437, 34.300732, 43.113422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383049, 34.227032, 42.590500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424366, 34.609814, 42.698990>,  <35.449154, 34.839485, 42.764084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424366, 34.609814, 42.698990>,  <35.383049, 34.227032, 42.590500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424366, 34.609814, 42.698990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171382, 0.251479, -0.952568,
		-0.979775, 0.144873, -0.138031,
		0.103290, 0.956959, 0.271221,
		35.455353, 34.896900, 42.780357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030861, 34.562996, 42.117153>,  <35.383049, 34.227032, 42.590500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030861, 34.562996, 42.117153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279072, 34.835835, 42.271908>,  <35.427998, 34.999538, 42.364761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279072, 34.835835, 42.271908>,  <35.030861, 34.562996, 42.117153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279072, 34.835835, 42.271908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205800, 0.334417, -0.919680,
		-0.756695, 0.650312, 0.067140,
		0.620531, 0.682100, 0.386886,
		35.465233, 35.040466, 42.387974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920197, 35.092007, 41.724533>,  <35.030861, 34.562996, 42.117153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920197, 35.092007, 41.724533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277046, 35.190754, 41.875881>,  <35.491158, 35.250004, 41.966690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277046, 35.190754, 41.875881>,  <34.920197, 35.092007, 41.724533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277046, 35.190754, 41.875881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311412, 0.270721, -0.910897,
		-0.327307, 0.930465, 0.164639,
		0.892128, 0.246873, 0.378367,
		35.544685, 35.264816, 41.989391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073513, 35.804836, 41.512794>,  <34.920197, 35.092007, 41.724533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073513, 35.804836, 41.512794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402050, 35.589680, 41.588753>,  <35.599174, 35.460587, 41.634327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402050, 35.589680, 41.588753>,  <35.073513, 35.804836, 41.512794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402050, 35.589680, 41.588753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288042, 0.103739, -0.951982,
		0.492366, 0.836605, 0.240142,
		0.821345, -0.537894, 0.189899,
		35.648453, 35.428310, 41.645721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605877, 36.354656, 41.288296>,  <35.073513, 35.804836, 41.512794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605877, 36.354656, 41.288296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853233, 36.131020, 41.509205>,  <36.001648, 35.996838, 41.641750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853233, 36.131020, 41.509205>,  <35.605877, 36.354656, 41.288296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853233, 36.131020, 41.509205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664976, -0.002252, -0.746861,
		0.418808, 0.829102, 0.370390,
		0.618390, -0.559092, 0.552277,
		36.038750, 35.963291, 41.674889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259220, 36.505978, 41.277672>,  <35.605877, 36.354656, 41.288296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259220, 36.505978, 41.277672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323948, 36.126312, 41.385681>,  <36.362785, 35.898514, 41.450485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323948, 36.126312, 41.385681>,  <36.259220, 36.505978, 41.277672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323948, 36.126312, 41.385681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694663, -0.084784, -0.714321,
		0.700898, 0.303163, 0.645627,
		0.161817, -0.949160, 0.270021,
		36.372494, 35.841564, 41.466686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979000, 36.340569, 41.389416>,  <36.259220, 36.505978, 41.277672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979000, 36.340569, 41.389416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827602, 35.980862, 41.301716>,  <36.736763, 35.765038, 41.249096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827602, 35.980862, 41.301716>,  <36.979000, 36.340569, 41.389416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827602, 35.980862, 41.301716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527869, -0.015138, -0.849191,
		0.760327, -0.437147, 0.480423,
		-0.378494, -0.899263, -0.219246,
		36.714054, 35.711082, 41.235943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565372, 35.878353, 41.141243>,  <36.979000, 36.340569, 41.389416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565372, 35.878353, 41.141243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224491, 35.715603, 41.009666>,  <37.019962, 35.617954, 40.930721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224491, 35.715603, 41.009666>,  <37.565372, 35.878353, 41.141243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224491, 35.715603, 41.009666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419742, -0.156331, -0.894079,
		0.312356, -0.900007, 0.304008,
		-0.852203, -0.406876, -0.328940,
		36.968830, 35.593540, 40.910984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719463, 35.146019, 40.940464>,  <37.565372, 35.878353, 41.141243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719463, 35.146019, 40.940464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407444, 35.295837, 40.739971>,  <37.220234, 35.385731, 40.619675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407444, 35.295837, 40.739971>,  <37.719463, 35.146019, 40.940464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407444, 35.295837, 40.739971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491417, -0.129168, -0.861292,
		-0.387339, -0.918166, -0.083302,
		-0.780049, 0.374549, -0.501235,
		37.173428, 35.408203, 40.589600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719059, 34.840607, 40.299393>,  <37.719463, 35.146019, 40.940464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719059, 34.840607, 40.299393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463013, 35.141953, 40.239147>,  <37.309383, 35.322762, 40.202999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463013, 35.141953, 40.239147>,  <37.719059, 34.840607, 40.299393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463013, 35.141953, 40.239147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197274, -0.028287, -0.979940,
		-0.742516, -0.656991, -0.130512,
		-0.640120, 0.753368, -0.150611,
		37.270977, 35.367962, 40.193962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228580, 34.673904, 39.685680>,  <37.719059, 34.840607, 40.299393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228580, 34.673904, 39.685680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291187, 35.063335, 39.752197>,  <37.328751, 35.296993, 39.792107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291187, 35.063335, 39.752197>,  <37.228580, 34.673904, 39.685680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291187, 35.063335, 39.752197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195162, 0.134564, -0.971496,
		-0.968202, 0.184507, -0.168944,
		0.156514, 0.973576, 0.166294,
		37.338142, 35.355408, 39.802086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833603, 34.866302, 39.032265>,  <37.228580, 34.673904, 39.685680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833603, 34.866302, 39.032265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030766, 35.196430, 39.142460>,  <37.149063, 35.394508, 39.208576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030766, 35.196430, 39.142460>,  <36.833603, 34.866302, 39.032265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030766, 35.196430, 39.142460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139275, 0.387380, -0.911339,
		-0.858865, 0.410833, 0.305887,
		0.492903, 0.825320, 0.275489,
		37.178635, 35.444027, 39.225105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526390, 35.389698, 38.570423>,  <36.833603, 34.866302, 39.032265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526390, 35.389698, 38.570423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876236, 35.523586, 38.710720>,  <37.086143, 35.603920, 38.794899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876236, 35.523586, 38.710720>,  <36.526390, 35.389698, 38.570423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876236, 35.523586, 38.710720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159378, 0.484728, -0.860022,
		-0.457880, 0.808084, 0.370601,
		0.874611, 0.334721, 0.350738,
		37.138618, 35.624004, 38.815941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502293, 36.074268, 38.471893>,  <36.526390, 35.389698, 38.570423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502293, 36.074268, 38.471893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896473, 36.015736, 38.506466>,  <37.132980, 35.980618, 38.527210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896473, 36.015736, 38.506466>,  <36.502293, 36.074268, 38.471893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896473, 36.015736, 38.506466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152860, 0.540953, -0.827045,
		0.074266, 0.828225, 0.555452,
		0.985453, -0.146328, 0.086428,
		37.192108, 35.971836, 38.532394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764797, 36.658695, 38.084446>,  <36.502293, 36.074268, 38.471893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764797, 36.658695, 38.084446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054253, 36.383400, 38.105106>,  <37.227924, 36.218224, 38.117504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054253, 36.383400, 38.105106>,  <36.764797, 36.658695, 38.084446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054253, 36.383400, 38.105106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394722, 0.351310, -0.848985,
		0.566162, 0.634747, 0.525886,
		0.723640, -0.688242, 0.051650,
		37.271343, 36.176926, 38.120602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353218, 37.097279, 37.739590>,  <36.764797, 36.658695, 38.084446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353218, 37.097279, 37.739590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457821, 36.711624, 37.721436>,  <37.520584, 36.480232, 37.710545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457821, 36.711624, 37.721436>,  <37.353218, 37.097279, 37.739590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457821, 36.711624, 37.721436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599603, 0.199118, -0.775131,
		0.756367, 0.175490, 0.630168,
		0.261506, -0.964135, -0.045382,
		37.536274, 36.422382, 37.707821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095043, 37.101513, 37.558228>,  <37.353218, 37.097279, 37.739590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095043, 37.101513, 37.558228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973827, 36.725258, 37.497074>,  <37.901100, 36.499504, 37.460381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973827, 36.725258, 37.497074>,  <38.095043, 37.101513, 37.558228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973827, 36.725258, 37.497074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631495, -0.078059, -0.771441,
		0.713711, -0.330319, 0.617662,
		-0.303036, -0.940636, -0.152884,
		37.882915, 36.443066, 37.451210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755165, 36.769100, 37.338249>,  <38.095043, 37.101513, 37.558228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755165, 36.769100, 37.338249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442879, 36.559624, 37.201881>,  <38.255508, 36.433937, 37.120060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442879, 36.559624, 37.201881>,  <38.755165, 36.769100, 37.338249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442879, 36.559624, 37.201881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399044, 0.002018, -0.916930,
		0.480879, -0.851904, 0.207402,
		-0.780717, -0.523695, -0.340917,
		38.208664, 36.402515, 37.099606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049728, 36.246922, 36.917973>,  <38.755165, 36.769100, 37.338249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049728, 36.246922, 36.917973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676411, 36.279762, 36.778137>,  <38.452419, 36.299465, 36.694237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676411, 36.279762, 36.778137>,  <39.049728, 36.246922, 36.917973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676411, 36.279762, 36.778137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341394, -0.099091, -0.934682,
		-0.111383, -0.991685, 0.064451,
		-0.933297, 0.082105, -0.349593,
		38.396420, 36.304390, 36.673260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773178, 35.992905, 37.078419>,  <39.049728, 36.246922, 36.917973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773178, 35.992905, 37.078419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933002, 35.708851, 37.310299>,  <40.028896, 35.538418, 37.449429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933002, 35.708851, 37.310299>,  <39.773178, 35.992905, 37.078419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933002, 35.708851, 37.310299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912000, 0.371925, -0.172996,
		-0.092754, 0.597810, 0.796254,
		0.399565, -0.710138, 0.579700,
		40.052872, 35.495808, 37.484207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342800, 36.255150, 37.375004>,  <39.773178, 35.992905, 37.078419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342800, 36.255150, 37.375004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408970, 35.864815, 37.432106>,  <40.448673, 35.630615, 37.466366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408970, 35.864815, 37.432106>,  <40.342800, 36.255150, 37.375004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408970, 35.864815, 37.432106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973426, 0.138318, -0.182510,
		0.158354, 0.169153, 0.972785,
		0.165425, -0.975836, 0.142755,
		40.458599, 35.572063, 37.474934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844734, 36.147484, 37.845451>,  <40.342800, 36.255150, 37.375004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844734, 36.147484, 37.845451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824600, 35.867661, 37.560329>,  <40.812519, 35.699768, 37.389256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824600, 35.867661, 37.560329>,  <40.844734, 36.147484, 37.845451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824600, 35.867661, 37.560329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911078, 0.260223, -0.319721,
		0.409150, -0.665512, 0.624251,
		-0.050333, -0.699555, -0.712804,
		40.809502, 35.657795, 37.346489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442768, 35.584686, 37.914192>,  <40.844734, 36.147484, 37.845451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442768, 35.584686, 37.914192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317001, 35.690983, 37.549660>,  <41.241539, 35.754761, 37.330940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317001, 35.690983, 37.549660>,  <41.442768, 35.584686, 37.914192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317001, 35.690983, 37.549660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937184, 0.239693, -0.253445,
		0.151088, -0.933771, -0.324414,
		-0.314420, 0.265743, -0.911329,
		41.222675, 35.770706, 37.276260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861183, 35.250057, 37.472130>,  <41.442768, 35.584686, 37.914192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861183, 35.250057, 37.472130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707535, 35.591022, 37.330235>,  <41.615345, 35.795601, 37.245098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707535, 35.591022, 37.330235>,  <41.861183, 35.250057, 37.472130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707535, 35.591022, 37.330235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922488, 0.370276, -0.109139,
		0.038321, -0.369168, -0.928572,
		-0.384118, 0.852415, -0.354742,
		41.592300, 35.846748, 37.223812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662373, 35.616787, 36.753403>,  <41.861183, 35.250057, 37.472130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662373, 35.616787, 36.753403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795673, 35.934032, 36.549477>,  <41.875656, 36.124382, 36.427120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795673, 35.934032, 36.549477>,  <41.662373, 35.616787, 36.753403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795673, 35.934032, 36.549477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885626, -0.077832, 0.457832,
		0.323433, -0.604078, -0.728341,
		0.333254, 0.793116, -0.509813,
		41.895649, 36.171967, 36.396534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306927, 35.584599, 36.807636>,  <41.662373, 35.616787, 36.753403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306927, 35.584599, 36.807636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332062, 35.960548, 36.673363>,  <42.347141, 36.186119, 36.592800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332062, 35.960548, 36.673363>,  <42.306927, 35.584599, 36.807636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332062, 35.960548, 36.673363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928976, 0.067854, 0.363868,
		0.364768, -0.334706, -0.868859,
		0.062833, 0.939876, -0.335685,
		42.350910, 36.242512, 36.572659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710693, 35.681671, 36.256546>,  <42.306927, 35.584599, 36.807636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710693, 35.681671, 36.256546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706917, 36.009815, 36.485256>,  <42.704651, 36.206699, 36.622482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706917, 36.009815, 36.485256>,  <42.710693, 35.681671, 36.256546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706917, 36.009815, 36.485256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951852, -0.167845, 0.256528,
		0.306414, 0.546664, -0.779275,
		-0.009437, 0.820358, 0.571773,
		42.704086, 36.255924, 36.656788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286167, 36.147995, 36.095295>,  <42.710693, 35.681671, 36.256546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286167, 36.147995, 36.095295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212437, 36.189053, 36.486290>,  <43.168198, 36.213688, 36.720886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212437, 36.189053, 36.486290>,  <43.286167, 36.147995, 36.095295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212437, 36.189053, 36.486290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933019, -0.294422, 0.206860,
		0.309028, 0.950147, -0.041502,
		-0.184329, 0.102648, 0.977490,
		43.157139, 36.219849, 36.779537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721195, 36.554893, 36.419117>,  <43.286167, 36.147995, 36.095295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721195, 36.554893, 36.419117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618938, 36.322937, 36.728535>,  <43.557583, 36.183762, 36.914185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618938, 36.322937, 36.728535>,  <43.721195, 36.554893, 36.419117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618938, 36.322937, 36.728535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965036, -0.105138, 0.240109,
		-0.057908, 0.807881, 0.586494,
		-0.255642, -0.579892, 0.773545,
		43.542248, 36.148968, 36.960598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010109, 36.851044, 37.075050>,  <43.721195, 36.554893, 36.419117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010109, 36.851044, 37.075050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955486, 36.455040, 37.089108>,  <43.922714, 36.217438, 37.097542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955486, 36.455040, 37.089108>,  <44.010109, 36.851044, 37.075050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955486, 36.455040, 37.089108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971295, -0.126826, 0.201250,
		-0.194782, 0.061619, 0.978909,
		-0.136552, -0.990009, 0.035147,
		43.914520, 36.158039, 37.099651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541710, 36.603645, 37.576622>,  <44.010109, 36.851044, 37.075050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541710, 36.603645, 37.576622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380951, 36.281071, 37.403122>,  <44.284496, 36.087528, 37.299023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380951, 36.281071, 37.403122>,  <44.541710, 36.603645, 37.576622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380951, 36.281071, 37.403122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896524, -0.442937, -0.007178,
		-0.186337, -0.391756, 0.901003,
		-0.401899, -0.806433, -0.433754,
		44.260380, 36.039143, 37.272995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766907, 35.990765, 37.920731>,  <44.541710, 36.603645, 37.576622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766907, 35.990765, 37.920731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671967, 35.944450, 37.534931>,  <44.615002, 35.916660, 37.303452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671967, 35.944450, 37.534931>,  <44.766907, 35.990765, 37.920731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671967, 35.944450, 37.534931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881004, -0.443957, -0.163506,
		-0.409263, -0.888535, 0.207385,
		-0.237350, -0.115790, -0.964499,
		44.600761, 35.909714, 37.245583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950993, 35.391857, 37.802124>,  <44.766907, 35.990765, 37.920731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950993, 35.391857, 37.802124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931660, 35.511597, 37.420956>,  <44.920059, 35.583443, 37.192257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931660, 35.511597, 37.420956>,  <44.950993, 35.391857, 37.802124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931660, 35.511597, 37.420956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818407, -0.535053, -0.209590,
		-0.572603, -0.790003, -0.219135,
		-0.048328, 0.299353, -0.952918,
		44.917160, 35.601402, 37.135082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869488, 34.843159, 37.353527>,  <44.950993, 35.391857, 37.802124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869488, 34.843159, 37.353527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037594, 35.132244, 37.134048>,  <45.138458, 35.305695, 37.002361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037594, 35.132244, 37.134048>,  <44.869488, 34.843159, 37.353527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037594, 35.132244, 37.134048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807811, -0.573410, -0.136536,
		-0.413305, -0.385865, -0.824795,
		0.420261, 0.722709, -0.548700,
		45.163673, 35.349056, 36.969437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113075, 34.673954, 36.661854>,  <44.869488, 34.843159, 37.353527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113075, 34.673954, 36.661854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332420, 34.932648, 36.873905>,  <45.464027, 35.087864, 37.001137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332420, 34.932648, 36.873905>,  <45.113075, 34.673954, 36.661854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332420, 34.932648, 36.873905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700056, -0.701780, 0.132008,
		0.457410, 0.298735, -0.837576,
		0.548359, 0.646732, 0.530133,
		45.496929, 35.126667, 37.032944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780388, 34.938007, 36.273983>,  <45.113075, 34.673954, 36.661854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780388, 34.938007, 36.273983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.829632, 34.950787, 36.670734>,  <45.859177, 34.958454, 36.908787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.829632, 34.950787, 36.670734>,  <45.780388, 34.938007, 36.273983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.829632, 34.950787, 36.670734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815244, -0.573178, -0.082723,
		0.565881, 0.818808, -0.096607,
		0.123108, 0.031947, 0.991879,
		45.866566, 34.960369, 36.968300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.563496, 35.123276, 36.562733>,  <45.780388, 34.938007, 36.273983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.563496, 35.123276, 36.562733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371098, 34.872570, 36.807949>,  <46.255657, 34.722149, 36.955078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371098, 34.872570, 36.807949>,  <46.563496, 35.123276, 36.562733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371098, 34.872570, 36.807949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749397, -0.656828, -0.083551,
		0.455026, 0.419220, 0.785624,
		-0.480994, -0.626763, 0.613036,
		46.226799, 34.684540, 36.991859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083553, 34.741501, 36.640934>,  <46.563496, 35.123276, 36.562733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083553, 34.741501, 36.640934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788887, 34.545719, 36.827591>,  <46.612087, 34.428249, 36.939583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788887, 34.545719, 36.827591>,  <47.083553, 34.741501, 36.640934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788887, 34.545719, 36.827591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587556, -0.804883, 0.083311,
		0.334814, 0.335550, 0.880514,
		-0.736666, -0.489458, 0.466641,
		46.567886, 34.398880, 36.967583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318317, 34.600258, 36.091637>,  <47.083553, 34.741501, 36.640934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318317, 34.600258, 36.091637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.175270, 34.844494, 35.808994>,  <47.089439, 34.991035, 35.639408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.175270, 34.844494, 35.808994>,  <47.318317, 34.600258, 36.091637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.175270, 34.844494, 35.808994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933778, 0.244248, -0.261537,
		0.012896, -0.753342, -0.657503,
		-0.357620, 0.610589, -0.706604,
		47.067986, 35.027672, 35.597012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417465, 34.491814, 35.400852>,  <47.318317, 34.600258, 36.091637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417465, 34.491814, 35.400852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380913, 34.889496, 35.378227>,  <47.358982, 35.128105, 35.364651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380913, 34.889496, 35.378227>,  <47.417465, 34.491814, 35.400852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.380913, 34.889496, 35.378227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907125, 0.059679, -0.416608,
		-0.410819, -0.089379, -0.907325,
		-0.091384, 0.994208, -0.056561,
		47.353497, 35.187759, 35.361259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.681862, 34.784145, 34.679710>,  <47.417465, 34.491814, 35.400852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.681862, 34.784145, 34.679710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732986, 35.059048, 34.965744>,  <47.763660, 35.223988, 35.137363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732986, 35.059048, 34.965744>,  <47.681862, 34.784145, 34.679710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.732986, 35.059048, 34.965744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883695, 0.248423, -0.396699,
		-0.450276, 0.682619, -0.575572,
		0.127809, 0.687254, 0.715085,
		47.771328, 35.265224, 35.180271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.391918, 32.133713, 26.565262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105057, 32.382931, 26.440357>,  <36.932941, 32.532463, 26.365414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105057, 32.382931, 26.440357>,  <37.391918, 32.133713, 26.565262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105057, 32.382931, 26.440357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344110, 0.073068, 0.936082,
		0.606040, 0.778763, 0.161997,
		-0.717149, 0.623048, -0.312263,
		36.889912, 32.569843, 26.346678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433857, 32.635246, 27.067959>,  <37.391918, 32.133713, 26.565262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433857, 32.635246, 27.067959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082985, 32.741291, 26.907825>,  <36.872459, 32.804916, 26.811747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082985, 32.741291, 26.907825>,  <37.433857, 32.635246, 27.067959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082985, 32.741291, 26.907825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355381, 0.202195, 0.912590,
		0.322884, 0.942779, -0.083146,
		-0.877183, 0.265113, -0.400331,
		36.819832, 32.820824, 26.787725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372353, 33.399837, 27.198631>,  <37.433857, 32.635246, 27.067959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372353, 33.399837, 27.198631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018871, 33.223206, 27.136555>,  <36.806782, 33.117226, 27.099308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018871, 33.223206, 27.136555>,  <37.372353, 33.399837, 27.198631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018871, 33.223206, 27.136555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364266, 0.440630, 0.820460,
		-0.293914, 0.781572, -0.550236,
		-0.883700, -0.441577, -0.155192,
		36.753761, 33.090733, 27.089996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877804, 33.901463, 27.375580>,  <37.372353, 33.399837, 27.198631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877804, 33.901463, 27.375580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668552, 33.562973, 27.416065>,  <36.543003, 33.359879, 27.440355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668552, 33.562973, 27.416065>,  <36.877804, 33.901463, 27.375580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668552, 33.562973, 27.416065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310124, 0.299628, 0.902245,
		-0.793827, 0.440601, -0.419178,
		-0.523127, -0.846223, 0.101212,
		36.511616, 33.309105, 27.446428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274403, 34.174496, 27.679510>,  <36.877804, 33.901463, 27.375580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274403, 34.174496, 27.679510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.243938, 33.780605, 27.742128>,  <36.225662, 33.544270, 27.779699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.243938, 33.780605, 27.742128>,  <36.274403, 34.174496, 27.679510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243938, 33.780605, 27.742128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516732, 0.173253, 0.838434,
		-0.852754, -0.017041, -0.522035,
		-0.076156, -0.984730, 0.156548,
		36.221092, 33.485188, 27.789093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619171, 33.993801, 27.898758>,  <36.274403, 34.174496, 27.679510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619171, 33.993801, 27.898758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832630, 33.678986, 28.022552>,  <35.960705, 33.490097, 28.096828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832630, 33.678986, 28.022552>,  <35.619171, 33.993801, 27.898758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832630, 33.678986, 28.022552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375534, 0.107365, 0.920569,
		-0.757756, -0.607483, -0.238266,
		0.533648, -0.787043, 0.309487,
		35.992725, 33.442871, 28.115398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256271, 33.710735, 28.385557>,  <35.619171, 33.993801, 27.898758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256271, 33.710735, 28.385557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613514, 33.554722, 28.475214>,  <35.827858, 33.461113, 28.529007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613514, 33.554722, 28.475214>,  <35.256271, 33.710735, 28.385557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613514, 33.554722, 28.475214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179653, 0.147552, 0.972601,
		-0.412420, -0.908902, 0.061708,
		0.893104, -0.390034, 0.224140,
		35.881447, 33.437714, 28.542456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114956, 33.205379, 28.871794>,  <35.256271, 33.710735, 28.385557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114956, 33.205379, 28.871794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.498878, 33.313725, 28.901196>,  <35.729233, 33.378731, 28.918837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.498878, 33.313725, 28.901196>,  <35.114956, 33.205379, 28.871794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498878, 33.313725, 28.901196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093367, 0.061173, 0.993751,
		0.264677, -0.960671, 0.084004,
		0.959807, 0.270867, 0.073504,
		35.786819, 33.394985, 28.923246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280365, 32.853134, 29.482378>,  <35.114956, 33.205379, 28.871794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280365, 32.853134, 29.482378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.570904, 33.118591, 29.410831>,  <35.745228, 33.277866, 29.367903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.570904, 33.118591, 29.410831>,  <35.280365, 32.853134, 29.482378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570904, 33.118591, 29.410831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039933, 0.219052, 0.974896,
		0.686168, -0.715254, 0.132606,
		0.726346, 0.663647, -0.178869,
		35.788807, 33.317684, 29.357170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858757, 32.810146, 30.006756>,  <35.280365, 32.853134, 29.482378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858757, 32.810146, 30.006756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896687, 33.178822, 29.856291>,  <35.919445, 33.400028, 29.766012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896687, 33.178822, 29.856291>,  <35.858757, 32.810146, 30.006756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896687, 33.178822, 29.856291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331108, 0.327150, 0.885066,
		0.938817, -0.208473, -0.274157,
		0.094822, 0.921690, -0.376161,
		35.925133, 33.455330, 29.743443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507015, 33.049759, 30.191294>,  <35.858757, 32.810146, 30.006756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507015, 33.049759, 30.191294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319077, 33.396378, 30.123959>,  <36.206314, 33.604351, 30.083557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319077, 33.396378, 30.123959>,  <36.507015, 33.049759, 30.191294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319077, 33.396378, 30.123959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179252, 0.280382, 0.943003,
		0.864359, 0.412888, -0.287066,
		-0.469843, 0.866550, -0.168340,
		36.178123, 33.656342, 30.073456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856014, 33.500755, 30.575804>,  <36.507015, 33.049759, 30.191294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856014, 33.500755, 30.575804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512676, 33.697079, 30.516006>,  <36.306675, 33.814873, 30.480127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512676, 33.697079, 30.516006>,  <36.856014, 33.500755, 30.575804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512676, 33.697079, 30.516006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061158, 0.387165, 0.919980,
		0.509417, 0.780517, -0.362338,
		-0.858344, 0.490813, -0.149493,
		36.255173, 33.844322, 30.471159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997776, 34.199429, 30.793478>,  <36.856014, 33.500755, 30.575804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997776, 34.199429, 30.793478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597923, 34.189297, 30.789616>,  <36.358013, 34.183220, 30.787298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597923, 34.189297, 30.789616>,  <36.997776, 34.199429, 30.793478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597923, 34.189297, 30.789616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020190, 0.458165, 0.888638,
		-0.018081, 0.888506, -0.458508,
		-0.999633, -0.025325, -0.009655,
		36.298035, 34.181698, 30.786718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788303, 34.825516, 31.038794>,  <36.997776, 34.199429, 30.793478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788303, 34.825516, 31.038794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.456806, 34.606377, 31.084494>,  <36.257908, 34.474892, 31.111914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.456806, 34.606377, 31.084494>,  <36.788303, 34.825516, 31.038794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456806, 34.606377, 31.084494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139602, 0.400074, 0.905788,
		-0.541942, 0.734713, -0.408038,
		-0.828740, -0.547848, 0.114249,
		36.208183, 34.442020, 31.118769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130585, 35.323910, 31.216515>,  <36.788303, 34.825516, 31.038794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130585, 35.323910, 31.216515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.071827, 34.964745, 31.382490>,  <36.036572, 34.749245, 31.482075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.071827, 34.964745, 31.382490>,  <36.130585, 35.323910, 31.216515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071827, 34.964745, 31.382490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113597, 0.432028, 0.894677,
		-0.982607, 0.084290, -0.165464,
		-0.146898, -0.897912, 0.414939,
		36.027756, 34.695370, 31.506971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644135, 35.496964, 31.737156>,  <36.130585, 35.323910, 31.216515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644135, 35.496964, 31.737156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801212, 35.146072, 31.847618>,  <35.895458, 34.935539, 31.913897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801212, 35.146072, 31.847618>,  <35.644135, 35.496964, 31.737156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801212, 35.146072, 31.847618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181389, 0.220502, 0.958372,
		-0.901602, -0.426443, -0.072529,
		0.392698, -0.877226, 0.276157,
		35.919022, 34.882904, 31.930466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246937, 35.315845, 32.267250>,  <35.644135, 35.496964, 31.737156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246937, 35.315845, 32.267250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.571384, 35.087025, 32.315975>,  <35.766052, 34.949730, 32.345211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.571384, 35.087025, 32.315975>,  <35.246937, 35.315845, 32.267250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571384, 35.087025, 32.315975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019105, 0.234078, 0.972030,
		-0.584569, -0.786104, 0.200795,
		0.811119, -0.572055, 0.121816,
		35.814720, 34.915409, 32.352520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077625, 35.002132, 32.879620>,  <35.246937, 35.315845, 32.267250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077625, 35.002132, 32.879620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470898, 34.929642, 32.870598>,  <35.706860, 34.886147, 32.865185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470898, 34.929642, 32.870598>,  <35.077625, 35.002132, 32.879620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470898, 34.929642, 32.870598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038129, 0.082931, 0.995826,
		-0.178605, -0.979938, 0.088447,
		0.983182, -0.181232, -0.022552,
		35.765854, 34.875271, 32.863831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211369, 34.574764, 33.406338>,  <35.077625, 35.002132, 32.879620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211369, 34.574764, 33.406338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569447, 34.738277, 33.335331>,  <35.784294, 34.836388, 33.292725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569447, 34.738277, 33.335331>,  <35.211369, 34.574764, 33.406338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569447, 34.738277, 33.335331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210933, -0.037746, 0.976771,
		0.392592, -0.911848, -0.120017,
		0.895198, 0.408788, -0.177520,
		35.838005, 34.860912, 33.282074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671959, 34.174549, 33.853863>,  <35.211369, 34.574764, 33.406338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671959, 34.174549, 33.853863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908047, 34.481895, 33.754864>,  <36.049702, 34.666302, 33.695465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908047, 34.481895, 33.754864>,  <35.671959, 34.174549, 33.853863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908047, 34.481895, 33.754864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255337, 0.113156, 0.960208,
		0.765795, -0.629931, -0.129405,
		0.590221, 0.768364, -0.247498,
		36.085114, 34.712406, 33.680614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316967, 34.122097, 34.147072>,  <35.671959, 34.174549, 33.853863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316967, 34.122097, 34.147072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.304596, 34.518898, 34.098118>,  <36.297173, 34.756977, 34.068745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.304596, 34.518898, 34.098118>,  <36.316967, 34.122097, 34.147072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304596, 34.518898, 34.098118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367132, 0.125164, 0.921709,
		0.929654, -0.016424, -0.368066,
		-0.030930, 0.992000, -0.122389,
		36.295319, 34.816498, 34.061401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916649, 34.408714, 34.268578>,  <36.316967, 34.122097, 34.147072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916649, 34.408714, 34.268578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.669361, 34.715523, 34.337254>,  <36.520988, 34.899609, 34.378460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.669361, 34.715523, 34.337254>,  <36.916649, 34.408714, 34.268578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669361, 34.715523, 34.337254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456084, 0.172169, 0.873123,
		0.640146, 0.618089, -0.456266,
		-0.618223, 0.767023, 0.171687,
		36.483894, 34.945629, 34.388760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431889, 34.934544, 34.228107>,  <36.916649, 34.408714, 34.268578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431889, 34.934544, 34.228107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758690, 34.852604, 34.443714>,  <37.954773, 34.803440, 34.573078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758690, 34.852604, 34.443714>,  <37.431889, 34.934544, 34.228107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758690, 34.852604, 34.443714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377769, -0.516079, -0.768735,
		0.435650, 0.831684, -0.344254,
		0.817007, -0.204851, 0.539014,
		38.003792, 34.791149, 34.605419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999897, 35.216221, 33.855247>,  <37.431889, 34.934544, 34.228107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999897, 35.216221, 33.855247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079525, 34.910431, 34.100510>,  <38.127300, 34.726959, 34.247665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079525, 34.910431, 34.100510>,  <37.999897, 35.216221, 33.855247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079525, 34.910431, 34.100510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540193, -0.436435, -0.719525,
		0.817657, 0.474457, 0.326080,
		0.199071, -0.764470, 0.613152,
		38.139248, 34.681091, 34.284454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710953, 35.128551, 33.799538>,  <37.999897, 35.216221, 33.855247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710953, 35.128551, 33.799538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540504, 34.778015, 33.889374>,  <38.438236, 34.567692, 33.943275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540504, 34.778015, 33.889374>,  <38.710953, 35.128551, 33.799538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540504, 34.778015, 33.889374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560088, -0.450518, -0.695223,
		0.710437, -0.170459, 0.682805,
		-0.426123, -0.876343, 0.224593,
		38.412666, 34.515114, 33.956753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320930, 34.663269, 33.860104>,  <38.710953, 35.128551, 33.799538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320930, 34.663269, 33.860104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.985901, 34.451477, 33.806252>,  <38.784885, 34.324402, 33.773941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.985901, 34.451477, 33.806252>,  <39.320930, 34.663269, 33.860104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985901, 34.451477, 33.806252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461361, -0.553503, -0.693384,
		0.292613, -0.642873, 0.707879,
		-0.837570, -0.529481, -0.134635,
		38.734631, 34.292633, 33.765862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575516, 34.077053, 33.696686>,  <39.320930, 34.663269, 33.860104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575516, 34.077053, 33.696686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193951, 34.002579, 33.602547>,  <38.965012, 33.957893, 33.546062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193951, 34.002579, 33.602547>,  <39.575516, 34.077053, 33.696686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193951, 34.002579, 33.602547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297519, -0.484302, -0.822760,
		0.039204, -0.854861, 0.517374,
		-0.953910, -0.186184, -0.235351,
		38.907776, 33.946724, 33.531940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623863, 33.384819, 33.565899>,  <39.575516, 34.077053, 33.696686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623863, 33.384819, 33.565899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300079, 33.528343, 33.379982>,  <39.105808, 33.614460, 33.268433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300079, 33.528343, 33.379982>,  <39.623863, 33.384819, 33.565899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300079, 33.528343, 33.379982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257894, -0.493881, -0.830405,
		-0.527511, -0.792045, 0.307241,
		-0.809458, 0.358812, -0.464791,
		39.057243, 33.635986, 33.240543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288643, 32.814938, 33.249447>,  <39.623863, 33.384819, 33.565899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288643, 32.814938, 33.249447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.174492, 33.151752, 33.066349>,  <39.106003, 33.353840, 32.956490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.174492, 33.151752, 33.066349>,  <39.288643, 32.814938, 33.249447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174492, 33.151752, 33.066349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038269, -0.487239, -0.872430,
		-0.957652, -0.231451, 0.171269,
		-0.285374, 0.842038, -0.457748,
		39.088879, 33.404366, 32.929024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806107, 32.534981, 32.808804>,  <39.288643, 32.814938, 33.249447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806107, 32.534981, 32.808804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.902203, 32.901340, 32.680176>,  <38.959858, 33.121159, 32.602997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.902203, 32.901340, 32.680176>,  <38.806107, 32.534981, 32.808804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902203, 32.901340, 32.680176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251670, -0.378714, -0.890639,
		-0.937522, 0.133036, -0.321487,
		0.240239, 0.915902, -0.321572,
		38.974274, 33.176109, 32.583706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583515, 32.477459, 32.093246>,  <38.806107, 32.534981, 32.808804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583515, 32.477459, 32.093246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802364, 32.811146, 32.065716>,  <38.933674, 33.011360, 32.049198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802364, 32.811146, 32.065716>,  <38.583515, 32.477459, 32.093246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802364, 32.811146, 32.065716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261566, -0.248493, -0.932649,
		-0.795136, 0.492270, -0.354159,
		0.547122, 0.834219, -0.068825,
		38.966499, 33.061413, 32.045067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399300, 32.910431, 31.464230>,  <38.583515, 32.477459, 32.093246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399300, 32.910431, 31.464230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773346, 33.012241, 31.562838>,  <38.997772, 33.073326, 31.622002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773346, 33.012241, 31.562838>,  <38.399300, 32.910431, 31.464230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773346, 33.012241, 31.562838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262907, -0.031945, -0.964292,
		-0.237563, 0.966538, -0.096789,
		0.935117, 0.254527, 0.246521,
		39.053883, 33.088600, 31.636793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567329, 33.475582, 31.023237>,  <38.399300, 32.910431, 31.464230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567329, 33.475582, 31.023237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914593, 33.315876, 31.141144>,  <39.122952, 33.220051, 31.211887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914593, 33.315876, 31.141144>,  <38.567329, 33.475582, 31.023237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914593, 33.315876, 31.141144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322744, 0.003005, -0.946482,
		0.377013, 0.916830, 0.131470,
		0.868158, -0.399267, 0.294768,
		39.175041, 33.196095, 31.229574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072529, 33.860630, 30.781755>,  <38.567329, 33.475582, 31.023237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072529, 33.860630, 30.781755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249233, 33.507122, 30.843464>,  <39.355255, 33.295017, 30.880489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249233, 33.507122, 30.843464>,  <39.072529, 33.860630, 30.781755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249233, 33.507122, 30.843464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416318, 0.049626, -0.907864,
		0.794686, 0.465285, 0.389851,
		0.441762, -0.883769, 0.154269,
		39.381763, 33.241993, 30.889744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587513, 33.885277, 30.442636>,  <39.072529, 33.860630, 30.781755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587513, 33.885277, 30.442636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578365, 33.488316, 30.491003>,  <39.572876, 33.250141, 30.520023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578365, 33.488316, 30.491003>,  <39.587513, 33.885277, 30.442636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578365, 33.488316, 30.491003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387281, -0.120299, -0.914080,
		0.921678, 0.025922, 0.387089,
		-0.022871, -0.992399, 0.120916,
		39.571503, 33.190598, 30.527277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224205, 33.550728, 30.132906>,  <39.587513, 33.885277, 30.442636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224205, 33.550728, 30.132906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966114, 33.245144, 30.135551>,  <39.811260, 33.061794, 30.137138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966114, 33.245144, 30.135551>,  <40.224205, 33.550728, 30.132906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966114, 33.245144, 30.135551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261471, -0.228948, -0.937665,
		0.717857, -0.603275, 0.347477,
		-0.645225, -0.763964, 0.006613,
		39.772545, 33.015953, 30.137535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656055, 32.939354, 29.911781>,  <40.224205, 33.550728, 30.132906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656055, 32.939354, 29.911781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.270844, 32.855019, 29.844700>,  <40.039719, 32.804417, 29.804451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.270844, 32.855019, 29.844700>,  <40.656055, 32.939354, 29.911781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270844, 32.855019, 29.844700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223874, -0.280023, -0.933524,
		0.149862, -0.936554, 0.316871,
		-0.963028, -0.210839, -0.167705,
		39.981934, 32.791767, 29.794388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673325, 32.368607, 29.470465>,  <40.656055, 32.939354, 29.911781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673325, 32.368607, 29.470465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.298725, 32.502655, 29.429165>,  <40.073967, 32.583084, 29.404385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.298725, 32.502655, 29.429165>,  <40.673325, 32.368607, 29.470465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298725, 32.502655, 29.429165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078321, -0.087107, -0.993115,
		-0.341811, -0.938139, 0.055328,
		-0.936499, 0.335124, -0.103250,
		40.017776, 32.603191, 29.398190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277691, 31.842745, 29.119610>,  <40.673325, 32.368607, 29.470465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277691, 31.842745, 29.119610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.085960, 32.185181, 29.042305>,  <39.970921, 32.390644, 28.995922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.085960, 32.185181, 29.042305>,  <40.277691, 31.842745, 29.119610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085960, 32.185181, 29.042305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111753, -0.277953, -0.954072,
		-0.870491, -0.435716, 0.228902,
		-0.479329, 0.856092, -0.193263,
		39.942162, 32.442009, 28.984325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718121, 31.669630, 28.703665>,  <40.277691, 31.842745, 29.119610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718121, 31.669630, 28.703665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.738304, 32.066120, 28.654795>,  <39.750416, 32.304016, 28.625473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.738304, 32.066120, 28.654795>,  <39.718121, 31.669630, 28.703665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738304, 32.066120, 28.654795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193704, -0.110294, -0.974841,
		-0.979762, 0.072855, 0.186439,
		0.050459, 0.991225, -0.122174,
		39.753441, 32.363487, 28.618143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.136665, 31.950439, 28.133743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410206, 32.242050, 28.145563>,  <39.574329, 32.417015, 28.152655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410206, 32.242050, 28.145563>,  <39.136665, 31.950439, 28.133743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410206, 32.242050, 28.145563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032068, 0.070489, -0.996997,
		-0.728920, 0.680847, 0.071582,
		0.683848, 0.729026, 0.029548,
		39.615360, 32.460758, 28.154427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839451, 32.420731, 27.839062>,  <39.136665, 31.950439, 28.133743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839451, 32.420731, 27.839062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228962, 32.507217, 27.810747>,  <39.462669, 32.559109, 27.793758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228962, 32.507217, 27.810747>,  <38.839451, 32.420731, 27.839062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228962, 32.507217, 27.810747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098277, 0.119151, -0.988000,
		-0.205192, 0.969047, 0.137275,
		0.973775, 0.216221, -0.070786,
		39.521095, 32.572083, 27.789511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851120, 32.910099, 27.346306>,  <38.839451, 32.420731, 27.839062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851120, 32.910099, 27.346306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.237667, 32.807514, 27.353846>,  <39.469597, 32.745964, 27.358370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.237667, 32.807514, 27.353846>,  <38.851120, 32.910099, 27.346306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237667, 32.807514, 27.353846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011463, -0.030264, -0.999476,
		0.256895, 0.966081, -0.026307,
		0.966371, -0.256459, 0.018849,
		39.527580, 32.730576, 27.359501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112213, 33.250271, 26.923222>,  <38.851120, 32.910099, 27.346306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112213, 33.250271, 26.923222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412598, 32.987160, 26.946531>,  <39.592827, 32.829292, 26.960516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412598, 32.987160, 26.946531>,  <39.112213, 33.250271, 26.923222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412598, 32.987160, 26.946531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081580, 0.004842, -0.996655,
		0.655293, 0.753199, 0.057298,
		0.750957, -0.657775, 0.058273,
		39.637886, 32.789825, 26.964014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603050, 33.511776, 26.435869>,  <39.112213, 33.250271, 26.923222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603050, 33.511776, 26.435869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.677135, 33.124321, 26.502125>,  <39.721588, 32.891850, 26.541878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.677135, 33.124321, 26.502125>,  <39.603050, 33.511776, 26.435869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677135, 33.124321, 26.502125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172901, -0.133803, -0.975809,
		0.967368, 0.209371, 0.142696,
		0.185213, -0.968639, 0.165637,
		39.732700, 32.833729, 26.551815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251907, 33.321556, 26.042408>,  <39.603050, 33.511776, 26.435869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251907, 33.321556, 26.042408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063667, 32.976849, 26.118196>,  <39.950726, 32.770023, 26.163670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063667, 32.976849, 26.118196>,  <40.251907, 33.321556, 26.042408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063667, 32.976849, 26.118196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230126, -0.327176, -0.916514,
		0.851809, -0.387708, 0.352283,
		-0.470598, -0.861765, 0.189470,
		39.922489, 32.718319, 26.175037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696819, 32.725914, 25.823849>,  <40.251907, 33.321556, 26.042408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696819, 32.725914, 25.823849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.325111, 32.578209, 25.827740>,  <40.102085, 32.489586, 25.830074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.325111, 32.578209, 25.827740>,  <40.696819, 32.725914, 25.823849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325111, 32.578209, 25.827740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161192, -0.429061, -0.888777,
		0.332367, -0.824349, 0.458237,
		-0.929273, -0.369264, 0.009727,
		40.046329, 32.467430, 25.830658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739937, 32.065601, 25.627815>,  <40.696819, 32.725914, 25.823849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739937, 32.065601, 25.627815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.356293, 32.147915, 25.550091>,  <40.126106, 32.197304, 25.503456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.356293, 32.147915, 25.550091>,  <40.739937, 32.065601, 25.627815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356293, 32.147915, 25.550091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064995, -0.508055, -0.858869,
		-0.275463, -0.836381, 0.473907,
		-0.959112, 0.205785, -0.194311,
		40.068558, 32.209652, 25.491798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490650, 31.462778, 25.391201>,  <40.739937, 32.065601, 25.627815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490650, 31.462778, 25.391201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250717, 31.749907, 25.249821>,  <40.106758, 31.922184, 25.164993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250717, 31.749907, 25.249821>,  <40.490650, 31.462778, 25.391201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250717, 31.749907, 25.249821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079372, -0.386185, -0.919000,
		-0.796176, -0.579304, 0.174673,
		-0.599837, 0.717822, -0.353452,
		40.070766, 31.965254, 25.143785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133686, 31.139418, 24.771523>,  <40.490650, 31.462778, 25.391201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133686, 31.139418, 24.771523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063282, 31.531525, 24.735519>,  <40.021042, 31.766788, 24.713919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063282, 31.531525, 24.735519>,  <40.133686, 31.139418, 24.771523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063282, 31.531525, 24.735519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129933, -0.113768, -0.984974,
		-0.975776, -0.161668, 0.147393,
		-0.176007, 0.980266, -0.090006,
		40.010479, 31.825603, 24.708517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692776, 31.168867, 24.235956>,  <40.133686, 31.139418, 24.771523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692776, 31.168867, 24.235956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825481, 31.543709, 24.279339>,  <39.905106, 31.768614, 24.305368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825481, 31.543709, 24.279339>,  <39.692776, 31.168867, 24.235956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825481, 31.543709, 24.279339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051699, 0.132857, -0.989786,
		-0.941943, 0.322773, 0.092526,
		0.331769, 0.937105, 0.108457,
		39.925011, 31.824841, 24.311876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506897, 31.452503, 23.575562>,  <39.692776, 31.168867, 24.235956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506897, 31.452503, 23.575562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771904, 31.702578, 23.740587>,  <39.930908, 31.852623, 23.839603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771904, 31.702578, 23.740587>,  <39.506897, 31.452503, 23.575562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771904, 31.702578, 23.740587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233602, 0.350865, -0.906820,
		-0.711686, 0.697163, 0.086410,
		0.662520, 0.625186, 0.412565,
		39.970661, 31.890133, 23.864357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462246, 32.051731, 23.287060>,  <39.506897, 31.452503, 23.575562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462246, 32.051731, 23.287060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834549, 32.056889, 23.433220>,  <40.057930, 32.059982, 23.520916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834549, 32.056889, 23.433220>,  <39.462246, 32.051731, 23.287060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834549, 32.056889, 23.433220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361224, 0.122212, -0.924436,
		-0.056576, 0.992420, 0.109093,
		0.930761, 0.012894, 0.365400,
		40.113777, 32.060757, 23.542839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755596, 32.720871, 23.109507>,  <39.462246, 32.051731, 23.287060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755596, 32.720871, 23.109507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060635, 32.466911, 23.159075>,  <40.243656, 32.314537, 23.188816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060635, 32.466911, 23.159075>,  <39.755596, 32.720871, 23.109507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060635, 32.466911, 23.159075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382097, 0.287526, -0.878254,
		0.521971, 0.717101, 0.461858,
		0.762593, -0.634898, 0.123922,
		40.289413, 32.276443, 23.196251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417259, 33.110531, 22.862284>,  <39.755596, 32.720871, 23.109507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417259, 33.110531, 22.862284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.516113, 32.723137, 22.849861>,  <40.575424, 32.490700, 22.842407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.516113, 32.723137, 22.849861>,  <40.417259, 33.110531, 22.862284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516113, 32.723137, 22.849861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477104, 0.149515, -0.866035,
		0.843384, 0.199208, 0.499018,
		0.247132, -0.968484, -0.031055,
		40.590252, 32.432590, 22.840544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095753, 33.163136, 22.610201>,  <40.417259, 33.110531, 22.862284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095753, 33.163136, 22.610201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.011528, 32.775925, 22.555664>,  <40.960991, 32.543598, 22.522942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.011528, 32.775925, 22.555664>,  <41.095753, 33.163136, 22.610201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011528, 32.775925, 22.555664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592059, -0.015297, -0.805750,
		0.777900, -0.250386, 0.576349,
		-0.210565, -0.968025, -0.136344,
		40.948360, 32.485516, 22.514761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758537, 32.767624, 22.636517>,  <41.095753, 33.163136, 22.610201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758537, 32.767624, 22.636517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493252, 32.553837, 22.426945>,  <41.334080, 32.425564, 22.301203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493252, 32.553837, 22.426945>,  <41.758537, 32.767624, 22.636517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493252, 32.553837, 22.426945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626649, -0.013782, -0.779180,
		0.409223, -0.845079, 0.344061,
		-0.663210, -0.534464, -0.523928,
		41.294289, 32.393497, 22.269766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158039, 32.166138, 22.391153>,  <41.758537, 32.767624, 22.636517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158039, 32.166138, 22.391153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.840794, 32.236057, 22.157774>,  <41.650444, 32.278008, 22.017746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.840794, 32.236057, 22.157774>,  <42.158039, 32.166138, 22.391153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840794, 32.236057, 22.157774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550748, -0.203237, -0.809550,
		-0.260088, -0.963400, 0.064920,
		-0.793115, 0.174800, -0.583450,
		41.602859, 32.288498, 21.982738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202366, 31.692984, 21.785294>,  <42.158039, 32.166138, 22.391153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202366, 31.692984, 21.785294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940052, 31.958492, 21.641430>,  <41.782665, 32.117798, 21.555111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940052, 31.958492, 21.641430>,  <42.202366, 31.692984, 21.785294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940052, 31.958492, 21.641430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316482, -0.190814, -0.929209,
		-0.685411, -0.723186, -0.084939,
		-0.655783, 0.663771, -0.359661,
		41.743317, 32.157623, 21.533531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729668, 31.348742, 21.390064>,  <42.202366, 31.692984, 21.785294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729668, 31.348742, 21.390064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.718723, 31.727898, 21.263096>,  <41.712154, 31.955391, 21.186914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.718723, 31.727898, 21.263096>,  <41.729668, 31.348742, 21.390064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718723, 31.727898, 21.263096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293152, -0.295970, -0.909100,
		-0.955674, -0.117928, -0.269777,
		-0.027363, 0.947889, -0.317422,
		41.710514, 32.012264, 21.167870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506008, 31.280714, 20.738295>,  <41.729668, 31.348742, 21.390064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506008, 31.280714, 20.738295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.661396, 31.648893, 20.721024>,  <41.754627, 31.869801, 20.710661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.661396, 31.648893, 20.721024>,  <41.506008, 31.280714, 20.738295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661396, 31.648893, 20.721024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366686, -0.197404, -0.909161,
		-0.845360, 0.337349, -0.414201,
		0.388470, 0.920449, -0.043176,
		41.777935, 31.925028, 20.708071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370579, 31.453564, 20.063633>,  <41.506008, 31.280714, 20.738295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370579, 31.453564, 20.063633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.639484, 31.724812, 20.182434>,  <41.800827, 31.887560, 20.253716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.639484, 31.724812, 20.182434>,  <41.370579, 31.453564, 20.063633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639484, 31.724812, 20.182434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490331, -0.107283, -0.864908,
		-0.554648, 0.727079, -0.404626,
		0.672266, 0.678120, 0.297005,
		41.841164, 31.928247, 20.271536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412441, 31.904285, 19.612129>,  <41.370579, 31.453564, 20.063633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412441, 31.904285, 19.612129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.767639, 31.868423, 19.792540>,  <41.980759, 31.846907, 19.900785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.767639, 31.868423, 19.792540>,  <41.412441, 31.904285, 19.612129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767639, 31.868423, 19.792540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431080, -0.179190, -0.884342,
		0.160106, 0.979721, -0.120471,
		0.887995, -0.089655, 0.451028,
		42.034039, 31.841526, 19.927849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891186, 32.315018, 19.439684>,  <41.412441, 31.904285, 19.612129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891186, 32.315018, 19.439684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.977631, 32.685287, 19.563894>,  <41.029495, 32.907448, 19.638420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.977631, 32.685287, 19.563894>,  <40.891186, 32.315018, 19.439684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977631, 32.685287, 19.563894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119842, -0.290490, 0.949344,
		0.968987, -0.242375, 0.048157,
		0.216108, 0.925673, 0.310528,
		41.042461, 32.962990, 19.657053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409855, 32.906372, 19.151339>,  <40.891186, 32.315018, 19.439684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409855, 32.906372, 19.151339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.066532, 32.992535, 18.965048>,  <39.860538, 33.044231, 18.853273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.066532, 32.992535, 18.965048>,  <40.409855, 32.906372, 19.151339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066532, 32.992535, 18.965048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478751, -0.009536, 0.877899,
		0.184666, 0.976477, 0.111312,
		-0.858310, 0.215409, -0.465729,
		39.809040, 33.057156, 18.825329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071430, 33.482777, 19.474489>,  <40.409855, 32.906372, 19.151339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071430, 33.482777, 19.474489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766972, 33.293797, 19.296747>,  <39.584297, 33.180408, 19.190102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766972, 33.293797, 19.296747>,  <40.071430, 33.482777, 19.474489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766972, 33.293797, 19.296747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496807, -0.015731, 0.867718,
		-0.416944, 0.881217, -0.222744,
		-0.761144, -0.472451, -0.444354,
		39.538628, 33.152061, 19.163441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606956, 33.858673, 19.750906>,  <40.071430, 33.482777, 19.474489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606956, 33.858673, 19.750906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423077, 33.540634, 19.592669>,  <39.312748, 33.349812, 19.497726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423077, 33.540634, 19.592669>,  <39.606956, 33.858673, 19.750906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423077, 33.540634, 19.592669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554211, -0.091220, 0.827363,
		-0.693921, 0.599581, -0.398718,
		-0.459700, -0.795098, -0.395593,
		39.285168, 33.302105, 19.473991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818665, 33.987465, 19.798445>,  <39.606956, 33.858673, 19.750906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818665, 33.987465, 19.798445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.900166, 33.595909, 19.792036>,  <38.949066, 33.360973, 19.788191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.900166, 33.595909, 19.792036>,  <38.818665, 33.987465, 19.798445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900166, 33.595909, 19.792036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561074, -0.130164, 0.817468,
		-0.802298, -0.157570, -0.575752,
		0.203750, -0.978892, -0.016022,
		38.961292, 33.302242, 19.787230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166828, 33.681805, 19.938862>,  <38.818665, 33.987465, 19.798445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166828, 33.681805, 19.938862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.418983, 33.379902, 20.011473>,  <38.570278, 33.198761, 20.055040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.418983, 33.379902, 20.011473>,  <38.166828, 33.681805, 19.938862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418983, 33.379902, 20.011473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462670, -0.177529, 0.868573,
		-0.623335, -0.631527, -0.461116,
		0.630389, -0.754757, 0.181529,
		38.608101, 33.153477, 20.065931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746067, 33.099545, 20.055468>,  <38.166828, 33.681805, 19.938862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746067, 33.099545, 20.055468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.095539, 33.039371, 20.240528>,  <38.305222, 33.003269, 20.351564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.095539, 33.039371, 20.240528>,  <37.746067, 33.099545, 20.055468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095539, 33.039371, 20.240528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479363, -0.103951, 0.871439,
		-0.082985, -0.983142, -0.162924,
		0.873685, -0.150416, 0.462656,
		38.357643, 32.994240, 20.379324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689560, 32.606861, 20.450356>,  <37.746067, 33.099545, 20.055468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689560, 32.606861, 20.450356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995060, 32.798161, 20.623770>,  <38.178360, 32.912941, 20.727819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995060, 32.798161, 20.623770>,  <37.689560, 32.606861, 20.450356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995060, 32.798161, 20.623770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442618, -0.100863, 0.891020,
		0.469860, -0.872411, 0.134648,
		0.763755, 0.478252, 0.433536,
		38.224186, 32.941635, 20.753830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604633, 32.390064, 21.078728>,  <37.689560, 32.606861, 20.450356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604633, 32.390064, 21.078728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870941, 32.683144, 21.135153>,  <38.030727, 32.858990, 21.169008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870941, 32.683144, 21.135153>,  <37.604633, 32.390064, 21.078728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870941, 32.683144, 21.135153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179179, -0.026529, 0.983459,
		0.724323, -0.680034, 0.113622,
		0.665771, 0.732700, 0.141064,
		38.070671, 32.902954, 21.177471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045547, 32.183964, 21.685553>,  <37.604633, 32.390064, 21.078728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045547, 32.183964, 21.685553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043869, 32.583889, 21.678024>,  <38.042862, 32.823845, 21.673508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043869, 32.583889, 21.678024>,  <38.045547, 32.183964, 21.685553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043869, 32.583889, 21.678024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049798, 0.018591, 0.998586,
		0.998751, 0.005128, 0.049710,
		-0.004196, 0.999814, -0.018823,
		38.042610, 32.883835, 21.672377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562393, 32.383076, 22.164499>,  <38.045547, 32.183964, 21.685553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562393, 32.383076, 22.164499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389744, 32.742863, 22.137177>,  <38.286156, 32.958733, 22.120783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389744, 32.742863, 22.137177>,  <38.562393, 32.383076, 22.164499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389744, 32.742863, 22.137177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101561, 0.123699, 0.987109,
		0.896319, 0.419120, -0.144741,
		-0.431621, 0.899465, -0.068308,
		38.260258, 33.012703, 22.116684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875919, 32.804817, 22.592342>,  <38.562393, 32.383076, 22.164499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875919, 32.804817, 22.592342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525711, 32.994884, 22.557272>,  <38.315586, 33.108925, 22.536230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525711, 32.994884, 22.557272>,  <38.875919, 32.804817, 22.592342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525711, 32.994884, 22.557272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048476, 0.266917, 0.962499,
		0.480750, 0.838434, -0.256725,
		-0.875516, 0.475167, -0.087677,
		38.263058, 33.137436, 22.530970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900665, 33.287968, 23.035061>,  <38.875919, 32.804817, 22.592342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900665, 33.287968, 23.035061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.505909, 33.284328, 22.970606>,  <38.269054, 33.282146, 22.931932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.505909, 33.284328, 22.970606>,  <38.900665, 33.287968, 23.035061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505909, 33.284328, 22.970606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161246, 0.098712, 0.981965,
		0.006974, 0.995075, -0.098884,
		-0.986890, -0.009096, -0.161140,
		38.209843, 33.281601, 22.922264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563377, 33.836208, 23.492775>,  <38.900665, 33.287968, 23.035061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563377, 33.836208, 23.492775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280853, 33.573650, 23.386742>,  <38.111340, 33.416115, 23.323122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280853, 33.573650, 23.386742>,  <38.563377, 33.836208, 23.492775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280853, 33.573650, 23.386742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380649, 0.036440, 0.924002,
		-0.596852, 0.753536, -0.275594,
		-0.706311, -0.656396, -0.265083,
		38.068958, 33.376732, 23.307217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883667, 34.105602, 23.707102>,  <38.563377, 33.836208, 23.492775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883667, 34.105602, 23.707102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834713, 33.708744, 23.696815>,  <37.805340, 33.470627, 23.690643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834713, 33.708744, 23.696815>,  <37.883667, 34.105602, 23.707102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834713, 33.708744, 23.696815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354575, 0.019508, 0.934824,
		-0.926983, 0.123528, -0.354179,
		-0.122387, -0.992149, -0.025717,
		37.797997, 33.411098, 23.689100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239960, 33.889187, 23.974123>,  <37.883667, 34.105602, 23.707102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239960, 33.889187, 23.974123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424412, 33.534534, 23.988287>,  <37.535084, 33.321743, 23.996786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424412, 33.534534, 23.988287>,  <37.239960, 33.889187, 23.974123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424412, 33.534534, 23.988287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367884, -0.154713, 0.916911,
		-0.807480, -0.435840, -0.397518,
		0.461127, -0.886627, 0.035411,
		37.562752, 33.268547, 23.998911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778381, 33.576492, 24.218563>,  <37.239960, 33.889187, 23.974123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778381, 33.576492, 24.218563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.100372, 33.345707, 24.273886>,  <37.293568, 33.207237, 24.307079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.100372, 33.345707, 24.273886>,  <36.778381, 33.576492, 24.218563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100372, 33.345707, 24.273886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363856, -0.295936, 0.883193,
		-0.468640, -0.761273, -0.448152,
		0.804976, -0.576963, 0.138306,
		37.341866, 33.172619, 24.315378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611065, 32.864624, 24.271797>,  <36.778381, 33.576492, 24.218563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611065, 32.864624, 24.271797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943012, 32.958046, 24.474485>,  <37.142181, 33.014099, 24.596098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943012, 32.958046, 24.474485>,  <36.611065, 32.864624, 24.271797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943012, 32.958046, 24.474485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471366, -0.192474, 0.860679,
		0.298543, -0.953104, -0.049641,
		0.829871, 0.233551, 0.506722,
		37.191975, 33.028111, 24.626503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609272, 32.393360, 24.733412>,  <36.611065, 32.864624, 24.271797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609272, 32.393360, 24.733412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.893955, 32.613045, 24.908609>,  <37.064766, 32.744854, 25.013727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.893955, 32.613045, 24.908609>,  <36.609272, 32.393360, 24.733412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893955, 32.613045, 24.908609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317948, -0.304131, 0.898005,
		0.626401, -0.778378, -0.041832,
		0.711709, 0.549211, 0.437992,
		37.107468, 32.777809, 25.040007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813046, 31.945242, 25.241062>,  <36.609272, 32.393360, 24.733412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813046, 31.945242, 25.241062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921387, 32.317181, 25.340679>,  <36.986389, 32.540344, 25.400450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921387, 32.317181, 25.340679>,  <36.813046, 31.945242, 25.241062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921387, 32.317181, 25.340679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253037, -0.180843, 0.950404,
		0.928770, -0.320433, 0.186305,
		0.270849, 0.929849, 0.249043,
		37.002640, 32.596134, 25.415392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138004, 31.822449, 25.874466>,  <36.813046, 31.945242, 25.241062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138004, 31.822449, 25.874466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.020386, 32.204613, 25.863626>,  <36.949814, 32.433910, 25.857122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.020386, 32.204613, 25.863626>,  <37.138004, 31.822449, 25.874466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020386, 32.204613, 25.863626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359655, -0.084333, 0.929267,
		0.885543, 0.282991, 0.368414,
		-0.294043, 0.955408, -0.027099,
		36.932175, 32.491234, 25.855497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.154343, 32.233749, 31.130507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.917065, 32.545319, 31.049120>,  <39.774696, 32.732258, 31.000288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.917065, 32.545319, 31.049120>,  <40.154343, 32.233749, 31.130507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917065, 32.545319, 31.049120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191821, 0.108706, 0.975391,
		0.781869, 0.617631, 0.084929,
		-0.593199, 0.778919, -0.203468,
		39.739105, 32.778996, 30.988079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346893, 32.748837, 31.612469>,  <40.154343, 32.233749, 31.130507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346893, 32.748837, 31.612469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.981308, 32.864223, 31.498302>,  <39.761959, 32.933456, 31.429802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.981308, 32.864223, 31.498302>,  <40.346893, 32.748837, 31.612469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981308, 32.864223, 31.498302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214829, 0.252755, 0.943379,
		0.344273, 0.923527, -0.169037,
		-0.913961, 0.288466, -0.285417,
		39.707119, 32.950764, 31.412678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255253, 33.461712, 31.935757>,  <40.346893, 32.748837, 31.612469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255253, 33.461712, 31.935757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878422, 33.348721, 31.863419>,  <39.652325, 33.280926, 31.820015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878422, 33.348721, 31.863419>,  <40.255253, 33.461712, 31.935757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878422, 33.348721, 31.863419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278470, 0.358188, 0.891154,
		-0.186952, 0.889893, -0.416100,
		-0.942074, -0.282474, -0.180845,
		39.595798, 33.263977, 31.809166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837692, 34.025177, 31.996168>,  <40.255253, 33.461712, 31.935757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837692, 34.025177, 31.996168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532890, 33.766212, 32.001888>,  <39.350010, 33.610836, 32.005322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532890, 33.766212, 32.001888>,  <39.837692, 34.025177, 31.996168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532890, 33.766212, 32.001888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437039, 0.530448, 0.726376,
		-0.477849, 0.547254, -0.687148,
		-0.762009, -0.647408, 0.014303,
		39.304287, 33.571991, 32.006180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223652, 34.423737, 32.126167>,  <39.837692, 34.025177, 31.996168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223652, 34.423737, 32.126167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.148712, 34.046501, 32.236065>,  <39.103748, 33.820160, 32.302002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.148712, 34.046501, 32.236065>,  <39.223652, 34.423737, 32.126167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148712, 34.046501, 32.236065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414096, 0.329454, 0.848519,
		-0.890745, 0.045196, -0.452251,
		-0.187345, -0.943089, 0.274744,
		39.092510, 33.763573, 32.318489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627819, 34.440914, 32.333939>,  <39.223652, 34.423737, 32.126167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627819, 34.440914, 32.333939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765629, 34.120743, 32.530148>,  <38.848316, 33.928638, 32.647873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765629, 34.120743, 32.530148>,  <38.627819, 34.440914, 32.333939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765629, 34.120743, 32.530148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576017, 0.232350, 0.783720,
		-0.741286, -0.552562, -0.381011,
		0.344527, -0.800430, 0.490523,
		38.868988, 33.880615, 32.677303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995834, 34.039486, 32.621132>,  <38.627819, 34.440914, 32.333939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995834, 34.039486, 32.621132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.325005, 33.917843, 32.813091>,  <38.522507, 33.844856, 32.928268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.325005, 33.917843, 32.813091>,  <37.995834, 34.039486, 32.621132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325005, 33.917843, 32.813091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401957, 0.285316, 0.870072,
		-0.401519, -0.908908, 0.112557,
		0.822930, -0.304107, 0.479902,
		38.571884, 33.826611, 32.957062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753693, 33.545719, 33.106026>,  <37.995834, 34.039486, 32.621132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753693, 33.545719, 33.106026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.101280, 33.688049, 33.243599>,  <38.309834, 33.773449, 33.326141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.101280, 33.688049, 33.243599>,  <37.753693, 33.545719, 33.106026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101280, 33.688049, 33.243599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455465, 0.303276, 0.837003,
		0.193517, -0.883977, 0.425601,
		0.868966, 0.355821, 0.343932,
		38.361969, 33.794796, 33.346779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790665, 33.442268, 33.802959>,  <37.753693, 33.545719, 33.106026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790665, 33.442268, 33.802959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.059338, 33.732754, 33.744366>,  <38.220539, 33.907047, 33.709209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.059338, 33.732754, 33.744366>,  <37.790665, 33.442268, 33.802959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059338, 33.732754, 33.744366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170863, 0.344247, 0.923201,
		0.720870, -0.595066, 0.355306,
		0.671679, 0.726217, -0.146482,
		38.260841, 33.950619, 33.700420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155060, 33.358543, 34.458012>,  <37.790665, 33.442268, 33.802959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155060, 33.358543, 34.458012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240269, 33.721489, 34.313065>,  <38.291393, 33.939255, 34.226097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240269, 33.721489, 34.313065>,  <38.155060, 33.358543, 34.458012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240269, 33.721489, 34.313065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136242, 0.394847, 0.908589,
		0.967501, -0.144182, 0.207733,
		0.213024, 0.907363, -0.362371,
		38.304176, 33.993698, 34.204353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484013, 33.625839, 34.957439>,  <38.155060, 33.358543, 34.458012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484013, 33.625839, 34.957439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374187, 33.944912, 34.742657>,  <38.308292, 34.136356, 34.613789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374187, 33.944912, 34.742657>,  <38.484013, 33.625839, 34.957439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374187, 33.944912, 34.742657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214821, 0.493416, 0.842847,
		0.937266, 0.346762, 0.035886,
		-0.274560, 0.797682, -0.536954,
		38.291821, 34.184216, 34.581570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827663, 34.197411, 35.400303>,  <38.484013, 33.625839, 34.957439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827663, 34.197411, 35.400303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554565, 34.368713, 35.163509>,  <38.390705, 34.471497, 35.021431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554565, 34.368713, 35.163509>,  <38.827663, 34.197411, 35.400303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554565, 34.368713, 35.163509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163825, 0.699859, 0.695240,
		0.712051, 0.571656, -0.407667,
		-0.682748, 0.428260, -0.591987,
		38.349743, 34.497192, 34.985912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961483, 35.002537, 35.357967>,  <38.827663, 34.197411, 35.400303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961483, 35.002537, 35.357967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.577351, 34.913681, 35.290531>,  <38.346870, 34.860367, 35.250069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.577351, 34.913681, 35.290531>,  <38.961483, 35.002537, 35.357967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577351, 34.913681, 35.290531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269534, 0.584268, 0.765495,
		-0.071548, 0.780567, -0.620964,
		-0.960329, -0.222140, -0.168586,
		38.289253, 34.847038, 35.239956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613804, 35.652611, 35.165905>,  <38.961483, 35.002537, 35.357967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613804, 35.652611, 35.165905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368633, 35.374004, 35.315132>,  <38.221531, 35.206841, 35.404667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368633, 35.374004, 35.315132>,  <38.613804, 35.652611, 35.165905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368633, 35.374004, 35.315132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445179, 0.694498, 0.565233,
		-0.652792, 0.180364, -0.735752,
		-0.612926, -0.696521, 0.373069,
		38.184757, 35.165047, 35.427052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808323, 35.637249, 35.209858>,  <38.613804, 35.652611, 35.165905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808323, 35.637249, 35.209858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.886990, 36.000168, 35.358521>,  <37.934189, 36.217918, 35.447720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.886990, 36.000168, 35.358521>,  <37.808323, 35.637249, 35.209858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886990, 36.000168, 35.358521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366694, 0.283491, -0.886097,
		-0.909317, 0.310554, -0.276947,
		0.196669, 0.907298, 0.371661,
		37.945992, 36.272358, 35.470020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474770, 36.136166, 34.846577>,  <37.808323, 35.637249, 35.209858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474770, 36.136166, 34.846577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.760746, 36.374050, 34.993645>,  <37.932331, 36.516781, 35.081886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.760746, 36.374050, 34.993645>,  <37.474770, 36.136166, 34.846577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760746, 36.374050, 34.993645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145368, 0.387926, -0.910155,
		-0.683903, 0.704156, 0.190893,
		0.714943, 0.594708, 0.367666,
		37.975227, 36.552464, 35.103943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416687, 36.731171, 34.524956>,  <37.474770, 36.136166, 34.846577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416687, 36.731171, 34.524956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.796906, 36.722759, 34.648903>,  <38.025036, 36.717712, 34.723270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.796906, 36.722759, 34.648903>,  <37.416687, 36.731171, 34.524956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796906, 36.722759, 34.648903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308987, 0.165051, -0.936635,
		-0.031445, 0.986061, 0.163388,
		0.950546, -0.021033, 0.309870,
		38.082069, 36.716450, 34.741863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696777, 37.429722, 34.306431>,  <37.416687, 36.731171, 34.524956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696777, 37.429722, 34.306431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.994370, 37.169083, 34.365646>,  <38.172924, 37.012699, 34.401176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.994370, 37.169083, 34.365646>,  <37.696777, 37.429722, 34.306431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994370, 37.169083, 34.365646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374568, 0.223218, -0.899929,
		0.553343, 0.724983, 0.410136,
		0.743983, -0.651593, 0.148040,
		38.217564, 36.973606, 34.410057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331528, 37.861820, 34.291611>,  <37.696777, 37.429722, 34.306431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331528, 37.861820, 34.291611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.416889, 37.480728, 34.205116>,  <38.468105, 37.252071, 34.153217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.416889, 37.480728, 34.205116>,  <38.331528, 37.861820, 34.291611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416889, 37.480728, 34.205116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432291, 0.290579, -0.853633,
		0.876118, 0.088693, 0.473868,
		0.213407, -0.952732, -0.216240,
		38.480911, 37.194908, 34.140244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896332, 37.868164, 33.908062>,  <38.331528, 37.861820, 34.291611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896332, 37.868164, 33.908062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.803406, 37.487045, 33.829876>,  <38.747650, 37.258373, 33.782963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.803406, 37.487045, 33.829876>,  <38.896332, 37.868164, 33.908062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803406, 37.487045, 33.829876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470327, 0.065863, -0.880031,
		0.851366, -0.296376, 0.432826,
		-0.232313, -0.952798, -0.195467,
		38.733711, 37.201206, 33.771236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421951, 37.754959, 33.542126>,  <38.896332, 37.868164, 33.908062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421951, 37.754959, 33.542126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.142883, 37.478741, 33.465809>,  <38.975441, 37.313011, 33.420017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.142883, 37.478741, 33.465809>,  <39.421951, 37.754959, 33.542126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142883, 37.478741, 33.465809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297185, -0.036635, -0.954117,
		0.651869, -0.722363, 0.230778,
		-0.697673, -0.690543, -0.190794,
		38.933582, 37.271576, 33.408569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738102, 37.175133, 33.156384>,  <39.421951, 37.754959, 33.542126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738102, 37.175133, 33.156384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348576, 37.182373, 33.065731>,  <39.114861, 37.186718, 33.011341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348576, 37.182373, 33.065731>,  <39.738102, 37.175133, 33.156384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348576, 37.182373, 33.065731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220332, -0.170682, -0.960376,
		-0.056069, -0.985160, 0.162224,
		-0.973812, 0.018104, -0.226632,
		39.056431, 37.187805, 32.997742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841202, 36.900154, 32.562786>,  <39.738102, 37.175133, 33.156384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841202, 36.900154, 32.562786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456062, 37.008148, 32.560760>,  <39.224979, 37.072945, 32.559544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456062, 37.008148, 32.560760>,  <39.841202, 36.900154, 32.562786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456062, 37.008148, 32.560760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026479, 0.075725, -0.996777,
		-0.268737, -0.959881, -0.080061,
		-0.962850, 0.269990, -0.005067,
		39.167206, 37.089146, 32.559242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417965, 36.365646, 32.318954>,  <39.841202, 36.900154, 32.562786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417965, 36.365646, 32.318954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237724, 36.716339, 32.251667>,  <39.129581, 36.926754, 32.211296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237724, 36.716339, 32.251667>,  <39.417965, 36.365646, 32.318954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237724, 36.716339, 32.251667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109871, -0.132534, -0.985070,
		-0.885940, -0.462352, -0.036609,
		-0.450597, 0.876736, -0.168216,
		39.102547, 36.979359, 32.201202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925156, 36.241695, 31.850851>,  <39.417965, 36.365646, 32.318954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925156, 36.241695, 31.850851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970299, 36.638481, 31.828007>,  <38.997387, 36.876553, 31.814301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970299, 36.638481, 31.828007>,  <38.925156, 36.241695, 31.850851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970299, 36.638481, 31.828007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020268, -0.059762, -0.998007,
		-0.993404, 0.111480, -0.026850,
		0.112862, 0.991968, -0.057109,
		39.004158, 36.936073, 31.810875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526844, 36.427162, 31.293818>,  <38.925156, 36.241695, 31.850851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526844, 36.427162, 31.293818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765907, 36.745865, 31.329556>,  <38.909348, 36.937088, 31.350998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765907, 36.745865, 31.329556>,  <38.526844, 36.427162, 31.293818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765907, 36.745865, 31.329556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072881, 0.056987, -0.995711,
		-0.798430, 0.601609, -0.024009,
		0.597660, 0.796755, 0.089346,
		38.945206, 36.984890, 31.356359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364914, 36.747478, 30.729111>,  <38.526844, 36.427162, 31.293818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364914, 36.747478, 30.729111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696217, 36.945858, 30.833431>,  <38.895000, 37.064884, 30.896025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696217, 36.945858, 30.833431>,  <38.364914, 36.747478, 30.729111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696217, 36.945858, 30.833431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337026, -0.069085, -0.938957,
		-0.447657, 0.865599, -0.224368,
		0.828261, 0.495949, 0.260803,
		38.944695, 37.094643, 30.911673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514748, 37.379959, 30.303545>,  <38.364914, 36.747478, 30.729111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514748, 37.379959, 30.303545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883877, 37.280144, 30.420942>,  <39.105354, 37.220253, 30.491381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883877, 37.280144, 30.420942>,  <38.514748, 37.379959, 30.303545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883877, 37.280144, 30.420942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282067, -0.081217, -0.955951,
		0.262382, 0.964953, -0.004563,
		0.922819, -0.249537, 0.293491,
		39.160721, 37.205284, 30.508989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491741, 38.156357, 30.266546>,  <38.514748, 37.379959, 30.303545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491741, 38.156357, 30.266546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.188507, 38.264103, 30.028976>,  <38.006565, 38.328751, 29.886435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.188507, 38.264103, 30.028976>,  <38.491741, 38.156357, 30.266546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188507, 38.264103, 30.028976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558156, 0.203029, 0.804513,
		0.337289, 0.941394, -0.003568,
		-0.758088, 0.269362, -0.593925,
		37.961082, 38.344910, 29.850800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146214, 38.664028, 30.654053>,  <38.491741, 38.156357, 30.266546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146214, 38.664028, 30.654053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.866726, 38.549683, 30.391731>,  <37.699036, 38.481075, 30.234339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.866726, 38.549683, 30.391731>,  <38.146214, 38.664028, 30.654053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866726, 38.549683, 30.391731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706205, 0.129100, 0.696137,
		-0.114335, 0.949535, -0.292082,
		-0.698714, -0.285862, -0.655806,
		37.657112, 38.463924, 30.194990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624119, 39.088184, 30.545710>,  <38.146214, 38.664028, 30.654053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624119, 39.088184, 30.545710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.443886, 38.747620, 30.438320>,  <37.335747, 38.543282, 30.373886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.443886, 38.747620, 30.438320>,  <37.624119, 39.088184, 30.545710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443886, 38.747620, 30.438320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754588, 0.202528, 0.624162,
		-0.477045, 0.483823, -0.733719,
		-0.450583, -0.851409, -0.268472,
		37.308712, 38.492195, 30.357779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889034, 39.237022, 30.643641>,  <37.624119, 39.088184, 30.545710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889034, 39.237022, 30.643641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916023, 38.838020, 30.635374>,  <36.932217, 38.598618, 30.630415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916023, 38.838020, 30.635374>,  <36.889034, 39.237022, 30.643641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916023, 38.838020, 30.635374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741000, -0.063971, 0.668451,
		-0.668107, -0.029791, -0.743469,
		0.067474, -0.997507, -0.020665,
		36.936264, 38.538769, 30.629175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173637, 38.952183, 30.538435>,  <36.889034, 39.237022, 30.643641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173637, 38.952183, 30.538435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.362228, 38.622250, 30.663246>,  <36.475384, 38.424290, 30.738132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.362228, 38.622250, 30.663246>,  <36.173637, 38.952183, 30.538435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362228, 38.622250, 30.663246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639918, -0.076528, 0.764623,
		-0.606807, -0.560175, -0.563906,
		0.471477, -0.824832, 0.312028,
		36.503674, 38.374802, 30.756855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632401, 38.476173, 30.645826>,  <36.173637, 38.952183, 30.538435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632401, 38.476173, 30.645826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.960938, 38.378075, 30.851835>,  <36.158058, 38.319214, 30.975441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.960938, 38.378075, 30.851835>,  <35.632401, 38.476173, 30.645826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960938, 38.378075, 30.851835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562984, -0.203065, 0.801133,
		-0.091893, -0.947955, -0.304856,
		0.821343, -0.245248, 0.515023,
		36.207340, 38.304501, 31.006342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412483, 37.954536, 31.080742>,  <35.632401, 38.476173, 30.645826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412483, 37.954536, 31.080742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.758694, 38.017830, 31.270826>,  <35.966419, 38.055805, 31.384876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.758694, 38.017830, 31.270826>,  <35.412483, 37.954536, 31.080742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758694, 38.017830, 31.270826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358454, -0.466969, 0.808363,
		0.349818, -0.870001, -0.347455,
		0.865527, 0.158234, 0.475210,
		36.018353, 38.065300, 31.413389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580101, 37.359425, 31.365709>,  <35.412483, 37.954536, 31.080742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580101, 37.359425, 31.365709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.758320, 37.646000, 31.580448>,  <35.865253, 37.817944, 31.709291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.758320, 37.646000, 31.580448>,  <35.580101, 37.359425, 31.365709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758320, 37.646000, 31.580448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425280, -0.358302, 0.831118,
		0.787796, -0.598615, 0.145044,
		0.445550, 0.716435, 0.536848,
		35.891983, 37.860931, 31.741503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780380, 37.035084, 31.925966>,  <35.580101, 37.359425, 31.365709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780380, 37.035084, 31.925966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.776157, 37.407845, 32.070984>,  <35.773624, 37.631500, 32.157993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.776157, 37.407845, 32.070984>,  <35.780380, 37.035084, 31.925966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776157, 37.407845, 32.070984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430675, -0.331453, 0.839439,
		0.902445, -0.147275, 0.404849,
		-0.010560, 0.931906, 0.362546,
		35.772991, 37.687416, 32.179749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024002, 37.015240, 32.598038>,  <35.780380, 37.035084, 31.925966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024002, 37.015240, 32.598038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.851265, 37.375999, 32.601959>,  <35.747623, 37.592453, 32.604313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.851265, 37.375999, 32.601959>,  <36.024002, 37.015240, 32.598038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851265, 37.375999, 32.601959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437370, -0.218897, 0.872233,
		0.788810, 0.372379, 0.488992,
		-0.431841, 0.901897, 0.009800,
		35.721714, 37.646568, 32.604900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164967, 37.484890, 33.242695>,  <36.024002, 37.015240, 32.598038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164967, 37.484890, 33.242695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.830299, 37.639179, 33.087158>,  <35.629498, 37.731754, 32.993835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.830299, 37.639179, 33.087158>,  <36.164967, 37.484890, 33.242695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830299, 37.639179, 33.087158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416721, 0.012399, 0.908950,
		0.355424, 0.922531, 0.150365,
		-0.836670, 0.385723, -0.388845,
		35.579300, 37.754898, 32.970505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887470, 37.783554, 33.844440>,  <36.164967, 37.484890, 33.242695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887470, 37.783554, 33.844440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.573402, 37.777897, 33.596794>,  <35.384960, 37.774502, 33.448204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.573402, 37.777897, 33.596794>,  <35.887470, 37.783554, 33.844440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573402, 37.777897, 33.596794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617368, 0.096354, 0.780751,
		0.048614, 0.995246, -0.084384,
		-0.785171, -0.014141, -0.619118,
		35.337852, 37.773655, 33.411060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.075718, 38.431911, 26.729927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727226, 38.298244, 26.586102>,  <39.518131, 38.218044, 26.499807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727226, 38.298244, 26.586102>,  <40.075718, 38.431911, 26.729927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727226, 38.298244, 26.586102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460471, 0.302611, 0.834502,
		-0.170055, 0.892614, -0.417518,
		-0.871234, -0.334166, -0.359562,
		39.465855, 38.197994, 26.478233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693027, 39.014801, 26.890388>,  <40.075718, 38.431911, 26.729927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693027, 39.014801, 26.890388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444481, 38.706814, 26.832348>,  <39.295353, 38.522022, 26.797523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444481, 38.706814, 26.832348>,  <39.693027, 39.014801, 26.890388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444481, 38.706814, 26.832348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522422, 0.269115, 0.809106,
		-0.583937, 0.578555, -0.569467,
		-0.621364, -0.769968, -0.145104,
		39.258072, 38.475822, 26.788816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044975, 39.296013, 27.119751>,  <39.693027, 39.014801, 26.890388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044975, 39.296013, 27.119751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045109, 38.896107, 27.128433>,  <39.045189, 38.656162, 27.133642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045109, 38.896107, 27.128433>,  <39.044975, 39.296013, 27.119751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045109, 38.896107, 27.128433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485832, 0.018808, 0.873850,
		-0.874052, -0.010839, -0.485711,
		0.000336, -0.999764, 0.021705,
		39.045208, 38.596176, 27.134945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375145, 39.180416, 27.204636>,  <39.044975, 39.296013, 27.119751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375145, 39.180416, 27.204636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562912, 38.851009, 27.332052>,  <38.675571, 38.653366, 27.408503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562912, 38.851009, 27.332052>,  <38.375145, 39.180416, 27.204636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562912, 38.851009, 27.332052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501285, 0.048432, 0.863926,
		-0.726882, -0.565226, -0.390079,
		0.469421, -0.823513, 0.318543,
		38.703739, 38.603954, 27.427616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840393, 38.743355, 27.427477>,  <38.375145, 39.180416, 27.204636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840393, 38.743355, 27.427477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169094, 38.614655, 27.615606>,  <38.366314, 38.537434, 27.728485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169094, 38.614655, 27.615606>,  <37.840393, 38.743355, 27.427477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169094, 38.614655, 27.615606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496597, 0.000481, 0.867981,
		-0.279500, -0.946824, -0.159386,
		0.821749, -0.321751, 0.470324,
		38.415619, 38.518127, 27.756704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606960, 38.228237, 27.854099>,  <37.840393, 38.743355, 27.427477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606960, 38.228237, 27.854099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966019, 38.295368, 28.017105>,  <38.181454, 38.335648, 28.114908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966019, 38.295368, 28.017105>,  <37.606960, 38.228237, 27.854099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966019, 38.295368, 28.017105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384622, -0.153138, 0.910283,
		0.215179, -0.973849, -0.072912,
		0.897644, 0.167830, 0.407516,
		38.235313, 38.345718, 28.139360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728153, 37.661259, 28.226980>,  <37.606960, 38.228237, 27.854099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728153, 37.661259, 28.226980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972111, 37.940464, 28.377077>,  <38.118484, 38.107986, 28.467136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972111, 37.940464, 28.377077>,  <37.728153, 37.661259, 28.226980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972111, 37.940464, 28.377077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312955, -0.222881, 0.923246,
		0.728074, -0.680515, 0.082514,
		0.609892, 0.698014, 0.375244,
		38.155079, 38.149868, 28.489651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907909, 37.343506, 28.841673>,  <37.728153, 37.661259, 28.226980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907909, 37.343506, 28.841673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976013, 37.735813, 28.879858>,  <38.016876, 37.971195, 28.902769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976013, 37.735813, 28.879858>,  <37.907909, 37.343506, 28.841673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976013, 37.735813, 28.879858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194884, -0.061451, 0.978899,
		0.965937, -0.185267, 0.180673,
		0.170255, 0.980765, 0.095463,
		38.027088, 38.030045, 28.908497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351040, 37.470089, 29.540962>,  <37.907909, 37.343506, 28.841673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351040, 37.470089, 29.540962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154377, 37.807739, 29.455439>,  <38.036377, 38.010330, 29.404125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154377, 37.807739, 29.455439>,  <38.351040, 37.470089, 29.540962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154377, 37.807739, 29.455439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441495, -0.030009, 0.896761,
		0.750567, 0.535298, 0.387434,
		-0.491661, 0.844130, -0.213808,
		38.006878, 38.060978, 29.391296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001995, 37.711273, 29.713881>,  <38.351040, 37.470089, 29.540962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001995, 37.711273, 29.713881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211914, 37.455196, 29.938288>,  <39.337868, 37.301552, 30.072931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211914, 37.455196, 29.938288>,  <39.001995, 37.711273, 29.713881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211914, 37.455196, 29.938288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557401, -0.239660, -0.794901,
		0.643342, 0.729875, 0.231070,
		0.524799, -0.640192, 0.561016,
		39.369354, 37.263138, 30.106592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734978, 37.773685, 29.489067>,  <39.001995, 37.711273, 29.713881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734978, 37.773685, 29.489067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722698, 37.418583, 29.672779>,  <39.715332, 37.205521, 29.783007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722698, 37.418583, 29.672779>,  <39.734978, 37.773685, 29.489067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722698, 37.418583, 29.672779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382604, -0.434938, -0.815134,
		0.923402, 0.150699, 0.353012,
		-0.030698, -0.887760, 0.459281,
		39.713490, 37.152256, 29.810564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467384, 37.611355, 29.364710>,  <39.734978, 37.773685, 29.489067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467384, 37.611355, 29.364710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243290, 37.289764, 29.444468>,  <40.108833, 37.096809, 29.492323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243290, 37.289764, 29.444468>,  <40.467384, 37.611355, 29.364710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243290, 37.289764, 29.444468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432178, -0.489066, -0.757652,
		0.706649, -0.338293, 0.621454,
		-0.560241, -0.803973, 0.199395,
		40.075218, 37.048573, 29.504286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914799, 37.034401, 29.506721>,  <40.467384, 37.611355, 29.364710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914799, 37.034401, 29.506721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571850, 36.864014, 29.391161>,  <40.366081, 36.761784, 29.321825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571850, 36.864014, 29.391161>,  <40.914799, 37.034401, 29.506721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571850, 36.864014, 29.391161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472170, -0.427548, -0.770882,
		0.204849, -0.797344, 0.567696,
		-0.857375, -0.425964, -0.288899,
		40.314636, 36.736225, 29.304491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159515, 36.450150, 29.287401>,  <40.914799, 37.034401, 29.506721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159515, 36.450150, 29.287401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788368, 36.479088, 29.141073>,  <40.565681, 36.496452, 29.053276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788368, 36.479088, 29.141073>,  <41.159515, 36.450150, 29.287401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788368, 36.479088, 29.141073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215328, -0.696975, -0.684003,
		-0.304454, -0.713436, 0.631123,
		-0.927869, 0.072349, -0.365820,
		40.510006, 36.500793, 29.031326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937935, 35.789688, 29.273413>,  <41.159515, 36.450150, 29.287401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937935, 35.789688, 29.273413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741425, 36.023041, 29.014704>,  <40.623516, 36.163052, 28.859478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741425, 36.023041, 29.014704>,  <40.937935, 35.789688, 29.273413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741425, 36.023041, 29.014704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289182, -0.591193, -0.752904,
		-0.821595, -0.556922, 0.121739,
		-0.491280, 0.583377, -0.646773,
		40.594040, 36.198055, 28.820671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746330, 35.313663, 28.802990>,  <40.937935, 35.789688, 29.273413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746330, 35.313663, 28.802990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718040, 35.665352, 28.614538>,  <40.701065, 35.876366, 28.501467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718040, 35.665352, 28.614538>,  <40.746330, 35.313663, 28.802990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718040, 35.665352, 28.614538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209573, -0.448673, -0.868776,
		-0.975231, -0.160184, -0.152527,
		-0.070729, 0.879223, -0.471130,
		40.696823, 35.929119, 28.473200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467094, 35.100231, 28.136106>,  <40.746330, 35.313663, 28.802990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467094, 35.100231, 28.136106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633369, 35.458961, 28.075569>,  <40.733135, 35.674198, 28.039248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633369, 35.458961, 28.075569>,  <40.467094, 35.100231, 28.136106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633369, 35.458961, 28.075569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336833, -0.306370, -0.890326,
		-0.844835, 0.319122, -0.429435,
		0.415689, 0.896827, -0.151342,
		40.758076, 35.728008, 28.030167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284515, 35.165180, 27.492130>,  <40.467094, 35.100231, 28.136106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284515, 35.165180, 27.492130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578293, 35.427162, 27.563278>,  <40.754559, 35.584351, 27.605967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578293, 35.427162, 27.563278>,  <40.284515, 35.165180, 27.492130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578293, 35.427162, 27.563278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304020, -0.083185, -0.949027,
		-0.606771, 0.751078, -0.260212,
		0.734439, 0.654952, 0.177869,
		40.798626, 35.623646, 27.616638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308258, 35.560638, 26.910204>,  <40.284515, 35.165180, 27.492130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308258, 35.560638, 26.910204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657169, 35.601807, 27.101423>,  <40.866516, 35.626507, 27.216154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657169, 35.601807, 27.101423>,  <40.308258, 35.560638, 26.910204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657169, 35.601807, 27.101423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488938, -0.199367, -0.849231,
		0.007903, 0.974505, -0.224227,
		0.872283, 0.102922, 0.478048,
		40.918854, 35.632683, 27.244837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725079, 35.988873, 26.534485>,  <40.308258, 35.560638, 26.910204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725079, 35.988873, 26.534485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016499, 35.846210, 26.768412>,  <41.191349, 35.760612, 26.908768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016499, 35.846210, 26.768412>,  <40.725079, 35.988873, 26.534485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016499, 35.846210, 26.768412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582426, -0.126844, -0.802926,
		0.360549, 0.925585, 0.115313,
		0.728549, -0.356656, 0.584818,
		41.235062, 35.739212, 26.943857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307724, 36.396229, 26.469526>,  <40.725079, 35.988873, 26.534485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307724, 36.396229, 26.469526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419857, 36.028919, 26.581375>,  <41.487137, 35.808533, 26.648483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419857, 36.028919, 26.581375>,  <41.307724, 36.396229, 26.469526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419857, 36.028919, 26.581375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694852, -0.006854, -0.719121,
		0.662267, 0.395885, 0.636143,
		0.280329, -0.918274, 0.279621,
		41.503956, 35.753437, 26.665262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024250, 36.404461, 26.494738>,  <41.307724, 36.396229, 26.469526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024250, 36.404461, 26.494738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938011, 36.020241, 26.424477>,  <41.886269, 35.789707, 26.382320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938011, 36.020241, 26.424477>,  <42.024250, 36.404461, 26.494738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938011, 36.020241, 26.424477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667841, -0.013816, -0.744176,
		0.712394, -0.277752, 0.644475,
		-0.215600, -0.960553, -0.175651,
		41.873329, 35.732075, 26.371780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562801, 36.194965, 26.147989>,  <42.024250, 36.404461, 26.494738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562801, 36.194965, 26.147989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326836, 35.877522, 26.088398>,  <42.185257, 35.687057, 26.052643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326836, 35.877522, 26.088398>,  <42.562801, 36.194965, 26.147989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326836, 35.877522, 26.088398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569769, -0.278374, -0.773221,
		0.572161, -0.541015, 0.616388,
		-0.589911, -0.793606, -0.148979,
		42.149864, 35.639439, 26.043705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.589199, 34.024315, 23.498634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834690, 34.338459, 23.530998>,  <34.981987, 34.526947, 23.550417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834690, 34.338459, 23.530998>,  <34.589199, 34.024315, 23.498634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834690, 34.338459, 23.530998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351377, 0.179935, 0.918780,
		0.707015, -0.592312, 0.386389,
		0.613730, 0.785359, 0.080908,
		35.018810, 34.574066, 23.555271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947559, 33.906898, 24.192989>,  <34.589199, 34.024315, 23.498634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947559, 33.906898, 24.192989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.021774, 34.288036, 24.096931>,  <35.066303, 34.516720, 24.039297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.021774, 34.288036, 24.096931>,  <34.947559, 33.906898, 24.192989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021774, 34.288036, 24.096931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211059, 0.200042, 0.956785,
		0.959704, -0.228200, -0.163992,
		0.185533, 0.952842, -0.240144,
		35.077435, 34.573891, 24.024889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562000, 34.035835, 24.513227>,  <34.947559, 33.906898, 24.192989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562000, 34.035835, 24.513227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.412575, 34.402527, 24.456572>,  <35.322918, 34.622540, 24.422579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.412575, 34.402527, 24.456572>,  <35.562000, 34.035835, 24.513227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412575, 34.402527, 24.456572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264475, 0.251618, 0.930989,
		0.889101, 0.310326, -0.336447,
		-0.373566, 0.916726, -0.141640,
		35.300507, 34.677544, 24.414080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097645, 34.570015, 24.714712>,  <35.562000, 34.035835, 24.513227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097645, 34.570015, 24.714712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734013, 34.731815, 24.754608>,  <35.515831, 34.828896, 24.778545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734013, 34.731815, 24.754608>,  <36.097645, 34.570015, 24.714712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734013, 34.731815, 24.754608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222718, 0.269531, 0.936883,
		0.352088, 0.873917, -0.335116,
		-0.909082, 0.404502, 0.099739,
		35.461288, 34.853165, 24.784531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218384, 35.106659, 25.075153>,  <36.097645, 34.570015, 24.714712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218384, 35.106659, 25.075153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.826721, 35.044659, 25.127663>,  <35.591724, 35.007458, 25.159168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.826721, 35.044659, 25.127663>,  <36.218384, 35.106659, 25.075153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826721, 35.044659, 25.127663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081502, 0.292168, 0.952888,
		-0.186051, 0.943723, -0.273444,
		-0.979154, -0.155000, 0.131274,
		35.532974, 34.998158, 25.167046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117886, 35.507423, 25.612349>,  <36.218384, 35.106659, 25.075153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117886, 35.507423, 25.612349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.784351, 35.286980, 25.624964>,  <35.584232, 35.154713, 25.632532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.784351, 35.286980, 25.624964>,  <36.117886, 35.507423, 25.612349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784351, 35.286980, 25.624964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118876, 0.235064, 0.964683,
		-0.539063, 0.800637, -0.261518,
		-0.833834, -0.551114, 0.031538,
		35.534203, 35.121647, 25.634424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672920, 35.898537, 25.957445>,  <36.117886, 35.507423, 25.612349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672920, 35.898537, 25.957445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487396, 35.545414, 25.987211>,  <35.376083, 35.333542, 26.005072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487396, 35.545414, 25.987211>,  <35.672920, 35.898537, 25.957445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487396, 35.545414, 25.987211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219312, 0.195791, 0.955808,
		-0.858360, 0.426993, -0.284419,
		-0.463810, -0.882804, 0.074415,
		35.348251, 35.280571, 26.009535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934933, 36.012691, 26.230049>,  <35.672920, 35.898537, 25.957445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934933, 36.012691, 26.230049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.054092, 35.641407, 26.319206>,  <35.125587, 35.418636, 26.372700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.054092, 35.641407, 26.319206>,  <34.934933, 36.012691, 26.230049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054092, 35.641407, 26.319206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341182, 0.114539, 0.932993,
		-0.891543, -0.353988, -0.282568,
		0.297903, -0.928210, 0.222891,
		35.143463, 35.362946, 26.386074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306725, 35.636826, 26.597605>,  <34.934933, 36.012691, 26.230049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306725, 35.636826, 26.597605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639870, 35.444530, 26.707323>,  <34.839756, 35.329155, 26.773155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639870, 35.444530, 26.707323>,  <34.306725, 35.636826, 26.597605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639870, 35.444530, 26.707323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234755, 0.141979, 0.961630,
		-0.501236, -0.865294, 0.005393,
		0.832858, -0.480738, 0.274297,
		34.889729, 35.300308, 26.789612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018124, 35.196980, 27.061052>,  <34.306725, 35.636826, 26.597605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018124, 35.196980, 27.061052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.410007, 35.206215, 27.140688>,  <34.645138, 35.211754, 27.188469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.410007, 35.206215, 27.140688>,  <34.018124, 35.196980, 27.061052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410007, 35.206215, 27.140688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200123, 0.058331, 0.978033,
		0.010965, -0.998030, 0.061768,
		0.979709, 0.023085, 0.199090,
		34.703918, 35.213139, 27.200415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060532, 34.810116, 27.620300>,  <34.018124, 35.196980, 27.061052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060532, 34.810116, 27.620300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.416588, 34.991940, 27.607496>,  <34.630222, 35.101032, 27.599813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.416588, 34.991940, 27.607496>,  <34.060532, 34.810116, 27.620300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416588, 34.991940, 27.607496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012992, 0.044898, 0.998907,
		0.455497, -0.889585, 0.034060,
		0.890142, 0.454557, -0.032008,
		34.683632, 35.128307, 27.597895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567032, 34.379295, 27.908621>,  <34.060532, 34.810116, 27.620300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567032, 34.379295, 27.908621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.690155, 34.758224, 27.944019>,  <34.764030, 34.985580, 27.965258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.690155, 34.758224, 27.944019>,  <34.567032, 34.379295, 27.908621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690155, 34.758224, 27.944019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052881, -0.109900, 0.992535,
		0.949977, -0.300834, -0.083924,
		0.307811, 0.947323, 0.088494,
		34.782497, 35.042423, 27.970568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883522, 34.403522, 28.617979>,  <34.567032, 34.379295, 27.908621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883522, 34.403522, 28.617979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854176, 34.785049, 28.501467>,  <34.836567, 35.013966, 28.431559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854176, 34.785049, 28.501467>,  <34.883522, 34.403522, 28.617979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854176, 34.785049, 28.501467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101391, 0.283422, 0.953621,
		0.992138, 0.099496, 0.075915,
		-0.073366, 0.953820, -0.291281,
		34.832165, 35.071194, 28.414082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306614, 34.794262, 29.056969>,  <34.883522, 34.403522, 28.617979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306614, 34.794262, 29.056969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.053032, 35.070145, 28.917025>,  <34.900883, 35.235672, 28.833057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.053032, 35.070145, 28.917025>,  <35.306614, 34.794262, 29.056969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053032, 35.070145, 28.917025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161750, 0.324133, 0.932081,
		0.756262, 0.647491, -0.093928,
		-0.633959, 0.689705, -0.349861,
		34.862843, 35.277058, 28.812067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039406, 34.601738, 29.127455>,  <35.306614, 34.794262, 29.056969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039406, 34.601738, 29.127455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.020538, 34.257496, 29.330290>,  <36.009220, 34.050953, 29.451992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.020538, 34.257496, 29.330290>,  <36.039406, 34.601738, 29.127455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020538, 34.257496, 29.330290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251924, -0.501493, -0.827671,
		0.966597, 0.088710, 0.240459,
		-0.047166, -0.860602, 0.507090,
		36.006390, 33.999317, 29.482416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656292, 34.248878, 29.040932>,  <36.039406, 34.601738, 29.127455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656292, 34.248878, 29.040932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404415, 33.958584, 29.151775>,  <36.253288, 33.784405, 29.218283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404415, 33.958584, 29.151775>,  <36.656292, 34.248878, 29.040932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404415, 33.958584, 29.151775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173000, -0.478759, -0.860732,
		0.757336, -0.494057, 0.427024,
		-0.629693, -0.725739, 0.277110,
		36.215508, 33.740864, 29.234909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070591, 33.607403, 28.991096>,  <36.656292, 34.248878, 29.040932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070591, 33.607403, 28.991096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675274, 33.547638, 28.978708>,  <36.438084, 33.511780, 28.971275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675274, 33.547638, 28.978708>,  <37.070591, 33.607403, 28.991096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675274, 33.547638, 28.978708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106437, -0.529601, -0.841543,
		0.109336, -0.834984, 0.539302,
		-0.988290, -0.149413, -0.030968,
		36.378788, 33.502815, 28.969418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038891, 32.947643, 28.742483>,  <37.070591, 33.607403, 28.991096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038891, 32.947643, 28.742483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666996, 33.084225, 28.687340>,  <36.443859, 33.166172, 28.654255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666996, 33.084225, 28.687340>,  <37.038891, 32.947643, 28.742483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666996, 33.084225, 28.687340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056884, -0.503063, -0.862376,
		-0.363809, -0.793939, 0.487138,
		-0.929735, 0.341450, -0.137857,
		36.388077, 33.186661, 28.645983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757027, 32.439468, 28.469797>,  <37.038891, 32.947643, 28.742483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757027, 32.439468, 28.469797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.522125, 32.741497, 28.353172>,  <36.381184, 32.922714, 28.283197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.522125, 32.741497, 28.353172>,  <36.757027, 32.439468, 28.469797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522125, 32.741497, 28.353172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013016, -0.351360, -0.936150,
		-0.809302, -0.553548, 0.196508,
		-0.587248, 0.755070, -0.291561,
		36.345951, 32.968018, 28.265703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240597, 32.229885, 27.985174>,  <36.757027, 32.439468, 28.469797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240597, 32.229885, 27.985174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244732, 32.624310, 27.918745>,  <36.247211, 32.860962, 27.878887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244732, 32.624310, 27.918745>,  <36.240597, 32.229885, 27.985174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244732, 32.624310, 27.918745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102531, -0.164162, -0.981090,
		-0.994676, 0.027168, 0.099405,
		0.010336, 0.986059, -0.166074,
		36.247833, 32.920128, 27.868923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699905, 32.283150, 27.416922>,  <36.240597, 32.229885, 27.985174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699905, 32.283150, 27.416922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.964069, 32.583443, 27.423386>,  <36.122570, 32.763618, 27.427265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.964069, 32.583443, 27.423386>,  <35.699905, 32.283150, 27.416922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964069, 32.583443, 27.423386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126829, -0.090306, -0.987805,
		-0.740114, 0.654410, -0.154853,
		0.660414, 0.750728, 0.016161,
		36.162193, 32.808662, 27.428234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529877, 32.595482, 26.827347>,  <35.699905, 32.283150, 27.416922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529877, 32.595482, 26.827347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.891689, 32.754906, 26.887978>,  <36.108776, 32.850559, 26.924356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.891689, 32.754906, 26.887978>,  <35.529877, 32.595482, 26.827347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891689, 32.754906, 26.887978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138870, 0.060749, -0.988446,
		-0.403162, 0.915128, -0.000398,
		0.904530, 0.398559, 0.151576,
		36.163048, 32.874474, 26.933451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630314, 33.114468, 26.371006>,  <35.529877, 32.595482, 26.827347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630314, 33.114468, 26.371006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010090, 33.041630, 26.473297>,  <36.237957, 32.997925, 26.534672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010090, 33.041630, 26.473297>,  <35.630314, 33.114468, 26.371006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010090, 33.041630, 26.473297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243550, -0.086748, -0.966001,
		0.198092, 0.979446, -0.038012,
		0.949443, -0.182099, 0.255729,
		36.294922, 32.987000, 26.550016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048435, 33.490498, 26.023205>,  <35.630314, 33.114468, 26.371006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048435, 33.490498, 26.023205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.324623, 33.219646, 26.124983>,  <36.490337, 33.057137, 26.186050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.324623, 33.219646, 26.124983>,  <36.048435, 33.490498, 26.023205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324623, 33.219646, 26.124983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377777, 0.037583, -0.925134,
		0.616874, 0.734902, 0.281754,
		0.690472, -0.677131, 0.254445,
		36.531765, 33.016506, 26.201317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760269, 33.797985, 25.893564>,  <36.048435, 33.490498, 26.023205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760269, 33.797985, 25.893564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807388, 33.400990, 25.880369>,  <36.835659, 33.162792, 25.872452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807388, 33.400990, 25.880369>,  <36.760269, 33.797985, 25.893564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807388, 33.400990, 25.880369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594075, 0.097051, -0.798534,
		0.795738, 0.074465, 0.601045,
		0.117795, -0.992490, -0.032989,
		36.842728, 33.103241, 25.870472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423313, 33.688259, 25.882338>,  <36.760269, 33.797985, 25.893564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423313, 33.688259, 25.882338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289616, 33.349636, 25.716631>,  <37.209396, 33.146461, 25.617207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289616, 33.349636, 25.716631>,  <37.423313, 33.688259, 25.882338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289616, 33.349636, 25.716631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524887, 0.197870, -0.827853,
		0.782799, -0.494148, 0.378211,
		-0.334245, -0.846561, -0.414264,
		37.189342, 33.095669, 25.592352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027138, 33.456177, 25.567190>,  <37.423313, 33.688259, 25.882338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027138, 33.456177, 25.567190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715427, 33.266899, 25.402845>,  <37.528400, 33.153332, 25.304237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715427, 33.266899, 25.402845>,  <38.027138, 33.456177, 25.567190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715427, 33.266899, 25.402845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401901, 0.125673, -0.907018,
		0.480834, -0.871946, 0.092244,
		-0.779278, -0.473199, -0.410864,
		37.481644, 33.124939, 25.279587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359623, 32.934975, 25.120861>,  <38.027138, 33.456177, 25.567190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359623, 32.934975, 25.120861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986187, 32.975197, 24.983278>,  <37.762127, 32.999332, 24.900728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986187, 32.975197, 24.983278>,  <38.359623, 32.934975, 25.120861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986187, 32.975197, 24.983278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344372, -0.013742, -0.938733,
		-0.099127, -0.994836, -0.021801,
		-0.933585, 0.100561, -0.343956,
		37.706112, 33.005363, 24.880091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780968, 32.235188, 25.178793>,  <38.359623, 32.934975, 25.120861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780968, 32.235188, 25.178793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.162270, 32.222912, 25.299036>,  <39.391052, 32.215546, 25.371181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.162270, 32.222912, 25.299036>,  <38.780968, 32.235188, 25.178793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162270, 32.222912, 25.299036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291569, 0.167754, 0.941725,
		-0.079331, -0.985351, 0.150964,
		0.953254, -0.030691, 0.300606,
		39.448246, 32.213703, 25.389217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802658, 32.005653, 25.900448>,  <38.780968, 32.235188, 25.178793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802658, 32.005653, 25.900448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.173466, 32.153145, 25.873089>,  <39.395950, 32.241638, 25.856674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.173466, 32.153145, 25.873089>,  <38.802658, 32.005653, 25.900448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173466, 32.153145, 25.873089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021057, 0.233270, 0.972184,
		0.374429, -0.899791, 0.224009,
		0.927017, 0.368731, -0.068396,
		39.451572, 32.263763, 25.852570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239082, 31.616238, 26.407730>,  <38.802658, 32.005653, 25.900448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239082, 31.616238, 26.407730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415054, 31.964624, 26.320200>,  <39.520638, 32.173656, 26.267683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415054, 31.964624, 26.320200>,  <39.239082, 31.616238, 26.407730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415054, 31.964624, 26.320200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195526, 0.144928, 0.969931,
		0.876489, -0.469486, -0.106538,
		0.439928, 0.870965, -0.218824,
		39.547031, 32.225914, 26.254553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935665, 31.593319, 26.741333>,  <39.239082, 31.616238, 26.407730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935665, 31.593319, 26.741333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830448, 31.976299, 26.693842>,  <39.767319, 32.206089, 26.665348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830448, 31.976299, 26.693842>,  <39.935665, 31.593319, 26.741333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830448, 31.976299, 26.693842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249775, 0.186446, 0.950185,
		0.931892, 0.220282, -0.288190,
		-0.263040, 0.957452, -0.118726,
		39.751537, 32.263535, 26.658224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507462, 31.874731, 26.857937>,  <39.935665, 31.593319, 26.741333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507462, 31.874731, 26.857937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.243179, 32.170250, 26.911076>,  <40.084610, 32.347561, 26.942959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.243179, 32.170250, 26.911076>,  <40.507462, 31.874731, 26.857937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243179, 32.170250, 26.911076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319502, 0.116632, 0.940381,
		0.679257, 0.663758, -0.313106,
		-0.660703, 0.738798, 0.132849,
		40.044968, 32.391888, 26.950930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788925, 32.357391, 27.336830>,  <40.507462, 31.874731, 26.857937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788925, 32.357391, 27.336830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.406151, 32.472858, 27.349112>,  <40.176487, 32.542137, 27.356480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.406151, 32.472858, 27.349112>,  <40.788925, 32.357391, 27.336830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406151, 32.472858, 27.349112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088467, 0.189257, 0.977934,
		0.276483, 0.938538, -0.206645,
		-0.956938, 0.288664, 0.030703,
		40.119068, 32.559456, 27.358322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789856, 32.984341, 27.697323>,  <40.788925, 32.357391, 27.336830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789856, 32.984341, 27.697323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.421066, 32.833088, 27.730740>,  <40.199791, 32.742336, 27.750790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.421066, 32.833088, 27.730740>,  <40.789856, 32.984341, 27.697323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421066, 32.833088, 27.730740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021462, 0.265287, 0.963931,
		-0.386658, 0.886926, -0.252703,
		-0.921974, -0.378135, 0.083540,
		40.144474, 32.719646, 27.755802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570660, 33.330471, 28.251036>,  <40.789856, 32.984341, 27.697323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570660, 33.330471, 28.251036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.259666, 33.080276, 28.224842>,  <40.073071, 32.930161, 28.209126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.259666, 33.080276, 28.224842>,  <40.570660, 33.330471, 28.251036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259666, 33.080276, 28.224842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188847, 0.132870, 0.972976,
		-0.599881, 0.768839, -0.221425,
		-0.777483, -0.625485, -0.065486,
		40.026421, 32.892632, 28.205196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016750, 33.605461, 28.589741>,  <40.570660, 33.330471, 28.251036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016750, 33.605461, 28.589741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.948311, 33.211426, 28.582521>,  <39.907249, 32.975006, 28.578190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.948311, 33.211426, 28.582521>,  <40.016750, 33.605461, 28.589741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948311, 33.211426, 28.582521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260988, 0.027651, 0.964946,
		-0.950059, 0.169809, -0.261827,
		-0.171097, -0.985089, -0.018049,
		39.896980, 32.915897, 28.577106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369228, 33.558582, 28.830465>,  <40.016750, 33.605461, 28.589741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369228, 33.558582, 28.830465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.534336, 33.195866, 28.864740>,  <39.633400, 32.978233, 28.885305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.534336, 33.195866, 28.864740>,  <39.369228, 33.558582, 28.830465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534336, 33.195866, 28.864740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278588, -0.036123, 0.959731,
		-0.867184, -0.420021, -0.267533,
		0.412772, -0.906795, 0.085687,
		39.658169, 32.923828, 28.890446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850822, 33.088223, 29.261930>,  <39.369228, 33.558582, 28.830465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850822, 33.088223, 29.261930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.216961, 32.931068, 29.297243>,  <39.436642, 32.836777, 29.318430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.216961, 32.931068, 29.297243>,  <38.850822, 33.088223, 29.261930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216961, 32.931068, 29.297243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139398, -0.103481, 0.984815,
		-0.377781, -0.913748, -0.149488,
		0.915341, -0.392882, 0.088282,
		39.491562, 32.813206, 29.323729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794128, 32.367809, 29.543072>,  <38.850822, 33.088223, 29.261930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794128, 32.367809, 29.543072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156075, 32.511116, 29.635040>,  <39.373241, 32.597099, 29.690222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156075, 32.511116, 29.635040>,  <38.794128, 32.367809, 29.543072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156075, 32.511116, 29.635040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142314, -0.254445, 0.956559,
		0.401202, -0.898279, -0.179254,
		0.904867, 0.358263, 0.229921,
		39.427536, 32.618595, 29.704018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087204, 31.909292, 30.091724>,  <38.794128, 32.367809, 29.543072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087204, 31.909292, 30.091724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298149, 32.249092, 30.097889>,  <39.424717, 32.452972, 30.101587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298149, 32.249092, 30.097889>,  <39.087204, 31.909292, 30.091724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298149, 32.249092, 30.097889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044661, 0.009601, 0.998956,
		0.848466, -0.527501, 0.043003,
		0.527363, 0.849500, 0.015412,
		39.456356, 32.503941, 30.102512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367611, 31.900311, 30.706936>,  <39.087204, 31.909292, 30.091724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367611, 31.900311, 30.706936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.440491, 32.286762, 30.633839>,  <39.484219, 32.518635, 30.589981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.440491, 32.286762, 30.633839>,  <39.367611, 31.900311, 30.706936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440491, 32.286762, 30.633839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065583, 0.173498, 0.982648,
		0.981071, -0.191026, -0.031750,
		0.182203, 0.966130, -0.182743,
		39.495152, 32.576603, 30.579016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.086643, 35.544003, 26.081701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.723671, 35.456615, 25.938118>,  <42.505890, 35.404182, 25.851969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.723671, 35.456615, 25.938118>,  <43.086643, 35.544003, 26.081701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723671, 35.456615, 25.938118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418515, -0.393168, -0.818697,
		0.037725, -0.893136, 0.448201,
		-0.907426, -0.218464, -0.358959,
		42.451443, 35.391075, 25.830431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042816, 34.897285, 25.906649>,  <43.086643, 35.544003, 26.081701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042816, 34.897285, 25.906649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.755959, 35.050854, 25.673988>,  <42.583843, 35.142994, 25.534393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.755959, 35.050854, 25.673988>,  <43.042816, 34.897285, 25.906649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755959, 35.050854, 25.673988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382393, -0.480984, -0.788942,
		-0.582652, -0.788202, 0.198126,
		-0.717141, 0.383917, -0.581649,
		42.540817, 35.166027, 25.499493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814503, 34.343426, 25.549644>,  <43.042816, 34.897285, 25.906649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814503, 34.343426, 25.549644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.681492, 34.662792, 25.348860>,  <42.601685, 34.854412, 25.228390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.681492, 34.662792, 25.348860>,  <42.814503, 34.343426, 25.549644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681492, 34.662792, 25.348860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171084, -0.472351, -0.864648,
		-0.927447, -0.373393, 0.020472,
		-0.332523, 0.798413, -0.501962,
		42.581734, 34.902317, 25.198271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315479, 34.062012, 25.004156>,  <42.814503, 34.343426, 25.549644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315479, 34.062012, 25.004156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.408352, 34.430080, 24.878059>,  <42.464077, 34.650921, 24.802402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.408352, 34.430080, 24.878059>,  <42.315479, 34.062012, 25.004156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408352, 34.430080, 24.878059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065919, -0.338238, -0.938749,
		-0.970436, 0.197179, -0.139189,
		0.232181, 0.920171, -0.315241,
		42.478004, 34.706131, 24.783487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005760, 34.078907, 24.328459>,  <42.315479, 34.062012, 25.004156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005760, 34.078907, 24.328459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.264030, 34.384350, 24.327339>,  <42.418991, 34.567616, 24.326668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.264030, 34.384350, 24.327339>,  <42.005760, 34.078907, 24.328459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264030, 34.384350, 24.327339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037696, -0.035532, -0.998657,
		-0.762680, 0.644704, -0.051727,
		0.645677, 0.763606, -0.002797,
		42.457733, 34.613430, 24.326500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808357, 34.480766, 23.765308>,  <42.005760, 34.078907, 24.328459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808357, 34.480766, 23.765308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.188686, 34.568108, 23.853182>,  <42.416882, 34.620514, 23.905905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.188686, 34.568108, 23.853182>,  <41.808357, 34.480766, 23.765308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188686, 34.568108, 23.853182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228667, -0.016439, -0.973366,
		-0.208929, 0.975731, -0.065561,
		0.950821, 0.218356, 0.219683,
		42.473934, 34.633614, 23.919086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972309, 35.014870, 23.334314>,  <41.808357, 34.480766, 23.765308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972309, 35.014870, 23.334314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.332951, 34.858768, 23.408939>,  <42.549335, 34.765106, 23.453714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.332951, 34.858768, 23.408939>,  <41.972309, 35.014870, 23.334314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332951, 34.858768, 23.408939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208884, 0.015135, -0.977823,
		0.378776, 0.920583, 0.095163,
		0.901608, -0.390254, 0.186562,
		42.603432, 34.741692, 23.464909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518520, 35.399673, 22.886023>,  <41.972309, 35.014870, 23.334314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518520, 35.399673, 22.886023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.667957, 35.044659, 22.993876>,  <42.757622, 34.831650, 23.058586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.667957, 35.044659, 22.993876>,  <42.518520, 35.399673, 22.886023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667957, 35.044659, 22.993876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216771, -0.199092, -0.955705,
		0.901907, 0.415496, 0.118012,
		0.373596, -0.887539, 0.269630,
		42.780037, 34.778397, 23.074764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169338, 35.352798, 22.502193>,  <42.518520, 35.399673, 22.886023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169338, 35.352798, 22.502193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.105633, 34.982403, 22.639116>,  <43.067410, 34.760166, 22.721270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.105633, 34.982403, 22.639116>,  <43.169338, 35.352798, 22.502193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105633, 34.982403, 22.639116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384239, -0.377531, -0.842515,
		0.909394, -0.002651, 0.415928,
		-0.159259, -0.925993, 0.342305,
		43.057854, 34.704605, 22.741808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836067, 34.915688, 22.426086>,  <43.169338, 35.352798, 22.502193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836067, 34.915688, 22.426086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.505699, 34.690186, 22.423742>,  <43.307480, 34.554882, 22.422335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.505699, 34.690186, 22.423742>,  <43.836067, 34.915688, 22.426086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505699, 34.690186, 22.423742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335531, -0.483155, -0.808690,
		0.453073, -0.669880, 0.588205,
		-0.825920, -0.563757, -0.005861,
		43.257923, 34.521057, 22.421984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007309, 34.249233, 22.243616>,  <43.836067, 34.915688, 22.426086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007309, 34.249233, 22.243616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.611946, 34.206066, 22.200911>,  <43.374729, 34.180164, 22.175287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.611946, 34.206066, 22.200911>,  <44.007309, 34.249233, 22.243616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611946, 34.206066, 22.200911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148817, -0.549906, -0.821862,
		0.029983, -0.828225, 0.559593,
		-0.988410, -0.107919, -0.106766,
		43.315422, 34.173691, 22.168880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025425, 33.545952, 22.019798>,  <44.007309, 34.249233, 22.243616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025425, 33.545952, 22.019798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.667625, 33.699158, 21.927557>,  <43.452946, 33.791080, 21.872211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.667625, 33.699158, 21.927557>,  <44.025425, 33.545952, 22.019798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667625, 33.699158, 21.927557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018668, -0.483360, -0.875223,
		-0.446679, -0.787191, 0.425215,
		-0.894500, 0.383005, -0.230603,
		43.399277, 33.814060, 21.858376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443718, 33.084095, 21.775770>,  <44.025425, 33.545952, 22.019798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443718, 33.084095, 21.775770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.397755, 33.438713, 21.596512>,  <43.370174, 33.651485, 21.488956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.397755, 33.438713, 21.596512>,  <43.443718, 33.084095, 21.775770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397755, 33.438713, 21.596512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097708, -0.459034, -0.883030,
		-0.988559, -0.057681, 0.139370,
		-0.114910, 0.886544, -0.448146,
		43.363281, 33.704678, 21.462069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862240, 32.966492, 21.305502>,  <43.443718, 33.084095, 21.775770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862240, 32.966492, 21.305502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.091190, 33.271049, 21.183741>,  <43.228561, 33.453785, 21.110683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.091190, 33.271049, 21.183741>,  <42.862240, 32.966492, 21.305502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091190, 33.271049, 21.183741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136226, -0.454362, -0.880340,
		-0.808599, 0.462414, -0.363786,
		0.572372, 0.761399, -0.304404,
		43.262901, 33.499470, 21.092419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698975, 32.698822, 20.716867>,  <42.862240, 32.966492, 21.305502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698975, 32.698822, 20.716867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.413364, 32.468506, 20.557558>,  <42.241997, 32.330315, 20.461973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.413364, 32.468506, 20.557558>,  <42.698975, 32.698822, 20.716867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413364, 32.468506, 20.557558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568830, 0.145475, 0.809487,
		-0.408160, 0.804548, -0.431403,
		-0.714030, -0.575795, -0.398273,
		42.199154, 32.295769, 20.438076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192055, 33.135593, 20.698204>,  <42.698975, 32.698822, 20.716867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192055, 33.135593, 20.698204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.023922, 32.772667, 20.694351>,  <41.923042, 32.554909, 20.692039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.023922, 32.772667, 20.694351>,  <42.192055, 33.135593, 20.698204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023922, 32.772667, 20.694351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552243, 0.247386, 0.796133,
		-0.719964, 0.339959, -0.605045,
		-0.420333, -0.907319, -0.009631,
		41.897823, 32.500473, 20.691462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432343, 33.281361, 20.879889>,  <42.192055, 33.135593, 20.698204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432343, 33.281361, 20.879889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.534962, 32.902874, 20.958736>,  <41.596535, 32.675781, 21.006044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.534962, 32.902874, 20.958736>,  <41.432343, 33.281361, 20.879889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534962, 32.902874, 20.958736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389014, 0.085608, 0.917245,
		-0.884788, -0.312000, -0.346129,
		0.256550, -0.946217, 0.197117,
		41.611927, 32.619007, 21.017872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828674, 32.976471, 21.051168>,  <41.432343, 33.281361, 20.879889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828674, 32.976471, 21.051168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.113377, 32.753891, 21.222643>,  <41.284199, 32.620342, 21.325527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.113377, 32.753891, 21.222643>,  <40.828674, 32.976471, 21.051168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113377, 32.753891, 21.222643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572664, -0.106255, 0.812875,
		-0.406774, -0.824059, -0.394286,
		0.711752, -0.556450, 0.428687,
		41.326904, 32.586956, 21.351250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479881, 32.434467, 21.327887>,  <40.828674, 32.976471, 21.051168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479881, 32.434467, 21.327887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.824730, 32.387505, 21.525051>,  <41.031639, 32.359325, 21.643349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.824730, 32.387505, 21.525051>,  <40.479881, 32.434467, 21.327887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824730, 32.387505, 21.525051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506696, -0.195742, 0.839609,
		-0.002092, -0.973602, -0.228243,
		0.862122, -0.117407, 0.492911,
		41.083366, 32.352283, 21.672924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355457, 31.748875, 21.654186>,  <40.479881, 32.434467, 21.327887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355457, 31.748875, 21.654186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.640949, 31.962669, 21.835253>,  <40.812244, 32.090946, 21.943893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.640949, 31.962669, 21.835253>,  <40.355457, 31.748875, 21.654186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640949, 31.962669, 21.835253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426465, -0.181051, 0.886199,
		0.555618, -0.825556, 0.098718,
		0.713734, 0.534488, 0.452665,
		40.855068, 32.123016, 21.971052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471931, 31.298822, 22.142200>,  <40.355457, 31.748875, 21.654186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471931, 31.298822, 22.142200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608154, 31.657230, 22.256161>,  <40.689888, 31.872274, 22.324537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608154, 31.657230, 22.256161>,  <40.471931, 31.298822, 22.142200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608154, 31.657230, 22.256161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386619, -0.142758, 0.911124,
		0.857057, -0.420439, 0.297801,
		0.340558, 0.896020, 0.284901,
		40.710323, 31.926037, 22.341631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996716, 31.212168, 22.813580>,  <40.471931, 31.298822, 22.142200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996716, 31.212168, 22.813580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.840645, 31.580435, 22.818302>,  <40.747002, 31.801395, 22.821135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.840645, 31.580435, 22.818302>,  <40.996716, 31.212168, 22.813580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840645, 31.580435, 22.818302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260833, -0.122817, 0.957540,
		0.883024, 0.370526, 0.288060,
		-0.390172, 0.920666, 0.011805,
		40.723595, 31.856634, 22.821844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273800, 31.434200, 23.326160>,  <40.996716, 31.212168, 22.813580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273800, 31.434200, 23.326160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.956032, 31.674353, 23.289423>,  <40.765369, 31.818445, 23.267380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.956032, 31.674353, 23.289423>,  <41.273800, 31.434200, 23.326160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956032, 31.674353, 23.289423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041364, 0.097387, 0.994387,
		0.605957, 0.793761, -0.052532,
		-0.794421, 0.600382, -0.091845,
		40.717705, 31.854467, 23.261869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318867, 31.889946, 23.974157>,  <41.273800, 31.434200, 23.326160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318867, 31.889946, 23.974157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.955070, 31.965897, 23.826223>,  <40.736794, 32.011467, 23.737463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.955070, 31.965897, 23.826223>,  <41.318867, 31.889946, 23.974157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955070, 31.965897, 23.826223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356910, 0.099561, 0.928818,
		0.213184, 0.976747, -0.022780,
		-0.909488, 0.189879, -0.369836,
		40.682224, 32.022861, 23.715273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025982, 32.575375, 24.160219>,  <41.318867, 31.889946, 23.974157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025982, 32.575375, 24.160219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.690361, 32.369556, 24.089525>,  <40.488987, 32.246067, 24.047108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.690361, 32.369556, 24.089525>,  <41.025982, 32.575375, 24.160219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690361, 32.369556, 24.089525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335759, 0.234124, 0.912388,
		-0.428085, 0.824882, -0.369205,
		-0.839053, -0.514543, -0.176737,
		40.438644, 32.215195, 24.036505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402538, 33.015965, 24.298761>,  <41.025982, 32.575375, 24.160219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402538, 33.015965, 24.298761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.292461, 32.631535, 24.308601>,  <40.226418, 32.400875, 24.314505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.292461, 32.631535, 24.308601>,  <40.402538, 33.015965, 24.298761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292461, 32.631535, 24.308601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387452, 0.134285, 0.912057,
		-0.879859, 0.241459, -0.409325,
		-0.275190, -0.961075, 0.024598,
		40.209904, 32.343212, 24.315981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790771, 33.114693, 24.610151>,  <40.402538, 33.015965, 24.298761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790771, 33.114693, 24.610151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846020, 32.719025, 24.630005>,  <39.879169, 32.481625, 24.641916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846020, 32.719025, 24.630005>,  <39.790771, 33.114693, 24.610151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846020, 32.719025, 24.630005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353087, -0.002355, 0.935588,
		-0.925340, -0.146746, -0.349589,
		0.138117, -0.989171, 0.049634,
		39.887455, 32.422272, 24.644896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145172, 32.752342, 24.744810>,  <39.790771, 33.114693, 24.610151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145172, 32.752342, 24.744810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.443501, 32.519283, 24.873972>,  <39.622498, 32.379448, 24.951469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.443501, 32.519283, 24.873972>,  <39.145172, 32.752342, 24.744810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443501, 32.519283, 24.873972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410789, -0.020680, 0.911496,
		-0.524402, -0.812462, -0.254769,
		0.745825, -0.582647, 0.322906,
		39.667248, 32.344490, 24.970844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359478, 32.422016, 24.587963>,  <39.145172, 32.752342, 24.744810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359478, 32.422016, 24.587963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045982, 32.656441, 24.505718>,  <37.857883, 32.797096, 24.456371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045982, 32.656441, 24.505718>,  <38.359478, 32.422016, 24.587963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045982, 32.656441, 24.505718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270110, 0.023524, -0.962542,
		-0.559274, -0.809923, -0.176738,
		-0.783743, 0.586064, -0.205612,
		37.810860, 32.832260, 24.444035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222771, 32.159336, 23.958658>,  <38.359478, 32.422016, 24.587963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222771, 32.159336, 23.958658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.005726, 32.494495, 23.982323>,  <37.875500, 32.695591, 23.996521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.005726, 32.494495, 23.982323>,  <38.222771, 32.159336, 23.958658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005726, 32.494495, 23.982323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068596, 0.114396, -0.991064,
		-0.837176, -0.533708, -0.119549,
		-0.542615, 0.837896, 0.059159,
		37.842941, 32.745865, 24.000071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663944, 32.092773, 23.461504>,  <38.222771, 32.159336, 23.958658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663944, 32.092773, 23.461504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.729694, 32.481525, 23.528955>,  <37.769146, 32.714775, 23.569426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.729694, 32.481525, 23.528955>,  <37.663944, 32.092773, 23.461504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729694, 32.481525, 23.528955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184987, 0.137547, -0.973068,
		-0.968896, 0.191144, -0.157175,
		0.164377, 0.971877, 0.168628,
		37.779007, 32.773090, 23.579544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144581, 32.499084, 23.031244>,  <37.663944, 32.092773, 23.461504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144581, 32.499084, 23.031244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.428894, 32.763554, 23.127274>,  <37.599483, 32.922234, 23.184891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.428894, 32.763554, 23.127274>,  <37.144581, 32.499084, 23.031244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428894, 32.763554, 23.127274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090435, 0.252570, -0.963343,
		-0.697572, 0.706441, 0.119730,
		0.710785, 0.661173, 0.240072,
		37.642128, 32.961906, 23.199295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952919, 33.091007, 22.640295>,  <37.144581, 32.499084, 23.031244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952919, 33.091007, 22.640295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338947, 33.160763, 22.718508>,  <37.570564, 33.202618, 22.765436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338947, 33.160763, 22.718508>,  <36.952919, 33.091007, 22.640295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338947, 33.160763, 22.718508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153350, 0.229144, -0.961237,
		-0.212437, 0.957643, 0.194397,
		0.965067, 0.174391, 0.195534,
		37.628468, 33.213081, 22.777168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164673, 33.699612, 22.274494>,  <36.952919, 33.091007, 22.640295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164673, 33.699612, 22.274494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.494686, 33.494911, 22.370358>,  <37.692696, 33.372093, 22.427876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.494686, 33.494911, 22.370358>,  <37.164673, 33.699612, 22.274494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494686, 33.494911, 22.370358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409139, 0.248429, -0.878002,
		0.389777, 0.822434, 0.414338,
		0.825033, -0.511747, 0.239658,
		37.742195, 33.341389, 22.442255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712406, 34.168785, 22.022423>,  <37.164673, 33.699612, 22.274494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712406, 34.168785, 22.022423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866798, 33.801125, 22.053871>,  <37.959435, 33.580528, 22.072741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866798, 33.801125, 22.053871>,  <37.712406, 34.168785, 22.022423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866798, 33.801125, 22.053871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580964, 0.175993, -0.794674,
		0.716588, 0.352405, 0.601923,
		0.385982, -0.919150, 0.078620,
		37.982594, 33.525379, 22.077457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410282, 34.805893, 21.794659>,  <37.712406, 34.168785, 22.022423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410282, 34.805893, 21.794659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.062019, 34.796284, 21.598137>,  <36.853062, 34.790516, 21.480223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.062019, 34.796284, 21.598137>,  <37.410282, 34.805893, 21.794659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062019, 34.796284, 21.598137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491576, 0.006611, 0.870810,
		-0.017674, 0.999690, -0.017566,
		-0.870655, -0.024026, -0.491306,
		36.800823, 34.789078, 21.450745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037289, 35.234264, 22.103882>,  <37.410282, 34.805893, 21.794659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037289, 35.234264, 22.103882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.750549, 35.039581, 21.904184>,  <36.578506, 34.922771, 21.784367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.750549, 35.039581, 21.904184>,  <37.037289, 35.234264, 22.103882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750549, 35.039581, 21.904184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589476, 0.040669, 0.806762,
		-0.372355, 0.872616, -0.316057,
		-0.716847, -0.486710, -0.499243,
		36.535496, 34.893570, 21.754412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451370, 35.551834, 22.288565>,  <37.037289, 35.234264, 22.103882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451370, 35.551834, 22.288565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.282890, 35.222248, 22.136950>,  <36.181805, 35.024494, 22.045980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.282890, 35.222248, 22.136950>,  <36.451370, 35.551834, 22.288565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282890, 35.222248, 22.136950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644512, -0.022115, 0.764274,
		-0.638121, 0.566203, -0.521744,
		-0.421196, -0.823969, -0.379036,
		36.156532, 34.975056, 22.023239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714741, 35.685635, 22.170376>,  <36.451370, 35.551834, 22.288565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714741, 35.685635, 22.170376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.788647, 35.293949, 22.203865>,  <35.832989, 35.058937, 22.223959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.788647, 35.293949, 22.203865>,  <35.714741, 35.685635, 22.170376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788647, 35.293949, 22.203865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612585, -0.048132, 0.788938,
		-0.768506, -0.197052, -0.608743,
		0.184762, -0.979211, 0.083722,
		35.844074, 35.000187, 22.228981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137295, 35.403408, 22.131496>,  <35.714741, 35.685635, 22.170376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137295, 35.403408, 22.131496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.370689, 35.132183, 22.310284>,  <35.510727, 34.969448, 22.417557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.370689, 35.132183, 22.310284>,  <35.137295, 35.403408, 22.131496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370689, 35.132183, 22.310284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607744, 0.000508, 0.794133,
		-0.538698, -0.735005, -0.411792,
		0.583483, -0.678061, 0.446969,
		35.545734, 34.928764, 22.444374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695625, 34.822021, 22.395735>,  <35.137295, 35.403408, 22.131496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695625, 34.822021, 22.395735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033562, 34.742115, 22.594261>,  <35.236324, 34.694172, 22.713377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033562, 34.742115, 22.594261>,  <34.695625, 34.822021, 22.395735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033562, 34.742115, 22.594261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506797, -0.001547, 0.862064,
		-0.171446, -0.979842, -0.102549,
		0.844845, -0.199769, 0.496315,
		35.287014, 34.682186, 22.743156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537018, 34.330441, 22.758461>,  <34.695625, 34.822021, 22.395735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537018, 34.330441, 22.758461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.844688, 34.497044, 22.952326>,  <35.029289, 34.597004, 23.068645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.844688, 34.497044, 22.952326>,  <34.537018, 34.330441, 22.758461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844688, 34.497044, 22.952326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477241, -0.129988, 0.869105,
		0.424987, -0.899793, 0.098790,
		0.769173, 0.416505, 0.484661,
		35.075439, 34.621994, 23.097725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.736088, 35.945728, 19.992569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.885067, 35.671646, 20.242937>,  <40.974457, 35.507198, 20.393158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.885067, 35.671646, 20.242937>,  <40.736088, 35.945728, 19.992569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885067, 35.671646, 20.242937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502620, 0.418037, 0.756715,
		-0.780162, -0.596439, -0.188699,
		0.372452, -0.685205, 0.625919,
		40.996803, 35.466084, 20.430714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156330, 35.573830, 20.380884>,  <40.736088, 35.945728, 19.992569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156330, 35.573830, 20.380884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.504757, 35.575130, 20.577343>,  <40.713814, 35.575912, 20.695217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.504757, 35.575130, 20.577343>,  <40.156330, 35.573830, 20.380884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504757, 35.575130, 20.577343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468181, 0.307771, 0.828302,
		-0.148465, -0.951455, 0.269614,
		0.871071, 0.003254, 0.491146,
		40.766079, 35.576107, 20.724688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933353, 35.404884, 21.112900>,  <40.156330, 35.573830, 20.380884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933353, 35.404884, 21.112900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.303741, 35.553711, 21.138632>,  <40.525974, 35.643009, 21.154070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.303741, 35.553711, 21.138632>,  <39.933353, 35.404884, 21.112900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303741, 35.553711, 21.138632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257029, 0.496298, 0.829232,
		0.276605, -0.784380, 0.555191,
		0.925973, 0.372069, 0.064330,
		40.581532, 35.665333, 21.157930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081593, 35.348438, 21.807068>,  <39.933353, 35.404884, 21.112900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081593, 35.348438, 21.807068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.370419, 35.608204, 21.711676>,  <40.543716, 35.764065, 21.654440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.370419, 35.608204, 21.711676>,  <40.081593, 35.348438, 21.807068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370419, 35.608204, 21.711676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113054, 0.450846, 0.885413,
		0.682523, -0.612367, 0.398960,
		0.722067, 0.649419, -0.238482,
		40.587040, 35.803028, 21.640131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307152, 35.578430, 22.431999>,  <40.081593, 35.348438, 21.807068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307152, 35.578430, 22.431999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.439816, 35.877888, 22.202379>,  <40.519413, 36.057564, 22.064608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.439816, 35.877888, 22.202379>,  <40.307152, 35.578430, 22.431999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439816, 35.877888, 22.202379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054465, 0.622670, 0.780586,
		0.941826, -0.227622, 0.247289,
		0.331658, 0.748645, -0.574050,
		40.539314, 36.102482, 22.030165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821198, 35.848354, 22.781183>,  <40.307152, 35.578430, 22.431999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821198, 35.848354, 22.781183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.725353, 36.149567, 22.536060>,  <40.667847, 36.330292, 22.388987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.725353, 36.149567, 22.536060>,  <40.821198, 35.848354, 22.781183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725353, 36.149567, 22.536060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000680, 0.631327, 0.775517,
		0.970868, 0.185409, -0.151787,
		-0.239615, 0.753028, -0.612809,
		40.653469, 36.375473, 22.352219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285137, 36.369034, 22.906237>,  <40.821198, 35.848354, 22.781183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285137, 36.369034, 22.906237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.957783, 36.516983, 22.730314>,  <40.761368, 36.605755, 22.624762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.957783, 36.516983, 22.730314>,  <41.285137, 36.369034, 22.906237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957783, 36.516983, 22.730314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136686, 0.618073, 0.774146,
		0.558172, 0.693668, -0.455268,
		-0.818389, 0.369878, -0.439806,
		40.712265, 36.627945, 22.598373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291595, 37.141670, 23.041088>,  <41.285137, 36.369034, 22.906237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291595, 37.141670, 23.041088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.918392, 37.052319, 22.928238>,  <40.694469, 36.998707, 22.860527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.918392, 37.052319, 22.928238>,  <41.291595, 37.141670, 23.041088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918392, 37.052319, 22.928238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355831, 0.689579, 0.630766,
		0.053649, 0.688900, -0.722868,
		-0.933009, -0.223379, -0.282127,
		40.638489, 36.985306, 22.843599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943134, 37.721725, 22.898537>,  <41.291595, 37.141670, 23.041088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943134, 37.721725, 22.898537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.655560, 37.461586, 22.996660>,  <40.483013, 37.305504, 23.055534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.655560, 37.461586, 22.996660>,  <40.943134, 37.721725, 22.898537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655560, 37.461586, 22.996660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374957, 0.660045, 0.650959,
		-0.585263, 0.376020, -0.718384,
		-0.718939, -0.650346, 0.245308,
		40.439877, 37.266483, 23.070253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428028, 38.115086, 23.182615>,  <40.943134, 37.721725, 22.898537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428028, 38.115086, 23.182615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.290680, 37.755642, 23.291861>,  <40.208271, 37.539974, 23.357409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.290680, 37.755642, 23.291861>,  <40.428028, 38.115086, 23.182615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290680, 37.755642, 23.291861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484270, 0.418557, 0.768305,
		-0.804722, 0.131555, -0.578892,
		-0.343373, -0.898612, 0.273114,
		40.187668, 37.486057, 23.373795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654716, 38.168056, 23.333908>,  <40.428028, 38.115086, 23.182615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654716, 38.168056, 23.333908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.775806, 37.846310, 23.538397>,  <39.848461, 37.653259, 23.661089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.775806, 37.846310, 23.538397>,  <39.654716, 38.168056, 23.333908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775806, 37.846310, 23.538397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493180, 0.326784, 0.806217,
		-0.815555, -0.496186, -0.297774,
		0.302726, -0.804370, 0.511220,
		39.866623, 37.605000, 23.691763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069992, 38.003044, 23.781120>,  <39.654716, 38.168056, 23.333908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069992, 38.003044, 23.781120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380985, 37.807659, 23.939579>,  <39.567581, 37.690430, 24.034655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380985, 37.807659, 23.939579>,  <39.069992, 38.003044, 23.781120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380985, 37.807659, 23.939579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329765, 0.219732, 0.918136,
		-0.535521, -0.844466, 0.009759,
		0.777478, -0.488462, 0.396146,
		39.614227, 37.661121, 24.058422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289040, 37.798817, 23.688828>,  <39.069992, 38.003044, 23.781120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289040, 37.798817, 23.688828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.986649, 38.054562, 23.632673>,  <37.805214, 38.208008, 23.598980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.986649, 38.054562, 23.632673>,  <38.289040, 37.798817, 23.688828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986649, 38.054562, 23.632673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177740, -0.005913, -0.984060,
		-0.630004, -0.768881, -0.109170,
		-0.755979, 0.639365, -0.140386,
		37.759853, 38.246372, 23.590557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863667, 37.476612, 23.124647>,  <38.289040, 37.798817, 23.688828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863667, 37.476612, 23.124647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.749046, 37.858822, 23.152523>,  <37.680275, 38.088150, 23.169249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.749046, 37.858822, 23.152523>,  <37.863667, 37.476612, 23.124647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749046, 37.858822, 23.152523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018987, 0.078389, -0.996742,
		-0.957876, -0.284296, -0.040605,
		-0.286553, 0.955527, 0.069689,
		37.663082, 38.145481, 23.173429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269627, 37.497120, 22.723841>,  <37.863667, 37.476612, 23.124647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269627, 37.497120, 22.723841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.439362, 37.857639, 22.758717>,  <37.541203, 38.073952, 22.779642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.439362, 37.857639, 22.758717>,  <37.269627, 37.497120, 22.723841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439362, 37.857639, 22.758717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235444, -0.016842, -0.971742,
		-0.874359, 0.432875, -0.219351,
		0.424337, 0.901297, 0.087192,
		37.566662, 38.128029, 22.784874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151268, 37.853794, 22.049364>,  <37.269627, 37.497120, 22.723841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151268, 37.853794, 22.049364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.420952, 38.092400, 22.223545>,  <37.582760, 38.235561, 22.328053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.420952, 38.092400, 22.223545>,  <37.151268, 37.853794, 22.049364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420952, 38.092400, 22.223545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380482, 0.224801, -0.897050,
		-0.632993, 0.770477, -0.075401,
		0.674206, 0.596515, 0.435450,
		37.623215, 38.271355, 22.354179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173943, 38.483513, 21.661730>,  <37.151268, 37.853794, 22.049364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173943, 38.483513, 21.661730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527363, 38.440262, 21.844006>,  <37.739414, 38.414310, 21.953371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527363, 38.440262, 21.844006>,  <37.173943, 38.483513, 21.661730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527363, 38.440262, 21.844006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466102, 0.107948, -0.878121,
		0.045759, 0.988259, 0.145776,
		0.883547, -0.108129, 0.455690,
		37.792427, 38.407822, 21.980713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557163, 39.084633, 21.439514>,  <37.173943, 38.483513, 21.661730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557163, 39.084633, 21.439514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.835453, 38.826714, 21.566130>,  <38.002426, 38.671963, 21.642099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.835453, 38.826714, 21.566130>,  <37.557163, 39.084633, 21.439514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835453, 38.826714, 21.566130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528865, 0.161623, -0.833175,
		0.486072, 0.747068, 0.453458,
		0.695727, -0.644801, 0.316537,
		38.044170, 38.633274, 21.661091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197449, 39.357155, 21.260445>,  <37.557163, 39.084633, 21.439514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197449, 39.357155, 21.260445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.304562, 38.983227, 21.353750>,  <38.368828, 38.758869, 21.409733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.304562, 38.983227, 21.353750>,  <38.197449, 39.357155, 21.260445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304562, 38.983227, 21.353750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715095, 0.030579, -0.698358,
		0.645704, 0.353811, 0.676671,
		0.267779, -0.934817, 0.233263,
		38.384895, 38.702782, 21.423729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960968, 39.321205, 21.232870>,  <38.197449, 39.357155, 21.260445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960968, 39.321205, 21.232870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.815216, 38.953838, 21.171249>,  <38.727764, 38.733418, 21.134277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.815216, 38.953838, 21.171249>,  <38.960968, 39.321205, 21.232870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815216, 38.953838, 21.171249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637638, -0.125497, -0.760045,
		0.678707, -0.375175, 0.631348,
		-0.364383, -0.918419, -0.154050,
		38.705902, 38.678314, 21.125034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490726, 38.936325, 20.986814>,  <38.960968, 39.321205, 21.232870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490726, 38.936325, 20.986814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.188133, 38.692284, 20.892584>,  <39.006577, 38.545856, 20.836046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.188133, 38.692284, 20.892584>,  <39.490726, 38.936325, 20.986814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188133, 38.692284, 20.892584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552768, -0.403953, -0.728882,
		0.349535, -0.681608, 0.642834,
		-0.756487, -0.610108, -0.235576,
		38.961185, 38.509251, 20.821911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761154, 38.282875, 20.939264>,  <39.490726, 38.936325, 20.986814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761154, 38.282875, 20.939264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.435333, 38.293385, 20.707468>,  <39.239841, 38.299690, 20.568390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.435333, 38.293385, 20.707468>,  <39.761154, 38.282875, 20.939264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435333, 38.293385, 20.707468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505531, -0.457787, -0.731347,
		-0.284496, -0.888673, 0.359613,
		-0.814555, 0.026270, -0.579491,
		39.190968, 38.301266, 20.533621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888172, 37.642464, 20.582266>,  <39.761154, 38.282875, 20.939264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888172, 37.642464, 20.582266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.599541, 37.841068, 20.389267>,  <39.426361, 37.960232, 20.273468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.599541, 37.841068, 20.389267>,  <39.888172, 37.642464, 20.582266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599541, 37.841068, 20.389267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270509, -0.439327, -0.856631,
		-0.637301, -0.748645, 0.182697,
		-0.721577, 0.496510, -0.482499,
		39.383068, 37.990021, 20.244518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375599, 37.191151, 20.279737>,  <39.888172, 37.642464, 20.582266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375599, 37.191151, 20.279737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.410900, 37.526321, 20.064299>,  <39.432079, 37.727425, 19.935036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.410900, 37.526321, 20.064299>,  <39.375599, 37.191151, 20.279737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410900, 37.526321, 20.064299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199279, -0.544628, -0.814658,
		-0.975960, -0.035435, -0.215048,
		0.088254, 0.837929, -0.538597,
		39.437378, 37.777699, 19.902719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159481, 37.015736, 19.556974>,  <39.375599, 37.191151, 20.279737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159481, 37.015736, 19.556974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.305321, 37.379719, 19.477934>,  <39.392826, 37.598106, 19.430510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.305321, 37.379719, 19.477934>,  <39.159481, 37.015736, 19.556974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305321, 37.379719, 19.477934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048552, -0.193345, -0.979929,
		-0.929897, 0.366878, -0.026314,
		0.364602, 0.909955, -0.197603,
		39.414700, 37.652706, 19.418653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366055, 37.063133, 19.775202>,  <39.159481, 37.015736, 19.556974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366055, 37.063133, 19.775202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288486, 36.756737, 19.530041>,  <38.241947, 36.572899, 19.382944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288486, 36.756737, 19.530041>,  <38.366055, 37.063133, 19.775202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288486, 36.756737, 19.530041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558392, -0.427495, 0.710947,
		-0.806595, 0.480103, -0.344828,
		-0.193916, -0.765995, -0.612901,
		38.230312, 36.526939, 19.346170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569427, 36.940365, 19.828329>,  <38.366055, 37.063133, 19.775202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569427, 36.940365, 19.828329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.759167, 36.619286, 19.683743>,  <37.873013, 36.426636, 19.596991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.759167, 36.619286, 19.683743>,  <37.569427, 36.940365, 19.828329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759167, 36.619286, 19.683743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565444, -0.592516, 0.573758,
		-0.674733, -0.067774, -0.734944,
		0.474351, -0.802703, -0.361468,
		37.901474, 36.378475, 19.575302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002205, 36.602795, 19.568729>,  <37.569427, 36.940365, 19.828329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002205, 36.602795, 19.568729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.312138, 36.355560, 19.621805>,  <37.498096, 36.207218, 19.653650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.312138, 36.355560, 19.621805>,  <37.002205, 36.602795, 19.568729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312138, 36.355560, 19.621805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541914, -0.541331, 0.642876,
		-0.325524, -0.570027, -0.754389,
		0.774831, -0.618086, 0.132690,
		37.544586, 36.170135, 19.661612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742153, 35.923264, 19.619688>,  <37.002205, 36.602795, 19.568729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742153, 35.923264, 19.619688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.106155, 35.899384, 19.783802>,  <37.324554, 35.885056, 19.882271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.106155, 35.899384, 19.783802>,  <36.742153, 35.923264, 19.619688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106155, 35.899384, 19.783802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343069, -0.664099, 0.664287,
		0.232813, -0.745258, -0.624811,
		0.910001, -0.059699, 0.410286,
		37.379154, 35.881474, 19.906887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968555, 35.225517, 19.607798>,  <36.742153, 35.923264, 19.619688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968555, 35.225517, 19.607798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191666, 35.385765, 19.898558>,  <37.325531, 35.481915, 20.073013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191666, 35.385765, 19.898558>,  <36.968555, 35.225517, 19.607798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191666, 35.385765, 19.898558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218147, -0.774244, 0.594103,
		0.800809, -0.489949, -0.344462,
		0.557778, 0.400620, 0.726902,
		37.358997, 35.505951, 20.116629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177914, 34.611958, 19.854053>,  <36.968555, 35.225517, 19.607798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177914, 34.611958, 19.854053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.216122, 34.892784, 20.136322>,  <37.239044, 35.061279, 20.305683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.216122, 34.892784, 20.136322>,  <37.177914, 34.611958, 19.854053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216122, 34.892784, 20.136322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464755, -0.595449, 0.655319,
		0.880272, -0.390559, 0.269415,
		0.095518, 0.702071, 0.705672,
		37.244778, 35.103405, 20.348024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392330, 34.252655, 20.473383>,  <37.177914, 34.611958, 19.854053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392330, 34.252655, 20.473383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.242935, 34.595394, 20.615547>,  <37.153297, 34.801037, 20.700846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.242935, 34.595394, 20.615547>,  <37.392330, 34.252655, 20.473383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242935, 34.595394, 20.615547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482717, -0.506697, 0.714313,
		0.792143, 0.095226, 0.602861,
		-0.373489, 0.856849, 0.355409,
		37.130890, 34.852448, 20.722170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552273, 34.296806, 21.260595>,  <37.392330, 34.252655, 20.473383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552273, 34.296806, 21.260595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.237759, 34.519871, 21.154192>,  <37.049049, 34.653709, 21.090349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.237759, 34.519871, 21.154192>,  <37.552273, 34.296806, 21.260595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237759, 34.519871, 21.154192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452790, -0.227145, 0.862198,
		0.420394, 0.798384, 0.431106,
		-0.786289, 0.557663, -0.266011,
		37.001873, 34.687168, 21.074389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231346, 34.120159, 21.474546>,  <37.552273, 34.296806, 21.260595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231346, 34.120159, 21.474546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.182617, 33.732861, 21.561874>,  <38.153378, 33.500481, 21.614271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.182617, 33.732861, 21.561874>,  <38.231346, 34.120159, 21.474546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182617, 33.732861, 21.561874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488917, -0.249964, -0.835750,
		0.863782, 0.004924, 0.503842,
		-0.121827, -0.968243, 0.218322,
		38.146069, 33.442387, 21.627371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870529, 33.875736, 21.454416>,  <38.231346, 34.120159, 21.474546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870529, 33.875736, 21.454416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.637875, 33.560059, 21.375546>,  <38.498283, 33.370651, 21.328222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.637875, 33.560059, 21.375546>,  <38.870529, 33.875736, 21.454416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637875, 33.560059, 21.375546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530567, -0.184315, -0.827361,
		0.616602, -0.585840, 0.525922,
		-0.581636, -0.789190, -0.197178,
		38.463383, 33.323303, 21.316393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360489, 33.375038, 21.184500>,  <38.870529, 33.875736, 21.454416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360489, 33.375038, 21.184500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.997631, 33.255196, 21.066299>,  <38.779915, 33.183289, 20.995378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.997631, 33.255196, 21.066299>,  <39.360489, 33.375038, 21.184500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997631, 33.255196, 21.066299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360868, -0.192627, -0.912507,
		0.216474, -0.934414, 0.282860,
		-0.907146, -0.299609, -0.295501,
		38.725487, 33.165314, 20.977650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551559, 32.725540, 20.904953>,  <39.360489, 33.375038, 21.184500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551559, 32.725540, 20.904953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.195469, 32.773754, 20.729239>,  <38.981815, 32.802681, 20.623810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.195469, 32.773754, 20.729239>,  <39.551559, 32.725540, 20.904953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195469, 32.773754, 20.729239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415370, -0.181085, -0.891446,
		-0.187022, -0.976050, 0.111128,
		-0.890220, 0.120561, -0.439288,
		38.928402, 32.809914, 20.597452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567223, 32.286022, 20.352686>,  <39.551559, 32.725540, 20.904953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567223, 32.286022, 20.352686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.261650, 32.532078, 20.274700>,  <39.078308, 32.679710, 20.227909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.261650, 32.532078, 20.274700>,  <39.567223, 32.286022, 20.352686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261650, 32.532078, 20.274700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246391, -0.001186, -0.969170,
		-0.596410, -0.788414, -0.150660,
		-0.763929, 0.615143, -0.194965,
		39.032471, 32.716621, 20.216211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245369, 32.028175, 19.642601>,  <39.567223, 32.286022, 20.352686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245369, 32.028175, 19.642601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158089, 32.415642, 19.690052>,  <39.105721, 32.648121, 19.718523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158089, 32.415642, 19.690052>,  <39.245369, 32.028175, 19.642601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158089, 32.415642, 19.690052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239106, 0.170918, -0.955832,
		-0.946159, -0.180197, -0.268908,
		-0.218199, 0.968667, 0.118630,
		39.092628, 32.706242, 19.725641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786995, 32.165638, 19.111025>,  <39.245369, 32.028175, 19.642601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786995, 32.165638, 19.111025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.933609, 32.524837, 19.208391>,  <39.021580, 32.740356, 19.266811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.933609, 32.524837, 19.208391>,  <38.786995, 32.165638, 19.111025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933609, 32.524837, 19.208391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211823, 0.174211, -0.961656,
		-0.905969, 0.404045, -0.126361,
		0.366539, 0.897997, 0.243416,
		39.043571, 32.794235, 19.281416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519939, 32.607529, 18.550055>,  <38.786995, 32.165638, 19.111025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519939, 32.607529, 18.550055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.838402, 32.765030, 18.733833>,  <39.029480, 32.859531, 18.844101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.838402, 32.765030, 18.733833>,  <38.519939, 32.607529, 18.550055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838402, 32.765030, 18.733833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345152, 0.328133, -0.879317,
		-0.496991, 0.858655, 0.125342,
		0.796159, 0.393751, 0.459446,
		39.077251, 32.883156, 18.871668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487747, 33.347420, 18.426357>,  <38.519939, 32.607529, 18.550055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487747, 33.347420, 18.426357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.864594, 33.234940, 18.499399>,  <39.090702, 33.167450, 18.543224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.864594, 33.234940, 18.499399>,  <38.487747, 33.347420, 18.426357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864594, 33.234940, 18.499399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298066, 0.453013, -0.840200,
		0.153541, 0.845994, 0.510607,
		0.942116, -0.281199, 0.182606,
		39.147228, 33.150581, 18.554180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.799423, 36.045956, 34.559845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019176, 35.718941, 34.490768>,  <36.151028, 35.522732, 34.449322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019176, 35.718941, 34.490768>,  <35.799423, 36.045956, 34.559845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019176, 35.718941, 34.490768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072614, 0.252603, -0.964841,
		0.832412, 0.517524, 0.198139,
		0.549379, -0.817533, -0.172690,
		36.183990, 35.473682, 34.438961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256416, 36.105343, 33.966522>,  <35.799423, 36.045956, 34.559845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256416, 36.105343, 33.966522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234386, 35.707474, 34.001369>,  <36.221169, 35.468750, 34.022278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234386, 35.707474, 34.001369>,  <36.256416, 36.105343, 33.966522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234386, 35.707474, 34.001369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007820, -0.086820, -0.996193,
		0.998452, -0.055543, -0.002997,
		-0.055071, -0.994675, 0.087120,
		36.217865, 35.409073, 34.027504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648434, 35.793274, 33.454750>,  <36.256416, 36.105343, 33.966522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648434, 35.793274, 33.454750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427597, 35.467339, 33.525448>,  <36.295097, 35.271778, 33.567867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427597, 35.467339, 33.525448>,  <36.648434, 35.793274, 33.454750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427597, 35.467339, 33.525448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097622, -0.273691, -0.956851,
		0.828050, -0.511013, 0.230647,
		-0.552090, -0.814837, 0.176744,
		36.261971, 35.222889, 33.578472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070831, 35.351471, 33.167175>,  <36.648434, 35.793274, 33.454750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070831, 35.351471, 33.167175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.692406, 35.221882, 33.166061>,  <36.465351, 35.144131, 33.165394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.692406, 35.221882, 33.166061>,  <37.070831, 35.351471, 33.167175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692406, 35.221882, 33.166061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029923, -0.078807, -0.996441,
		0.322598, -0.942779, 0.084250,
		-0.946063, -0.323971, -0.002788,
		36.408588, 35.124691, 33.165226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068626, 34.811352, 32.697739>,  <37.070831, 35.351471, 33.167175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068626, 34.811352, 32.697739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.676136, 34.816917, 32.774681>,  <36.440643, 34.820255, 32.820847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.676136, 34.816917, 32.774681>,  <37.068626, 34.811352, 32.697739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676136, 34.816917, 32.774681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170524, -0.528515, -0.831621,
		0.090096, -0.848810, 0.520965,
		-0.981226, 0.013912, 0.192360,
		36.381767, 34.821091, 32.832390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836510, 34.193947, 32.484886>,  <37.068626, 34.811352, 32.697739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836510, 34.193947, 32.484886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506725, 34.418671, 32.457634>,  <36.308857, 34.553505, 32.441280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506725, 34.418671, 32.457634>,  <36.836510, 34.193947, 32.484886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506725, 34.418671, 32.457634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195052, -0.395108, -0.897688,
		-0.531249, -0.726815, 0.435331,
		-0.824456, 0.561808, -0.068134,
		36.259388, 34.587212, 32.437195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291546, 33.671783, 32.180702>,  <36.836510, 34.193947, 32.484886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291546, 33.671783, 32.180702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166355, 34.047913, 32.127270>,  <36.091240, 34.273590, 32.095211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166355, 34.047913, 32.127270>,  <36.291546, 33.671783, 32.180702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166355, 34.047913, 32.127270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152424, -0.188556, -0.970162,
		-0.937449, -0.283280, 0.202341,
		-0.312980, 0.940318, -0.133583,
		36.072460, 34.330009, 32.087196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800831, 33.426926, 31.764111>,  <36.291546, 33.671783, 32.180702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800831, 33.426926, 31.764111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.876446, 33.816608, 31.714817>,  <35.921814, 34.050419, 31.685242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.876446, 33.816608, 31.714817>,  <35.800831, 33.426926, 31.764111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876446, 33.816608, 31.714817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296073, -0.063111, -0.953078,
		-0.936273, 0.216649, 0.276506,
		0.189033, 0.974207, -0.123233,
		35.933155, 34.108871, 31.677847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261456, 33.615921, 31.272654>,  <35.800831, 33.426926, 31.764111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261456, 33.615921, 31.272654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.561981, 33.879448, 31.257204>,  <35.742294, 34.037563, 31.247934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.561981, 33.879448, 31.257204>,  <35.261456, 33.615921, 31.272654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561981, 33.879448, 31.257204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005369, -0.064627, -0.997895,
		-0.659926, 0.749523, -0.052092,
		0.751311, 0.658817, -0.038624,
		35.787376, 34.077091, 31.245617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049046, 34.109787, 30.865549>,  <35.261456, 33.615921, 31.272654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049046, 34.109787, 30.865549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447075, 34.142891, 30.843693>,  <35.685890, 34.162754, 30.830578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447075, 34.142891, 30.843693>,  <35.049046, 34.109787, 30.865549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447075, 34.142891, 30.843693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031200, -0.261776, -0.964624,
		-0.094132, 0.961574, -0.257904,
		0.995071, 0.082755, -0.054642,
		35.745598, 34.167717, 30.827301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171471, 34.465977, 30.191851>,  <35.049046, 34.109787, 30.865549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171471, 34.465977, 30.191851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.521935, 34.298847, 30.287987>,  <35.732212, 34.198570, 30.345669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.521935, 34.298847, 30.287987>,  <35.171471, 34.465977, 30.191851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521935, 34.298847, 30.287987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191655, -0.155531, -0.969060,
		0.442280, 0.895115, -0.056191,
		0.876160, -0.417827, 0.240342,
		35.784782, 34.173500, 30.360090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605686, 34.728699, 29.716311>,  <35.171471, 34.465977, 30.191851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605686, 34.728699, 29.716311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772247, 34.383312, 29.830175>,  <35.872185, 34.176079, 29.898495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772247, 34.383312, 29.830175>,  <35.605686, 34.728699, 29.716311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772247, 34.383312, 29.830175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113341, -0.261357, -0.958565,
		0.902086, 0.431417, -0.010965,
		0.416407, -0.863465, 0.284664,
		35.897171, 34.124271, 29.915575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369194, 35.450623, 29.372904>,  <35.605686, 34.728699, 29.716311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369194, 35.450623, 29.372904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992458, 35.415516, 29.243139>,  <34.766418, 35.394451, 29.165281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992458, 35.415516, 29.243139>,  <35.369194, 35.450623, 29.372904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992458, 35.415516, 29.243139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333070, 0.114999, 0.935863,
		-0.044827, 0.989481, -0.137541,
		-0.941836, -0.087763, -0.324411,
		34.709908, 35.389187, 29.145817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005325, 36.074112, 29.697521>,  <35.369194, 35.450623, 29.372904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005325, 36.074112, 29.697521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758625, 35.767918, 29.624142>,  <34.610607, 35.584202, 29.580114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758625, 35.767918, 29.624142>,  <35.005325, 36.074112, 29.697521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758625, 35.767918, 29.624142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454208, 0.155736, 0.877178,
		-0.642898, 0.624322, -0.443739,
		-0.616748, -0.765486, -0.183449,
		34.573601, 35.538273, 29.569107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401493, 36.346783, 29.919165>,  <35.005325, 36.074112, 29.697521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401493, 36.346783, 29.919165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285511, 35.966522, 29.874989>,  <34.215923, 35.738365, 29.848482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285511, 35.966522, 29.874989>,  <34.401493, 36.346783, 29.919165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285511, 35.966522, 29.874989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718672, 0.140074, 0.681094,
		-0.632010, 0.276857, -0.723819,
		-0.289953, -0.950647, -0.110441,
		34.198524, 35.681328, 29.841856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693527, 36.375282, 29.880074>,  <34.401493, 36.346783, 29.919165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693527, 36.375282, 29.880074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784473, 36.004753, 30.000231>,  <33.839039, 35.782436, 30.072325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784473, 36.004753, 30.000231>,  <33.693527, 36.375282, 29.880074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784473, 36.004753, 30.000231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768827, 0.018574, 0.639187,
		-0.597671, -0.376278, -0.707958,
		0.227362, -0.926321, 0.300393,
		33.852680, 35.726856, 30.090349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089764, 35.911018, 29.822226>,  <33.693527, 36.375282, 29.880074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089764, 35.911018, 29.822226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344387, 35.742954, 30.080919>,  <33.497162, 35.642117, 30.236135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344387, 35.742954, 30.080919>,  <33.089764, 35.911018, 29.822226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344387, 35.742954, 30.080919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712579, 0.000347, 0.701592,
		-0.295004, -0.907451, -0.299175,
		0.636557, -0.420158, 0.646733,
		33.535355, 35.616909, 30.274939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796829, 35.337597, 30.216618>,  <33.089764, 35.911018, 29.822226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796829, 35.337597, 30.216618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.101273, 35.458275, 30.446293>,  <33.283939, 35.530682, 30.584099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.101273, 35.458275, 30.446293>,  <32.796829, 35.337597, 30.216618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101273, 35.458275, 30.446293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580313, -0.078714, 0.810581,
		0.289746, -0.950149, 0.115169,
		0.761107, 0.301697, 0.574190,
		33.329605, 35.548782, 30.618549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735264, 34.982784, 30.777872>,  <32.796829, 35.337597, 30.216618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735264, 34.982784, 30.777872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009869, 35.242107, 30.909565>,  <33.174633, 35.397701, 30.988581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009869, 35.242107, 30.909565>,  <32.735264, 34.982784, 30.777872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009869, 35.242107, 30.909565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349310, -0.103058, 0.931322,
		0.637716, -0.754369, 0.155710,
		0.686513, 0.648310, 0.329231,
		33.215824, 35.436600, 31.008335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927170, 34.630531, 31.400124>,  <32.735264, 34.982784, 30.777872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927170, 34.630531, 31.400124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032539, 35.016361, 31.405781>,  <33.095760, 35.247860, 31.409174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032539, 35.016361, 31.405781>,  <32.927170, 34.630531, 31.400124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032539, 35.016361, 31.405781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164125, 0.030366, 0.985972,
		0.950617, -0.262045, 0.166310,
		0.263419, 0.964578, 0.014142,
		33.111565, 35.305733, 31.410023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407639, 34.780041, 31.962263>,  <32.927170, 34.630531, 31.400124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407639, 34.780041, 31.962263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246056, 35.140438, 31.898970>,  <33.149105, 35.356674, 31.860994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246056, 35.140438, 31.898970>,  <33.407639, 34.780041, 31.962263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246056, 35.140438, 31.898970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121275, 0.118699, 0.985496,
		0.906703, 0.417288, 0.061318,
		-0.403958, 0.900989, -0.158232,
		33.124866, 35.410736, 31.851500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545132, 35.042812, 32.601482>,  <33.407639, 34.780041, 31.962263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545132, 35.042812, 32.601482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270470, 35.289097, 32.446869>,  <33.105671, 35.436867, 32.354099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270470, 35.289097, 32.446869>,  <33.545132, 35.042812, 32.601482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270470, 35.289097, 32.446869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378877, 0.150698, 0.913095,
		0.620450, 0.773430, 0.129800,
		-0.686655, 0.615708, -0.386535,
		33.064472, 35.473808, 32.330910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407990, 35.451923, 33.115402>,  <33.545132, 35.042812, 32.601482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407990, 35.451923, 33.115402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089783, 35.566273, 32.901699>,  <32.898857, 35.634884, 32.773476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089783, 35.566273, 32.901699>,  <33.407990, 35.451923, 33.115402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089783, 35.566273, 32.901699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411335, 0.392644, 0.822578,
		0.444925, 0.874133, -0.194765,
		-0.795516, 0.285872, -0.534258,
		32.851128, 35.652035, 32.741421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337761, 36.288074, 33.303963>,  <33.407990, 35.451923, 33.115402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337761, 36.288074, 33.303963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.002193, 36.116371, 33.170128>,  <32.800854, 36.013351, 33.089825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.002193, 36.116371, 33.170128>,  <33.337761, 36.288074, 33.303963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002193, 36.116371, 33.170128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508079, 0.397301, 0.764204,
		-0.195107, 0.811105, -0.551400,
		-0.838921, -0.429256, -0.334589,
		32.750519, 35.987595, 33.069752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980053, 36.887852, 33.387928>,  <33.337761, 36.288074, 33.303963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980053, 36.887852, 33.387928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743317, 36.571014, 33.328182>,  <32.601276, 36.380913, 33.292336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743317, 36.571014, 33.328182>,  <32.980053, 36.887852, 33.387928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743317, 36.571014, 33.328182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633774, 0.342781, 0.693420,
		-0.498055, 0.505058, -0.704881,
		-0.591838, -0.792097, -0.149369,
		32.565765, 36.333385, 33.283371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339363, 37.168701, 33.466896>,  <32.980053, 36.887852, 33.387928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339363, 37.168701, 33.466896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332397, 36.778008, 33.552387>,  <32.328217, 36.543591, 33.603683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332397, 36.778008, 33.552387>,  <32.339363, 37.168701, 33.466896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332397, 36.778008, 33.552387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383194, 0.203959, 0.900868,
		-0.923504, -0.066208, -0.377833,
		-0.017418, -0.976738, 0.213727,
		32.327171, 36.484985, 33.616505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148422, 37.295242, 32.720116>,  <32.339363, 37.168701, 33.466896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148422, 37.295242, 32.720116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129391, 37.690338, 32.779583>,  <32.117970, 37.927395, 32.815266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129391, 37.690338, 32.779583>,  <32.148422, 37.295242, 32.720116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129391, 37.690338, 32.779583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569537, 0.149103, -0.808329,
		-0.820587, 0.046213, -0.569650,
		-0.047582, 0.987741, 0.148672,
		32.115116, 37.986660, 32.824184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767902, 37.498154, 32.166458>,  <32.148422, 37.295242, 32.720116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767902, 37.498154, 32.166458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.038155, 37.753693, 32.313641>,  <32.200306, 37.907017, 32.401951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.038155, 37.753693, 32.313641>,  <31.767902, 37.498154, 32.166458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038155, 37.753693, 32.313641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437604, 0.054157, -0.897535,
		-0.593320, 0.767421, -0.242974,
		0.675629, 0.638852, 0.367959,
		32.240845, 37.945347, 32.424026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721060, 38.030479, 31.721088>,  <31.767902, 37.498154, 32.166458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721060, 38.030479, 31.721088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.082451, 38.037563, 31.892395>,  <32.299286, 38.041813, 31.995178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.082451, 38.037563, 31.892395>,  <31.721060, 38.030479, 31.721088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082451, 38.037563, 31.892395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423713, 0.114040, -0.898589,
		-0.064754, 0.993318, 0.095528,
		0.903479, 0.017710, 0.428266,
		32.353493, 38.042877, 32.020874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053707, 38.665390, 31.573362>,  <31.721060, 38.030479, 31.721088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053707, 38.665390, 31.573362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.341652, 38.402157, 31.661663>,  <32.514420, 38.244217, 31.714643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.341652, 38.402157, 31.661663>,  <32.053707, 38.665390, 31.573362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341652, 38.402157, 31.661663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496820, 0.266396, -0.825955,
		0.484738, 0.704246, 0.518716,
		0.719860, -0.658081, 0.220751,
		32.557610, 38.204731, 31.727888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632938, 39.157841, 31.663692>,  <32.053707, 38.665390, 31.573362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632938, 39.157841, 31.663692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.780876, 38.791016, 31.604084>,  <32.869637, 38.570919, 31.568319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.780876, 38.791016, 31.604084>,  <32.632938, 39.157841, 31.663692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780876, 38.791016, 31.604084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596141, 0.357257, -0.719016,
		0.712624, 0.177083, 0.678829,
		0.369842, -0.917066, -0.149023,
		32.891830, 38.515896, 31.559378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364391, 39.201969, 31.486734>,  <32.632938, 39.157841, 31.663692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364391, 39.201969, 31.486734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265015, 38.842072, 31.343218>,  <33.205391, 38.626133, 31.257109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265015, 38.842072, 31.343218>,  <33.364391, 39.201969, 31.486734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265015, 38.842072, 31.343218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672336, 0.106473, -0.732548,
		0.697311, -0.423221, 0.578482,
		-0.248437, -0.899749, -0.358792,
		33.190483, 38.572147, 31.235580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010769, 38.969475, 31.281986>,  <33.364391, 39.201969, 31.486734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010769, 38.969475, 31.281986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737465, 38.747643, 31.091997>,  <33.573483, 38.614544, 30.978004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737465, 38.747643, 31.091997>,  <34.010769, 38.969475, 31.281986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737465, 38.747643, 31.091997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632022, -0.123439, -0.765056,
		0.365652, -0.822927, 0.434845,
		-0.683262, -0.554576, -0.474972,
		33.532486, 38.581268, 30.949505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328823, 38.374901, 30.973080>,  <34.010769, 38.969475, 31.281986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328823, 38.374901, 30.973080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978935, 38.387573, 30.779642>,  <33.769001, 38.395176, 30.663580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978935, 38.387573, 30.779642>,  <34.328823, 38.374901, 30.973080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978935, 38.387573, 30.779642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460435, -0.257023, -0.849670,
		-0.151211, -0.965886, 0.210237,
		-0.874720, 0.031679, -0.483593,
		33.716518, 38.397079, 30.634563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255325, 37.743801, 30.524939>,  <34.328823, 38.374901, 30.973080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255325, 37.743801, 30.524939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.012951, 38.012718, 30.354830>,  <33.867527, 38.174068, 30.252766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.012951, 38.012718, 30.354830>,  <34.255325, 37.743801, 30.524939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012951, 38.012718, 30.354830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457345, -0.143007, -0.877715,
		-0.650901, -0.726339, -0.220817,
		-0.605940, 0.672295, -0.425271,
		33.831169, 38.214405, 30.227249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040421, 37.472328, 29.846828>,  <34.255325, 37.743801, 30.524939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040421, 37.472328, 29.846828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948883, 37.861610, 29.837849>,  <33.893963, 38.095181, 29.832460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948883, 37.861610, 29.837849>,  <34.040421, 37.472328, 29.846828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948883, 37.861610, 29.837849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440376, 0.082930, -0.893975,
		-0.868159, -0.214465, -0.447554,
		-0.228842, 0.973205, -0.022449,
		33.880230, 38.153572, 29.831114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736149, 37.565777, 29.193403>,  <34.040421, 37.472328, 29.846828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736149, 37.565777, 29.193403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846516, 37.934746, 29.301483>,  <33.912735, 38.156128, 29.366331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846516, 37.934746, 29.301483>,  <33.736149, 37.565777, 29.193403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846516, 37.934746, 29.301483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446856, 0.125784, -0.885719,
		-0.850994, 0.365123, -0.377484,
		0.275915, 0.922423, 0.270199,
		33.929291, 38.211472, 29.382544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644394, 38.043892, 28.591679>,  <33.736149, 37.565777, 29.193403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644394, 38.043892, 28.591679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915398, 38.219692, 28.827581>,  <34.077999, 38.325172, 28.969124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915398, 38.219692, 28.827581>,  <33.644394, 38.043892, 28.591679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915398, 38.219692, 28.827581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486669, 0.333335, -0.807491,
		-0.551482, 0.834101, 0.011945,
		0.677510, 0.439504, 0.589759,
		34.118652, 38.351543, 29.004509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788799, 38.564640, 28.246103>,  <33.644394, 38.043892, 28.591679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788799, 38.564640, 28.246103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100300, 38.560699, 28.497005>,  <34.287201, 38.558334, 28.647547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100300, 38.560699, 28.497005>,  <33.788799, 38.564640, 28.246103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100300, 38.560699, 28.497005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610961, 0.238839, -0.754773,
		-0.142375, 0.971009, 0.192017,
		0.778753, -0.009854, 0.627254,
		34.333927, 38.557743, 28.685181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177238, 39.190865, 28.113579>,  <33.788799, 38.564640, 28.246103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177238, 39.190865, 28.113579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405891, 38.915611, 28.292336>,  <34.543083, 38.750458, 28.399590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405891, 38.915611, 28.292336>,  <34.177238, 39.190865, 28.113579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405891, 38.915611, 28.292336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727226, 0.172674, -0.664324,
		0.379977, 0.704738, 0.599134,
		0.571629, -0.688133, 0.446892,
		34.577381, 38.709171, 28.426403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788799, 39.535786, 28.131655>,  <34.177238, 39.190865, 28.113579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788799, 39.535786, 28.131655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865608, 39.144779, 28.166489>,  <34.911694, 38.910175, 28.187389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865608, 39.144779, 28.166489>,  <34.788799, 39.535786, 28.131655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865608, 39.144779, 28.166489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686352, 0.070342, -0.723860,
		0.701461, 0.198772, 0.684429,
		0.192027, -0.977518, 0.087086,
		34.923218, 38.851524, 28.192614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508957, 39.459343, 28.176460>,  <34.788799, 39.535786, 28.131655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508957, 39.459343, 28.176460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387814, 39.083763, 28.111164>,  <35.315128, 38.858414, 28.071987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387814, 39.083763, 28.111164>,  <35.508957, 39.459343, 28.176460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387814, 39.083763, 28.111164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766549, -0.138224, -0.627133,
		0.566283, -0.315066, 0.761614,
		-0.302862, -0.938950, -0.163240,
		35.296955, 38.802078, 28.062193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066685, 38.945698, 28.286543>,  <35.508957, 39.459343, 28.176460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066685, 38.945698, 28.286543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831913, 38.725956, 28.048643>,  <35.691048, 38.594112, 27.905903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831913, 38.725956, 28.048643>,  <36.066685, 38.945698, 28.286543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831913, 38.725956, 28.048643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789257, -0.224437, -0.571578,
		0.180513, -0.804886, 0.565308,
		-0.586931, -0.549351, -0.594748,
		35.655834, 38.561150, 27.870218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487972, 38.379467, 28.087130>,  <36.066685, 38.945698, 28.286543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487972, 38.379467, 28.087130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170929, 38.377762, 27.843243>,  <35.980701, 38.376740, 27.696911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170929, 38.377762, 27.843243>,  <36.487972, 38.379467, 28.087130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170929, 38.377762, 27.843243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570131, -0.359676, -0.738637,
		-0.216154, -0.933067, 0.287511,
		-0.792609, -0.004260, -0.609716,
		35.933147, 38.376484, 27.660328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568325, 37.751549, 27.668293>,  <36.487972, 38.379467, 28.087130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568325, 37.751549, 27.668293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320503, 37.972195, 27.444912>,  <36.171810, 38.104580, 27.310883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320503, 37.972195, 27.444912>,  <36.568325, 37.751549, 27.668293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320503, 37.972195, 27.444912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583124, -0.152825, -0.797879,
		-0.525466, -0.819980, -0.226975,
		-0.619558, 0.551613, -0.558454,
		36.134636, 38.137680, 27.277376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417408, 37.450138, 26.960442>,  <36.568325, 37.751549, 27.668293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417408, 37.450138, 26.960442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.331196, 37.837814, 26.912748>,  <36.279469, 38.070419, 26.884132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.331196, 37.837814, 26.912748>,  <36.417408, 37.450138, 26.960442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331196, 37.837814, 26.912748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379311, -0.029422, -0.924801,
		-0.899817, -0.244547, -0.361284,
		-0.215527, 0.969191, -0.119233,
		36.266537, 38.128571, 26.876978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949394, 37.553814, 26.402828>,  <36.417408, 37.450138, 26.960442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949394, 37.553814, 26.402828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129852, 37.906563, 26.457630>,  <36.238129, 38.118214, 26.490511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129852, 37.906563, 26.457630>,  <35.949394, 37.553814, 26.402828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129852, 37.906563, 26.457630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166519, 0.067639, -0.983716,
		-0.876778, 0.466612, -0.116333,
		0.451145, 0.881872, 0.137004,
		36.265198, 38.171124, 26.498732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675552, 38.063057, 25.897470>,  <35.949394, 37.553814, 26.402828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675552, 38.063057, 25.897470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035431, 38.202225, 26.002926>,  <36.251358, 38.285725, 26.066198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035431, 38.202225, 26.002926>,  <35.675552, 38.063057, 25.897470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035431, 38.202225, 26.002926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200576, 0.206937, -0.957573,
		-0.387711, 0.914403, 0.116397,
		0.899694, 0.347915, 0.263639,
		36.305340, 38.306599, 26.082018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819050, 38.542236, 25.397226>,  <35.675552, 38.063057, 25.897470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819050, 38.542236, 25.397226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178612, 38.480022, 25.561068>,  <36.394348, 38.442696, 25.659372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178612, 38.480022, 25.561068>,  <35.819050, 38.542236, 25.397226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178612, 38.480022, 25.561068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435770, 0.220309, -0.872679,
		0.045489, 0.962951, 0.265813,
		0.898908, -0.155531, 0.409603,
		36.448284, 38.433365, 25.683949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295715, 39.110352, 25.144623>,  <35.819050, 38.542236, 25.397226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295715, 39.110352, 25.144623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491299, 38.783531, 25.266832>,  <36.608650, 38.587440, 25.340158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491299, 38.783531, 25.266832>,  <36.295715, 39.110352, 25.144623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491299, 38.783531, 25.266832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521893, -0.006636, -0.852985,
		0.698960, 0.576527, 0.423169,
		0.488961, -0.817051, 0.305524,
		36.637985, 38.538414, 25.358490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947979, 39.303631, 24.985823>,  <36.295715, 39.110352, 25.144623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947979, 39.303631, 24.985823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.978752, 38.906067, 25.017384>,  <36.997215, 38.667530, 25.036320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.978752, 38.906067, 25.017384>,  <36.947979, 39.303631, 24.985823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978752, 38.906067, 25.017384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598988, -0.017187, -0.800573,
		0.797053, 0.108853, 0.594018,
		0.076935, -0.993909, 0.078900,
		37.001831, 38.607895, 25.041054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709377, 39.204636, 24.892273>,  <36.947979, 39.303631, 24.985823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709377, 39.204636, 24.892273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.519924, 38.858295, 24.827806>,  <37.406254, 38.650490, 24.789127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.519924, 38.858295, 24.827806>,  <37.709377, 39.204636, 24.892273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519924, 38.858295, 24.827806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478043, -0.099049, -0.872734,
		0.739695, -0.490398, 0.460827,
		-0.473631, -0.865852, -0.161165,
		37.377834, 38.598541, 24.779457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163273, 38.879219, 24.549553>,  <37.709377, 39.204636, 24.892273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163273, 38.879219, 24.549553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.860378, 38.628395, 24.476452>,  <37.678642, 38.477901, 24.432590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.860378, 38.628395, 24.476452>,  <38.163273, 38.879219, 24.549553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860378, 38.628395, 24.476452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290186, -0.072317, -0.954234,
		0.585142, -0.775609, 0.236724,
		-0.757232, -0.627057, -0.182755,
		37.633209, 38.440277, 24.421625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412575, 38.285519, 24.175674>,  <38.163273, 38.879219, 24.549553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412575, 38.285519, 24.175674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026440, 38.352398, 24.095509>,  <37.794758, 38.392525, 24.047409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026440, 38.352398, 24.095509>,  <38.412575, 38.285519, 24.175674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026440, 38.352398, 24.095509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188998, -0.081778, -0.978566,
		-0.180004, -0.982526, 0.047344,
		-0.965338, 0.167198, -0.200416,
		37.736839, 38.402557, 24.035383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796867, 37.597832, 24.312487>,  <38.412575, 38.285519, 24.175674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796867, 37.597832, 24.312487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.181305, 37.556789, 24.415071>,  <39.411968, 37.532166, 24.476622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.181305, 37.556789, 24.415071>,  <38.796867, 37.597832, 24.312487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181305, 37.556789, 24.415071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242211, 0.133304, 0.961022,
		-0.132795, -0.985749, 0.103265,
		0.961093, -0.102607, 0.256461,
		39.469631, 37.526009, 24.492010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859203, 37.055893, 24.909601>,  <38.796867, 37.597832, 24.312487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859203, 37.055893, 24.909601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.153412, 37.326889, 24.908504>,  <39.329937, 37.489487, 24.907846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.153412, 37.326889, 24.908504>,  <38.859203, 37.055893, 24.909601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153412, 37.326889, 24.908504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196222, 0.216903, 0.956269,
		0.648462, -0.702820, 0.292476,
		0.735523, 0.677494, -0.002744,
		39.374069, 37.530136, 24.907681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217709, 36.894337, 25.505159>,  <38.859203, 37.055893, 24.909601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217709, 36.894337, 25.505159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358288, 37.255379, 25.405724>,  <39.442635, 37.472004, 25.346062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358288, 37.255379, 25.405724>,  <39.217709, 36.894337, 25.505159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358288, 37.255379, 25.405724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054758, 0.245254, 0.967911,
		0.934606, -0.353780, 0.036768,
		0.351445, 0.902602, -0.248588,
		39.463722, 37.526161, 25.331146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895325, 37.049095, 25.880686>,  <39.217709, 36.894337, 25.505159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895325, 37.049095, 25.880686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.691128, 37.378868, 25.782948>,  <39.568611, 37.576733, 25.724304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.691128, 37.378868, 25.782948>,  <39.895325, 37.049095, 25.880686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691128, 37.378868, 25.782948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008751, 0.279168, 0.960202,
		0.859837, 0.492315, -0.135299,
		-0.510493, 0.824434, -0.244347,
		39.537979, 37.626198, 25.709642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226883, 37.607632, 26.287519>,  <39.895325, 37.049095, 25.880686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226883, 37.607632, 26.287519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.865227, 37.747250, 26.188976>,  <39.648232, 37.831020, 26.129850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.865227, 37.747250, 26.188976>,  <40.226883, 37.607632, 26.287519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865227, 37.747250, 26.188976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177590, 0.217403, 0.959790,
		0.388570, 0.911539, -0.134577,
		-0.904143, 0.349046, -0.246357,
		39.593983, 37.851963, 26.115068>
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
