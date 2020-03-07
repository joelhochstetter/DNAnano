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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.525821, 1.812339, 1.329092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.271809, 2.113281, 1.259010>,  <3.119401, 2.293847, 1.216961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.271809, 2.113281, 1.259010>,  <3.525821, 1.812339, 1.329092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.271809, 2.113281, 1.259010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495145, 0.570518, 0.655241,
		0.592932, 0.329346, -0.734822,
		-0.635030, 0.752356, -0.175205,
		3.081300, 2.338988, 1.206448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.887147, 2.313108, 1.028934>,  <3.525821, 1.812339, 1.329092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.887147, 2.313108, 1.028934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.584370, 2.448521, 1.252517>,  <3.402703, 2.529768, 1.386667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.584370, 2.448521, 1.252517>,  <3.887147, 2.313108, 1.028934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.584370, 2.448521, 1.252517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651257, 0.461300, 0.602551,
		-0.053865, 0.820122, -0.569648,
		-0.756944, 0.338531, 0.558957,
		3.357286, 2.550080, 1.420204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.000405, 3.034599, 1.061833>,  <3.887147, 2.313108, 1.028934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.000405, 3.034599, 1.061833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.806759, 2.889387, 1.380289>,  <3.690571, 2.802260, 1.571363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.806759, 2.889387, 1.380289>,  <4.000405, 3.034599, 1.061833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.806759, 2.889387, 1.380289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727109, 0.339260, 0.596838,
		-0.486768, 0.867820, 0.099721,
		-0.484117, -0.363029, 0.796141,
		3.661524, 2.780478, 1.619131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.794246, 3.545978, 1.636864>,  <4.000405, 3.034599, 1.061833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.794246, 3.545978, 1.636864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.890865, 3.174664, 1.749958>,  <3.948837, 2.951875, 1.817814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.890865, 3.174664, 1.749958>,  <3.794246, 3.545978, 1.636864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.890865, 3.174664, 1.749958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691242, 0.369087, 0.621256,
		-0.681057, 0.045375, 0.730823,
		0.241548, -0.928286, 0.282735,
		3.963330, 2.896178, 1.834778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.815037, 3.537045, 2.367421>,  <3.794246, 3.545978, 1.636864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.815037, 3.537045, 2.367421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.036293, 3.213417, 2.287982>,  <4.169046, 3.019240, 2.240318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.036293, 3.213417, 2.287982>,  <3.815037, 3.537045, 2.367421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.036293, 3.213417, 2.287982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606462, 0.227617, 0.761836,
		-0.571175, -0.541844, 0.616574,
		0.553139, -0.809071, -0.198598,
		4.202235, 2.970696, 2.228402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.914645, 3.218401, 2.986122>,  <3.815037, 3.537045, 2.367421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.914645, 3.218401, 2.986122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188866, 3.083790, 2.727892>,  <4.353398, 3.003023, 2.572954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188866, 3.083790, 2.727892>,  <3.914645, 3.218401, 2.986122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.188866, 3.083790, 2.727892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715787, 0.149675, 0.682090,
		-0.132916, -0.929702, 0.343492,
		0.685552, -0.336528, -0.645575,
		4.394531, 2.982831, 2.534220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.282828, 2.740093, 3.331288>,  <3.914645, 3.218401, 2.986122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.282828, 2.740093, 3.331288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.557983, 2.814995, 3.050790>,  <4.723077, 2.859936, 2.882491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.557983, 2.814995, 3.050790>,  <4.282828, 2.740093, 3.331288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.557983, 2.814995, 3.050790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704460, 0.060397, 0.707170,
		0.174775, -0.980453, -0.090368,
		0.687888, 0.187256, -0.701245,
		4.764350, 2.871171, 2.840416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.952243, 2.168989, 3.334688>,  <4.282828, 2.740093, 3.331288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.952243, 2.168989, 3.334688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.020042, 2.538235, 3.196626>,  <5.060722, 2.759782, 3.113788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.020042, 2.538235, 3.196626>,  <4.952243, 2.168989, 3.334688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.020042, 2.538235, 3.196626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820013, 0.062168, 0.568958,
		0.546670, -0.379469, -0.746428,
		0.169498, 0.923113, -0.345155,
		5.070892, 2.815169, 3.093079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.558446, 2.790991, 4.091918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.844040, 2.830868, 3.814707>,  <1.015396, 2.854794, 3.648380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.844040, 2.830868, 3.814707>,  <0.558446, 2.790991, 4.091918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.844040, 2.830868, 3.814707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679629, 0.336624, -0.651758,
		0.168314, 0.936347, 0.308098,
		0.713985, 0.099692, -0.693027,
		1.058236, 2.860775, 3.606799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.637254, 3.451088, 3.843175>,  <0.558446, 2.790991, 4.091918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.637254, 3.451088, 3.843175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.719513, 3.192406, 3.549377>,  <0.768868, 3.037197, 3.373098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.719513, 3.192406, 3.549377>,  <0.637254, 3.451088, 3.843175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.719513, 3.192406, 3.549377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599875, 0.509698, -0.616732,
		0.773214, 0.567434, -0.283124,
		0.205647, -0.646705, -0.734495,
		0.781207, 2.998394, 3.329029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.700553, 3.860913, 3.212375>,  <0.637254, 3.451088, 3.843175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.700553, 3.860913, 3.212375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.661911, 3.483105, 3.086805>,  <0.638726, 3.256420, 3.011464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.661911, 3.483105, 3.086805>,  <0.700553, 3.860913, 3.212375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.661911, 3.483105, 3.086805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658418, 0.297173, -0.691501,
		0.746427, 0.139890, -0.650598,
		-0.096606, -0.944520, -0.313924,
		0.632929, 3.199749, 2.992628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.457245, 3.929735, 2.445134>,  <0.700553, 3.860913, 3.212375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.457245, 3.929735, 2.445134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.366989, 3.578968, 2.614888>,  <0.312836, 3.368508, 2.716740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.366989, 3.578968, 2.614888>,  <0.457245, 3.929735, 2.445134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.366989, 3.578968, 2.614888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705053, -0.153629, -0.692314,
		0.672300, -0.455426, -0.583609,
		-0.225639, -0.876918, 0.424384,
		0.299298, 3.315893, 2.742203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.320480, 3.505880, 1.845389>,  <0.457245, 3.929735, 2.445134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.320480, 3.505880, 1.845389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.166626, 3.289062, 2.144252>,  <0.074313, 3.158972, 2.323570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.166626, 3.289062, 2.144252>,  <0.320480, 3.505880, 1.845389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.166626, 3.289062, 2.144252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726857, -0.321074, -0.607117,
		0.568977, -0.776595, -0.270492,
		-0.384636, -0.542044, 0.747157,
		0.051235, 3.126449, 2.368399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.388665, 2.682767, 1.725161>,  <0.320480, 3.505880, 1.845389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.388665, 2.682767, 1.725161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.086914, 2.798729, 1.960745>,  <-0.094136, 2.868306, 2.102095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.086914, 2.798729, 1.960745>,  <0.388665, 2.682767, 1.725161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.086914, 2.798729, 1.960745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647981, -0.472452, -0.597419,
		0.105060, -0.832313, 0.544259,
		-0.754376, 0.289905, 0.588959,
		-0.139399, 2.885700, 2.137432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.056914, 2.055700, 1.881993>,  <0.388665, 2.682767, 1.725161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.056914, 2.055700, 1.881993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.206841, 2.338669, 1.983786>,  <-0.365093, 2.508450, 2.044863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.206841, 2.338669, 1.983786>,  <0.056914, 2.055700, 1.881993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.206841, 2.338669, 1.983786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737251, -0.542174, -0.403124,
		-0.147205, -0.453433, 0.879050,
		-0.659387, 0.707422, 0.254483,
		-0.404657, 2.550896, 2.060131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.485138, 1.753418, 2.138878>,  <0.056914, 2.055700, 1.881993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.485138, 1.753418, 2.138878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.656960, 2.097290, 2.028291>,  <-0.760052, 2.303613, 1.961939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.656960, 2.097290, 2.028291>,  <-0.485138, 1.753418, 2.138878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.656960, 2.097290, 2.028291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837806, -0.493635, -0.233251,
		-0.336995, 0.131432, 0.932287,
		-0.429553, 0.859680, -0.276467,
		-0.785825, 2.355194, 1.945350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
