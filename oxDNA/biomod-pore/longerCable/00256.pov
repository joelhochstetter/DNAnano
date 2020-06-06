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
	<24.016478, 35.220284, 35.224945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268320, 35.273174, 34.918713>,  <24.419426, 35.304909, 34.734974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268320, 35.273174, 34.918713>,  <24.016478, 35.220284, 35.224945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.268320, 35.273174, 34.918713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429886, -0.880104, 0.201532,
		-0.647141, -0.455997, -0.610963,
		0.629609, 0.132225, -0.765578,
		24.457203, 35.312843, 34.689037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.051212, 34.727726, 34.700138>,  <24.016478, 35.220284, 35.224945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.051212, 34.727726, 34.700138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.417227, 34.888996, 34.695160>,  <24.636835, 34.985760, 34.692173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.417227, 34.888996, 34.695160>,  <24.051212, 34.727726, 34.700138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.417227, 34.888996, 34.695160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403294, -0.913823, 0.047769,
		0.007889, -0.048728, -0.998781,
		0.915037, 0.403179, -0.012442,
		24.691738, 35.009949, 34.691429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.520632, 34.465080, 34.134205>,  <24.051212, 34.727726, 34.700138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.520632, 34.465080, 34.134205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759459, 34.589352, 34.430038>,  <24.902756, 34.663914, 34.607540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759459, 34.589352, 34.430038>,  <24.520632, 34.465080, 34.134205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.759459, 34.589352, 34.430038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401607, -0.913866, 0.059673,
		0.694421, 0.261394, -0.670412,
		0.597069, 0.310680, 0.739585,
		24.938580, 34.682556, 34.651913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190165, 34.248924, 33.964603>,  <24.520632, 34.465080, 34.134205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190165, 34.248924, 33.964603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168255, 34.300110, 34.360710>,  <25.155109, 34.330822, 34.598373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168255, 34.300110, 34.360710>,  <25.190165, 34.248924, 33.964603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168255, 34.300110, 34.360710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269991, -0.952911, 0.138075,
		0.961303, 0.274926, 0.017647,
		-0.054776, 0.127967, 0.990264,
		25.151821, 34.338501, 34.657791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816681, 34.155350, 34.275845>,  <25.190165, 34.248924, 33.964603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816681, 34.155350, 34.275845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562592, 34.078869, 34.575161>,  <25.410139, 34.032982, 34.754749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562592, 34.078869, 34.575161>,  <25.816681, 34.155350, 34.275845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562592, 34.078869, 34.575161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173265, -0.979455, -0.103184,
		0.752644, 0.064108, 0.655299,
		-0.635221, -0.191201, 0.748289,
		25.372025, 34.021507, 34.799648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068476, 33.527241, 34.552673>,  <25.816681, 34.155350, 34.275845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068476, 33.527241, 34.552673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689297, 33.547665, 34.678398>,  <25.461790, 33.559917, 34.753834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689297, 33.547665, 34.678398>,  <26.068476, 33.527241, 34.552673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689297, 33.547665, 34.678398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045799, -0.998660, 0.024094,
		0.315118, 0.008444, 0.949015,
		-0.947947, 0.051056, 0.314309,
		25.404913, 33.562981, 34.772690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971682, 33.163975, 35.228516>,  <26.068476, 33.527241, 34.552673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971682, 33.163975, 35.228516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635750, 33.155052, 35.011559>,  <25.434191, 33.149696, 34.881386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635750, 33.155052, 35.011559>,  <25.971682, 33.163975, 35.228516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635750, 33.155052, 35.011559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035743, -0.999260, -0.014242,
		-0.541672, -0.031348, 0.840005,
		-0.839829, -0.022310, -0.542392,
		25.383801, 33.148357, 34.848843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467438, 32.705441, 35.539211>,  <25.971682, 33.163975, 35.228516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467438, 32.705441, 35.539211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416307, 32.729462, 35.143219>,  <25.385630, 32.743874, 34.905624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416307, 32.729462, 35.143219>,  <25.467438, 32.705441, 35.539211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416307, 32.729462, 35.143219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056269, -0.996119, -0.067686,
		-0.990200, -0.064357, 0.123947,
		-0.127822, 0.060048, -0.989978,
		25.377960, 32.747475, 34.846226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000875, 32.110683, 35.283161>,  <25.467438, 32.705441, 35.539211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000875, 32.110683, 35.283161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166750, 32.201927, 34.930798>,  <25.266275, 32.256676, 34.719379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166750, 32.201927, 34.930798>,  <25.000875, 32.110683, 35.283161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166750, 32.201927, 34.930798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314918, -0.872272, -0.374124,
		-0.853734, 0.432558, -0.289883,
		0.414687, 0.228113, -0.880908,
		25.291157, 32.270363, 34.666527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.459053, 31.838196, 34.754841>,  <25.000875, 32.110683, 35.283161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.459053, 31.838196, 34.754841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.823795, 31.884090, 34.597179>,  <25.042641, 31.911627, 34.502583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.823795, 31.884090, 34.597179>,  <24.459053, 31.838196, 34.754841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.823795, 31.884090, 34.597179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138120, -0.818421, -0.557772,
		-0.386581, 0.563047, -0.730433,
		0.911854, 0.114737, -0.394154,
		25.097351, 31.918512, 34.478931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.437445, 31.854765, 34.020012>,  <24.459053, 31.838196, 34.754841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.437445, 31.854765, 34.020012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.816248, 31.746136, 34.088623>,  <25.043530, 31.680958, 34.129791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.816248, 31.746136, 34.088623>,  <24.437445, 31.854765, 34.020012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.816248, 31.746136, 34.088623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190315, -0.904585, -0.381452,
		0.258756, 0.328593, -0.908334,
		0.947009, -0.271573, 0.171530,
		25.100351, 31.664663, 34.140083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727665, 31.482878, 33.439182>,  <24.437445, 31.854765, 34.020012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727665, 31.482878, 33.439182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914894, 31.353876, 33.768276>,  <25.027231, 31.276476, 33.965733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914894, 31.353876, 33.768276>,  <24.727665, 31.482878, 33.439182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914894, 31.353876, 33.768276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112080, -0.945175, -0.306730,
		0.876553, 0.051359, -0.478557,
		0.468073, -0.322502, 0.822740,
		25.055317, 31.257126, 34.015099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960032, 30.908850, 33.265965>,  <24.727665, 31.482878, 33.439182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.960032, 30.908850, 33.265965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021669, 30.831839, 33.653610>,  <25.058653, 30.785631, 33.886200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021669, 30.831839, 33.653610>,  <24.960032, 30.908850, 33.265965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021669, 30.831839, 33.653610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181021, -0.958729, -0.219248,
		0.971332, 0.209216, -0.112885,
		0.154097, -0.192528, 0.969117,
		25.067898, 30.774080, 33.944344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684860, 30.819725, 33.459480>,  <24.960032, 30.908850, 33.265965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684860, 30.819725, 33.459480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392889, 30.610699, 33.635719>,  <25.217707, 30.485283, 33.741463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392889, 30.610699, 33.635719>,  <25.684860, 30.819725, 33.459480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.392889, 30.610699, 33.635719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419878, -0.851442, -0.314244,
		0.539355, -0.044379, 0.840908,
		-0.729930, -0.522568, 0.440596,
		25.173910, 30.453928, 33.767899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935505, 30.325193, 33.891117>,  <25.684860, 30.819725, 33.459480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935505, 30.325193, 33.891117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589891, 30.212212, 33.724426>,  <25.382523, 30.144423, 33.624413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589891, 30.212212, 33.724426>,  <25.935505, 30.325193, 33.891117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589891, 30.212212, 33.724426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433771, -0.837826, -0.331498,
		-0.255511, -0.467190, 0.846433,
		-0.864035, -0.282457, -0.416727,
		25.330681, 30.127474, 33.599407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808027, 30.950338, 34.328564>,  <25.935505, 30.325193, 33.891117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808027, 30.950338, 34.328564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600079, 31.145050, 34.047771>,  <25.475309, 31.261877, 33.879295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600079, 31.145050, 34.047771>,  <25.808027, 30.950338, 34.328564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600079, 31.145050, 34.047771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260231, 0.872946, 0.412609,
		0.813643, 0.031825, -0.580494,
		-0.519871, 0.486779, -0.701984,
		25.444117, 31.291084, 33.837177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331011, 31.468950, 34.233227>,  <25.808027, 30.950338, 34.328564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331011, 31.468950, 34.233227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942430, 31.537403, 34.167496>,  <25.709282, 31.578474, 34.128059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942430, 31.537403, 34.167496>,  <26.331011, 31.468950, 34.233227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942430, 31.537403, 34.167496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109763, 0.938215, 0.328185,
		0.210333, 0.300778, -0.930211,
		-0.971448, 0.171131, -0.164323,
		25.650995, 31.588743, 34.118198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243273, 32.117901, 33.848347>,  <26.331011, 31.468950, 34.233227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243273, 32.117901, 33.848347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898073, 32.059727, 34.041874>,  <25.690954, 32.024822, 34.157990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898073, 32.059727, 34.041874>,  <26.243273, 32.117901, 33.848347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898073, 32.059727, 34.041874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056409, 0.979418, 0.193802,
		-0.502049, 0.139958, -0.853439,
		-0.862998, -0.145439, 0.483821,
		25.639174, 32.016094, 34.187019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811428, 32.705242, 33.612709>,  <26.243273, 32.117901, 33.848347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811428, 32.705242, 33.612709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638517, 32.552673, 33.939548>,  <25.534771, 32.461132, 34.135651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638517, 32.552673, 33.939548>,  <25.811428, 32.705242, 33.612709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638517, 32.552673, 33.939548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249370, 0.921363, 0.298170,
		-0.866575, -0.074868, -0.493399,
		-0.432276, -0.381425, 0.817100,
		25.508835, 32.438248, 34.184677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046144, 32.816872, 33.557091>,  <25.811428, 32.705242, 33.612709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046144, 32.816872, 33.557091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161003, 32.775597, 33.938015>,  <25.229918, 32.750832, 34.166569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161003, 32.775597, 33.938015>,  <25.046144, 32.816872, 33.557091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161003, 32.775597, 33.938015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192273, 0.967739, 0.162830,
		-0.938392, -0.229860, 0.258042,
		0.287145, -0.103184, 0.952314,
		25.247147, 32.744640, 34.223709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592110, 33.266594, 34.003609>,  <25.046144, 32.816872, 33.557091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.592110, 33.266594, 34.003609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949850, 33.216999, 34.175545>,  <25.164495, 33.187244, 34.278706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949850, 33.216999, 34.175545>,  <24.592110, 33.266594, 34.003609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.949850, 33.216999, 34.175545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084022, 0.990283, 0.110818,
		-0.439402, -0.062994, 0.896079,
		0.894352, -0.123984, 0.429840,
		25.218155, 33.179806, 34.304497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.081123, 32.830597, 34.346882>,  <24.592110, 33.266594, 34.003609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.081123, 32.830597, 34.346882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438757, 32.952454, 34.478218>,  <24.653337, 33.025566, 34.557022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438757, 32.952454, 34.478218>,  <24.081123, 32.830597, 34.346882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.438757, 32.952454, 34.478218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447713, 0.629011, 0.635530,
		-0.012924, -0.715220, 0.698779,
		0.894084, 0.304639, 0.328343,
		24.706982, 33.043846, 34.576721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284500, 32.936840, 35.020340>,  <24.081123, 32.830597, 34.346882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284500, 32.936840, 35.020340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662844, 33.010418, 35.127312>,  <24.889849, 33.054565, 35.191494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662844, 33.010418, 35.127312>,  <24.284500, 32.936840, 35.020340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.662844, 33.010418, 35.127312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147996, 0.977695, -0.149031,
		-0.288877, 0.101384, 0.951983,
		0.945858, 0.183941, 0.267429,
		24.946602, 33.065601, 35.207539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.262955, 33.594440, 35.325111>,  <24.284500, 32.936840, 35.020340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.262955, 33.594440, 35.325111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656071, 33.601532, 35.251556>,  <24.891939, 33.605785, 35.207424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656071, 33.601532, 35.251556>,  <24.262955, 33.594440, 35.325111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656071, 33.601532, 35.251556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010235, 0.999081, 0.041614,
		0.184453, -0.039016, 0.982067,
		0.982788, 0.017727, -0.183885,
		24.950907, 33.606850, 35.196392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689644, 33.952225, 35.891304>,  <24.262955, 33.594440, 35.325111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689644, 33.952225, 35.891304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881605, 33.973114, 35.540997>,  <24.996782, 33.985645, 35.330814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881605, 33.973114, 35.540997>,  <24.689644, 33.952225, 35.891304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881605, 33.973114, 35.540997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076670, 0.991912, 0.101160,
		0.873964, -0.115692, 0.472019,
		0.479904, 0.052221, -0.875765,
		25.025576, 33.988781, 35.278267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151659, 34.474346, 35.961662>,  <24.689644, 33.952225, 35.891304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151659, 34.474346, 35.961662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172630, 34.444931, 35.563297>,  <25.185213, 34.427280, 35.324280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172630, 34.444931, 35.563297>,  <25.151659, 34.474346, 35.961662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172630, 34.444931, 35.563297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032334, 0.996887, -0.071910,
		0.998101, -0.028431, 0.054641,
		0.052427, -0.073541, -0.995913,
		25.188358, 34.422871, 35.264523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655825, 34.927914, 35.837238>,  <25.151659, 34.474346, 35.961662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655825, 34.927914, 35.837238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422459, 34.889011, 35.514706>,  <25.282438, 34.865669, 35.321186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422459, 34.889011, 35.514706>,  <25.655825, 34.927914, 35.837238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422459, 34.889011, 35.514706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007690, 0.993421, -0.114263,
		0.812138, -0.060462, -0.580325,
		-0.583415, -0.097260, -0.806329,
		25.247435, 34.859833, 35.272808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028891, 34.883873, 36.470135>,  <25.655825, 34.927914, 35.837238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028891, 34.883873, 36.470135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246193, 34.591995, 36.636227>,  <26.376575, 34.416870, 36.735882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246193, 34.591995, 36.636227>,  <26.028891, 34.883873, 36.470135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246193, 34.591995, 36.636227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767961, -0.631756, -0.105455,
		0.339277, -0.261595, -0.903582,
		0.543256, -0.729693, 0.415234,
		26.409170, 34.373089, 36.760796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079115, 35.037224, 37.245956>,  <26.028891, 34.883873, 36.470135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079115, 35.037224, 37.245956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470652, 34.957005, 37.229725>,  <26.705574, 34.908871, 37.219986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470652, 34.957005, 37.229725>,  <26.079115, 35.037224, 37.245956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470652, 34.957005, 37.229725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204611, 0.958122, 0.200340,
		-0.001297, -0.204405, 0.978886,
		0.978842, -0.200551, -0.040580,
		26.764305, 34.896839, 37.217552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427294, 35.308540, 37.810089>,  <26.079115, 35.037224, 37.245956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427294, 35.308540, 37.810089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763361, 35.253593, 37.600231>,  <26.965000, 35.220623, 37.474316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763361, 35.253593, 37.600231>,  <26.427294, 35.308540, 37.810089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763361, 35.253593, 37.600231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188928, 0.980926, 0.045708,
		0.508357, -0.137522, 0.850094,
		0.840166, -0.137371, -0.524643,
		27.015411, 35.212383, 37.442837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063326, 35.325760, 38.124294>,  <26.427294, 35.308540, 37.810089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063326, 35.325760, 38.124294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055811, 35.453571, 37.745338>,  <27.051302, 35.530258, 37.517963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055811, 35.453571, 37.745338>,  <27.063326, 35.325760, 38.124294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055811, 35.453571, 37.745338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246867, 0.919701, 0.305298,
		0.968867, -0.228143, -0.096161,
		-0.018787, 0.319532, -0.947389,
		27.050175, 35.549431, 37.461121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732731, 35.513813, 37.872250>,  <27.063326, 35.325760, 38.124294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732731, 35.513813, 37.872250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439354, 35.716583, 37.691101>,  <27.263329, 35.838245, 37.582413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439354, 35.716583, 37.691101>,  <27.732731, 35.513813, 37.872250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439354, 35.716583, 37.691101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295447, 0.837742, 0.459239,
		0.612190, 0.203024, -0.764202,
		-0.733440, 0.506922, -0.452874,
		27.219322, 35.868660, 37.555241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860012, 36.310261, 37.798370>,  <27.732731, 35.513813, 37.872250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860012, 36.310261, 37.798370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466618, 36.270538, 37.737846>,  <27.230581, 36.246704, 37.701534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466618, 36.270538, 37.737846>,  <27.860012, 36.310261, 37.798370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466618, 36.270538, 37.737846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144985, 0.932699, 0.330230,
		0.108330, 0.346714, -0.931694,
		-0.983486, -0.099308, -0.151307,
		27.171572, 36.240746, 37.692455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601259, 36.826569, 37.413074>,  <27.860012, 36.310261, 37.798370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601259, 36.826569, 37.413074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285189, 36.707222, 37.627213>,  <27.095547, 36.635612, 37.755695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285189, 36.707222, 37.627213>,  <27.601259, 36.826569, 37.413074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285189, 36.707222, 37.627213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151620, 0.941511, 0.300947,
		-0.593829, 0.156632, -0.789198,
		-0.790176, -0.298369, 0.535348,
		27.048136, 36.617710, 37.787815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105394, 37.210003, 37.301540>,  <27.601259, 36.826569, 37.413074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105394, 37.210003, 37.301540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022036, 37.071331, 37.667358>,  <26.972021, 36.988129, 37.886848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022036, 37.071331, 37.667358>,  <27.105394, 37.210003, 37.301540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022036, 37.071331, 37.667358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379580, 0.890446, 0.251048,
		-0.901382, -0.294824, -0.317158,
		-0.208397, -0.346677, 0.914541,
		26.959517, 36.967327, 37.941719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513472, 37.568932, 37.393795>,  <27.105394, 37.210003, 37.301540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513472, 37.568932, 37.393795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418522, 37.204311, 37.528095>,  <26.361551, 36.985538, 37.608673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418522, 37.204311, 37.528095>,  <26.513472, 37.568932, 37.393795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418522, 37.204311, 37.528095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539783, 0.411128, 0.734580,
		-0.807643, -0.006861, -0.589631,
		-0.237374, -0.911552, 0.335748,
		26.347309, 36.930847, 37.628819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813435, 37.555576, 37.489937>,  <26.513472, 37.568932, 37.393795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813435, 37.555576, 37.489937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005581, 37.291973, 37.721439>,  <26.120869, 37.133812, 37.860340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005581, 37.291973, 37.721439>,  <25.813435, 37.555576, 37.489937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005581, 37.291973, 37.721439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401721, 0.421275, 0.813110,
		-0.779659, -0.623090, -0.062370,
		0.480366, -0.659004, 0.578759,
		26.149691, 37.094273, 37.895065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393040, 37.358624, 37.929203>,  <25.813435, 37.555576, 37.489937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393040, 37.358624, 37.929203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733404, 37.260006, 38.114746>,  <25.937622, 37.200836, 38.226074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733404, 37.260006, 38.114746>,  <25.393040, 37.358624, 37.929203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733404, 37.260006, 38.114746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367946, 0.350505, 0.861256,
		-0.374920, -0.903529, 0.207535,
		0.850912, -0.246541, 0.463861,
		25.988678, 37.186043, 38.253906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242598, 37.044640, 38.622776>,  <25.393040, 37.358624, 37.929203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.242598, 37.044640, 38.622776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619829, 37.174145, 38.653175>,  <25.846169, 37.251850, 38.671413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619829, 37.174145, 38.653175>,  <25.242598, 37.044640, 38.622776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619829, 37.174145, 38.653175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232167, 0.477334, 0.847496,
		0.238113, -0.816901, 0.525332,
		0.943080, 0.323765, 0.075998,
		25.902754, 37.271275, 38.675976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357183, 37.108578, 39.347797>,  <25.242598, 37.044640, 38.622776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357183, 37.108578, 39.347797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616991, 37.358437, 39.174389>,  <25.772875, 37.508354, 39.070343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616991, 37.358437, 39.174389>,  <25.357183, 37.108578, 39.347797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616991, 37.358437, 39.174389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211032, 0.695859, 0.686473,
		0.730472, -0.354393, 0.583795,
		0.649520, 0.624649, -0.433517,
		25.811846, 37.545834, 39.044334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375994, 37.794529, 39.440769>,  <25.357183, 37.108578, 39.347797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375994, 37.794529, 39.440769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714235, 37.941414, 39.595745>,  <25.917179, 38.029545, 39.688732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714235, 37.941414, 39.595745>,  <25.375994, 37.794529, 39.440769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714235, 37.941414, 39.595745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515016, -0.370308, -0.773066,
		-0.140409, 0.853244, -0.502255,
		0.845602, 0.367215, 0.387440,
		25.967916, 38.051579, 39.711979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732195, 38.147095, 38.917240>,  <25.375994, 37.794529, 39.440769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732195, 38.147095, 38.917240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947119, 37.959076, 39.197342>,  <26.076073, 37.846264, 39.365402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947119, 37.959076, 39.197342>,  <25.732195, 38.147095, 38.917240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947119, 37.959076, 39.197342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399144, -0.589691, -0.702103,
		0.742957, 0.656746, -0.129227,
		0.537307, -0.470052, 0.700252,
		26.108311, 37.818062, 39.407417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501812, 38.227726, 38.793797>,  <25.732195, 38.147095, 38.917240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501812, 38.227726, 38.793797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359190, 37.901443, 38.976006>,  <26.273617, 37.705673, 39.085331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359190, 37.901443, 38.976006>,  <26.501812, 38.227726, 38.793797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359190, 37.901443, 38.976006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415032, -0.575107, -0.704983,
		0.837028, -0.062310, 0.543600,
		-0.356556, -0.815701, 0.455520,
		26.252224, 37.656734, 39.112663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047430, 37.682514, 39.002048>,  <26.501812, 38.227726, 38.793797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047430, 37.682514, 39.002048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693855, 37.523758, 38.903149>,  <26.481710, 37.428505, 38.843807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693855, 37.523758, 38.903149>,  <27.047430, 37.682514, 39.002048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693855, 37.523758, 38.903149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429310, -0.479239, -0.765521,
		0.185338, -0.782819, 0.594007,
		-0.883936, -0.396894, -0.247251,
		26.428675, 37.404690, 38.828972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100172, 36.925694, 38.878841>,  <27.047430, 37.682514, 39.002048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100172, 36.925694, 38.878841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775045, 37.030273, 38.670624>,  <26.579969, 37.093021, 38.545692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775045, 37.030273, 38.670624>,  <27.100172, 36.925694, 38.878841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775045, 37.030273, 38.670624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400807, -0.397440, -0.825467,
		-0.422717, -0.879590, 0.218248,
		-0.812812, 0.261464, -0.520551,
		26.531200, 37.108707, 38.514458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621025, 36.395210, 38.797760>,  <27.100172, 36.925694, 38.878841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621025, 36.395210, 38.797760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583498, 36.612995, 38.464352>,  <26.560982, 36.743668, 38.264305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583498, 36.612995, 38.464352>,  <26.621025, 36.395210, 38.797760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583498, 36.612995, 38.464352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265493, -0.793214, -0.548019,
		-0.959537, -0.272708, -0.070135,
		-0.093817, 0.544465, -0.833520,
		26.555353, 36.776337, 38.214294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017010, 36.063663, 38.282978>,  <26.621025, 36.395210, 38.797760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017010, 36.063663, 38.282978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323425, 36.261517, 38.118767>,  <26.507275, 36.380226, 38.020241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323425, 36.261517, 38.118767>,  <26.017010, 36.063663, 38.282978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323425, 36.261517, 38.118767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222483, -0.803202, -0.552601,
		-0.603066, 0.331978, -0.725329,
		0.766037, 0.494628, -0.410525,
		26.553236, 36.409904, 37.995609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863817, 36.147305, 37.668854>,  <26.017010, 36.063663, 38.282978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863817, 36.147305, 37.668854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255087, 36.101929, 37.738495>,  <26.489849, 36.074703, 37.780277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255087, 36.101929, 37.738495>,  <25.863817, 36.147305, 37.668854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255087, 36.101929, 37.738495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009174, -0.813453, -0.581558,
		0.207593, 0.570461, -0.794657,
		0.978172, -0.113437, 0.174100,
		26.548538, 36.067898, 37.790726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408689, 36.246384, 37.092014>,  <25.863817, 36.147305, 37.668854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408689, 36.246384, 37.092014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576597, 35.966663, 37.323448>,  <26.677341, 35.798832, 37.462311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576597, 35.966663, 37.323448>,  <26.408689, 36.246384, 37.092014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576597, 35.966663, 37.323448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138342, -0.580727, -0.802258,
		0.897025, 0.416808, -0.147029,
		0.419772, -0.699305, 0.578588,
		26.702528, 35.756870, 37.497025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088196, 35.905899, 36.846443>,  <26.408689, 36.246384, 37.092014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088196, 35.905899, 36.846443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883781, 35.648533, 37.074429>,  <26.761133, 35.494114, 37.211220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883781, 35.648533, 37.074429>,  <27.088196, 35.905899, 36.846443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883781, 35.648533, 37.074429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032786, -0.677200, -0.735069,
		0.858933, -0.356961, 0.367169,
		-0.511038, -0.643413, 0.569966,
		26.730471, 35.455509, 37.245419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420700, 35.246979, 36.843479>,  <27.088196, 35.905899, 36.846443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420700, 35.246979, 36.843479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035288, 35.172012, 36.919884>,  <26.804041, 35.127033, 36.965725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035288, 35.172012, 36.919884>,  <27.420700, 35.246979, 36.843479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035288, 35.172012, 36.919884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029841, -0.634099, -0.772676,
		0.265931, -0.750197, 0.605381,
		-0.963530, -0.187413, 0.191013,
		26.746229, 35.115788, 36.977188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021671, 35.760376, 36.893536>,  <27.420700, 35.246979, 36.843479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021671, 35.760376, 36.893536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247486, 35.682644, 37.214417>,  <28.382975, 35.636005, 37.406944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247486, 35.682644, 37.214417>,  <28.021671, 35.760376, 36.893536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247486, 35.682644, 37.214417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369725, 0.928472, -0.035264,
		-0.737972, 0.316504, 0.596005,
		0.564535, -0.194334, 0.802206,
		28.416847, 35.624344, 37.455078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627865, 36.079029, 37.013031>,  <28.021671, 35.760376, 36.893536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627865, 36.079029, 37.013031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499104, 36.456070, 37.048515>,  <28.421846, 36.682297, 37.069805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499104, 36.456070, 37.048515>,  <28.627865, 36.079029, 37.013031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499104, 36.456070, 37.048515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760847, -0.313317, 0.568282,
		0.563462, 0.115435, 0.818037,
		-0.321905, 0.942606, 0.088714,
		28.402533, 36.738853, 37.075130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334110, 35.586075, 37.163040>,  <28.627865, 36.079029, 37.013031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334110, 35.586075, 37.163040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713631, 35.679680, 37.078171>,  <29.941343, 35.735844, 37.027248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713631, 35.679680, 37.078171>,  <29.334110, 35.586075, 37.163040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713631, 35.679680, 37.078171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315877, 0.705129, -0.634834,
		0.001052, 0.669352, 0.742945,
		0.948799, 0.234011, -0.212175,
		29.998270, 35.749882, 37.014519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316687, 36.288914, 37.102959>,  <29.334110, 35.586075, 37.163040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316687, 36.288914, 37.102959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632597, 36.173084, 36.886662>,  <29.822144, 36.103588, 36.756882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632597, 36.173084, 36.886662>,  <29.316687, 36.288914, 37.102959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632597, 36.173084, 36.886662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262090, 0.637726, -0.724302,
		0.554584, 0.713759, 0.427766,
		0.789775, -0.289573, -0.540742,
		29.869530, 36.086212, 36.724438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531271, 36.856258, 36.749508>,  <29.316687, 36.288914, 37.102959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531271, 36.856258, 36.749508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702480, 36.565426, 36.534790>,  <29.805206, 36.390926, 36.405960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702480, 36.565426, 36.534790>,  <29.531271, 36.856258, 36.749508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702480, 36.565426, 36.534790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235019, 0.483975, -0.842932,
		0.872676, 0.486950, 0.036274,
		0.428022, -0.727081, -0.536796,
		29.830887, 36.347301, 36.373753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910650, 37.207184, 36.224461>,  <29.531271, 36.856258, 36.749508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910650, 37.207184, 36.224461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847242, 36.827778, 36.114780>,  <29.809198, 36.600132, 36.048973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847242, 36.827778, 36.114780>,  <29.910650, 37.207184, 36.224461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847242, 36.827778, 36.114780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129600, 0.295294, -0.946575,
		0.978813, -0.114515, -0.169738,
		-0.158520, -0.948519, -0.274197,
		29.799686, 36.543221, 36.032520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393988, 37.044086, 35.675861>,  <29.910650, 37.207184, 36.224461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393988, 37.044086, 35.675861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069136, 36.811214, 35.660309>,  <29.874224, 36.671490, 35.650978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069136, 36.811214, 35.660309>,  <30.393988, 37.044086, 35.675861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069136, 36.811214, 35.660309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096326, 0.199499, -0.975152,
		0.575471, -0.788205, -0.218098,
		-0.812129, -0.582180, -0.038881,
		29.825497, 36.636562, 35.648643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351318, 36.451870, 35.126942>,  <30.393988, 37.044086, 35.675861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351318, 36.451870, 35.126942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987297, 36.592827, 35.214230>,  <29.768885, 36.677402, 35.266602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987297, 36.592827, 35.214230>,  <30.351318, 36.451870, 35.126942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987297, 36.592827, 35.214230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115219, 0.290658, -0.949865,
		-0.398155, -0.889571, -0.223912,
		-0.910053, 0.352394, 0.218222,
		29.714281, 36.698544, 35.279697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965311, 36.326241, 34.588806>,  <30.351318, 36.451870, 35.126942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965311, 36.326241, 34.588806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752937, 36.617970, 34.761406>,  <29.625513, 36.793007, 34.864967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752937, 36.617970, 34.761406>,  <29.965311, 36.326241, 34.588806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752937, 36.617970, 34.761406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305003, 0.310603, -0.900277,
		-0.790621, -0.609597, 0.057537,
		-0.530935, 0.729326, 0.431498,
		29.593657, 36.836769, 34.890854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284645, 36.424084, 34.493717>,  <29.965311, 36.326241, 34.588806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284645, 36.424084, 34.493717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069403, 36.108025, 34.376339>,  <28.940258, 35.918388, 34.305912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069403, 36.108025, 34.376339>,  <29.284645, 36.424084, 34.493717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069403, 36.108025, 34.376339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744603, -0.282482, -0.604790,
		0.394981, -0.543940, 0.740351,
		-0.538105, -0.790148, -0.293444,
		28.907970, 35.870979, 34.288307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888411, 36.348793, 35.097984>,  <29.284645, 36.424084, 34.493717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888411, 36.348793, 35.097984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286785, 36.384792, 35.096439>,  <29.525810, 36.406391, 35.095512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286785, 36.384792, 35.096439>,  <28.888411, 36.348793, 35.097984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286785, 36.384792, 35.096439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038162, -0.382675, 0.923094,
		0.081599, -0.919489, -0.384554,
		0.995935, 0.089999, -0.003863,
		29.585566, 36.411793, 35.095280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169271, 35.654182, 35.394810>,  <28.888411, 36.348793, 35.097984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169271, 35.654182, 35.394810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415831, 35.963036, 35.456608>,  <29.563766, 36.148346, 35.493687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415831, 35.963036, 35.456608>,  <29.169271, 35.654182, 35.394810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415831, 35.963036, 35.456608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186120, -0.333498, 0.924196,
		0.765122, -0.540920, -0.349277,
		0.616399, 0.772130, 0.154491,
		29.600750, 36.194675, 35.502956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670567, 35.239738, 35.550491>,  <29.169271, 35.654182, 35.394810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670567, 35.239738, 35.550491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722971, 35.610756, 35.690487>,  <29.754414, 35.833366, 35.774483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722971, 35.610756, 35.690487>,  <29.670567, 35.239738, 35.550491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722971, 35.610756, 35.690487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239412, -0.372186, 0.896749,
		0.962038, -0.033694, -0.270827,
		0.131013, 0.927546, 0.349991,
		29.762276, 35.889019, 35.795483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381300, 35.360363, 35.761917>,  <29.670567, 35.239738, 35.550491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381300, 35.360363, 35.761917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203524, 35.655025, 35.965801>,  <30.096859, 35.831825, 36.088131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203524, 35.655025, 35.965801>,  <30.381300, 35.360363, 35.761917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203524, 35.655025, 35.965801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247198, -0.446051, 0.860193,
		0.861027, 0.508303, 0.016142,
		-0.444439, 0.736659, 0.509713,
		30.070192, 35.876022, 36.118713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981297, 35.634377, 36.172012>,  <30.381300, 35.360363, 35.761917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981297, 35.634377, 36.172012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633949, 35.756905, 36.328014>,  <30.425541, 35.830421, 36.421616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633949, 35.756905, 36.328014>,  <30.981297, 35.634377, 36.172012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633949, 35.756905, 36.328014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282246, -0.341365, 0.896553,
		0.407762, 0.888617, 0.209975,
		-0.868370, 0.306316, 0.390005,
		30.373438, 35.848801, 36.445015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176075, 35.982143, 36.732254>,  <30.981297, 35.634377, 36.172012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176075, 35.982143, 36.732254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794399, 35.871326, 36.777462>,  <30.565393, 35.804836, 36.804588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794399, 35.871326, 36.777462>,  <31.176075, 35.982143, 36.732254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794399, 35.871326, 36.777462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203511, -0.324022, 0.923901,
		-0.219341, 0.904575, 0.365560,
		-0.954187, -0.277045, 0.113019,
		30.508142, 35.788212, 36.811367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550661, 35.448624, 37.008125>,  <31.176075, 35.982143, 36.732254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550661, 35.448624, 37.008125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919735, 35.540524, 37.131977>,  <32.141178, 35.595661, 37.206287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919735, 35.540524, 37.131977>,  <31.550661, 35.448624, 37.008125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919735, 35.540524, 37.131977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384034, -0.618937, -0.685153,
		0.034230, 0.751088, -0.659314,
		0.922684, 0.229746, 0.309629,
		32.196541, 35.609447, 37.224865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811567, 35.610115, 36.402653>,  <31.550661, 35.448624, 37.008125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811567, 35.610115, 36.402653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119759, 35.562717, 36.653198>,  <32.304672, 35.534279, 36.803524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119759, 35.562717, 36.653198>,  <31.811567, 35.610115, 36.402653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119759, 35.562717, 36.653198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479346, -0.540042, -0.691796,
		0.420231, 0.833256, -0.359292,
		0.770476, -0.118489, 0.626360,
		32.350903, 35.527172, 36.841106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445099, 35.682568, 36.008987>,  <31.811567, 35.610115, 36.402653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445099, 35.682568, 36.008987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548313, 35.481468, 36.338997>,  <32.610241, 35.360809, 36.537003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548313, 35.481468, 36.338997>,  <32.445099, 35.682568, 36.008987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548313, 35.481468, 36.338997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637140, -0.553382, -0.536489,
		0.726271, 0.664089, 0.177528,
		0.258036, -0.502747, 0.825023,
		32.625725, 35.330643, 36.586502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237144, 35.676617, 36.169487>,  <32.445099, 35.682568, 36.008987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237144, 35.676617, 36.169487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099724, 35.346184, 36.348175>,  <33.017273, 35.147923, 36.455387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099724, 35.346184, 36.348175>,  <33.237144, 35.676617, 36.169487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099724, 35.346184, 36.348175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579185, -0.560810, -0.591639,
		0.739269, 0.055476, 0.671121,
		-0.343550, -0.826084, 0.446720,
		32.996658, 35.098358, 36.482193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855694, 35.356415, 36.209415>,  <33.237144, 35.676617, 36.169487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855694, 35.356415, 36.209415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564102, 35.084332, 36.240143>,  <33.389149, 34.921082, 36.258579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564102, 35.084332, 36.240143>,  <33.855694, 35.356415, 36.209415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564102, 35.084332, 36.240143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470641, -0.579520, -0.665322,
		0.497078, -0.448852, 0.742594,
		-0.728979, -0.680212, 0.076819,
		33.345409, 34.880268, 36.263187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125057, 34.679081, 36.321896>,  <33.855694, 35.356415, 36.209415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125057, 34.679081, 36.321896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773922, 34.577961, 36.159172>,  <33.563240, 34.517288, 36.061539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773922, 34.577961, 36.159172>,  <34.125057, 34.679081, 36.321896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773922, 34.577961, 36.159172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456584, -0.698257, -0.551334,
		-0.144681, -0.669724, 0.728379,
		-0.877837, -0.252799, -0.406810,
		33.510571, 34.502121, 36.037128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353195, 34.123028, 36.157150>,  <34.125057, 34.679081, 36.321896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353195, 34.123028, 36.157150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003319, 34.163265, 35.967499>,  <33.793392, 34.187408, 35.853706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003319, 34.163265, 35.967499>,  <34.353195, 34.123028, 36.157150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003319, 34.163265, 35.967499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335659, -0.579968, -0.742273,
		-0.349647, -0.808405, 0.473528,
		-0.874689, 0.100590, -0.474133,
		33.740913, 34.193443, 35.825260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180023, 33.488682, 35.862854>,  <34.353195, 34.123028, 36.157150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180023, 33.488682, 35.862854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917179, 33.707470, 35.655384>,  <33.759472, 33.838741, 35.530903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917179, 33.707470, 35.655384>,  <34.180023, 33.488682, 35.862854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917179, 33.707470, 35.655384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343678, -0.395012, -0.851969,
		-0.670885, -0.738098, 0.071586,
		-0.657114, 0.546971, -0.518676,
		33.720043, 33.871559, 35.499783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965439, 33.083752, 35.427803>,  <34.180023, 33.488682, 35.862854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965439, 33.083752, 35.427803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876713, 33.431652, 35.251472>,  <33.823479, 33.640392, 35.145672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876713, 33.431652, 35.251472>,  <33.965439, 33.083752, 35.427803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876713, 33.431652, 35.251472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234399, -0.391276, -0.889922,
		-0.946497, -0.300725, -0.117079,
		-0.221811, 0.869752, -0.440831,
		33.810169, 33.692577, 35.119225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509701, 32.945705, 34.771816>,  <33.965439, 33.083752, 35.427803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509701, 32.945705, 34.771816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656593, 33.316589, 34.742352>,  <33.744728, 33.539120, 34.724670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656593, 33.316589, 34.742352>,  <33.509701, 32.945705, 34.771816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656593, 33.316589, 34.742352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340921, -0.207867, -0.916823,
		-0.865397, 0.311575, -0.392440,
		0.367234, 0.927207, -0.073665,
		33.766762, 33.594753, 34.720253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328384, 33.177547, 34.008640>,  <33.509701, 32.945705, 34.771816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328384, 33.177547, 34.008640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625160, 33.403702, 34.152782>,  <33.803226, 33.539394, 34.239269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625160, 33.403702, 34.152782>,  <33.328384, 33.177547, 34.008640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625160, 33.403702, 34.152782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389194, 0.074462, -0.918141,
		-0.545937, 0.821458, -0.164798,
		0.741944, 0.565386, 0.360359,
		33.847744, 33.573318, 34.260891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462204, 33.768505, 33.599319>,  <33.328384, 33.177547, 34.008640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462204, 33.768505, 33.599319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803448, 33.781796, 33.807590>,  <34.008194, 33.789772, 33.932552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803448, 33.781796, 33.807590>,  <33.462204, 33.768505, 33.599319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803448, 33.781796, 33.807590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493664, 0.271534, -0.826175,
		-0.168835, 0.961855, 0.215243,
		0.853106, 0.033230, 0.520678,
		34.059380, 33.791763, 33.963795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730000, 34.402462, 33.429462>,  <33.462204, 33.768505, 33.599319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730000, 34.402462, 33.429462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025902, 34.167511, 33.560760>,  <34.203445, 34.026539, 33.639538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025902, 34.167511, 33.560760>,  <33.730000, 34.402462, 33.429462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025902, 34.167511, 33.560760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574924, 0.298306, -0.761889,
		0.349598, 0.752331, 0.558372,
		0.739759, -0.587377, 0.328246,
		34.247829, 33.991299, 33.659233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253273, 34.748821, 33.221313>,  <33.730000, 34.402462, 33.429462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253273, 34.748821, 33.221313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409603, 34.391880, 33.311611>,  <34.503403, 34.177715, 33.365791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409603, 34.391880, 33.311611>,  <34.253273, 34.748821, 33.221313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409603, 34.391880, 33.311611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690948, 0.122378, -0.712470,
		0.608147, 0.434434, 0.664398,
		0.390829, -0.892351, 0.225748,
		34.526852, 34.124176, 33.379337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979504, 34.908298, 33.246555>,  <34.253273, 34.748821, 33.221313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979504, 34.908298, 33.246555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921360, 34.523636, 33.153530>,  <34.886475, 34.292839, 33.097713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921360, 34.523636, 33.153530>,  <34.979504, 34.908298, 33.246555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921360, 34.523636, 33.153530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697440, 0.067125, -0.713492,
		0.701746, -0.265912, 0.660941,
		-0.145361, -0.961657, -0.232562,
		34.877750, 34.235138, 33.083763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572605, 34.864254, 32.938282>,  <34.979504, 34.908298, 33.246555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572605, 34.864254, 32.938282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382900, 34.532295, 32.820740>,  <35.269077, 34.333122, 32.750214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382900, 34.532295, 32.820740>,  <35.572605, 34.864254, 32.938282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382900, 34.532295, 32.820740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473947, 0.040615, -0.879616,
		0.741922, -0.556442, 0.374064,
		-0.474263, -0.829893, -0.293857,
		35.240620, 34.283329, 32.732582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054592, 34.231392, 32.817745>,  <35.572605, 34.864254, 32.938282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054592, 34.231392, 32.817745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734360, 34.185841, 32.582424>,  <35.542221, 34.158512, 32.441231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734360, 34.185841, 32.582424>,  <36.054592, 34.231392, 32.817745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734360, 34.185841, 32.582424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597239, -0.071785, -0.798845,
		0.048736, -0.990898, 0.125480,
		-0.800581, -0.113874, -0.588304,
		35.494186, 34.151680, 32.405933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272610, 33.774113, 32.232735>,  <36.054592, 34.231392, 32.817745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272610, 33.774113, 32.232735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939228, 33.952293, 32.101936>,  <35.739201, 34.059204, 32.023457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939228, 33.952293, 32.101936>,  <36.272610, 33.774113, 32.232735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939228, 33.952293, 32.101936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341067, -0.050907, -0.938660,
		-0.434776, -0.893857, -0.109501,
		-0.833453, 0.445454, -0.326998,
		35.689194, 34.085930, 32.003838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125427, 33.307404, 31.669437>,  <36.272610, 33.774113, 32.232735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125427, 33.307404, 31.669437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890465, 33.622517, 31.595297>,  <35.749489, 33.811584, 31.550812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890465, 33.622517, 31.595297>,  <36.125427, 33.307404, 31.669437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890465, 33.622517, 31.595297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067206, -0.180757, -0.981229,
		-0.806498, -0.588835, 0.053234,
		-0.587405, 0.787782, -0.185354,
		35.714245, 33.858852, 31.539690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546745, 33.142223, 31.096106>,  <36.125427, 33.307404, 31.669437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546745, 33.142223, 31.096106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601021, 33.538250, 31.110855>,  <35.633587, 33.775867, 31.119705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601021, 33.538250, 31.110855>,  <35.546745, 33.142223, 31.096106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601021, 33.538250, 31.110855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030928, 0.032966, -0.998978,
		-0.990269, 0.136689, -0.026148,
		0.135688, 0.990065, 0.036873,
		35.641727, 33.835270, 31.121918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235355, 33.341434, 30.477137>,  <35.546745, 33.142223, 31.096106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235355, 33.341434, 30.477137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473526, 33.639259, 30.597872>,  <35.616428, 33.817955, 30.670313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473526, 33.639259, 30.597872>,  <35.235355, 33.341434, 30.477137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473526, 33.639259, 30.597872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287253, 0.153566, -0.945465,
		-0.750304, 0.649655, -0.122440,
		0.595423, 0.744557, 0.301837,
		35.652153, 33.862625, 30.688423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011078, 33.936420, 30.160755>,  <35.235355, 33.341434, 30.477137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011078, 33.936420, 30.160755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389709, 34.023720, 30.255720>,  <35.616886, 34.076099, 30.312698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389709, 34.023720, 30.255720>,  <35.011078, 33.936420, 30.160755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389709, 34.023720, 30.255720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175631, 0.268543, -0.947121,
		-0.270460, 0.938218, 0.215866,
		0.946575, 0.218246, 0.237410,
		35.673683, 34.089195, 30.326942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047165, 34.582317, 29.885359>,  <35.011078, 33.936420, 30.160755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047165, 34.582317, 29.885359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412006, 34.419357, 29.903627>,  <35.630913, 34.321579, 29.914589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412006, 34.419357, 29.903627>,  <35.047165, 34.582317, 29.885359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412006, 34.419357, 29.903627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189965, 0.321293, -0.927731,
		0.363288, 0.854864, 0.370446,
		0.912105, -0.407405, 0.045673,
		35.685638, 34.297134, 29.917330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461243, 35.017872, 29.368336>,  <35.047165, 34.582317, 29.885359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461243, 35.017872, 29.368336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701370, 34.719448, 29.483587>,  <35.845448, 34.540394, 29.552738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701370, 34.719448, 29.483587>,  <35.461243, 35.017872, 29.368336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701370, 34.719448, 29.483587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509084, 0.078617, -0.857119,
		0.616809, 0.661224, 0.427001,
		0.600317, -0.746058, 0.288127,
		35.881466, 34.495632, 29.570024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133194, 35.205238, 29.245609>,  <35.461243, 35.017872, 29.368336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133194, 35.205238, 29.245609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145206, 34.805607, 29.257872>,  <36.152412, 34.565826, 29.265228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145206, 34.805607, 29.257872>,  <36.133194, 35.205238, 29.245609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145206, 34.805607, 29.257872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389946, -0.016529, -0.920689,
		0.920348, 0.039599, 0.389091,
		0.030027, -0.999079, 0.030654,
		36.154213, 34.505882, 29.267067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770123, 35.019474, 28.819937>,  <36.133194, 35.205238, 29.245609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770123, 35.019474, 28.819937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527695, 34.701443, 28.829124>,  <36.382236, 34.510624, 28.834637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527695, 34.701443, 28.829124>,  <36.770123, 35.019474, 28.819937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527695, 34.701443, 28.829124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223694, -0.198085, -0.954318,
		0.763306, -0.573249, 0.297909,
		-0.606073, -0.795077, 0.022967,
		36.345871, 34.462921, 28.836014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153980, 34.485115, 28.501528>,  <36.770123, 35.019474, 28.819937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153980, 34.485115, 28.501528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770794, 34.374741, 28.470154>,  <36.540882, 34.308517, 28.451328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770794, 34.374741, 28.470154>,  <37.153980, 34.485115, 28.501528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770794, 34.374741, 28.470154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121420, -0.142300, -0.982348,
		0.259905, -0.950584, 0.169823,
		-0.957970, -0.275937, -0.078436,
		36.483402, 34.291958, 28.446623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171841, 33.942028, 28.067528>,  <37.153980, 34.485115, 28.501528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171841, 33.942028, 28.067528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791901, 34.066460, 28.054798>,  <36.563938, 34.141117, 28.047161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791901, 34.066460, 28.054798>,  <37.171841, 33.942028, 28.067528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791901, 34.066460, 28.054798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021983, -0.167943, -0.985552,
		-0.311931, -0.935427, 0.166359,
		-0.949851, 0.311081, -0.031823,
		36.506947, 34.159782, 28.045252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753544, 33.377495, 27.793196>,  <37.171841, 33.942028, 28.067528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753544, 33.377495, 27.793196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592224, 33.736622, 27.722467>,  <36.495430, 33.952099, 27.680031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592224, 33.736622, 27.722467>,  <36.753544, 33.377495, 27.793196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592224, 33.736622, 27.722467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053796, -0.169636, -0.984037,
		-0.913484, -0.406377, 0.020115,
		-0.403303, 0.897820, -0.176821,
		36.471233, 34.005966, 27.669420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299828, 33.208843, 27.190283>,  <36.753544, 33.377495, 27.793196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299828, 33.208843, 27.190283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324951, 33.606396, 27.226620>,  <36.340027, 33.844929, 27.248421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324951, 33.606396, 27.226620>,  <36.299828, 33.208843, 27.190283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324951, 33.606396, 27.226620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044845, 0.088117, -0.995100,
		-0.997018, 0.066574, -0.039036,
		0.062808, 0.993883, 0.090840,
		36.343792, 33.904560, 27.253872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830635, 33.467754, 26.684546>,  <36.299828, 33.208843, 27.190283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830635, 33.467754, 26.684546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070084, 33.779995, 26.756449>,  <36.213753, 33.967339, 26.799591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070084, 33.779995, 26.756449>,  <35.830635, 33.467754, 26.684546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070084, 33.779995, 26.756449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175617, 0.091052, -0.980239,
		-0.781543, 0.618361, -0.082581,
		0.598623, 0.780602, 0.179756,
		36.249672, 34.014175, 26.810375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671890, 33.947788, 26.165308>,  <35.830635, 33.467754, 26.684546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671890, 33.947788, 26.165308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034126, 34.058681, 26.293709>,  <36.251469, 34.125217, 26.370749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034126, 34.058681, 26.293709>,  <35.671890, 33.947788, 26.165308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034126, 34.058681, 26.293709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300575, 0.114499, -0.946860,
		-0.299254, 0.953956, 0.020360,
		0.905595, 0.277232, 0.321000,
		36.305805, 34.141850, 26.390009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858250, 34.651924, 25.905884>,  <35.671890, 33.947788, 26.165308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858250, 34.651924, 25.905884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211632, 34.480572, 25.981775>,  <36.423660, 34.377762, 26.027311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211632, 34.480572, 25.981775>,  <35.858250, 34.651924, 25.905884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211632, 34.480572, 25.981775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299425, 0.204776, -0.931886,
		0.360350, 0.880089, 0.309179,
		0.883455, -0.428381, 0.189730,
		36.476669, 34.352058, 26.038694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361816, 35.005108, 25.509758>,  <35.858250, 34.651924, 25.905884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361816, 35.005108, 25.509758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571663, 34.672588, 25.583208>,  <36.697571, 34.473076, 25.627277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571663, 34.672588, 25.583208>,  <36.361816, 35.005108, 25.509758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571663, 34.672588, 25.583208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538878, 0.157274, -0.827572,
		0.659083, 0.533107, 0.530478,
		0.524615, -0.831301, 0.183623,
		36.729046, 34.423199, 25.638294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062805, 35.256805, 25.601734>,  <36.361816, 35.005108, 25.509758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062805, 35.256805, 25.601734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057747, 34.867542, 25.509823>,  <37.054714, 34.633984, 25.454676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057747, 34.867542, 25.509823>,  <37.062805, 35.256805, 25.601734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057747, 34.867542, 25.509823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599639, 0.176514, -0.780561,
		0.800171, -0.147653, 0.581313,
		-0.012643, -0.973161, -0.229780,
		37.053955, 34.575596, 25.440889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714771, 35.076317, 25.455475>,  <37.062805, 35.256805, 25.601734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714771, 35.076317, 25.455475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503498, 34.795750, 25.264042>,  <37.376736, 34.627411, 25.149181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503498, 34.795750, 25.264042>,  <37.714771, 35.076317, 25.455475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503498, 34.795750, 25.264042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553874, 0.142618, -0.820295,
		0.643623, -0.698337, 0.313169,
		-0.528179, -0.701417, -0.478583,
		37.345043, 34.585323, 25.120466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174847, 34.677261, 25.019594>,  <37.714771, 35.076317, 25.455475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174847, 34.677261, 25.019594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806541, 34.633503, 24.869804>,  <37.585560, 34.607250, 24.779930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806541, 34.633503, 24.869804>,  <38.174847, 34.677261, 25.019594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806541, 34.633503, 24.869804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312610, 0.367366, -0.875966,
		0.233392, -0.923621, -0.304060,
		-0.920762, -0.109392, -0.374474,
		37.530312, 34.600685, 24.757462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336689, 34.352303, 24.443731>,  <38.174847, 34.677261, 25.019594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336689, 34.352303, 24.443731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983879, 34.517826, 24.353586>,  <37.772194, 34.617142, 24.299500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983879, 34.517826, 24.353586>,  <38.336689, 34.352303, 24.443731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983879, 34.517826, 24.353586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378048, 0.336000, -0.862661,
		-0.281255, -0.846089, -0.452801,
		-0.882029, 0.413808, -0.225360,
		37.719269, 34.641968, 24.285978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316059, 34.407497, 23.778751>,  <38.336689, 34.352303, 24.443731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316059, 34.407497, 23.778751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999172, 34.644447, 23.837381>,  <37.809040, 34.786617, 23.872559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999172, 34.644447, 23.837381>,  <38.316059, 34.407497, 23.778751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999172, 34.644447, 23.837381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179055, 0.455261, -0.872168,
		-0.583383, -0.664699, -0.466733,
		-0.792214, 0.592379, 0.146573,
		37.761509, 34.822163, 23.881353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866776, 34.408596, 23.168295>,  <38.316059, 34.407497, 23.778751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866776, 34.408596, 23.168295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756210, 34.747505, 23.349726>,  <37.689873, 34.950851, 23.458584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756210, 34.747505, 23.349726>,  <37.866776, 34.408596, 23.168295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756210, 34.747505, 23.349726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184166, 0.509917, -0.840279,
		-0.943229, -0.148729, -0.296984,
		-0.276411, 0.847269, 0.453577,
		37.673286, 35.001686, 23.485798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407234, 34.794937, 22.667135>,  <37.866776, 34.408596, 23.168295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407234, 34.794937, 22.667135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536098, 35.072735, 22.924473>,  <37.613415, 35.239414, 23.078876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536098, 35.072735, 22.924473>,  <37.407234, 34.794937, 22.667135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536098, 35.072735, 22.924473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000399, 0.679676, -0.733512,
		-0.946686, 0.236049, 0.219240,
		0.322157, 0.694493, 0.643346,
		37.632744, 35.281082, 23.117477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028217, 35.443474, 22.518250>,  <37.407234, 34.794937, 22.667135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028217, 35.443474, 22.518250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353325, 35.587784, 22.701225>,  <37.548389, 35.674370, 22.811010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353325, 35.587784, 22.701225>,  <37.028217, 35.443474, 22.518250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353325, 35.587784, 22.701225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135616, 0.880779, -0.453693,
		-0.566585, 0.306710, 0.764794,
		0.812767, 0.360774, 0.457441,
		37.597157, 35.696014, 22.838457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839439, 36.134502, 22.584484>,  <37.028217, 35.443474, 22.518250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839439, 36.134502, 22.584484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234089, 36.106583, 22.643410>,  <37.470879, 36.089832, 22.678764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234089, 36.106583, 22.643410>,  <36.839439, 36.134502, 22.584484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234089, 36.106583, 22.643410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143484, 0.800746, -0.581565,
		-0.077369, 0.594923, 0.800050,
		0.986624, -0.069799, 0.147315,
		37.530075, 36.085644, 22.687605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822380, 36.891930, 22.255951>,  <36.839439, 36.134502, 22.584484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822380, 36.891930, 22.255951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958851, 37.265438, 22.299168>,  <37.040733, 37.489544, 22.325098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958851, 37.265438, 22.299168>,  <36.822380, 36.891930, 22.255951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958851, 37.265438, 22.299168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240904, 0.024242, -0.970246,
		-0.908606, 0.357052, -0.216678,
		0.341176, 0.933770, 0.108041,
		37.061203, 37.545570, 22.331579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399410, 37.342125, 21.844271>,  <36.822380, 36.891930, 22.255951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399410, 37.342125, 21.844271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739532, 37.550125, 21.876713>,  <36.943607, 37.674923, 21.896177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739532, 37.550125, 21.876713>,  <36.399410, 37.342125, 21.844271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739532, 37.550125, 21.876713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111918, -0.028079, -0.993321,
		-0.514245, 0.853707, -0.082073,
		0.850309, 0.519996, 0.081106,
		36.994625, 37.706123, 21.901045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384029, 37.857334, 21.374208>,  <36.399410, 37.342125, 21.844271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384029, 37.857334, 21.374208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762440, 37.749786, 21.446592>,  <36.989487, 37.685257, 21.490023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762440, 37.749786, 21.446592>,  <36.384029, 37.857334, 21.374208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762440, 37.749786, 21.446592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160397, -0.096769, -0.982298,
		0.281621, 0.958303, -0.048420,
		0.946024, -0.268870, 0.180961,
		37.046246, 37.669125, 21.500881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872967, 38.279926, 21.058769>,  <36.384029, 37.857334, 21.374208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872967, 38.279926, 21.058769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061108, 37.932312, 21.120142>,  <37.173992, 37.723743, 21.156965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061108, 37.932312, 21.120142>,  <36.872967, 38.279926, 21.058769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061108, 37.932312, 21.120142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196875, -0.066151, -0.978195,
		0.860239, 0.490301, 0.139978,
		0.470350, -0.869039, 0.153433,
		37.202213, 37.671600, 21.166172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026718, 37.654209, 20.483419>,  <36.872967, 38.279926, 21.058769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026718, 37.654209, 20.483419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983910, 38.017757, 20.322178>,  <36.958225, 38.235886, 20.225433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983910, 38.017757, 20.322178>,  <37.026718, 37.654209, 20.483419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983910, 38.017757, 20.322178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989048, 0.138763, 0.050284,
		0.101637, -0.393307, -0.913772,
		-0.107021, 0.908875, -0.403103,
		36.951805, 38.290421, 20.201246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033993, 37.083015, 21.140390>,  <37.026718, 37.654209, 20.483419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033993, 37.083015, 21.140390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184803, 37.096565, 21.510624>,  <37.275288, 37.104694, 21.732763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184803, 37.096565, 21.510624>,  <37.033993, 37.083015, 21.140390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184803, 37.096565, 21.510624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094940, -0.995480, -0.002242,
		0.921325, 0.088721, -0.378536,
		0.377024, 0.033873, 0.925584,
		37.297909, 37.106728, 21.788300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759434, 36.858044, 21.154320>,  <37.033993, 37.083015, 21.140390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759434, 36.858044, 21.154320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603954, 36.792881, 21.517059>,  <37.510666, 36.753784, 21.734703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603954, 36.792881, 21.517059>,  <37.759434, 36.858044, 21.154320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603954, 36.792881, 21.517059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276765, -0.959435, -0.053723,
		0.878816, 0.230103, 0.418013,
		-0.388694, -0.162904, 0.906851,
		37.487347, 36.744011, 21.789114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054844, 36.873528, 21.834230>,  <37.759434, 36.858044, 21.154320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054844, 36.873528, 21.834230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859543, 37.122684, 21.589735>,  <37.742363, 37.272179, 21.443037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859543, 37.122684, 21.589735>,  <38.054844, 36.873528, 21.834230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859543, 37.122684, 21.589735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323153, 0.521570, 0.789643,
		0.810665, 0.583072, -0.053371,
		-0.488256, 0.622890, -0.611241,
		37.713066, 37.309551, 21.406363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316349, 37.552689, 21.908129>,  <38.054844, 36.873528, 21.834230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316349, 37.552689, 21.908129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941555, 37.572124, 21.769743>,  <37.716679, 37.583786, 21.686710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941555, 37.572124, 21.769743>,  <38.316349, 37.552689, 21.908129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941555, 37.572124, 21.769743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248921, 0.602006, 0.758701,
		0.245136, 0.797012, -0.551978,
		-0.936988, 0.048586, -0.345967,
		37.660458, 37.586700, 21.665953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116974, 38.268028, 22.063736>,  <38.316349, 37.552689, 21.908129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116974, 38.268028, 22.063736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757851, 38.099236, 22.013325>,  <37.542377, 37.997959, 21.983078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757851, 38.099236, 22.013325>,  <38.116974, 38.268028, 22.063736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757851, 38.099236, 22.013325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280308, 0.326828, 0.902558,
		-0.339670, 0.845647, -0.411711,
		-0.897804, -0.421978, -0.126028,
		37.488510, 37.972641, 21.975517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712742, 38.747108, 22.467369>,  <38.116974, 38.268028, 22.063736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712742, 38.747108, 22.467369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498669, 38.410973, 22.432917>,  <37.370224, 38.209293, 22.412245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498669, 38.410973, 22.432917>,  <37.712742, 38.747108, 22.467369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498669, 38.410973, 22.432917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294654, 0.090148, 0.951342,
		-0.791683, 0.534517, -0.295854,
		-0.535179, -0.840337, -0.086129,
		37.338116, 38.158871, 22.407078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022076, 38.844627, 22.780830>,  <37.712742, 38.747108, 22.467369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022076, 38.844627, 22.780830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163784, 38.470730, 22.769981>,  <37.248810, 38.246391, 22.763472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163784, 38.470730, 22.769981>,  <37.022076, 38.844627, 22.780830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163784, 38.470730, 22.769981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155299, -0.087410, 0.983992,
		-0.922156, -0.344391, -0.176133,
		0.354274, -0.934748, -0.027122,
		37.270065, 38.190304, 22.761845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575714, 38.325520, 23.102325>,  <37.022076, 38.844627, 22.780830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575714, 38.325520, 23.102325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930134, 38.140106, 23.105141>,  <37.142784, 38.028858, 23.106831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930134, 38.140106, 23.105141>,  <36.575714, 38.325520, 23.102325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930134, 38.140106, 23.105141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023841, -0.030400, 0.999254,
		-0.462976, -0.885556, -0.037987,
		0.886050, -0.463536, 0.007038,
		37.195950, 38.001045, 23.107252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495796, 37.771919, 23.562004>,  <36.575714, 38.325520, 23.102325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495796, 37.771919, 23.562004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885250, 37.863068, 23.557674>,  <37.118923, 37.917755, 23.555077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885250, 37.863068, 23.557674>,  <36.495796, 37.771919, 23.562004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885250, 37.863068, 23.557674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062222, -0.219602, 0.973603,
		0.219479, -0.948604, -0.227990,
		0.973631, 0.227871, -0.010826,
		37.177338, 37.931427, 23.554426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769093, 37.200768, 23.923388>,  <36.495796, 37.771919, 23.562004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769093, 37.200768, 23.923388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039875, 37.493889, 23.950911>,  <37.202343, 37.669762, 23.967424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039875, 37.493889, 23.950911>,  <36.769093, 37.200768, 23.923388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039875, 37.493889, 23.950911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081335, -0.167389, 0.982530,
		0.731518, -0.659531, -0.172917,
		0.676954, 0.732802, 0.068806,
		37.242962, 37.713730, 23.971552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231491, 36.954788, 24.275469>,  <36.769093, 37.200768, 23.923388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231491, 36.954788, 24.275469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314545, 37.341217, 24.336899>,  <37.364376, 37.573074, 24.373756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314545, 37.341217, 24.336899>,  <37.231491, 36.954788, 24.275469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314545, 37.341217, 24.336899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346448, -0.219445, 0.912040,
		0.914801, -0.136166, -0.380260,
		0.207635, 0.966076, 0.153574,
		37.376835, 37.631039, 24.382971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716667, 36.907906, 24.793373>,  <37.231491, 36.954788, 24.275469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716667, 36.907906, 24.793373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647755, 37.301628, 24.808674>,  <37.606407, 37.537861, 24.817854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647755, 37.301628, 24.808674>,  <37.716667, 36.907906, 24.793373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647755, 37.301628, 24.808674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179030, -0.006900, 0.983819,
		0.968642, 0.176343, -0.175031,
		-0.172282, 0.984305, 0.038254,
		37.596069, 37.596920, 24.820150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187801, 37.159195, 25.227737>,  <37.716667, 36.907906, 24.793373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187801, 37.159195, 25.227737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891823, 37.428265, 25.227743>,  <37.714237, 37.589706, 25.227747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891823, 37.428265, 25.227743>,  <38.187801, 37.159195, 25.227737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891823, 37.428265, 25.227743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130988, 0.144068, 0.980860,
		0.659794, 0.725782, -0.194713,
		-0.739942, 0.672671, 0.000014,
		37.669842, 37.630066, 25.227747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421551, 37.726494, 25.728218>,  <38.187801, 37.159195, 25.227737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421551, 37.726494, 25.728218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024082, 37.717594, 25.684189>,  <37.785599, 37.712254, 25.657772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024082, 37.717594, 25.684189>,  <38.421551, 37.726494, 25.728218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024082, 37.717594, 25.684189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110842, 0.036979, 0.993150,
		-0.018026, 0.999069, -0.039211,
		-0.993675, -0.022248, -0.110073,
		37.725979, 37.710918, 25.651167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073738, 38.289753, 26.203432>,  <38.421551, 37.726494, 25.728218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073738, 38.289753, 26.203432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801579, 38.005955, 26.130039>,  <37.638283, 37.835674, 26.086004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801579, 38.005955, 26.130039>,  <38.073738, 38.289753, 26.203432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801579, 38.005955, 26.130039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168559, -0.092143, 0.981375,
		-0.713191, 0.698657, -0.056898,
		-0.680402, -0.709499, -0.183481,
		37.597458, 37.793106, 26.074995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633633, 38.346535, 26.720114>,  <38.073738, 38.289753, 26.203432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633633, 38.346535, 26.720114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516026, 37.988815, 26.585182>,  <37.445461, 37.774185, 26.504223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516026, 37.988815, 26.585182>,  <37.633633, 38.346535, 26.720114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516026, 37.988815, 26.585182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346373, -0.229247, 0.909655,
		-0.890831, 0.384296, -0.242357,
		-0.294017, -0.894294, -0.337330,
		37.427822, 37.720528, 26.483984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972500, 38.201927, 26.947763>,  <37.633633, 38.346535, 26.720114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972500, 38.201927, 26.947763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082363, 37.826389, 26.864685>,  <37.148281, 37.601067, 26.814838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082363, 37.826389, 26.864685>,  <36.972500, 38.201927, 26.947763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082363, 37.826389, 26.864685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254515, -0.279282, 0.925864,
		-0.927246, -0.201434, -0.315657,
		0.274658, -0.938843, -0.207695,
		37.164761, 37.544735, 26.802376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421333, 37.648575, 27.217730>,  <36.972500, 38.201927, 26.947763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421333, 37.648575, 27.217730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775322, 37.462376, 27.222441>,  <36.987717, 37.350658, 27.225267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775322, 37.462376, 27.222441>,  <36.421333, 37.648575, 27.217730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775322, 37.462376, 27.222441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233740, -0.422217, 0.875842,
		-0.402721, -0.777852, -0.482455,
		0.884975, -0.465489, 0.011779,
		37.040813, 37.322727, 27.225973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259861, 36.918808, 27.199730>,  <36.421333, 37.648575, 27.217730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259861, 36.918808, 27.199730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587654, 37.068073, 27.373720>,  <36.784328, 37.157631, 27.478115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587654, 37.068073, 27.373720>,  <36.259861, 36.918808, 27.199730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587654, 37.068073, 27.373720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367425, -0.240399, 0.898447,
		0.439833, -0.896080, -0.059893,
		0.819479, 0.373160, 0.434978,
		36.833496, 37.180019, 27.504213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335182, 36.465614, 27.734638>,  <36.259861, 36.918808, 27.199730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335182, 36.465614, 27.734638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575005, 36.765739, 27.846041>,  <36.718899, 36.945812, 27.912882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575005, 36.765739, 27.846041>,  <36.335182, 36.465614, 27.734638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575005, 36.765739, 27.846041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352957, -0.064430, 0.933419,
		0.718296, -0.657940, 0.226197,
		0.599559, 0.750309, 0.278504,
		36.754871, 36.990833, 27.929592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622086, 36.231358, 28.405073>,  <36.335182, 36.465614, 27.734638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622086, 36.231358, 28.405073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665272, 36.629017, 28.406839>,  <36.691185, 36.867611, 28.407900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665272, 36.629017, 28.406839>,  <36.622086, 36.231358, 28.405073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665272, 36.629017, 28.406839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395620, 0.038890, 0.917591,
		0.912046, -0.100817, 0.397502,
		0.107968, 0.994145, 0.004416,
		36.697662, 36.927261, 28.408165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902039, 36.407730, 29.134354>,  <36.622086, 36.231358, 28.405073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902039, 36.407730, 29.134354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751663, 36.749065, 28.989861>,  <36.661438, 36.953865, 28.903164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751663, 36.749065, 28.989861>,  <36.902039, 36.407730, 29.134354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751663, 36.749065, 28.989861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418444, 0.191488, 0.887827,
		0.826785, 0.484926, 0.285084,
		-0.375940, 0.853334, -0.361234,
		36.638882, 37.005066, 28.881491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225063, 36.882961, 29.610632>,  <36.902039, 36.407730, 29.134354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225063, 36.882961, 29.610632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903488, 37.045250, 29.436703>,  <36.710541, 37.142624, 29.332346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903488, 37.045250, 29.436703>,  <37.225063, 36.882961, 29.610632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903488, 37.045250, 29.436703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420888, 0.128396, 0.897980,
		0.420156, 0.904935, 0.067539,
		-0.803942, 0.405717, -0.434822,
		36.662304, 37.166965, 29.306255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126717, 37.523186, 29.916348>,  <37.225063, 36.882961, 29.610632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126717, 37.523186, 29.916348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778282, 37.403179, 29.760811>,  <36.569221, 37.331177, 29.667488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778282, 37.403179, 29.760811>,  <37.126717, 37.523186, 29.916348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778282, 37.403179, 29.760811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449849, 0.169685, 0.876837,
		-0.197083, 0.938722, -0.282771,
		-0.871088, -0.300014, -0.388841,
		36.516956, 37.313175, 29.644159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662857, 37.971195, 30.206745>,  <37.126717, 37.523186, 29.916348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662857, 37.971195, 30.206745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416641, 37.700699, 30.044847>,  <36.268913, 37.538403, 29.947710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416641, 37.700699, 30.044847>,  <36.662857, 37.971195, 30.206745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416641, 37.700699, 30.044847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555170, 0.007546, 0.831703,
		-0.559375, 0.736645, -0.380072,
		-0.615538, -0.676238, -0.404742,
		36.231979, 37.497829, 29.923426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003994, 38.151237, 30.448362>,  <36.662857, 37.971195, 30.206745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003994, 38.151237, 30.448362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993816, 37.764809, 30.345558>,  <35.987709, 37.532951, 30.283876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993816, 37.764809, 30.345558>,  <36.003994, 38.151237, 30.448362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993816, 37.764809, 30.345558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563644, -0.198466, 0.801821,
		-0.825626, 0.165268, -0.539471,
		-0.025448, -0.966073, -0.257011,
		35.986183, 37.474987, 30.268456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317112, 37.889042, 30.393337>,  <36.003994, 38.151237, 30.448362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317112, 37.889042, 30.393337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500370, 37.537666, 30.447666>,  <35.610325, 37.326839, 30.480263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500370, 37.537666, 30.447666>,  <35.317112, 37.889042, 30.393337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500370, 37.537666, 30.447666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529470, -0.146957, 0.835503,
		-0.713981, -0.454691, -0.532435,
		0.458141, -0.878441, 0.135821,
		35.637814, 37.274136, 30.488413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774696, 37.396904, 30.479048>,  <35.317112, 37.889042, 30.393337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774696, 37.396904, 30.479048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102139, 37.218029, 30.623220>,  <35.298603, 37.110706, 30.709724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102139, 37.218029, 30.623220>,  <34.774696, 37.396904, 30.479048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102139, 37.218029, 30.623220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472702, -0.168093, 0.865042,
		-0.326249, -0.878504, -0.348988,
		0.818605, -0.447187, 0.360430,
		35.347721, 37.083874, 30.731350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392658, 36.781818, 30.716022>,  <34.774696, 37.396904, 30.479048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392658, 36.781818, 30.716022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748245, 36.818295, 30.895542>,  <34.961597, 36.840179, 31.003254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748245, 36.818295, 30.895542>,  <34.392658, 36.781818, 30.716022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748245, 36.818295, 30.895542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416952, -0.244212, 0.875506,
		0.189442, -0.965424, -0.179074,
		0.888967, 0.091193, 0.448800,
		35.014935, 36.845654, 31.030182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571987, 36.138241, 31.202435>,  <34.392658, 36.781818, 30.716022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571987, 36.138241, 31.202435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759220, 36.470451, 31.323187>,  <34.871559, 36.669777, 31.395639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759220, 36.470451, 31.323187>,  <34.571987, 36.138241, 31.202435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759220, 36.470451, 31.323187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255202, -0.200015, 0.945973,
		0.846035, -0.519830, 0.118329,
		0.468077, 0.830524, 0.301882,
		34.899643, 36.719608, 31.413752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944035, 35.868534, 31.791857>,  <34.571987, 36.138241, 31.202435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944035, 35.868534, 31.791857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955521, 36.267429, 31.819231>,  <34.962414, 36.506767, 31.835655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955521, 36.267429, 31.819231>,  <34.944035, 35.868534, 31.791857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955521, 36.267429, 31.819231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038099, -0.067324, 0.997003,
		0.998861, -0.031236, 0.036061,
		0.028714, 0.997242, 0.068437,
		34.964134, 36.566601, 31.839762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453133, 36.049633, 32.326248>,  <34.944035, 35.868534, 31.791857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453133, 36.049633, 32.326248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238670, 36.385033, 32.287338>,  <35.109993, 36.586273, 32.263992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238670, 36.385033, 32.287338>,  <35.453133, 36.049633, 32.326248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238670, 36.385033, 32.287338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031279, 0.134890, 0.990367,
		0.843540, 0.527948, -0.098549,
		-0.536155, 0.838496, -0.097272,
		35.077824, 36.636581, 32.258156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786816, 36.309704, 32.854519>,  <35.453133, 36.049633, 32.326248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786816, 36.309704, 32.854519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461411, 36.521156, 32.757568>,  <35.266167, 36.648026, 32.699398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461411, 36.521156, 32.757568>,  <35.786816, 36.309704, 32.854519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461411, 36.521156, 32.757568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089737, 0.297672, 0.950441,
		0.574576, 0.794949, -0.194724,
		-0.813517, 0.528627, -0.242372,
		35.217354, 36.679745, 32.684856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853584, 36.975391, 33.100086>,  <35.786816, 36.309704, 32.854519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853584, 36.975391, 33.100086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469833, 36.863197, 33.087929>,  <35.239582, 36.795879, 33.080635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469833, 36.863197, 33.087929>,  <35.853584, 36.975391, 33.100086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469833, 36.863197, 33.087929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137564, 0.371006, 0.918385,
		-0.246316, 0.885259, -0.394519,
		-0.959377, -0.280484, -0.030395,
		35.182022, 36.779053, 33.078812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440853, 37.441135, 33.385910>,  <35.853584, 36.975391, 33.100086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440853, 37.441135, 33.385910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175652, 37.142670, 33.410145>,  <35.016533, 36.963593, 33.424686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175652, 37.142670, 33.410145>,  <35.440853, 37.441135, 33.385910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175652, 37.142670, 33.410145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278060, 0.320590, 0.905486,
		-0.695062, 0.583493, -0.420030,
		-0.663002, -0.746162, 0.060584,
		34.976749, 36.918819, 33.428322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932129, 37.723454, 33.786839>,  <35.440853, 37.441135, 33.385910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932129, 37.723454, 33.786839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843578, 37.333847, 33.805927>,  <34.790447, 37.100082, 33.817383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843578, 37.333847, 33.805927>,  <34.932129, 37.723454, 33.786839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843578, 37.333847, 33.805927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397414, 0.134799, 0.907685,
		-0.890536, 0.181973, -0.416930,
		-0.221376, -0.974020, 0.047725,
		34.777164, 37.041641, 33.820244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247177, 37.642174, 34.241806>,  <34.932129, 37.723454, 33.786839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247177, 37.642174, 34.241806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431145, 37.287003, 34.238617>,  <34.541527, 37.073902, 34.236706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431145, 37.287003, 34.238617>,  <34.247177, 37.642174, 34.241806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431145, 37.287003, 34.238617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277689, -0.152347, 0.948514,
		-0.843422, -0.434029, -0.316635,
		0.459921, -0.887924, -0.007968,
		34.569122, 37.020626, 34.236225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754707, 37.224640, 34.545006>,  <34.247177, 37.642174, 34.241806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754707, 37.224640, 34.545006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109001, 37.042244, 34.579742>,  <34.321579, 36.932808, 34.600582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109001, 37.042244, 34.579742>,  <33.754707, 37.224640, 34.545006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109001, 37.042244, 34.579742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153578, -0.111334, 0.981844,
		-0.438042, -0.882994, -0.168643,
		0.885739, -0.455989, 0.086840,
		34.374722, 36.905449, 34.605793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655125, 36.752037, 35.056797>,  <33.754707, 37.224640, 34.545006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655125, 36.752037, 35.056797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052551, 36.786995, 35.027992>,  <34.291008, 36.807968, 35.010708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052551, 36.786995, 35.027992>,  <33.655125, 36.752037, 35.056797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052551, 36.786995, 35.027992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085833, -0.166403, 0.982315,
		0.073865, -0.982177, -0.172833,
		0.993568, 0.087394, -0.072012,
		34.350620, 36.813213, 35.006390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862446, 36.154606, 35.418251>,  <33.655125, 36.752037, 35.056797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862446, 36.154606, 35.418251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157009, 36.425045, 35.427975>,  <34.333748, 36.587311, 35.433807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157009, 36.425045, 35.427975>,  <33.862446, 36.154606, 35.418251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157009, 36.425045, 35.427975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135123, -0.182195, 0.973934,
		0.662908, -0.713926, -0.225527,
		0.736407, 0.676102, 0.024310,
		34.377930, 36.627876, 35.435268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271534, 35.966370, 35.975456>,  <33.862446, 36.154606, 35.418251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271534, 35.966370, 35.975456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357746, 36.351933, 35.912933>,  <34.409473, 36.583271, 35.875420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357746, 36.351933, 35.912933>,  <34.271534, 35.966370, 35.975456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357746, 36.351933, 35.912933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261552, 0.097236, 0.960279,
		0.940816, -0.247857, -0.231153,
		0.215535, 0.963905, -0.156309,
		34.422405, 36.641106, 35.866039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897621, 35.978455, 36.194077>,  <34.271534, 35.966370, 35.975456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897621, 35.978455, 36.194077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747395, 36.348301, 36.219498>,  <34.657257, 36.570210, 36.234749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747395, 36.348301, 36.219498>,  <34.897621, 35.978455, 36.194077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747395, 36.348301, 36.219498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192099, 0.010583, 0.981318,
		0.906667, 0.380761, -0.181592,
		-0.375570, 0.924613, 0.063549,
		34.634724, 36.625687, 36.238564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361778, 36.281044, 36.530056>,  <34.897621, 35.978455, 36.194077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361778, 36.281044, 36.530056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034904, 36.507545, 36.573071>,  <34.838779, 36.643444, 36.598881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034904, 36.507545, 36.573071>,  <35.361778, 36.281044, 36.530056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034904, 36.507545, 36.573071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177113, 0.069150, 0.981758,
		0.548485, 0.821327, -0.156799,
		-0.817187, 0.566251, 0.107540,
		34.789749, 36.677422, 36.605331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627800, 36.808327, 37.067627>,  <35.361778, 36.281044, 36.530056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627800, 36.808327, 37.067627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231380, 36.857254, 37.046204>,  <34.993530, 36.886612, 37.033352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231380, 36.857254, 37.046204>,  <35.627800, 36.808327, 37.067627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231380, 36.857254, 37.046204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033802, 0.158198, 0.986829,
		0.129184, 0.979801, -0.152646,
		-0.991044, 0.122323, -0.053556,
		34.934067, 36.893951, 37.030136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359756, 36.622730, 36.886200>,  <35.627800, 36.808327, 37.067627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359756, 36.622730, 36.886200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720123, 36.692883, 37.044987>,  <36.936344, 36.734974, 37.140259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720123, 36.692883, 37.044987>,  <36.359756, 36.622730, 36.886200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720123, 36.692883, 37.044987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397774, 0.032083, -0.916922,
		-0.173545, 0.983978, -0.040857,
		0.900921, 0.175379, 0.396969,
		36.990398, 36.745495, 37.164078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597595, 37.183834, 36.543617>,  <36.359756, 36.622730, 36.886200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597595, 37.183834, 36.543617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908535, 36.972351, 36.679970>,  <37.095097, 36.845463, 36.761784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908535, 36.972351, 36.679970>,  <36.597595, 37.183834, 36.543617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908535, 36.972351, 36.679970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455708, 0.099718, -0.884526,
		0.433664, 0.842926, 0.318452,
		0.777345, -0.528708, 0.340884,
		37.141739, 36.813740, 36.782234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226295, 37.559093, 36.401642>,  <36.597595, 37.183834, 36.543617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226295, 37.559093, 36.401642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333794, 37.174282, 36.420708>,  <37.398293, 36.943394, 36.432148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333794, 37.174282, 36.420708>,  <37.226295, 37.559093, 36.401642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333794, 37.174282, 36.420708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498141, 0.096457, -0.861715,
		0.824399, 0.255323, 0.505149,
		0.268741, -0.962032, 0.047668,
		37.414417, 36.885674, 36.435009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888710, 37.579792, 36.015678>,  <37.226295, 37.559093, 36.401642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888710, 37.579792, 36.015678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816273, 37.186939, 36.036179>,  <37.772812, 36.951229, 36.048477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816273, 37.186939, 36.036179>,  <37.888710, 37.579792, 36.015678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816273, 37.186939, 36.036179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464852, -0.131400, -0.875583,
		0.866671, -0.134737, 0.480341,
		-0.181090, -0.982130, 0.051248,
		37.761944, 36.892300, 36.051552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501102, 37.291119, 35.788609>,  <37.888710, 37.579792, 36.015678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501102, 37.291119, 35.788609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249779, 36.980122, 35.777763>,  <38.098984, 36.793526, 35.771255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249779, 36.980122, 35.777763>,  <38.501102, 37.291119, 35.788609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249779, 36.980122, 35.777763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319863, -0.226405, -0.920016,
		0.709162, -0.586731, 0.390943,
		-0.628313, -0.777488, -0.027116,
		38.061283, 36.746876, 35.769627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961990, 36.744484, 35.800014>,  <38.501102, 37.291119, 35.788609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961990, 36.744484, 35.800014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624397, 36.674191, 35.597309>,  <38.421841, 36.632015, 35.475685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624397, 36.674191, 35.597309>,  <38.961990, 36.744484, 35.800014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624397, 36.674191, 35.597309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530108, -0.129381, -0.838001,
		0.081700, -0.975899, 0.202353,
		-0.843985, -0.175734, -0.506761,
		38.371201, 36.621471, 35.445282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111324, 36.096157, 35.448139>,  <38.961990, 36.744484, 35.800014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111324, 36.096157, 35.448139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797192, 36.256577, 35.259499>,  <38.608711, 36.352829, 35.146313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797192, 36.256577, 35.259499>,  <39.111324, 36.096157, 35.448139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797192, 36.256577, 35.259499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454579, -0.143553, -0.879063,
		-0.420249, -0.904738, -0.069572,
		-0.785334, 0.401051, -0.471602,
		38.561592, 36.376892, 35.118019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922825, 35.646564, 34.813183>,  <39.111324, 36.096157, 35.448139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922825, 35.646564, 34.813183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720459, 35.977970, 34.717175>,  <38.599041, 36.176815, 34.659569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720459, 35.977970, 34.717175>,  <38.922825, 35.646564, 34.813183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720459, 35.977970, 34.717175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299442, -0.092268, -0.949643,
		-0.808940, -0.552312, -0.201412,
		-0.505915, 0.828516, -0.240025,
		38.568684, 36.226524, 34.645168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613129, 35.501911, 34.146381>,  <38.922825, 35.646564, 34.813183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613129, 35.501911, 34.146381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607231, 35.898178, 34.200581>,  <38.603695, 36.135937, 34.233101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607231, 35.898178, 34.200581>,  <38.613129, 35.501911, 34.146381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607231, 35.898178, 34.200581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350899, 0.132020, -0.927060,
		-0.936297, 0.033880, -0.349570,
		-0.014741, 0.990668, 0.135499,
		38.602810, 36.195377, 34.241230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248390, 35.706036, 33.538177>,  <38.613129, 35.501911, 34.146381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248390, 35.706036, 33.538177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424564, 36.047878, 33.648201>,  <38.530270, 36.252983, 33.714214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424564, 36.047878, 33.648201>,  <38.248390, 35.706036, 33.538177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424564, 36.047878, 33.648201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270711, 0.165699, -0.948293,
		-0.855997, 0.492126, -0.158372,
		0.440437, 0.854609, 0.275061,
		38.556694, 36.304260, 33.730721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907585, 36.267403, 33.123001>,  <38.248390, 35.706036, 33.538177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907585, 36.267403, 33.123001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254326, 36.428463, 33.240612>,  <38.462368, 36.525097, 33.311176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254326, 36.428463, 33.240612>,  <37.907585, 36.267403, 33.123001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254326, 36.428463, 33.240612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214127, 0.231910, -0.948877,
		-0.450250, 0.885490, 0.114813,
		0.866848, 0.402647, 0.294024,
		38.514381, 36.549255, 33.328819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989288, 36.979675, 32.839153>,  <37.907585, 36.267403, 33.123001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989288, 36.979675, 32.839153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366039, 36.881474, 32.930893>,  <38.592091, 36.822552, 32.985935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366039, 36.881474, 32.930893>,  <37.989288, 36.979675, 32.839153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366039, 36.881474, 32.930893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294227, 0.273233, -0.915846,
		0.162176, 0.930093, 0.329585,
		0.941875, -0.245501, 0.229347,
		38.648602, 36.807823, 32.999699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387474, 37.540588, 32.628040>,  <37.989288, 36.979675, 32.839153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387474, 37.540588, 32.628040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648293, 37.237354, 32.632908>,  <38.804783, 37.055412, 32.635826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648293, 37.237354, 32.632908>,  <38.387474, 37.540588, 32.628040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648293, 37.237354, 32.632908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245797, 0.196181, -0.949261,
		0.717233, 0.621949, 0.314254,
		0.652043, -0.758085, 0.012166,
		38.843906, 37.009930, 32.636559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064053, 37.782349, 32.334522>,  <38.387474, 37.540588, 32.628040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064053, 37.782349, 32.334522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075253, 37.382690, 32.322342>,  <39.081974, 37.142895, 32.315033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075253, 37.382690, 32.322342>,  <39.064053, 37.782349, 32.334522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075253, 37.382690, 32.322342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254417, 0.036581, -0.966403,
		0.966689, 0.019314, 0.255223,
		0.028001, -0.999144, -0.030448,
		39.083652, 37.082947, 32.313206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596516, 37.666862, 32.052734>,  <39.064053, 37.782349, 32.334522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596516, 37.666862, 32.052734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423759, 37.314373, 31.975878>,  <39.320107, 37.102879, 31.929764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423759, 37.314373, 31.975878>,  <39.596516, 37.666862, 32.052734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423759, 37.314373, 31.975878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222510, 0.102346, -0.969543,
		0.874048, -0.461489, 0.151879,
		-0.431890, -0.881222, -0.192141,
		39.294193, 37.050007, 31.918236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053192, 37.332458, 31.590527>,  <39.596516, 37.666862, 32.052734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053192, 37.332458, 31.590527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713043, 37.125656, 31.551388>,  <39.508953, 37.001575, 31.527905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713043, 37.125656, 31.551388>,  <40.053192, 37.332458, 31.590527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713043, 37.125656, 31.551388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091132, 0.038440, -0.995097,
		0.518233, -0.855118, 0.014428,
		-0.850370, -0.517007, -0.097849,
		39.457932, 36.970554, 31.522034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185600, 36.823528, 31.111750>,  <40.053192, 37.332458, 31.590527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185600, 36.823528, 31.111750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790344, 36.884773, 31.107059>,  <39.553192, 36.921520, 31.104246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790344, 36.884773, 31.107059>,  <40.185600, 36.823528, 31.111750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790344, 36.884773, 31.107059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053336, 0.270601, -0.961213,
		-0.144004, -0.950437, -0.275558,
		-0.988139, 0.153116, -0.011725,
		39.493904, 36.930710, 31.103542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949436, 36.612534, 30.524801>,  <40.185600, 36.823528, 31.111750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949436, 36.612534, 30.524801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632927, 36.831253, 30.634270>,  <39.443020, 36.962486, 30.699951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632927, 36.831253, 30.634270>,  <39.949436, 36.612534, 30.524801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632927, 36.831253, 30.634270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047195, 0.391619, -0.918916,
		-0.609637, -0.740031, -0.284072,
		-0.791274, 0.546799, 0.273671,
		39.395546, 36.995293, 30.716372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334064, 36.433769, 30.116440>,  <39.949436, 36.612534, 30.524801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334064, 36.433769, 30.116440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270031, 36.807545, 30.243683>,  <39.231609, 37.031811, 30.320028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270031, 36.807545, 30.243683>,  <39.334064, 36.433769, 30.116440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270031, 36.807545, 30.243683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274370, 0.267442, -0.923686,
		-0.948206, -0.235148, 0.213569,
		-0.160086, 0.934441, 0.318107,
		39.222004, 37.087875, 30.339115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794659, 36.714703, 29.785810>,  <39.334064, 36.433769, 30.116440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794659, 36.714703, 29.785810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941559, 37.066910, 29.905682>,  <39.029701, 37.278236, 29.977604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941559, 37.066910, 29.905682>,  <38.794659, 36.714703, 29.785810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941559, 37.066910, 29.905682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235816, 0.399813, -0.885743,
		-0.899731, 0.254623, 0.354474,
		0.367254, 0.880521, 0.299680,
		39.051735, 37.331066, 29.995586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324219, 37.309128, 29.578413>,  <38.794659, 36.714703, 29.785810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324219, 37.309128, 29.578413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698997, 37.447521, 29.598110>,  <38.923866, 37.530556, 29.609928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698997, 37.447521, 29.598110>,  <38.324219, 37.309128, 29.578413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698997, 37.447521, 29.598110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082650, 0.356296, -0.930711,
		-0.339553, 0.867958, 0.362427,
		0.936949, 0.345980, 0.049244,
		38.980083, 37.551315, 29.612883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293262, 37.778866, 29.149261>,  <38.324219, 37.309128, 29.578413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293262, 37.778866, 29.149261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691280, 37.761925, 29.185247>,  <38.930092, 37.751759, 29.206839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691280, 37.761925, 29.185247>,  <38.293262, 37.778866, 29.149261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691280, 37.761925, 29.185247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098312, 0.283342, -0.953966,
		0.014914, 0.958083, 0.286102,
		0.995044, -0.042355, 0.089965,
		38.989792, 37.749218, 29.212236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561523, 38.411057, 28.859756>,  <38.293262, 37.778866, 29.149261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561523, 38.411057, 28.859756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845497, 38.129784, 28.844099>,  <39.015881, 37.961021, 28.834703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845497, 38.129784, 28.844099>,  <38.561523, 38.411057, 28.859756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845497, 38.129784, 28.844099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036715, 0.092461, -0.995039,
		0.703309, 0.704976, 0.091459,
		0.709936, -0.703178, -0.039145,
		39.058479, 37.918831, 28.832355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968193, 38.508820, 28.302210>,  <38.561523, 38.411057, 28.859756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968193, 38.508820, 28.302210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127426, 38.147747, 28.367558>,  <39.222965, 37.931103, 28.406767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127426, 38.147747, 28.367558>,  <38.968193, 38.508820, 28.302210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127426, 38.147747, 28.367558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140599, -0.115949, -0.983254,
		0.906512, 0.414384, 0.080759,
		0.398081, -0.902686, 0.163371,
		39.246849, 37.876942, 28.416569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684361, 38.464848, 27.889441>,  <38.968193, 38.508820, 28.302210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684361, 38.464848, 27.889441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524204, 38.104858, 27.958410>,  <39.428112, 37.888863, 27.999792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524204, 38.104858, 27.958410>,  <39.684361, 38.464848, 27.889441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524204, 38.104858, 27.958410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275188, -0.297574, -0.914178,
		0.874047, -0.318580, 0.366809,
		-0.400392, -0.899976, 0.172424,
		39.404087, 37.834866, 28.010138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195404, 38.049942, 27.658731>,  <39.684361, 38.464848, 27.889441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195404, 38.049942, 27.658731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854683, 37.840500, 27.665203>,  <39.650249, 37.714832, 27.669086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854683, 37.840500, 27.665203>,  <40.195404, 38.049942, 27.658731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854683, 37.840500, 27.665203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190736, -0.338757, -0.921338,
		0.487902, -0.781714, 0.388427,
		-0.851805, -0.523609, 0.016179,
		39.599140, 37.683418, 27.670057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409988, 37.481899, 27.401403>,  <40.195404, 38.049942, 27.658731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409988, 37.481899, 27.401403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012337, 37.464935, 27.361593>,  <39.773746, 37.454758, 27.337708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012337, 37.464935, 27.361593>,  <40.409988, 37.481899, 27.401403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012337, 37.464935, 27.361593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107299, -0.268991, -0.957147,
		0.013817, -0.962209, 0.271962,
		-0.994131, -0.042407, -0.099527,
		39.714096, 37.452213, 27.331736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395107, 37.124538, 26.776743>,  <40.409988, 37.481899, 27.401403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395107, 37.124538, 26.776743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999012, 37.163029, 26.817091>,  <39.761356, 37.186123, 26.841299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999012, 37.163029, 26.817091>,  <40.395107, 37.124538, 26.776743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999012, 37.163029, 26.817091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128111, -0.342836, -0.930619,
		-0.054968, -0.934454, 0.351816,
		-0.990235, 0.096226, 0.100868,
		39.701942, 37.191898, 26.847351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118782, 36.475319, 26.671787>,  <40.395107, 37.124538, 26.776743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118782, 36.475319, 26.671787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902294, 36.788612, 26.549397>,  <39.772400, 36.976589, 26.475962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902294, 36.788612, 26.549397>,  <40.118782, 36.475319, 26.671787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902294, 36.788612, 26.549397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005077, -0.366916, -0.930240,
		-0.840866, -0.501910, 0.202558,
		-0.541219, 0.783236, -0.305979,
		39.739929, 37.023582, 26.457603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626308, 36.189369, 26.260103>,  <40.118782, 36.475319, 26.671787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626308, 36.189369, 26.260103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625790, 36.576260, 26.158545>,  <39.625481, 36.808395, 26.097609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625790, 36.576260, 26.158545>,  <39.626308, 36.189369, 26.260103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625790, 36.576260, 26.158545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022480, -0.253807, -0.966994,
		-0.999746, -0.006957, -0.021416,
		-0.001292, 0.967230, -0.253899,
		39.625401, 36.866428, 26.082375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002460, 36.306862, 25.818880>,  <39.626308, 36.189369, 26.260103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002460, 36.306862, 25.818880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288906, 36.574657, 25.739925>,  <39.460773, 36.735336, 25.692553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288906, 36.574657, 25.739925>,  <39.002460, 36.306862, 25.818880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288906, 36.574657, 25.739925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045981, -0.236935, -0.970437,
		-0.696468, 0.704019, -0.138888,
		0.716114, 0.669491, -0.197389,
		39.503738, 36.775505, 25.680708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874474, 36.414696, 25.149446>,  <39.002460, 36.306862, 25.818880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874474, 36.414696, 25.149446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235310, 36.579952, 25.199326>,  <39.451813, 36.679108, 25.229252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235310, 36.579952, 25.199326>,  <38.874474, 36.414696, 25.149446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235310, 36.579952, 25.199326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252981, -0.272167, -0.928399,
		-0.349622, 0.869045, -0.350036,
		0.902089, 0.413141, 0.124697,
		39.505936, 36.703896, 25.236734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021717, 36.824844, 24.562923>,  <38.874474, 36.414696, 25.149446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021717, 36.824844, 24.562923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384472, 36.803051, 24.730059>,  <39.602123, 36.789974, 24.830339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384472, 36.803051, 24.730059>,  <39.021717, 36.824844, 24.562923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384472, 36.803051, 24.730059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412631, -0.086125, -0.906817,
		0.085393, 0.994793, -0.055624,
		0.906887, -0.054483, 0.417837,
		39.656536, 36.786705, 24.855410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580532, 37.323334, 24.259001>,  <39.021717, 36.824844, 24.562923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580532, 37.323334, 24.259001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798065, 37.025208, 24.413275>,  <39.928585, 36.846333, 24.505838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798065, 37.025208, 24.413275>,  <39.580532, 37.323334, 24.259001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798065, 37.025208, 24.413275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484407, -0.096494, -0.869505,
		0.685272, 0.659692, 0.308560,
		0.543831, -0.745316, 0.385684,
		39.961216, 36.801613, 24.528980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331909, 37.541164, 24.269552>,  <39.580532, 37.323334, 24.259001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331909, 37.541164, 24.269552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345078, 37.141651, 24.284262>,  <40.352978, 36.901943, 24.293087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345078, 37.141651, 24.284262>,  <40.331909, 37.541164, 24.269552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345078, 37.141651, 24.284262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613652, -0.008844, -0.789527,
		0.788890, 0.048560, 0.612613,
		0.032922, -0.998781, 0.036775,
		40.354954, 36.842018, 24.295294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983994, 37.430328, 24.005676>,  <40.331909, 37.541164, 24.269552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983994, 37.430328, 24.005676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822216, 37.064926, 23.988091>,  <40.725147, 36.845684, 23.977539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822216, 37.064926, 23.988091>,  <40.983994, 37.430328, 24.005676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822216, 37.064926, 23.988091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507303, -0.184089, -0.841876,
		0.760965, -0.362795, 0.537878,
		-0.404446, -0.913505, -0.043962,
		40.700882, 36.790874, 23.974901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511707, 36.943382, 23.955273>,  <40.983994, 37.430328, 24.005676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511707, 36.943382, 23.955273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204365, 36.749588, 23.787991>,  <41.019958, 36.633312, 23.687622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204365, 36.749588, 23.787991>,  <41.511707, 36.943382, 23.955273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204365, 36.749588, 23.787991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569068, -0.218137, -0.792829,
		0.292888, -0.847166, 0.443313,
		-0.768361, -0.484485, -0.418205,
		40.973858, 36.604244, 23.662529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732613, 36.257473, 23.659328>,  <41.511707, 36.943382, 23.955273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732613, 36.257473, 23.659328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429016, 36.442722, 23.476263>,  <41.246861, 36.553871, 23.366423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429016, 36.442722, 23.476263>,  <41.732613, 36.257473, 23.659328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429016, 36.442722, 23.476263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579515, 0.160072, -0.799086,
		-0.296813, -0.871721, -0.389878,
		-0.758989, 0.463119, -0.457664,
		41.201321, 36.581657, 23.338964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308399, 35.649475, 23.735422>,  <41.732613, 36.257473, 23.659328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308399, 35.649475, 23.735422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387260, 35.282234, 23.597891>,  <41.434578, 35.061890, 23.515373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387260, 35.282234, 23.597891>,  <41.308399, 35.649475, 23.735422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387260, 35.282234, 23.597891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460669, -0.222824, 0.859146,
		-0.865399, -0.327772, 0.379012,
		0.197151, -0.918104, -0.343827,
		41.446407, 35.006802, 23.494743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969543, 35.202404, 24.214083>,  <41.308399, 35.649475, 23.735422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969543, 35.202404, 24.214083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249046, 34.988281, 24.024269>,  <41.416748, 34.859806, 23.910381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249046, 34.988281, 24.024269>,  <40.969543, 35.202404, 24.214083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249046, 34.988281, 24.024269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174976, -0.515303, 0.838956,
		-0.693630, -0.669258, -0.266405,
		0.698757, -0.535310, -0.474533,
		41.458675, 34.827690, 23.881908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802887, 34.508160, 24.378702>,  <40.969543, 35.202404, 24.214083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802887, 34.508160, 24.378702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186001, 34.521141, 24.264444>,  <41.415871, 34.528931, 24.195889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186001, 34.521141, 24.264444>,  <40.802887, 34.508160, 24.378702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186001, 34.521141, 24.264444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266945, -0.469235, 0.841760,
		-0.106713, -0.882477, -0.458091,
		0.957785, 0.032458, -0.285646,
		41.473335, 34.530880, 24.178751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132629, 33.881031, 24.607983>,  <40.802887, 34.508160, 24.378702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132629, 33.881031, 24.607983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446384, 34.122540, 24.551126>,  <41.634636, 34.267445, 24.517014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446384, 34.122540, 24.551126>,  <41.132629, 33.881031, 24.607983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446384, 34.122540, 24.551126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356822, -0.251777, 0.899604,
		0.507366, -0.756353, -0.412928,
		0.784384, 0.603770, -0.142140,
		41.681698, 34.303669, 24.508484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758259, 33.469852, 24.876902>,  <41.132629, 33.881031, 24.607983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758259, 33.469852, 24.876902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865543, 33.854809, 24.859638>,  <41.929916, 34.085781, 24.849281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865543, 33.854809, 24.859638>,  <41.758259, 33.469852, 24.876902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865543, 33.854809, 24.859638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397439, -0.069733, 0.914975,
		0.877555, -0.262561, -0.401196,
		0.268213, 0.962392, -0.043158,
		41.946007, 34.143528, 24.846691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368408, 33.466579, 25.296669>,  <41.758259, 33.469852, 24.876902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368408, 33.466579, 25.296669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243591, 33.845951, 25.274323>,  <42.168701, 34.073574, 25.260914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243591, 33.845951, 25.274323>,  <42.368408, 33.466579, 25.296669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243591, 33.845951, 25.274323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226749, 0.131448, 0.965042,
		0.922613, 0.288465, -0.256071,
		-0.312041, 0.948425, -0.055866,
		42.149979, 34.130478, 25.257563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904266, 33.940571, 25.624823>,  <42.368408, 33.466579, 25.296669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904266, 33.940571, 25.624823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568523, 34.157921, 25.618856>,  <42.367077, 34.288330, 25.615276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568523, 34.157921, 25.618856>,  <42.904266, 33.940571, 25.624823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568523, 34.157921, 25.618856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143116, 0.247380, 0.958291,
		0.524398, 0.802216, -0.285406,
		-0.839360, 0.543372, -0.014915,
		42.316715, 34.320930, 25.614382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047565, 34.341167, 26.167850>,  <42.904266, 33.940571, 25.624823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047565, 34.341167, 26.167850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657547, 34.415489, 26.119244>,  <42.423538, 34.460083, 26.090080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657547, 34.415489, 26.119244>,  <43.047565, 34.341167, 26.167850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657547, 34.415489, 26.119244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082215, 0.206231, 0.975043,
		0.206231, 0.960700, -0.185808,
		-0.975043, 0.185808, -0.121515,
		42.365032, 34.471233, 26.082788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872566, 35.035751, 26.472967>,  <43.047565, 34.341167, 26.167850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872566, 35.035751, 26.472967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525246, 34.837341, 26.472006>,  <42.316853, 34.718296, 26.471428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525246, 34.837341, 26.472006>,  <42.872566, 35.035751, 26.472967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525246, 34.837341, 26.472006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151001, 0.259705, 0.953809,
		-0.472489, 0.828560, -0.300403,
		-0.868305, -0.496025, -0.002406,
		42.264755, 34.688534, 26.471285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489056, 35.483189, 26.925985>,  <42.872566, 35.035751, 26.472967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489056, 35.483189, 26.925985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297203, 35.132740, 26.906542>,  <42.182091, 34.922470, 26.894875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297203, 35.132740, 26.906542>,  <42.489056, 35.483189, 26.925985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297203, 35.132740, 26.906542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116179, 0.008496, 0.993192,
		-0.869747, 0.482009, -0.105862,
		-0.479627, -0.876125, -0.048610,
		42.153316, 34.869904, 26.891958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750053, 35.564373, 27.294119>,  <42.489056, 35.483189, 26.925985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750053, 35.564373, 27.294119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850555, 35.177204, 27.295134>,  <41.910858, 34.944904, 27.295742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850555, 35.177204, 27.295134>,  <41.750053, 35.564373, 27.294119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850555, 35.177204, 27.295134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362295, -0.091612, 0.927550,
		-0.897560, -0.233970, -0.373690,
		0.251254, -0.967918, 0.002539,
		41.925930, 34.886829, 27.295895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108036, 35.256653, 27.593340>,  <41.750053, 35.564373, 27.294119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108036, 35.256653, 27.593340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415970, 35.005856, 27.641069>,  <41.600731, 34.855377, 27.669708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415970, 35.005856, 27.641069>,  <41.108036, 35.256653, 27.593340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415970, 35.005856, 27.641069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304447, -0.196424, 0.932057,
		-0.560953, -0.753856, -0.342100,
		0.769833, -0.626991, 0.119325,
		41.646919, 34.817757, 27.676867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899555, 34.783302, 28.011215>,  <41.108036, 35.256653, 27.593340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899555, 34.783302, 28.011215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291248, 34.702682, 28.020048>,  <41.526264, 34.654312, 28.025349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291248, 34.702682, 28.020048>,  <40.899555, 34.783302, 28.011215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291248, 34.702682, 28.020048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065976, -0.213765, 0.974655,
		-0.191705, -0.955871, -0.222622,
		0.979232, -0.201534, 0.022085,
		41.585018, 34.642220, 28.026672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042797, 34.112423, 28.366592>,  <40.899555, 34.783302, 28.011215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042797, 34.112423, 28.366592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384136, 34.315578, 28.413654>,  <41.588940, 34.437473, 28.441891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384136, 34.315578, 28.413654>,  <41.042797, 34.112423, 28.366592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384136, 34.315578, 28.413654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021095, -0.259129, 0.965612,
		0.520914, -0.821522, -0.231841,
		0.853349, 0.507891, 0.117653,
		41.640141, 34.467945, 28.448950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446022, 33.598980, 28.775265>,  <41.042797, 34.112423, 28.366592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446022, 33.598980, 28.775265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589005, 33.971703, 28.800474>,  <41.674793, 34.195335, 28.815599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589005, 33.971703, 28.800474>,  <41.446022, 33.598980, 28.775265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589005, 33.971703, 28.800474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038056, -0.081958, 0.995909,
		0.933156, -0.353592, -0.064757,
		0.357453, 0.931802, 0.063023,
		41.696239, 34.251244, 28.819382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809940, 33.518192, 29.408504>,  <41.446022, 33.598980, 28.775265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809940, 33.518192, 29.408504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794933, 33.913471, 29.349094>,  <41.785931, 34.150639, 29.313448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794933, 33.913471, 29.349094>,  <41.809940, 33.518192, 29.408504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794933, 33.913471, 29.349094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123677, 0.142896, 0.981980,
		0.991613, 0.055212, 0.116856,
		-0.037519, 0.988197, -0.148526,
		41.783676, 34.209930, 29.304537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285774, 33.814648, 29.891338>,  <41.809940, 33.518192, 29.408504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285774, 33.814648, 29.891338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037270, 34.114841, 29.801178>,  <41.888165, 34.294956, 29.747082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037270, 34.114841, 29.801178>,  <42.285774, 33.814648, 29.891338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037270, 34.114841, 29.801178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033492, 0.312814, 0.949224,
		0.782885, 0.582170, -0.219476,
		-0.621265, 0.750483, -0.225399,
		41.850891, 34.339985, 29.733559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568790, 34.474560, 30.183525>,  <42.285774, 33.814648, 29.891338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568790, 34.474560, 30.183525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177059, 34.534321, 30.128988>,  <41.942020, 34.570179, 30.096266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177059, 34.534321, 30.128988>,  <42.568790, 34.474560, 30.183525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177059, 34.534321, 30.128988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047291, 0.486255, 0.872536,
		0.196657, 0.860949, -0.469139,
		-0.979331, 0.149404, -0.136340,
		41.883259, 34.579144, 30.088087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342461, 35.203049, 30.488157>,  <42.568790, 34.474560, 30.183525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342461, 35.203049, 30.488157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999996, 34.996586, 30.478642>,  <41.794518, 34.872707, 30.472933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999996, 34.996586, 30.478642>,  <42.342461, 35.203049, 30.488157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999996, 34.996586, 30.478642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239789, 0.356117, 0.903151,
		-0.457698, 0.778949, -0.428663,
		-0.856162, -0.516159, -0.023790,
		41.743149, 34.841740, 30.471504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750931, 35.712452, 30.557470>,  <42.342461, 35.203049, 30.488157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750931, 35.712452, 30.557470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591122, 35.362587, 30.667274>,  <41.495235, 35.152668, 30.733156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591122, 35.362587, 30.667274>,  <41.750931, 35.712452, 30.557470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591122, 35.362587, 30.667274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346535, 0.421321, 0.838094,
		-0.848703, 0.239709, -0.471426,
		-0.399520, -0.874659, 0.274509,
		41.471264, 35.100189, 30.749628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094467, 35.804897, 30.914402>,  <41.750931, 35.712452, 30.557470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094467, 35.804897, 30.914402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146198, 35.424686, 31.027382>,  <41.177238, 35.196560, 31.095171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146198, 35.424686, 31.027382>,  <41.094467, 35.804897, 30.914402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146198, 35.424686, 31.027382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388489, 0.213503, 0.896378,
		-0.912332, -0.225658, -0.341655,
		0.129331, -0.950523, 0.282451,
		41.184998, 35.139530, 31.112118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456985, 35.559292, 31.032324>,  <41.094467, 35.804897, 30.914402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456985, 35.559292, 31.032324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712414, 35.337612, 31.245901>,  <40.865669, 35.204605, 31.374048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712414, 35.337612, 31.245901>,  <40.456985, 35.559292, 31.032324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712414, 35.337612, 31.245901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550814, 0.155397, 0.820034,
		-0.537434, -0.817751, -0.206028,
		0.638568, -0.554198, 0.533944,
		40.903984, 35.171352, 31.406084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017849, 35.172661, 31.444504>,  <40.456985, 35.559292, 31.032324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017849, 35.172661, 31.444504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368275, 35.126808, 31.631853>,  <40.578529, 35.099297, 31.744263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368275, 35.126808, 31.631853>,  <40.017849, 35.172661, 31.444504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368275, 35.126808, 31.631853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450526, 0.151626, 0.879793,
		-0.171872, -0.981768, 0.081188,
		0.876063, -0.114635, 0.468372,
		40.631092, 35.092419, 31.772366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880878, 34.732430, 32.071510>,  <40.017849, 35.172661, 31.444504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880878, 34.732430, 32.071510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217175, 34.938297, 32.138771>,  <40.418953, 35.061817, 32.179127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217175, 34.938297, 32.138771>,  <39.880878, 34.732430, 32.071510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217175, 34.938297, 32.138771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248664, 0.091151, 0.964291,
		0.480961, -0.852532, 0.204613,
		0.840739, 0.514666, 0.168154,
		40.469395, 35.092697, 32.189217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168381, 34.405174, 32.627304>,  <39.880878, 34.732430, 32.071510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168381, 34.405174, 32.627304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333565, 34.768780, 32.604824>,  <40.432674, 34.986942, 32.591335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333565, 34.768780, 32.604824>,  <40.168381, 34.405174, 32.627304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333565, 34.768780, 32.604824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176340, 0.140349, 0.974272,
		0.893513, -0.392428, 0.218255,
		0.412963, 0.909011, -0.056203,
		40.457455, 35.041485, 32.587963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822102, 34.372215, 32.988045>,  <40.168381, 34.405174, 32.627304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822102, 34.372215, 32.988045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729534, 34.761219, 32.998375>,  <40.673996, 34.994621, 33.004574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729534, 34.761219, 32.998375>,  <40.822102, 34.372215, 32.988045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729534, 34.761219, 32.998375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078233, -0.007854, 0.996904,
		0.969704, 0.232720, -0.074265,
		-0.231417, 0.972512, 0.025822,
		40.660110, 35.052971, 33.006123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400288, 34.588638, 33.483601>,  <40.822102, 34.372215, 32.988045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400288, 34.588638, 33.483601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078014, 34.825577, 33.484875>,  <40.884651, 34.967739, 33.485638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078014, 34.825577, 33.484875>,  <41.400288, 34.588638, 33.483601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078014, 34.825577, 33.484875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084529, -0.120294, 0.989133,
		0.586288, 0.796656, 0.146989,
		-0.805681, 0.592342, 0.003186,
		40.836311, 35.003281, 33.485832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527107, 34.845039, 34.114948>,  <41.400288, 34.588638, 33.483601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527107, 34.845039, 34.114948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138367, 34.899170, 34.037807>,  <40.905121, 34.931648, 33.991524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138367, 34.899170, 34.037807>,  <41.527107, 34.845039, 34.114948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138367, 34.899170, 34.037807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216543, -0.190581, 0.957490,
		0.092815, 0.972300, 0.214520,
		-0.971851, 0.135322, -0.192856,
		40.846813, 34.939766, 33.979950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165810, 35.211853, 34.644871>,  <41.527107, 34.845039, 34.114948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165810, 35.211853, 34.644871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831100, 35.053211, 34.493866>,  <40.630276, 34.958027, 34.403263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831100, 35.053211, 34.493866>,  <41.165810, 35.211853, 34.644871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831100, 35.053211, 34.493866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288260, -0.267089, 0.919548,
		-0.465522, 0.878277, 0.109170,
		-0.836777, -0.396601, -0.377508,
		40.580067, 34.934231, 34.380615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657745, 35.502857, 34.954830>,  <41.165810, 35.211853, 34.644871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657745, 35.502857, 34.954830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470352, 35.166687, 34.845863>,  <40.357914, 34.964985, 34.780483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470352, 35.166687, 34.845863>,  <40.657745, 35.502857, 34.954830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470352, 35.166687, 34.845863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457422, -0.033059, 0.888635,
		-0.755834, 0.540923, -0.368940,
		-0.468486, -0.840422, -0.272418,
		40.329807, 34.914562, 34.764137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927113, 35.517841, 35.128841>,  <40.657745, 35.502857, 34.954830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927113, 35.517841, 35.128841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023060, 35.129555, 35.123596>,  <40.080627, 34.896584, 35.120449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023060, 35.129555, 35.123596>,  <39.927113, 35.517841, 35.128841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023060, 35.129555, 35.123596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515185, -0.138729, 0.845777,
		-0.822828, -0.196125, -0.533376,
		0.239873, -0.970716, -0.013110,
		40.095020, 34.838341, 35.119663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236057, 35.082138, 35.397049>,  <39.927113, 35.517841, 35.128841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236057, 35.082138, 35.397049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515491, 34.795933, 35.398590>,  <39.683151, 34.624210, 35.399513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515491, 34.795933, 35.398590>,  <39.236057, 35.082138, 35.397049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515491, 34.795933, 35.398590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318160, -0.305799, 0.897363,
		-0.640900, -0.628110, -0.441276,
		0.698585, -0.715517, 0.003853,
		39.725067, 34.581280, 35.399746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866306, 34.469002, 35.599632>,  <39.236057, 35.082138, 35.397049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866306, 34.469002, 35.599632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242950, 34.345909, 35.654301>,  <39.468937, 34.272053, 35.687103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242950, 34.345909, 35.654301>,  <38.866306, 34.469002, 35.599632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242950, 34.345909, 35.654301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288766, -0.529249, 0.797816,
		-0.173181, -0.790694, -0.587207,
		0.941606, -0.307732, 0.136670,
		39.525433, 34.253590, 35.695301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865562, 33.666210, 35.690174>,  <38.866306, 34.469002, 35.599632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865562, 33.666210, 35.690174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198643, 33.808365, 35.860023>,  <39.398491, 33.893658, 35.961933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198643, 33.808365, 35.860023>,  <38.865562, 33.666210, 35.690174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198643, 33.808365, 35.860023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188780, -0.538707, 0.821071,
		0.520550, -0.763867, -0.381490,
		0.832700, 0.355391, 0.424627,
		39.448452, 33.914982, 35.987411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331356, 33.106792, 35.953987>,  <38.865562, 33.666210, 35.690174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331356, 33.106792, 35.953987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373177, 33.439899, 36.171452>,  <39.398270, 33.639763, 36.301929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373177, 33.439899, 36.171452>,  <39.331356, 33.106792, 35.953987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373177, 33.439899, 36.171452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173345, -0.523029, 0.834501,
		0.979296, -0.181488, 0.089674,
		0.104550, 0.832768, 0.543661,
		39.404541, 33.689732, 36.334549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659641, 32.874786, 36.464912>,  <39.331356, 33.106792, 35.953987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659641, 32.874786, 36.464912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548084, 33.229370, 36.612648>,  <39.481148, 33.442120, 36.701290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548084, 33.229370, 36.612648>,  <39.659641, 32.874786, 36.464912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548084, 33.229370, 36.612648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391999, -0.456185, 0.798895,
		0.876672, 0.078029, 0.474718,
		-0.278896, 0.886458, 0.369337,
		39.464417, 33.495308, 36.723450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067753, 32.918083, 37.126770>,  <39.659641, 32.874786, 36.464912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067753, 32.918083, 37.126770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770493, 33.184345, 37.154007>,  <39.592136, 33.344101, 37.170349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770493, 33.184345, 37.154007>,  <40.067753, 32.918083, 37.126770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770493, 33.184345, 37.154007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326621, -0.449689, 0.831323,
		0.583992, 0.595557, 0.551602,
		-0.743150, 0.665651, 0.068094,
		39.547546, 33.384041, 37.174435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122810, 33.242626, 37.737034>,  <40.067753, 32.918083, 37.126770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122810, 33.242626, 37.737034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743160, 33.330833, 37.647110>,  <39.515369, 33.383759, 37.593155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743160, 33.330833, 37.647110>,  <40.122810, 33.242626, 37.737034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743160, 33.330833, 37.647110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273216, -0.221669, 0.936064,
		0.156582, 0.949861, 0.270639,
		-0.949123, 0.220514, -0.224808,
		39.458424, 33.396988, 37.579666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940678, 33.740013, 38.227863>,  <40.122810, 33.242626, 37.737034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940678, 33.740013, 38.227863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587170, 33.592937, 38.112099>,  <39.375065, 33.504692, 38.042641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587170, 33.592937, 38.112099>,  <39.940678, 33.740013, 38.227863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587170, 33.592937, 38.112099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244669, -0.164095, 0.955620,
		-0.398858, 0.915358, 0.055061,
		-0.883770, -0.367685, -0.289410,
		39.322037, 33.482632, 38.025276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269932, 34.102676, 38.599697>,  <39.940678, 33.740013, 38.227863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269932, 34.102676, 38.599697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181519, 33.726555, 38.496181>,  <39.128471, 33.500881, 38.434071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181519, 33.726555, 38.496181>,  <39.269932, 34.102676, 38.599697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181519, 33.726555, 38.496181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059383, -0.251887, 0.965933,
		-0.973458, 0.228867, -0.000163,
		-0.221029, -0.940305, -0.258792,
		39.115211, 33.444462, 38.418545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562550, 33.845341, 38.951721>,  <39.269932, 34.102676, 38.599697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562550, 33.845341, 38.951721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823833, 33.557392, 38.857822>,  <38.980602, 33.384624, 38.801483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823833, 33.557392, 38.857822>,  <38.562550, 33.845341, 38.951721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823833, 33.557392, 38.857822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052467, -0.266255, 0.962474,
		-0.755358, -0.641013, -0.136151,
		0.653209, -0.719868, -0.234750,
		39.019794, 33.341431, 38.787399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554756, 33.321346, 39.446369>,  <38.562550, 33.845341, 38.951721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554756, 33.321346, 39.446369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919437, 33.194050, 39.342430>,  <39.138245, 33.117672, 39.280067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919437, 33.194050, 39.342430>,  <38.554756, 33.321346, 39.446369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919437, 33.194050, 39.342430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086285, -0.470039, 0.878418,
		-0.401681, -0.823279, -0.401078,
		0.911705, -0.318237, -0.259843,
		39.192947, 33.098579, 39.264477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610283, 32.587311, 39.557610>,  <38.554756, 33.321346, 39.446369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610283, 32.587311, 39.557610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947067, 32.792458, 39.624626>,  <39.149136, 32.915546, 39.664837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947067, 32.792458, 39.624626>,  <38.610283, 32.587311, 39.557610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947067, 32.792458, 39.624626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096855, -0.449156, 0.888188,
		0.530780, -0.731589, -0.427844,
		0.841957, 0.512871, 0.167545,
		39.199654, 32.946320, 39.674889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304886, 32.216557, 39.684742>,  <38.610283, 32.587311, 39.557610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304886, 32.216557, 39.684742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267128, 32.552395, 39.898720>,  <39.244473, 32.753899, 40.027107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267128, 32.552395, 39.898720>,  <39.304886, 32.216557, 39.684742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267128, 32.552395, 39.898720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130899, -0.522211, 0.842710,
		0.986891, 0.149574, -0.060607,
		-0.094398, 0.839597, 0.534945,
		39.238808, 32.804276, 40.059204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868195, 32.281063, 40.060287>,  <39.304886, 32.216557, 39.684742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868195, 32.281063, 40.060287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555336, 32.463326, 40.230286>,  <39.367619, 32.572681, 40.332283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555336, 32.463326, 40.230286>,  <39.868195, 32.281063, 40.060287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555336, 32.463326, 40.230286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076640, -0.606538, 0.791351,
		0.618358, 0.651528, 0.439483,
		-0.782151, 0.455656, 0.424991,
		39.320690, 32.600021, 40.357784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879425, 32.148235, 40.730698>,  <39.868195, 32.281063, 40.060287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879425, 32.148235, 40.730698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533813, 32.347702, 40.758366>,  <39.326447, 32.467381, 40.774967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533813, 32.347702, 40.758366>,  <39.879425, 32.148235, 40.730698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533813, 32.347702, 40.758366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168164, -0.415374, 0.893972,
		0.474522, 0.760788, 0.442753,
		-0.864031, 0.498664, 0.069167,
		39.274605, 32.497303, 40.779118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829624, 32.671844, 41.398289>,  <39.879425, 32.148235, 40.730698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829624, 32.671844, 41.398289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471619, 32.525909, 41.295650>,  <39.256817, 32.438347, 41.234066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471619, 32.525909, 41.295650>,  <39.829624, 32.671844, 41.398289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471619, 32.525909, 41.295650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126384, -0.344272, 0.930325,
		-0.427759, 0.865083, 0.262018,
		-0.895014, -0.364840, -0.256598,
		39.203114, 32.416458, 41.218670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468712, 32.962006, 41.918449>,  <39.829624, 32.671844, 41.398289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468712, 32.962006, 41.918449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268330, 32.668457, 41.734940>,  <39.148102, 32.492329, 41.624832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268330, 32.668457, 41.734940>,  <39.468712, 32.962006, 41.918449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268330, 32.668457, 41.734940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213522, -0.408900, 0.887248,
		-0.838721, 0.542429, 0.048142,
		-0.500955, -0.733874, -0.458774,
		39.118042, 32.448296, 41.597309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835922, 32.854248, 42.234566>,  <39.468712, 32.962006, 41.918449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835922, 32.854248, 42.234566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880844, 32.501472, 42.051453>,  <38.907795, 32.289806, 41.941586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880844, 32.501472, 42.051453>,  <38.835922, 32.854248, 42.234566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880844, 32.501472, 42.051453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030191, -0.463517, 0.885574,
		-0.993216, -0.085629, -0.078680,
		0.112300, -0.881941, -0.457787,
		38.914536, 32.236889, 41.914116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120907, 32.505314, 42.294384>,  <38.835922, 32.854248, 42.234566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120907, 32.505314, 42.294384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306534, 32.167194, 42.188473>,  <38.417912, 31.964323, 42.124928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306534, 32.167194, 42.188473>,  <38.120907, 32.505314, 42.294384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306534, 32.167194, 42.188473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074420, -0.335065, 0.939252,
		-0.882667, -0.416174, -0.218400,
		0.464070, -0.845299, -0.264779,
		38.445755, 31.913605, 42.109039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652901, 31.969019, 42.480434>,  <38.120907, 32.505314, 42.294384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652901, 31.969019, 42.480434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018436, 31.806614, 42.483200>,  <38.237759, 31.709171, 42.484859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018436, 31.806614, 42.483200>,  <37.652901, 31.969019, 42.480434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018436, 31.806614, 42.483200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179684, -0.389050, 0.903523,
		-0.364146, -0.826922, -0.428484,
		0.913844, -0.406006, 0.006914,
		38.292587, 31.684811, 42.485275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577660, 31.162193, 42.593998>,  <37.652901, 31.969019, 42.480434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577660, 31.162193, 42.593998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944946, 31.280645, 42.699207>,  <38.165318, 31.351717, 42.762333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944946, 31.280645, 42.699207>,  <37.577660, 31.162193, 42.593998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944946, 31.280645, 42.699207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066656, -0.539073, 0.839617,
		0.390425, -0.788485, -0.475248,
		0.918219, 0.296129, 0.263025,
		38.220413, 31.369484, 42.778114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881912, 30.588659, 42.882999>,  <37.577660, 31.162193, 42.593998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881912, 30.588659, 42.882999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081474, 30.907091, 43.020023>,  <38.201210, 31.098150, 43.102238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081474, 30.907091, 43.020023>,  <37.881912, 30.588659, 42.882999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081474, 30.907091, 43.020023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038992, -0.415483, 0.908765,
		0.865779, -0.440031, -0.238328,
		0.498906, 0.796082, 0.342559,
		38.231148, 31.145916, 43.122791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263233, 30.205221, 43.373055>,  <37.881912, 30.588659, 42.882999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263233, 30.205221, 43.373055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312176, 30.593021, 43.457996>,  <38.341541, 30.825701, 43.508961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312176, 30.593021, 43.457996>,  <38.263233, 30.205221, 43.373055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312176, 30.593021, 43.457996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071622, -0.222034, 0.972405,
		0.989898, -0.103772, -0.096605,
		0.122358, 0.969501, 0.212359,
		38.348885, 30.883871, 43.521706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893219, 30.270573, 43.782959>,  <38.263233, 30.205221, 43.373055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893219, 30.270573, 43.782959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623745, 30.557205, 43.855244>,  <38.462059, 30.729185, 43.898617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623745, 30.557205, 43.855244>,  <38.893219, 30.270573, 43.782959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623745, 30.557205, 43.855244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175315, -0.082587, 0.981042,
		0.717920, 0.692598, -0.069990,
		-0.673688, 0.716580, 0.180714,
		38.421638, 30.772179, 43.909458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259327, 30.669273, 44.340569>,  <38.893219, 30.270573, 43.782959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259327, 30.669273, 44.340569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866104, 30.742485, 44.344624>,  <38.630169, 30.786411, 44.347057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866104, 30.742485, 44.344624>,  <39.259327, 30.669273, 44.340569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866104, 30.742485, 44.344624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027107, -0.199840, 0.979454,
		0.181293, 0.962582, 0.201415,
		-0.983056, 0.183028, 0.010137,
		38.571186, 30.797394, 44.347664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260838, 31.095573, 44.824432>,  <39.259327, 30.669273, 44.340569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260838, 31.095573, 44.824432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902889, 30.919214, 44.796688>,  <38.688118, 30.813398, 44.780041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902889, 30.919214, 44.796688>,  <39.260838, 31.095573, 44.824432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902889, 30.919214, 44.796688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148616, -0.440888, 0.885173,
		-0.420849, 0.781810, 0.460064,
		-0.894874, -0.440897, -0.069357,
		38.634426, 30.786945, 44.775883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088284, 31.200096, 45.484333>,  <39.260838, 31.095573, 44.824432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088284, 31.200096, 45.484333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833633, 30.947042, 45.307930>,  <38.680843, 30.795210, 45.202087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833633, 30.947042, 45.307930>,  <39.088284, 31.200096, 45.484333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833633, 30.947042, 45.307930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005926, -0.575862, 0.817525,
		-0.771153, 0.517841, 0.370355,
		-0.636622, -0.632632, -0.441010,
		38.642647, 30.757254, 45.175629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466152, 31.112219, 45.941689>,  <39.088284, 31.200096, 45.484333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466152, 31.112219, 45.941689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516331, 30.794935, 45.703335>,  <38.546440, 30.604565, 45.560322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516331, 30.794935, 45.703335>,  <38.466152, 31.112219, 45.941689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516331, 30.794935, 45.703335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075442, -0.606519, 0.791482,
		-0.989227, -0.054336, -0.135929,
		0.125450, -0.793210, -0.595886,
		38.553967, 30.556973, 45.524570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990170, 30.510403, 46.192879>,  <38.466152, 31.112219, 45.941689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990170, 30.510403, 46.192879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318897, 30.365393, 46.017067>,  <38.516136, 30.278387, 45.911579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318897, 30.365393, 46.017067>,  <37.990170, 30.510403, 46.192879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318897, 30.365393, 46.017067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152250, -0.603651, 0.782576,
		-0.549027, -0.710056, -0.440898,
		0.821821, -0.362528, -0.439526,
		38.565445, 30.256634, 45.885208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896255, 29.855598, 45.973972>,  <37.990170, 30.510403, 46.192879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896255, 29.855598, 45.973972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271225, 29.935389, 46.088127>,  <38.496208, 29.983263, 46.156620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271225, 29.935389, 46.088127>,  <37.896255, 29.855598, 45.973972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271225, 29.935389, 46.088127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127234, -0.566712, 0.814032,
		0.324116, -0.799404, -0.505868,
		0.937422, 0.199477, 0.285392,
		38.552452, 29.995232, 46.173744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261250, 29.585037, 46.493004>,  <37.896255, 29.855598, 45.973972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261250, 29.585037, 46.493004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660572, 29.607529, 46.487160>,  <38.900166, 29.621023, 46.483654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660572, 29.607529, 46.487160>,  <38.261250, 29.585037, 46.493004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660572, 29.607529, 46.487160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054251, -0.812268, 0.580756,
		0.020788, -0.580567, -0.813947,
		0.998311, 0.056230, -0.014611,
		38.960064, 29.624397, 46.482777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538822, 29.006189, 46.426838>,  <38.261250, 29.585037, 46.493004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538822, 29.006189, 46.426838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832111, 29.183920, 46.632732>,  <39.008087, 29.290558, 46.756268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832111, 29.183920, 46.632732>,  <38.538822, 29.006189, 46.426838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832111, 29.183920, 46.632732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076374, -0.806004, 0.586962,
		0.675681, -0.391064, -0.624919,
		0.733227, 0.444327, 0.514735,
		39.052078, 29.317219, 46.787151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222309, 28.729084, 46.300968>,  <38.538822, 29.006189, 46.426838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222309, 28.729084, 46.300968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149895, 28.850859, 46.675037>,  <39.106445, 28.923923, 46.899479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149895, 28.850859, 46.675037>,  <39.222309, 28.729084, 46.300968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149895, 28.850859, 46.675037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222537, -0.913539, 0.340476,
		0.957968, 0.269748, 0.097636,
		-0.181037, 0.304438, 0.935170,
		39.095585, 28.942190, 46.955589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003342, 29.191961, 45.731552>,  <39.222309, 28.729084, 46.300968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003342, 29.191961, 45.731552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688835, 29.183380, 45.484547>,  <38.500130, 29.178230, 45.336342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688835, 29.183380, 45.484547>,  <39.003342, 29.191961, 45.731552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688835, 29.183380, 45.484547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617412, 0.011944, -0.786549,
		0.024256, -0.999699, 0.003859,
		-0.786266, -0.021461, -0.617515,
		38.452957, 29.176945, 45.299294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121670, 29.474438, 45.104298>,  <39.003342, 29.191961, 45.731552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121670, 29.474438, 45.104298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853706, 29.684660, 45.314064>,  <38.692928, 29.810793, 45.439922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853706, 29.684660, 45.314064>,  <39.121670, 29.474438, 45.104298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853706, 29.684660, 45.314064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328736, 0.423355, -0.844217,
		-0.665697, -0.737944, -0.110841,
		-0.669910, 0.525555, 0.524415,
		38.652733, 29.842327, 45.471390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521893, 29.510805, 44.739807>,  <39.121670, 29.474438, 45.104298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521893, 29.510805, 44.739807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506187, 29.831690, 44.978107>,  <38.496765, 30.024220, 45.121086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506187, 29.831690, 44.978107>,  <38.521893, 29.510805, 44.739807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506187, 29.831690, 44.978107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423235, 0.526737, -0.737171,
		-0.905169, -0.281082, 0.318845,
		-0.039258, 0.802210, 0.595750,
		38.494411, 30.072353, 45.156834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905125, 29.865932, 44.588348>,  <38.521893, 29.510805, 44.739807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905125, 29.865932, 44.588348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101498, 30.149660, 44.790676>,  <38.219322, 30.319897, 44.912075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101498, 30.149660, 44.790676>,  <37.905125, 29.865932, 44.588348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101498, 30.149660, 44.790676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320364, 0.686908, -0.652322,
		-0.810158, 0.158196, 0.564463,
		0.490929, 0.709318, 0.505824,
		38.248775, 30.362455, 44.942425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411621, 30.452387, 44.697590>,  <37.905125, 29.865932, 44.588348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411621, 30.452387, 44.697590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797012, 30.558729, 44.710480>,  <38.028248, 30.622536, 44.718212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797012, 30.558729, 44.710480>,  <37.411621, 30.452387, 44.697590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797012, 30.558729, 44.710480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132580, 0.578060, -0.805152,
		-0.232682, 0.771470, 0.592193,
		0.963474, 0.265857, 0.032223,
		38.086056, 30.638487, 44.720146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404896, 31.130957, 44.646885>,  <37.411621, 30.452387, 44.697590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404896, 31.130957, 44.646885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764309, 30.999382, 44.530647>,  <37.979958, 30.920437, 44.460903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764309, 30.999382, 44.530647>,  <37.404896, 31.130957, 44.646885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764309, 30.999382, 44.530647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127705, 0.437506, -0.890101,
		0.419925, 0.836892, 0.351105,
		0.898529, -0.328938, -0.290595,
		38.033867, 30.900702, 44.443470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391701, 31.533314, 44.089054>,  <37.404896, 31.130957, 44.646885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391701, 31.533314, 44.089054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713428, 31.298727, 44.050846>,  <37.906467, 31.157976, 44.027920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713428, 31.298727, 44.050846>,  <37.391701, 31.533314, 44.089054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713428, 31.298727, 44.050846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003706, 0.155803, -0.987781,
		0.594181, 0.794849, 0.123142,
		0.804322, -0.586465, -0.095520,
		37.954723, 31.122787, 44.022190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015804, 31.823057, 44.238216>,  <37.391701, 31.533314, 44.089054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015804, 31.823057, 44.238216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267891, 31.525536, 44.149155>,  <38.419144, 31.347023, 44.095718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267891, 31.525536, 44.149155>,  <38.015804, 31.823057, 44.238216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267891, 31.525536, 44.149155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068531, 0.232367, -0.970211,
		0.773385, 0.626706, 0.095469,
		0.630221, -0.743804, -0.222657,
		38.456959, 31.302395, 44.082359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526371, 32.132202, 43.956749>,  <38.015804, 31.823057, 44.238216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526371, 32.132202, 43.956749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482201, 31.759251, 43.819069>,  <38.455696, 31.535479, 43.736462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482201, 31.759251, 43.819069>,  <38.526371, 32.132202, 43.956749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482201, 31.759251, 43.819069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013044, 0.344926, -0.938539,
		0.993798, -0.108131, -0.025928,
		-0.110429, -0.932381, -0.344197,
		38.449074, 31.479536, 43.715809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941467, 32.194256, 43.429596>,  <38.526371, 32.132202, 43.956749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941467, 32.194256, 43.429596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724545, 31.866697, 43.354427>,  <38.594391, 31.670162, 43.309326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724545, 31.866697, 43.354427>,  <38.941467, 32.194256, 43.429596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724545, 31.866697, 43.354427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263143, 0.046871, -0.963618,
		0.797909, -0.572027, 0.190068,
		-0.542307, -0.818894, -0.187923,
		38.561852, 31.621029, 43.298050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401310, 31.663782, 43.185005>,  <38.941467, 32.194256, 43.429596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401310, 31.663782, 43.185005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037979, 31.584385, 43.037743>,  <38.819981, 31.536747, 42.949387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037979, 31.584385, 43.037743>,  <39.401310, 31.663782, 43.185005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037979, 31.584385, 43.037743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371017, 0.023974, -0.928317,
		0.193092, -0.979809, 0.051869,
		-0.908329, -0.198494, -0.368155,
		38.765480, 31.524837, 42.927296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522221, 31.290356, 42.454700>,  <39.401310, 31.663782, 43.185005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522221, 31.290356, 42.454700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147072, 31.427710, 42.474651>,  <38.921982, 31.510122, 42.486622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147072, 31.427710, 42.474651>,  <39.522221, 31.290356, 42.454700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147072, 31.427710, 42.474651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029449, 0.222008, -0.974600,
		-0.345738, -0.912578, -0.218327,
		-0.937869, 0.343385, 0.049882,
		38.865711, 31.530725, 42.489616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223133, 30.964005, 41.888706>,  <39.522221, 31.290356, 42.454700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223133, 30.964005, 41.888706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000996, 31.283438, 41.981537>,  <38.867714, 31.475098, 42.037235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000996, 31.283438, 41.981537>,  <39.223133, 30.964005, 41.888706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000996, 31.283438, 41.981537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122520, 0.197458, -0.972625,
		-0.822547, -0.568573, -0.011814,
		-0.555341, 0.798583, 0.232080,
		38.834393, 31.523012, 42.051163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811535, 31.191708, 41.275269>,  <39.223133, 30.964005, 41.888706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811535, 31.191708, 41.275269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828327, 31.525640, 41.494831>,  <38.838402, 31.726000, 41.626568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828327, 31.525640, 41.494831>,  <38.811535, 31.191708, 41.275269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828327, 31.525640, 41.494831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068442, 0.550498, -0.832026,
		-0.996772, -0.002642, 0.080246,
		0.041977, 0.834832, 0.548902,
		38.840919, 31.776091, 41.659500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305775, 31.560068, 41.088112>,  <38.811535, 31.191708, 41.275269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305775, 31.560068, 41.088112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563595, 31.828072, 41.235432>,  <38.718288, 31.988874, 41.323822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563595, 31.828072, 41.235432>,  <38.305775, 31.560068, 41.088112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563595, 31.828072, 41.235432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219636, 0.623669, -0.750198,
		-0.732335, 0.402649, 0.549144,
		0.644551, 0.670008, 0.368298,
		38.756962, 32.029076, 41.345921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032848, 32.145168, 40.811775>,  <38.305775, 31.560068, 41.088112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032848, 32.145168, 40.811775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397938, 32.235958, 40.947674>,  <38.616989, 32.290432, 41.029213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397938, 32.235958, 40.947674>,  <38.032848, 32.145168, 40.811775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397938, 32.235958, 40.947674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105671, 0.672090, -0.732891,
		-0.394686, 0.704825, 0.589445,
		0.912720, 0.226974, 0.339744,
		38.671753, 32.304050, 41.049599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124290, 32.860378, 41.007210>,  <38.032848, 32.145168, 40.811775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124290, 32.860378, 41.007210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483261, 32.717461, 40.903690>,  <38.698643, 32.631710, 40.841579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483261, 32.717461, 40.903690>,  <38.124290, 32.860378, 41.007210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483261, 32.717461, 40.903690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166267, 0.817271, -0.551746,
		0.408641, 0.452120, 0.792843,
		0.897423, -0.357290, -0.258797,
		38.752487, 32.610275, 40.826050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492813, 33.354870, 41.053249>,  <38.124290, 32.860378, 41.007210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492813, 33.354870, 41.053249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719528, 33.118927, 40.823181>,  <38.855556, 32.977360, 40.685139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719528, 33.118927, 40.823181>,  <38.492813, 33.354870, 41.053249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719528, 33.118927, 40.823181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190393, 0.773019, -0.605138,
		0.801562, 0.233476, 0.550442,
		0.566788, -0.589856, -0.575171,
		38.889565, 32.941971, 40.650631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257915, 33.656261, 41.011093>,  <38.492813, 33.354870, 41.053249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257915, 33.656261, 41.011093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108139, 33.449257, 40.703335>,  <39.018272, 33.325054, 40.518681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108139, 33.449257, 40.703335>,  <39.257915, 33.656261, 41.011093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108139, 33.449257, 40.703335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157202, 0.853182, -0.497361,
		0.913828, -0.065282, -0.400821,
		-0.374442, -0.517513, -0.769399,
		38.995808, 33.294003, 40.472515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705544, 33.436848, 40.589199>,  <39.257915, 33.656261, 41.011093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705544, 33.436848, 40.589199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799206, 33.061768, 40.691872>,  <39.855404, 32.836720, 40.753475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799206, 33.061768, 40.691872>,  <39.705544, 33.436848, 40.589199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799206, 33.061768, 40.691872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616784, -0.060801, -0.784781,
		0.751496, 0.342081, 0.564122,
		0.234160, -0.937701, 0.256682,
		39.869453, 32.780457, 40.768875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254158, 33.358631, 40.166168>,  <39.705544, 33.436848, 40.589199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254158, 33.358631, 40.166168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245323, 32.990696, 40.322838>,  <40.240021, 32.769936, 40.416840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245323, 32.990696, 40.322838>,  <40.254158, 33.358631, 40.166168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245323, 32.990696, 40.322838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720071, -0.286419, -0.632030,
		0.693549, 0.268073, 0.668675,
		-0.022091, -0.919837, 0.391678,
		40.238697, 32.714745, 40.440342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887077, 33.198700, 40.111240>,  <40.254158, 33.358631, 40.166168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887077, 33.198700, 40.111240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714573, 32.839615, 40.147308>,  <40.611069, 32.624165, 40.168949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714573, 32.839615, 40.147308>,  <40.887077, 33.198700, 40.111240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714573, 32.839615, 40.147308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499411, -0.320757, -0.804800,
		0.751400, -0.302048, 0.586656,
		-0.431263, -0.897709, 0.090171,
		40.585194, 32.570301, 40.174358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583694, 33.107407, 39.893017>,  <40.887077, 33.198700, 40.111240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583694, 33.107407, 39.893017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875660, 33.332191, 40.048668>,  <42.050838, 33.467064, 40.142059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875660, 33.332191, 40.048668>,  <41.583694, 33.107407, 39.893017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875660, 33.332191, 40.048668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382333, 0.136247, -0.913925,
		-0.566608, 0.815866, -0.115407,
		0.729916, 0.561961, 0.389131,
		42.094635, 33.500778, 40.165409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628567, 33.849178, 39.559830>,  <41.583694, 33.107407, 39.893017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628567, 33.849178, 39.559830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978966, 33.709785, 39.693214>,  <42.189205, 33.626148, 39.773243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978966, 33.709785, 39.693214>,  <41.628567, 33.849178, 39.559830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978966, 33.709785, 39.693214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457462, 0.381197, -0.803379,
		0.152853, 0.856298, 0.493345,
		0.875993, -0.348485, 0.333457,
		42.241764, 33.605240, 39.793251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125210, 34.418922, 39.631306>,  <41.628567, 33.849178, 39.559830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125210, 34.418922, 39.631306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341061, 34.084278, 39.593597>,  <42.470570, 33.883492, 39.570972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341061, 34.084278, 39.593597>,  <42.125210, 34.418922, 39.631306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341061, 34.084278, 39.593597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431888, 0.371200, -0.821999,
		0.722689, 0.402854, 0.561631,
		0.539623, -0.836612, -0.094274,
		42.502949, 33.833294, 39.565315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860920, 34.544010, 39.443787>,  <42.125210, 34.418922, 39.631306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860920, 34.544010, 39.443787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782078, 34.174458, 39.312580>,  <42.734772, 33.952724, 39.233856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782078, 34.174458, 39.312580>,  <42.860920, 34.544010, 39.443787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782078, 34.174458, 39.312580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318327, 0.256135, -0.912723,
		0.927263, -0.284320, 0.243610,
		-0.197108, -0.923881, -0.328012,
		42.722946, 33.897293, 39.214176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499580, 34.377113, 39.236275>,  <42.860920, 34.544010, 39.443787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499580, 34.377113, 39.236275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213280, 34.158951, 39.061813>,  <43.041500, 34.028053, 38.957134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213280, 34.158951, 39.061813>,  <43.499580, 34.377113, 39.236275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213280, 34.158951, 39.061813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278878, 0.349362, -0.894524,
		0.640259, -0.761888, -0.097952,
		-0.715748, -0.545411, -0.436156,
		42.998554, 33.995327, 38.930965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866661, 34.024025, 38.619892>,  <43.499580, 34.377113, 39.236275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866661, 34.024025, 38.619892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472366, 34.032879, 38.553150>,  <43.235790, 34.038193, 38.513103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472366, 34.032879, 38.553150>,  <43.866661, 34.024025, 38.619892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472366, 34.032879, 38.553150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165785, 0.298963, -0.939753,
		0.029079, -0.954008, -0.298368,
		-0.985733, 0.022138, -0.166854,
		43.176647, 34.039520, 38.503094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673050, 33.728649, 37.958290>,  <43.866661, 34.024025, 38.619892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673050, 33.728649, 37.958290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395077, 34.000797, 38.051376>,  <43.228294, 34.164085, 38.107227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395077, 34.000797, 38.051376>,  <43.673050, 33.728649, 37.958290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395077, 34.000797, 38.051376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146951, 0.451178, -0.880252,
		-0.703898, -0.577520, -0.413521,
		-0.694934, 0.680375, 0.232716,
		43.186596, 34.204910, 38.121193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267315, 33.928669, 37.275757>,  <43.673050, 33.728649, 37.958290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267315, 33.928669, 37.275757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193047, 34.217094, 37.542770>,  <43.148487, 34.390148, 37.702976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193047, 34.217094, 37.542770>,  <43.267315, 33.928669, 37.275757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193047, 34.217094, 37.542770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216186, 0.632722, -0.743590,
		-0.958535, -0.282374, 0.038405,
		-0.185671, 0.721060, 0.667531,
		43.137344, 34.433411, 37.743031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473721, 34.197983, 37.234509>,  <43.267315, 33.928669, 37.275757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473721, 34.197983, 37.234509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784267, 34.431831, 37.328716>,  <42.970596, 34.572140, 37.385242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784267, 34.431831, 37.328716>,  <42.473721, 34.197983, 37.234509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784267, 34.431831, 37.328716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106470, 0.489951, -0.865224,
		-0.621226, 0.646653, 0.442625,
		0.776365, 0.584626, 0.235521,
		43.017178, 34.607220, 37.399372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506916, 34.617420, 36.670311>,  <42.473721, 34.197983, 37.234509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506916, 34.617420, 36.670311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817509, 34.754517, 36.881821>,  <43.003864, 34.836773, 37.008728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817509, 34.754517, 36.881821>,  <42.506916, 34.617420, 36.670311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817509, 34.754517, 36.881821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300036, 0.536827, -0.788540,
		-0.554125, 0.770939, 0.314003,
		0.776482, 0.342738, 0.528779,
		43.050453, 34.857338, 37.040455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535442, 35.388565, 36.651123>,  <42.506916, 34.617420, 36.670311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535442, 35.388565, 36.651123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852341, 35.144653, 36.660183>,  <43.042480, 34.998306, 36.665619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852341, 35.144653, 36.660183>,  <42.535442, 35.388565, 36.651123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852341, 35.144653, 36.660183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067103, 0.050172, -0.996484,
		0.606500, 0.790981, 0.080666,
		0.792247, -0.609780, 0.022648,
		43.090015, 34.961720, 36.666977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250763, 35.763958, 36.488678>,  <42.535442, 35.388565, 36.651123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250763, 35.763958, 36.488678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214119, 35.392097, 36.345928>,  <43.192135, 35.168983, 36.260277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214119, 35.392097, 36.345928>,  <43.250763, 35.763958, 36.488678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214119, 35.392097, 36.345928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216809, 0.331164, -0.918327,
		0.971906, -0.161500, 0.171219,
		-0.091608, -0.929650, -0.356875,
		43.186638, 35.113201, 36.238865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968185, 35.400921, 36.380451>,  <43.250763, 35.763958, 36.488678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968185, 35.400921, 36.380451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671486, 35.292839, 36.134914>,  <43.493465, 35.227989, 35.987591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671486, 35.292839, 36.134914>,  <43.968185, 35.400921, 36.380451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671486, 35.292839, 36.134914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375898, 0.590496, -0.714153,
		0.555435, -0.760464, -0.336432,
		-0.741749, -0.270201, -0.613839,
		43.448963, 35.211777, 35.950764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189163, 35.035404, 35.848183>,  <43.968185, 35.400921, 36.380451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189163, 35.035404, 35.848183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872677, 35.253235, 35.736885>,  <43.682785, 35.383934, 35.670105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872677, 35.253235, 35.736885>,  <44.189163, 35.035404, 35.848183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872677, 35.253235, 35.736885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536803, 0.400499, -0.742592,
		-0.292964, -0.736909, -0.609210,
		-0.791211, 0.544579, -0.278243,
		43.635315, 35.416607, 35.653412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017658, 34.976673, 35.120396>,  <44.189163, 35.035404, 35.848183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017658, 34.976673, 35.120396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919983, 35.332687, 35.274391>,  <43.861378, 35.546295, 35.366787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919983, 35.332687, 35.274391>,  <44.017658, 34.976673, 35.120396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919983, 35.332687, 35.274391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548415, 0.454163, -0.702123,
		-0.799760, 0.039684, -0.599007,
		-0.244183, 0.890034, 0.384985,
		43.846729, 35.599697, 35.389885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696030, 35.032867, 34.683575>,  <44.017658, 34.976673, 35.120396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696030, 35.032867, 34.683575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613026, 34.903057, 34.314442>,  <44.563225, 34.825172, 34.092960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613026, 34.903057, 34.314442>,  <44.696030, 35.032867, 34.683575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613026, 34.903057, 34.314442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932575, 0.219215, -0.286792,
		0.295371, -0.920123, 0.257156,
		-0.207511, -0.324527, -0.922833,
		44.550774, 34.805698, 34.037590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094162, 34.309116, 34.542278>,  <44.696030, 35.032867, 34.683575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094162, 34.309116, 34.542278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029350, 34.588551, 34.263500>,  <44.990463, 34.756210, 34.096233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029350, 34.588551, 34.263500>,  <45.094162, 34.309116, 34.542278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029350, 34.588551, 34.263500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986691, 0.104874, -0.124266,
		-0.013719, -0.707801, -0.706279,
		-0.162026, 0.698584, -0.696942,
		44.980743, 34.798126, 34.054417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723751, 34.612865, 34.666618>,  <45.094162, 34.309116, 34.542278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723751, 34.612865, 34.666618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084915, 34.444321, 34.632660>,  <46.301613, 34.343193, 34.612286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084915, 34.444321, 34.632660>,  <45.723751, 34.612865, 34.666618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084915, 34.444321, 34.632660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420779, 0.906803, -0.025562,
		0.087759, -0.012644, 0.996061,
		0.902908, -0.421365, -0.084900,
		46.355789, 34.317909, 34.607189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206856, 34.853275, 35.149696>,  <45.723751, 34.612865, 34.666618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206856, 34.853275, 35.149696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416775, 34.734982, 34.830418>,  <46.542728, 34.664005, 34.638851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416775, 34.734982, 34.830418>,  <46.206856, 34.853275, 35.149696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.416775, 34.734982, 34.830418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599691, 0.793943, 0.100129,
		0.604114, -0.531222, 0.594011,
		0.524802, -0.295734, -0.798201,
		46.574215, 34.646263, 34.590958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882626, 34.659111, 35.343403>,  <46.206856, 34.853275, 35.149696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882626, 34.659111, 35.343403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808617, 34.815918, 34.982937>,  <46.764214, 34.910004, 34.766659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808617, 34.815918, 34.982937>,  <46.882626, 34.659111, 35.343403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808617, 34.815918, 34.982937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504777, 0.824691, 0.255117,
		0.843189, -0.407684, -0.350465,
		-0.185018, 0.392018, -0.901160,
		46.753113, 34.933525, 34.712589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.676914, 34.575314, 35.249893>,  <46.882626, 34.659111, 35.343403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.676914, 34.575314, 35.249893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537640, 34.925823, 35.116680>,  <47.454075, 35.136127, 35.036751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537640, 34.925823, 35.116680>,  <47.676914, 34.575314, 35.249893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.537640, 34.925823, 35.116680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263062, 0.432325, 0.862493,
		0.899756, 0.212704, -0.381046,
		-0.348191, 0.876272, -0.333033,
		47.433182, 35.188705, 35.016769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.990604, 30.480379, 29.529196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676689, 30.722822, 29.477432>,  <36.488338, 30.868288, 29.446375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676689, 30.722822, 29.477432>,  <36.990604, 30.480379, 29.529196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676689, 30.722822, 29.477432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103358, 0.077882, 0.991590,
		0.611087, 0.791562, 0.001525,
		-0.784787, 0.606105, -0.129407,
		36.441254, 30.904654, 29.438610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081905, 30.961586, 30.051880>,  <36.990604, 30.480379, 29.529196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081905, 30.961586, 30.051880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696480, 30.995573, 29.950426>,  <36.465225, 31.015965, 29.889555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696480, 30.995573, 29.950426>,  <37.081905, 30.961586, 30.051880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696480, 30.995573, 29.950426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251319, 0.037081, 0.967194,
		0.091583, 0.995693, -0.014376,
		-0.963562, 0.084965, -0.253632,
		36.407410, 31.021063, 29.874336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893742, 31.551008, 30.466208>,  <37.081905, 30.961586, 30.051880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893742, 31.551008, 30.466208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558105, 31.348722, 30.386026>,  <36.356724, 31.227352, 30.337917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558105, 31.348722, 30.386026>,  <36.893742, 31.551008, 30.466208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558105, 31.348722, 30.386026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243008, 0.018786, 0.969842,
		-0.486696, 0.862497, -0.138656,
		-0.839091, -0.505713, -0.200451,
		36.306377, 31.197008, 30.325891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362911, 31.894611, 30.873142>,  <36.893742, 31.551008, 30.466208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362911, 31.894611, 30.873142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163761, 31.567961, 30.756361>,  <36.044270, 31.371969, 30.686293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163761, 31.567961, 30.756361>,  <36.362911, 31.894611, 30.873142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163761, 31.567961, 30.756361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586436, 0.069009, 0.807050,
		-0.638913, 0.573024, -0.513259,
		-0.497879, -0.816628, -0.291951,
		36.014397, 31.322971, 30.668776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575188, 32.001896, 30.929596>,  <36.362911, 31.894611, 30.873142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575188, 32.001896, 30.929596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656017, 31.611422, 30.961166>,  <35.704514, 31.377138, 30.980108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656017, 31.611422, 30.961166>,  <35.575188, 32.001896, 30.929596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656017, 31.611422, 30.961166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521578, -0.039060, 0.852309,
		-0.828928, -0.213395, -0.517050,
		0.202075, -0.976185, 0.078924,
		35.716640, 31.318565, 30.984844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945171, 31.786293, 31.255428>,  <35.575188, 32.001896, 30.929596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945171, 31.786293, 31.255428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236237, 31.519283, 31.318571>,  <35.410877, 31.359077, 31.356457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236237, 31.519283, 31.318571>,  <34.945171, 31.786293, 31.255428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236237, 31.519283, 31.318571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332618, -0.142118, 0.932292,
		-0.599894, -0.730900, -0.325444,
		0.727663, -0.667524, 0.157855,
		35.454536, 31.319027, 31.365927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570091, 31.309563, 31.662172>,  <34.945171, 31.786293, 31.255428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570091, 31.309563, 31.662172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.961525, 31.254326, 31.723238>,  <35.196384, 31.221184, 31.759878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.961525, 31.254326, 31.723238>,  <34.570091, 31.309563, 31.662172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961525, 31.254326, 31.723238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165332, -0.085404, 0.982533,
		-0.122646, -0.986730, -0.106406,
		0.978583, -0.138096, 0.152664,
		35.255100, 31.212898, 31.769037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603889, 30.766228, 32.195263>,  <34.570091, 31.309563, 31.662172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603889, 30.766228, 32.195263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949429, 30.965578, 32.224628>,  <35.156750, 31.085188, 32.242249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949429, 30.965578, 32.224628>,  <34.603889, 30.766228, 32.195263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949429, 30.965578, 32.224628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050647, -0.059081, 0.996968,
		0.501205, -0.864944, -0.025796,
		0.863846, 0.498378, 0.073418,
		35.208584, 31.115091, 32.246655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006954, 30.480396, 32.799652>,  <34.603889, 30.766228, 32.195263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006954, 30.480396, 32.799652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139576, 30.849289, 32.720089>,  <35.219151, 31.070623, 32.672352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139576, 30.849289, 32.720089>,  <35.006954, 30.480396, 32.799652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139576, 30.849289, 32.720089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234981, 0.123462, 0.964127,
		0.913704, -0.366401, -0.175772,
		0.331556, 0.922230, -0.198905,
		35.239044, 31.125957, 32.660416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599358, 30.401802, 33.070568>,  <35.006954, 30.480396, 32.799652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599358, 30.401802, 33.070568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512161, 30.791222, 33.043205>,  <35.459843, 31.024874, 33.026787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512161, 30.791222, 33.043205>,  <35.599358, 30.401802, 33.070568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512161, 30.791222, 33.043205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223372, 0.118006, 0.967564,
		0.950045, 0.195640, -0.243188,
		-0.217992, 0.973550, -0.068410,
		35.446762, 31.083286, 33.022682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109222, 30.725311, 33.332958>,  <35.599358, 30.401802, 33.070568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109222, 30.725311, 33.332958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811069, 30.990999, 33.355659>,  <35.632179, 31.150412, 33.369278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811069, 30.990999, 33.355659>,  <36.109222, 30.725311, 33.332958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811069, 30.990999, 33.355659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273185, 0.226694, 0.934869,
		0.608092, 0.712338, -0.350428,
		-0.745382, 0.664217, 0.056749,
		35.587456, 31.190264, 33.372684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423874, 31.363081, 33.652550>,  <36.109222, 30.725311, 33.332958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423874, 31.363081, 33.652550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030392, 31.395115, 33.716934>,  <35.794304, 31.414335, 33.755566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030392, 31.395115, 33.716934>,  <36.423874, 31.363081, 33.652550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030392, 31.395115, 33.716934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176680, 0.265031, 0.947915,
		0.033255, 0.960908, -0.274863,
		-0.983706, 0.080086, 0.160960,
		35.735279, 31.419140, 33.765221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427158, 31.956600, 33.987305>,  <36.423874, 31.363081, 33.652550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427158, 31.956600, 33.987305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088890, 31.771948, 34.094437>,  <35.885929, 31.661158, 34.158714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088890, 31.771948, 34.094437>,  <36.427158, 31.956600, 33.987305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088890, 31.771948, 34.094437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149031, 0.277614, 0.949063,
		-0.512468, 0.842514, -0.165974,
		-0.845675, -0.461629, 0.267829,
		35.835186, 31.633459, 34.174786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129757, 32.352009, 34.544582>,  <36.427158, 31.956600, 33.987305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129757, 32.352009, 34.544582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924110, 32.010548, 34.577950>,  <35.800720, 31.805672, 34.597969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924110, 32.010548, 34.577950>,  <36.129757, 32.352009, 34.544582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924110, 32.010548, 34.577950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079800, 0.144436, 0.986291,
		-0.853999, 0.500414, -0.142379,
		-0.514118, -0.853654, 0.083415,
		35.769875, 31.754452, 34.602974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386856, 32.481224, 34.900322>,  <36.129757, 32.352009, 34.544582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386856, 32.481224, 34.900322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.456623, 32.090191, 34.947506>,  <35.498482, 31.855572, 34.975815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.456623, 32.090191, 34.947506>,  <35.386856, 32.481224, 34.900322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456623, 32.090191, 34.947506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028765, 0.124801, 0.991765,
		-0.984252, -0.169584, 0.049887,
		0.174414, -0.977582, 0.117958,
		35.508945, 31.796917, 34.982895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977787, 32.334354, 35.524723>,  <35.386856, 32.481224, 34.900322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977787, 32.334354, 35.524723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237514, 32.034294, 35.474674>,  <35.393353, 31.854258, 35.444645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237514, 32.034294, 35.474674>,  <34.977787, 32.334354, 35.524723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237514, 32.034294, 35.474674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224239, 0.031636, 0.974020,
		-0.726707, -0.660506, 0.188756,
		0.649318, -0.750154, -0.125121,
		35.432308, 31.809248, 35.437138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812885, 31.962076, 36.072170>,  <34.977787, 32.334354, 35.524723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812885, 31.962076, 36.072170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.173805, 31.850193, 35.940945>,  <35.390358, 31.783064, 35.862209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.173805, 31.850193, 35.940945>,  <34.812885, 31.962076, 36.072170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173805, 31.850193, 35.940945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319887, -0.075772, 0.944421,
		-0.289021, -0.957090, 0.021106,
		0.902297, -0.279710, -0.328060,
		35.444496, 31.766281, 35.842525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995274, 31.304617, 36.487453>,  <34.812885, 31.962076, 36.072170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995274, 31.304617, 36.487453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337349, 31.475370, 36.369865>,  <35.542595, 31.577822, 36.299313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337349, 31.475370, 36.369865>,  <34.995274, 31.304617, 36.487453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337349, 31.475370, 36.369865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280939, 0.094849, 0.955027,
		0.435568, -0.899319, -0.038814,
		0.855192, 0.426884, -0.293967,
		35.593906, 31.603436, 36.281677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497353, 31.014650, 36.982586>,  <34.995274, 31.304617, 36.487453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497353, 31.014650, 36.982586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707001, 31.309566, 36.812080>,  <35.832790, 31.486517, 36.709778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707001, 31.309566, 36.812080>,  <35.497353, 31.014650, 36.982586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707001, 31.309566, 36.812080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472655, 0.164535, 0.865751,
		0.708446, -0.655233, -0.262248,
		0.524119, 0.737291, -0.426264,
		35.864235, 31.530754, 36.684200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200699, 30.986910, 37.303764>,  <35.497353, 31.014650, 36.982586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200699, 30.986910, 37.303764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180550, 31.362576, 37.167862>,  <36.168461, 31.587975, 37.086323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180550, 31.362576, 37.167862>,  <36.200699, 30.986910, 37.303764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180550, 31.362576, 37.167862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274260, 0.340114, 0.899502,
		0.960335, -0.047870, -0.274708,
		-0.050373, 0.939165, -0.339753,
		36.165440, 31.644325, 37.065937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765018, 31.314444, 37.519032>,  <36.200699, 30.986910, 37.303764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765018, 31.314444, 37.519032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503712, 31.608566, 37.446850>,  <36.346928, 31.785040, 37.403542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503712, 31.608566, 37.446850>,  <36.765018, 31.314444, 37.519032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503712, 31.608566, 37.446850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235493, 0.423853, 0.874581,
		0.719569, 0.528843, -0.450050,
		-0.653271, 0.735305, -0.180453,
		36.307732, 31.829159, 37.392715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122654, 31.930893, 37.763363>,  <36.765018, 31.314444, 37.519032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122654, 31.930893, 37.763363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740105, 32.047756, 37.762985>,  <36.510574, 32.117874, 37.762760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740105, 32.047756, 37.762985>,  <37.122654, 31.930893, 37.763363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740105, 32.047756, 37.762985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198975, 0.653696, 0.730131,
		0.213933, 0.698086, -0.683307,
		-0.956369, 0.292160, -0.000945,
		36.453194, 32.135403, 37.762703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638775, 31.374037, 37.581783>,  <37.122654, 31.930893, 37.763363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638775, 31.374037, 37.581783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020107, 31.261257, 37.624996>,  <38.248905, 31.193588, 37.650925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020107, 31.261257, 37.624996>,  <37.638775, 31.374037, 37.581783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020107, 31.261257, 37.624996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155114, 0.150365, -0.976386,
		0.259048, 0.947573, 0.187082,
		0.953328, -0.281950, 0.108030,
		38.306107, 31.176672, 37.657406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933056, 31.818878, 37.223484>,  <37.638775, 31.374037, 37.581783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933056, 31.818878, 37.223484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.231430, 31.552538, 37.229435>,  <38.410454, 31.392735, 37.233006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.231430, 31.552538, 37.229435>,  <37.933056, 31.818878, 37.223484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231430, 31.552538, 37.229435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257999, 0.268289, -0.928147,
		0.614016, 0.696178, 0.371915,
		0.745937, -0.665851, 0.014879,
		38.455212, 31.352783, 37.233898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510223, 32.131149, 36.888340>,  <37.933056, 31.818878, 37.223484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510223, 32.131149, 36.888340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.578857, 31.739223, 36.847313>,  <38.620037, 31.504068, 36.822697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.578857, 31.739223, 36.847313>,  <38.510223, 32.131149, 36.888340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578857, 31.739223, 36.847313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347783, 0.157653, -0.924225,
		0.921741, 0.122911, 0.367814,
		0.171584, -0.979816, -0.102569,
		38.630333, 31.445278, 36.816544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144352, 32.130562, 36.614765>,  <38.510223, 32.131149, 36.888340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144352, 32.130562, 36.614765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015675, 31.756802, 36.553574>,  <38.938469, 31.532545, 36.516861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015675, 31.756802, 36.553574>,  <39.144352, 32.130562, 36.614765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015675, 31.756802, 36.553574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503520, -0.032002, -0.863391,
		0.801860, -0.354775, 0.480786,
		-0.321695, -0.934404, -0.152975,
		38.919167, 31.476480, 36.507683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631618, 31.810080, 36.361702>,  <39.144352, 32.130562, 36.614765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631618, 31.810080, 36.361702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332611, 31.563408, 36.262974>,  <39.153206, 31.415405, 36.203735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332611, 31.563408, 36.262974>,  <39.631618, 31.810080, 36.361702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332611, 31.563408, 36.262974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320170, -0.008937, -0.947318,
		0.581986, -0.787164, 0.204123,
		-0.747519, -0.616679, -0.246825,
		39.108356, 31.378405, 36.188927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992184, 31.282438, 36.092339>,  <39.631618, 31.810080, 36.361702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992184, 31.282438, 36.092339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617443, 31.248892, 35.956528>,  <39.392601, 31.228764, 35.875042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617443, 31.248892, 35.956528>,  <39.992184, 31.282438, 36.092339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617443, 31.248892, 35.956528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347728, -0.119568, -0.929940,
		0.037396, -0.989277, 0.141180,
		-0.936850, -0.083868, -0.339528,
		39.336388, 31.223732, 35.854668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057613, 30.903070, 35.537796>,  <39.992184, 31.282438, 36.092339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057613, 30.903070, 35.537796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.679474, 31.009430, 35.462318>,  <39.452591, 31.073246, 35.417030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.679474, 31.009430, 35.462318>,  <40.057613, 30.903070, 35.537796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679474, 31.009430, 35.462318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193022, -0.010026, -0.981143,
		-0.262779, -0.963948, -0.041847,
		-0.945351, 0.265902, -0.188698,
		39.395870, 31.089201, 35.405708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698105, 30.439178, 35.075001>,  <40.057613, 30.903070, 35.537796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698105, 30.439178, 35.075001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527809, 30.795237, 35.010029>,  <39.425632, 31.008871, 34.971046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527809, 30.795237, 35.010029>,  <39.698105, 30.439178, 35.075001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527809, 30.795237, 35.010029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237220, -0.063434, -0.969383,
		-0.873197, -0.451237, -0.184154,
		-0.425739, 0.890147, -0.162433,
		39.400089, 31.062281, 34.961300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293201, 30.334845, 34.530071>,  <39.698105, 30.439178, 35.075001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293201, 30.334845, 34.530071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.359367, 30.728619, 34.553822>,  <39.399067, 30.964884, 34.568073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.359367, 30.728619, 34.553822>,  <39.293201, 30.334845, 34.530071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359367, 30.728619, 34.553822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139842, 0.036183, -0.989513,
		-0.976259, 0.171986, -0.131680,
		0.165417, 0.984435, 0.059375,
		39.408993, 31.023949, 34.571632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048130, 30.558372, 33.965988>,  <39.293201, 30.334845, 34.530071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048130, 30.558372, 33.965988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289818, 30.857176, 34.076904>,  <39.434830, 31.036459, 34.143456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289818, 30.857176, 34.076904>,  <39.048130, 30.558372, 33.965988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289818, 30.857176, 34.076904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285007, 0.122370, -0.950682,
		-0.744102, 0.653453, -0.138964,
		0.604221, 0.747010, 0.277294,
		39.471085, 31.081280, 34.160091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677357, 31.223328, 33.720448>,  <39.048130, 30.558372, 33.965988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677357, 31.223328, 33.720448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069527, 31.289614, 33.762974>,  <39.304829, 31.329386, 33.788490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069527, 31.289614, 33.762974>,  <38.677357, 31.223328, 33.720448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069527, 31.289614, 33.762974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085528, 0.127929, -0.988089,
		-0.177345, 0.977840, 0.111252,
		0.980425, 0.165717, 0.106320,
		39.363655, 31.339329, 33.794868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722725, 31.727093, 33.301544>,  <38.677357, 31.223328, 33.720448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722725, 31.727093, 33.301544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.093204, 31.590542, 33.365566>,  <39.315491, 31.508612, 33.403980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.093204, 31.590542, 33.365566>,  <38.722725, 31.727093, 33.301544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093204, 31.590542, 33.365566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239629, 0.205226, -0.948926,
		0.291093, 0.917248, 0.271884,
		0.926198, -0.341377, 0.160059,
		39.371063, 31.488129, 33.413586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221401, 32.192337, 33.062935>,  <38.722725, 31.727093, 33.301544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221401, 32.192337, 33.062935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.409538, 31.839632, 33.048634>,  <39.522419, 31.628010, 33.040054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.409538, 31.839632, 33.048634>,  <39.221401, 32.192337, 33.062935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409538, 31.839632, 33.048634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253724, 0.173920, -0.951512,
		0.845223, 0.438465, 0.305525,
		0.470342, -0.881760, -0.035752,
		39.550640, 31.575104, 33.037907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697960, 32.306583, 32.577667>,  <39.221401, 32.192337, 33.062935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697960, 32.306583, 32.577667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711781, 31.908829, 32.617668>,  <39.720074, 31.670176, 32.641666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711781, 31.908829, 32.617668>,  <39.697960, 32.306583, 32.577667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711781, 31.908829, 32.617668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232264, -0.089328, -0.968542,
		0.972039, 0.056695, 0.227874,
		0.034556, -0.994387, 0.099998,
		39.722149, 31.610512, 32.647667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286263, 32.039349, 32.232914>,  <39.697960, 32.306583, 32.577667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286263, 32.039349, 32.232914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.066612, 31.706583, 32.264870>,  <39.934822, 31.506924, 32.284042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.066612, 31.706583, 32.264870>,  <40.286263, 32.039349, 32.232914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066612, 31.706583, 32.264870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115864, -0.170444, -0.978532,
		0.827670, -0.528080, 0.189984,
		-0.549125, -0.831913, 0.079886,
		39.901875, 31.457008, 32.288834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693851, 31.514381, 31.985672>,  <40.286263, 32.039349, 32.232914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693851, 31.514381, 31.985672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322067, 31.378542, 31.928009>,  <40.098999, 31.297039, 31.893412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322067, 31.378542, 31.928009>,  <40.693851, 31.514381, 31.985672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322067, 31.378542, 31.928009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129022, 0.066867, -0.989385,
		0.345633, -0.938191, -0.018335,
		-0.929458, -0.339598, -0.144158,
		40.043228, 31.276663, 31.884762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668633, 31.056423, 31.357180>,  <40.693851, 31.514381, 31.985672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668633, 31.056423, 31.357180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.287537, 31.168465, 31.404222>,  <40.058880, 31.235689, 31.432449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.287537, 31.168465, 31.404222>,  <40.668633, 31.056423, 31.357180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287537, 31.168465, 31.404222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067115, 0.183500, -0.980726,
		-0.296287, -0.942268, -0.156028,
		-0.952738, 0.280105, 0.117609,
		40.001717, 31.252497, 31.439505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279427, 30.564796, 30.920977>,  <40.668633, 31.056423, 31.357180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279427, 30.564796, 30.920977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057640, 30.894484, 30.966999>,  <39.924568, 31.092297, 30.994614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057640, 30.894484, 30.966999>,  <40.279427, 30.564796, 30.920977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057640, 30.894484, 30.966999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208383, -0.003651, -0.978040,
		-0.805698, -0.566262, 0.173777,
		-0.554461, 0.824217, 0.115057,
		39.891300, 31.141748, 31.001516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.739937, 30.543440, 30.363644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702232, 30.916527, 30.502871>,  <39.679607, 31.140379, 30.586407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702232, 30.916527, 30.502871>,  <39.739937, 30.543440, 30.363644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702232, 30.916527, 30.502871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193388, 0.325808, -0.925446,
		-0.976583, -0.154549, 0.149664,
		-0.094265, 0.932719, 0.348067,
		39.673954, 31.196342, 30.607290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097778, 30.716131, 30.223894>,  <39.739937, 30.543440, 30.363644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097778, 30.716131, 30.223894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.294987, 31.062414, 30.258497>,  <39.413311, 31.270184, 30.279259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.294987, 31.062414, 30.258497>,  <39.097778, 30.716131, 30.223894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294987, 31.062414, 30.258497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273676, 0.248704, -0.929111,
		-0.825852, 0.434396, 0.359539,
		0.493021, 0.865706, 0.086509,
		39.442894, 31.322126, 30.284451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635582, 31.133661, 30.079851>,  <39.097778, 30.716131, 30.223894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635582, 31.133661, 30.079851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985134, 31.317776, 30.017284>,  <39.194866, 31.428244, 29.979744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985134, 31.317776, 30.017284>,  <38.635582, 31.133661, 30.079851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985134, 31.317776, 30.017284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341468, 0.352168, -0.871422,
		-0.346018, 0.814933, 0.464926,
		0.873883, 0.460285, -0.156418,
		39.247299, 31.455862, 29.970360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475342, 31.759584, 29.762840>,  <38.635582, 31.133661, 30.079851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475342, 31.759584, 29.762840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.860996, 31.705191, 29.671663>,  <39.092388, 31.672554, 29.616957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.860996, 31.705191, 29.671663>,  <38.475342, 31.759584, 29.762840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860996, 31.705191, 29.671663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182191, 0.285457, -0.940915,
		0.193015, 0.948695, 0.250444,
		0.964133, -0.135982, -0.227941,
		39.150234, 31.664396, 29.603281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650021, 32.315796, 29.455505>,  <38.475342, 31.759584, 29.762840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650021, 32.315796, 29.455505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941475, 32.065407, 29.344339>,  <39.116348, 31.915173, 29.277639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941475, 32.065407, 29.344339>,  <38.650021, 32.315796, 29.455505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941475, 32.065407, 29.344339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155513, 0.243969, -0.957233,
		0.667008, 0.740698, 0.080418,
		0.728640, -0.625976, -0.277917,
		39.160069, 31.877615, 29.260963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159370, 32.660450, 28.926777>,  <38.650021, 32.315796, 29.455505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159370, 32.660450, 28.926777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182240, 32.264500, 28.874802>,  <39.195961, 32.026932, 28.843616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182240, 32.264500, 28.874802>,  <39.159370, 32.660450, 28.926777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182240, 32.264500, 28.874802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000445, 0.130125, -0.991498,
		0.998364, 0.056748, 0.006999,
		0.057176, -0.989872, -0.129937,
		39.199394, 31.967539, 28.835821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537243, 32.636425, 28.353212>,  <39.159370, 32.660450, 28.926777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537243, 32.636425, 28.353212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404247, 32.260761, 28.387701>,  <39.324451, 32.035362, 28.408394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404247, 32.260761, 28.387701>,  <39.537243, 32.636425, 28.353212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404247, 32.260761, 28.387701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068442, -0.067155, -0.995392,
		0.940620, -0.336859, -0.041949,
		-0.332489, -0.939157, 0.086223,
		39.304501, 31.979013, 28.413568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918453, 32.285519, 27.885017>,  <39.537243, 32.636425, 28.353212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918453, 32.285519, 27.885017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615578, 32.030849, 27.943407>,  <39.433853, 31.878048, 27.978441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615578, 32.030849, 27.943407>,  <39.918453, 32.285519, 27.885017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615578, 32.030849, 27.943407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045494, -0.171533, -0.984127,
		0.651610, -0.751811, 0.100918,
		-0.757189, -0.636676, 0.145975,
		39.388420, 31.839848, 27.987200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114899, 31.648048, 27.629505>,  <39.918453, 32.285519, 27.885017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114899, 31.648048, 27.629505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715530, 31.628746, 27.640968>,  <39.475910, 31.617165, 27.647846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715530, 31.628746, 27.640968>,  <40.114899, 31.648048, 27.629505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715530, 31.628746, 27.640968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017993, -0.208469, -0.977863,
		0.053164, -0.976838, 0.207272,
		-0.998424, -0.048258, 0.028660,
		39.416004, 31.614269, 27.649567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023258, 31.067165, 27.212475>,  <40.114899, 31.648048, 27.629505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023258, 31.067165, 27.212475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.676643, 31.266729, 27.218206>,  <39.468674, 31.386467, 27.221645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.676643, 31.266729, 27.218206>,  <40.023258, 31.067165, 27.212475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676643, 31.266729, 27.218206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072319, -0.097097, -0.992644,
		-0.493849, -0.861197, 0.120219,
		-0.866535, 0.498911, 0.014329,
		39.416683, 31.416403, 27.222506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550049, 30.665504, 26.768419>,  <40.023258, 31.067165, 27.212475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550049, 30.665504, 26.768419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.428711, 31.044590, 26.808060>,  <39.355907, 31.272041, 26.831844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.428711, 31.044590, 26.808060>,  <39.550049, 30.665504, 26.768419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428711, 31.044590, 26.808060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080095, 0.078276, -0.993709,
		-0.949507, -0.309378, 0.052162,
		-0.303349, 0.947712, 0.099103,
		39.337708, 31.328903, 26.837791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989624, 30.689894, 26.222366>,  <39.550049, 30.665504, 26.768419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989624, 30.689894, 26.222366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147350, 31.044262, 26.320068>,  <39.241985, 31.256882, 26.378689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147350, 31.044262, 26.320068>,  <38.989624, 30.689894, 26.222366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147350, 31.044262, 26.320068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030504, 0.253026, -0.966978,
		-0.918467, 0.388749, 0.072748,
		0.394319, 0.885919, 0.244255,
		39.265644, 31.310038, 26.393345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822014, 31.065901, 25.658195>,  <38.989624, 30.689894, 26.222366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822014, 31.065901, 25.658195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077045, 31.329472, 25.817846>,  <39.230064, 31.487614, 25.913637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077045, 31.329472, 25.817846>,  <38.822014, 31.065901, 25.658195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077045, 31.329472, 25.817846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035591, 0.492343, -0.869673,
		-0.769559, 0.568694, 0.290457,
		0.637583, 0.658927, 0.399127,
		39.268322, 31.527149, 25.937584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628181, 31.558365, 25.295527>,  <38.822014, 31.065901, 25.658195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628181, 31.558365, 25.295527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986443, 31.647659, 25.449394>,  <39.201401, 31.701237, 25.541714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986443, 31.647659, 25.449394>,  <38.628181, 31.558365, 25.295527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986443, 31.647659, 25.449394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248525, 0.466059, -0.849131,
		-0.368836, 0.856127, 0.361947,
		0.895653, 0.223238, 0.384668,
		39.255138, 31.714630, 25.564795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667343, 32.300022, 25.184755>,  <38.628181, 31.558365, 25.295527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667343, 32.300022, 25.184755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029400, 32.132008, 25.210928>,  <39.246635, 32.031200, 25.226631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029400, 32.132008, 25.210928>,  <38.667343, 32.300022, 25.184755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029400, 32.132008, 25.210928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234924, 0.365972, -0.900486,
		0.354293, 0.830442, 0.429934,
		0.905145, -0.420038, 0.065430,
		39.300941, 32.005997, 25.230556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104176, 32.866829, 25.008430>,  <38.667343, 32.300022, 25.184755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104176, 32.866829, 25.008430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345528, 32.547852, 25.006937>,  <39.490337, 32.356464, 25.006041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345528, 32.547852, 25.006937>,  <39.104176, 32.866829, 25.008430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345528, 32.547852, 25.006937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326179, 0.251069, -0.911357,
		0.727695, 0.548676, 0.411600,
		0.603379, -0.797446, -0.003735,
		39.526543, 32.308617, 25.005817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710232, 33.168484, 24.720854>,  <39.104176, 32.866829, 25.008430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710232, 33.168484, 24.720854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.704994, 32.769440, 24.693697>,  <39.701851, 32.530014, 24.677402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.704994, 32.769440, 24.693697>,  <39.710232, 33.168484, 24.720854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704994, 32.769440, 24.693697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226367, 0.063176, -0.971991,
		0.973954, -0.028093, 0.224998,
		-0.013092, -0.997607, -0.067890,
		39.701065, 32.470158, 24.673330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373333, 32.980881, 24.485319>,  <39.710232, 33.168484, 24.720854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373333, 32.980881, 24.485319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.116249, 32.685169, 24.404926>,  <39.961998, 32.507744, 24.356691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.116249, 32.685169, 24.404926>,  <40.373333, 32.980881, 24.485319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116249, 32.685169, 24.404926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341923, -0.042038, -0.938787,
		0.685577, -0.672085, 0.279795,
		-0.642707, -0.739280, -0.200981,
		39.923435, 32.463387, 24.344631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833363, 32.517815, 24.156784>,  <40.373333, 32.980881, 24.485319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833363, 32.517815, 24.156784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447174, 32.445518, 24.081734>,  <40.215462, 32.402142, 24.036703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447174, 32.445518, 24.081734>,  <40.833363, 32.517815, 24.156784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447174, 32.445518, 24.081734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221676, -0.191594, -0.956113,
		0.136862, -0.964689, 0.225044,
		-0.965468, -0.180743, -0.187627,
		40.157536, 32.391296, 24.025446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842030, 31.952696, 23.704672>,  <40.833363, 32.517815, 24.156784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842030, 31.952696, 23.704672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.476505, 32.104496, 23.646795>,  <40.257191, 32.195576, 23.612068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.476505, 32.104496, 23.646795>,  <40.842030, 31.952696, 23.704672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476505, 32.104496, 23.646795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150721, -0.013956, -0.988478,
		-0.377145, -0.925087, -0.044445,
		-0.913808, 0.379499, -0.144694,
		40.202362, 32.218346, 23.603388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431271, 31.459194, 23.177280>,  <40.842030, 31.952696, 23.704672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431271, 31.459194, 23.177280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275883, 31.827738, 23.171785>,  <40.182648, 32.048862, 23.168488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275883, 31.827738, 23.171785>,  <40.431271, 31.459194, 23.177280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275883, 31.827738, 23.171785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109934, 0.031539, -0.993439,
		-0.914879, -0.387435, -0.113541,
		-0.388473, 0.921358, -0.013738,
		40.159340, 32.104145, 23.167664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889034, 31.524025, 22.583363>,  <40.431271, 31.459194, 23.177280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889034, 31.524025, 22.583363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944790, 31.912668, 22.659836>,  <39.978241, 32.145855, 22.705719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944790, 31.912668, 22.659836>,  <39.889034, 31.524025, 22.583363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944790, 31.912668, 22.659836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028627, 0.189032, -0.981554,
		-0.989824, 0.142288, -0.001466,
		0.139386, 0.971608, 0.191182,
		39.986607, 32.204151, 22.717190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302620, 31.907181, 22.256416>,  <39.889034, 31.524025, 22.583363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302620, 31.907181, 22.256416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657509, 32.089394, 22.285616>,  <39.870441, 32.198723, 22.303135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657509, 32.089394, 22.285616>,  <39.302620, 31.907181, 22.256416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657509, 32.089394, 22.285616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123875, -0.082809, -0.988836,
		-0.444401, 0.886360, -0.129898,
		0.887222, 0.455531, 0.072997,
		39.923676, 32.226051, 22.307514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661869, 32.109070, 21.627234>,  <39.302620, 31.907181, 22.256416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661869, 32.109070, 21.627234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993401, 32.120579, 21.850737>,  <40.192322, 32.127483, 21.984838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993401, 32.120579, 21.850737>,  <39.661869, 32.109070, 21.627234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993401, 32.120579, 21.850737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547296, 0.165726, -0.820367,
		-0.116207, 0.985752, 0.121610,
		0.828832, 0.028776, 0.558757,
		40.242050, 32.129211, 22.018364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929131, 32.256031, 21.773821>,  <39.661869, 32.109070, 21.627234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929131, 32.256031, 21.773821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.543140, 32.251759, 21.668976>,  <38.311546, 32.249195, 21.606068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.543140, 32.251759, 21.668976>,  <38.929131, 32.256031, 21.773821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543140, 32.251759, 21.668976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244587, -0.324606, 0.913678,
		-0.094842, 0.945789, 0.310625,
		-0.964978, -0.010680, -0.262114,
		38.253647, 32.248554, 21.590342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588669, 32.708393, 22.216251>,  <38.929131, 32.256031, 21.773821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588669, 32.708393, 22.216251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312344, 32.461254, 22.066034>,  <38.146549, 32.312969, 21.975904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312344, 32.461254, 22.066034>,  <38.588669, 32.708393, 22.216251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312344, 32.461254, 22.066034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365911, -0.149226, 0.918608,
		-0.623603, 0.772005, -0.122990,
		-0.690817, -0.617850, -0.375544,
		38.105099, 32.275898, 21.953371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964088, 33.054253, 22.476423>,  <38.588669, 32.708393, 22.216251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964088, 33.054253, 22.476423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.935822, 32.664478, 22.391125>,  <37.918861, 32.430614, 22.339945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.935822, 32.664478, 22.391125>,  <37.964088, 33.054253, 22.476423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935822, 32.664478, 22.391125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342044, -0.177147, 0.922835,
		-0.937023, 0.138154, -0.320782,
		-0.070667, -0.974439, -0.213246,
		37.914623, 32.372147, 22.327150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357944, 32.908867, 22.802979>,  <37.964088, 33.054253, 22.476423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357944, 32.908867, 22.802979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513092, 32.545212, 22.742285>,  <37.606182, 32.327019, 22.705870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513092, 32.545212, 22.742285>,  <37.357944, 32.908867, 22.802979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513092, 32.545212, 22.742285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583359, -0.369589, 0.723254,
		-0.713618, -0.192012, -0.673707,
		0.387868, -0.909140, -0.151733,
		37.629452, 32.272469, 22.696764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750183, 32.534706, 22.847418>,  <37.357944, 32.908867, 22.802979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750183, 32.534706, 22.847418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043659, 32.271599, 22.915581>,  <37.219746, 32.113735, 22.956478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043659, 32.271599, 22.915581>,  <36.750183, 32.534706, 22.847418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043659, 32.271599, 22.915581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510415, -0.367973, 0.777221,
		-0.448528, -0.657216, -0.605714,
		0.733688, -0.657771, 0.170406,
		37.263767, 32.074268, 22.966703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367126, 32.001667, 23.035084>,  <36.750183, 32.534706, 22.847418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367126, 32.001667, 23.035084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732979, 31.932913, 23.181461>,  <36.952488, 31.891661, 23.269287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732979, 31.932913, 23.181461>,  <36.367126, 32.001667, 23.035084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732979, 31.932913, 23.181461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403083, -0.317500, 0.858322,
		-0.031345, -0.932550, -0.359678,
		0.914626, -0.171884, 0.365943,
		37.007366, 31.881348, 23.291245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358925, 31.395664, 23.528486>,  <36.367126, 32.001667, 23.035084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358925, 31.395664, 23.528486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688103, 31.593412, 23.640461>,  <36.885609, 31.712061, 23.707645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688103, 31.593412, 23.640461>,  <36.358925, 31.395664, 23.528486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688103, 31.593412, 23.640461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285773, -0.065656, 0.956046,
		0.491020, -0.866768, 0.087247,
		0.822942, 0.494370, 0.279938,
		36.934986, 31.741724, 23.724442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601044, 31.043657, 24.169151>,  <36.358925, 31.395664, 23.528486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601044, 31.043657, 24.169151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777740, 31.402267, 24.182493>,  <36.883759, 31.617434, 24.190498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777740, 31.402267, 24.182493>,  <36.601044, 31.043657, 24.169151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777740, 31.402267, 24.182493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182865, 0.053580, 0.981677,
		0.878310, -0.439743, 0.187612,
		0.441738, 0.896524, 0.033354,
		36.910263, 31.671225, 24.192499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911114, 30.954548, 24.824560>,  <36.601044, 31.043657, 24.169151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911114, 30.954548, 24.824560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951893, 31.344177, 24.743774>,  <36.976360, 31.577955, 24.695303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951893, 31.344177, 24.743774>,  <36.911114, 30.954548, 24.824560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951893, 31.344177, 24.743774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054477, 0.197253, 0.978838,
		0.993297, -0.110797, -0.032954,
		0.101952, 0.974072, -0.201966,
		36.982479, 31.636398, 24.683184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623894, 31.205187, 24.861708>,  <36.911114, 30.954548, 24.824560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623894, 31.205187, 24.861708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352718, 31.482702, 24.958921>,  <37.190014, 31.649212, 25.017250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352718, 31.482702, 24.958921>,  <37.623894, 31.205187, 24.861708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352718, 31.482702, 24.958921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264049, -0.078728, 0.961291,
		0.686064, 0.715865, -0.129821,
		-0.677934, 0.693787, 0.243035,
		37.149338, 31.690838, 25.031832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954990, 31.425749, 25.539511>,  <37.623894, 31.205187, 24.861708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954990, 31.425749, 25.539511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583954, 31.574226, 25.522619>,  <37.361332, 31.663313, 25.512484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.583954, 31.574226, 25.522619>,  <37.954990, 31.425749, 25.539511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583954, 31.574226, 25.522619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087479, -0.105920, 0.990519,
		0.363200, 0.922495, 0.130722,
		-0.927595, 0.371192, -0.042229,
		37.305676, 31.685583, 25.509951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976803, 31.962961, 26.095514>,  <37.954990, 31.425749, 25.539511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976803, 31.962961, 26.095514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599499, 31.856546, 26.016033>,  <37.373116, 31.792698, 25.968344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599499, 31.856546, 26.016033>,  <37.976803, 31.962961, 26.095514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599499, 31.856546, 26.016033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180461, -0.091608, 0.979307,
		-0.278735, 0.959600, 0.038401,
		-0.943261, -0.266037, -0.198705,
		37.316521, 31.776735, 25.956421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659111, 32.341976, 26.522392>,  <37.976803, 31.962961, 26.095514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659111, 32.341976, 26.522392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.401127, 32.045509, 26.447887>,  <37.246334, 31.867630, 26.403185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.401127, 32.045509, 26.447887>,  <37.659111, 32.341976, 26.522392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401127, 32.045509, 26.447887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273726, -0.003512, 0.961801,
		-0.713509, 0.671312, -0.200611,
		-0.644965, -0.741166, -0.186262,
		37.207638, 31.823160, 26.392010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122208, 32.445526, 27.043793>,  <37.659111, 32.341976, 26.522392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122208, 32.445526, 27.043793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019329, 32.086399, 26.900816>,  <36.957600, 31.870922, 26.815029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019329, 32.086399, 26.900816>,  <37.122208, 32.445526, 27.043793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019329, 32.086399, 26.900816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494165, -0.195671, 0.847062,
		-0.830451, 0.394500, -0.393345,
		-0.257200, -0.897821, -0.357443,
		36.942169, 31.817053, 26.793583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402927, 32.390533, 27.187084>,  <37.122208, 32.445526, 27.043793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402927, 32.390533, 27.187084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515068, 32.010639, 27.131369>,  <36.582352, 31.782701, 27.097939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515068, 32.010639, 27.131369>,  <36.402927, 32.390533, 27.187084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515068, 32.010639, 27.131369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506227, -0.269574, 0.819185,
		-0.815560, -0.159146, -0.556358,
		0.280349, -0.949738, -0.139290,
		36.599174, 31.725718, 27.089582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829784, 31.850485, 27.440470>,  <36.402927, 32.390533, 27.187084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829784, 31.850485, 27.440470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174622, 31.648588, 27.458479>,  <36.381523, 31.527451, 27.469284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174622, 31.648588, 27.458479>,  <35.829784, 31.850485, 27.440470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174622, 31.648588, 27.458479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303880, -0.443826, 0.843016,
		-0.405519, -0.740444, -0.536001,
		0.862098, -0.504739, 0.045026,
		36.433250, 31.497166, 27.471987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641861, 31.136250, 27.615166>,  <35.829784, 31.850485, 27.440470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641861, 31.136250, 27.615166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.022861, 31.175898, 27.730352>,  <36.251461, 31.199686, 27.799463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.022861, 31.175898, 27.730352>,  <35.641861, 31.136250, 27.615166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022861, 31.175898, 27.730352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225950, -0.403975, 0.886426,
		0.204196, -0.909384, -0.362388,
		0.952497, 0.099123, 0.287965,
		36.308609, 31.205635, 27.816742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857887, 30.538614, 27.847916>,  <35.641861, 31.136250, 27.615166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857887, 30.538614, 27.847916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127007, 30.784250, 28.012955>,  <36.288479, 30.931631, 28.111979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127007, 30.784250, 28.012955>,  <35.857887, 30.538614, 27.847916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127007, 30.784250, 28.012955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199658, -0.386290, 0.900509,
		0.712376, -0.688239, -0.137288,
		0.672798, 0.614090, 0.412596,
		36.328846, 30.968477, 28.136734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196609, 30.196589, 28.488989>,  <35.857887, 30.538614, 27.847916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196609, 30.196589, 28.488989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.297382, 30.577906, 28.555635>,  <36.357845, 30.806696, 28.595623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.297382, 30.577906, 28.555635>,  <36.196609, 30.196589, 28.488989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297382, 30.577906, 28.555635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243761, -0.104108, 0.964231,
		0.936543, -0.283533, 0.206148,
		0.251930, 0.953295, 0.166616,
		36.372963, 30.863894, 28.605619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640800, 30.136309, 29.005724>,  <36.196609, 30.196589, 28.488989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640800, 30.136309, 29.005724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.490765, 30.506804, 29.020660>,  <36.400742, 30.729099, 29.029623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.490765, 30.506804, 29.020660>,  <36.640800, 30.136309, 29.005724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490765, 30.506804, 29.020660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110867, -0.084819, 0.990209,
		0.920334, 0.367278, 0.134504,
		-0.375090, 0.926236, 0.037342,
		36.378239, 30.784674, 29.031862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.589207, 30.999365, 33.604427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226765, 31.156904, 33.542633>,  <40.009300, 31.251429, 33.505558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226765, 31.156904, 33.542633>,  <40.589207, 30.999365, 33.604427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226765, 31.156904, 33.542633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114350, 0.123570, 0.985725,
		0.407316, 0.910832, -0.066930,
		-0.906100, 0.393848, -0.154486,
		39.954933, 31.275059, 33.496288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618046, 31.534206, 33.958664>,  <40.589207, 30.999365, 33.604427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618046, 31.534206, 33.958664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226067, 31.468351, 33.913757>,  <39.990879, 31.428839, 33.886814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226067, 31.468351, 33.913757>,  <40.618046, 31.534206, 33.958664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226067, 31.468351, 33.913757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147255, 0.218744, 0.964607,
		-0.134254, 0.961793, -0.238601,
		-0.979945, -0.164638, -0.112262,
		39.932083, 31.418961, 33.880077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298828, 32.015972, 34.435310>,  <40.618046, 31.534206, 33.958664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298828, 32.015972, 34.435310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.034561, 31.729166, 34.346409>,  <39.875999, 31.557081, 34.293068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.034561, 31.729166, 34.346409>,  <40.298828, 32.015972, 34.435310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034561, 31.729166, 34.346409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381988, 0.066239, 0.921790,
		-0.646220, 0.693898, -0.317655,
		-0.660670, -0.717020, -0.222256,
		39.836361, 31.514061, 34.279732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565147, 32.354965, 34.532440>,  <40.298828, 32.015972, 34.435310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565147, 32.354965, 34.532440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.526287, 31.957706, 34.558414>,  <39.502972, 31.719351, 34.574001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.526287, 31.957706, 34.558414>,  <39.565147, 32.354965, 34.532440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526287, 31.957706, 34.558414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439763, 0.101369, 0.892375,
		-0.892844, 0.058137, -0.446598,
		-0.097151, -0.993148, 0.064940,
		39.497143, 31.659761, 34.577896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920311, 32.246681, 34.849171>,  <39.565147, 32.354965, 34.532440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920311, 32.246681, 34.849171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060028, 31.874142, 34.890324>,  <39.143860, 31.650618, 34.915016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060028, 31.874142, 34.890324>,  <38.920311, 32.246681, 34.849171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060028, 31.874142, 34.890324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437912, -0.065187, 0.896651,
		-0.828387, -0.358250, -0.430617,
		0.349296, -0.931347, 0.102882,
		39.164818, 31.594738, 34.921188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414974, 31.910273, 35.164299>,  <38.920311, 32.246681, 34.849171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414974, 31.910273, 35.164299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.722420, 31.663826, 35.233162>,  <38.906887, 31.515959, 35.274479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.722420, 31.663826, 35.233162>,  <38.414974, 31.910273, 35.164299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722420, 31.663826, 35.233162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384988, -0.230568, 0.893656,
		-0.510903, -0.753152, -0.414415,
		0.768610, -0.616117, 0.172157,
		38.953003, 31.478991, 35.284809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089558, 31.311466, 35.447010>,  <38.414974, 31.910273, 35.164299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089558, 31.311466, 35.447010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473267, 31.290697, 35.558079>,  <38.703491, 31.278234, 35.624722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473267, 31.290697, 35.558079>,  <38.089558, 31.311466, 35.447010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473267, 31.290697, 35.558079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278367, -0.340967, 0.897916,
		0.048053, -0.938640, -0.341534,
		0.959272, -0.051924, 0.277671,
		38.761047, 31.275120, 35.641380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101349, 30.710625, 35.782028>,  <38.089558, 31.311466, 35.447010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101349, 30.710625, 35.782028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424500, 30.911474, 35.905449>,  <38.618389, 31.031984, 35.979504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424500, 30.911474, 35.905449>,  <38.101349, 30.710625, 35.782028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424500, 30.911474, 35.905449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163868, -0.311523, 0.936003,
		0.566111, -0.806738, -0.169390,
		0.807878, 0.502124, 0.308555,
		38.666862, 31.062111, 35.998016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401394, 30.271790, 36.221310>,  <38.101349, 30.710625, 35.782028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401394, 30.271790, 36.221310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.563011, 30.626062, 36.312805>,  <38.659981, 30.838625, 36.367702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.563011, 30.626062, 36.312805>,  <38.401394, 30.271790, 36.221310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563011, 30.626062, 36.312805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188771, -0.163941, 0.968240,
		0.895050, -0.434390, 0.100952,
		0.404044, 0.885680, 0.228736,
		38.684223, 30.891766, 36.381424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782295, 30.151075, 36.807892>,  <38.401394, 30.271790, 36.221310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782295, 30.151075, 36.807892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745266, 30.549343, 36.804363>,  <38.723049, 30.788303, 36.802246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745266, 30.549343, 36.804363>,  <38.782295, 30.151075, 36.807892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745266, 30.549343, 36.804363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131878, -0.003479, 0.991260,
		0.986934, 0.092923, 0.131629,
		-0.092569, 0.995667, -0.008821,
		38.717495, 30.848043, 36.801716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319313, 30.418430, 37.287346>,  <38.782295, 30.151075, 36.807892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319313, 30.418430, 37.287346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048733, 30.711458, 37.256992>,  <38.886387, 30.887276, 37.238781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048733, 30.711458, 37.256992>,  <39.319313, 30.418430, 37.287346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048733, 30.711458, 37.256992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027567, 0.077780, 0.996589,
		0.735973, 0.676234, -0.032420,
		-0.676449, 0.732570, -0.075886,
		38.845798, 30.931229, 37.234226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559971, 30.944050, 37.647179>,  <39.319313, 30.418430, 37.287346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559971, 30.944050, 37.647179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.161404, 30.977129, 37.640213>,  <38.922264, 30.996977, 37.636032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.161404, 30.977129, 37.640213>,  <39.559971, 30.944050, 37.647179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161404, 30.977129, 37.640213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016021, 0.017516, 0.999718,
		0.082980, 0.996421, -0.016129,
		-0.996422, 0.082699, -0.017417,
		38.862476, 31.001938, 37.634987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428513, 31.513252, 38.052868>,  <39.559971, 30.944050, 37.647179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428513, 31.513252, 38.052868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.121506, 31.257362, 38.069210>,  <38.937302, 31.103828, 38.079014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.121506, 31.257362, 38.069210>,  <39.428513, 31.513252, 38.052868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121506, 31.257362, 38.069210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139128, -0.104028, 0.984795,
		-0.625746, 0.761533, 0.168847,
		-0.767519, -0.639723, 0.040856,
		38.891251, 31.065445, 38.081467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185413, 32.214840, 37.886257>,  <39.428513, 31.513252, 38.052868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185413, 32.214840, 37.886257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984653, 32.465054, 38.125187>,  <38.864197, 32.615181, 38.268543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984653, 32.465054, 38.125187>,  <39.185413, 32.214840, 37.886257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984653, 32.465054, 38.125187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000748, 0.690922, -0.722929,
		-0.864924, -0.362393, -0.347243,
		-0.501902, 0.625538, 0.597324,
		38.834084, 32.652714, 38.304382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567379, 32.440739, 37.716026>,  <39.185413, 32.214840, 37.886257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567379, 32.440739, 37.716026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663990, 32.757072, 37.940968>,  <38.721958, 32.946873, 38.075932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663990, 32.757072, 37.940968>,  <38.567379, 32.440739, 37.716026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663990, 32.757072, 37.940968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142717, 0.602161, -0.785515,
		-0.959841, 0.109468, 0.258305,
		0.241530, 0.790834, 0.562356,
		38.736450, 32.994324, 38.109673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246674, 33.012230, 37.408787>,  <38.567379, 32.440739, 37.716026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246674, 33.012230, 37.408787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558388, 33.168972, 37.604404>,  <38.745415, 33.263020, 37.721775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558388, 33.168972, 37.604404>,  <38.246674, 33.012230, 37.408787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558388, 33.168972, 37.604404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223454, 0.555340, -0.801040,
		-0.585482, 0.733515, 0.345204,
		0.779281, 0.391857, 0.489049,
		38.792171, 33.286530, 37.751118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268089, 33.742748, 37.450180>,  <38.246674, 33.012230, 37.408787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268089, 33.742748, 37.450180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655323, 33.646038, 37.476585>,  <38.887665, 33.588013, 37.492428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655323, 33.646038, 37.476585>,  <38.268089, 33.742748, 37.450180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655323, 33.646038, 37.476585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200537, 0.589275, -0.782650,
		0.150321, 0.770910, 0.618952,
		0.968085, -0.241772, 0.066015,
		38.945747, 33.573505, 37.496391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612934, 34.339500, 37.357601>,  <38.268089, 33.742748, 37.450180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612934, 34.339500, 37.357601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.885632, 34.053284, 37.296638>,  <39.049248, 33.881554, 37.260059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.885632, 34.053284, 37.296638>,  <38.612934, 34.339500, 37.357601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885632, 34.053284, 37.296638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322766, 0.481123, -0.815072,
		0.656545, 0.506477, 0.558954,
		0.681741, -0.715543, -0.152405,
		39.090153, 33.838619, 37.250916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198444, 34.675186, 37.263924>,  <38.612934, 34.339500, 37.357601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198444, 34.675186, 37.263924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279041, 34.322124, 37.094063>,  <39.327400, 34.110287, 36.992146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279041, 34.322124, 37.094063>,  <39.198444, 34.675186, 37.263924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279041, 34.322124, 37.094063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456237, 0.468212, -0.756720,
		0.866746, -0.041268, 0.497040,
		0.201492, -0.882652, -0.424649,
		39.339489, 34.057327, 36.966667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767311, 34.766445, 36.934895>,  <39.198444, 34.675186, 37.263924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767311, 34.766445, 36.934895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.696846, 34.413612, 36.760124>,  <39.654568, 34.201912, 36.655262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.696846, 34.413612, 36.760124>,  <39.767311, 34.766445, 36.934895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696846, 34.413612, 36.760124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519446, 0.293735, -0.802431,
		0.836147, -0.368319, 0.406447,
		-0.176163, -0.882078, -0.436928,
		39.643997, 34.148991, 36.629047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398579, 34.511509, 36.615337>,  <39.767311, 34.766445, 36.934895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398579, 34.511509, 36.615337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.110909, 34.312828, 36.420986>,  <39.938305, 34.193619, 36.304375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.110909, 34.312828, 36.420986>,  <40.398579, 34.511509, 36.615337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110909, 34.312828, 36.420986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449897, 0.200018, -0.870394,
		0.529510, -0.844559, 0.079616,
		-0.719174, -0.496701, -0.485876,
		39.895157, 34.163818, 36.275223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735229, 33.998047, 36.099895>,  <40.398579, 34.511509, 36.615337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735229, 33.998047, 36.099895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364597, 34.070541, 35.968071>,  <40.142220, 34.114040, 35.888977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364597, 34.070541, 35.968071>,  <40.735229, 33.998047, 36.099895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364597, 34.070541, 35.968071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370552, 0.289851, -0.882427,
		-0.064406, -0.939755, -0.335727,
		-0.926576, 0.181238, -0.329560,
		40.086624, 34.124912, 35.869202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710083, 33.756241, 35.433571>,  <40.735229, 33.998047, 36.099895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710083, 33.756241, 35.433571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.402184, 34.011566, 35.436176>,  <40.217445, 34.164761, 35.437740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.402184, 34.011566, 35.436176>,  <40.710083, 33.756241, 35.433571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402184, 34.011566, 35.436176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232692, 0.290078, -0.928283,
		-0.594425, -0.713029, -0.371817,
		-0.769749, 0.638313, 0.006514,
		40.171257, 34.203060, 35.438129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201805, 33.548061, 34.864105>,  <40.710083, 33.756241, 35.433571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201805, 33.548061, 34.864105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186886, 33.938412, 34.950157>,  <40.177933, 34.172623, 35.001789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186886, 33.938412, 34.950157>,  <40.201805, 33.548061, 34.864105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186886, 33.938412, 34.950157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107028, 0.217939, -0.970076,
		-0.993556, -0.013158, -0.112575,
		-0.037299, 0.975874, 0.215127,
		40.175697, 34.231174, 35.014694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707954, 33.892040, 34.357235>,  <40.201805, 33.548061, 34.864105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707954, 33.892040, 34.357235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.946995, 34.183357, 34.491379>,  <40.090420, 34.358147, 34.571865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.946995, 34.183357, 34.491379>,  <39.707954, 33.892040, 34.357235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946995, 34.183357, 34.491379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152849, 0.307109, -0.939319,
		-0.787086, 0.612601, 0.072212,
		0.597605, 0.728288, 0.335357,
		40.126278, 34.401844, 34.591988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647072, 34.301838, 33.791134>,  <39.707954, 33.892040, 34.357235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647072, 34.301838, 33.791134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.943306, 34.491966, 33.981125>,  <40.121048, 34.606045, 34.095119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.943306, 34.491966, 33.981125>,  <39.647072, 34.301838, 33.791134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943306, 34.491966, 33.981125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261521, 0.447235, -0.855329,
		-0.618982, 0.757661, 0.206910,
		0.740586, 0.475322, 0.474975,
		40.165482, 34.634563, 34.123619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591724, 35.001774, 33.684696>,  <39.647072, 34.301838, 33.791134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591724, 35.001774, 33.684696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.977463, 34.984478, 33.789127>,  <40.208908, 34.974098, 33.851784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.977463, 34.984478, 33.789127>,  <39.591724, 35.001774, 33.684696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977463, 34.984478, 33.789127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251925, 0.452049, -0.855678,
		-0.081019, 0.890944, 0.446827,
		0.964349, -0.043241, 0.261076,
		40.266769, 34.971504, 33.867451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781452, 35.722534, 33.671383>,  <39.591724, 35.001774, 33.684696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781452, 35.722534, 33.671383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.114063, 35.510006, 33.606556>,  <40.313629, 35.382488, 33.567661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.114063, 35.510006, 33.606556>,  <39.781452, 35.722534, 33.671383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114063, 35.510006, 33.606556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217177, 0.579487, -0.785512,
		0.511271, 0.617978, 0.597249,
		0.831527, -0.531318, -0.162064,
		40.363522, 35.350609, 33.557938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838291, 36.472256, 33.378170>,  <39.781452, 35.722534, 33.671383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838291, 36.472256, 33.378170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478123, 36.590092, 33.250130>,  <39.262024, 36.660793, 33.173306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478123, 36.590092, 33.250130>,  <39.838291, 36.472256, 33.378170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478123, 36.590092, 33.250130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344343, -0.032986, 0.938264,
		0.265844, 0.955054, 0.131140,
		-0.900419, 0.294589, -0.320097,
		39.207996, 36.678467, 33.154102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645687, 37.009739, 33.755993>,  <39.838291, 36.472256, 33.378170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645687, 37.009739, 33.755993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.291088, 36.878738, 33.625233>,  <39.078327, 36.800140, 33.546776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.291088, 36.878738, 33.625233>,  <39.645687, 37.009739, 33.755993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291088, 36.878738, 33.625233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323553, -0.066341, 0.943882,
		-0.330807, 0.942520, -0.047152,
		-0.886499, -0.327499, -0.326901,
		39.025139, 36.780487, 33.527161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157566, 37.386288, 34.137238>,  <39.645687, 37.009739, 33.755993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157566, 37.386288, 34.137238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.958878, 37.063198, 34.010208>,  <38.839664, 36.869347, 33.933990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.958878, 37.063198, 34.010208>,  <39.157566, 37.386288, 34.137238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958878, 37.063198, 34.010208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479714, -0.049428, 0.876032,
		-0.723287, 0.587489, -0.362923,
		-0.496720, -0.807721, -0.317577,
		38.809860, 36.820881, 33.914936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571537, 37.486275, 34.326473>,  <39.157566, 37.386288, 34.137238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571537, 37.486275, 34.326473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.575516, 37.087784, 34.291977>,  <38.577904, 36.848690, 34.271278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.575516, 37.087784, 34.291977>,  <38.571537, 37.486275, 34.326473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575516, 37.087784, 34.291977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639240, -0.072656, 0.765567,
		-0.768943, 0.047514, -0.637549,
		0.009947, -0.996225, -0.086242,
		38.578499, 36.788918, 34.266106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927700, 37.361809, 34.419750>,  <38.571537, 37.486275, 34.326473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927700, 37.361809, 34.419750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.111191, 37.013325, 34.489674>,  <38.221287, 36.804234, 34.531628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.111191, 37.013325, 34.489674>,  <37.927700, 37.361809, 34.419750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111191, 37.013325, 34.489674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631569, -0.181294, 0.753825,
		-0.625050, -0.456204, -0.633395,
		0.458729, -0.871212, 0.174807,
		38.248810, 36.751961, 34.542114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477360, 36.769573, 34.561943>,  <37.927700, 37.361809, 34.419750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477360, 36.769573, 34.561943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.815956, 36.639938, 34.730900>,  <38.019115, 36.562157, 34.832275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.815956, 36.639938, 34.730900>,  <37.477360, 36.769573, 34.561943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815956, 36.639938, 34.730900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465241, -0.064565, 0.882826,
		-0.258845, -0.943820, -0.205435,
		0.846492, -0.324092, 0.422392,
		38.069904, 36.542709, 34.857616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253826, 36.212982, 34.995865>,  <37.477360, 36.769573, 34.561943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253826, 36.212982, 34.995865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.598213, 36.348160, 35.147934>,  <37.804844, 36.429268, 35.239178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.598213, 36.348160, 35.147934>,  <37.253826, 36.212982, 34.995865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598213, 36.348160, 35.147934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349059, -0.151130, 0.924834,
		0.369999, -0.928953, -0.012154,
		0.860964, 0.337945, 0.380177,
		37.856503, 36.449543, 35.261986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138985, 35.745430, 35.524933>,  <37.253826, 36.212982, 34.995865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138985, 35.745430, 35.524933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.389538, 36.050564, 35.589088>,  <37.539871, 36.233643, 35.627583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.389538, 36.050564, 35.589088>,  <37.138985, 35.745430, 35.524933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389538, 36.050564, 35.589088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270010, 0.019309, 0.962664,
		0.731256, -0.646306, 0.218068,
		0.626386, 0.762834, 0.160389,
		37.577454, 36.279415, 35.637203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613461, 35.586765, 35.976086>,  <37.138985, 35.745430, 35.524933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613461, 35.586765, 35.976086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.621304, 35.985485, 36.007107>,  <37.626011, 36.224716, 36.025719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.621304, 35.985485, 36.007107>,  <37.613461, 35.586765, 35.976086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621304, 35.985485, 36.007107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238077, -0.070682, 0.968671,
		0.971048, -0.037457, 0.235929,
		0.019608, 0.996796, 0.077553,
		37.627186, 36.284523, 36.030373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924175, 35.753197, 36.555557>,  <37.613461, 35.586765, 35.976086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924175, 35.753197, 36.555557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.724876, 36.097546, 36.514286>,  <37.605297, 36.304153, 36.489521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.724876, 36.097546, 36.514286>,  <37.924175, 35.753197, 36.555557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724876, 36.097546, 36.514286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246781, -0.026726, 0.968703,
		0.831172, 0.508118, 0.225763,
		-0.498249, 0.860873, -0.103180,
		37.575401, 36.355808, 36.483334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948288, 35.885979, 37.202423>,  <37.924175, 35.753197, 36.555557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948288, 35.885979, 37.202423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.716366, 36.185215, 37.073315>,  <37.577213, 36.364758, 36.995850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.716366, 36.185215, 37.073315>,  <37.948288, 35.885979, 37.202423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716366, 36.185215, 37.073315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395644, 0.087799, 0.914198,
		0.712245, 0.657758, 0.245073,
		-0.579804, 0.748094, -0.322772,
		37.542423, 36.409645, 36.976482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967804, 36.489635, 37.666599>,  <37.948288, 35.885979, 37.202423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967804, 36.489635, 37.666599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.614353, 36.472572, 37.480099>,  <37.402283, 36.462334, 37.368198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.614353, 36.472572, 37.480099>,  <37.967804, 36.489635, 37.666599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614353, 36.472572, 37.480099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455458, -0.152405, 0.877115,
		-0.108472, 0.987397, 0.115242,
		-0.883624, -0.042655, -0.466250,
		37.349266, 36.459778, 37.340225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.093670, 38.160011, 29.868198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747768, 37.978111, 29.782970>,  <39.540226, 37.868973, 29.731834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747768, 37.978111, 29.782970>,  <40.093670, 38.160011, 29.868198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747768, 37.978111, 29.782970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094517, -0.269318, 0.958402,
		-0.493214, 0.848925, 0.189914,
		-0.864758, -0.454747, -0.213069,
		39.488342, 37.841686, 29.719049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696632, 38.372250, 30.328047>,  <40.093670, 38.160011, 29.868198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696632, 38.372250, 30.328047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483932, 38.052258, 30.216854>,  <39.356312, 37.860264, 30.150139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483932, 38.052258, 30.216854>,  <39.696632, 38.372250, 30.328047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483932, 38.052258, 30.216854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033770, -0.307945, 0.950805,
		-0.846229, 0.514976, 0.136734,
		-0.531748, -0.799981, -0.277983,
		39.324409, 37.812263, 30.133459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166405, 38.269718, 30.868490>,  <39.696632, 38.372250, 30.328047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166405, 38.269718, 30.868490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196335, 37.915188, 30.685698>,  <39.214294, 37.702469, 30.576021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196335, 37.915188, 30.685698>,  <39.166405, 38.269718, 30.868490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196335, 37.915188, 30.685698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011950, -0.459030, 0.888340,
		-0.997125, -0.061009, -0.044939,
		0.074825, -0.886323, -0.456982,
		39.218781, 37.649292, 30.548603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572617, 37.830128, 31.155306>,  <39.166405, 38.269718, 30.868490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572617, 37.830128, 31.155306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846893, 37.581123, 31.004408>,  <39.011459, 37.431721, 30.913870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846893, 37.581123, 31.004408>,  <38.572617, 37.830128, 31.155306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846893, 37.581123, 31.004408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098126, -0.592590, 0.799505,
		-0.721249, -0.511196, -0.467417,
		0.685690, -0.622508, -0.377243,
		39.052601, 37.394371, 30.891235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195339, 37.185795, 31.290993>,  <38.572617, 37.830128, 31.155306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195339, 37.185795, 31.290993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572922, 37.073833, 31.221024>,  <38.799473, 37.006657, 31.179041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572922, 37.073833, 31.221024>,  <38.195339, 37.185795, 31.290993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572922, 37.073833, 31.221024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009690, -0.506236, 0.862340,
		-0.329926, -0.815707, -0.475153,
		0.943957, -0.279904, -0.174925,
		38.856110, 36.989861, 31.168547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246952, 36.489590, 31.543995>,  <38.195339, 37.185795, 31.290993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246952, 36.489590, 31.543995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614189, 36.645275, 31.514002>,  <38.834530, 36.738686, 31.496006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614189, 36.645275, 31.514002>,  <38.246952, 36.489590, 31.543995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614189, 36.645275, 31.514002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218449, -0.338995, 0.915075,
		0.330739, -0.856502, -0.396252,
		0.918092, 0.389211, -0.074983,
		38.889618, 36.762039, 31.491507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651489, 35.973392, 31.763597>,  <38.246952, 36.489590, 31.543995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651489, 35.973392, 31.763597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861389, 36.312107, 31.798468>,  <38.987328, 36.515335, 31.819389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861389, 36.312107, 31.798468>,  <38.651489, 35.973392, 31.763597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861389, 36.312107, 31.798468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050018, -0.132903, 0.989866,
		0.849787, -0.515069, -0.112095,
		0.524747, 0.846782, 0.087176,
		39.018814, 36.566143, 31.824621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288300, 35.813869, 32.231186>,  <38.651489, 35.973392, 31.763597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288300, 35.813869, 32.231186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199749, 36.202805, 32.260998>,  <39.146618, 36.436165, 32.278885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199749, 36.202805, 32.260998>,  <39.288300, 35.813869, 32.231186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199749, 36.202805, 32.260998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014322, -0.073180, 0.997216,
		0.975083, 0.221830, 0.002275,
		-0.221379, 0.972335, 0.074534,
		39.133335, 36.494507, 32.283360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771389, 36.041458, 32.670963>,  <39.288300, 35.813869, 32.231186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771389, 36.041458, 32.670963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482388, 36.317970, 32.675484>,  <39.308987, 36.483875, 32.678196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482388, 36.317970, 32.675484>,  <39.771389, 36.041458, 32.670963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482388, 36.317970, 32.675484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010360, -0.005513, 0.999931,
		0.691292, 0.722568, -0.003179,
		-0.722501, 0.691278, 0.011297,
		39.265636, 36.525352, 32.678871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389954, 36.257015, 32.759048>,  <39.771389, 36.041458, 32.670963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389954, 36.257015, 32.759048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511814, 35.894333, 32.875721>,  <40.584930, 35.676723, 32.945724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511814, 35.894333, 32.875721>,  <40.389954, 36.257015, 32.759048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511814, 35.894333, 32.875721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561731, -0.076274, -0.823797,
		0.769186, 0.414818, 0.486086,
		0.304650, -0.906702, 0.291685,
		40.603210, 35.622322, 32.963226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098160, 36.160160, 32.591431>,  <40.389954, 36.257015, 32.759048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098160, 36.160160, 32.591431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918922, 35.802814, 32.604794>,  <40.811378, 35.588409, 32.612812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918922, 35.802814, 32.604794>,  <41.098160, 36.160160, 32.591431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918922, 35.802814, 32.604794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377123, -0.222778, -0.898971,
		0.810548, -0.390227, 0.436733,
		-0.448097, -0.893361, 0.033409,
		40.784492, 35.534805, 32.614815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583321, 35.672535, 32.542477>,  <41.098160, 36.160160, 32.591431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583321, 35.672535, 32.542477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241688, 35.508739, 32.414188>,  <41.036709, 35.410461, 32.337215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241688, 35.508739, 32.414188>,  <41.583321, 35.672535, 32.542477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241688, 35.508739, 32.414188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455102, -0.289758, -0.841975,
		0.251851, -0.865076, 0.433838,
		-0.854080, -0.409493, -0.320722,
		40.985462, 35.385891, 32.317970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801479, 35.133274, 32.254917>,  <41.583321, 35.672535, 32.542477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801479, 35.133274, 32.254917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428905, 35.097298, 32.113869>,  <41.205360, 35.075714, 32.029240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428905, 35.097298, 32.113869>,  <41.801479, 35.133274, 32.254917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428905, 35.097298, 32.113869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355741, -0.429224, -0.830190,
		-0.076690, -0.898709, 0.431787,
		-0.931433, -0.089937, -0.352625,
		41.149475, 35.070316, 32.008080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701771, 34.378143, 32.060410>,  <41.801479, 35.133274, 32.254917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701771, 34.378143, 32.060410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457943, 34.614532, 31.849060>,  <41.311646, 34.756367, 31.722252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457943, 34.614532, 31.849060>,  <41.701771, 34.378143, 32.060410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457943, 34.614532, 31.849060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345748, -0.401585, -0.848050,
		-0.713358, -0.699630, 0.040468,
		-0.609572, 0.590971, -0.528369,
		41.275070, 34.791824, 31.690550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398102, 33.979622, 31.569353>,  <41.701771, 34.378143, 32.060410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398102, 33.979622, 31.569353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349045, 34.349194, 31.424400>,  <41.319611, 34.570934, 31.337429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349045, 34.349194, 31.424400>,  <41.398102, 33.979622, 31.569353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349045, 34.349194, 31.424400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079587, -0.354807, -0.931546,
		-0.989254, -0.143090, -0.030017,
		-0.122645, 0.923925, -0.362382,
		41.312252, 34.626369, 31.315685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056908, 33.814438, 30.932924>,  <41.398102, 33.979622, 31.569353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056908, 33.814438, 30.932924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191532, 34.189999, 30.904097>,  <41.272308, 34.415333, 30.886801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191532, 34.189999, 30.904097>,  <41.056908, 33.814438, 30.932924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191532, 34.189999, 30.904097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184600, -0.140831, -0.972671,
		-0.923391, 0.314059, -0.220719,
		0.336560, 0.938900, -0.072067,
		41.292500, 34.471668, 30.882477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591084, 34.335114, 30.502741>,  <41.056908, 33.814438, 30.932924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591084, 34.335114, 30.502741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970116, 34.462372, 30.490875>,  <41.197533, 34.538727, 30.483757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970116, 34.462372, 30.490875>,  <40.591084, 34.335114, 30.502741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970116, 34.462372, 30.490875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051593, -0.243956, -0.968413,
		-0.315336, 0.916115, -0.247581,
		0.947577, 0.318149, -0.029663,
		41.254387, 34.557816, 30.481976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643959, 34.848454, 29.926683>,  <40.591084, 34.335114, 30.502741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643959, 34.848454, 29.926683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028545, 34.755363, 29.985235>,  <41.259296, 34.699509, 30.020367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028545, 34.755363, 29.985235>,  <40.643959, 34.848454, 29.926683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028545, 34.755363, 29.985235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127487, -0.094323, -0.987345,
		0.243591, 0.967957, -0.061018,
		0.961462, -0.232730, 0.146378,
		41.316982, 34.685543, 30.029148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959972, 35.254486, 29.483778>,  <40.643959, 34.848454, 29.926683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959972, 35.254486, 29.483778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255306, 34.995224, 29.558357>,  <41.432507, 34.839668, 29.603106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255306, 34.995224, 29.558357>,  <40.959972, 35.254486, 29.483778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255306, 34.995224, 29.558357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237683, -0.008657, -0.971304,
		0.631169, 0.761459, 0.147664,
		0.738330, -0.648155, 0.186450,
		41.476807, 34.800777, 29.614292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557243, 35.557358, 29.162020>,  <40.959972, 35.254486, 29.483778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557243, 35.557358, 29.162020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621479, 35.163124, 29.183352>,  <41.660019, 34.926586, 29.196152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621479, 35.163124, 29.183352>,  <41.557243, 35.557358, 29.162020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621479, 35.163124, 29.183352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320397, 0.000946, -0.947283,
		0.933572, 0.169211, 0.315928,
		0.160589, -0.985579, 0.053332,
		41.669655, 34.867451, 29.199350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211010, 35.447899, 28.855633>,  <41.557243, 35.557358, 29.162020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211010, 35.447899, 28.855633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056011, 35.079468, 28.840300>,  <41.963013, 34.858410, 28.831099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056011, 35.079468, 28.840300>,  <42.211010, 35.447899, 28.855633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056011, 35.079468, 28.840300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403069, -0.131878, -0.905618,
		0.829086, -0.366372, 0.422359,
		-0.387493, -0.921075, -0.038335,
		41.939762, 34.803146, 28.828798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738949, 35.079292, 28.675735>,  <42.211010, 35.447899, 28.855633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738949, 35.079292, 28.675735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408291, 34.875309, 28.580572>,  <42.209896, 34.752918, 28.523474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408291, 34.875309, 28.580572>,  <42.738949, 35.079292, 28.675735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408291, 34.875309, 28.580572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311965, -0.063447, -0.947973,
		0.468333, -0.857855, 0.211538,
		-0.826645, -0.509959, -0.237907,
		42.160297, 34.722321, 28.509199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896645, 34.394630, 28.218906>,  <42.738949, 35.079292, 28.675735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896645, 34.394630, 28.218906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511452, 34.479248, 28.152071>,  <42.280334, 34.530018, 28.111971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511452, 34.479248, 28.152071>,  <42.896645, 34.394630, 28.218906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511452, 34.479248, 28.152071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106953, -0.269138, -0.957145,
		-0.247438, -0.939584, 0.236551,
		-0.962983, 0.211534, -0.167086,
		42.222557, 34.542709, 28.101944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.284977, 34.556438, 28.077433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659527, 34.416512, 28.065962>,  <35.884258, 34.332554, 28.059080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659527, 34.416512, 28.065962>,  <35.284977, 34.556438, 28.077433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659527, 34.416512, 28.065962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009776, -0.107660, 0.994140,
		-0.350857, -0.930610, -0.104230,
		0.936378, -0.349819, -0.028676,
		35.940441, 34.311565, 28.057360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275909, 33.916546, 28.302315>,  <35.284977, 34.556438, 28.077433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275909, 33.916546, 28.302315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.649349, 34.049351, 28.356211>,  <35.873413, 34.129036, 28.388548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.649349, 34.049351, 28.356211>,  <35.275909, 33.916546, 28.302315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649349, 34.049351, 28.356211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074845, -0.187041, 0.979497,
		0.350410, -0.924544, -0.149772,
		0.933601, 0.332015, 0.134739,
		35.929428, 34.148956, 28.396633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636757, 33.380703, 28.751921>,  <35.275909, 33.916546, 28.302315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636757, 33.380703, 28.751921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837265, 33.725861, 28.777672>,  <35.957569, 33.932957, 28.793121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837265, 33.725861, 28.777672>,  <35.636757, 33.380703, 28.751921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837265, 33.725861, 28.777672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093380, -0.127910, 0.987380,
		0.860238, -0.488932, -0.144694,
		0.501269, 0.862893, 0.064377,
		35.987644, 33.984730, 28.796986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074196, 33.229950, 29.127085>,  <35.636757, 33.380703, 28.751921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074196, 33.229950, 29.127085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085564, 33.625530, 29.185284>,  <36.092384, 33.862877, 29.220203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085564, 33.625530, 29.185284>,  <36.074196, 33.229950, 29.127085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085564, 33.625530, 29.185284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067266, -0.147118, 0.986829,
		0.997330, -0.018258, -0.070703,
		0.028419, 0.988950, 0.145497,
		36.094090, 33.922215, 29.228933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664898, 33.439156, 29.705965>,  <36.074196, 33.229950, 29.127085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664898, 33.439156, 29.705965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.398411, 33.736530, 29.682463>,  <36.238518, 33.914955, 29.668362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.398411, 33.736530, 29.682463>,  <36.664898, 33.439156, 29.705965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398411, 33.736530, 29.682463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042744, 0.040591, 0.998261,
		0.744533, 0.667569, 0.004735,
		-0.666216, 0.743441, -0.058756,
		36.198547, 33.959564, 29.664835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963779, 33.987354, 30.088902>,  <36.664898, 33.439156, 29.705965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963779, 33.987354, 30.088902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.567448, 34.034752, 30.062944>,  <36.329647, 34.063190, 30.047371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.567448, 34.034752, 30.062944>,  <36.963779, 33.987354, 30.088902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567448, 34.034752, 30.062944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038468, 0.212998, 0.976295,
		0.129511, 0.969840, -0.206487,
		-0.990832, 0.118498, -0.064893,
		36.270199, 34.070301, 30.043476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898537, 34.380032, 30.657751>,  <36.963779, 33.987354, 30.088902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898537, 34.380032, 30.657751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519501, 34.309860, 30.550949>,  <36.292080, 34.267757, 30.486868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519501, 34.309860, 30.550949>,  <36.898537, 34.380032, 30.657751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519501, 34.309860, 30.550949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290031, 0.121901, 0.949222,
		-0.133975, 0.976915, -0.166393,
		-0.947593, -0.175431, -0.267004,
		36.235222, 34.257233, 30.470848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446655, 34.772701, 31.077971>,  <36.898537, 34.380032, 30.657751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446655, 34.772701, 31.077971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199596, 34.485664, 30.949234>,  <36.051361, 34.313442, 30.871992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199596, 34.485664, 30.949234>,  <36.446655, 34.772701, 31.077971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199596, 34.485664, 30.949234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526232, 0.072963, 0.847205,
		-0.584463, 0.692634, -0.422684,
		-0.617642, -0.717590, -0.321842,
		36.014305, 34.270386, 30.852682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793247, 35.076328, 31.076254>,  <36.446655, 34.772701, 31.077971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793247, 35.076328, 31.076254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769005, 34.679268, 31.118139>,  <35.754459, 34.441032, 31.143270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769005, 34.679268, 31.118139>,  <35.793247, 35.076328, 31.076254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769005, 34.679268, 31.118139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521755, 0.120938, 0.844479,
		-0.850939, -0.003452, -0.525252,
		-0.060608, -0.992654, 0.104712,
		35.750824, 34.381474, 31.149553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085545, 34.928410, 31.240837>,  <35.793247, 35.076328, 31.076254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085545, 34.928410, 31.240837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.283123, 34.604012, 31.366251>,  <35.401669, 34.409374, 31.441500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.283123, 34.604012, 31.366251>,  <35.085545, 34.928410, 31.240837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283123, 34.604012, 31.366251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466894, 0.056806, 0.882487,
		-0.733503, -0.582289, -0.350590,
		0.493947, -0.810995, 0.313535,
		35.431309, 34.360714, 31.460312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554348, 34.475311, 31.534937>,  <35.085545, 34.928410, 31.240837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554348, 34.475311, 31.534937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.916248, 34.368893, 31.667995>,  <35.133389, 34.305042, 31.747829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.916248, 34.368893, 31.667995>,  <34.554348, 34.475311, 31.534937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916248, 34.368893, 31.667995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355644, -0.042044, 0.933675,
		-0.234413, -0.963043, -0.132656,
		0.904747, -0.266045, 0.332645,
		35.187672, 34.289082, 31.767790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408443, 33.846970, 31.810310>,  <34.554348, 34.475311, 31.534937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408443, 33.846970, 31.810310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.750835, 33.947109, 31.991255>,  <34.956268, 34.007191, 32.099823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.750835, 33.947109, 31.991255>,  <34.408443, 33.846970, 31.810310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750835, 33.947109, 31.991255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400090, -0.233427, 0.886250,
		0.327463, -0.939595, -0.099647,
		0.855977, 0.250346, 0.452361,
		35.007629, 34.022213, 32.126965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673874, 33.229221, 32.175983>,  <34.408443, 33.846970, 31.810310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673874, 33.229221, 32.175983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.849476, 33.533390, 32.367413>,  <34.954838, 33.715889, 32.482269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.849476, 33.533390, 32.367413>,  <34.673874, 33.229221, 32.175983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849476, 33.533390, 32.367413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421450, -0.296132, 0.857139,
		0.793506, -0.577986, 0.190474,
		0.439009, 0.760420, 0.478574,
		34.981178, 33.761517, 32.510986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804581, 33.001183, 32.867264>,  <34.673874, 33.229221, 32.175983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804581, 33.001183, 32.867264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.809692, 33.398342, 32.914574>,  <34.812759, 33.636639, 32.942959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.809692, 33.398342, 32.914574>,  <34.804581, 33.001183, 32.867264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809692, 33.398342, 32.914574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400234, -0.103317, 0.910570,
		0.916324, -0.058973, 0.396071,
		0.012778, 0.992899, 0.118275,
		34.813526, 33.696213, 32.950058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263145, 32.389618, 32.848572>,  <34.804581, 33.001183, 32.867264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263145, 32.389618, 32.848572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330486, 31.998438, 32.897995>,  <35.370892, 31.763729, 32.927650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330486, 31.998438, 32.897995>,  <35.263145, 32.389618, 32.848572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330486, 31.998438, 32.897995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170534, -0.094560, -0.980804,
		0.970863, 0.186196, 0.150854,
		0.168357, -0.977952, 0.123558,
		35.380993, 31.705051, 32.935062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928123, 32.216389, 32.518772>,  <35.263145, 32.389618, 32.848572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928123, 32.216389, 32.518772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.733616, 31.867813, 32.544506>,  <35.616909, 31.658669, 32.559944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.733616, 31.867813, 32.544506>,  <35.928123, 32.216389, 32.518772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733616, 31.867813, 32.544506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189029, -0.176789, -0.965926,
		0.853117, -0.457541, 0.250694,
		-0.486271, -0.871437, 0.064333,
		35.587734, 31.606382, 32.563805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358513, 31.661264, 32.334126>,  <35.928123, 32.216389, 32.518772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358513, 31.661264, 32.334126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.989677, 31.514774, 32.284107>,  <35.768375, 31.426880, 32.254097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.989677, 31.514774, 32.284107>,  <36.358513, 31.661264, 32.334126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989677, 31.514774, 32.284107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228887, -0.255575, -0.939304,
		0.312037, -0.894741, 0.319486,
		-0.922087, -0.366224, -0.125046,
		35.713051, 31.404907, 32.246593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549473, 31.110527, 31.983694>,  <36.358513, 31.661264, 32.334126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549473, 31.110527, 31.983694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.156418, 31.124752, 31.910847>,  <35.920586, 31.133287, 31.867138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.156418, 31.124752, 31.910847>,  <36.549473, 31.110527, 31.983694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156418, 31.124752, 31.910847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165184, -0.279478, -0.945836,
		-0.084532, -0.959493, 0.268751,
		-0.982634, 0.035561, -0.182118,
		35.861629, 31.135420, 31.856211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484142, 30.496931, 31.608595>,  <36.549473, 31.110527, 31.983694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484142, 30.496931, 31.608595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.169960, 30.733456, 31.535479>,  <35.981453, 30.875370, 31.491610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.169960, 30.733456, 31.535479>,  <36.484142, 30.496931, 31.608595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169960, 30.733456, 31.535479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095430, -0.176101, -0.979735,
		-0.611520, -0.786980, 0.081890,
		-0.785453, 0.591313, -0.182791,
		35.934322, 30.910849, 31.480640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089588, 30.123945, 31.094751>,  <36.484142, 30.496931, 31.608595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089588, 30.123945, 31.094751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979572, 30.507433, 31.065886>,  <35.913563, 30.737526, 31.048567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979572, 30.507433, 31.065886>,  <36.089588, 30.123945, 31.094751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979572, 30.507433, 31.065886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150471, -0.031210, -0.988122,
		-0.949584, -0.282635, -0.135676,
		-0.275044, 0.958720, -0.072165,
		35.897060, 30.795050, 31.044235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558929, 30.096048, 30.592251>,  <36.089588, 30.123945, 31.094751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558929, 30.096048, 30.592251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713215, 30.465092, 30.594114>,  <35.805786, 30.686518, 30.595232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713215, 30.465092, 30.594114>,  <35.558929, 30.096048, 30.592251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713215, 30.465092, 30.594114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042290, -0.012637, -0.999025,
		-0.921649, 0.385535, -0.043891,
		0.385714, 0.922607, 0.004658,
		35.828930, 30.741875, 30.595512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209328, 30.519249, 30.050770>,  <35.558929, 30.096048, 30.592251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209328, 30.519249, 30.050770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550903, 30.708004, 30.138504>,  <35.755848, 30.821259, 30.191145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550903, 30.708004, 30.138504>,  <35.209328, 30.519249, 30.050770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550903, 30.708004, 30.138504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107241, 0.252866, -0.961540,
		-0.509204, 0.844618, 0.165326,
		0.853939, 0.471890, 0.219337,
		35.807083, 30.849571, 30.204306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148438, 31.077513, 29.623264>,  <35.209328, 30.519249, 30.050770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148438, 31.077513, 29.623264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.537201, 31.043299, 29.710962>,  <35.770458, 31.022770, 29.763580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.537201, 31.043299, 29.710962>,  <35.148438, 31.077513, 29.623264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537201, 31.043299, 29.710962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234107, 0.256164, -0.937856,
		0.024057, 0.962841, 0.268994,
		0.971913, -0.085536, 0.219245,
		35.828773, 31.017637, 29.776735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388481, 31.637514, 29.210135>,  <35.148438, 31.077513, 29.623264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388481, 31.637514, 29.210135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709217, 31.413883, 29.294498>,  <35.901661, 31.279705, 29.345116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709217, 31.413883, 29.294498>,  <35.388481, 31.637514, 29.210135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709217, 31.413883, 29.294498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403277, 0.245877, -0.881426,
		0.440928, 0.791819, 0.422617,
		0.801842, -0.559077, 0.210908,
		35.949768, 31.246161, 29.357771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044922, 32.083195, 29.076235>,  <35.388481, 31.637514, 29.210135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044922, 32.083195, 29.076235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147816, 31.697504, 29.050634>,  <36.209553, 31.466089, 29.035275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147816, 31.697504, 29.050634>,  <36.044922, 32.083195, 29.076235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147816, 31.697504, 29.050634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405703, 0.167867, -0.898458,
		0.877061, 0.205148, 0.434371,
		0.257233, -0.964228, -0.064001,
		36.224987, 31.408236, 29.031435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622772, 32.104877, 28.678020>,  <36.044922, 32.083195, 29.076235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622772, 32.104877, 28.678020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.529751, 31.716209, 28.661129>,  <36.473938, 31.483009, 28.650993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.529751, 31.716209, 28.661129>,  <36.622772, 32.104877, 28.678020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529751, 31.716209, 28.661129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507408, -0.084169, -0.857585,
		0.829732, -0.220862, 0.512605,
		-0.232554, -0.971666, -0.042230,
		36.459984, 31.424709, 28.648460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240574, 31.745327, 28.512682>,  <36.622772, 32.104877, 28.678020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240574, 31.745327, 28.512682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.966160, 31.471262, 28.414776>,  <36.801514, 31.306822, 28.356031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.966160, 31.471262, 28.414776>,  <37.240574, 31.745327, 28.512682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966160, 31.471262, 28.414776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379226, -0.049628, -0.923972,
		0.620926, -0.726696, 0.293878,
		-0.686032, -0.685164, -0.244767,
		36.760349, 31.265713, 28.341345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572174, 31.342833, 28.125072>,  <37.240574, 31.745327, 28.512682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572174, 31.342833, 28.125072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.187912, 31.308340, 28.019470>,  <36.957355, 31.287645, 27.956110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.187912, 31.308340, 28.019470>,  <37.572174, 31.342833, 28.125072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187912, 31.308340, 28.019470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254855, 0.104085, -0.961361,
		0.110388, -0.990822, -0.078010,
		-0.960658, -0.086242, -0.264006,
		36.899715, 31.282471, 27.940269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267654, 31.179447, 28.204113>,  <37.572174, 31.342833, 28.125072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267654, 31.179447, 28.204113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612152, 31.370420, 28.134474>,  <38.818851, 31.485004, 28.092691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612152, 31.370420, 28.134474>,  <38.267654, 31.179447, 28.204113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612152, 31.370420, 28.134474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276468, -0.152741, 0.948808,
		0.426400, -0.865291, -0.263542,
		0.861249, 0.477432, -0.174097,
		38.870525, 31.513651, 28.082245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735439, 30.757393, 28.509031>,  <38.267654, 31.179447, 28.204113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735439, 30.757393, 28.509031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.904270, 31.119225, 28.485083>,  <39.005569, 31.336325, 28.470715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.904270, 31.119225, 28.485083>,  <38.735439, 30.757393, 28.509031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904270, 31.119225, 28.485083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368928, -0.111066, 0.922798,
		0.828095, -0.411581, -0.380603,
		0.422078, 0.904580, -0.059870,
		39.030895, 31.390598, 28.467121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448509, 30.669674, 28.816839>,  <38.735439, 30.757393, 28.509031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448509, 30.669674, 28.816839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361027, 31.059940, 28.823072>,  <39.308537, 31.294100, 28.826813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361027, 31.059940, 28.823072>,  <39.448509, 30.669674, 28.816839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361027, 31.059940, 28.823072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491979, 0.096464, 0.865246,
		0.842689, 0.196898, -0.501105,
		-0.218704, 0.975667, 0.015581,
		39.295414, 31.352640, 28.827747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075478, 30.938442, 29.110849>,  <39.448509, 30.669674, 28.816839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075478, 30.938442, 29.110849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.795582, 31.222507, 29.141905>,  <39.627644, 31.392946, 29.160538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.795582, 31.222507, 29.141905>,  <40.075478, 30.938442, 29.110849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795582, 31.222507, 29.141905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343482, 0.239153, 0.908199,
		0.626403, 0.662173, -0.411274,
		-0.699742, 0.710164, 0.077639,
		39.585659, 31.435556, 29.165197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440628, 31.524776, 29.401340>,  <40.075478, 30.938442, 29.110849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440628, 31.524776, 29.401340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.047241, 31.558706, 29.465328>,  <39.811207, 31.579063, 29.503721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.047241, 31.558706, 29.465328>,  <40.440628, 31.524776, 29.401340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047241, 31.558706, 29.465328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170876, 0.142555, 0.974925,
		0.059893, 0.986145, -0.154693,
		-0.983470, 0.084825, 0.159970,
		39.752201, 31.584154, 29.513319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380478, 32.070312, 29.886818>,  <40.440628, 31.524776, 29.401340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380478, 32.070312, 29.886818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.016640, 31.906893, 29.917082>,  <39.798336, 31.808842, 29.935240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.016640, 31.906893, 29.917082>,  <40.380478, 32.070312, 29.886818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016640, 31.906893, 29.917082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024498, 0.129043, 0.991336,
		-0.414770, 0.903569, -0.107368,
		-0.909596, -0.408546, 0.075659,
		39.743759, 31.784328, 29.939779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214787, 32.394165, 30.514772>,  <40.380478, 32.070312, 29.886818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214787, 32.394165, 30.514772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.965172, 32.089401, 30.445417>,  <39.815403, 31.906542, 30.403805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.965172, 32.089401, 30.445417>,  <40.214787, 32.394165, 30.514772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965172, 32.089401, 30.445417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070455, -0.166126, 0.983584,
		-0.778209, 0.626013, 0.049989,
		-0.624041, -0.761912, -0.173387,
		39.777958, 31.860828, 30.393402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606457, 32.474983, 30.945482>,  <40.214787, 32.394165, 30.514772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606457, 32.474983, 30.945482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641445, 32.091026, 30.838930>,  <39.662437, 31.860653, 30.774998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641445, 32.091026, 30.838930>,  <39.606457, 32.474983, 30.945482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641445, 32.091026, 30.838930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181069, -0.278272, 0.943281,
		-0.979573, -0.034275, -0.198147,
		0.087469, -0.959890, -0.266381,
		39.667686, 31.803059, 30.759016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096775, 32.163395, 31.148930>,  <39.606457, 32.474983, 30.945482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096775, 32.163395, 31.148930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.369919, 31.871685, 31.131680>,  <39.533806, 31.696659, 31.121330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.369919, 31.871685, 31.131680>,  <39.096775, 32.163395, 31.148930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369919, 31.871685, 31.131680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120904, -0.171032, 0.977819,
		-0.720473, -0.662502, -0.204963,
		0.682862, -0.729273, -0.043125,
		39.574776, 31.652903, 31.118742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793835, 31.694393, 31.601017>,  <39.096775, 32.163395, 31.148930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793835, 31.694393, 31.601017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.154289, 31.536600, 31.529091>,  <39.370564, 31.441923, 31.485935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.154289, 31.536600, 31.529091>,  <38.793835, 31.694393, 31.601017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154289, 31.536600, 31.529091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073109, -0.270554, 0.959925,
		-0.427326, -0.878170, -0.214966,
		0.901137, -0.394485, -0.179817,
		39.424629, 31.418255, 31.475145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796227, 30.930508, 31.727533>,  <38.793835, 31.694393, 31.601017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796227, 30.930508, 31.727533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177479, 31.043198, 31.771673>,  <39.406231, 31.110813, 31.798157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177479, 31.043198, 31.771673>,  <38.796227, 30.930508, 31.727533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177479, 31.043198, 31.771673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035214, -0.258948, 0.965249,
		0.300513, -0.923891, -0.236889,
		0.953127, 0.281728, 0.110351,
		39.463417, 31.127716, 31.804779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019218, 30.443968, 32.219650>,  <38.796227, 30.930508, 31.727533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019218, 30.443968, 32.219650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.296089, 30.731928, 32.240211>,  <39.462212, 30.904703, 32.252548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.296089, 30.731928, 32.240211>,  <39.019218, 30.443968, 32.219650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296089, 30.731928, 32.240211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045918, -0.115008, 0.992303,
		0.720270, -0.684484, -0.112662,
		0.692173, 0.719899, 0.051406,
		39.503742, 30.947897, 32.255634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665894, 30.310053, 32.653358>,  <39.019218, 30.443968, 32.219650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665894, 30.310053, 32.653358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668472, 30.710045, 32.653263>,  <39.670021, 30.950041, 32.653206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668472, 30.710045, 32.653263>,  <39.665894, 30.310053, 32.653358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668472, 30.710045, 32.653263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179085, -0.000919, 0.983833,
		0.983813, -0.006386, -0.179087,
		0.006447, 0.999979, -0.000239,
		39.670406, 31.010038, 32.653191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269184, 30.499281, 33.016510>,  <39.665894, 30.310053, 32.653358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269184, 30.499281, 33.016510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017822, 30.810072, 33.031521>,  <39.867004, 30.996546, 33.040527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.017822, 30.810072, 33.031521>,  <40.269184, 30.499281, 33.016510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017822, 30.810072, 33.031521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030999, -0.023190, 0.999251,
		0.777266, 0.629101, -0.009513,
		-0.628409, 0.776978, 0.037527,
		39.829300, 31.043165, 33.042778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.660641, 33.952393, 27.694113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.365936, 34.222679, 27.703863>,  <42.189114, 34.384850, 27.709713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.365936, 34.222679, 27.703863>,  <42.660641, 33.952393, 27.694113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365936, 34.222679, 27.703863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038435, -0.005864, -0.999244,
		-0.675060, -0.737141, 0.030292,
		-0.736761, 0.675714, 0.024374,
		42.144909, 34.425392, 27.711176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222084, 33.557117, 27.365223>,  <42.660641, 33.952393, 27.694113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222084, 33.557117, 27.365223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.152832, 33.950108, 27.337608>,  <42.111279, 34.185902, 27.321039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.152832, 33.950108, 27.337608>,  <42.222084, 33.557117, 27.365223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152832, 33.950108, 27.337608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047803, -0.061628, -0.996954,
		-0.983738, -0.175905, -0.036296,
		-0.173132, 0.982476, -0.069034,
		42.100891, 34.244850, 27.316898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703915, 33.650421, 26.943008>,  <42.222084, 33.557117, 27.365223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703915, 33.650421, 26.943008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.872005, 34.012516, 26.917847>,  <41.972858, 34.229774, 26.902750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.872005, 34.012516, 26.917847>,  <41.703915, 33.650421, 26.943008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872005, 34.012516, 26.917847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138232, -0.004649, -0.990389,
		-0.896829, 0.424882, 0.123179,
		0.420226, 0.905237, -0.062902,
		41.998074, 34.284088, 26.898975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269741, 33.891220, 26.442865>,  <41.703915, 33.650421, 26.943008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269741, 33.891220, 26.442865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568100, 34.156322, 26.469378>,  <41.747116, 34.315384, 26.485285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568100, 34.156322, 26.469378>,  <41.269741, 33.891220, 26.442865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568100, 34.156322, 26.469378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025412, 0.071121, -0.997144,
		-0.665577, 0.745450, 0.036207,
		0.745897, 0.662756, 0.066280,
		41.791870, 34.355148, 26.489262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091679, 34.403496, 26.050188>,  <41.269741, 33.891220, 26.442865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091679, 34.403496, 26.050188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.490158, 34.434795, 26.065466>,  <41.729248, 34.453575, 26.074633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.490158, 34.434795, 26.065466>,  <41.091679, 34.403496, 26.050188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490158, 34.434795, 26.065466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030879, 0.092646, -0.995220,
		-0.081414, 0.992620, 0.089877,
		0.996202, 0.078250, 0.038194,
		41.789021, 34.458271, 26.076923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241741, 34.985226, 25.637482>,  <41.091679, 34.403496, 26.050188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241741, 34.985226, 25.637482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561409, 34.745358, 25.620895>,  <41.753212, 34.601437, 25.610943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561409, 34.745358, 25.620895>,  <41.241741, 34.985226, 25.637482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561409, 34.745358, 25.620895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035268, 0.115641, -0.992665,
		0.600065, 0.791849, 0.113566,
		0.799174, -0.599668, -0.041466,
		41.801163, 34.565456, 25.608456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672516, 35.426754, 25.156162>,  <41.241741, 34.985226, 25.637482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672516, 35.426754, 25.156162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.792515, 35.046227, 25.184460>,  <41.864513, 34.817909, 25.201439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.792515, 35.046227, 25.184460>,  <41.672516, 35.426754, 25.156162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792515, 35.046227, 25.184460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187021, -0.014069, -0.982255,
		0.935428, 0.307902, 0.173695,
		0.299995, -0.951314, 0.070744,
		41.882515, 34.760834, 25.205683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414299, 35.328903, 24.765896>,  <41.672516, 35.426754, 25.156162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414299, 35.328903, 24.765896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.262547, 34.959930, 24.794701>,  <42.171497, 34.738544, 24.811983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.262547, 34.959930, 24.794701>,  <42.414299, 35.328903, 24.765896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262547, 34.959930, 24.794701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045240, -0.059246, -0.997218,
		0.924135, -0.381581, -0.019254,
		-0.379379, -0.922435, 0.072014,
		42.148731, 34.683201, 24.816305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882084, 34.873196, 24.355244>,  <42.414299, 35.328903, 24.765896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882084, 34.873196, 24.355244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.515892, 34.716923, 24.393736>,  <42.296177, 34.623158, 24.416830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.515892, 34.716923, 24.393736>,  <42.882084, 34.873196, 24.355244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515892, 34.716923, 24.393736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099245, -0.012512, -0.994984,
		0.389926, -0.920441, -0.027318,
		-0.915482, -0.390681, 0.096228,
		42.241249, 34.599720, 24.422604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680775, 34.629486, 23.668171>,  <42.882084, 34.873196, 24.355244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680775, 34.629486, 23.668171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.326565, 34.587940, 23.849306>,  <42.114040, 34.563015, 23.957987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.326565, 34.587940, 23.849306>,  <42.680775, 34.629486, 23.668171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326565, 34.587940, 23.849306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436776, -0.146107, -0.887626,
		0.158354, -0.983802, 0.084017,
		-0.885523, -0.103862, 0.452838,
		42.060909, 34.556782, 23.985157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379856, 34.052654, 23.397118>,  <42.680775, 34.629486, 23.668171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379856, 34.052654, 23.397118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.097832, 34.295063, 23.544426>,  <41.928616, 34.440510, 23.632811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.097832, 34.295063, 23.544426>,  <42.379856, 34.052654, 23.397118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097832, 34.295063, 23.544426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499780, -0.056216, -0.864326,
		-0.503100, -0.793457, 0.342514,
		-0.705060, 0.606024, 0.368272,
		41.886314, 34.476871, 23.654907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768421, 33.762581, 23.154173>,  <42.379856, 34.052654, 23.397118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768421, 33.762581, 23.154173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.672962, 34.139450, 23.248281>,  <41.615685, 34.365574, 23.304747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.672962, 34.139450, 23.248281>,  <41.768421, 33.762581, 23.154173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672962, 34.139450, 23.248281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516154, 0.082147, -0.852547,
		-0.822575, -0.324898, 0.466703,
		-0.238652, 0.942175, 0.235269,
		41.601368, 34.422104, 23.318863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044735, 33.839603, 23.257107>,  <41.768421, 33.762581, 23.154173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044735, 33.839603, 23.257107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.211643, 34.182308, 23.135887>,  <41.311787, 34.387932, 23.063156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.211643, 34.182308, 23.135887>,  <41.044735, 33.839603, 23.257107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211643, 34.182308, 23.135887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554142, -0.024427, -0.832064,
		-0.720285, 0.515129, 0.464576,
		0.417272, 0.856765, -0.303049,
		41.336826, 34.439339, 23.044973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799095, 33.219917, 22.837664>,  <41.044735, 33.839603, 23.257107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799095, 33.219917, 22.837664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.496738, 33.025375, 22.662355>,  <40.315323, 32.908649, 22.557171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.496738, 33.025375, 22.662355>,  <40.799095, 33.219917, 22.837664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496738, 33.025375, 22.662355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452786, -0.095160, 0.886527,
		-0.472873, 0.868564, -0.148283,
		-0.755894, -0.486355, -0.438272,
		40.269970, 32.879467, 22.530874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115845, 33.466190, 22.911711>,  <40.799095, 33.219917, 22.837664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115845, 33.466190, 22.911711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084343, 33.069881, 22.867584>,  <40.065441, 32.832096, 22.841108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084343, 33.069881, 22.867584>,  <40.115845, 33.466190, 22.911711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084343, 33.069881, 22.867584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330902, -0.078407, 0.940402,
		-0.940373, 0.110564, -0.321674,
		-0.078753, -0.990771, -0.110318,
		40.060719, 32.772652, 22.834490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450340, 33.216557, 23.062983>,  <40.115845, 33.466190, 22.911711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450340, 33.216557, 23.062983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.696774, 32.904266, 23.104744>,  <39.844635, 32.716892, 23.129801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.696774, 32.904266, 23.104744>,  <39.450340, 33.216557, 23.062983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696774, 32.904266, 23.104744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382749, -0.180880, 0.905972,
		-0.688434, -0.598118, -0.410261,
		0.616086, -0.780729, 0.104405,
		39.881599, 32.670048, 23.136066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055153, 32.768692, 23.455681>,  <39.450340, 33.216557, 23.062983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055153, 32.768692, 23.455681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.401939, 32.571274, 23.483362>,  <39.610012, 32.452824, 23.499971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.401939, 32.571274, 23.483362>,  <39.055153, 32.768692, 23.455681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401939, 32.571274, 23.483362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233599, -0.279764, 0.931216,
		-0.440238, -0.823495, -0.357837,
		0.866962, -0.493547, 0.069204,
		39.662029, 32.423210, 23.504124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930283, 32.034969, 23.725538>,  <39.055153, 32.768692, 23.455681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930283, 32.034969, 23.725538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.306217, 32.149193, 23.800539>,  <39.531780, 32.217728, 23.845539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.306217, 32.149193, 23.800539>,  <38.930283, 32.034969, 23.725538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306217, 32.149193, 23.800539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087708, -0.328759, 0.940332,
		0.330166, -0.900206, -0.283934,
		0.939839, 0.285563, 0.187501,
		39.588169, 32.234863, 23.856789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223778, 31.414394, 23.972252>,  <38.930283, 32.034969, 23.725538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223778, 31.414394, 23.972252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.425720, 31.739599, 24.088270>,  <39.546886, 31.934723, 24.157881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.425720, 31.739599, 24.088270>,  <39.223778, 31.414394, 23.972252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425720, 31.739599, 24.088270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002187, -0.337216, 0.941425,
		0.863200, -0.474651, -0.172024,
		0.504857, 0.813014, 0.290047,
		39.577179, 31.983503, 24.175283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747181, 31.195248, 24.445963>,  <39.223778, 31.414394, 23.972252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747181, 31.195248, 24.445963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.738514, 31.585243, 24.534437>,  <39.733315, 31.819241, 24.587523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.738514, 31.585243, 24.534437>,  <39.747181, 31.195248, 24.445963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738514, 31.585243, 24.534437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042975, -0.221943, 0.974112,
		0.998841, 0.011604, 0.046710,
		-0.021671, 0.974991, 0.221187,
		39.732014, 31.877741, 24.600794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215664, 31.206490, 24.943241>,  <39.747181, 31.195248, 24.445963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215664, 31.206490, 24.943241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.008705, 31.547718, 24.970259>,  <39.884529, 31.752455, 24.986469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.008705, 31.547718, 24.970259>,  <40.215664, 31.206490, 24.943241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008705, 31.547718, 24.970259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066320, -0.118669, 0.990717,
		0.853170, 0.508118, 0.117975,
		-0.517401, 0.853073, 0.067546,
		39.853485, 31.803640, 24.990522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506935, 31.503769, 25.487728>,  <40.215664, 31.206490, 24.943241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506935, 31.503769, 25.487728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.135918, 31.640169, 25.426559>,  <39.913307, 31.722010, 25.389858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.135918, 31.640169, 25.426559>,  <40.506935, 31.503769, 25.487728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135918, 31.640169, 25.426559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180733, -0.051142, 0.982202,
		0.327111, 0.938671, 0.109066,
		-0.927542, 0.341001, -0.152920,
		39.857655, 31.742470, 25.380684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453716, 32.071648, 25.955681>,  <40.506935, 31.503769, 25.487728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453716, 32.071648, 25.955681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.082397, 31.957315, 25.860552>,  <39.859604, 31.888718, 25.803474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.082397, 31.957315, 25.860552>,  <40.453716, 32.071648, 25.955681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082397, 31.957315, 25.860552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181076, -0.211130, 0.960539,
		-0.324760, 0.934734, 0.144236,
		-0.928301, -0.285827, -0.237825,
		39.803905, 31.871567, 25.789204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136551, 32.282570, 26.512655>,  <40.453716, 32.071648, 25.955681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136551, 32.282570, 26.512655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.865761, 32.056633, 26.323908>,  <39.703285, 31.921072, 26.210659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.865761, 32.056633, 26.323908>,  <40.136551, 32.282570, 26.512655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865761, 32.056633, 26.323908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310255, -0.362367, 0.878881,
		-0.667417, 0.741381, 0.070069,
		-0.676976, -0.564841, -0.471867,
		39.662666, 31.887180, 26.182348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509766, 32.536011, 26.733030>,  <40.136551, 32.282570, 26.512655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509766, 32.536011, 26.733030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462215, 32.156849, 26.614817>,  <39.433685, 31.929352, 26.543888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462215, 32.156849, 26.614817>,  <39.509766, 32.536011, 26.733030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462215, 32.156849, 26.614817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341754, -0.240396, 0.908523,
		-0.932241, 0.209003, -0.295373,
		-0.118877, -0.947907, -0.295534,
		39.426552, 31.872477, 26.526157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787022, 32.438068, 26.738476>,  <39.509766, 32.536011, 26.733030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787022, 32.438068, 26.738476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.962627, 32.081291, 26.781752>,  <39.067993, 31.867226, 26.807718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.962627, 32.081291, 26.781752>,  <38.787022, 32.438068, 26.738476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962627, 32.081291, 26.781752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443174, -0.110222, 0.889634,
		-0.781575, -0.438514, -0.443674,
		0.439019, -0.891940, 0.108191,
		39.094334, 31.813709, 26.814209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295353, 32.007862, 27.072056>,  <38.787022, 32.438068, 26.738476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295353, 32.007862, 27.072056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.655365, 31.841776, 27.125029>,  <38.871372, 31.742123, 27.156813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.655365, 31.841776, 27.125029>,  <38.295353, 32.007862, 27.072056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655365, 31.841776, 27.125029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101861, 0.095038, 0.990249,
		-0.423757, -0.904743, 0.043242,
		0.900030, -0.415220, 0.132431,
		38.925373, 31.717211, 27.164759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123421, 31.517384, 27.594889>,  <38.295353, 32.007862, 27.072056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123421, 31.517384, 27.594889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521774, 31.550810, 27.608879>,  <38.760788, 31.570866, 27.617273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521774, 31.550810, 27.608879>,  <38.123421, 31.517384, 27.594889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521774, 31.550810, 27.608879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035598, 0.005952, 0.999348,
		0.083306, -0.996484, 0.008903,
		0.995888, 0.083569, 0.034977,
		38.820541, 31.575880, 27.619371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594727, 31.032795, 27.454428>,  <38.123421, 31.517384, 27.594889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594727, 31.032795, 27.454428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203518, 31.115952, 27.460794>,  <36.968792, 31.165846, 27.464615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203518, 31.115952, 27.460794>,  <37.594727, 31.032795, 27.454428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203518, 31.115952, 27.460794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000073, 0.075992, -0.997108,
		-0.208502, -0.975195, -0.074307,
		-0.978022, 0.207894, 0.015915,
		36.910110, 31.178320, 27.465569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171486, 30.564213, 26.963575>,  <37.594727, 31.032795, 27.454428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171486, 30.564213, 26.963575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007599, 30.927952, 26.992481>,  <36.909267, 31.146194, 27.009825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007599, 30.927952, 26.992481>,  <37.171486, 30.564213, 26.963575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007599, 30.927952, 26.992481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009413, 0.075003, -0.997139,
		-0.912165, -0.409224, -0.022170,
		-0.409716, 0.909346, 0.072267,
		36.884686, 31.200756, 27.014162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689140, 30.609379, 26.334534>,  <37.171486, 30.564213, 26.963575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689140, 30.609379, 26.334534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760250, 30.974503, 26.481596>,  <36.802917, 31.193577, 26.569834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760250, 30.974503, 26.481596>,  <36.689140, 30.609379, 26.334534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760250, 30.974503, 26.481596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035230, 0.367466, -0.929370,
		-0.983440, 0.178171, 0.033168,
		0.177774, 0.912811, 0.367658,
		36.813583, 31.248346, 26.591894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414333, 30.953693, 25.790024>,  <36.689140, 30.609379, 26.334534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414333, 30.953693, 25.790024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619667, 31.215300, 26.012285>,  <36.742867, 31.372263, 26.145641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619667, 31.215300, 26.012285>,  <36.414333, 30.953693, 25.790024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619667, 31.215300, 26.012285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302721, 0.467854, -0.830345,
		-0.803023, 0.594454, 0.042183,
		0.513337, 0.654016, 0.555651,
		36.773666, 31.411505, 26.178980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070435, 31.522692, 25.719114>,  <36.414333, 30.953693, 25.790024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070435, 31.522692, 25.719114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.458263, 31.599941, 25.779285>,  <36.690960, 31.646290, 25.815388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.458263, 31.599941, 25.779285>,  <36.070435, 31.522692, 25.719114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458263, 31.599941, 25.779285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060074, 0.407995, -0.911006,
		-0.237309, 0.892325, 0.383980,
		0.969575, 0.193122, 0.150426,
		36.749134, 31.657877, 25.824413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117828, 32.264027, 25.590826>,  <36.070435, 31.522692, 25.719114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117828, 32.264027, 25.590826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.468601, 32.076317, 25.549311>,  <36.679066, 31.963690, 25.524403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.468601, 32.076317, 25.549311>,  <36.117828, 32.264027, 25.590826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468601, 32.076317, 25.549311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128048, 0.436261, -0.890663,
		0.463248, 0.767759, 0.442660,
		0.876929, -0.469279, -0.103787,
		36.731682, 31.935534, 25.518175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496090, 32.768429, 25.329041>,  <36.117828, 32.264027, 25.590826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496090, 32.768429, 25.329041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687622, 32.434036, 25.221821>,  <36.802540, 32.233398, 25.157490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687622, 32.434036, 25.221821>,  <36.496090, 32.768429, 25.329041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687622, 32.434036, 25.221821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211871, 0.406343, -0.888817,
		0.851959, 0.368800, 0.371690,
		0.478829, -0.835986, -0.268049,
		36.831272, 32.183239, 25.141405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100533, 33.281021, 25.162840>,  <36.496090, 32.768429, 25.329041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100533, 33.281021, 25.162840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090496, 33.672237, 25.245602>,  <37.084473, 33.906967, 25.295259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090496, 33.672237, 25.245602>,  <37.100533, 33.281021, 25.162840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090496, 33.672237, 25.245602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221235, -0.207272, 0.952939,
		0.974897, -0.021860, 0.221578,
		-0.025096, 0.978039, 0.206905,
		37.082966, 33.965649, 25.307673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272175, 33.282600, 25.935270>,  <37.100533, 33.281021, 25.162840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272175, 33.282600, 25.935270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.118965, 33.638344, 25.835398>,  <37.027039, 33.851788, 25.775475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.118965, 33.638344, 25.835398>,  <37.272175, 33.282600, 25.935270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118965, 33.638344, 25.835398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206018, 0.181241, 0.961618,
		0.900473, 0.419759, 0.113804,
		-0.383021, 0.889356, -0.249681,
		37.004059, 33.905151, 25.760494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562569, 33.761288, 26.357643>,  <37.272175, 33.282600, 25.935270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562569, 33.761288, 26.357643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.212074, 33.924442, 26.255003>,  <37.001778, 34.022335, 26.193419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.212074, 33.924442, 26.255003>,  <37.562569, 33.761288, 26.357643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212074, 33.924442, 26.255003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197207, 0.182337, 0.963256,
		0.439683, 0.894642, -0.079333,
		-0.876235, 0.407883, -0.256600,
		36.949203, 34.046806, 26.178022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543118, 34.350018, 26.766539>,  <37.562569, 33.761288, 26.357643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543118, 34.350018, 26.766539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.165344, 34.270237, 26.662024>,  <36.938683, 34.222370, 26.599314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.165344, 34.270237, 26.662024>,  <37.543118, 34.350018, 26.766539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165344, 34.270237, 26.662024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301127, 0.206216, 0.931020,
		-0.131808, 0.957964, -0.254816,
		-0.944431, -0.199448, -0.261288,
		36.882015, 34.210403, 26.583637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106865, 34.948711, 27.012991>,  <37.543118, 34.350018, 26.766539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106865, 34.948711, 27.012991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.873199, 34.627190, 26.967979>,  <36.733002, 34.434277, 26.940973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.873199, 34.627190, 26.967979>,  <37.106865, 34.948711, 27.012991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873199, 34.627190, 26.967979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332408, 0.110451, 0.936646,
		-0.740448, 0.584555, -0.331710,
		-0.584159, -0.803801, -0.112528,
		36.697952, 34.386051, 26.934221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439819, 35.142143, 27.385601>,  <37.106865, 34.948711, 27.012991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439819, 35.142143, 27.385601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394382, 34.746376, 27.349491>,  <36.367123, 34.508915, 27.327826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394382, 34.746376, 27.349491>,  <36.439819, 35.142143, 27.385601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394382, 34.746376, 27.349491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373777, -0.041631, 0.926583,
		-0.920537, 0.138992, -0.365093,
		-0.113589, -0.989418, -0.090275,
		36.360306, 34.449551, 27.322409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718071, 35.043358, 27.545904>,  <36.439819, 35.142143, 27.385601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718071, 35.043358, 27.545904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.953579, 34.722591, 27.586456>,  <36.094883, 34.530132, 27.610788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.953579, 34.722591, 27.586456>,  <35.718071, 35.043358, 27.545904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953579, 34.722591, 27.586456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302026, -0.101918, 0.947836,
		-0.749755, -0.588675, -0.302207,
		0.588768, -0.801919, 0.101382,
		36.130211, 34.482018, 27.616871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.040504, 36.687744, 22.977030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.369434, 36.473705, 23.054443>,  <40.566792, 36.345280, 23.100891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.369434, 36.473705, 23.054443>,  <40.040504, 36.687744, 22.977030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369434, 36.473705, 23.054443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259529, -0.050016, 0.964439,
		-0.506394, -0.843305, -0.180004,
		0.822320, -0.535102, 0.193534,
		40.616131, 36.313175, 23.112503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898655, 35.995838, 23.282587>,  <40.040504, 36.687744, 22.977030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898655, 35.995838, 23.282587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242363, 36.162727, 23.400965>,  <40.448586, 36.262859, 23.471992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242363, 36.162727, 23.400965>,  <39.898655, 35.995838, 23.282587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242363, 36.162727, 23.400965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331206, 0.012892, 0.943470,
		0.389821, -0.908713, 0.149264,
		0.859269, 0.417222, 0.295946,
		40.500145, 36.287895, 23.489748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009216, 35.674278, 23.939074>,  <39.898655, 35.995838, 23.282587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009216, 35.674278, 23.939074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.228374, 36.008614, 23.952847>,  <40.359871, 36.209213, 23.961111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.228374, 36.008614, 23.952847>,  <40.009216, 35.674278, 23.939074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228374, 36.008614, 23.952847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366065, 0.202542, 0.908280,
		0.752199, -0.510250, 0.416943,
		0.547899, 0.835836, 0.034433,
		40.392746, 36.259365, 23.963177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427959, 35.566006, 24.465042>,  <40.009216, 35.674278, 23.939074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427959, 35.566006, 24.465042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.405235, 35.959885, 24.399141>,  <40.391602, 36.196213, 24.359602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.405235, 35.959885, 24.399141>,  <40.427959, 35.566006, 24.465042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405235, 35.959885, 24.399141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309729, 0.139493, 0.940537,
		0.949126, 0.104460, 0.297065,
		-0.056810, 0.984698, -0.164751,
		40.388191, 36.255295, 24.349716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763077, 35.924828, 25.009554>,  <40.427959, 35.566006, 24.465042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763077, 35.924828, 25.009554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.520416, 36.205036, 24.859219>,  <40.374821, 36.373161, 24.769016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.520416, 36.205036, 24.859219>,  <40.763077, 35.924828, 25.009554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520416, 36.205036, 24.859219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330395, 0.207836, 0.920676,
		0.723061, 0.682701, 0.105364,
		-0.606648, 0.700517, -0.375839,
		40.338421, 36.415192, 24.746468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811775, 36.518066, 25.518187>,  <40.763077, 35.924828, 25.009554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811775, 36.518066, 25.518187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476925, 36.589878, 25.311502>,  <40.276016, 36.632965, 25.187492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476925, 36.589878, 25.311502>,  <40.811775, 36.518066, 25.518187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476925, 36.589878, 25.311502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419289, 0.396063, 0.816903,
		0.351309, 0.900501, -0.256279,
		-0.837125, 0.179530, -0.516711,
		40.225788, 36.643738, 25.156488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641178, 37.276775, 25.622519>,  <40.811775, 36.518066, 25.518187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641178, 37.276775, 25.622519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.300816, 37.111023, 25.493364>,  <40.096600, 37.011570, 25.415873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.300816, 37.111023, 25.493364>,  <40.641178, 37.276775, 25.622519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300816, 37.111023, 25.493364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506021, 0.481448, 0.715647,
		-0.141098, 0.772332, -0.619350,
		-0.850902, -0.414380, -0.322885,
		40.045544, 36.986710, 25.396500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207382, 37.792912, 25.375805>,  <40.641178, 37.276775, 25.622519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207382, 37.792912, 25.375805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.952595, 37.497639, 25.464666>,  <39.799721, 37.320473, 25.517982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.952595, 37.497639, 25.464666>,  <40.207382, 37.792912, 25.375805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952595, 37.497639, 25.464666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262450, 0.478621, 0.837880,
		-0.724837, 0.475400, -0.498603,
		-0.636970, -0.738185, 0.222153,
		39.761505, 37.276184, 25.531313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535172, 38.052422, 25.620010>,  <40.207382, 37.792912, 25.375805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535172, 38.052422, 25.620010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.547218, 37.682499, 25.771711>,  <39.554447, 37.460545, 25.862732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.547218, 37.682499, 25.771711>,  <39.535172, 38.052422, 25.620010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547218, 37.682499, 25.771711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050293, 0.377540, 0.924626,
		-0.998280, -0.046924, -0.035139,
		0.030120, -0.924804, 0.379251,
		39.556255, 37.405056, 25.885487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991096, 38.002487, 26.113335>,  <39.535172, 38.052422, 25.620010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991096, 38.002487, 26.113335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.219044, 37.690548, 26.216934>,  <39.355812, 37.503384, 26.279095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.219044, 37.690548, 26.216934>,  <38.991096, 38.002487, 26.113335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219044, 37.690548, 26.216934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082502, 0.259294, 0.962268,
		-0.817584, -0.569735, 0.083424,
		0.569869, -0.779852, 0.258998,
		39.390003, 37.456593, 26.294634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511974, 37.677166, 26.682472>,  <38.991096, 38.002487, 26.113335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511974, 37.677166, 26.682472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.877754, 37.537361, 26.764086>,  <39.097221, 37.453476, 26.813053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.877754, 37.537361, 26.764086>,  <38.511974, 37.677166, 26.682472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877754, 37.537361, 26.764086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174758, 0.113711, 0.978023,
		-0.365034, -0.930005, 0.042902,
		0.914445, -0.349515, 0.204034,
		39.152088, 37.432507, 26.825296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399387, 37.430984, 27.277287>,  <38.511974, 37.677166, 26.682472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399387, 37.430984, 27.277287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.799042, 37.415596, 27.283684>,  <39.038834, 37.406364, 27.287521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.799042, 37.415596, 27.283684>,  <38.399387, 37.430984, 27.277287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799042, 37.415596, 27.283684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010124, 0.148174, 0.988909,
		-0.040415, -0.988213, 0.147656,
		0.999132, -0.038471, 0.015993,
		39.098782, 37.404057, 27.288481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989071, 36.781502, 27.209293>,  <38.399387, 37.430984, 27.277287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989071, 36.781502, 27.209293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.604950, 36.865776, 27.136156>,  <37.374477, 36.916340, 27.092274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.604950, 36.865776, 27.136156>,  <37.989071, 36.781502, 27.209293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604950, 36.865776, 27.136156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233511, 0.248518, -0.940059,
		-0.152615, -0.945437, -0.287849,
		-0.960303, 0.210683, -0.182842,
		37.316860, 36.928982, 27.081303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676105, 36.404846, 26.592916>,  <37.989071, 36.781502, 27.209293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676105, 36.404846, 26.592916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.482914, 36.752621, 26.634497>,  <37.367001, 36.961285, 26.659445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.482914, 36.752621, 26.634497>,  <37.676105, 36.404846, 26.592916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482914, 36.752621, 26.634497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054987, 0.148594, -0.987368,
		-0.873903, -0.471163, -0.119576,
		-0.482980, 0.869439, 0.103949,
		37.338020, 37.013451, 26.665682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179310, 36.518101, 26.022728>,  <37.676105, 36.404846, 26.592916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179310, 36.518101, 26.022728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.237297, 36.890499, 26.156727>,  <37.272091, 37.113937, 26.237127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.237297, 36.890499, 26.156727>,  <37.179310, 36.518101, 26.022728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237297, 36.890499, 26.156727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157225, 0.312598, -0.936783,
		-0.976865, 0.188474, -0.101060,
		0.144968, 0.930999, 0.334998,
		37.280788, 37.169800, 26.257227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601685, 37.019337, 25.783298>,  <37.179310, 36.518101, 26.022728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601685, 37.019337, 25.783298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.913963, 37.252460, 25.873495>,  <37.101330, 37.392334, 25.927612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.913963, 37.252460, 25.873495>,  <36.601685, 37.019337, 25.783298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913963, 37.252460, 25.873495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035926, 0.318383, -0.947281,
		-0.623873, 0.747643, 0.227623,
		0.780699, 0.582806, 0.225491,
		37.148174, 37.427303, 25.941143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435616, 37.652748, 25.462122>,  <36.601685, 37.019337, 25.783298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435616, 37.652748, 25.462122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.829567, 37.656910, 25.531294>,  <37.065937, 37.659409, 25.572796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.829567, 37.656910, 25.531294>,  <36.435616, 37.652748, 25.462122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829567, 37.656910, 25.531294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160351, 0.323060, -0.932695,
		-0.065573, 0.946321, 0.316507,
		0.984879, 0.010407, 0.172928,
		37.125031, 37.660030, 25.583172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629242, 38.368454, 25.281889>,  <36.435616, 37.652748, 25.462122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629242, 38.368454, 25.281889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.966438, 38.153538, 25.271425>,  <37.168755, 38.024590, 25.265148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.966438, 38.153538, 25.271425>,  <36.629242, 38.368454, 25.281889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966438, 38.153538, 25.271425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082603, 0.177345, -0.980676,
		0.531548, 0.824540, 0.193882,
		0.842991, -0.537291, -0.026158,
		37.219337, 37.992352, 25.263578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030872, 38.782543, 24.862053>,  <36.629242, 38.368454, 25.281889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030872, 38.782543, 24.862053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.222382, 38.431881, 24.843111>,  <37.337288, 38.221481, 24.831745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.222382, 38.431881, 24.843111>,  <37.030872, 38.782543, 24.862053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222382, 38.431881, 24.843111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135512, 0.127086, -0.982591,
		0.867415, 0.464025, 0.179643,
		0.478777, -0.876659, -0.047355,
		37.366016, 38.168884, 24.828905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604588, 38.905632, 24.444643>,  <37.030872, 38.782543, 24.862053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604588, 38.905632, 24.444643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.495846, 38.521301, 24.423109>,  <37.430599, 38.290703, 24.410189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.495846, 38.521301, 24.423109>,  <37.604588, 38.905632, 24.444643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495846, 38.521301, 24.423109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256832, -0.018525, -0.966279,
		0.927433, -0.276514, 0.251808,
		-0.271855, -0.960831, -0.053836,
		37.414288, 38.233051, 24.406958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185436, 38.591652, 24.084154>,  <37.604588, 38.905632, 24.444643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185436, 38.591652, 24.084154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.884396, 38.329411, 24.059574>,  <37.703773, 38.172066, 24.044827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.884396, 38.329411, 24.059574>,  <38.185436, 38.591652, 24.084154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884396, 38.329411, 24.059574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142672, -0.071246, -0.987202,
		0.642839, -0.751733, 0.147156,
		-0.752597, -0.655608, -0.061451,
		37.658615, 38.132729, 24.041140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425697, 38.033272, 23.591413>,  <38.185436, 38.591652, 24.084154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425697, 38.033272, 23.591413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030190, 37.977139, 23.570883>,  <37.792885, 37.943459, 23.558565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030190, 37.977139, 23.570883>,  <38.425697, 38.033272, 23.591413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030190, 37.977139, 23.570883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064306, -0.089567, -0.993903,
		0.134882, -0.986044, 0.097586,
		-0.988773, -0.140335, -0.051327,
		37.733559, 37.935040, 23.555485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387867, 37.520954, 23.101259>,  <38.425697, 38.033272, 23.591413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387867, 37.520954, 23.101259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.017342, 37.671158, 23.113518>,  <37.795029, 37.761280, 23.120872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.017342, 37.671158, 23.113518>,  <38.387867, 37.520954, 23.101259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017342, 37.671158, 23.113518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079685, -0.115761, -0.990075,
		-0.368237, -0.919560, 0.137153,
		-0.926311, 0.375511, 0.030648,
		37.739449, 37.783810, 23.122711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882744, 37.112072, 22.756067>,  <38.387867, 37.520954, 23.101259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882744, 37.112072, 22.756067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.724545, 37.478363, 22.727707>,  <37.629623, 37.698135, 22.710690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.724545, 37.478363, 22.727707>,  <37.882744, 37.112072, 22.756067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724545, 37.478363, 22.727707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210998, -0.165718, -0.963337,
		-0.893901, -0.366039, 0.258758,
		-0.395500, 0.915725, -0.070902,
		37.605896, 37.753082, 22.706436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572269, 36.750164, 22.427805>,  <37.882744, 37.112072, 22.756067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572269, 36.750164, 22.427805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.211807, 36.662304, 22.577295>,  <37.995529, 36.609589, 22.666990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.211807, 36.662304, 22.577295>,  <38.572269, 36.750164, 22.427805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211807, 36.662304, 22.577295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393286, -0.776873, 0.491726,
		0.182329, 0.590103, 0.786469,
		-0.901156, -0.219651, 0.373726,
		37.941460, 36.596409, 22.689413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826687, 36.193279, 22.872341>,  <38.572269, 36.750164, 22.427805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826687, 36.193279, 22.872341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.428246, 36.182549, 22.838720>,  <38.189182, 36.176109, 22.818548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.428246, 36.182549, 22.838720>,  <38.826687, 36.193279, 22.872341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428246, 36.182549, 22.838720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039412, -0.717030, 0.695927,
		-0.078938, 0.696526, 0.713176,
		-0.996100, -0.026827, -0.084052,
		38.129414, 36.174500, 22.813505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561913, 36.195202, 23.517696>,  <38.826687, 36.193279, 22.872341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561913, 36.195202, 23.517696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.254543, 36.045353, 23.310163>,  <38.070122, 35.955444, 23.185644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.254543, 36.045353, 23.310163>,  <38.561913, 36.195202, 23.517696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254543, 36.045353, 23.310163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135352, -0.697263, 0.703920,
		-0.625463, 0.611134, 0.485088,
		-0.768424, -0.374618, -0.518831,
		38.024017, 35.932968, 23.154514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987415, 36.184429, 23.938643>,  <38.561913, 36.195202, 23.517696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987415, 36.184429, 23.938643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863174, 35.909332, 23.676180>,  <37.788631, 35.744274, 23.518703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863174, 35.909332, 23.676180>,  <37.987415, 36.184429, 23.938643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863174, 35.909332, 23.676180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358891, -0.554354, 0.750926,
		-0.880185, 0.468724, -0.074643,
		-0.310598, -0.687742, -0.656155,
		37.769997, 35.703011, 23.479334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331379, 36.049679, 24.132824>,  <37.987415, 36.184429, 23.938643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331379, 36.049679, 24.132824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.437378, 35.735943, 23.908474>,  <37.500977, 35.547699, 23.773865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.437378, 35.735943, 23.908474>,  <37.331379, 36.049679, 24.132824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437378, 35.735943, 23.908474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399704, -0.618695, 0.676353,
		-0.877504, 0.044953, -0.477457,
		0.264996, -0.784344, -0.560875,
		37.516876, 35.500641, 23.740211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721233, 35.591114, 24.040024>,  <37.331379, 36.049679, 24.132824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721233, 35.591114, 24.040024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.051201, 35.367985, 24.003483>,  <37.249180, 35.234108, 23.981558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.051201, 35.367985, 24.003483>,  <36.721233, 35.591114, 24.040024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051201, 35.367985, 24.003483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319045, -0.592899, 0.739379,
		-0.466600, -0.580784, -0.667064,
		0.824921, -0.557817, -0.091351,
		37.298676, 35.200638, 23.976078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488163, 35.003792, 24.134533>,  <36.721233, 35.591114, 24.040024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488163, 35.003792, 24.134533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.867565, 34.880180, 24.162376>,  <37.095207, 34.806015, 24.179083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.867565, 34.880180, 24.162376>,  <36.488163, 35.003792, 24.134533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867565, 34.880180, 24.162376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263526, -0.647845, 0.714738,
		-0.175778, -0.696275, -0.695919,
		0.948502, -0.309028, 0.069609,
		37.152115, 34.787472, 24.183260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423565, 34.269035, 24.209438>,  <36.488163, 35.003792, 24.134533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423565, 34.269035, 24.209438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.766113, 34.385921, 24.379725>,  <36.971642, 34.456055, 24.481895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.766113, 34.385921, 24.379725>,  <36.423565, 34.269035, 24.209438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766113, 34.385921, 24.379725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200989, -0.570798, 0.796111,
		0.475633, -0.767333, -0.430085,
		0.856374, 0.292215, 0.425716,
		37.023026, 34.473587, 24.507439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566875, 33.672287, 24.637751>,  <36.423565, 34.269035, 24.209438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566875, 33.672287, 24.637751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.801640, 33.965508, 24.775259>,  <36.942497, 34.141441, 24.857763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.801640, 33.965508, 24.775259>,  <36.566875, 33.672287, 24.637751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801640, 33.965508, 24.775259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227571, -0.258116, 0.938929,
		0.777015, -0.629296, 0.015331,
		0.586907, 0.733050, 0.343770,
		36.977711, 34.185421, 24.878389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745514, 32.853386, 24.464172>,  <36.566875, 33.672287, 24.637751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745514, 32.853386, 24.464172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.882671, 32.488285, 24.552988>,  <36.964966, 32.269222, 24.606277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.882671, 32.488285, 24.552988>,  <36.745514, 32.853386, 24.464172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882671, 32.488285, 24.552988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420525, -0.062213, -0.905145,
		0.839990, 0.403741, 0.362505,
		0.342892, -0.912756, 0.222042,
		36.985538, 32.214458, 24.619600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423199, 32.820522, 24.170280>,  <36.745514, 32.853386, 24.464172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423199, 32.820522, 24.170280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.274372, 32.450279, 24.198053>,  <37.185078, 32.228134, 24.214718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.274372, 32.450279, 24.198053>,  <37.423199, 32.820522, 24.170280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274372, 32.450279, 24.198053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608243, -0.299630, -0.735025,
		0.701149, -0.231243, 0.674475,
		-0.372063, -0.925607, 0.069433,
		37.162754, 32.172596, 24.218884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992252, 32.382282, 24.042234>,  <37.423199, 32.820522, 24.170280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992252, 32.382282, 24.042234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.670616, 32.168350, 23.938395>,  <37.477634, 32.039989, 23.876091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.670616, 32.168350, 23.938395>,  <37.992252, 32.382282, 24.042234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670616, 32.168350, 23.938395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437398, -0.236478, -0.867618,
		0.402642, -0.811191, 0.424085,
		-0.804091, -0.534834, -0.259597,
		37.429390, 32.007900, 23.860516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259838, 31.714964, 23.872391>,  <37.992252, 32.382282, 24.042234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259838, 31.714964, 23.872391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.907940, 31.782389, 23.694565>,  <37.696800, 31.822844, 23.587870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.907940, 31.782389, 23.694565>,  <38.259838, 31.714964, 23.872391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907940, 31.782389, 23.694565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416538, -0.177576, -0.891607,
		-0.229239, -0.969563, 0.086007,
		-0.879742, 0.168566, -0.444568,
		37.644016, 31.832956, 23.561195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288292, 31.290594, 23.275934>,  <38.259838, 31.714964, 23.872391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288292, 31.290594, 23.275934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.981121, 31.524536, 23.171444>,  <37.796818, 31.664902, 23.108749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.981121, 31.524536, 23.171444>,  <38.288292, 31.290594, 23.275934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981121, 31.524536, 23.171444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236336, -0.120341, -0.964191,
		-0.595346, -0.802162, -0.045809,
		-0.767925, 0.584854, -0.261224,
		37.750744, 31.699991, 23.093077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314991, 31.189615, 22.567377>,  <38.288292, 31.290594, 23.275934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314991, 31.189615, 22.567377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.054455, 31.491922, 22.594429>,  <37.898132, 31.673306, 22.610661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.054455, 31.491922, 22.594429>,  <38.314991, 31.189615, 22.567377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054455, 31.491922, 22.594429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129999, 0.198957, -0.971348,
		-0.747567, -0.623886, -0.227838,
		-0.651340, 0.755766, 0.067630,
		37.859055, 31.718653, 22.614717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765141, 31.143522, 22.028957>,  <38.314991, 31.189615, 22.567377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765141, 31.143522, 22.028957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.761246, 31.534473, 22.113468>,  <37.758911, 31.769045, 22.164175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.761246, 31.534473, 22.113468>,  <37.765141, 31.143522, 22.028957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761246, 31.534473, 22.113468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113526, 0.210999, -0.970871,
		-0.993487, 0.014534, -0.113012,
		-0.009734, 0.977378, 0.211275,
		37.758324, 31.827686, 22.176851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201305, 31.402607, 21.552666>,  <37.765141, 31.143522, 22.028957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201305, 31.402607, 21.552666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.462418, 31.680857, 21.672651>,  <37.619087, 31.847807, 21.744642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.462418, 31.680857, 21.672651>,  <37.201305, 31.402607, 21.552666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462418, 31.680857, 21.672651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044256, 0.360276, -0.931795,
		-0.756252, 0.621535, 0.204396,
		0.652782, 0.695626, 0.299966,
		37.658253, 31.889545, 21.762642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006844, 32.024826, 21.253796>,  <37.201305, 31.402607, 21.552666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006844, 32.024826, 21.253796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.400703, 32.041489, 21.321585>,  <37.637020, 32.051487, 21.362259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.400703, 32.041489, 21.321585>,  <37.006844, 32.024826, 21.253796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400703, 32.041489, 21.321585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151886, 0.273683, -0.949752,
		-0.085949, 0.960917, 0.263156,
		0.984654, 0.041660, 0.169472,
		37.696098, 32.053986, 21.372427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.167519, 32.413025, 37.583874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.557972, 32.356030, 37.649422>,  <35.792244, 32.321831, 37.688751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.557972, 32.356030, 37.649422>,  <35.167519, 32.413025, 37.583874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557972, 32.356030, 37.649422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104303, -0.354234, -0.929322,
		0.190469, 0.924237, -0.330919,
		0.976136, -0.142491, 0.163872,
		35.850811, 32.313282, 37.698582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477329, 32.768791, 37.044178>,  <35.167519, 32.413025, 37.583874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477329, 32.768791, 37.044178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725746, 32.477631, 37.160427>,  <35.874798, 32.302933, 37.230175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725746, 32.477631, 37.160427>,  <35.477329, 32.768791, 37.044178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725746, 32.477631, 37.160427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015591, -0.359253, -0.933110,
		0.783621, 0.584032, -0.211763,
		0.621043, -0.727903, 0.290624,
		35.912060, 32.259258, 37.247616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956997, 32.857143, 36.555218>,  <35.477329, 32.768791, 37.044178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956997, 32.857143, 36.555218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.008060, 32.488579, 36.702023>,  <36.038696, 32.267441, 36.790104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.008060, 32.488579, 36.702023>,  <35.956997, 32.857143, 36.555218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008060, 32.488579, 36.702023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074285, -0.377882, -0.922869,
		0.989033, 0.090545, -0.116686,
		0.127655, -0.921416, 0.367012,
		36.046356, 32.212154, 36.812126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483803, 32.583813, 36.186520>,  <35.956997, 32.857143, 36.555218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483803, 32.583813, 36.186520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279236, 32.274879, 36.337231>,  <36.156498, 32.089520, 36.427658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279236, 32.274879, 36.337231>,  <36.483803, 32.583813, 36.186520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279236, 32.274879, 36.337231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095881, -0.384427, -0.918163,
		0.853969, -0.505686, 0.122548,
		-0.511413, -0.772332, 0.376774,
		36.125813, 32.043179, 36.450264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665062, 32.094513, 35.773132>,  <36.483803, 32.583813, 36.186520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665062, 32.094513, 35.773132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.336575, 31.937799, 35.939072>,  <36.139481, 31.843771, 36.038635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.336575, 31.937799, 35.939072>,  <36.665062, 32.094513, 35.773132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336575, 31.937799, 35.939072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275388, -0.364617, -0.889503,
		0.499756, -0.844723, 0.191538,
		-0.821222, -0.391787, 0.414846,
		36.090206, 31.820263, 36.063526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624519, 31.384562, 35.504078>,  <36.665062, 32.094513, 35.773132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624519, 31.384562, 35.504078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260731, 31.508442, 35.615040>,  <36.042458, 31.582771, 35.681618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260731, 31.508442, 35.615040>,  <36.624519, 31.384562, 35.504078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260731, 31.508442, 35.615040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370294, -0.299930, -0.879161,
		-0.189074, -0.902291, 0.387456,
		-0.909469, 0.309699, 0.277404,
		35.987892, 31.601353, 35.698261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298172, 30.808487, 35.383030>,  <36.624519, 31.384562, 35.504078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298172, 30.808487, 35.383030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046516, 31.118938, 35.366009>,  <35.895523, 31.305210, 35.355797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046516, 31.118938, 35.366009>,  <36.298172, 30.808487, 35.383030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046516, 31.118938, 35.366009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216622, -0.227643, -0.949344,
		-0.746499, -0.588050, 0.311346,
		-0.629138, 0.776129, -0.042551,
		35.857777, 31.351776, 35.353245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758060, 30.529467, 35.131783>,  <36.298172, 30.808487, 35.383030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758060, 30.529467, 35.131783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716331, 30.924593, 35.085590>,  <35.691292, 31.161669, 35.057877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716331, 30.924593, 35.085590>,  <35.758060, 30.529467, 35.131783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716331, 30.924593, 35.085590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341978, -0.144660, -0.928507,
		-0.933899, -0.057378, 0.352903,
		-0.104327, 0.987816, -0.115476,
		35.685032, 31.220938, 35.050949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078732, 30.669924, 34.741707>,  <35.758060, 30.529467, 35.131783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078732, 30.669924, 34.741707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.286930, 31.006037, 34.681042>,  <35.411850, 31.207705, 34.644642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.286930, 31.006037, 34.681042>,  <35.078732, 30.669924, 34.741707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286930, 31.006037, 34.681042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253411, -0.017595, -0.967199,
		-0.815391, 0.541860, 0.203780,
		0.520501, 0.840285, -0.151660,
		35.443081, 31.258121, 34.635544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657566, 31.033110, 34.326832>,  <35.078732, 30.669924, 34.741707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657566, 31.033110, 34.326832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014385, 31.208647, 34.283634>,  <35.228477, 31.313969, 34.257713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.014385, 31.208647, 34.283634>,  <34.657566, 31.033110, 34.326832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014385, 31.208647, 34.283634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181527, 0.129084, -0.974877,
		-0.413877, 0.889244, 0.194811,
		0.892050, 0.438843, -0.107997,
		35.282001, 31.340300, 34.251236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463970, 31.535650, 33.875080>,  <34.657566, 31.033110, 34.326832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463970, 31.535650, 33.875080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859970, 31.482809, 33.855274>,  <35.097569, 31.451105, 33.843391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859970, 31.482809, 33.855274>,  <34.463970, 31.535650, 33.875080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859970, 31.482809, 33.855274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028622, 0.155597, -0.987406,
		0.138142, 0.978948, 0.150259,
		0.989999, -0.132102, -0.049514,
		35.156971, 31.443178, 33.840420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772957, 32.150230, 33.415527>,  <34.463970, 31.535650, 33.875080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772957, 32.150230, 33.415527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001549, 31.822809, 33.392284>,  <35.138702, 31.626356, 33.378338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001549, 31.822809, 33.392284>,  <34.772957, 32.150230, 33.415527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001549, 31.822809, 33.392284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139742, 0.166844, -0.976030,
		0.808630, 0.549662, 0.209735,
		0.571480, -0.818556, -0.058105,
		35.172993, 31.577242, 33.374851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003109, 32.887604, 33.578194>,  <34.772957, 32.150230, 33.415527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003109, 32.887604, 33.578194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870541, 33.258106, 33.506405>,  <34.791000, 33.480408, 33.463333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870541, 33.258106, 33.506405>,  <35.003109, 32.887604, 33.578194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870541, 33.258106, 33.506405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433166, 0.019609, 0.901101,
		0.838170, 0.376384, 0.394724,
		-0.331420, 0.926256, -0.179472,
		34.771114, 33.535984, 33.452564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225651, 33.314552, 34.071823>,  <35.003109, 32.887604, 33.578194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225651, 33.314552, 34.071823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911793, 33.528484, 33.946419>,  <34.723476, 33.656845, 33.871178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911793, 33.528484, 33.946419>,  <35.225651, 33.314552, 34.071823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911793, 33.528484, 33.946419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330192, 0.067474, 0.941499,
		0.524696, 0.842261, 0.123654,
		-0.784645, 0.534830, -0.313511,
		34.676399, 33.688934, 33.852364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178730, 33.860905, 34.527245>,  <35.225651, 33.314552, 34.071823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178730, 33.860905, 34.527245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822666, 33.794819, 34.357388>,  <34.609028, 33.755169, 34.255474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822666, 33.794819, 34.357388>,  <35.178730, 33.860905, 34.527245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822666, 33.794819, 34.357388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449408, 0.164589, 0.878033,
		-0.075171, 0.972427, -0.220759,
		-0.890158, -0.165214, -0.424644,
		34.555618, 33.745255, 34.229996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812508, 34.260834, 34.757568>,  <35.178730, 33.860905, 34.527245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812508, 34.260834, 34.757568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.509888, 34.075523, 34.572956>,  <34.328316, 33.964336, 34.462189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.509888, 34.075523, 34.572956>,  <34.812508, 34.260834, 34.757568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509888, 34.075523, 34.572956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629051, 0.322706, 0.707216,
		-0.178696, 0.825370, -0.535566,
		-0.756546, -0.463275, -0.461534,
		34.282925, 33.936543, 34.434494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259090, 34.796841, 34.628387>,  <34.812508, 34.260834, 34.757568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259090, 34.796841, 34.628387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127239, 34.420971, 34.664963>,  <34.048130, 34.195450, 34.686909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127239, 34.420971, 34.664963>,  <34.259090, 34.796841, 34.628387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127239, 34.420971, 34.664963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639068, 0.293364, 0.711006,
		-0.694937, 0.175934, -0.697216,
		-0.329629, -0.939672, 0.091436,
		34.028351, 34.139069, 34.692394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535908, 34.863430, 34.550087>,  <34.259090, 34.796841, 34.628387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535908, 34.863430, 34.550087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617058, 34.517292, 34.733398>,  <33.665749, 34.309608, 34.843384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617058, 34.517292, 34.733398>,  <33.535908, 34.863430, 34.550087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617058, 34.517292, 34.733398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605452, 0.256967, 0.753256,
		-0.769590, -0.430282, -0.471794,
		0.202877, -0.865347, 0.458275,
		33.677921, 34.257687, 34.870880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945816, 34.608932, 34.732124>,  <33.535908, 34.863430, 34.550087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945816, 34.608932, 34.732124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191505, 34.397503, 34.966507>,  <33.338917, 34.270645, 35.107136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191505, 34.397503, 34.966507>,  <32.945816, 34.608932, 34.732124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191505, 34.397503, 34.966507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531445, 0.271831, 0.802293,
		-0.583351, -0.804188, -0.113943,
		0.614222, -0.528573, 0.585955,
		33.375771, 34.238930, 35.142292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552116, 34.261513, 35.126381>,  <32.945816, 34.608932, 34.732124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552116, 34.261513, 35.126381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894474, 34.273861, 35.332874>,  <33.099888, 34.281269, 35.456772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894474, 34.273861, 35.332874>,  <32.552116, 34.261513, 35.126381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894474, 34.273861, 35.332874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503666, 0.276281, 0.818529,
		-0.117357, -0.960581, 0.252015,
		0.855891, 0.030871, 0.516235,
		33.151241, 34.283123, 35.487743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304108, 34.108978, 35.800461>,  <32.552116, 34.261513, 35.126381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304108, 34.108978, 35.800461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676708, 34.237579, 35.868515>,  <32.900269, 34.314739, 35.909348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676708, 34.237579, 35.868515>,  <32.304108, 34.108978, 35.800461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676708, 34.237579, 35.868515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264188, 0.276456, 0.924000,
		0.250026, -0.905656, 0.342455,
		0.931500, 0.321497, 0.170142,
		32.956158, 34.334030, 35.919556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437134, 33.972397, 36.510929>,  <32.304108, 34.108978, 35.800461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437134, 33.972397, 36.510929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707867, 34.251278, 36.416431>,  <32.870304, 34.418606, 36.359734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707867, 34.251278, 36.416431>,  <32.437134, 33.972397, 36.510929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707867, 34.251278, 36.416431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113921, 0.416258, 0.902082,
		0.727273, -0.583641, 0.361161,
		0.676828, 0.697204, -0.236244,
		32.910915, 34.460438, 36.345558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613747, 34.157646, 37.196053>,  <32.437134, 33.972397, 36.510929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613747, 34.157646, 37.196053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753021, 34.446384, 36.956818>,  <32.836586, 34.619625, 36.813278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753021, 34.446384, 36.956818>,  <32.613747, 34.157646, 37.196053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753021, 34.446384, 36.956818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132679, 0.669536, 0.730834,
		0.927988, -0.175115, 0.328898,
		0.348189, 0.721843, -0.598087,
		32.857479, 34.662937, 36.777393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958843, 34.657719, 37.670124>,  <32.613747, 34.157646, 37.196053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958843, 34.657719, 37.670124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830326, 34.846767, 37.341881>,  <32.753216, 34.960197, 37.144936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830326, 34.846767, 37.341881>,  <32.958843, 34.657719, 37.670124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830326, 34.846767, 37.341881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214988, 0.807526, 0.549256,
		0.922254, 0.352893, -0.157844,
		-0.321292, 0.472619, -0.820611,
		32.733940, 34.988552, 37.095695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396587, 35.259686, 37.621288>,  <32.958843, 34.657719, 37.670124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396587, 35.259686, 37.621288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078278, 35.339115, 37.392441>,  <32.887291, 35.386772, 37.255131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078278, 35.339115, 37.392441>,  <33.396587, 35.259686, 37.621288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078278, 35.339115, 37.392441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116849, 0.876616, 0.466788,
		0.594219, 0.438307, -0.674382,
		-0.795770, 0.198574, -0.572117,
		32.839546, 35.398685, 37.220806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436489, 35.925930, 37.561172>,  <33.396587, 35.259686, 37.621288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436489, 35.925930, 37.561172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054508, 35.841187, 37.478054>,  <32.825317, 35.790340, 37.428185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054508, 35.841187, 37.478054>,  <33.436489, 35.925930, 37.561172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054508, 35.841187, 37.478054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282653, 0.862642, 0.419470,
		0.090387, 0.459309, -0.883666,
		-0.954954, -0.211856, -0.207797,
		32.768021, 35.777630, 37.415714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277802, 36.490543, 37.397308>,  <33.436489, 35.925930, 37.561172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277802, 36.490543, 37.397308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915226, 36.324993, 37.430950>,  <32.697681, 36.225662, 37.451138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915226, 36.324993, 37.430950>,  <33.277802, 36.490543, 37.397308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915226, 36.324993, 37.430950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393250, 0.899730, 0.189315,
		-0.154028, 0.138526, -0.978308,
		-0.906438, -0.413880, 0.084108,
		32.643295, 36.200829, 37.456184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979321, 36.290848, 37.224892>,  <33.277802, 36.490543, 37.397308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979321, 36.290848, 37.224892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.230968, 36.589905, 37.309975>,  <34.381958, 36.769341, 37.361023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.230968, 36.589905, 37.309975>,  <33.979321, 36.290848, 37.224892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230968, 36.589905, 37.309975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008597, 0.280319, -0.959869,
		-0.777264, 0.602040, 0.182781,
		0.629116, 0.747642, 0.212706,
		34.419704, 36.814198, 37.373787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632885, 37.006435, 37.060791>,  <33.979321, 36.290848, 37.224892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632885, 37.006435, 37.060791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030098, 36.966167, 37.036285>,  <34.268425, 36.942009, 37.021584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030098, 36.966167, 37.036285>,  <33.632885, 37.006435, 37.060791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030098, 36.966167, 37.036285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045707, 0.150147, -0.987606,
		0.108619, 0.983525, 0.144500,
		0.993032, -0.100668, -0.061263,
		34.328007, 36.935966, 37.017906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870384, 37.580177, 36.747433>,  <33.632885, 37.006435, 37.060791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870384, 37.580177, 36.747433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.154785, 37.304485, 36.691662>,  <34.325428, 37.139072, 36.658199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.154785, 37.304485, 36.691662>,  <33.870384, 37.580177, 36.747433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154785, 37.304485, 36.691662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070908, 0.267539, -0.960934,
		0.699603, 0.673343, 0.239093,
		0.711005, -0.689226, -0.139426,
		34.368088, 37.097717, 36.649834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099197, 37.825905, 36.093327>,  <33.870384, 37.580177, 36.747433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099197, 37.825905, 36.093327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274242, 37.472015, 36.157513>,  <34.379269, 37.259682, 36.196026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274242, 37.472015, 36.157513>,  <34.099197, 37.825905, 36.093327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274242, 37.472015, 36.157513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211081, -0.072393, -0.974784,
		0.874035, 0.460453, 0.155069,
		0.437616, -0.884727, 0.160467,
		34.405529, 37.206596, 36.205654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831993, 37.909760, 35.800041>,  <34.099197, 37.825905, 36.093327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831993, 37.909760, 35.800041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741173, 37.520451, 35.813824>,  <34.686680, 37.286865, 35.822094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741173, 37.520451, 35.813824>,  <34.831993, 37.909760, 35.800041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741173, 37.520451, 35.813824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197922, -0.080752, -0.976886,
		0.953559, -0.214983, 0.210967,
		-0.227050, -0.973274, 0.034452,
		34.673058, 37.228470, 35.824158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253059, 37.600590, 35.366261>,  <34.831993, 37.909760, 35.800041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253059, 37.600590, 35.366261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995613, 37.295986, 35.396908>,  <34.841145, 37.113224, 35.415295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995613, 37.295986, 35.396908>,  <35.253059, 37.600590, 35.366261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995613, 37.295986, 35.396908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033439, -0.072030, -0.996842,
		0.764622, -0.644141, 0.020895,
		-0.643611, -0.761508, 0.076615,
		34.802528, 37.067535, 35.419891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608387, 36.968090, 35.060955>,  <35.253059, 37.600590, 35.366261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608387, 36.968090, 35.060955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210201, 36.941982, 35.033249>,  <34.971291, 36.926315, 35.016624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210201, 36.941982, 35.033249>,  <35.608387, 36.968090, 35.060955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210201, 36.941982, 35.033249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085089, -0.284363, -0.954933,
		0.042636, -0.956492, 0.288626,
		-0.995461, -0.065274, -0.069262,
		34.911564, 36.922401, 35.012470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561333, 36.341110, 34.763317>,  <35.608387, 36.968090, 35.060955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561333, 36.341110, 34.763317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197235, 36.495270, 34.702751>,  <34.978779, 36.587765, 34.666412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197235, 36.495270, 34.702751>,  <35.561333, 36.341110, 34.763317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197235, 36.495270, 34.702751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072010, -0.212760, -0.974447,
		-0.407770, -0.897885, 0.165909,
		-0.910241, 0.385403, -0.151414,
		34.924164, 36.610889, 34.657326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134941, 35.878757, 34.329998>,  <35.561333, 36.341110, 34.763317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134941, 35.878757, 34.329998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966526, 36.238945, 34.286385>,  <34.865479, 36.455055, 34.260216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966526, 36.238945, 34.286385>,  <35.134941, 35.878757, 34.329998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966526, 36.238945, 34.286385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104783, -0.167685, -0.980256,
		-0.900970, -0.401301, 0.164955,
		-0.421038, 0.900466, -0.109029,
		34.840214, 36.509087, 34.253677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452503, 35.796635, 33.969955>,  <35.134941, 35.878757, 34.329998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452503, 35.796635, 33.969955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558136, 36.177010, 33.905487>,  <34.621513, 36.405235, 33.866806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558136, 36.177010, 33.905487>,  <34.452503, 35.796635, 33.969955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558136, 36.177010, 33.905487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167941, -0.119216, -0.978562,
		-0.949767, 0.285486, 0.128219,
		0.264080, 0.950939, -0.161172,
		34.637360, 36.462292, 33.857136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081032, 36.023895, 33.444855>,  <34.452503, 35.796635, 33.969955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081032, 36.023895, 33.444855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358994, 36.311531, 33.443356>,  <34.525772, 36.484112, 33.442455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358994, 36.311531, 33.443356>,  <34.081032, 36.023895, 33.444855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358994, 36.311531, 33.443356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211326, 0.199224, -0.956897,
		-0.687349, 0.665745, 0.290405,
		0.694904, 0.719092, -0.003753,
		34.567467, 36.527260, 33.442230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915508, 36.531788, 32.855518>,  <34.081032, 36.023895, 33.444855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915508, 36.531788, 32.855518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.291256, 36.651245, 32.922928>,  <34.516705, 36.722919, 32.963375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.291256, 36.651245, 32.922928>,  <33.915508, 36.531788, 32.855518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291256, 36.651245, 32.922928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106266, 0.213732, -0.971095,
		-0.326026, 0.930125, 0.169038,
		0.939369, 0.298639, 0.168523,
		34.573067, 36.740837, 32.973484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047607, 37.181423, 32.530365>,  <33.915508, 36.531788, 32.855518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047607, 37.181423, 32.530365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424263, 37.061165, 32.590939>,  <34.650257, 36.989010, 32.627281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424263, 37.061165, 32.590939>,  <34.047607, 37.181423, 32.530365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424263, 37.061165, 32.590939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236413, 0.270370, -0.933279,
		0.239645, 0.914610, 0.325667,
		0.941636, -0.300648, 0.151433,
		34.706753, 36.970970, 32.636368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398663, 37.704395, 32.190945>,  <34.047607, 37.181423, 32.530365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398663, 37.704395, 32.190945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640423, 37.386711, 32.216045>,  <34.785480, 37.196102, 32.231106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640423, 37.386711, 32.216045>,  <34.398663, 37.704395, 32.190945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640423, 37.386711, 32.216045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205588, 0.079391, -0.975413,
		0.769697, 0.602440, 0.211263,
		0.604400, -0.794206, 0.062748,
		34.821743, 37.148449, 32.234871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103436, 37.840183, 31.972870>,  <34.398663, 37.704395, 32.190945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103436, 37.840183, 31.972870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078976, 37.442646, 31.935921>,  <35.064301, 37.204124, 31.913752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078976, 37.442646, 31.935921>,  <35.103436, 37.840183, 31.972870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078976, 37.442646, 31.935921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449929, 0.055162, -0.891359,
		0.890968, -0.096069, 0.443786,
		-0.061152, -0.993845, -0.092372,
		35.060631, 37.144493, 31.908209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761204, 37.668690, 31.782154>,  <35.103436, 37.840183, 31.972870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761204, 37.668690, 31.782154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508888, 37.380230, 31.667582>,  <35.357498, 37.207153, 31.598839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508888, 37.380230, 31.667582>,  <35.761204, 37.668690, 31.782154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508888, 37.380230, 31.667582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464292, -0.055015, -0.883972,
		0.621719, -0.690589, 0.369528,
		-0.630791, -0.721151, -0.286431,
		35.319653, 37.163883, 31.581652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197735, 37.068817, 31.624971>,  <35.761204, 37.668690, 31.782154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197735, 37.068817, 31.624971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842304, 37.029381, 31.445770>,  <35.629044, 37.005718, 31.338249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842304, 37.029381, 31.445770>,  <36.197735, 37.068817, 31.624971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842304, 37.029381, 31.445770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458031, -0.244327, -0.854700,
		-0.025197, -0.964668, 0.262260,
		-0.888579, -0.098587, -0.448004,
		35.575729, 36.999805, 31.311369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334450, 36.432453, 31.267128>,  <36.197735, 37.068817, 31.624971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334450, 36.432453, 31.267128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034222, 36.625320, 31.086393>,  <35.854084, 36.741043, 30.977953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034222, 36.625320, 31.086393>,  <36.334450, 36.432453, 31.267128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034222, 36.625320, 31.086393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445743, -0.135333, -0.884872,
		-0.487807, -0.865561, -0.113347,
		-0.750571, 0.482170, -0.451834,
		35.809052, 36.769970, 30.950844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242474, 36.154373, 30.534956>,  <36.334450, 36.432453, 31.267128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242474, 36.154373, 30.534956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034012, 36.493767, 30.498131>,  <35.908936, 36.697403, 30.476036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034012, 36.493767, 30.498131>,  <36.242474, 36.154373, 30.534956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034012, 36.493767, 30.498131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235475, 0.039267, -0.971087,
		-0.820336, -0.527763, -0.220261,
		-0.521153, 0.848483, -0.092063,
		35.877666, 36.748310, 30.470512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761456, 36.212753, 29.952850>,  <36.242474, 36.154373, 30.534956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761456, 36.212753, 29.952850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823647, 36.598782, 30.037191>,  <35.860962, 36.830399, 30.087795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823647, 36.598782, 30.037191>,  <35.761456, 36.212753, 29.952850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823647, 36.598782, 30.037191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117903, 0.193792, -0.973932,
		-0.980778, 0.176288, -0.083654,
		0.155481, 0.965074, 0.210851,
		35.870293, 36.888302, 30.100447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458778, 36.548744, 29.528498>,  <35.761456, 36.212753, 29.952850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458778, 36.548744, 29.528498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.695950, 36.841221, 29.663433>,  <35.838253, 37.016705, 29.744394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.695950, 36.841221, 29.663433>,  <35.458778, 36.548744, 29.528498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695950, 36.841221, 29.663433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358139, 0.135756, -0.923746,
		-0.721229, 0.668530, -0.181374,
		0.592929, 0.731189, 0.337338,
		35.873829, 37.060577, 29.764635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336994, 37.063915, 29.125887>,  <35.458778, 36.548744, 29.528498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336994, 37.063915, 29.125887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702072, 37.128613, 29.275999>,  <35.921120, 37.167431, 29.366066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702072, 37.128613, 29.275999>,  <35.336994, 37.063915, 29.125887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702072, 37.128613, 29.275999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380046, 0.001588, -0.924966,
		-0.150199, 0.986832, -0.060018,
		0.912691, 0.161739, 0.375280,
		35.975880, 37.177135, 29.388582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556747, 37.751232, 28.832329>,  <35.336994, 37.063915, 29.125887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556747, 37.751232, 28.832329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883888, 37.562202, 28.963654>,  <36.080173, 37.448784, 29.042448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883888, 37.562202, 28.963654>,  <35.556747, 37.751232, 28.832329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883888, 37.562202, 28.963654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486251, 0.262488, -0.833463,
		0.307697, 0.841292, 0.444467,
		0.817853, -0.472576, 0.328312,
		36.129246, 37.420429, 29.062147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084183, 38.170242, 28.646849>,  <35.556747, 37.751232, 28.832329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084183, 38.170242, 28.646849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.245716, 37.810177, 28.712114>,  <36.342636, 37.594139, 28.751274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.245716, 37.810177, 28.712114>,  <36.084183, 38.170242, 28.646849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245716, 37.810177, 28.712114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563357, 0.104170, -0.819620,
		0.720796, 0.422911, 0.549181,
		0.403835, -0.900164, 0.163165,
		36.366867, 37.540127, 28.761065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793156, 38.234085, 28.384949>,  <36.084183, 38.170242, 28.646849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793156, 38.234085, 28.384949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804810, 37.834549, 28.400305>,  <36.811802, 37.594830, 28.409517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804810, 37.834549, 28.400305>,  <36.793156, 38.234085, 28.384949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804810, 37.834549, 28.400305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694612, -0.007387, -0.719347,
		0.718794, 0.047623, 0.693590,
		0.029134, -0.998838, 0.038389,
		36.813549, 37.534897, 28.411821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447968, 37.983150, 28.392773>,  <36.793156, 38.234085, 28.384949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447968, 37.983150, 28.392773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226494, 37.694195, 28.227079>,  <37.093609, 37.520821, 28.127663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226494, 37.694195, 28.227079>,  <37.447968, 37.983150, 28.392773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226494, 37.694195, 28.227079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703060, -0.138954, -0.697423,
		0.446248, -0.677386, 0.584817,
		-0.553687, -0.722385, -0.414235,
		37.060387, 37.477478, 28.102808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941322, 37.526527, 28.078547>,  <37.447968, 37.983150, 28.392773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941322, 37.526527, 28.078547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598160, 37.440102, 27.892076>,  <37.392262, 37.388245, 27.780195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598160, 37.440102, 27.892076>,  <37.941322, 37.526527, 28.078547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598160, 37.440102, 27.892076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500433, -0.145664, -0.853433,
		0.116494, -0.965452, 0.233093,
		-0.857902, -0.216067, -0.466175,
		37.340790, 37.375282, 27.752224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505669, 37.005802, 27.841269>,  <37.941322, 37.526527, 28.078547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505669, 37.005802, 27.841269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.832687, 37.226051, 27.773813>,  <39.028896, 37.358200, 27.733341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.832687, 37.226051, 27.773813>,  <38.505669, 37.005802, 27.841269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832687, 37.226051, 27.773813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150188, 0.078835, 0.985509,
		0.555936, -0.831025, -0.018246,
		0.817544, 0.550621, -0.168637,
		39.077950, 37.391239, 27.723223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931004, 36.713856, 28.301300>,  <38.505669, 37.005802, 27.841269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931004, 36.713856, 28.301300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.079842, 37.071838, 28.202833>,  <39.169144, 37.286629, 28.143753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.079842, 37.071838, 28.202833>,  <38.931004, 36.713856, 28.301300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079842, 37.071838, 28.202833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240408, 0.163236, 0.956848,
		0.896519, -0.415223, -0.154414,
		0.372099, 0.894955, -0.246167,
		39.191471, 37.340324, 28.128983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711681, 36.715839, 28.457706>,  <38.931004, 36.713856, 28.301300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711681, 36.715839, 28.457706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.579376, 37.093323, 28.456543>,  <39.499992, 37.319813, 28.455845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.579376, 37.093323, 28.456543>,  <39.711681, 36.715839, 28.457706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579376, 37.093323, 28.456543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077393, 0.030198, 0.996543,
		0.940535, 0.329395, -0.083025,
		-0.330764, 0.943709, -0.002909,
		39.480148, 37.376434, 28.455669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147419, 37.228447, 28.715675>,  <39.711681, 36.715839, 28.457706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147419, 37.228447, 28.715675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.806709, 37.429939, 28.773273>,  <39.602283, 37.550835, 28.807833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.806709, 37.429939, 28.773273>,  <40.147419, 37.228447, 28.715675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806709, 37.429939, 28.773273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124983, -0.071535, 0.989577,
		0.508780, 0.860894, -0.002026,
		-0.851776, 0.503730, 0.143993,
		39.551178, 37.581059, 28.816471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272778, 37.700932, 29.280012>,  <40.147419, 37.228447, 28.715675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272778, 37.700932, 29.280012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.875145, 37.736835, 29.255539>,  <39.636566, 37.758377, 29.240854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.875145, 37.736835, 29.255539>,  <40.272778, 37.700932, 29.280012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875145, 37.736835, 29.255539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071187, -0.112856, 0.991058,
		0.082056, 0.989549, 0.118578,
		-0.994082, 0.089764, -0.061183,
		39.576920, 37.763763, 29.237185>
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
