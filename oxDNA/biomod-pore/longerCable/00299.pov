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
	<23.945541, 35.005043, 35.083374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341621, 35.014149, 35.028255>,  <24.579269, 35.019611, 34.995182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341621, 35.014149, 35.028255>,  <23.945541, 35.005043, 35.083374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.341621, 35.014149, 35.028255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073840, -0.752154, -0.654837,
		-0.118553, 0.658594, -0.743101,
		0.990198, 0.022762, -0.137801,
		24.638681, 35.020977, 34.986916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.368540, 35.041180, 35.746033>,  <23.945541, 35.005043, 35.083374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.368540, 35.041180, 35.746033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645378, 35.284855, 35.591171>,  <24.811481, 35.431061, 35.498257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645378, 35.284855, 35.591171>,  <24.368540, 35.041180, 35.746033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.645378, 35.284855, 35.591171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206784, 0.346545, 0.914957,
		0.691550, -0.713297, 0.113871,
		0.692097, 0.609192, -0.387152,
		24.853008, 35.467613, 35.475025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551594, 35.335495, 36.330463>,  <24.368540, 35.041180, 35.746033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551594, 35.335495, 36.330463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768681, 35.526932, 36.054375>,  <24.898933, 35.641792, 35.888721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768681, 35.526932, 36.054375>,  <24.551594, 35.335495, 36.330463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768681, 35.526932, 36.054375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456383, 0.521845, 0.720689,
		0.705106, -0.706136, 0.064793,
		0.542716, 0.478591, -0.690224,
		24.931496, 35.670509, 35.847309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259645, 35.310261, 36.579002>,  <24.551594, 35.335495, 36.330463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259645, 35.310261, 36.579002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229551, 35.613983, 36.320454>,  <25.211494, 35.796215, 36.165325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.229551, 35.613983, 36.320454>,  <25.259645, 35.310261, 36.579002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229551, 35.613983, 36.320454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465221, 0.600066, 0.650761,
		0.881991, -0.251746, -0.398391,
		-0.075234, 0.759306, -0.646370,
		25.206982, 35.841774, 36.126541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892704, 35.649532, 36.710938>,  <25.259645, 35.310261, 36.579002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892704, 35.649532, 36.710938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659199, 35.919159, 36.529896>,  <25.519096, 36.080936, 36.421272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.659199, 35.919159, 36.529896>,  <25.892704, 35.649532, 36.710938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659199, 35.919159, 36.529896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356030, 0.713512, 0.603443,
		0.729700, 0.191128, -0.656512,
		-0.583764, 0.674070, -0.452602,
		25.484070, 36.121380, 36.394115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258905, 36.268177, 36.574287>,  <25.892704, 35.649532, 36.710938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258905, 36.268177, 36.574287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868071, 36.322090, 36.640175>,  <25.633570, 36.354439, 36.679707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868071, 36.322090, 36.640175>,  <26.258905, 36.268177, 36.574287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868071, 36.322090, 36.640175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212553, 0.578216, 0.787710,
		0.010931, 0.804673, -0.593618,
		-0.977088, 0.134786, 0.164715,
		25.574944, 36.362526, 36.689590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229769, 36.965305, 36.630569>,  <26.258905, 36.268177, 36.574287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229769, 36.965305, 36.630569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948217, 36.755642, 36.822327>,  <25.779285, 36.629845, 36.937382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948217, 36.755642, 36.822327>,  <26.229769, 36.965305, 36.630569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948217, 36.755642, 36.822327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132424, 0.566230, 0.813540,
		-0.697865, 0.636118, -0.329148,
		-0.703881, -0.524154, 0.479390,
		25.737053, 36.598396, 36.966145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754932, 37.388847, 36.842388>,  <26.229769, 36.965305, 36.630569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754932, 37.388847, 36.842388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737610, 37.075653, 37.090603>,  <25.727217, 36.887737, 37.239532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737610, 37.075653, 37.090603>,  <25.754932, 37.388847, 36.842388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737610, 37.075653, 37.090603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144364, 0.609693, 0.779380,
		-0.988576, 0.123336, 0.086630,
		-0.043308, -0.782983, 0.620533,
		25.724617, 36.840759, 37.276764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343231, 37.659115, 37.460770>,  <25.754932, 37.388847, 36.842388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343231, 37.659115, 37.460770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549612, 37.331573, 37.561390>,  <25.673441, 37.135048, 37.621761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549612, 37.331573, 37.561390>,  <25.343231, 37.659115, 37.460770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549612, 37.331573, 37.561390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385610, 0.484238, 0.785378,
		-0.764916, -0.308219, 0.565601,
		0.515954, -0.818849, 0.251549,
		25.704399, 37.085918, 37.636856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046961, 37.339771, 38.074608>,  <25.343231, 37.659115, 37.460770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046961, 37.339771, 38.074608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430283, 37.231152, 38.039036>,  <25.660276, 37.165977, 38.017693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430283, 37.231152, 38.039036>,  <25.046961, 37.339771, 38.074608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430283, 37.231152, 38.039036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219414, 0.499938, 0.837806,
		-0.183049, -0.822387, 0.538676,
		0.958306, -0.271553, -0.088931,
		25.717775, 37.149685, 38.012356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217972, 37.186630, 38.715858>,  <25.046961, 37.339771, 38.074608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217972, 37.186630, 38.715858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575567, 37.239380, 38.544559>,  <25.790125, 37.271030, 38.441780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575567, 37.239380, 38.544559>,  <25.217972, 37.186630, 38.715858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575567, 37.239380, 38.544559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346055, 0.403967, 0.846792,
		0.284665, -0.905219, 0.315507,
		0.893987, 0.131869, -0.428250,
		25.843763, 37.278942, 38.416084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713345, 37.082664, 39.248569>,  <25.217972, 37.186630, 38.715858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713345, 37.082664, 39.248569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872232, 37.304424, 38.956036>,  <25.967566, 37.437481, 38.780514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872232, 37.304424, 38.956036>,  <25.713345, 37.082664, 39.248569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872232, 37.304424, 38.956036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546256, 0.497524, 0.673850,
		0.737441, -0.667166, -0.105217,
		0.397221, 0.554400, -0.731339,
		25.991400, 37.470745, 38.736633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812170, 37.680920, 39.568050>,  <25.713345, 37.082664, 39.248569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812170, 37.680920, 39.568050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098295, 37.959316, 39.542976>,  <26.269970, 38.126354, 39.527931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098295, 37.959316, 39.542976>,  <25.812170, 37.680920, 39.568050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098295, 37.959316, 39.542976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272055, -0.359987, -0.892410,
		-0.643673, 0.621298, -0.446850,
		0.715312, 0.695988, -0.062687,
		26.312889, 38.168114, 39.524170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710272, 38.140213, 39.008987>,  <25.812170, 37.680920, 39.568050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710272, 38.140213, 39.008987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091881, 38.087193, 39.116520>,  <26.320847, 38.055382, 39.181042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091881, 38.087193, 39.116520>,  <25.710272, 38.140213, 39.008987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091881, 38.087193, 39.116520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187382, -0.436287, -0.880081,
		0.233943, 0.889991, -0.391390,
		0.954022, -0.132549, 0.268835,
		26.378088, 38.047428, 39.197170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168753, 38.417759, 38.501984>,  <25.710272, 38.140213, 39.008987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168753, 38.417759, 38.501984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315983, 38.112709, 38.714748>,  <26.404322, 37.929680, 38.842407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315983, 38.112709, 38.714748>,  <26.168753, 38.417759, 38.501984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315983, 38.112709, 38.714748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080603, -0.543747, -0.835369,
		0.926295, 0.350353, -0.138671,
		0.368076, -0.762622, 0.531910,
		26.426405, 37.883923, 38.874321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818733, 38.076763, 38.087891>,  <26.168753, 38.417759, 38.501984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818733, 38.076763, 38.087891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608576, 37.830467, 38.322777>,  <26.482481, 37.682690, 38.463707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608576, 37.830467, 38.322777>,  <26.818733, 38.076763, 38.087891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608576, 37.830467, 38.322777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249015, -0.548652, -0.798106,
		0.813605, -0.565545, 0.134929,
		-0.525394, -0.615744, 0.587215,
		26.450958, 37.645744, 38.498940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078358, 37.353691, 37.952480>,  <26.818733, 38.076763, 38.087891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078358, 37.353691, 37.952480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704067, 37.332882, 38.092030>,  <26.479492, 37.320396, 38.175758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704067, 37.332882, 38.092030>,  <27.078358, 37.353691, 37.952480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704067, 37.332882, 38.092030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229073, -0.662471, -0.713202,
		0.268219, -0.747279, 0.607975,
		-0.935726, -0.052023, 0.348869,
		26.423349, 37.317276, 38.196690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923620, 36.616066, 38.007812>,  <27.078358, 37.353691, 37.952480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923620, 36.616066, 38.007812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570810, 36.803410, 37.987152>,  <26.359123, 36.915817, 37.974754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570810, 36.803410, 37.987152>,  <26.923620, 36.616066, 38.007812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570810, 36.803410, 37.987152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265446, -0.584453, -0.766781,
		-0.389316, -0.662611, 0.639827,
		-0.882027, 0.468360, -0.051650,
		26.306202, 36.943916, 37.971657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554276, 36.077629, 37.896381>,  <26.923620, 36.616066, 38.007812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554276, 36.077629, 37.896381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309605, 36.387543, 37.832428>,  <26.162802, 36.573490, 37.794056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309605, 36.387543, 37.832428>,  <26.554276, 36.077629, 37.896381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309605, 36.387543, 37.832428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487971, -0.528583, -0.694610,
		-0.622684, -0.346858, 0.701394,
		-0.611677, 0.774783, -0.159884,
		26.126101, 36.619976, 37.784462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952820, 35.796860, 38.042603>,  <26.554276, 36.077629, 37.896381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952820, 35.796860, 38.042603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858810, 36.116005, 37.820549>,  <25.802404, 36.307491, 37.687317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858810, 36.116005, 37.820549>,  <25.952820, 35.796860, 38.042603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858810, 36.116005, 37.820549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657358, -0.551182, -0.513886,
		-0.715993, 0.244147, 0.654023,
		-0.235022, 0.797866, -0.555135,
		25.788303, 36.355366, 37.654007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394783, 36.098015, 38.133507>,  <25.952820, 35.796860, 38.042603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394783, 36.098015, 38.133507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410593, 36.346855, 37.820732>,  <25.420078, 36.496159, 37.633068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410593, 36.346855, 37.820732>,  <25.394783, 36.098015, 38.133507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410593, 36.346855, 37.820732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331966, -0.729926, -0.597500,
		-0.942463, 0.283193, 0.177666,
		0.039525, 0.622101, -0.781939,
		25.422451, 36.533485, 37.586151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.884830, 35.822803, 37.609509>,  <25.394783, 36.098015, 38.133507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.884830, 35.822803, 37.609509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146093, 36.058731, 37.419559>,  <25.302851, 36.200287, 37.305592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146093, 36.058731, 37.419559>,  <24.884830, 35.822803, 37.609509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146093, 36.058731, 37.419559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177244, -0.490615, -0.853160,
		-0.736185, 0.641417, -0.215908,
		0.653158, 0.589815, -0.474871,
		25.342041, 36.235676, 37.277100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.552818, 36.041996, 36.915722>,  <24.884830, 35.822803, 37.609509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.552818, 36.041996, 36.915722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952808, 36.043667, 36.913586>,  <25.192802, 36.044670, 36.912304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952808, 36.043667, 36.913586>,  <24.552818, 36.041996, 36.915722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952808, 36.043667, 36.913586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002765, -0.467500, -0.883989,
		-0.006186, 0.883984, -0.467477,
		0.999977, 0.004176, -0.005337,
		25.252802, 36.044918, 36.911983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.485767, 36.604401, 36.432449>,  <24.552818, 36.041996, 36.915722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.485767, 36.604401, 36.432449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885315, 36.622234, 36.439022>,  <25.125044, 36.632935, 36.442966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885315, 36.622234, 36.439022>,  <24.485767, 36.604401, 36.432449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885315, 36.622234, 36.439022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043099, -0.704455, -0.708439,
		-0.020014, 0.708346, -0.705581,
		0.998870, 0.044589, 0.016430,
		25.184977, 36.635612, 36.443951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.700682, 37.084114, 35.945854>,  <24.485767, 36.604401, 36.432449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.700682, 37.084114, 35.945854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943277, 36.783482, 36.049618>,  <25.088835, 36.603104, 36.111877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943277, 36.783482, 36.049618>,  <24.700682, 37.084114, 35.945854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.943277, 36.783482, 36.049618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238834, -0.483412, -0.842182,
		0.758373, 0.448818, -0.472687,
		0.606489, -0.751582, 0.259414,
		25.125223, 36.558006, 36.127441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152332, 36.910568, 35.338104>,  <24.700682, 37.084114, 35.945854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152332, 36.910568, 35.338104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150288, 36.578037, 35.560406>,  <25.149061, 36.378517, 35.693787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150288, 36.578037, 35.560406>,  <25.152332, 36.910568, 35.338104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.150288, 36.578037, 35.560406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169750, -0.546977, -0.819757,
		0.985474, -0.098531, -0.138321,
		-0.005113, -0.831329, 0.555757,
		25.148754, 36.328640, 35.727135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508432, 36.408432, 34.960777>,  <25.152332, 36.910568, 35.338104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508432, 36.408432, 34.960777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315910, 36.193260, 35.237614>,  <25.200397, 36.064159, 35.403713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315910, 36.193260, 35.237614>,  <25.508432, 36.408432, 34.960777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.315910, 36.193260, 35.237614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252222, -0.671172, -0.697074,
		0.839483, -0.510063, 0.187360,
		-0.481303, -0.537926, 0.692086,
		25.171520, 36.031883, 35.445240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884743, 36.830898, 34.359745>,  <25.508432, 36.408432, 34.960777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884743, 36.830898, 34.359745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136480, 36.797096, 34.668751>,  <26.287523, 36.776814, 34.854156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136480, 36.797096, 34.668751>,  <25.884743, 36.830898, 34.359745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136480, 36.797096, 34.668751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655060, -0.592523, 0.468843,
		0.418115, -0.801109, -0.428257,
		0.629346, -0.084504, 0.772517,
		26.325285, 36.771744, 34.900505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328365, 37.323544, 34.892208>,  <25.884743, 36.830898, 34.359745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328365, 37.323544, 34.892208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655228, 37.330513, 34.661747>,  <26.851345, 37.334694, 34.523468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655228, 37.330513, 34.661747>,  <26.328365, 37.323544, 34.892208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655228, 37.330513, 34.661747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486774, 0.514486, 0.705943,
		0.308723, -0.857322, 0.411934,
		0.817154, 0.017422, -0.576156,
		26.900373, 37.335739, 34.488899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924364, 36.834698, 35.115719>,  <26.328365, 37.323544, 34.892208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924364, 36.834698, 35.115719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078560, 37.153797, 34.930252>,  <27.171078, 37.345257, 34.818970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078560, 37.153797, 34.930252>,  <26.924364, 36.834698, 35.115719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078560, 37.153797, 34.930252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346506, 0.340572, 0.874039,
		0.855179, -0.497597, -0.145139,
		0.385489, 0.797752, -0.463670,
		27.194206, 37.393124, 34.791149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454224, 36.894787, 35.432446>,  <26.924364, 36.834698, 35.115719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454224, 36.894787, 35.432446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435490, 37.250290, 35.250050>,  <27.424250, 37.463593, 35.140614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435490, 37.250290, 35.250050>,  <27.454224, 36.894787, 35.432446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435490, 37.250290, 35.250050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424272, 0.430965, 0.796406,
		0.904323, -0.156161, -0.397258,
		-0.046837, 0.888753, -0.455987,
		27.421438, 37.516914, 35.113255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160057, 37.169937, 35.556534>,  <27.454224, 36.894787, 35.432446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160057, 37.169937, 35.556534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909653, 37.475788, 35.495281>,  <27.759411, 37.659298, 35.458530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909653, 37.475788, 35.495281>,  <28.160057, 37.169937, 35.556534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909653, 37.475788, 35.495281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361188, 0.458345, 0.812073,
		0.691125, 0.453055, -0.563105,
		-0.626011, 0.764631, -0.153136,
		27.721849, 37.705177, 35.449341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570353, 37.708408, 35.740986>,  <28.160057, 37.169937, 35.556534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570353, 37.708408, 35.740986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204544, 37.869995, 35.749611>,  <27.985060, 37.966946, 35.754787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204544, 37.869995, 35.749611>,  <28.570353, 37.708408, 35.740986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204544, 37.869995, 35.749611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301941, 0.646132, 0.700960,
		0.269233, 0.647552, -0.712875,
		-0.914519, 0.403967, 0.021562,
		27.930189, 37.991184, 35.756081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644939, 38.457504, 35.770863>,  <28.570353, 37.708408, 35.740986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644939, 38.457504, 35.770863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269588, 38.416718, 35.902958>,  <28.044378, 38.392246, 35.982216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269588, 38.416718, 35.902958>,  <28.644939, 38.457504, 35.770863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269588, 38.416718, 35.902958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208818, 0.594110, 0.776807,
		-0.275404, 0.797895, -0.536205,
		-0.938375, -0.101967, 0.330235,
		27.988075, 38.386127, 36.002029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352110, 39.185562, 35.951664>,  <28.644939, 38.457504, 35.770863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352110, 39.185562, 35.951664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137726, 38.912247, 36.150002>,  <28.009094, 38.748257, 36.269005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137726, 38.912247, 36.150002>,  <28.352110, 39.185562, 35.951664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137726, 38.912247, 36.150002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060821, 0.554543, 0.829929,
		-0.842048, 0.474968, -0.255656,
		-0.535962, -0.683291, 0.495840,
		27.976936, 38.707260, 36.298752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166437, 39.882847, 35.699150>,  <28.352110, 39.185562, 35.951664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166437, 39.882847, 35.699150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184172, 40.014881, 36.076313>,  <28.194813, 40.094101, 36.302612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184172, 40.014881, 36.076313>,  <28.166437, 39.882847, 35.699150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184172, 40.014881, 36.076313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739303, 0.645641, -0.191256,
		-0.671912, -0.688616, 0.272658,
		0.044337, 0.330084, 0.942910,
		28.197474, 40.113907, 36.359184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690697, 39.576950, 36.228691>,  <28.166437, 39.882847, 35.699150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690697, 39.576950, 36.228691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712334, 39.247791, 36.454937>,  <27.725315, 39.050297, 36.590683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712334, 39.247791, 36.454937>,  <27.690697, 39.576950, 36.228691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712334, 39.247791, 36.454937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030602, 0.564812, 0.824652,
		-0.998067, -0.061916, 0.005369,
		0.054091, -0.822893, 0.565615,
		27.728561, 39.000923, 36.624622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059574, 39.468594, 36.708214>,  <27.690697, 39.576950, 36.228691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059574, 39.468594, 36.708214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375658, 39.278904, 36.863483>,  <27.565308, 39.165089, 36.956646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375658, 39.278904, 36.863483>,  <27.059574, 39.468594, 36.708214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375658, 39.278904, 36.863483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084595, 0.542940, 0.835500,
		-0.606971, -0.693057, 0.388919,
		0.790209, -0.474223, 0.388178,
		27.612720, 39.136639, 36.979939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704958, 39.240406, 37.276611>,  <27.059574, 39.468594, 36.708214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704958, 39.240406, 37.276611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098452, 39.309696, 37.257572>,  <27.334547, 39.351269, 37.246147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098452, 39.309696, 37.257572>,  <26.704958, 39.240406, 37.276611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098452, 39.309696, 37.257572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072672, 0.626042, 0.776395,
		0.164286, -0.760306, 0.628446,
		0.983732, 0.173222, -0.047597,
		27.393572, 39.361664, 37.243294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182592, 39.771793, 37.483967>,  <26.704958, 39.240406, 37.276611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182592, 39.771793, 37.483967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941019, 39.804070, 37.166790>,  <26.796074, 39.823433, 36.976486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941019, 39.804070, 37.166790>,  <27.182592, 39.771793, 37.483967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941019, 39.804070, 37.166790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687671, 0.450220, 0.569571,
		0.402954, 0.889265, -0.216418,
		-0.603935, 0.080686, -0.792939,
		26.759838, 39.828274, 36.928909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839663, 40.040920, 37.319340>,  <27.182592, 39.771793, 37.483967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839663, 40.040920, 37.319340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844072, 39.848755, 37.670128>,  <27.846718, 39.733456, 37.880600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844072, 39.848755, 37.670128>,  <27.839663, 40.040920, 37.319340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844072, 39.848755, 37.670128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054220, -0.875451, -0.480256,
		0.998468, 0.052844, 0.016397,
		0.011024, -0.480410, 0.876975,
		27.847380, 39.704632, 37.933220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515833, 39.704182, 37.530270>,  <27.839663, 40.040920, 37.319340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515833, 39.704182, 37.530270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185894, 39.529415, 37.673786>,  <27.987930, 39.424553, 37.759895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185894, 39.529415, 37.673786>,  <28.515833, 39.704182, 37.530270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185894, 39.529415, 37.673786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007647, -0.643192, -0.765667,
		0.565306, -0.628813, 0.533876,
		-0.824846, -0.436918, 0.358792,
		27.938440, 39.398338, 37.781425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641361, 38.982193, 37.649986>,  <28.515833, 39.704182, 37.530270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641361, 38.982193, 37.649986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256115, 39.059505, 37.575092>,  <28.024967, 39.105892, 37.530159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256115, 39.059505, 37.575092>,  <28.641361, 38.982193, 37.649986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256115, 39.059505, 37.575092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003637, -0.705059, -0.709139,
		-0.269071, -0.682300, 0.679755,
		-0.963113, 0.193281, -0.187230,
		27.967180, 39.117489, 37.518925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417585, 38.322018, 37.509739>,  <28.641361, 38.982193, 37.649986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417585, 38.322018, 37.509739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156012, 38.576286, 37.345646>,  <27.999067, 38.728848, 37.247189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156012, 38.576286, 37.345646>,  <28.417585, 38.322018, 37.509739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156012, 38.576286, 37.345646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119211, -0.622050, -0.773849,
		-0.747099, -0.457143, 0.482559,
		-0.653935, 0.635669, -0.410237,
		27.959831, 38.766987, 37.222576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935041, 37.900562, 37.234184>,  <28.417585, 38.322018, 37.509739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935041, 37.900562, 37.234184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882055, 38.249054, 37.045120>,  <27.850264, 38.458149, 36.931683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882055, 38.249054, 37.045120>,  <27.935041, 37.900562, 37.234184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882055, 38.249054, 37.045120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214398, -0.490757, -0.844507,
		-0.967722, -0.010531, 0.251799,
		-0.132466, 0.871233, -0.472658,
		27.842316, 38.510426, 36.903324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242094, 37.939621, 36.987709>,  <27.935041, 37.900562, 37.234184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242094, 37.939621, 36.987709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481983, 38.177464, 36.773502>,  <27.625916, 38.320171, 36.644978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481983, 38.177464, 36.773502>,  <27.242094, 37.939621, 36.987709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481983, 38.177464, 36.773502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270567, -0.479125, -0.835005,
		-0.753079, 0.645662, -0.126459,
		0.599721, 0.594609, -0.535514,
		27.661900, 38.355846, 36.612846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842735, 38.117321, 36.428558>,  <27.242094, 37.939621, 36.987709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842735, 38.117321, 36.428558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219460, 38.171402, 36.305454>,  <27.445494, 38.203850, 36.231590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219460, 38.171402, 36.305454>,  <26.842735, 38.117321, 36.428558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219460, 38.171402, 36.305454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216004, -0.458102, -0.862256,
		-0.257565, 0.878558, -0.402240,
		0.941808, 0.135202, -0.307763,
		27.502003, 38.211964, 36.213127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718466, 38.508610, 35.824924>,  <26.842735, 38.117321, 36.428558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718466, 38.508610, 35.824924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083828, 38.345795, 35.823757>,  <27.303045, 38.248104, 35.823055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083828, 38.345795, 35.823757>,  <26.718466, 38.508610, 35.824924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083828, 38.345795, 35.823757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238487, -0.529333, -0.814206,
		0.329865, 0.744398, -0.580569,
		0.913407, -0.407036, -0.002921,
		27.357851, 38.223682, 35.822880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060987, 38.756756, 35.257984>,  <26.718466, 38.508610, 35.824924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060987, 38.756756, 35.257984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257694, 38.415966, 35.329880>,  <27.375719, 38.211491, 35.373016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257694, 38.415966, 35.329880>,  <27.060987, 38.756756, 35.257984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257694, 38.415966, 35.329880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170425, -0.296609, -0.939669,
		0.853884, 0.431469, -0.291060,
		0.491769, -0.851973, 0.179737,
		27.405226, 38.160374, 35.383801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410093, 38.656616, 34.675766>,  <27.060987, 38.756756, 35.257984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410093, 38.656616, 34.675766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451509, 38.274017, 34.784866>,  <27.476358, 38.044456, 34.850327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451509, 38.274017, 34.784866>,  <27.410093, 38.656616, 34.675766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451509, 38.274017, 34.784866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059320, -0.279677, -0.958260,
		0.992855, 0.083039, -0.085697,
		0.103540, -0.956496, 0.272753,
		27.482571, 37.987068, 34.866692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868990, 38.304478, 34.144451>,  <27.410093, 38.656616, 34.675766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868990, 38.304478, 34.144451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647669, 38.033188, 34.337891>,  <27.514875, 37.870415, 34.453957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647669, 38.033188, 34.337891>,  <27.868990, 38.304478, 34.144451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647669, 38.033188, 34.337891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207425, -0.450098, -0.868554,
		0.806740, -0.580886, 0.108362,
		-0.553305, -0.678220, 0.483602,
		27.481678, 37.829723, 34.482971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018600, 37.648575, 33.911556>,  <27.868990, 38.304478, 34.144451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018600, 37.648575, 33.911556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644272, 37.648258, 34.052544>,  <27.419674, 37.648067, 34.137135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644272, 37.648258, 34.052544>,  <28.018600, 37.648575, 33.911556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644272, 37.648258, 34.052544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297605, -0.534030, -0.791355,
		0.188856, -0.845465, 0.499522,
		-0.935823, -0.000792, 0.352469,
		27.363525, 37.648022, 34.158283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744148, 36.971687, 33.983662>,  <28.018600, 37.648575, 33.911556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744148, 36.971687, 33.983662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425459, 37.213089, 33.970924>,  <27.234245, 37.357929, 33.963280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425459, 37.213089, 33.970924>,  <27.744148, 36.971687, 33.983662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425459, 37.213089, 33.970924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337690, -0.488273, -0.804708,
		-0.501202, -0.630370, 0.592816,
		-0.796720, 0.603509, -0.031853,
		27.186441, 37.394138, 33.961372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406298, 37.044613, 34.459660>,  <27.744148, 36.971687, 33.983662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406298, 37.044613, 34.459660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779179, 36.902866, 34.430191>,  <29.002907, 36.817818, 34.412510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779179, 36.902866, 34.430191>,  <28.406298, 37.044613, 34.459660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779179, 36.902866, 34.430191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361633, -0.903532, -0.229893,
		0.014899, 0.240950, -0.970423,
		0.932202, -0.354362, -0.073674,
		29.058840, 36.796558, 34.408089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664156, 36.722908, 33.723297>,  <28.406298, 37.044613, 34.459660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664156, 36.722908, 33.723297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836992, 36.560650, 34.045475>,  <28.940693, 36.463295, 34.238781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836992, 36.560650, 34.045475>,  <28.664156, 36.722908, 33.723297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836992, 36.560650, 34.045475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209580, -0.913841, -0.347808,
		0.877140, -0.018522, -0.479877,
		0.432089, -0.405649, 0.805449,
		28.966619, 36.438953, 34.287109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092302, 36.266037, 33.471664>,  <28.664156, 36.722908, 33.723297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092302, 36.266037, 33.471664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009306, 36.161476, 33.848732>,  <28.959507, 36.098740, 34.074970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009306, 36.161476, 33.848732>,  <29.092302, 36.266037, 33.471664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009306, 36.161476, 33.848732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416278, -0.848440, -0.326899,
		0.885246, -0.460240, 0.067230,
		-0.207493, -0.261399, 0.942665,
		28.947058, 36.083057, 34.131531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121189, 35.563080, 33.457680>,  <29.092302, 36.266037, 33.471664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121189, 35.563080, 33.457680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885778, 35.633247, 33.773365>,  <28.744532, 35.675350, 33.962776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885778, 35.633247, 33.773365>,  <29.121189, 35.563080, 33.457680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885778, 35.633247, 33.773365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572654, -0.779534, -0.253762,
		0.570706, -0.601294, 0.559232,
		-0.588526, 0.175423, 0.789218,
		28.709221, 35.685875, 34.010132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997192, 34.961475, 33.715965>,  <29.121189, 35.563080, 33.457680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997192, 34.961475, 33.715965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694027, 35.186863, 33.847462>,  <28.512127, 35.322094, 33.926357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694027, 35.186863, 33.847462>,  <28.997192, 34.961475, 33.715965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694027, 35.186863, 33.847462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643964, -0.726791, -0.238926,
		0.104296, -0.392781, 0.913699,
		-0.757914, 0.563470, 0.328738,
		28.466652, 35.355904, 33.946083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598145, 34.558907, 34.114254>,  <28.997192, 34.961475, 33.715965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598145, 34.558907, 34.114254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367659, 34.844467, 33.955093>,  <28.229368, 35.015804, 33.859596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367659, 34.844467, 33.955093>,  <28.598145, 34.558907, 34.114254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367659, 34.844467, 33.955093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732480, -0.667050, -0.136074,
		-0.362561, 0.213045, 0.907282,
		-0.576213, 0.713902, -0.397898,
		28.194796, 35.058640, 33.835724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078651, 34.445553, 33.670448>,  <28.598145, 34.558907, 34.114254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078651, 34.445553, 33.670448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724230, 34.544537, 33.827251>,  <27.511578, 34.603928, 33.921333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724230, 34.544537, 33.827251>,  <28.078651, 34.445553, 33.670448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724230, 34.544537, 33.827251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428734, 0.759069, 0.489900,
		-0.176336, 0.602147, -0.778669,
		-0.886054, 0.247455, 0.392012,
		27.458414, 34.618774, 33.944855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765471, 35.027245, 33.411617>,  <28.078651, 34.445553, 33.670448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765471, 35.027245, 33.411617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683371, 34.976227, 33.799763>,  <27.634111, 34.945618, 34.032650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683371, 34.976227, 33.799763>,  <27.765471, 35.027245, 33.411617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683371, 34.976227, 33.799763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660947, 0.713168, 0.233540,
		-0.721819, 0.689293, -0.062077,
		-0.205248, -0.127544, 0.970364,
		27.621796, 34.937965, 34.090874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391031, 35.637146, 33.824417>,  <27.765471, 35.027245, 33.411617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391031, 35.637146, 33.824417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643991, 35.418190, 34.043663>,  <27.795767, 35.286816, 34.175209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643991, 35.418190, 34.043663>,  <27.391031, 35.637146, 33.824417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643991, 35.418190, 34.043663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652864, 0.757469, 0.003211,
		-0.416938, 0.355815, 0.836396,
		0.632401, -0.547391, 0.548116,
		27.833712, 35.253971, 34.208099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532784, 35.894337, 34.429348>,  <27.391031, 35.637146, 33.824417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532784, 35.894337, 34.429348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862823, 35.676067, 34.370773>,  <28.060848, 35.545105, 34.335629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862823, 35.676067, 34.370773>,  <27.532784, 35.894337, 34.429348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862823, 35.676067, 34.370773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564657, 0.805260, 0.180882,
		0.019215, -0.231932, 0.972542,
		0.825102, -0.545677, -0.146436,
		28.110353, 35.512363, 34.326843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942825, 36.023018, 34.963978>,  <27.532784, 35.894337, 34.429348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942825, 36.023018, 34.963978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191179, 35.902695, 34.674419>,  <28.340191, 35.830502, 34.500687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191179, 35.902695, 34.674419>,  <27.942825, 36.023018, 34.963978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191179, 35.902695, 34.674419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689516, 0.648873, 0.321764,
		0.372925, -0.698913, 0.610285,
		0.620882, -0.300807, -0.723892,
		28.377443, 35.812454, 34.457253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473257, 35.742397, 35.302776>,  <27.942825, 36.023018, 34.963978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473257, 35.742397, 35.302776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607203, 35.864056, 34.946045>,  <28.687571, 35.937050, 34.732006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607203, 35.864056, 34.946045>,  <28.473257, 35.742397, 35.302776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607203, 35.864056, 34.946045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701446, 0.551501, 0.451463,
		0.629158, -0.776749, -0.028667,
		0.334863, 0.304150, -0.891829,
		28.707661, 35.955299, 34.678497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202261, 35.905006, 35.407677>,  <28.473257, 35.742397, 35.302776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202261, 35.905006, 35.407677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109430, 36.101192, 35.071678>,  <29.053732, 36.218903, 34.870079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109430, 36.101192, 35.071678>,  <29.202261, 35.905006, 35.407677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109430, 36.101192, 35.071678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657376, 0.715587, 0.236202,
		0.716936, -0.497374, -0.488490,
		-0.232076, 0.490463, -0.839992,
		29.039808, 36.248333, 34.819679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851072, 35.998997, 35.066414>,  <29.202261, 35.905006, 35.407677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851072, 35.998997, 35.066414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553907, 36.260746, 35.010014>,  <29.375608, 36.417797, 34.976173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553907, 36.260746, 35.010014>,  <29.851072, 35.998997, 35.066414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553907, 36.260746, 35.010014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642189, 0.756168, 0.125714,
		0.188886, 0.002844, -0.981995,
		-0.742910, 0.654372, -0.141003,
		29.331034, 36.457058, 34.967712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489805, 35.771873, 35.482079>,  <29.851072, 35.998997, 35.066414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489805, 35.771873, 35.482079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685133, 36.119495, 35.513794>,  <30.802330, 36.328068, 35.532822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685133, 36.119495, 35.513794>,  <30.489805, 35.771873, 35.482079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685133, 36.119495, 35.513794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751874, -0.372867, -0.543742,
		-0.442980, 0.325132, -0.835499,
		0.488317, 0.869057, 0.079286,
		30.831629, 36.380211, 35.537579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626883, 35.948715, 34.790390>,  <30.489805, 35.771873, 35.482079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626883, 35.948715, 34.790390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891436, 36.119900, 35.036781>,  <31.050167, 36.222610, 35.184616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891436, 36.119900, 35.036781>,  <30.626883, 35.948715, 34.790390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891436, 36.119900, 35.036781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749865, -0.395460, -0.530391,
		0.016610, 0.812690, -0.582460,
		0.661383, 0.427957, 0.615975,
		31.089851, 36.248287, 35.221573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185404, 36.349861, 34.354168>,  <30.626883, 35.948715, 34.790390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185404, 36.349861, 34.354168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345070, 36.263397, 34.710583>,  <31.440868, 36.211521, 34.924431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345070, 36.263397, 34.710583>,  <31.185404, 36.349861, 34.354168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345070, 36.263397, 34.710583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852771, -0.269481, -0.447394,
		0.336824, 0.938433, 0.076764,
		0.399163, -0.216155, 0.891036,
		31.464819, 36.198551, 34.977894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983446, 36.385574, 34.303158>,  <31.185404, 36.349861, 34.354168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983446, 36.385574, 34.303158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988390, 36.183510, 34.648335>,  <31.991356, 36.062271, 34.855438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988390, 36.183510, 34.648335>,  <31.983446, 36.385574, 34.303158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988390, 36.183510, 34.648335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938109, -0.292869, -0.184879,
		0.346121, 0.811816, 0.470272,
		0.012359, -0.505157, 0.862939,
		31.992098, 36.031963, 34.907215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560863, 36.607712, 34.689842>,  <31.983446, 36.385574, 34.303158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560863, 36.607712, 34.689842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479046, 36.238865, 34.821213>,  <32.429955, 36.017559, 34.900036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479046, 36.238865, 34.821213>,  <32.560863, 36.607712, 34.689842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479046, 36.238865, 34.821213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902651, -0.307477, -0.301130,
		0.378661, 0.234864, 0.895240,
		-0.204541, -0.922116, 0.328429,
		32.417683, 35.962231, 34.919743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144287, 36.421581, 35.159962>,  <32.560863, 36.607712, 34.689842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144287, 36.421581, 35.159962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972630, 36.063133, 35.114693>,  <32.869637, 35.848064, 35.087532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972630, 36.063133, 35.114693>,  <33.144287, 36.421581, 35.159962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972630, 36.063133, 35.114693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903007, -0.428470, -0.031470,
		-0.020290, -0.115701, 0.993077,
		-0.429145, -0.896117, -0.113173,
		32.843887, 35.794296, 35.080742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451408, 35.894604, 35.582485>,  <33.144287, 36.421581, 35.159962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451408, 35.894604, 35.582485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267872, 35.649220, 35.325386>,  <33.157749, 35.501991, 35.171127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267872, 35.649220, 35.325386>,  <33.451408, 35.894604, 35.582485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267872, 35.649220, 35.325386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842957, -0.529227, -0.096661,
		-0.280865, -0.586164, 0.759952,
		-0.458846, -0.613457, -0.642752,
		33.130219, 35.465183, 35.132561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918156, 35.373791, 35.614243>,  <33.451408, 35.894604, 35.582485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918156, 35.373791, 35.614243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694981, 35.301605, 35.290234>,  <33.561077, 35.258293, 35.095829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694981, 35.301605, 35.290234>,  <33.918156, 35.373791, 35.614243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694981, 35.301605, 35.290234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819220, -0.275735, -0.502840,
		-0.132606, -0.944141, 0.301684,
		-0.557937, -0.180466, -0.810024,
		33.527599, 35.247467, 35.047226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125469, 34.655075, 35.317146>,  <33.918156, 35.373791, 35.614243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125469, 34.655075, 35.317146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946400, 34.847164, 35.015427>,  <33.838959, 34.962418, 34.834393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946400, 34.847164, 35.015427>,  <34.125469, 34.655075, 35.317146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946400, 34.847164, 35.015427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739064, -0.276146, -0.614433,
		-0.503365, -0.832542, -0.231297,
		-0.447669, 0.480227, -0.754304,
		33.812099, 34.991234, 34.789135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204372, 34.235622, 34.735691>,  <34.125469, 34.655075, 35.317146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204372, 34.235622, 34.735691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130527, 34.604988, 34.601101>,  <34.086220, 34.826607, 34.520348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130527, 34.604988, 34.601101>,  <34.204372, 34.235622, 34.735691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130527, 34.604988, 34.601101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727575, -0.101748, -0.678441,
		-0.660721, -0.370061, -0.653072,
		-0.184616, 0.923419, -0.336474,
		34.075142, 34.882015, 34.500160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135395, 34.147697, 34.008877>,  <34.204372, 34.235622, 34.735691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135395, 34.147697, 34.008877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235550, 34.531013, 34.064003>,  <34.295643, 34.761002, 34.097080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235550, 34.531013, 34.064003>,  <34.135395, 34.147697, 34.008877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235550, 34.531013, 34.064003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644619, -0.058810, -0.762239,
		-0.722337, 0.279697, -0.632454,
		0.250390, 0.958285, 0.137817,
		34.310665, 34.818501, 34.105347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131950, 34.463902, 33.389256>,  <34.135395, 34.147697, 34.008877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131950, 34.463902, 33.389256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370998, 34.688126, 33.618561>,  <34.514427, 34.822659, 33.756142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370998, 34.688126, 33.618561>,  <34.131950, 34.463902, 33.389256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370998, 34.688126, 33.618561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755987, -0.155788, -0.635779,
		-0.267082, 0.813331, -0.516875,
		0.597622, 0.560555, 0.573259,
		34.550285, 34.856293, 33.790539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375084, 35.013618, 32.945820>,  <34.131950, 34.463902, 33.389256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375084, 35.013618, 32.945820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643848, 35.038242, 33.241047>,  <34.805107, 35.053017, 33.418182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643848, 35.038242, 33.241047>,  <34.375084, 35.013618, 32.945820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643848, 35.038242, 33.241047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708928, 0.234999, -0.664978,
		-0.214385, 0.970044, 0.114253,
		0.671908, 0.061564, 0.738072,
		34.845421, 35.056713, 33.462467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779736, 35.653633, 32.791233>,  <34.375084, 35.013618, 32.945820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779736, 35.653633, 32.791233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038177, 35.472221, 33.036785>,  <35.193245, 35.363373, 33.184116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038177, 35.472221, 33.036785>,  <34.779736, 35.653633, 32.791233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038177, 35.472221, 33.036785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678515, -0.027013, -0.734090,
		0.349516, 0.890831, 0.290274,
		0.646108, -0.453532, 0.613883,
		35.232010, 35.336163, 33.220951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450825, 36.097935, 32.877762>,  <34.779736, 35.653633, 32.791233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450825, 36.097935, 32.877762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546734, 35.726295, 32.990398>,  <35.604279, 35.503311, 33.057980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546734, 35.726295, 32.990398>,  <35.450825, 36.097935, 32.877762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546734, 35.726295, 32.990398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803457, 0.027098, -0.594746,
		0.544944, 0.368851, 0.752984,
		0.239777, -0.929093, 0.281589,
		35.618668, 35.447567, 33.074875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179588, 36.074741, 33.011375>,  <35.450825, 36.097935, 32.877762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179588, 36.074741, 33.011375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081623, 35.694660, 32.934299>,  <36.022846, 35.466610, 32.888054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081623, 35.694660, 32.934299>,  <36.179588, 36.074741, 33.011375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081623, 35.694660, 32.934299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828256, -0.101732, -0.551038,
		0.503996, -0.294553, 0.811928,
		-0.244909, -0.950205, -0.192693,
		36.008152, 35.409599, 32.876492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858372, 35.694126, 32.985924>,  <36.179588, 36.074741, 33.011375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858372, 35.694126, 32.985924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601681, 35.463348, 32.783802>,  <36.447666, 35.324883, 32.662529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601681, 35.463348, 32.783802>,  <36.858372, 35.694126, 32.985924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601681, 35.463348, 32.783802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709735, -0.197067, -0.676343,
		0.290631, -0.792657, 0.535938,
		-0.641724, -0.576940, -0.505302,
		36.409164, 35.290268, 32.632210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434959, 35.304161, 32.700550>,  <36.858372, 35.694126, 32.985924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434959, 35.304161, 32.700550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079884, 35.218567, 32.537472>,  <36.866837, 35.167210, 32.439625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079884, 35.218567, 32.537472>,  <37.434959, 35.304161, 32.700550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079884, 35.218567, 32.537472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456655, -0.295876, -0.839001,
		0.058910, -0.930949, 0.360366,
		-0.887691, -0.213989, -0.407693,
		36.813576, 35.154369, 32.415165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480946, 34.638126, 32.421497>,  <37.434959, 35.304161, 32.700550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480946, 34.638126, 32.421497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194542, 34.827950, 32.216709>,  <37.022697, 34.941845, 32.093834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194542, 34.827950, 32.216709>,  <37.480946, 34.638126, 32.421497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194542, 34.827950, 32.216709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400331, -0.321683, -0.858053,
		-0.571892, -0.819336, 0.040348,
		-0.716013, 0.474561, -0.511974,
		36.979736, 34.970318, 32.063118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162052, 34.154984, 31.963428>,  <37.480946, 34.638126, 32.421497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162052, 34.154984, 31.963428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103649, 34.513580, 31.796101>,  <37.068607, 34.728737, 31.695704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103649, 34.513580, 31.796101>,  <37.162052, 34.154984, 31.963428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103649, 34.513580, 31.796101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137671, -0.400322, -0.905974,
		-0.979658, -0.189868, -0.064971,
		-0.146006, 0.896489, -0.418318,
		37.059849, 34.782528, 31.670605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787674, 34.020359, 31.354780>,  <37.162052, 34.154984, 31.963428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787674, 34.020359, 31.354780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914379, 34.396683, 31.306566>,  <36.990402, 34.622478, 31.277637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914379, 34.396683, 31.306566>,  <36.787674, 34.020359, 31.354780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914379, 34.396683, 31.306566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127099, -0.168037, -0.977553,
		-0.939950, 0.294336, -0.172805,
		0.316766, 0.940813, -0.120537,
		37.009411, 34.678928, 31.270405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367371, 34.265694, 30.700193>,  <36.787674, 34.020359, 31.354780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367371, 34.265694, 30.700193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706921, 34.468262, 30.760786>,  <36.910652, 34.589802, 30.797142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706921, 34.468262, 30.760786>,  <36.367371, 34.265694, 30.700193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706921, 34.468262, 30.760786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301995, -0.229432, -0.925289,
		-0.433832, 0.831202, -0.347696,
		0.848875, 0.506422, 0.151484,
		36.961582, 34.620190, 30.806231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476509, 34.555748, 30.041220>,  <36.367371, 34.265694, 30.700193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476509, 34.555748, 30.041220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829754, 34.591991, 30.225349>,  <37.041702, 34.613739, 30.335827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829754, 34.591991, 30.225349>,  <36.476509, 34.555748, 30.041220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829754, 34.591991, 30.225349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448191, -0.452966, -0.770679,
		0.138682, 0.886912, -0.440630,
		0.883115, 0.090608, 0.460324,
		37.094688, 34.619175, 30.363447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889194, 34.725670, 29.521317>,  <36.476509, 34.555748, 30.041220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889194, 34.725670, 29.521317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141479, 34.585869, 29.798458>,  <37.292850, 34.501987, 29.964743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141479, 34.585869, 29.798458>,  <36.889194, 34.725670, 29.521317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141479, 34.585869, 29.798458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614133, -0.320990, -0.720976,
		0.474385, 0.880233, 0.012191,
		0.630713, -0.349507, 0.692853,
		37.330692, 34.481018, 30.006313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577911, 34.963070, 29.287872>,  <36.889194, 34.725670, 29.521317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577911, 34.963070, 29.287872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610641, 34.645126, 29.528374>,  <37.630280, 34.454361, 29.672674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610641, 34.645126, 29.528374>,  <37.577911, 34.963070, 29.287872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610641, 34.645126, 29.528374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642892, -0.418892, -0.641264,
		0.761574, 0.439009, 0.476735,
		0.081821, -0.794859, 0.601253,
		37.635189, 34.406670, 29.708750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308643, 34.795933, 29.216385>,  <37.577911, 34.963070, 29.287872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308643, 34.795933, 29.216385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149868, 34.468079, 29.381615>,  <38.054604, 34.271366, 29.480753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149868, 34.468079, 29.381615>,  <38.308643, 34.795933, 29.216385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149868, 34.468079, 29.381615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526856, -0.571991, -0.628688,
		0.751572, -0.031921, 0.658878,
		-0.396941, -0.819638, 0.413075,
		38.030785, 34.222187, 29.505537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896065, 34.331448, 29.310909>,  <38.308643, 34.795933, 29.216385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896065, 34.331448, 29.310909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564873, 34.107479, 29.298685>,  <38.366158, 33.973099, 29.291349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564873, 34.107479, 29.298685>,  <38.896065, 34.331448, 29.310909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564873, 34.107479, 29.298685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444565, -0.622232, -0.644352,
		0.341768, -0.547100, 0.764118,
		-0.827984, -0.559919, -0.030563,
		38.316479, 33.939503, 29.289516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164978, 33.577545, 29.308575>,  <38.896065, 34.331448, 29.310909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164978, 33.577545, 29.308575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788662, 33.570179, 29.173180>,  <38.562874, 33.565762, 29.091944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788662, 33.570179, 29.173180>,  <39.164978, 33.577545, 29.308575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788662, 33.570179, 29.173180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268652, -0.649447, -0.711368,
		-0.206730, -0.760184, 0.615941,
		-0.940791, -0.018413, -0.338485,
		38.506424, 33.564655, 29.071634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003796, 32.957294, 29.127604>,  <39.164978, 33.577545, 29.308575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003796, 32.957294, 29.127604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759331, 33.175049, 28.897778>,  <38.612652, 33.305702, 28.759882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759331, 33.175049, 28.897778>,  <39.003796, 32.957294, 29.127604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759331, 33.175049, 28.897778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154493, -0.629904, -0.761152,
		-0.776279, -0.553955, 0.300872,
		-0.611164, 0.544384, -0.574564,
		38.575981, 33.338364, 28.725409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723995, 32.423260, 28.768934>,  <39.003796, 32.957294, 29.127604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723995, 32.423260, 28.768934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641777, 32.764072, 28.576353>,  <38.592445, 32.968559, 28.460804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641777, 32.764072, 28.576353>,  <38.723995, 32.423260, 28.768934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641777, 32.764072, 28.576353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160397, -0.455975, -0.875420,
		-0.965414, -0.257162, -0.042940,
		-0.205545, 0.852030, -0.481452,
		38.580112, 33.019680, 28.431917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150757, 32.353462, 28.203278>,  <38.723995, 32.423260, 28.768934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150757, 32.353462, 28.203278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379910, 32.670166, 28.118496>,  <38.517403, 32.860188, 28.067627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379910, 32.670166, 28.118496>,  <38.150757, 32.353462, 28.203278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379910, 32.670166, 28.118496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102687, -0.325889, -0.939815,
		-0.813177, 0.516642, -0.268000,
		0.572886, 0.791756, -0.211953,
		38.551777, 32.907692, 28.054911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977943, 32.501698, 27.571877>,  <38.150757, 32.353462, 28.203278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977943, 32.501698, 27.571877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316875, 32.709229, 27.617214>,  <38.520233, 32.833748, 27.644417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316875, 32.709229, 27.617214>,  <37.977943, 32.501698, 27.571877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316875, 32.709229, 27.617214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278074, -0.251620, -0.927018,
		-0.452443, 0.817010, -0.357478,
		0.847331, 0.518828, 0.113346,
		38.571075, 32.864876, 27.651218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097908, 32.809849, 26.965439>,  <37.977943, 32.501698, 27.571877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097908, 32.809849, 26.965439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467640, 32.808929, 27.118074>,  <38.689480, 32.808376, 27.209656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467640, 32.808929, 27.118074>,  <38.097908, 32.809849, 26.965439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467640, 32.808929, 27.118074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376819, -0.152262, -0.913687,
		0.060205, 0.988338, -0.139872,
		0.924328, -0.002302, 0.381591,
		38.744938, 32.808239, 27.232552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500305, 33.419209, 26.741217>,  <38.097908, 32.809849, 26.965439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500305, 33.419209, 26.741217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712631, 33.093407, 26.834862>,  <38.840027, 32.897926, 26.891048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712631, 33.093407, 26.834862>,  <38.500305, 33.419209, 26.741217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712631, 33.093407, 26.834862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487688, 0.067651, -0.870393,
		0.693105, 0.576193, 0.433136,
		0.530816, -0.814509, 0.234113,
		38.871876, 32.849052, 26.905096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917850, 33.442276, 26.220463>,  <38.500305, 33.419209, 26.741217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917850, 33.442276, 26.220463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074409, 33.132469, 26.419233>,  <39.168346, 32.946587, 26.538496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074409, 33.132469, 26.419233>,  <38.917850, 33.442276, 26.220463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074409, 33.132469, 26.419233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521338, -0.258354, -0.813302,
		0.758295, 0.577394, 0.302663,
		0.391401, -0.774512, 0.496926,
		39.191830, 32.900116, 26.568312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702385, 33.456070, 26.287909>,  <38.917850, 33.442276, 26.220463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702385, 33.456070, 26.287909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612534, 33.067207, 26.314602>,  <39.558620, 32.833889, 26.330618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612534, 33.067207, 26.314602>,  <39.702385, 33.456070, 26.287909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612534, 33.067207, 26.314602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561024, -0.185019, -0.806858,
		0.796739, -0.143807, 0.586964,
		-0.224632, -0.972156, 0.066733,
		39.545143, 32.775562, 26.334621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358494, 32.969994, 26.111841>,  <39.702385, 33.456070, 26.287909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358494, 32.969994, 26.111841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078342, 32.688427, 26.064571>,  <39.910252, 32.519485, 26.036209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078342, 32.688427, 26.064571>,  <40.358494, 32.969994, 26.111841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078342, 32.688427, 26.064571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226758, -0.062443, -0.971947,
		0.676795, -0.707528, 0.203353,
		-0.700378, -0.703921, -0.118177,
		39.868229, 32.477249, 26.029118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620728, 32.376957, 25.701935>,  <40.358494, 32.969994, 26.111841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620728, 32.376957, 25.701935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224899, 32.337524, 25.659937>,  <39.987400, 32.313866, 25.634739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224899, 32.337524, 25.659937>,  <40.620728, 32.376957, 25.701935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224899, 32.337524, 25.659937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116931, -0.124351, -0.985324,
		0.084081, -0.987329, 0.134582,
		-0.989574, -0.098584, -0.104994,
		39.928028, 32.307949, 25.628439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585014, 31.792990, 25.247156>,  <40.620728, 32.376957, 25.701935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585014, 31.792990, 25.247156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239891, 31.992016, 25.211401>,  <40.032818, 32.111431, 25.189949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239891, 31.992016, 25.211401>,  <40.585014, 31.792990, 25.247156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239891, 31.992016, 25.211401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055109, -0.083189, -0.995009,
		-0.502519, -0.863427, 0.044356,
		-0.862808, 0.497567, -0.089387,
		39.981049, 32.141285, 25.184586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110260, 31.339527, 24.843647>,  <40.585014, 31.792990, 25.247156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110260, 31.339527, 24.843647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949535, 31.705511, 24.828693>,  <39.853100, 31.925100, 24.819721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949535, 31.705511, 24.828693>,  <40.110260, 31.339527, 24.843647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949535, 31.705511, 24.828693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282113, 0.084849, -0.955622,
		-0.871183, -0.394527, -0.292215,
		-0.401813, 0.914958, -0.037382,
		39.828991, 31.980000, 24.817478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689816, 31.319752, 24.346870>,  <40.110260, 31.339527, 24.843647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689816, 31.319752, 24.346870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739544, 31.715000, 24.383011>,  <39.769379, 31.952148, 24.404696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739544, 31.715000, 24.383011>,  <39.689816, 31.319752, 24.346870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739544, 31.715000, 24.383011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103159, 0.077694, -0.991626,
		-0.986865, 0.132597, -0.092275,
		0.124317, 0.988120, 0.090352,
		39.776840, 32.011436, 24.410116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343998, 31.566488, 23.693613>,  <39.689816, 31.319752, 24.346870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343998, 31.566488, 23.693613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553864, 31.884800, 23.814583>,  <39.679783, 32.075787, 23.887165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553864, 31.884800, 23.814583>,  <39.343998, 31.566488, 23.693613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553864, 31.884800, 23.814583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019672, 0.366486, -0.930216,
		-0.851082, 0.482101, 0.207936,
		0.524664, 0.795780, 0.302426,
		39.711262, 32.123535, 23.905312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028435, 32.200935, 23.500223>,  <39.343998, 31.566488, 23.693613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028435, 32.200935, 23.500223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428307, 32.210136, 23.504477>,  <39.668228, 32.215656, 23.507029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428307, 32.210136, 23.504477>,  <39.028435, 32.200935, 23.500223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428307, 32.210136, 23.504477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004635, 0.246527, -0.969125,
		-0.024915, 0.968863, 0.246341,
		0.999679, 0.023004, 0.010633,
		39.728210, 32.217037, 23.507666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685696, 32.576927, 23.071012>,  <39.028435, 32.200935, 23.500223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685696, 32.576927, 23.071012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758083, 32.813286, 22.756536>,  <38.801517, 32.955101, 22.567850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758083, 32.813286, 22.756536>,  <38.685696, 32.576927, 23.071012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758083, 32.813286, 22.756536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072671, -0.789171, -0.609860,
		-0.980800, 0.167499, -0.099874,
		0.180968, 0.590892, -0.786191,
		38.812374, 32.990555, 22.520679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146404, 32.502953, 22.526918>,  <38.685696, 32.576927, 23.071012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146404, 32.502953, 22.526918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477936, 32.638611, 22.348919>,  <38.676853, 32.720005, 22.242119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477936, 32.638611, 22.348919>,  <38.146404, 32.502953, 22.526918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477936, 32.638611, 22.348919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021656, -0.775307, -0.631213,
		-0.559081, 0.532805, -0.635254,
		0.828830, 0.339142, -0.444998,
		38.726585, 32.740353, 22.215420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001347, 32.300808, 21.754145>,  <38.146404, 32.502953, 22.526918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001347, 32.300808, 21.754145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387897, 32.328201, 21.853283>,  <38.619827, 32.344639, 21.912766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387897, 32.328201, 21.853283>,  <38.001347, 32.300808, 21.754145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387897, 32.328201, 21.853283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143590, -0.943317, -0.299223,
		0.213306, 0.324751, -0.921432,
		0.966376, 0.068482, 0.247846,
		38.677811, 32.348747, 21.927637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551113, 32.142914, 21.187069>,  <38.001347, 32.300808, 21.754145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551113, 32.142914, 21.187069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685883, 32.024357, 21.544535>,  <38.766743, 31.953224, 21.759014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685883, 32.024357, 21.544535>,  <38.551113, 32.142914, 21.187069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685883, 32.024357, 21.544535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057377, -0.940932, -0.333698,
		0.939783, 0.163705, -0.300014,
		0.336921, -0.296390, 0.893665,
		38.786961, 31.935440, 21.812634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523983, 31.281748, 21.222275>,  <38.551113, 32.142914, 21.187069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523983, 31.281748, 21.222275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330807, 31.346041, 21.566584>,  <38.214901, 31.384617, 21.773169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330807, 31.346041, 21.566584>,  <38.523983, 31.281748, 21.222275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330807, 31.346041, 21.566584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033430, -0.978908, 0.201549,
		0.875012, 0.126113, 0.467386,
		-0.482945, 0.160733, 0.860772,
		38.185925, 31.394260, 21.824816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783951, 31.056034, 21.925947>,  <38.523983, 31.281748, 21.222275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783951, 31.056034, 21.925947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385574, 31.034410, 21.897163>,  <38.146549, 31.021437, 21.879894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385574, 31.034410, 21.897163>,  <38.783951, 31.056034, 21.925947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385574, 31.034410, 21.897163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052517, -0.998352, 0.023138,
		-0.073090, 0.019265, 0.997139,
		-0.995942, -0.054057, -0.071958,
		38.086792, 31.018192, 21.875576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220104, 31.422937, 22.491987>,  <38.783951, 31.056034, 21.925947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220104, 31.422937, 22.491987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221107, 31.512316, 22.102102>,  <39.221710, 31.565943, 21.868172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221107, 31.512316, 22.102102>,  <39.220104, 31.422937, 22.491987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221107, 31.512316, 22.102102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182050, 0.958529, 0.219269,
		0.983286, 0.176896, 0.043084,
		0.002509, 0.223448, -0.974713,
		39.221859, 31.579350, 21.809689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832199, 31.965824, 22.347654>,  <39.220104, 31.422937, 22.491987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832199, 31.965824, 22.347654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539104, 32.010498, 22.079140>,  <39.363247, 32.037304, 21.918030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539104, 32.010498, 22.079140>,  <39.832199, 31.965824, 22.347654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539104, 32.010498, 22.079140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092094, 0.961092, 0.260426,
		0.674256, 0.252644, -0.693938,
		-0.732733, 0.111686, -0.671289,
		39.319286, 32.044003, 21.877752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923695, 32.648590, 21.992989>,  <39.832199, 31.965824, 22.347654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923695, 32.648590, 21.992989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544281, 32.521927, 21.994503>,  <39.316635, 32.445927, 21.995411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544281, 32.521927, 21.994503>,  <39.923695, 32.648590, 21.992989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544281, 32.521927, 21.994503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295144, 0.888281, 0.351919,
		-0.114801, 0.332689, -0.936023,
		-0.948531, -0.316662, 0.003785,
		39.259720, 32.426929, 21.995638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713184, 33.243111, 21.584303>,  <39.923695, 32.648590, 21.992989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713184, 33.243111, 21.584303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412476, 33.070610, 21.783848>,  <39.232052, 32.967110, 21.903574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412476, 33.070610, 21.783848>,  <39.713184, 33.243111, 21.584303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412476, 33.070610, 21.783848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238671, 0.883163, 0.403806,
		-0.614721, 0.184504, -0.766862,
		-0.751768, -0.431256, 0.498863,
		39.186947, 32.941235, 21.933506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078026, 33.731434, 21.501133>,  <39.713184, 33.243111, 21.584303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078026, 33.731434, 21.501133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001240, 33.501423, 21.819252>,  <38.955166, 33.363419, 22.010122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001240, 33.501423, 21.819252>,  <39.078026, 33.731434, 21.501133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001240, 33.501423, 21.819252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261375, 0.811055, 0.523329,
		-0.945955, -0.107408, -0.305994,
		-0.191968, -0.575024, 0.795296,
		38.943649, 33.328915, 22.057840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408867, 33.807629, 21.826153>,  <39.078026, 33.731434, 21.501133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408867, 33.807629, 21.826153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661091, 33.690193, 22.113541>,  <38.812424, 33.619732, 22.285973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661091, 33.690193, 22.113541>,  <38.408867, 33.807629, 21.826153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661091, 33.690193, 22.113541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261731, 0.791037, 0.552954,
		-0.730677, -0.536716, 0.421955,
		0.630561, -0.293592, 0.718468,
		38.850258, 33.602116, 22.329081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033001, 33.757462, 22.466076>,  <38.408867, 33.807629, 21.826153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033001, 33.757462, 22.466076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416500, 33.778008, 22.577909>,  <38.646599, 33.790333, 22.645010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416500, 33.778008, 22.577909>,  <38.033001, 33.757462, 22.466076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416500, 33.778008, 22.577909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232440, 0.707829, 0.667045,
		-0.163637, -0.704514, 0.690567,
		0.958746, 0.051363, 0.279584,
		38.704124, 33.793415, 22.661785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954243, 33.672756, 23.099773>,  <38.033001, 33.757462, 22.466076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954243, 33.672756, 23.099773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302887, 33.861168, 23.045471>,  <38.512074, 33.974216, 23.012890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302887, 33.861168, 23.045471>,  <37.954243, 33.672756, 23.099773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302887, 33.861168, 23.045471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266650, 0.687955, 0.674993,
		0.411334, -0.552131, 0.725228,
		0.871609, 0.471029, -0.135754,
		38.564369, 34.002476, 23.004745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975216, 34.042793, 23.702333>,  <37.954243, 33.672756, 23.099773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975216, 34.042793, 23.702333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276321, 34.229267, 23.516422>,  <38.456985, 34.341152, 23.404877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276321, 34.229267, 23.516422>,  <37.975216, 34.042793, 23.702333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276321, 34.229267, 23.516422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078378, 0.764486, 0.639858,
		0.653604, -0.445236, 0.612019,
		0.752768, 0.466183, -0.464774,
		38.502151, 34.369122, 23.376989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583660, 34.093147, 24.173483>,  <37.975216, 34.042793, 23.702333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583660, 34.093147, 24.173483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622963, 34.393757, 23.912542>,  <38.646545, 34.574123, 23.755978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622963, 34.393757, 23.912542>,  <38.583660, 34.093147, 24.173483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622963, 34.393757, 23.912542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008775, 0.654844, 0.755713,
		0.995123, -0.079976, 0.057746,
		0.098254, 0.751521, -0.652352,
		38.652439, 34.619213, 23.716837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152004, 34.536297, 24.347689>,  <38.583660, 34.093147, 24.173483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152004, 34.536297, 24.347689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904991, 34.768600, 24.135508>,  <38.756783, 34.907982, 24.008200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904991, 34.768600, 24.135508>,  <39.152004, 34.536297, 24.347689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904991, 34.768600, 24.135508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108373, 0.605149, 0.788701,
		0.779045, 0.544533, -0.310760,
		-0.617530, 0.580756, -0.530451,
		38.719730, 34.942829, 23.976372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297993, 35.151287, 24.705263>,  <39.152004, 34.536297, 24.347689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297993, 35.151287, 24.705263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961761, 35.180416, 24.490551>,  <38.760025, 35.197895, 24.361723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961761, 35.180416, 24.490551>,  <39.297993, 35.151287, 24.705263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961761, 35.180416, 24.490551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476308, 0.372604, 0.796428,
		0.258006, 0.925128, -0.278514,
		-0.840574, 0.072825, -0.536780,
		38.709591, 35.202263, 24.329517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025784, 35.792194, 24.683535>,  <39.297993, 35.151287, 24.705263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025784, 35.792194, 24.683535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686661, 35.634727, 24.541405>,  <38.483189, 35.540249, 24.456127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686661, 35.634727, 24.541405>,  <39.025784, 35.792194, 24.683535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686661, 35.634727, 24.541405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518187, 0.472536, 0.712876,
		-0.112730, 0.788505, -0.604609,
		-0.847806, -0.393663, -0.355324,
		38.432320, 35.516628, 24.434807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542953, 36.361900, 24.839365>,  <39.025784, 35.792194, 24.683535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542953, 36.361900, 24.839365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330044, 36.026859, 24.790213>,  <38.202297, 35.825832, 24.760721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330044, 36.026859, 24.790213>,  <38.542953, 36.361900, 24.839365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330044, 36.026859, 24.790213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561582, 0.240731, 0.791628,
		-0.633492, 0.490370, -0.598519,
		-0.532273, -0.837607, -0.122882,
		38.170361, 35.775578, 24.753347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718521, 36.565971, 24.768158>,  <38.542953, 36.361900, 24.839365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718521, 36.565971, 24.768158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768211, 36.188606, 24.891142>,  <37.798027, 35.962185, 24.964931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768211, 36.188606, 24.891142>,  <37.718521, 36.565971, 24.768158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768211, 36.188606, 24.891142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604902, 0.173615, 0.777143,
		-0.786549, -0.282527, -0.549107,
		0.124230, -0.943417, 0.307458,
		37.805481, 35.905582, 24.983379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996666, 36.417255, 25.049366>,  <37.718521, 36.565971, 24.768158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996666, 36.417255, 25.049366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238068, 36.140724, 25.208286>,  <37.382908, 35.974804, 25.303638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238068, 36.140724, 25.208286>,  <36.996666, 36.417255, 25.049366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238068, 36.140724, 25.208286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534728, 0.018714, 0.844817,
		-0.591483, -0.722296, -0.358380,
		0.603501, -0.691331, 0.397300,
		37.419117, 35.933327, 25.327477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546391, 35.831470, 25.370232>,  <36.996666, 36.417255, 25.049366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546391, 35.831470, 25.370232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898655, 35.808334, 25.558311>,  <37.110012, 35.794453, 25.671160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898655, 35.808334, 25.558311>,  <36.546391, 35.831470, 25.370232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898655, 35.808334, 25.558311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471447, -0.009366, 0.881844,
		-0.046612, -0.998281, -0.035523,
		0.880662, -0.057852, 0.470201,
		37.162853, 35.790981, 25.699371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407738, 35.494560, 25.964685>,  <36.546391, 35.831470, 25.370232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407738, 35.494560, 25.964685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760365, 35.635323, 26.090549>,  <36.971939, 35.719780, 26.166067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760365, 35.635323, 26.090549>,  <36.407738, 35.494560, 25.964685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760365, 35.635323, 26.090549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271901, -0.166369, 0.947835,
		0.385899, -0.921131, -0.050981,
		0.881562, 0.351906, 0.314658,
		37.024834, 35.740894, 26.184946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556107, 35.127289, 26.511419>,  <36.407738, 35.494560, 25.964685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556107, 35.127289, 26.511419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796204, 35.443909, 26.557289>,  <36.940262, 35.633881, 26.584810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796204, 35.443909, 26.557289>,  <36.556107, 35.127289, 26.511419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796204, 35.443909, 26.557289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162328, -0.019824, 0.986538,
		0.783171, -0.610778, 0.116592,
		0.600244, 0.791554, 0.114672,
		36.976276, 35.681374, 26.591690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045971, 34.971706, 26.992273>,  <36.556107, 35.127289, 26.511419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045971, 34.971706, 26.992273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989597, 35.367714, 26.991652>,  <36.955772, 35.605320, 26.991278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989597, 35.367714, 26.991652>,  <37.045971, 34.971706, 26.992273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989597, 35.367714, 26.991652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133546, -0.017452, 0.990889,
		0.980971, 0.139854, 0.134672,
		-0.140931, 0.990018, -0.001557,
		36.947319, 35.664719, 26.991184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976662, 35.037689, 27.715475>,  <37.045971, 34.971706, 26.992273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976662, 35.037689, 27.715475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916466, 35.414043, 27.594097>,  <36.880348, 35.639858, 27.521271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916466, 35.414043, 27.594097>,  <36.976662, 35.037689, 27.715475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916466, 35.414043, 27.594097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449148, 0.208365, 0.868821,
		0.880692, 0.267044, 0.391242,
		-0.150492, 0.940889, -0.303447,
		36.871319, 35.696312, 27.503063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308411, 35.441677, 28.266851>,  <36.976662, 35.037689, 27.715475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308411, 35.441677, 28.266851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035954, 35.652328, 28.063396>,  <36.872478, 35.778721, 27.941324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035954, 35.652328, 28.063396>,  <37.308411, 35.441677, 28.266851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035954, 35.652328, 28.063396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353068, 0.372338, 0.858317,
		0.641398, 0.764218, -0.067679,
		-0.681140, 0.526627, -0.508637,
		36.831612, 35.810318, 27.910805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211449, 36.098125, 28.621813>,  <37.308411, 35.441677, 28.266851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211449, 36.098125, 28.621813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879650, 36.061543, 28.401424>,  <36.680569, 36.039593, 28.269192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879650, 36.061543, 28.401424>,  <37.211449, 36.098125, 28.621813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879650, 36.061543, 28.401424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524894, 0.464723, 0.713105,
		0.190832, 0.880720, -0.433492,
		-0.829499, -0.091455, -0.550969,
		36.630802, 36.034107, 28.236134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843395, 36.707916, 28.797461>,  <37.211449, 36.098125, 28.621813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843395, 36.707916, 28.797461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596748, 36.436329, 28.638069>,  <36.448761, 36.273376, 28.542435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596748, 36.436329, 28.638069>,  <36.843395, 36.707916, 28.797461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596748, 36.436329, 28.638069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753515, 0.362390, 0.548533,
		-0.228031, 0.638495, -0.735069,
		-0.616617, -0.678968, -0.398480,
		36.411762, 36.232639, 28.518526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251221, 37.057899, 28.624981>,  <36.843395, 36.707916, 28.797461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251221, 37.057899, 28.624981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155865, 36.673496, 28.681025>,  <36.098652, 36.442856, 28.714651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155865, 36.673496, 28.681025>,  <36.251221, 37.057899, 28.624981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155865, 36.673496, 28.681025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633638, 0.263246, 0.727464,
		-0.735983, 0.084644, -0.671688,
		-0.238395, -0.961008, 0.140111,
		36.084347, 36.385193, 28.723059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504070, 37.126930, 28.634640>,  <36.251221, 37.057899, 28.624981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504070, 37.126930, 28.634640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611160, 36.778591, 28.799540>,  <35.675415, 36.569588, 28.898479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611160, 36.778591, 28.799540>,  <35.504070, 37.126930, 28.634640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611160, 36.778591, 28.799540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614119, 0.175457, 0.769463,
		-0.742417, -0.459172, -0.487830,
		0.267723, -0.870847, 0.412248,
		35.691479, 36.517338, 28.923214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929890, 36.872410, 28.872158>,  <35.504070, 37.126930, 28.634640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929890, 36.872410, 28.872158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181667, 36.633114, 29.070515>,  <35.332733, 36.489536, 29.189529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181667, 36.633114, 29.070515>,  <34.929890, 36.872410, 28.872158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181667, 36.633114, 29.070515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410626, 0.285704, 0.865887,
		-0.659683, -0.748656, -0.065816,
		0.629448, -0.598237, 0.495892,
		35.370502, 36.453644, 29.219282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539055, 36.390556, 29.340151>,  <34.929890, 36.872410, 28.872158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539055, 36.390556, 29.340151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907333, 36.396252, 29.496159>,  <35.128300, 36.399670, 29.589764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907333, 36.396252, 29.496159>,  <34.539055, 36.390556, 29.340151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907333, 36.396252, 29.496159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388569, 0.126815, 0.912651,
		-0.036468, -0.991824, 0.122290,
		0.920697, 0.014236, 0.390017,
		35.183544, 36.400520, 29.613163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487995, 35.863022, 29.932119>,  <34.539055, 36.390556, 29.340151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487995, 35.863022, 29.932119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807735, 36.100098, 29.971645>,  <34.999580, 36.242344, 29.995361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807735, 36.100098, 29.971645>,  <34.487995, 35.863022, 29.932119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807735, 36.100098, 29.971645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247252, 0.174562, 0.953097,
		0.547641, -0.786287, 0.286079,
		0.799347, 0.592689, 0.098813,
		35.047539, 36.277905, 30.001289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822018, 35.562447, 30.585817>,  <34.487995, 35.863022, 29.932119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822018, 35.562447, 30.585817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924191, 35.941036, 30.506884>,  <34.985497, 36.168190, 30.459524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924191, 35.941036, 30.506884>,  <34.822018, 35.562447, 30.585817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924191, 35.941036, 30.506884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178497, 0.246761, 0.952496,
		0.950206, -0.208077, 0.231974,
		0.255434, 0.946474, -0.197332,
		35.000820, 36.224979, 30.447683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244343, 35.631573, 31.138975>,  <34.822018, 35.562447, 30.585817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244343, 35.631573, 31.138975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131104, 36.002842, 31.042351>,  <35.063160, 36.225601, 30.984377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131104, 36.002842, 31.042351>,  <35.244343, 35.631573, 31.138975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131104, 36.002842, 31.042351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280501, 0.160724, 0.946302,
		0.917154, 0.335658, 0.214851,
		-0.283102, 0.928171, -0.241562,
		35.046173, 36.281292, 30.969883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312305, 36.003765, 31.767889>,  <35.244343, 35.631573, 31.138975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312305, 36.003765, 31.767889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161003, 36.299648, 31.545265>,  <35.070221, 36.477177, 31.411692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161003, 36.299648, 31.545265>,  <35.312305, 36.003765, 31.767889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161003, 36.299648, 31.545265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419746, 0.398814, 0.815329,
		0.825066, 0.542017, 0.159634,
		-0.378258, 0.739706, -0.556557,
		35.047527, 36.521561, 31.378298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630867, 36.737190, 31.959358>,  <35.312305, 36.003765, 31.767889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630867, 36.737190, 31.959358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270916, 36.791679, 31.793629>,  <35.054947, 36.824375, 31.694191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270916, 36.791679, 31.793629>,  <35.630867, 36.737190, 31.959358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270916, 36.791679, 31.793629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313170, 0.459361, 0.831211,
		0.303557, 0.877741, -0.370707,
		-0.899876, 0.136225, -0.414325,
		35.000954, 36.832546, 31.669331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412861, 37.382740, 32.254131>,  <35.630867, 36.737190, 31.959358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412861, 37.382740, 32.254131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072979, 37.240852, 32.098091>,  <34.869049, 37.155720, 32.004467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072979, 37.240852, 32.098091>,  <35.412861, 37.382740, 32.254131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072979, 37.240852, 32.098091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515228, 0.401459, 0.757213,
		-0.111987, 0.844397, -0.523882,
		-0.849706, -0.354716, -0.390099,
		34.818066, 37.134438, 31.981062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976151, 37.912041, 32.389454>,  <35.412861, 37.382740, 32.254131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976151, 37.912041, 32.389454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757755, 37.584602, 32.318123>,  <34.626720, 37.388138, 32.275322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757755, 37.584602, 32.318123>,  <34.976151, 37.912041, 32.389454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757755, 37.584602, 32.318123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617359, 0.249215, 0.746163,
		-0.566363, 0.517488, -0.641435,
		-0.545986, -0.818595, -0.178330,
		34.593960, 37.339024, 32.264626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282528, 38.150341, 32.243332>,  <34.976151, 37.912041, 32.389454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282528, 38.150341, 32.243332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275505, 37.772995, 32.375851>,  <34.271290, 37.546589, 32.455360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275505, 37.772995, 32.375851>,  <34.282528, 38.150341, 32.243332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275505, 37.772995, 32.375851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676104, 0.255313, 0.691157,
		-0.736597, -0.211854, -0.642295,
		-0.017562, -0.943363, 0.331298,
		34.270237, 37.489986, 32.475239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527420, 38.015503, 32.365028>,  <34.282528, 38.150341, 32.243332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527420, 38.015503, 32.365028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757839, 37.762737, 32.572433>,  <33.896091, 37.611076, 32.696877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757839, 37.762737, 32.572433>,  <33.527420, 38.015503, 32.365028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757839, 37.762737, 32.572433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485901, 0.245379, 0.838862,
		-0.657320, -0.735170, -0.165698,
		0.576047, -0.631914, 0.518512,
		33.930653, 37.573162, 32.727985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051418, 37.813801, 32.931671>,  <33.527420, 38.015503, 32.365028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051418, 37.813801, 32.931671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403835, 37.667332, 33.051456>,  <33.615288, 37.579453, 33.123329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403835, 37.667332, 33.051456>,  <33.051418, 37.813801, 32.931671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403835, 37.667332, 33.051456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283027, 0.099196, 0.953969,
		-0.379019, -0.925246, -0.016240,
		0.881045, -0.366169, 0.299467,
		33.668148, 37.557480, 33.141296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945568, 37.226067, 33.382786>,  <33.051418, 37.813801, 32.931671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945568, 37.226067, 33.382786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294922, 37.397232, 33.475822>,  <33.504532, 37.499931, 33.531643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294922, 37.397232, 33.475822>,  <32.945568, 37.226067, 33.382786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294922, 37.397232, 33.475822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246022, -0.024529, 0.968954,
		0.420335, -0.903486, 0.083854,
		0.873380, 0.427915, 0.232588,
		33.556934, 37.525608, 33.545597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179928, 36.864632, 34.024513>,  <32.945568, 37.226067, 33.382786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179928, 36.864632, 34.024513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381123, 37.210041, 34.009857>,  <33.501839, 37.417286, 34.001064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381123, 37.210041, 34.009857>,  <33.179928, 36.864632, 34.024513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381123, 37.210041, 34.009857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196116, 0.155317, 0.968202,
		0.841752, -0.479803, 0.247471,
		0.502983, 0.863519, -0.036641,
		33.532017, 37.469097, 33.998863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600864, 36.723545, 34.503731>,  <33.179928, 36.864632, 34.024513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600864, 36.723545, 34.503731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578903, 37.119717, 34.453087>,  <33.565727, 37.357422, 34.422703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578903, 37.119717, 34.453087>,  <33.600864, 36.723545, 34.503731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578903, 37.119717, 34.453087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228734, 0.110951, 0.967145,
		0.971940, 0.082057, 0.220455,
		-0.054901, 0.990433, -0.126607,
		33.562431, 37.416847, 34.415104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936279, 37.016922, 35.131260>,  <33.600864, 36.723545, 34.503731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936279, 37.016922, 35.131260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747517, 37.343185, 34.997391>,  <33.634258, 37.538944, 34.917068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747517, 37.343185, 34.997391>,  <33.936279, 37.016922, 35.131260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747517, 37.343185, 34.997391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287395, 0.216548, 0.933012,
		0.833489, 0.536482, 0.132224,
		-0.471911, 0.815656, -0.334672,
		33.605942, 37.587883, 34.896988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093811, 37.568882, 35.556793>,  <33.936279, 37.016922, 35.131260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093811, 37.568882, 35.556793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759460, 37.704315, 35.383968>,  <33.558849, 37.785576, 35.280273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759460, 37.704315, 35.383968>,  <34.093811, 37.568882, 35.556793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759460, 37.704315, 35.383968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360637, 0.254661, 0.897267,
		0.413827, 0.905820, -0.090760,
		-0.835876, 0.338583, -0.432058,
		33.508698, 37.805889, 35.254353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821033, 37.510612, 35.235607>,  <34.093811, 37.568882, 35.556793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821033, 37.510612, 35.235607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125748, 37.688564, 35.423973>,  <35.308575, 37.795338, 35.536991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125748, 37.688564, 35.423973>,  <34.821033, 37.510612, 35.235607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125748, 37.688564, 35.423973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244160, 0.476143, -0.844792,
		-0.600058, 0.758529, 0.254096,
		0.761785, 0.444884, 0.470915,
		35.354282, 37.822029, 35.565247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726254, 38.253952, 35.111721>,  <34.821033, 37.510612, 35.235607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726254, 38.253952, 35.111721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109303, 38.187943, 35.206150>,  <35.339130, 38.148338, 35.262810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109303, 38.187943, 35.206150>,  <34.726254, 38.253952, 35.111721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109303, 38.187943, 35.206150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284944, 0.662507, -0.692742,
		-0.042085, 0.730652, 0.681452,
		0.957620, -0.165021, 0.236076,
		35.396587, 38.138435, 35.276974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989666, 38.860622, 35.016624>,  <34.726254, 38.253952, 35.111721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989666, 38.860622, 35.016624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299591, 38.608543, 34.996586>,  <35.485546, 38.457294, 34.984562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299591, 38.608543, 34.996586>,  <34.989666, 38.860622, 35.016624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299591, 38.608543, 34.996586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329853, 0.470601, -0.818371,
		0.539310, 0.617564, 0.572503,
		0.774817, -0.630197, -0.050094,
		35.532036, 38.419483, 34.981556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652817, 39.297554, 34.966541>,  <34.989666, 38.860622, 35.016624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652817, 39.297554, 34.966541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700287, 38.932846, 34.809269>,  <35.728767, 38.714020, 34.714905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700287, 38.932846, 34.809269>,  <35.652817, 39.297554, 34.966541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700287, 38.932846, 34.809269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498258, 0.397194, -0.770698,
		0.858869, -0.104442, 0.501434,
		0.118673, -0.911772, -0.393177,
		35.735889, 38.659313, 34.691315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319473, 39.348507, 34.580563>,  <35.652817, 39.297554, 34.966541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319473, 39.348507, 34.580563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211887, 38.984318, 34.454891>,  <36.147335, 38.765804, 34.379490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211887, 38.984318, 34.454891>,  <36.319473, 39.348507, 34.580563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211887, 38.984318, 34.454891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441816, 0.173223, -0.880223,
		0.855838, -0.375554, 0.355669,
		-0.268961, -0.910468, -0.314177,
		36.131199, 38.711178, 34.360638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860458, 39.129749, 34.339573>,  <36.319473, 39.348507, 34.580563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860458, 39.129749, 34.339573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597347, 38.882767, 34.167030>,  <36.439480, 38.734577, 34.063503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597347, 38.882767, 34.167030>,  <36.860458, 39.129749, 34.339573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597347, 38.882767, 34.167030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547222, 0.001767, -0.836986,
		0.517568, -0.786600, 0.336726,
		-0.657779, -0.617460, -0.431359,
		36.400013, 38.697529, 34.037624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192413, 38.564529, 34.121284>,  <36.860458, 39.129749, 34.339573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192413, 38.564529, 34.121284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870991, 38.602276, 33.886204>,  <36.678135, 38.624924, 33.745155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870991, 38.602276, 33.886204>,  <37.192413, 38.564529, 34.121284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870991, 38.602276, 33.886204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592609, 0.034369, -0.804757,
		-0.055743, -0.994944, -0.083539,
		-0.803559, 0.094366, -0.587697,
		36.629925, 38.630585, 33.709896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320774, 38.223141, 33.636211>,  <37.192413, 38.564529, 34.121284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320774, 38.223141, 33.636211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003830, 38.391613, 33.459682>,  <36.813663, 38.492695, 33.353764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003830, 38.391613, 33.459682>,  <37.320774, 38.223141, 33.636211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003830, 38.391613, 33.459682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485159, -0.003511, -0.874419,
		-0.369838, -0.906970, -0.201559,
		-0.792364, 0.421181, -0.441323,
		36.766121, 38.517967, 33.327286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049545, 37.730293, 33.137711>,  <37.320774, 38.223141, 33.636211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049545, 37.730293, 33.137711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904877, 38.079819, 33.007702>,  <36.818077, 38.289536, 32.929695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904877, 38.079819, 33.007702>,  <37.049545, 37.730293, 33.137711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904877, 38.079819, 33.007702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296869, -0.222541, -0.928625,
		-0.883779, -0.432344, -0.178923,
		-0.361667, 0.873816, -0.325026,
		36.796375, 38.341965, 32.910194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561794, 37.628460, 32.603336>,  <37.049545, 37.730293, 33.137711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561794, 37.628460, 32.603336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709961, 37.996643, 32.553459>,  <36.798862, 38.217552, 32.523533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709961, 37.996643, 32.553459>,  <36.561794, 37.628460, 32.603336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709961, 37.996643, 32.553459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203547, -0.211419, -0.955966,
		-0.906288, 0.328728, -0.265670,
		0.370420, 0.920456, -0.124695,
		36.821087, 38.272781, 32.516052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303623, 37.866295, 31.933676>,  <36.561794, 37.628460, 32.603336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303623, 37.866295, 31.933676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630081, 38.079021, 32.024078>,  <36.825954, 38.206657, 32.078320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630081, 38.079021, 32.024078>,  <36.303623, 37.866295, 31.933676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630081, 38.079021, 32.024078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370445, -0.181362, -0.910977,
		-0.443483, 0.827212, -0.345027,
		0.816145, 0.531816, 0.226005,
		36.874924, 38.238567, 32.091881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441769, 38.260551, 31.292423>,  <36.303623, 37.866295, 31.933676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441769, 38.260551, 31.292423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778286, 38.318523, 31.500738>,  <36.980198, 38.353306, 31.625727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778286, 38.318523, 31.500738>,  <36.441769, 38.260551, 31.292423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778286, 38.318523, 31.500738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539806, -0.173839, -0.823644,
		-0.028838, 0.974051, -0.224484,
		0.841295, 0.144930, 0.520786,
		37.030674, 38.362003, 31.656975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909225, 38.705128, 30.899082>,  <36.441769, 38.260551, 31.292423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909225, 38.705128, 30.899082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149174, 38.523365, 31.162497>,  <37.293140, 38.414307, 31.320545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149174, 38.523365, 31.162497>,  <36.909225, 38.705128, 30.899082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149174, 38.523365, 31.162497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726975, -0.034205, -0.685811,
		0.334165, 0.890136, 0.309826,
		0.599867, -0.454410, 0.658537,
		37.329132, 38.387043, 31.360058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598019, 38.950504, 30.869198>,  <36.909225, 38.705128, 30.899082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598019, 38.950504, 30.869198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675308, 38.591919, 31.028706>,  <37.721684, 38.376766, 31.124411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675308, 38.591919, 31.028706>,  <37.598019, 38.950504, 30.869198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675308, 38.591919, 31.028706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672492, -0.174938, -0.719132,
		0.714436, 0.407123, 0.569063,
		0.193224, -0.896464, 0.398769,
		37.733276, 38.322979, 31.148336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418598, 38.881111, 31.061052>,  <37.598019, 38.950504, 30.869198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418598, 38.881111, 31.061052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238869, 38.526169, 31.019684>,  <38.131031, 38.313202, 30.994864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238869, 38.526169, 31.019684>,  <38.418598, 38.881111, 31.061052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238869, 38.526169, 31.019684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743771, -0.307444, -0.593534,
		0.494883, -0.343613, 0.798136,
		-0.449328, -0.887360, -0.103421,
		38.104069, 38.259960, 30.988657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950394, 38.368889, 31.062241>,  <38.418598, 38.881111, 31.061052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950394, 38.368889, 31.062241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644386, 38.194584, 30.872561>,  <38.460781, 38.090000, 30.758753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644386, 38.194584, 30.872561>,  <38.950394, 38.368889, 31.062241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644386, 38.194584, 30.872561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600855, -0.217931, -0.769077,
		0.231788, -0.873282, 0.428548,
		-0.765015, -0.435758, -0.474202,
		38.414883, 38.063858, 30.730301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131962, 37.738529, 30.880499>,  <38.950394, 38.368889, 31.062241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131962, 37.738529, 30.880499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831120, 37.785927, 30.621178>,  <38.650612, 37.814365, 30.465586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831120, 37.785927, 30.621178>,  <39.131962, 37.738529, 30.880499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831120, 37.785927, 30.621178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615833, -0.223966, -0.755374,
		-0.234698, -0.967368, 0.095479,
		-0.752108, 0.118486, -0.648301,
		38.605488, 37.821472, 30.426687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158779, 37.118996, 30.371630>,  <39.131962, 37.738529, 30.880499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158779, 37.118996, 30.371630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925838, 37.383163, 30.182014>,  <38.786072, 37.541664, 30.068245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925838, 37.383163, 30.182014>,  <39.158779, 37.118996, 30.371630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925838, 37.383163, 30.182014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456984, -0.216316, -0.862771,
		-0.672332, -0.719065, -0.175829,
		-0.582353, 0.660419, -0.474037,
		38.751133, 37.581287, 30.039803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922134, 36.729607, 29.733036>,  <39.158779, 37.118996, 30.371630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922134, 36.729607, 29.733036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820263, 37.103779, 29.634964>,  <38.759140, 37.328281, 29.576120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820263, 37.103779, 29.634964>,  <38.922134, 36.729607, 29.733036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820263, 37.103779, 29.634964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277501, -0.172183, -0.945170,
		-0.926354, -0.308752, -0.215731,
		-0.254678, 0.935428, -0.245181,
		38.743858, 37.384407, 29.561409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418594, 36.712372, 29.180544>,  <38.922134, 36.729607, 29.733036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418594, 36.712372, 29.180544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592678, 37.071259, 29.150620>,  <38.697128, 37.286591, 29.132664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592678, 37.071259, 29.150620>,  <38.418594, 36.712372, 29.180544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592678, 37.071259, 29.150620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254889, -0.202482, -0.945533,
		-0.863493, 0.392440, -0.316813,
		0.435214, 0.897213, -0.074813,
		38.723244, 37.340424, 29.128176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057426, 36.952374, 28.673557>,  <38.418594, 36.712372, 29.180544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057426, 36.952374, 28.673557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395912, 37.164566, 28.693594>,  <38.599003, 37.291882, 28.705616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395912, 37.164566, 28.693594>,  <38.057426, 36.952374, 28.673557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395912, 37.164566, 28.693594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233939, -0.285416, -0.929414,
		-0.478736, 0.798205, -0.365623,
		0.846218, 0.530477, 0.050092,
		38.649776, 37.323708, 28.708622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133774, 37.393204, 28.035065>,  <38.057426, 36.952374, 28.673557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133774, 37.393204, 28.035065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504612, 37.375412, 28.183935>,  <38.727116, 37.364738, 28.273258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504612, 37.375412, 28.183935>,  <38.133774, 37.393204, 28.035065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504612, 37.375412, 28.183935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350516, -0.248892, -0.902879,
		0.132789, 0.967509, -0.215157,
		0.927095, -0.044477, 0.372178,
		38.782742, 37.362068, 28.295589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374153, 37.547405, 27.526903>,  <38.133774, 37.393204, 28.035065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374153, 37.547405, 27.526903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656475, 37.372169, 27.749582>,  <38.825871, 37.267029, 27.883190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656475, 37.372169, 27.749582>,  <38.374153, 37.547405, 27.526903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656475, 37.372169, 27.749582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442368, -0.341224, -0.829384,
		0.553305, 0.831650, -0.047040,
		0.705808, -0.438093, 0.556696,
		38.868217, 37.240742, 27.916592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021362, 37.717773, 27.256220>,  <38.374153, 37.547405, 27.526903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021362, 37.717773, 27.256220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116081, 37.395184, 27.472933>,  <39.172913, 37.201630, 27.602961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116081, 37.395184, 27.472933>,  <39.021362, 37.717773, 27.256220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116081, 37.395184, 27.472933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536600, -0.356311, -0.764920,
		0.809932, 0.471847, 0.348383,
		0.236793, -0.806475, 0.541781,
		39.187119, 37.153240, 27.635468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682690, 37.593666, 27.229595>,  <39.021362, 37.717773, 27.256220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682690, 37.593666, 27.229595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564114, 37.223328, 27.323341>,  <39.492970, 37.001125, 27.379589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564114, 37.223328, 27.323341>,  <39.682690, 37.593666, 27.229595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564114, 37.223328, 27.323341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560808, -0.367378, -0.741976,
		0.773059, -0.088514, 0.628128,
		-0.296436, -0.925850, 0.234365,
		39.475182, 36.945572, 27.393650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270370, 37.085411, 27.369244>,  <39.682690, 37.593666, 27.229595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270370, 37.085411, 27.369244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961277, 36.838661, 27.309435>,  <39.775822, 36.690613, 27.273550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961277, 36.838661, 27.309435>,  <40.270370, 37.085411, 27.369244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961277, 36.838661, 27.309435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553705, -0.539949, -0.633929,
		0.310318, -0.572648, 0.758800,
		-0.772731, -0.616871, -0.149523,
		39.729458, 36.653599, 27.264578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428799, 36.444767, 27.590672>,  <40.270370, 37.085411, 27.369244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428799, 36.444767, 27.590672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133366, 36.364426, 27.333252>,  <39.956104, 36.316223, 27.178801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133366, 36.364426, 27.333252>,  <40.428799, 36.444767, 27.590672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133366, 36.364426, 27.333252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619385, -0.579081, -0.530120,
		-0.266193, -0.790142, 0.552102,
		-0.738583, -0.200849, -0.643549,
		39.911793, 36.304173, 27.140186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384411, 35.613155, 27.475216>,  <40.428799, 36.444767, 27.590672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384411, 35.613155, 27.475216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229237, 35.823318, 27.172308>,  <40.136131, 35.949417, 26.990564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229237, 35.823318, 27.172308>,  <40.384411, 35.613155, 27.475216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229237, 35.823318, 27.172308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450764, -0.608496, -0.653104,
		-0.803937, -0.594713, -0.000775,
		-0.387938, 0.525404, -0.757268,
		40.112854, 35.980938, 26.945127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271843, 35.113457, 27.060612>,  <40.384411, 35.613155, 27.475216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271843, 35.113457, 27.060612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287247, 35.439934, 26.830011>,  <40.296490, 35.635818, 26.691650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287247, 35.439934, 26.830011>,  <40.271843, 35.113457, 27.060612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287247, 35.439934, 26.830011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522231, -0.508310, -0.684760,
		-0.851934, -0.274696, -0.445814,
		0.038511, 0.816188, -0.576502,
		40.298801, 35.684792, 26.657061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171757, 34.855526, 26.365181>,  <40.271843, 35.113457, 27.060612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171757, 34.855526, 26.365181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331963, 35.217758, 26.309294>,  <40.428085, 35.435097, 26.275761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331963, 35.217758, 26.309294>,  <40.171757, 34.855526, 26.365181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331963, 35.217758, 26.309294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502675, -0.344640, -0.792806,
		-0.766100, 0.247294, -0.593243,
		0.400511, 0.905577, -0.139720,
		40.452114, 35.489429, 26.267378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193115, 34.973881, 25.631014>,  <40.171757, 34.855526, 26.365181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193115, 34.973881, 25.631014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463440, 35.220200, 25.793039>,  <40.625633, 35.367992, 25.890255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463440, 35.220200, 25.793039>,  <40.193115, 34.973881, 25.631014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463440, 35.220200, 25.793039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651403, -0.241835, -0.719159,
		-0.344897, 0.749874, -0.564566,
		0.675811, 0.615796, 0.405062,
		40.666183, 35.404938, 25.914558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450661, 35.261364, 25.108213>,  <40.193115, 34.973881, 25.631014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450661, 35.261364, 25.108213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744942, 35.332821, 25.369543>,  <40.921509, 35.375694, 25.526340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744942, 35.332821, 25.369543>,  <40.450661, 35.261364, 25.108213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744942, 35.332821, 25.369543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677280, -0.202575, -0.707287,
		0.005998, 0.962835, -0.270024,
		0.735701, 0.178640, 0.653324,
		40.965652, 35.386414, 25.565540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028927, 35.586426, 24.715078>,  <40.450661, 35.261364, 25.108213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028927, 35.586426, 24.715078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211166, 35.441486, 25.040319>,  <41.320511, 35.354523, 25.235464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211166, 35.441486, 25.040319>,  <41.028927, 35.586426, 24.715078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211166, 35.441486, 25.040319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788658, -0.259322, -0.557468,
		0.412852, 0.895241, 0.167621,
		0.455600, -0.362347, 0.813101,
		41.347847, 35.332783, 25.284250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750820, 35.812325, 24.707556>,  <41.028927, 35.586426, 24.715078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750820, 35.812325, 24.707556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752483, 35.489941, 24.944338>,  <41.753483, 35.296509, 25.086407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752483, 35.489941, 24.944338>,  <41.750820, 35.812325, 24.707556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752483, 35.489941, 24.944338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770466, -0.374775, -0.515680,
		0.637467, 0.458228, 0.619405,
		0.004162, -0.805960, 0.591956,
		41.753731, 35.248154, 25.121925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411316, 35.818172, 24.840864>,  <41.750820, 35.812325, 24.707556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411316, 35.818172, 24.840864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253502, 35.461243, 24.928595>,  <42.158813, 35.247086, 24.981232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253502, 35.461243, 24.928595>,  <42.411316, 35.818172, 24.840864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253502, 35.461243, 24.928595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735569, -0.449747, -0.506623,
		0.550712, -0.038550, 0.833804,
		-0.394531, -0.892324, 0.219325,
		42.135143, 35.193546, 24.994392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023407, 35.546291, 25.215687>,  <42.411316, 35.818172, 24.840864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023407, 35.546291, 25.215687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783493, 35.255527, 25.081902>,  <42.639545, 35.081070, 25.001631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783493, 35.255527, 25.081902>,  <43.023407, 35.546291, 25.215687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783493, 35.255527, 25.081902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792019, -0.479837, -0.377443,
		0.113878, -0.491285, 0.863522,
		-0.599782, -0.726908, -0.334464,
		42.603558, 35.037457, 24.981562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372162, 34.981743, 25.452061>,  <43.023407, 35.546291, 25.215687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372162, 34.981743, 25.452061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133675, 34.865871, 25.152565>,  <42.990582, 34.796349, 24.972868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133675, 34.865871, 25.152565>,  <43.372162, 34.981743, 25.452061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133675, 34.865871, 25.152565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790069, -0.377299, -0.483153,
		-0.142536, -0.879619, 0.453822,
		-0.596217, -0.289684, -0.748738,
		42.954811, 34.778965, 24.927944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485500, 34.305477, 25.427794>,  <43.372162, 34.981743, 25.452061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485500, 34.305477, 25.427794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363697, 34.436985, 25.070204>,  <43.290615, 34.515888, 24.855650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363697, 34.436985, 25.070204>,  <43.485500, 34.305477, 25.427794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363697, 34.436985, 25.070204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878531, -0.265710, -0.396964,
		-0.368048, -0.906260, -0.207925,
		-0.304505, 0.328771, -0.893972,
		43.272346, 34.535618, 24.802011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009945, 33.730766, 25.471189>,  <43.485500, 34.305477, 25.427794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009945, 33.730766, 25.471189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143818, 33.561718, 25.808086>,  <44.224140, 33.460289, 26.010225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143818, 33.561718, 25.808086>,  <44.009945, 33.730766, 25.471189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143818, 33.561718, 25.808086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882704, 0.172284, 0.437210,
		-0.329881, -0.889779, -0.315392,
		0.334683, -0.422625, 0.842245,
		44.244225, 33.434929, 26.060760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403183, 33.266472, 25.889948>,  <44.009945, 33.730766, 25.471189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403183, 33.266472, 25.889948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706799, 33.343719, 26.138645>,  <43.888969, 33.390068, 26.287863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706799, 33.343719, 26.138645>,  <43.403183, 33.266472, 25.889948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706799, 33.343719, 26.138645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649622, 0.287790, 0.703682,
		-0.043035, -0.938020, 0.343900,
		0.759038, 0.193122, 0.621743,
		43.934509, 33.401657, 26.325169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089870, 33.178986, 26.550848>,  <43.403183, 33.266472, 25.889948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089870, 33.178986, 26.550848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411644, 33.407738, 26.615147>,  <43.604710, 33.544991, 26.653727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411644, 33.407738, 26.615147>,  <43.089870, 33.178986, 26.550848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411644, 33.407738, 26.615147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486465, 0.478871, 0.730776,
		0.340938, -0.666060, 0.663420,
		0.804433, 0.571880, 0.160750,
		43.652973, 33.579304, 26.663370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020950, 33.313255, 27.307299>,  <43.089870, 33.178986, 26.550848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020950, 33.313255, 27.307299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308521, 33.565075, 27.189442>,  <43.481064, 33.716167, 27.118727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308521, 33.565075, 27.189442>,  <43.020950, 33.313255, 27.307299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308521, 33.565075, 27.189442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349063, 0.693561, 0.630181,
		0.601081, -0.350206, 0.718371,
		0.718927, 0.629547, -0.294643,
		43.524200, 33.753941, 27.101049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369843, 33.528801, 27.872145>,  <43.020950, 33.313255, 27.307299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369843, 33.528801, 27.872145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402218, 33.799831, 27.579750>,  <43.421642, 33.962448, 27.404312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402218, 33.799831, 27.579750>,  <43.369843, 33.528801, 27.872145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402218, 33.799831, 27.579750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450043, 0.679220, 0.579760,
		0.889331, 0.282053, 0.359910,
		0.080935, 0.677574, -0.730988,
		43.426498, 34.003105, 27.360455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577595, 34.138321, 28.209946>,  <43.369843, 33.528801, 27.872145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577595, 34.138321, 28.209946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468037, 34.272743, 27.849491>,  <43.402302, 34.353397, 27.633219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468037, 34.272743, 27.849491>,  <43.577595, 34.138321, 28.209946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468037, 34.272743, 27.849491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556590, 0.708735, 0.433477,
		0.784340, 0.620291, -0.007073,
		-0.273895, 0.336057, -0.901137,
		43.385868, 34.373562, 27.579149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703930, 34.875378, 28.187679>,  <43.577595, 34.138321, 28.209946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703930, 34.875378, 28.187679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427513, 34.804348, 27.907413>,  <43.261662, 34.761730, 27.739254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427513, 34.804348, 27.907413>,  <43.703930, 34.875378, 28.187679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427513, 34.804348, 27.907413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579629, 0.715284, 0.390385,
		0.431849, 0.675896, -0.597219,
		-0.691041, -0.177578, -0.700663,
		43.220200, 34.751076, 27.697214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379883, 35.477398, 28.136480>,  <43.703930, 34.875378, 28.187679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379883, 35.477398, 28.136480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114895, 35.246407, 27.945633>,  <42.955902, 35.107811, 27.831125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114895, 35.246407, 27.945633>,  <43.379883, 35.477398, 28.136480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114895, 35.246407, 27.945633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746034, 0.451214, 0.489734,
		-0.067531, 0.680382, -0.729739,
		-0.662474, -0.577483, -0.477118,
		42.916153, 35.073162, 27.802498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768513, 35.893810, 27.870150>,  <43.379883, 35.477398, 28.136480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768513, 35.893810, 27.870150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682949, 35.511963, 27.953041>,  <42.631611, 35.282856, 28.002777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682949, 35.511963, 27.953041>,  <42.768513, 35.893810, 27.870150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682949, 35.511963, 27.953041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761600, 0.295826, 0.576587,
		-0.611725, -0.034489, -0.790318,
		-0.213911, -0.954619, 0.207230,
		42.618774, 35.225578, 28.015211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011730, 36.015747, 27.957621>,  <42.768513, 35.893810, 27.870150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011730, 36.015747, 27.957621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073597, 35.639782, 28.079372>,  <42.110718, 35.414204, 28.152424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073597, 35.639782, 28.079372>,  <42.011730, 36.015747, 27.957621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073597, 35.639782, 28.079372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700406, 0.112973, 0.704747,
		-0.696786, -0.322189, -0.640846,
		0.154663, -0.939910, 0.304381,
		42.119995, 35.357807, 28.170687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329132, 35.637451, 28.000422>,  <42.011730, 36.015747, 27.957621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329132, 35.637451, 28.000422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604507, 35.450344, 28.222141>,  <41.769733, 35.338078, 28.355173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604507, 35.450344, 28.222141>,  <41.329132, 35.637451, 28.000422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604507, 35.450344, 28.222141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596107, 0.070446, 0.799809,
		-0.413175, -0.881038, -0.230344,
		0.688435, -0.467771, 0.554299,
		41.811039, 35.310013, 28.388432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021065, 35.128719, 28.446115>,  <41.329132, 35.637451, 28.000422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021065, 35.128719, 28.446115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376286, 35.187187, 28.620468>,  <41.589420, 35.222267, 28.725080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376286, 35.187187, 28.620468>,  <41.021065, 35.128719, 28.446115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376286, 35.187187, 28.620468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439340, -0.009451, 0.898271,
		0.135415, -0.989215, 0.055823,
		0.888056, 0.146165, 0.435881,
		41.642704, 35.231037, 28.751232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047348, 34.663876, 29.066095>,  <41.021065, 35.128719, 28.446115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047348, 34.663876, 29.066095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315243, 34.956055, 29.119612>,  <41.475979, 35.131363, 29.151722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315243, 34.956055, 29.119612>,  <41.047348, 34.663876, 29.066095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315243, 34.956055, 29.119612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296272, 0.097625, 0.950101,
		0.680938, -0.675956, 0.281795,
		0.669736, 0.730447, 0.133790,
		41.516163, 35.175190, 29.159748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252552, 34.480652, 29.685568>,  <41.047348, 34.663876, 29.066095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252552, 34.480652, 29.685568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346645, 34.866161, 29.635271>,  <41.403103, 35.097466, 29.605093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346645, 34.866161, 29.635271>,  <41.252552, 34.480652, 29.685568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346645, 34.866161, 29.635271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346225, 0.203977, 0.915708,
		0.908182, -0.171868, 0.381663,
		0.235232, 0.963771, -0.125743,
		41.417213, 35.155293, 29.597548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663895, 34.678070, 30.350296>,  <41.252552, 34.480652, 29.685568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663895, 34.678070, 30.350296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552490, 35.006733, 30.151371>,  <41.485649, 35.203930, 30.032017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552490, 35.006733, 30.151371>,  <41.663895, 34.678070, 30.350296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552490, 35.006733, 30.151371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267561, 0.430923, 0.861810,
		0.922412, 0.373083, 0.099826,
		-0.278509, 0.821654, -0.497311,
		41.468937, 35.253227, 30.002178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988419, 35.243607, 30.683182>,  <41.663895, 34.678070, 30.350296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988419, 35.243607, 30.683182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674072, 35.389256, 30.483252>,  <41.485462, 35.476643, 30.363293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674072, 35.389256, 30.483252>,  <41.988419, 35.243607, 30.683182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674072, 35.389256, 30.483252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440316, 0.238039, 0.865713,
		0.434201, 0.900419, -0.026740,
		-0.785870, 0.364119, -0.499826,
		41.438313, 35.498493, 30.333303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845337, 35.809402, 30.975622>,  <41.988419, 35.243607, 30.683182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845337, 35.809402, 30.975622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494434, 35.736256, 30.798090>,  <41.283894, 35.692368, 30.691570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494434, 35.736256, 30.798090>,  <41.845337, 35.809402, 30.975622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494434, 35.736256, 30.798090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479946, 0.351293, 0.803894,
		0.008905, 0.918233, -0.395941,
		-0.877253, -0.182872, -0.443830,
		41.231258, 35.681393, 30.664942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496700, 36.430138, 31.085991>,  <41.845337, 35.809402, 30.975622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496700, 36.430138, 31.085991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197399, 36.179359, 30.999222>,  <41.017818, 36.028893, 30.947161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197399, 36.179359, 30.999222>,  <41.496700, 36.430138, 31.085991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197399, 36.179359, 30.999222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497755, 0.314384, 0.808333,
		-0.438585, 0.712812, -0.547305,
		-0.748254, -0.626946, -0.216922,
		40.972923, 35.991276, 30.934145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850452, 36.840466, 31.214989>,  <41.496700, 36.430138, 31.085991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850452, 36.840466, 31.214989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705959, 36.468075, 31.193829>,  <40.619263, 36.244640, 31.181133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705959, 36.468075, 31.193829>,  <40.850452, 36.840466, 31.214989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705959, 36.468075, 31.193829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724383, 0.244444, 0.644605,
		-0.587180, 0.271170, -0.762683,
		-0.361231, -0.930975, -0.052898,
		40.597591, 36.188782, 31.177959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125820, 36.977379, 30.994745>,  <40.850452, 36.840466, 31.214989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125820, 36.977379, 30.994745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142136, 36.606884, 31.144632>,  <40.151924, 36.384586, 31.234564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142136, 36.606884, 31.144632>,  <40.125820, 36.977379, 30.994745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142136, 36.606884, 31.144632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909195, 0.121119, 0.398364,
		-0.414367, -0.356941, -0.837194,
		0.040793, -0.926241, 0.374717,
		40.154373, 36.329010, 31.257048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416668, 36.619209, 30.925013>,  <40.125820, 36.977379, 30.994745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416668, 36.619209, 30.925013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636570, 36.488510, 31.232519>,  <39.768513, 36.410091, 31.417023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636570, 36.488510, 31.232519>,  <39.416668, 36.619209, 30.925013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636570, 36.488510, 31.232519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763740, 0.176138, 0.621029,
		-0.338331, -0.928552, -0.152719,
		0.549758, -0.326751, 0.768765,
		39.801498, 36.390484, 31.463148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920624, 36.390545, 31.390560>,  <39.416668, 36.619209, 30.925013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920624, 36.390545, 31.390560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220879, 36.367767, 31.653862>,  <39.401031, 36.354103, 31.811842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220879, 36.367767, 31.653862>,  <38.920624, 36.390545, 31.390560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220879, 36.367767, 31.653862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633808, 0.219340, 0.741739,
		-0.186617, -0.973986, 0.128555,
		0.750641, -0.056942, 0.658253,
		39.446072, 36.350685, 31.851337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639236, 36.162369, 31.987965>,  <38.920624, 36.390545, 31.390560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639236, 36.162369, 31.987965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973984, 36.362610, 32.076546>,  <39.174831, 36.482754, 32.129696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973984, 36.362610, 32.076546>,  <38.639236, 36.162369, 31.987965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973984, 36.362610, 32.076546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433429, 0.358894, 0.826640,
		0.334337, -0.787778, 0.517324,
		0.836874, 0.500600, 0.221455,
		39.225044, 36.512791, 32.142982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633923, 36.141144, 32.718029>,  <38.639236, 36.162369, 31.987965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633923, 36.141144, 32.718029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901649, 36.414238, 32.600803>,  <39.062286, 36.578094, 32.530468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901649, 36.414238, 32.600803>,  <38.633923, 36.141144, 32.718029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901649, 36.414238, 32.600803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172285, 0.526319, 0.832650,
		0.722725, -0.506816, 0.469899,
		0.669317, 0.682734, -0.293067,
		39.102444, 36.619057, 32.512882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106747, 36.242203, 33.261974>,  <38.633923, 36.141144, 32.718029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106747, 36.242203, 33.261974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150452, 36.575874, 33.045750>,  <39.176674, 36.776077, 32.916016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150452, 36.575874, 33.045750>,  <39.106747, 36.242203, 33.261974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150452, 36.575874, 33.045750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106688, 0.550520, 0.827977,
		0.988271, -0.032794, 0.149147,
		0.109262, 0.834177, -0.540564,
		39.183231, 36.826126, 32.883579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610413, 36.638493, 33.641739>,  <39.106747, 36.242203, 33.261974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610413, 36.638493, 33.641739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394512, 36.892670, 33.420876>,  <39.264973, 37.045177, 33.288357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394512, 36.892670, 33.420876>,  <39.610413, 36.638493, 33.641739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394512, 36.892670, 33.420876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067491, 0.621133, 0.780794,
		0.839116, 0.458699, -0.292369,
		-0.539750, 0.635444, -0.552160,
		39.232586, 37.083302, 33.255226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034653, 37.233429, 33.705280>,  <39.610413, 36.638493, 33.641739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034653, 37.233429, 33.705280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670235, 37.321621, 33.565922>,  <39.451584, 37.374535, 33.482307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670235, 37.321621, 33.565922>,  <40.034653, 37.233429, 33.705280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670235, 37.321621, 33.565922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090446, 0.717550, 0.690610,
		0.402259, 0.660689, -0.633780,
		-0.911047, 0.220481, -0.348398,
		39.396919, 37.387764, 33.461403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032043, 37.956005, 33.705547>,  <40.034653, 37.233429, 33.705280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032043, 37.956005, 33.705547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642464, 37.865398, 33.709694>,  <39.408714, 37.811035, 33.712181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642464, 37.865398, 33.709694>,  <40.032043, 37.956005, 33.705547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642464, 37.865398, 33.709694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141700, 0.643671, 0.752069,
		-0.177026, 0.731011, -0.659003,
		-0.973952, -0.226517, 0.010363,
		39.350277, 37.797443, 33.712803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721252, 38.703465, 33.728497>,  <40.032043, 37.956005, 33.705547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721252, 38.703465, 33.728497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446587, 38.430515, 33.828789>,  <39.281788, 38.266747, 33.888966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446587, 38.430515, 33.828789>,  <39.721252, 38.703465, 33.728497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446587, 38.430515, 33.828789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021210, 0.363555, 0.931331,
		-0.726667, 0.634192, -0.264113,
		-0.686662, -0.682370, 0.250732,
		39.240589, 38.225803, 33.904007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187210, 39.043423, 34.113701>,  <39.721252, 38.703465, 33.728497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187210, 39.043423, 34.113701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111740, 38.665131, 34.219532>,  <39.066460, 38.438156, 34.283031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111740, 38.665131, 34.219532>,  <39.187210, 39.043423, 34.113701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111740, 38.665131, 34.219532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232375, 0.304762, 0.923646,
		-0.954152, 0.112783, -0.277263,
		-0.188671, -0.945728, 0.264581,
		39.055138, 38.381413, 34.298904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499649, 39.001793, 34.380447>,  <39.187210, 39.043423, 34.113701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499649, 39.001793, 34.380447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650333, 38.668430, 34.542202>,  <38.740742, 38.468414, 34.639256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650333, 38.668430, 34.542202>,  <38.499649, 39.001793, 34.380447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650333, 38.668430, 34.542202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374357, 0.262347, 0.889399,
		-0.847319, -0.486429, -0.213163,
		0.376707, -0.833404, 0.404390,
		38.763344, 38.418407, 34.663517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900715, 38.680653, 34.898987>,  <38.499649, 39.001793, 34.380447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900715, 38.680653, 34.898987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255348, 38.522041, 34.994263>,  <38.468128, 38.426872, 35.051430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255348, 38.522041, 34.994263>,  <37.900715, 38.680653, 34.898987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255348, 38.522041, 34.994263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174311, 0.190579, 0.966072,
		-0.428472, -0.898022, 0.099844,
		0.886582, -0.396531, 0.238193,
		38.521324, 38.403084, 35.065720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712521, 38.192345, 35.370510>,  <37.900715, 38.680653, 34.898987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712521, 38.192345, 35.370510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100540, 38.260090, 35.440170>,  <38.333351, 38.300735, 35.481968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100540, 38.260090, 35.440170>,  <37.712521, 38.192345, 35.370510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100540, 38.260090, 35.440170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220101, 0.309386, 0.925114,
		0.102796, -0.935734, 0.337395,
		0.970045, 0.169359, 0.174153,
		38.391552, 38.310898, 35.492416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807701, 38.035973, 36.041321>,  <37.712521, 38.192345, 35.370510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807701, 38.035973, 36.041321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119659, 38.266876, 35.944546>,  <38.306835, 38.405418, 35.886482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119659, 38.266876, 35.944546>,  <37.807701, 38.035973, 36.041321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119659, 38.266876, 35.944546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050744, 0.443576, 0.894799,
		0.623846, -0.685576, 0.375236,
		0.779898, 0.577258, -0.241934,
		38.353630, 38.440052, 35.871967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391907, 37.929367, 36.492493>,  <37.807701, 38.035973, 36.041321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391907, 37.929367, 36.492493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402477, 38.302158, 36.347870>,  <38.408821, 38.525833, 36.261097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402477, 38.302158, 36.347870>,  <38.391907, 37.929367, 36.492493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402477, 38.302158, 36.347870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054550, 0.359803, 0.931433,
		0.998161, -0.044338, -0.041331,
		0.026427, 0.931974, -0.361560,
		38.410404, 38.581749, 36.239403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566868, 38.268509, 37.007729>,  <38.391907, 37.929367, 36.492493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566868, 38.268509, 37.007729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509499, 38.586796, 36.772350>,  <38.475079, 38.777767, 36.631123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509499, 38.586796, 36.772350>,  <38.566868, 38.268509, 37.007729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509499, 38.586796, 36.772350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053806, 0.587442, 0.807475,
		0.988198, 0.147470, -0.041437,
		-0.143420, 0.795716, -0.588444,
		38.466473, 38.825512, 36.595818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024925, 38.801151, 37.215679>,  <38.566868, 38.268509, 37.007729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024925, 38.801151, 37.215679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723755, 38.978760, 37.021381>,  <38.543053, 39.085323, 36.904804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723755, 38.978760, 37.021381>,  <39.024925, 38.801151, 37.215679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723755, 38.978760, 37.021381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069445, 0.680371, 0.729571,
		0.654431, 0.583045, -0.481434,
		-0.752926, 0.444020, -0.485745,
		38.497875, 39.111965, 36.875656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224384, 39.537491, 37.035713>,  <39.024925, 38.801151, 37.215679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224384, 39.537491, 37.035713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829670, 39.486301, 37.075455>,  <38.592842, 39.455589, 37.099300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829670, 39.486301, 37.075455>,  <39.224384, 39.537491, 37.035713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829670, 39.486301, 37.075455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004357, 0.634011, 0.773311,
		-0.161954, 0.762662, -0.626193,
		-0.986789, -0.127969, 0.099358,
		38.533634, 39.447910, 37.105263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058628, 40.153587, 37.056934>,  <39.224384, 39.537491, 37.035713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058628, 40.153587, 37.056934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729496, 39.951614, 37.161236>,  <38.532017, 39.830429, 37.223816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729496, 39.951614, 37.161236>,  <39.058628, 40.153587, 37.056934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729496, 39.951614, 37.161236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097329, 0.577277, 0.810727,
		-0.559894, 0.641710, -0.524144,
		-0.822828, -0.504936, 0.260757,
		38.482647, 39.800133, 37.239464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678211, 40.675709, 37.377789>,  <39.058628, 40.153587, 37.056934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678211, 40.675709, 37.377789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570763, 40.307320, 37.490677>,  <38.506294, 40.086285, 37.558411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570763, 40.307320, 37.490677>,  <38.678211, 40.675709, 37.377789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570763, 40.307320, 37.490677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239697, 0.347678, 0.906457,
		-0.932947, 0.175844, -0.314148,
		-0.268618, -0.920977, 0.282216,
		38.490177, 40.031025, 37.575340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042831, 40.800232, 37.764980>,  <38.678211, 40.675709, 37.377789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042831, 40.800232, 37.764980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173817, 40.439373, 37.877335>,  <38.252407, 40.222858, 37.944748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173817, 40.439373, 37.877335>,  <38.042831, 40.800232, 37.764980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173817, 40.439373, 37.877335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270559, 0.195299, 0.942686,
		-0.905300, -0.384688, -0.180132,
		0.327460, -0.902149, 0.280885,
		38.272057, 40.168728, 37.961601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455738, 40.584881, 38.136478>,  <38.042831, 40.800232, 37.764980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455738, 40.584881, 38.136478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797634, 40.416286, 38.257648>,  <38.002773, 40.315128, 38.330349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797634, 40.416286, 38.257648>,  <37.455738, 40.584881, 38.136478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797634, 40.416286, 38.257648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264185, 0.149086, 0.952879,
		-0.446789, -0.894495, 0.016079,
		0.854743, -0.421488, 0.302922,
		38.054058, 40.289841, 38.348526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187752, 40.207722, 38.745533>,  <37.455738, 40.584881, 38.136478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187752, 40.207722, 38.745533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586864, 40.198910, 38.770653>,  <37.826332, 40.193623, 38.785725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586864, 40.198910, 38.770653>,  <37.187752, 40.207722, 38.745533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586864, 40.198910, 38.770653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055489, 0.245506, 0.967806,
		-0.036740, -0.969145, 0.243739,
		0.997783, -0.022033, 0.062796,
		37.886200, 40.192299, 38.789490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317307, 39.872066, 39.328087>,  <37.187752, 40.207722, 38.745533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317307, 39.872066, 39.328087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636028, 40.107471, 39.273293>,  <37.827259, 40.248714, 39.240417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636028, 40.107471, 39.273293>,  <37.317307, 39.872066, 39.328087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636028, 40.107471, 39.273293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036856, 0.178945, 0.983168,
		0.603117, -0.788438, 0.120894,
		0.796801, 0.588510, -0.136983,
		37.875069, 40.284023, 39.232197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725365, 39.873444, 39.964165>,  <37.317307, 39.872066, 39.328087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725365, 39.873444, 39.964165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876472, 40.197330, 39.784542>,  <37.967136, 40.391663, 39.676769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876472, 40.197330, 39.784542>,  <37.725365, 39.873444, 39.964165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876472, 40.197330, 39.784542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274641, 0.365171, 0.889507,
		0.884230, -0.459357, -0.084430,
		0.377770, 0.809717, -0.449054,
		37.989803, 40.440247, 39.649826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437279, 39.981789, 40.197525>,  <37.725365, 39.873444, 39.964165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437279, 39.981789, 40.197525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201637, 40.295681, 40.120430>,  <38.060253, 40.484016, 40.074173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201637, 40.295681, 40.120430>,  <38.437279, 39.981789, 40.197525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201637, 40.295681, 40.120430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006254, 0.234083, 0.972196,
		0.808033, 0.573930, -0.132992,
		-0.589104, 0.784735, -0.192736,
		38.024906, 40.531101, 40.062611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377903, 40.295898, 40.811230>,  <38.437279, 39.981789, 40.197525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377903, 40.295898, 40.811230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202141, 40.603958, 40.626278>,  <38.096684, 40.788792, 40.515308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202141, 40.603958, 40.626278>,  <38.377903, 40.295898, 40.811230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202141, 40.603958, 40.626278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104070, 0.467624, 0.877780,
		0.892238, 0.433825, -0.125330,
		-0.439410, 0.770145, -0.462380,
		38.070316, 40.835003, 40.487564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690353, 40.910015, 41.105049>,  <38.377903, 40.295898, 40.811230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690353, 40.910015, 41.105049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341042, 41.028824, 40.950558>,  <38.131454, 41.100109, 40.857864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341042, 41.028824, 40.950558>,  <38.690353, 40.910015, 41.105049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341042, 41.028824, 40.950558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213826, 0.478651, 0.851570,
		0.437798, 0.826241, -0.354485,
		-0.873276, 0.297017, -0.386224,
		38.079060, 41.117928, 40.834690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647076, 41.676765, 41.188145>,  <38.690353, 40.910015, 41.105049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647076, 41.676765, 41.188145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256958, 41.588577, 41.182648>,  <38.022888, 41.535664, 41.179352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256958, 41.588577, 41.182648>,  <38.647076, 41.676765, 41.188145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256958, 41.588577, 41.182648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172206, 0.719899, 0.672377,
		-0.138348, 0.658133, -0.740082,
		-0.975297, -0.220468, -0.013738,
		37.964367, 41.522438, 41.178528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189632, 42.293068, 41.398899>,  <38.647076, 41.676765, 41.188145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189632, 42.293068, 41.398899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831940, 42.129860, 41.472515>,  <37.617325, 42.031937, 41.516685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831940, 42.129860, 41.472515>,  <38.189632, 42.293068, 41.398899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831940, 42.129860, 41.472515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257684, 0.805477, 0.533672,
		-0.365990, 0.429802, -0.825422,
		-0.894231, -0.408017, 0.184044,
		37.563671, 42.007454, 41.527729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695782, 42.863506, 41.349312>,  <38.189632, 42.293068, 41.398899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695782, 42.863506, 41.349312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551552, 42.558945, 41.564816>,  <37.465015, 42.376209, 41.694118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551552, 42.558945, 41.564816>,  <37.695782, 42.863506, 41.349312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551552, 42.558945, 41.564816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600208, 0.631538, 0.490826,
		-0.713960, -0.146388, -0.684713,
		-0.360572, -0.761400, 0.538755,
		37.443378, 42.330524, 41.726440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995583, 42.803310, 41.359913>,  <37.695782, 42.863506, 41.349312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995583, 42.803310, 41.359913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155834, 42.663101, 41.698528>,  <37.251987, 42.578976, 41.901695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155834, 42.663101, 41.698528>,  <36.995583, 42.803310, 41.359913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155834, 42.663101, 41.698528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295206, 0.825274, 0.481432,
		-0.867379, -0.442780, 0.227155,
		0.400633, -0.350527, 0.846537,
		37.276024, 42.557941, 41.952488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750858, 43.152161, 41.888313>,  <36.995583, 42.803310, 41.359913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750858, 43.152161, 41.888313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032364, 42.965885, 42.102921>,  <37.201267, 42.854122, 42.231686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032364, 42.965885, 42.102921>,  <36.750858, 43.152161, 41.888313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032364, 42.965885, 42.102921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104717, 0.678952, 0.726676,
		-0.702672, -0.567592, 0.429058,
		0.703766, -0.465685, 0.536517,
		37.243492, 42.826180, 42.263874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487938, 42.948277, 42.579441>,  <36.750858, 43.152161, 41.888313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487938, 42.948277, 42.579441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885174, 42.990761, 42.599434>,  <37.123516, 43.016251, 42.611427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885174, 42.990761, 42.599434>,  <36.487938, 42.948277, 42.579441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885174, 42.990761, 42.599434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101204, 0.559011, 0.822961,
		0.059467, -0.822330, 0.565895,
		0.993087, 0.106210, 0.049980,
		37.183102, 43.022625, 42.614429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557713, 42.923542, 43.315247>,  <36.487938, 42.948277, 42.579441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557713, 42.923542, 43.315247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890739, 43.083008, 43.161415>,  <37.090553, 43.178688, 43.069115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890739, 43.083008, 43.161415>,  <36.557713, 42.923542, 43.315247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890739, 43.083008, 43.161415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021553, 0.717071, 0.696667,
		0.553509, -0.571731, 0.605600,
		0.832564, 0.398664, -0.384583,
		37.140507, 43.202606, 43.046040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085873, 42.906765, 43.851784>,  <36.557713, 42.923542, 43.315247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085873, 42.906765, 43.851784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129589, 43.198647, 43.581799>,  <37.155819, 43.373775, 43.419807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129589, 43.198647, 43.581799>,  <37.085873, 42.906765, 43.851784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129589, 43.198647, 43.581799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122980, 0.683744, 0.719284,
		0.986372, 0.004394, 0.164469,
		0.109294, 0.729708, -0.674967,
		37.162376, 43.417561, 43.379307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469570, 43.269112, 44.270138>,  <37.085873, 42.906765, 43.851784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469570, 43.269112, 44.270138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381870, 43.523373, 43.974064>,  <37.329250, 43.675930, 43.796421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381870, 43.523373, 43.974064>,  <37.469570, 43.269112, 44.270138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381870, 43.523373, 43.974064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124282, 0.734267, 0.667388,
		0.967720, 0.238319, -0.081990,
		-0.219254, 0.635655, -0.740183,
		37.316093, 43.714069, 43.752010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880859, 43.842091, 44.370785>,  <37.469570, 43.269112, 44.270138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880859, 43.842091, 44.370785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566681, 43.949482, 44.147720>,  <37.378174, 44.013916, 44.013882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566681, 43.949482, 44.147720>,  <37.880859, 43.842091, 44.370785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566681, 43.949482, 44.147720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116088, 0.821122, 0.558821,
		0.607940, 0.503664, -0.613784,
		-0.785450, 0.268477, -0.557663,
		37.331047, 44.030025, 43.980423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786625, 44.565685, 44.615112>,  <37.880859, 43.842091, 44.370785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786625, 44.565685, 44.615112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446949, 44.513348, 44.410465>,  <37.243141, 44.481945, 44.287678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446949, 44.513348, 44.410465>,  <37.786625, 44.565685, 44.615112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446949, 44.513348, 44.410465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416336, 0.761870, 0.496203,
		0.324864, 0.634377, -0.701447,
		-0.849192, -0.130839, -0.511619,
		37.192192, 44.474094, 44.256981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570335, 45.185276, 44.705296>,  <37.786625, 44.565685, 44.615112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570335, 45.185276, 44.705296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263714, 44.986549, 44.542534>,  <37.079742, 44.867313, 44.444878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263714, 44.986549, 44.542534>,  <37.570335, 45.185276, 44.705296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263714, 44.986549, 44.542534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609337, 0.762751, 0.216610,
		0.202754, 0.413987, -0.887415,
		-0.766550, -0.496816, -0.406908,
		37.033749, 44.837505, 44.420460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228168, 45.029911, 45.095543>,  <37.570335, 45.185276, 44.705296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228168, 45.029911, 45.095543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382214, 45.149757, 45.444695>,  <38.474640, 45.221664, 45.654186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382214, 45.149757, 45.444695>,  <38.228168, 45.029911, 45.095543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382214, 45.149757, 45.444695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922827, 0.115704, 0.367428,
		0.009091, -0.947018, 0.321053,
		0.385108, 0.299617, 0.872881,
		38.497746, 45.239643, 45.706558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000526, 44.623894, 45.640938>,  <38.228168, 45.029911, 45.095543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000526, 44.623894, 45.640938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089085, 44.998383, 45.750095>,  <38.142220, 45.223076, 45.815590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089085, 44.998383, 45.750095>,  <38.000526, 44.623894, 45.640938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089085, 44.998383, 45.750095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926898, 0.115063, 0.357240,
		0.303057, -0.332033, 0.893259,
		0.221396, 0.936223, 0.272890,
		38.155502, 45.279251, 45.831963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471188, 44.243267, 45.847073>,  <38.000526, 44.623894, 45.640938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471188, 44.243267, 45.847073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170414, 44.422382, 46.040604>,  <36.989952, 44.529850, 46.156723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170414, 44.422382, 46.040604>,  <37.471188, 44.243267, 45.847073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170414, 44.422382, 46.040604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374399, 0.314000, -0.872484,
		-0.542608, -0.837192, -0.068455,
		-0.751932, 0.447788, 0.483823,
		36.944836, 44.556717, 46.185749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978367, 43.920788, 45.656639>,  <37.471188, 44.243267, 45.847073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978367, 43.920788, 45.656639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825073, 44.272419, 45.770027>,  <36.733097, 44.483398, 45.838058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825073, 44.272419, 45.770027>,  <36.978367, 43.920788, 45.656639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825073, 44.272419, 45.770027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546921, 0.031341, -0.836598,
		-0.744320, -0.475643, 0.468776,
		-0.383230, 0.879079, 0.283467,
		36.710106, 44.536144, 45.855068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687588, 44.195770, 45.057972>,  <36.978367, 43.920788, 45.656639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687588, 44.195770, 45.057972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641598, 44.519402, 44.827431>,  <36.614006, 44.713581, 44.689106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641598, 44.519402, 44.827431>,  <36.687588, 44.195770, 45.057972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641598, 44.519402, 44.827431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215130, -0.546150, -0.809592,
		-0.969794, -0.217069, -0.111265,
		-0.114970, 0.809074, -0.576351,
		36.607105, 44.762123, 44.654526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109386, 44.036037, 44.502750>,  <36.687588, 44.195770, 45.057972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109386, 44.036037, 44.502750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354847, 44.331837, 44.392067>,  <36.502125, 44.509315, 44.325657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354847, 44.331837, 44.392067>,  <36.109386, 44.036037, 44.502750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354847, 44.331837, 44.392067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146878, -0.451249, -0.880228,
		-0.775793, 0.499514, -0.385528,
		0.613655, 0.739500, -0.276708,
		36.538944, 44.553688, 44.309055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005768, 44.179588, 43.752514>,  <36.109386, 44.036037, 44.502750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005768, 44.179588, 43.752514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374458, 44.279938, 43.870831>,  <36.595673, 44.340149, 43.941822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374458, 44.279938, 43.870831>,  <36.005768, 44.179588, 43.752514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374458, 44.279938, 43.870831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375266, -0.384144, -0.843569,
		-0.098002, 0.888536, -0.448218,
		0.921722, 0.250873, 0.295791,
		36.650974, 44.355198, 43.959568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359028, 44.550735, 43.233925>,  <36.005768, 44.179588, 43.752514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359028, 44.550735, 43.233925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663570, 44.402786, 43.446915>,  <36.846298, 44.314018, 43.574707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663570, 44.402786, 43.446915>,  <36.359028, 44.550735, 43.233925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663570, 44.402786, 43.446915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393639, -0.388863, -0.832967,
		0.515148, 0.843790, -0.150469,
		0.761361, -0.369871, 0.532471,
		36.891979, 44.291824, 43.606655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027687, 44.603069, 42.817802>,  <36.359028, 44.550735, 43.233925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027687, 44.603069, 42.817802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114861, 44.316181, 43.082561>,  <37.167164, 44.144047, 43.241417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114861, 44.316181, 43.082561>,  <37.027687, 44.603069, 42.817802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114861, 44.316181, 43.082561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395194, -0.555256, -0.731787,
		0.892372, 0.421055, 0.162434,
		0.217930, -0.717219, 0.661894,
		37.180241, 44.101017, 43.281128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700829, 44.352367, 42.646549>,  <37.027687, 44.603069, 42.817802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700829, 44.352367, 42.646549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555824, 44.051796, 42.867073>,  <37.468822, 43.871452, 42.999386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555824, 44.051796, 42.867073>,  <37.700829, 44.352367, 42.646549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555824, 44.051796, 42.867073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461446, -0.658660, -0.594336,
		0.809726, 0.038946, 0.585515,
		-0.362508, -0.751432, 0.551305,
		37.447071, 43.826366, 43.032463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222290, 43.824978, 42.702705>,  <37.700829, 44.352367, 42.646549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222290, 43.824978, 42.702705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891171, 43.623878, 42.802303>,  <37.692501, 43.503220, 42.862064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891171, 43.623878, 42.802303>,  <38.222290, 43.824978, 42.702705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891171, 43.623878, 42.802303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294710, -0.767324, -0.569525,
		0.477390, -0.398068, 0.783352,
		-0.827795, -0.502748, 0.248998,
		37.642834, 43.473053, 42.877003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479557, 43.150078, 42.652981>,  <38.222290, 43.824978, 42.702705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479557, 43.150078, 42.652981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080757, 43.135151, 42.625862>,  <37.841476, 43.126194, 42.609592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080757, 43.135151, 42.625862>,  <38.479557, 43.150078, 42.652981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080757, 43.135151, 42.625862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071136, -0.786890, -0.612980,
		-0.030475, -0.615964, 0.787184,
		-0.997001, -0.037316, -0.067797,
		37.781658, 43.123955, 42.605522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358341, 42.482639, 42.712883>,  <38.479557, 43.150078, 42.652981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358341, 42.482639, 42.712883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024616, 42.630764, 42.549519>,  <37.824383, 42.719639, 42.451500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024616, 42.630764, 42.549519>,  <38.358341, 42.482639, 42.712883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024616, 42.630764, 42.549519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058302, -0.677399, -0.733302,
		-0.548207, -0.635611, 0.543569,
		-0.834308, 0.370310, -0.408412,
		37.774323, 42.741856, 42.426994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989052, 41.963524, 43.031494>,  <38.358341, 42.482639, 42.712883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989052, 41.963524, 43.031494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768497, 42.221638, 42.819992>,  <37.636166, 42.376507, 42.693092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768497, 42.221638, 42.819992>,  <37.989052, 41.963524, 43.031494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768497, 42.221638, 42.819992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358641, -0.755600, -0.548129,
		-0.753186, -0.112645, 0.648092,
		-0.551442, 0.645275, -0.528708,
		37.603081, 42.415222, 42.661366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427437, 41.569557, 42.817673>,  <37.989052, 41.963524, 43.031494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427437, 41.569557, 42.817673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405884, 41.888111, 42.576717>,  <37.392952, 42.079243, 42.432144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405884, 41.888111, 42.576717>,  <37.427437, 41.569557, 42.817673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405884, 41.888111, 42.576717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088250, -0.604701, -0.791548,
		-0.994640, 0.010511, 0.102863,
		-0.053881, 0.796383, -0.602388,
		37.389721, 42.127026, 42.396000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830975, 41.362507, 42.284081>,  <37.427437, 41.569557, 42.817673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830975, 41.362507, 42.284081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044010, 41.665958, 42.133968>,  <37.171829, 41.848030, 42.043903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044010, 41.665958, 42.133968>,  <36.830975, 41.362507, 42.284081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044010, 41.665958, 42.133968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270819, -0.572829, -0.773643,
		-0.801878, 0.310401, -0.510533,
		0.532587, 0.758629, -0.375277,
		37.203785, 41.893547, 42.021385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634377, 41.541260, 41.610352>,  <36.830975, 41.362507, 42.284081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634377, 41.541260, 41.610352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024624, 41.591560, 41.682293>,  <37.258774, 41.621742, 41.725460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024624, 41.591560, 41.682293>,  <36.634377, 41.541260, 41.610352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024624, 41.591560, 41.682293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219184, -0.599506, -0.769773,
		0.011022, 0.790429, -0.612454,
		0.975621, 0.125756, 0.179857,
		37.317310, 41.629288, 41.736252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039200, 41.841614, 40.967804>,  <36.634377, 41.541260, 41.610352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039200, 41.841614, 40.967804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273308, 41.586319, 41.167850>,  <37.413773, 41.433144, 41.287876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273308, 41.586319, 41.167850>,  <37.039200, 41.841614, 40.967804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273308, 41.586319, 41.167850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007900, -0.612267, -0.790611,
		0.810802, 0.466670, -0.353298,
		0.585268, -0.638238, 0.500114,
		37.448887, 41.394848, 41.317886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038616, 41.628834, 40.283096>,  <37.039200, 41.841614, 40.967804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038616, 41.628834, 40.283096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374363, 41.479664, 40.441280>,  <37.575813, 41.390163, 40.536190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374363, 41.479664, 40.441280>,  <37.038616, 41.628834, 40.283096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374363, 41.479664, 40.441280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165402, -0.517795, -0.839363,
		0.517786, 0.769945, -0.372938,
		0.839369, -0.372926, 0.395457,
		37.626175, 41.367786, 40.559917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572685, 41.781284, 39.786388>,  <37.038616, 41.628834, 40.283096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572685, 41.781284, 39.786388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725376, 41.479580, 40.000069>,  <37.816990, 41.298557, 40.128277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725376, 41.479580, 40.000069>,  <37.572685, 41.781284, 39.786388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725376, 41.479580, 40.000069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338558, -0.423697, -0.840155,
		0.860036, 0.501570, 0.093624,
		0.381728, -0.754260, 0.534205,
		37.839893, 41.253304, 40.160332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317265, 41.745800, 39.633785>,  <37.572685, 41.781284, 39.786388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317265, 41.745800, 39.633785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198185, 41.382359, 39.750961>,  <38.126736, 41.164295, 39.821266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198185, 41.382359, 39.750961>,  <38.317265, 41.745800, 39.633785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198185, 41.382359, 39.750961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387968, -0.395521, -0.832492,
		0.872269, -0.134183, 0.470256,
		-0.297703, -0.908602, 0.292942,
		38.108875, 41.109779, 39.838844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472393, 41.422180, 39.030910>,  <38.317265, 41.745800, 39.633785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472393, 41.422180, 39.030910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347862, 41.111862, 39.250443>,  <38.273144, 40.925671, 39.382160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347862, 41.111862, 39.250443>,  <38.472393, 41.422180, 39.030910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347862, 41.111862, 39.250443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260696, -0.625097, -0.735725,
		0.913846, -0.085971, 0.396856,
		-0.311324, -0.775798, 0.548830,
		38.254463, 40.879124, 39.415092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972088, 40.917011, 38.874813>,  <38.472393, 41.422180, 39.030910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972088, 40.917011, 38.874813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665657, 40.695351, 39.005070>,  <38.481800, 40.562355, 39.083225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665657, 40.695351, 39.005070>,  <38.972088, 40.917011, 38.874813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665657, 40.695351, 39.005070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158857, -0.654164, -0.739482,
		0.622807, -0.514770, 0.589171,
		-0.766078, -0.554149, 0.325643,
		38.435833, 40.529106, 39.102764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227036, 40.287525, 38.979263>,  <38.972088, 40.917011, 38.874813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227036, 40.287525, 38.979263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831188, 40.256992, 38.930557>,  <38.593681, 40.238670, 38.901333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831188, 40.256992, 38.930557>,  <39.227036, 40.287525, 38.979263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831188, 40.256992, 38.930557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143614, -0.557412, -0.817720,
		-0.005453, -0.826719, 0.562589,
		-0.989619, -0.076337, -0.121768,
		38.534302, 40.234093, 38.894028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188438, 39.721741, 38.555851>,  <39.227036, 40.287525, 38.979263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188438, 39.721741, 38.555851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818672, 39.869377, 38.517437>,  <38.596813, 39.957958, 38.494389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818672, 39.869377, 38.517437>,  <39.188438, 39.721741, 38.555851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818672, 39.869377, 38.517437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067412, -0.405979, -0.911393,
		-0.375367, -0.836038, 0.400176,
		-0.924422, 0.369083, -0.096031,
		38.541348, 39.980103, 38.488628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603706, 39.102257, 38.505413>,  <39.188438, 39.721741, 38.555851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603706, 39.102257, 38.505413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489288, 39.444984, 38.333817>,  <38.420639, 39.650623, 38.230858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489288, 39.444984, 38.333817>,  <38.603706, 39.102257, 38.505413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489288, 39.444984, 38.333817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046095, -0.459483, -0.886989,
		-0.957108, -0.233942, 0.170927,
		-0.286042, 0.856823, -0.428991,
		38.403477, 39.702030, 38.205120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086338, 39.019436, 39.069771>,  <38.603706, 39.102257, 38.505413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086338, 39.019436, 39.069771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206089, 39.143269, 38.708763>,  <39.277939, 39.217567, 38.492161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206089, 39.143269, 38.708763>,  <39.086338, 39.019436, 39.069771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206089, 39.143269, 38.708763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613313, 0.787033, 0.066526,
		0.730905, 0.533609, 0.425487,
		0.299374, 0.309581, -0.902516,
		39.295902, 39.236141, 38.438007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653320, 38.439980, 38.927380>,  <39.086338, 39.019436, 39.069771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653320, 38.439980, 38.927380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613068, 38.266075, 38.569416>,  <39.588917, 38.161732, 38.354637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613068, 38.266075, 38.569416>,  <39.653320, 38.439980, 38.927380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613068, 38.266075, 38.569416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883459, 0.374629, -0.281340,
		0.457574, -0.818926, 0.346392,
		-0.100628, -0.434757, -0.894908,
		39.582878, 38.135647, 38.300945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288300, 38.207588, 38.848042>,  <39.653320, 38.439980, 38.927380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288300, 38.207588, 38.848042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124016, 38.228268, 38.483921>,  <40.025444, 38.240677, 38.265450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124016, 38.228268, 38.483921>,  <40.288300, 38.207588, 38.848042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124016, 38.228268, 38.483921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882156, 0.274904, -0.382398,
		0.230475, -0.960081, -0.158513,
		-0.410709, 0.051700, -0.910300,
		40.000805, 38.243778, 38.210831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621040, 37.772766, 38.292023>,  <40.288300, 38.207588, 38.848042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621040, 37.772766, 38.292023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444038, 38.063969, 38.082569>,  <40.337837, 38.238689, 37.956898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444038, 38.063969, 38.082569>,  <40.621040, 37.772766, 38.292023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444038, 38.063969, 38.082569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856544, 0.170210, -0.487197,
		-0.265554, -0.664105, -0.698889,
		-0.442508, 0.728006, -0.523635,
		40.311287, 38.282372, 37.925480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629814, 37.576427, 37.621277>,  <40.621040, 37.772766, 38.292023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629814, 37.576427, 37.621277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618324, 37.967934, 37.702465>,  <40.611431, 38.202835, 37.751179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618324, 37.967934, 37.702465>,  <40.629814, 37.576427, 37.621277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618324, 37.967934, 37.702465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947280, 0.091476, -0.307072,
		-0.319117, 0.183452, -0.929790,
		-0.028720, 0.978763, 0.202972,
		40.609707, 38.261562, 37.763355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015232, 37.365578, 37.102245>,  <40.629814, 37.576427, 37.621277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015232, 37.365578, 37.102245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893414, 37.029327, 37.281399>,  <40.820320, 36.827579, 37.388893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893414, 37.029327, 37.281399>,  <41.015232, 37.365578, 37.102245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893414, 37.029327, 37.281399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828592, -0.465729, -0.310695,
		0.469771, 0.276493, 0.838372,
		-0.304549, -0.840623, 0.447886,
		40.802048, 36.777142, 37.415764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565868, 37.297546, 37.645638>,  <41.015232, 37.365578, 37.102245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565868, 37.297546, 37.645638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378044, 36.981174, 37.488697>,  <41.265350, 36.791351, 37.394531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378044, 36.981174, 37.488697>,  <41.565868, 37.297546, 37.645638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378044, 36.981174, 37.488697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882403, -0.435310, -0.178519,
		-0.029597, -0.430037, 0.902326,
		-0.469561, -0.790932, -0.392350,
		41.237175, 36.743896, 37.370991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683372, 36.623497, 37.993153>,  <41.565868, 37.297546, 37.645638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683372, 36.623497, 37.993153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628494, 36.611156, 37.597126>,  <41.595566, 36.603752, 37.359512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628494, 36.611156, 37.597126>,  <41.683372, 36.623497, 37.993153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628494, 36.611156, 37.597126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970749, -0.203008, -0.128197,
		-0.197036, -0.978691, 0.057798,
		-0.137199, -0.030847, -0.990063,
		41.587334, 36.601902, 37.300106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005798, 36.074085, 37.656300>,  <41.683372, 36.623497, 37.993153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005798, 36.074085, 37.656300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994102, 36.355553, 37.372330>,  <41.987083, 36.524433, 37.201946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994102, 36.355553, 37.372330>,  <42.005798, 36.074085, 37.656300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994102, 36.355553, 37.372330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955620, -0.188614, -0.226308,
		-0.293148, -0.685039, -0.666923,
		-0.029239, 0.703666, -0.709929,
		41.985332, 36.566654, 37.159351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333767, 35.852814, 36.873329>,  <42.005798, 36.074085, 37.656300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333767, 35.852814, 36.873329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352100, 36.234562, 36.991360>,  <42.363098, 36.463612, 37.062180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352100, 36.234562, 36.991360>,  <42.333767, 35.852814, 36.873329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352100, 36.234562, 36.991360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998716, -0.037395, -0.034167,
		-0.021574, 0.296263, -0.954863,
		0.045830, 0.954374, 0.295076,
		42.365849, 36.520874, 37.079884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790615, 36.157310, 36.559196>,  <42.333767, 35.852814, 36.873329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790615, 36.157310, 36.559196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761726, 36.442860, 36.837814>,  <42.744392, 36.614189, 37.004986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761726, 36.442860, 36.837814>,  <42.790615, 36.157310, 36.559196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761726, 36.442860, 36.837814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969268, 0.214897, -0.119743,
		-0.235167, 0.666491, -0.707450,
		-0.072221, 0.713869, 0.696546,
		42.740059, 36.657021, 37.046780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571098, 36.133484, 36.338131>,  <42.790615, 36.157310, 36.559196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571098, 36.133484, 36.338131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858532, 36.381271, 36.211704>,  <44.030991, 36.529945, 36.135849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858532, 36.381271, 36.211704>,  <43.571098, 36.133484, 36.338131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858532, 36.381271, 36.211704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315343, 0.114831, 0.942005,
		0.619836, -0.776577, -0.112830,
		0.718583, 0.619469, -0.316064,
		44.074108, 36.567112, 36.116886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123775, 35.903706, 36.623184>,  <43.571098, 36.133484, 36.338131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123775, 35.903706, 36.623184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132576, 36.301453, 36.581730>,  <44.137856, 36.540100, 36.556858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132576, 36.301453, 36.581730>,  <44.123775, 35.903706, 36.623184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132576, 36.301453, 36.581730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259337, 0.094437, 0.961159,
		0.965536, -0.048024, -0.255800,
		0.022002, 0.994372, -0.103636,
		44.139175, 36.599766, 36.550640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406544, 35.437275, 36.016678>,  <44.123775, 35.903706, 36.623184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406544, 35.437275, 36.016678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375759, 35.038486, 36.021145>,  <44.357288, 34.799213, 36.023823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375759, 35.038486, 36.021145>,  <44.406544, 35.437275, 36.016678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375759, 35.038486, 36.021145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905176, -0.065170, 0.420012,
		-0.418012, 0.042429, 0.907450,
		-0.076959, -0.996972, 0.011163,
		44.352673, 34.739395, 36.024494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016708, 35.498192, 36.502014>,  <44.406544, 35.437275, 36.016678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016708, 35.498192, 36.502014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191551, 35.203907, 36.708958>,  <45.296455, 35.027336, 36.833126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191551, 35.203907, 36.708958>,  <45.016708, 35.498192, 36.502014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191551, 35.203907, 36.708958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404586, -0.352901, -0.843665,
		0.803273, 0.578089, 0.143404,
		0.437106, -0.735713, 0.517363,
		45.322681, 34.983192, 36.864166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759575, 35.297375, 36.186943>,  <45.016708, 35.498192, 36.502014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759575, 35.297375, 36.186943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627075, 34.975487, 36.384003>,  <45.547577, 34.782352, 36.502239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627075, 34.975487, 36.384003>,  <45.759575, 35.297375, 36.186943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.627075, 34.975487, 36.384003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318288, -0.586822, -0.744535,
		0.888238, -0.089822, 0.450516,
		-0.331248, -0.804718, 0.492649,
		45.527702, 34.734070, 36.531796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213776, 35.669273, 35.844524>,  <45.759575, 35.297375, 36.186943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213776, 35.669273, 35.844524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489944, 35.947357, 35.764526>,  <46.655647, 36.114208, 35.716530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489944, 35.947357, 35.764526>,  <46.213776, 35.669273, 35.844524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489944, 35.947357, 35.764526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528396, -0.295829, 0.795791,
		0.494081, -0.655106, -0.571595,
		0.690422, 0.695214, -0.199991,
		46.697071, 36.155922, 35.704529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.066441, 34.982193, 35.377689>,  <46.213776, 35.669273, 35.844524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.066441, 34.982193, 35.377689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.367226, 34.858849, 35.610748>,  <46.547695, 34.784843, 35.750584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.367226, 34.858849, 35.610748>,  <46.066441, 34.982193, 35.377689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367226, 34.858849, 35.610748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657881, 0.294933, -0.692970,
		0.041842, 0.904395, 0.424640,
		0.751959, -0.308358, 0.582643,
		46.592812, 34.766342, 35.785542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.716122, 35.340351, 35.083725>,  <46.066441, 34.982193, 35.377689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.716122, 35.340351, 35.083725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.850883, 35.098400, 35.372341>,  <46.931740, 34.953228, 35.545509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.850883, 35.098400, 35.372341>,  <46.716122, 35.340351, 35.083725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.850883, 35.098400, 35.372341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911331, 0.016945, -0.411325,
		0.236575, 0.796139, 0.556952,
		0.336909, -0.604877, 0.721537,
		46.951958, 34.916939, 35.588802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.314228, 35.701668, 35.284966>,  <46.716122, 35.340351, 35.083725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.314228, 35.701668, 35.284966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308224, 35.303326, 35.320862>,  <47.304623, 35.064320, 35.342400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308224, 35.303326, 35.320862>,  <47.314228, 35.701668, 35.284966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.308224, 35.303326, 35.320862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866624, -0.057722, -0.495611,
		0.498735, 0.070334, 0.863896,
		-0.015008, -0.995852, 0.089741,
		47.303722, 35.004570, 35.347786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.917652, 35.402344, 35.384487>,  <47.314228, 35.701668, 35.284966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.917652, 35.402344, 35.384487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.770977, 35.070858, 35.215363>,  <47.682972, 34.871967, 35.113888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.770977, 35.070858, 35.215363>,  <47.917652, 35.402344, 35.384487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.770977, 35.070858, 35.215363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845270, -0.106897, -0.523538,
		0.388667, -0.549366, 0.739686,
		-0.366684, -0.828716, -0.422815,
		47.660973, 34.822243, 35.088516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.378273, 31.496655, 32.487141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134441, 31.637600, 32.203098>,  <38.988144, 31.722166, 32.032673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134441, 31.637600, 32.203098>,  <39.378273, 31.496655, 32.487141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134441, 31.637600, 32.203098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639699, 0.310404, 0.703161,
		0.468188, 0.882887, 0.036190,
		-0.609578, 0.352363, -0.710109,
		38.951569, 31.743309, 31.990065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325996, 32.174458, 32.609344>,  <39.378273, 31.496655, 32.487141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325996, 32.174458, 32.609344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993507, 32.057796, 32.420029>,  <38.794014, 31.987801, 32.306438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993507, 32.057796, 32.420029>,  <39.325996, 32.174458, 32.609344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993507, 32.057796, 32.420029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555436, 0.399477, 0.729321,
		-0.023639, 0.869112, -0.494049,
		-0.831223, -0.291653, -0.473293,
		38.744141, 31.970301, 32.278042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883320, 32.750286, 32.492371>,  <39.325996, 32.174458, 32.609344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883320, 32.750286, 32.492371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607178, 32.462898, 32.458397>,  <38.441494, 32.290466, 32.438011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607178, 32.462898, 32.458397>,  <38.883320, 32.750286, 32.492371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607178, 32.462898, 32.458397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624658, 0.532711, 0.570983,
		-0.364986, 0.447237, -0.816556,
		-0.690353, -0.718469, -0.084939,
		38.400070, 32.247356, 32.432915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198734, 33.061893, 32.356075>,  <38.883320, 32.750286, 32.492371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198734, 33.061893, 32.356075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115559, 32.708256, 32.523472>,  <38.065655, 32.496071, 32.623909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115559, 32.708256, 32.523472>,  <38.198734, 33.061893, 32.356075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115559, 32.708256, 32.523472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597722, 0.453518, 0.661097,
		-0.774267, -0.112676, -0.622747,
		-0.207938, -0.884096, 0.418493,
		38.053177, 32.443027, 32.649021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441593, 32.989498, 32.454540>,  <38.198734, 33.061893, 32.356075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441593, 32.989498, 32.454540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613369, 32.725948, 32.701591>,  <37.716434, 32.567818, 32.849823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613369, 32.725948, 32.701591>,  <37.441593, 32.989498, 32.454540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613369, 32.725948, 32.701591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648451, 0.251032, 0.718675,
		-0.628561, -0.709130, -0.319445,
		0.429444, -0.658876, 0.617625,
		37.742203, 32.528286, 32.886879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875862, 32.639561, 32.835453>,  <37.441593, 32.989498, 32.454540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875862, 32.639561, 32.835453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199780, 32.591854, 33.065235>,  <37.394131, 32.563229, 33.203106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199780, 32.591854, 33.065235>,  <36.875862, 32.639561, 32.835453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199780, 32.591854, 33.065235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547406, 0.198749, 0.812924,
		-0.211129, -0.972766, 0.095658,
		0.809797, -0.119268, 0.574459,
		37.442719, 32.556072, 33.237572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591713, 32.301029, 33.405155>,  <36.875862, 32.639561, 32.835453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591713, 32.301029, 33.405155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952271, 32.447124, 33.498184>,  <37.168606, 32.534782, 33.554001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952271, 32.447124, 33.498184>,  <36.591713, 32.301029, 33.405155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952271, 32.447124, 33.498184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330656, 0.233844, 0.914321,
		0.279562, -0.901064, 0.331554,
		0.901394, 0.365240, 0.232569,
		37.222691, 32.556694, 33.567955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741642, 32.082752, 34.158249>,  <36.591713, 32.301029, 33.405155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741642, 32.082752, 34.158249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980900, 32.394413, 34.083260>,  <37.124454, 32.581409, 34.038265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980900, 32.394413, 34.083260>,  <36.741642, 32.082752, 34.158249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980900, 32.394413, 34.083260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301069, 0.435282, 0.848461,
		0.742684, -0.451060, 0.494940,
		0.598146, 0.779150, -0.187477,
		37.160343, 32.628159, 34.027016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873283, 32.263966, 34.792816>,  <36.741642, 32.082752, 34.158249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873283, 32.263966, 34.792816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973293, 32.578781, 34.567226>,  <37.033298, 32.767670, 34.431873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973293, 32.578781, 34.567226>,  <36.873283, 32.263966, 34.792816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973293, 32.578781, 34.567226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307014, 0.616855, 0.724729,
		0.918276, -0.008053, 0.395859,
		0.250024, 0.787036, -0.563971,
		37.048302, 32.814892, 34.398037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376022, 32.632034, 35.166882>,  <36.873283, 32.263966, 34.792816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376022, 32.632034, 35.166882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223866, 32.898499, 34.910282>,  <37.132572, 33.058376, 34.756321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223866, 32.898499, 34.910282>,  <37.376022, 32.632034, 35.166882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223866, 32.898499, 34.910282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194272, 0.620613, 0.759670,
		0.904189, 0.413600, -0.106661,
		-0.380395, 0.666164, -0.641502,
		37.109749, 33.098347, 34.717831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785107, 33.119667, 35.262062>,  <37.376022, 32.632034, 35.166882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785107, 33.119667, 35.262062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462963, 33.283676, 35.090816>,  <37.269676, 33.382084, 34.988071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462963, 33.283676, 35.090816>,  <37.785107, 33.119667, 35.262062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462963, 33.283676, 35.090816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042441, 0.680460, 0.731555,
		0.591267, 0.607334, -0.530612,
		-0.805359, 0.410024, -0.428109,
		37.221355, 33.406685, 34.962383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822548, 33.835705, 35.295753>,  <37.785107, 33.119667, 35.262062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822548, 33.835705, 35.295753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.433296, 33.824451, 35.204330>,  <37.199745, 33.817699, 35.149479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.433296, 33.824451, 35.204330>,  <37.822548, 33.835705, 35.295753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433296, 33.824451, 35.204330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173598, 0.741732, 0.647840,
		0.151300, 0.670106, -0.726682,
		-0.973125, -0.028133, -0.228553,
		37.141357, 33.816013, 35.135765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667233, 34.525707, 35.152744>,  <37.822548, 33.835705, 35.295753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667233, 34.525707, 35.152744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.333065, 34.330814, 35.254463>,  <37.132565, 34.213879, 35.315495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.333065, 34.330814, 35.254463>,  <37.667233, 34.525707, 35.152744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333065, 34.330814, 35.254463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240833, 0.740440, 0.627493,
		-0.494032, 0.462978, -0.735924,
		-0.835423, -0.487236, 0.254300,
		37.082439, 34.184643, 35.330753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164803, 35.071243, 35.091702>,  <37.667233, 34.525707, 35.152744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164803, 35.071243, 35.091702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009838, 34.777378, 35.314476>,  <36.916859, 34.601059, 35.448139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009838, 34.777378, 35.314476>,  <37.164803, 35.071243, 35.091702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009838, 34.777378, 35.314476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427669, 0.678394, 0.597395,
		-0.816706, -0.006743, -0.577014,
		-0.387415, -0.734667, 0.556933,
		36.893612, 34.556976, 35.481556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441727, 35.233158, 35.124264>,  <37.164803, 35.071243, 35.091702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441727, 35.233158, 35.124264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520168, 34.983738, 35.426979>,  <36.567234, 34.834084, 35.608608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520168, 34.983738, 35.426979>,  <36.441727, 35.233158, 35.124264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520168, 34.983738, 35.426979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517895, 0.589488, 0.619911,
		-0.832663, -0.513504, -0.207333,
		0.196106, -0.623553, 0.756785,
		36.578999, 34.796673, 35.654015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749496, 35.050480, 35.489353>,  <36.441727, 35.233158, 35.124264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749496, 35.050480, 35.489353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043522, 34.976753, 35.750340>,  <36.219936, 34.932518, 35.906933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043522, 34.976753, 35.750340>,  <35.749496, 35.050480, 35.489353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043522, 34.976753, 35.750340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500549, 0.501568, 0.705606,
		-0.457312, -0.845255, 0.276423,
		0.735062, -0.184318, 0.652465,
		36.264042, 34.921459, 35.946079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406788, 34.797886, 36.176373>,  <35.749496, 35.050480, 35.489353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406788, 34.797886, 36.176373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779728, 34.903664, 36.274990>,  <36.003494, 34.967129, 36.334160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779728, 34.903664, 36.274990>,  <35.406788, 34.797886, 36.176373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779728, 34.903664, 36.274990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357466, 0.572095, 0.738190,
		0.054162, -0.776387, 0.627925,
		0.932354, 0.264444, 0.246546,
		36.059433, 34.982998, 36.348953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505173, 34.647369, 36.854992>,  <35.406788, 34.797886, 36.176373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505173, 34.647369, 36.854992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800488, 34.909069, 36.789398>,  <35.977676, 35.066090, 36.750042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800488, 34.909069, 36.789398>,  <35.505173, 34.647369, 36.854992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800488, 34.909069, 36.789398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324134, 0.557353, 0.764392,
		0.591500, -0.511187, 0.623551,
		0.738285, 0.654252, -0.163981,
		36.021973, 35.105347, 36.740204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695652, 34.957512, 37.442799>,  <35.505173, 34.647369, 36.854992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695652, 34.957512, 37.442799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900414, 35.250027, 37.262497>,  <36.023270, 35.425533, 37.154316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900414, 35.250027, 37.262497>,  <35.695652, 34.957512, 37.442799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900414, 35.250027, 37.262497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153998, 0.594335, 0.789336,
		0.845127, -0.334648, 0.416858,
		0.511903, 0.731284, -0.450754,
		36.053986, 35.469414, 37.127270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272873, 35.175472, 37.920792>,  <35.695652, 34.957512, 37.442799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272873, 35.175472, 37.920792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199482, 35.479424, 37.671341>,  <36.155449, 35.661797, 37.521671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199482, 35.479424, 37.671341>,  <36.272873, 35.175472, 37.920792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199482, 35.479424, 37.671341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166737, 0.601152, 0.781547,
		0.968780, 0.247379, 0.016402,
		-0.183478, 0.759881, -0.623631,
		36.144440, 35.707390, 37.484253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611893, 35.744762, 38.235664>,  <36.272873, 35.175472, 37.920792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611893, 35.744762, 38.235664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350849, 35.902637, 37.976952>,  <36.194221, 35.997364, 37.821724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350849, 35.902637, 37.976952>,  <36.611893, 35.744762, 38.235664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350849, 35.902637, 37.976952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149763, 0.769581, 0.620739,
		0.742748, 0.501963, -0.443125,
		-0.652608, 0.394688, -0.646780,
		36.155067, 36.021046, 37.782917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825020, 36.526558, 38.078461>,  <36.611893, 35.744762, 38.235664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825020, 36.526558, 38.078461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436085, 36.483635, 37.995472>,  <36.202724, 36.457882, 37.945679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436085, 36.483635, 37.995472>,  <36.825020, 36.526558, 38.078461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436085, 36.483635, 37.995472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213503, 0.768560, 0.603102,
		0.094734, 0.630714, -0.770211,
		-0.972338, -0.107308, -0.207468,
		36.144382, 36.451443, 37.933231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197460, 36.984646, 37.685925>,  <36.825020, 36.526558, 38.078461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197460, 36.984646, 37.685925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494476, 37.031837, 37.949654>,  <37.672688, 37.060154, 38.107891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494476, 37.031837, 37.949654>,  <37.197460, 36.984646, 37.685925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494476, 37.031837, 37.949654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636293, -0.431681, -0.639361,
		0.209188, 0.894278, -0.395611,
		0.742544, 0.117978, 0.659326,
		37.717239, 37.067230, 38.147449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714371, 36.872391, 37.279713>,  <37.197460, 36.984646, 37.685925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714371, 36.872391, 37.279713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891369, 36.849087, 37.637665>,  <37.997566, 36.835102, 37.852436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891369, 36.849087, 37.637665>,  <37.714371, 36.872391, 37.279713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891369, 36.849087, 37.637665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821238, -0.374520, -0.430467,
		0.360230, 0.925386, -0.117875,
		0.442495, -0.058264, 0.894876,
		38.024117, 36.831608, 37.906128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442516, 37.166340, 37.231445>,  <37.714371, 36.872391, 37.279713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442516, 37.166340, 37.231445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.438774, 36.909512, 37.538078>,  <38.436527, 36.755413, 37.722057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.438774, 36.909512, 37.538078>,  <38.442516, 37.166340, 37.231445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438774, 36.909512, 37.538078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698491, -0.552781, -0.454471,
		0.715558, 0.531202, 0.453653,
		-0.009354, -0.642073, 0.766587,
		38.435966, 36.716888, 37.768055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059155, 36.851532, 37.152359>,  <38.442516, 37.166340, 37.231445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059155, 36.851532, 37.152359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.881611, 36.599167, 37.406898>,  <38.775085, 36.447750, 37.559624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.881611, 36.599167, 37.406898>,  <39.059155, 36.851532, 37.152359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881611, 36.599167, 37.406898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578017, -0.744228, -0.334697,
		0.684754, 0.219263, 0.695008,
		-0.443858, -0.630911, 0.636350,
		38.748455, 36.409893, 37.597805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658112, 36.415089, 37.369564>,  <39.059155, 36.851532, 37.152359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658112, 36.415089, 37.369564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.304119, 36.241322, 37.436592>,  <39.091724, 36.137062, 37.476810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.304119, 36.241322, 37.436592>,  <39.658112, 36.415089, 37.369564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304119, 36.241322, 37.436592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309482, -0.817695, -0.485382,
		0.347883, -0.377695, 0.858093,
		-0.884985, -0.434420, 0.167573,
		39.038624, 36.110996, 37.486862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823021, 35.751492, 37.571568>,  <39.658112, 36.415089, 37.369564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823021, 35.751492, 37.571568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.450676, 35.720528, 37.428738>,  <39.227268, 35.701950, 37.343040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.450676, 35.720528, 37.428738>,  <39.823021, 35.751492, 37.571568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450676, 35.720528, 37.428738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253417, -0.840809, -0.478351,
		-0.263206, -0.535769, 0.802293,
		-0.930861, -0.077410, -0.357079,
		39.171417, 35.697304, 37.321613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581631, 35.073864, 37.754086>,  <39.823021, 35.751492, 37.571568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581631, 35.073864, 37.754086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.352043, 35.203609, 37.453327>,  <39.214291, 35.281456, 37.272873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.352043, 35.203609, 37.453327>,  <39.581631, 35.073864, 37.754086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352043, 35.203609, 37.453327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186558, -0.842262, -0.505758,
		-0.797348, -0.430559, 0.422913,
		-0.573962, 0.324367, -0.751900,
		39.179855, 35.300919, 37.227757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347054, 34.486954, 37.349815>,  <39.581631, 35.073864, 37.754086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347054, 34.486954, 37.349815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.219486, 34.751598, 37.078358>,  <39.142948, 34.910385, 36.915482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.219486, 34.751598, 37.078358>,  <39.347054, 34.486954, 37.349815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219486, 34.751598, 37.078358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172803, -0.663441, -0.728001,
		-0.931897, -0.349443, 0.097253,
		-0.318916, 0.661616, -0.678643,
		39.123810, 34.950085, 36.874763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795216, 34.205666, 36.932549>,  <39.347054, 34.486954, 37.349815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795216, 34.205666, 36.932549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.960987, 34.484379, 36.698372>,  <39.060448, 34.651608, 36.557865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.960987, 34.484379, 36.698372>,  <38.795216, 34.205666, 36.932549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960987, 34.484379, 36.698372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291464, -0.711019, -0.639923,
		-0.862148, 0.094565, -0.497753,
		0.414426, 0.696786, -0.585441,
		39.085316, 34.693413, 36.522739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679909, 34.146534, 36.128193>,  <38.795216, 34.205666, 36.932549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679909, 34.146534, 36.128193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984604, 34.403942, 36.098167>,  <39.167423, 34.558388, 36.080154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984604, 34.403942, 36.098167>,  <38.679909, 34.146534, 36.128193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984604, 34.403942, 36.098167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392589, -0.550635, -0.736664,
		-0.515388, 0.531680, -0.672080,
		0.761740, 0.643520, -0.075059,
		39.213127, 34.596996, 36.075649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812767, 34.131763, 35.334599>,  <38.679909, 34.146534, 36.128193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812767, 34.131763, 35.334599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130859, 34.284012, 35.523376>,  <39.321716, 34.375362, 35.636642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.130859, 34.284012, 35.523376>,  <38.812767, 34.131763, 35.334599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130859, 34.284012, 35.523376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601313, -0.395410, -0.694315,
		-0.077659, 0.835929, -0.543315,
		0.795231, 0.380622, 0.471948,
		39.369427, 34.398197, 35.664963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146667, 34.580383, 34.831005>,  <38.812767, 34.131763, 35.334599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146667, 34.580383, 34.831005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.424259, 34.488991, 35.104118>,  <39.590813, 34.434155, 35.267986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.424259, 34.488991, 35.104118>,  <39.146667, 34.580383, 34.831005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424259, 34.488991, 35.104118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568020, -0.408990, -0.714199,
		0.442430, 0.883473, -0.154050,
		0.693980, -0.228479, 0.682780,
		39.632454, 34.420448, 35.308952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755352, 34.912731, 34.672047>,  <39.146667, 34.580383, 34.831005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755352, 34.912731, 34.672047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.907822, 34.603893, 34.875446>,  <39.999302, 34.418591, 34.997486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.907822, 34.603893, 34.875446>,  <39.755352, 34.912731, 34.672047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907822, 34.603893, 34.875446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469742, -0.311985, -0.825838,
		0.796272, 0.553650, 0.243767,
		0.381174, -0.772099, 0.508497,
		40.022175, 34.372265, 35.027996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488483, 34.842453, 34.365433>,  <39.755352, 34.912731, 34.672047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488483, 34.842453, 34.365433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.383114, 34.507149, 34.556404>,  <40.319893, 34.305965, 34.670986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.383114, 34.507149, 34.556404>,  <40.488483, 34.842453, 34.365433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383114, 34.507149, 34.556404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470407, -0.543694, -0.695065,
		0.842216, 0.041490, 0.537542,
		-0.263420, -0.838258, 0.477425,
		40.304089, 34.255672, 34.699631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061432, 34.508011, 34.430897>,  <40.488483, 34.842453, 34.365433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061432, 34.508011, 34.430897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.813435, 34.202030, 34.500698>,  <40.664635, 34.018440, 34.542580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.813435, 34.202030, 34.500698>,  <41.061432, 34.508011, 34.430897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813435, 34.202030, 34.500698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560123, -0.587267, -0.584277,
		0.549428, -0.264503, 0.792570,
		-0.619993, -0.764955, 0.174507,
		40.627438, 33.972546, 34.553051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470268, 33.808277, 34.478966>,  <41.061432, 34.508011, 34.430897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470268, 33.808277, 34.478966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.094017, 33.707317, 34.388172>,  <40.868267, 33.646744, 34.333694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.094017, 33.707317, 34.388172>,  <41.470268, 33.808277, 34.478966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094017, 33.707317, 34.388172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338294, -0.641910, -0.688120,
		0.027974, -0.724050, 0.689180,
		-0.940625, -0.252395, -0.226984,
		40.811829, 33.631599, 34.320076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496147, 33.158592, 34.187416>,  <41.470268, 33.808277, 34.478966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496147, 33.158592, 34.187416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.114906, 33.230934, 34.090351>,  <40.886162, 33.274338, 34.032112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.114906, 33.230934, 34.090351>,  <41.496147, 33.158592, 34.187416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114906, 33.230934, 34.090351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027778, -0.746152, -0.665196,
		-0.301363, -0.640742, 0.706137,
		-0.953105, 0.180851, -0.242661,
		40.828976, 33.285191, 34.017551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177792, 32.552685, 34.173119>,  <41.496147, 33.158592, 34.187416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177792, 32.552685, 34.173119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.942520, 32.803356, 33.968643>,  <40.801357, 32.953758, 33.845959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.942520, 32.803356, 33.968643>,  <41.177792, 32.552685, 34.173119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942520, 32.803356, 33.968643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233671, -0.473442, -0.849265,
		-0.774238, -0.618969, 0.132031,
		-0.588178, 0.626681, -0.511192,
		40.766068, 32.991360, 33.815285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.563385, 32.094692, 33.702381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.598507, 32.459393, 33.541882>,  <40.619579, 32.678211, 33.445580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.598507, 32.459393, 33.541882>,  <40.563385, 32.094692, 33.702381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598507, 32.459393, 33.541882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067159, -0.407309, -0.910818,
		-0.993871, 0.053025, -0.096995,
		0.087803, 0.911750, -0.401252,
		40.624847, 32.732918, 33.421505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331375, 31.969690, 33.091537>,  <40.563385, 32.094692, 33.702381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331375, 31.969690, 33.091537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518379, 32.316841, 33.024342>,  <40.630581, 32.525131, 32.984024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518379, 32.316841, 33.024342>,  <40.331375, 31.969690, 33.091537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518379, 32.316841, 33.024342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223041, -0.299702, -0.927594,
		-0.855385, 0.396195, -0.333687,
		0.467515, 0.867876, -0.167993,
		40.658634, 32.577206, 32.973946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162724, 32.176582, 32.370945>,  <40.331375, 31.969690, 33.091537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162724, 32.176582, 32.370945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.498657, 32.350075, 32.501518>,  <40.700218, 32.454170, 32.579861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.498657, 32.350075, 32.501518>,  <40.162724, 32.176582, 32.370945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498657, 32.350075, 32.501518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350558, 0.025802, -0.936185,
		-0.414474, 0.900674, -0.130378,
		0.839833, 0.433729, 0.326433,
		40.750607, 32.480194, 32.599449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294907, 32.657627, 31.869818>,  <40.162724, 32.176582, 32.370945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294907, 32.657627, 31.869818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.656151, 32.617718, 32.036877>,  <40.872898, 32.593773, 32.137112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.656151, 32.617718, 32.036877>,  <40.294907, 32.657627, 31.869818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656151, 32.617718, 32.036877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405672, -0.120609, -0.906026,
		0.140766, 0.987674, -0.068450,
		0.903114, -0.099769, 0.417649,
		40.927086, 32.587788, 32.162170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752434, 33.141228, 31.511223>,  <40.294907, 32.657627, 31.869818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752434, 33.141228, 31.511223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.987740, 32.860905, 31.672625>,  <41.128922, 32.692711, 31.769466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.987740, 32.860905, 31.672625>,  <40.752434, 33.141228, 31.511223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987740, 32.860905, 31.672625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450928, -0.129925, -0.883053,
		0.671277, 0.701418, 0.239584,
		0.588262, -0.700808, 0.403505,
		41.164219, 32.650661, 31.793676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406418, 33.225040, 31.276196>,  <40.752434, 33.141228, 31.511223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406418, 33.225040, 31.276196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.399895, 32.842438, 31.392693>,  <41.395981, 32.612877, 31.462591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.399895, 32.842438, 31.392693>,  <41.406418, 33.225040, 31.276196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399895, 32.842438, 31.392693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508394, -0.258753, -0.821330,
		0.860970, 0.134671, 0.490504,
		-0.016310, -0.956510, 0.291244,
		41.395000, 32.555485, 31.480066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876389, 33.019684, 30.850004>,  <41.406418, 33.225040, 31.276196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876389, 33.019684, 30.850004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.750355, 32.667709, 30.992237>,  <41.674732, 32.456524, 31.077578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.750355, 32.667709, 30.992237>,  <41.876389, 33.019684, 30.850004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750355, 32.667709, 30.992237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380980, -0.460427, -0.801786,
		0.869238, -0.117161, 0.480311,
		-0.315087, -0.879932, 0.355585,
		41.655830, 32.403728, 31.098913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443424, 32.639107, 31.035231>,  <41.876389, 33.019684, 30.850004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443424, 32.639107, 31.035231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.140621, 32.388138, 30.962257>,  <41.958939, 32.237556, 30.918474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.140621, 32.388138, 30.962257>,  <42.443424, 32.639107, 31.035231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140621, 32.388138, 30.962257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509701, -0.392334, -0.765689,
		0.408837, -0.672617, 0.616798,
		-0.757006, -0.627424, -0.182433,
		41.913521, 32.199909, 30.907528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811840, 32.050926, 30.940308>,  <42.443424, 32.639107, 31.035231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811840, 32.050926, 30.940308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.443485, 32.005260, 30.791208>,  <42.222473, 31.977859, 30.701750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.443485, 32.005260, 30.791208>,  <42.811840, 32.050926, 30.940308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443485, 32.005260, 30.791208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388555, -0.191269, -0.901355,
		0.031612, -0.974875, 0.220497,
		-0.920883, -0.114169, -0.372746,
		42.167221, 31.971010, 30.679384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736019, 31.357870, 30.726479>,  <42.811840, 32.050926, 30.940308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736019, 31.357870, 30.726479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.465416, 31.568718, 30.520769>,  <42.303055, 31.695227, 30.397345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.465416, 31.568718, 30.520769>,  <42.736019, 31.357870, 30.726479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465416, 31.568718, 30.520769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263562, -0.478772, -0.837444,
		-0.687655, -0.702082, 0.184965,
		-0.676511, 0.527122, -0.514272,
		42.262463, 31.726854, 30.366488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638309, 30.972883, 30.207527>,  <42.736019, 31.357870, 30.726479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638309, 30.972883, 30.207527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.492031, 31.318743, 30.069744>,  <42.404266, 31.526258, 29.987074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.492031, 31.318743, 30.069744>,  <42.638309, 30.972883, 30.207527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492031, 31.318743, 30.069744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297243, -0.242217, -0.923568,
		-0.881996, -0.440129, -0.168434,
		-0.365691, 0.864649, -0.344460,
		42.382324, 31.578136, 29.966406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310108, 30.799095, 29.633333>,  <42.638309, 30.972883, 30.207527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310108, 30.799095, 29.633333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.347542, 31.194868, 29.589037>,  <42.370003, 31.432331, 29.562460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.347542, 31.194868, 29.589037>,  <42.310108, 30.799095, 29.633333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347542, 31.194868, 29.589037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263228, -0.131860, -0.955680,
		-0.960184, 0.060291, -0.272787,
		0.093589, 0.989433, -0.110740,
		42.375618, 31.491697, 29.555815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920425, 31.019014, 29.039137>,  <42.310108, 30.799095, 29.633333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920425, 31.019014, 29.039137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.179455, 31.321222, 29.078815>,  <42.334873, 31.502546, 29.102623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.179455, 31.321222, 29.078815>,  <41.920425, 31.019014, 29.039137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179455, 31.321222, 29.078815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322224, -0.153537, -0.934129,
		-0.690521, 0.636883, -0.342873,
		0.647575, 0.755517, 0.099198,
		42.373726, 31.547878, 29.108576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807648, 31.474228, 28.431627>,  <41.920425, 31.019014, 29.039137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807648, 31.474228, 28.431627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.179363, 31.560093, 28.551855>,  <42.402393, 31.611612, 28.623991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.179363, 31.560093, 28.551855>,  <41.807648, 31.474228, 28.431627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179363, 31.560093, 28.551855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298444, 0.043044, -0.953456,
		-0.217607, 0.975740, -0.024064,
		0.929289, 0.214661, 0.300570,
		42.458149, 31.624491, 28.642027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105289, 32.102024, 27.942907>,  <41.807648, 31.474228, 28.431627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105289, 32.102024, 27.942907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.421902, 31.915895, 28.101376>,  <42.611870, 31.804218, 28.196457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.421902, 31.915895, 28.101376>,  <42.105289, 32.102024, 27.942907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421902, 31.915895, 28.101376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463172, 0.033863, -0.885622,
		0.398685, 0.884493, 0.242328,
		0.791532, -0.465323, 0.396171,
		42.659363, 31.776299, 28.220226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621880, 32.426273, 27.602173>,  <42.105289, 32.102024, 27.942907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621880, 32.426273, 27.602173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.795860, 32.097393, 27.749037>,  <42.900249, 31.900064, 27.837156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.795860, 32.097393, 27.749037>,  <42.621880, 32.426273, 27.602173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795860, 32.097393, 27.749037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559691, -0.072564, -0.825518,
		0.705384, 0.564554, 0.428617,
		0.434948, -0.822200, 0.367161,
		42.926346, 31.850733, 27.859184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342865, 32.478718, 27.536655>,  <42.621880, 32.426273, 27.602173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342865, 32.478718, 27.536655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.244747, 32.091145, 27.524027>,  <43.185875, 31.858601, 27.516451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.244747, 32.091145, 27.524027>,  <43.342865, 32.478718, 27.536655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244747, 32.091145, 27.524027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464550, -0.088900, -0.881073,
		0.850895, -0.230792, 0.471925,
		-0.245299, -0.968933, -0.031570,
		43.171158, 31.800465, 27.514555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949181, 32.203320, 27.286942>,  <43.342865, 32.478718, 27.536655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949181, 32.203320, 27.286942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.657776, 31.932724, 27.243793>,  <43.482933, 31.770367, 27.217905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.657776, 31.932724, 27.243793>,  <43.949181, 32.203320, 27.286942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657776, 31.932724, 27.243793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332363, -0.211361, -0.919163,
		0.599003, -0.705473, 0.378819,
		-0.728512, -0.676487, -0.107868,
		43.439220, 31.729778, 27.211433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249607, 31.551958, 27.155508>,  <43.949181, 32.203320, 27.286942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249607, 31.551958, 27.155508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.885925, 31.530561, 26.990351>,  <43.667717, 31.517723, 26.891256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.885925, 31.530561, 26.990351>,  <44.249607, 31.551958, 27.155508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885925, 31.530561, 26.990351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405534, -0.338297, -0.849175,
		-0.094257, -0.939518, 0.329275,
		-0.909208, -0.053492, -0.412893,
		43.613163, 31.514515, 26.866484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284691, 30.953749, 26.772640>,  <44.249607, 31.551958, 27.155508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284691, 30.953749, 26.772640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.950649, 31.106392, 26.614162>,  <43.750225, 31.197977, 26.519075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.950649, 31.106392, 26.614162>,  <44.284691, 30.953749, 26.772640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950649, 31.106392, 26.614162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267979, -0.346772, -0.898853,
		-0.480401, -0.856810, 0.187328,
		-0.835106, 0.381609, -0.396197,
		43.700119, 31.220875, 26.495304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995548, 30.426802, 26.391714>,  <44.284691, 30.953749, 26.772640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995548, 30.426802, 26.391714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.850567, 30.767916, 26.241312>,  <43.763577, 30.972584, 26.151070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.850567, 30.767916, 26.241312>,  <43.995548, 30.426802, 26.391714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850567, 30.767916, 26.241312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017702, -0.397069, -0.917618,
		-0.931832, -0.339254, 0.128825,
		-0.362458, 0.852786, -0.376007,
		43.741829, 31.023752, 26.128510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443695, 30.243601, 25.991373>,  <43.995548, 30.426802, 26.391714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443695, 30.243601, 25.991373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.577633, 30.594164, 25.852930>,  <43.657997, 30.804501, 25.769865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.577633, 30.594164, 25.852930>,  <43.443695, 30.243601, 25.991373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577633, 30.594164, 25.852930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261746, -0.439369, -0.859327,
		-0.905188, 0.197151, -0.376517,
		0.334847, 0.876405, -0.346108,
		43.678085, 30.857086, 25.749098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253349, 30.316677, 25.264633>,  <43.443695, 30.243601, 25.991373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253349, 30.316677, 25.264633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.536530, 30.595610, 25.309422>,  <43.706436, 30.762970, 25.336294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.536530, 30.595610, 25.309422>,  <43.253349, 30.316677, 25.264633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536530, 30.595610, 25.309422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391853, -0.255916, -0.883718,
		-0.587591, 0.669502, -0.454427,
		0.707946, 0.697334, 0.111972,
		43.748913, 30.804810, 25.343014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316105, 30.761908, 24.760580>,  <43.253349, 30.316677, 25.264633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316105, 30.761908, 24.760580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.678936, 30.787287, 24.927042>,  <43.896633, 30.802515, 25.026918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.678936, 30.787287, 24.927042>,  <43.316105, 30.761908, 24.760580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678936, 30.787287, 24.927042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416376, -0.280762, -0.864756,
		0.061972, 0.957678, -0.281092,
		0.907078, 0.063450, 0.416154,
		43.951057, 30.806322, 25.051888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531723, 30.732534, 24.781404>,  <43.316105, 30.761908, 24.760580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531723, 30.732534, 24.781404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.229111, 30.524851, 24.622366>,  <42.047543, 30.400240, 24.526943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.229111, 30.524851, 24.622366>,  <42.531723, 30.732534, 24.781404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229111, 30.524851, 24.622366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455907, -0.017140, 0.889862,
		-0.468841, 0.854474, -0.223745,
		-0.756530, -0.519211, -0.397596,
		42.002151, 30.369087, 24.503086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023396, 30.980307, 25.171900>,  <42.531723, 30.732534, 24.781404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023396, 30.980307, 25.171900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.856232, 30.657900, 25.004242>,  <41.755932, 30.464455, 24.903646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.856232, 30.657900, 25.004242>,  <42.023396, 30.980307, 25.171900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856232, 30.657900, 25.004242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752900, 0.049081, 0.656302,
		-0.508420, 0.589852, -0.627362,
		-0.417913, -0.806018, -0.419146,
		41.730858, 30.416094, 24.878498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258636, 31.141073, 25.019461>,  <42.023396, 30.980307, 25.171900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258636, 31.141073, 25.019461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.327183, 30.748528, 25.054243>,  <41.368309, 30.513000, 25.075111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.327183, 30.748528, 25.054243>,  <41.258636, 31.141073, 25.019461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327183, 30.748528, 25.054243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679038, -0.053701, 0.732136,
		-0.713822, -0.184507, -0.675586,
		0.171364, -0.981363, 0.086954,
		41.378593, 30.454119, 25.080330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680443, 30.899326, 25.076067>,  <41.258636, 31.141073, 25.019461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680443, 30.899326, 25.076067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.900848, 30.596722, 25.216965>,  <41.033092, 30.415159, 25.301504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.900848, 30.596722, 25.216965>,  <40.680443, 30.899326, 25.076067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900848, 30.596722, 25.216965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591495, -0.056305, 0.804340,
		-0.588660, -0.651551, -0.478498,
		0.551011, -0.756512, 0.352245,
		41.066151, 30.369768, 25.322638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192032, 30.463058, 25.427687>,  <40.680443, 30.899326, 25.076067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192032, 30.463058, 25.427687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535027, 30.326509, 25.581663>,  <40.740822, 30.244579, 25.674049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535027, 30.326509, 25.581663>,  <40.192032, 30.463058, 25.427687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535027, 30.326509, 25.581663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402322, 0.021476, 0.915246,
		-0.320706, -0.939683, -0.118926,
		0.857487, -0.341372, 0.384943,
		40.792274, 30.224098, 25.697145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076138, 29.898354, 25.963676>,  <40.192032, 30.463058, 25.427687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076138, 29.898354, 25.963676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.443363, 30.036240, 26.041996>,  <40.663696, 30.118971, 26.088987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.443363, 30.036240, 26.041996>,  <40.076138, 29.898354, 25.963676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443363, 30.036240, 26.041996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188365, -0.055283, 0.980542,
		0.348832, -0.937078, 0.014179,
		0.918060, 0.344715, 0.195797,
		40.718781, 30.139654, 26.100735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218475, 29.469955, 26.543304>,  <40.076138, 29.898354, 25.963676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218475, 29.469955, 26.543304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.435215, 29.806147, 26.543415>,  <40.565258, 30.007862, 26.543482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.435215, 29.806147, 26.543415>,  <40.218475, 29.469955, 26.543304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435215, 29.806147, 26.543415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247702, 0.159374, 0.955638,
		0.803149, -0.517876, 0.294544,
		0.541844, 0.840479, 0.000278,
		40.597767, 30.058290, 26.543499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471920, 29.522614, 27.234373>,  <40.218475, 29.469955, 26.543304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471920, 29.522614, 27.234373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535938, 29.887657, 27.083893>,  <40.574348, 30.106684, 26.993605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535938, 29.887657, 27.083893>,  <40.471920, 29.522614, 27.234373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535938, 29.887657, 27.083893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185373, 0.402120, 0.896625,
		0.969548, -0.073762, 0.233530,
		0.160044, 0.912611, -0.376201,
		40.583950, 30.161440, 26.971033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835819, 29.755922, 27.805147>,  <40.471920, 29.522614, 27.234373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835819, 29.755922, 27.805147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.697926, 30.072378, 27.603056>,  <40.615189, 30.262251, 27.481802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.697926, 30.072378, 27.603056>,  <40.835819, 29.755922, 27.805147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697926, 30.072378, 27.603056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216490, 0.456704, 0.862875,
		0.913394, 0.406840, 0.013831,
		-0.344736, 0.791140, -0.505228,
		40.594505, 30.309721, 27.451488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226624, 30.313017, 27.922585>,  <40.835819, 29.755922, 27.805147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226624, 30.313017, 27.922585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.859993, 30.456739, 27.852392>,  <40.640015, 30.542973, 27.810278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.859993, 30.456739, 27.852392>,  <41.226624, 30.313017, 27.922585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859993, 30.456739, 27.852392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048608, 0.335470, 0.940796,
		0.396904, 0.870837, -0.290017,
		-0.916572, 0.359309, -0.175480,
		40.585022, 30.564531, 27.799747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138378, 30.802927, 28.329462>,  <41.226624, 30.313017, 27.922585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138378, 30.802927, 28.329462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.752602, 30.847038, 28.233391>,  <40.521133, 30.873505, 28.175749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.752602, 30.847038, 28.233391>,  <41.138378, 30.802927, 28.329462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752602, 30.847038, 28.233391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195706, 0.312738, 0.929459,
		0.177611, 0.943416, -0.280037,
		-0.964445, 0.110277, -0.240178,
		40.463268, 30.880121, 28.161337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853558, 31.415806, 28.608931>,  <41.138378, 30.802927, 28.329462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853558, 31.415806, 28.608931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.504086, 31.234398, 28.538500>,  <40.294403, 31.125553, 28.496243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.504086, 31.234398, 28.538500>,  <40.853558, 31.415806, 28.608931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504086, 31.234398, 28.538500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343386, 0.318486, 0.883546,
		-0.344627, 0.832399, -0.433987,
		-0.873681, -0.453519, -0.176075,
		40.241982, 31.098343, 28.485678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295361, 31.926712, 28.537264>,  <40.853558, 31.415806, 28.608931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295361, 31.926712, 28.537264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.156353, 31.576691, 28.672029>,  <40.072948, 31.366678, 28.752890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.156353, 31.576691, 28.672029>,  <40.295361, 31.926712, 28.537264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156353, 31.576691, 28.672029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291344, 0.442293, 0.848231,
		-0.891261, 0.196622, -0.408649,
		-0.347523, -0.875053, 0.336914,
		40.052097, 31.314175, 28.773104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723660, 32.089108, 28.912317>,  <40.295361, 31.926712, 28.537264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723660, 32.089108, 28.912317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.751690, 31.707596, 29.029203>,  <39.768509, 31.478689, 29.099335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.751690, 31.707596, 29.029203>,  <39.723660, 32.089108, 28.912317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751690, 31.707596, 29.029203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275618, 0.263018, 0.924584,
		-0.958709, -0.145335, -0.244447,
		0.070080, -0.953781, 0.292215,
		39.772713, 31.421461, 29.116867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176434, 31.936371, 29.268440>,  <39.723660, 32.089108, 28.912317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176434, 31.936371, 29.268440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.437302, 31.660305, 29.393881>,  <39.593822, 31.494665, 29.469145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.437302, 31.660305, 29.393881>,  <39.176434, 31.936371, 29.268440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437302, 31.660305, 29.393881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268970, 0.176103, 0.946912,
		-0.708751, -0.701899, -0.070784,
		0.652172, -0.690163, 0.313602,
		39.632954, 31.453257, 29.487961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759907, 31.536552, 29.662292>,  <39.176434, 31.936371, 29.268440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759907, 31.536552, 29.662292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126461, 31.428877, 29.780798>,  <39.346394, 31.364273, 29.851900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126461, 31.428877, 29.780798>,  <38.759907, 31.536552, 29.662292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126461, 31.428877, 29.780798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286370, 0.076258, 0.955079,
		-0.279687, -0.960064, -0.007205,
		0.916388, -0.269187, 0.296262,
		39.401379, 31.348122, 29.869677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565048, 30.905573, 30.001368>,  <38.759907, 31.536552, 29.662292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565048, 30.905573, 30.001368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909561, 31.051056, 30.143305>,  <39.116268, 31.138346, 30.228468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909561, 31.051056, 30.143305>,  <38.565048, 30.905573, 30.001368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909561, 31.051056, 30.143305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382277, 0.003737, 0.924040,
		0.334753, -0.931506, 0.142255,
		0.861281, 0.363706, 0.354843,
		39.167946, 31.160168, 30.249758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762665, 30.573984, 30.669424>,  <38.565048, 30.905573, 30.001368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762665, 30.573984, 30.669424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.979771, 30.908131, 30.704224>,  <39.110035, 31.108618, 30.725103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.979771, 30.908131, 30.704224>,  <38.762665, 30.573984, 30.669424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979771, 30.908131, 30.704224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254484, 0.064856, 0.964900,
		0.800402, -0.545855, 0.247789,
		0.542766, 0.835366, 0.087001,
		39.142601, 31.158741, 30.730324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993286, 30.605761, 31.293081>,  <38.762665, 30.573984, 30.669424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993286, 30.605761, 31.293081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047318, 30.996006, 31.223879>,  <39.079739, 31.230154, 31.182358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047318, 30.996006, 31.223879>,  <38.993286, 30.605761, 31.293081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047318, 30.996006, 31.223879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204652, 0.198311, 0.958536,
		0.969469, -0.094076, 0.226449,
		0.135082, 0.975614, -0.173004,
		39.087841, 31.288691, 31.171978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253883, 30.827782, 31.900476>,  <38.993286, 30.605761, 31.293081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253883, 30.827782, 31.900476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142811, 31.167830, 31.721504>,  <39.076168, 31.371859, 31.614120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142811, 31.167830, 31.721504>,  <39.253883, 30.827782, 31.900476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142811, 31.167830, 31.721504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494188, 0.272993, 0.825380,
		0.823816, 0.450305, 0.344314,
		-0.277678, 0.850117, -0.447432,
		39.059509, 31.422865, 31.587275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.541466, 34.055023, 36.152054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250607, 34.171322, 35.903309>,  <40.076092, 34.241100, 35.754063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250607, 34.171322, 35.903309>,  <40.541466, 34.055023, 36.152054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250607, 34.171322, 35.903309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338597, 0.636113, 0.693335,
		0.597163, 0.714721, -0.364103,
		-0.727151, 0.290749, -0.621865,
		40.032459, 34.258545, 35.716751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477501, 34.737900, 36.350754>,  <40.541466, 34.055023, 36.152054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477501, 34.737900, 36.350754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146915, 34.621185, 36.158165>,  <39.948563, 34.551155, 36.042610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146915, 34.621185, 36.158165>,  <40.477501, 34.737900, 36.350754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146915, 34.621185, 36.158165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526615, 0.703088, 0.477853,
		0.199087, 0.648480, -0.734736,
		-0.826463, -0.291789, -0.481475,
		39.898975, 34.533649, 36.013721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261127, 35.327591, 35.888378>,  <40.477501, 34.737900, 36.350754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261127, 35.327591, 35.888378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.945087, 35.099762, 35.979004>,  <39.755463, 34.963066, 36.033379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.945087, 35.099762, 35.979004>,  <40.261127, 35.327591, 35.888378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945087, 35.099762, 35.979004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425795, 0.775848, 0.465572,
		-0.440958, 0.271377, -0.855518,
		-0.790097, -0.569573, 0.226566,
		39.708057, 34.928890, 36.046974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554539, 35.716816, 35.879654>,  <40.261127, 35.327591, 35.888378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554539, 35.716816, 35.879654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403255, 35.401161, 36.073242>,  <39.312485, 35.211769, 36.189396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403255, 35.401161, 36.073242>,  <39.554539, 35.716816, 35.879654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403255, 35.401161, 36.073242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391302, 0.610080, 0.688974,
		-0.838954, 0.071195, -0.539525,
		-0.378205, -0.789135, 0.483970,
		39.289795, 35.164421, 36.218433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766079, 35.944393, 36.101749>,  <39.554539, 35.716816, 35.879654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766079, 35.944393, 36.101749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.909370, 35.653358, 36.335773>,  <38.995346, 35.478737, 36.476189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.909370, 35.653358, 36.335773>,  <38.766079, 35.944393, 36.101749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909370, 35.653358, 36.335773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471861, 0.399633, 0.785901,
		-0.805619, -0.557596, -0.200161,
		0.358225, -0.727585, 0.585060,
		39.016838, 35.435081, 36.511292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192833, 35.654560, 36.420681>,  <38.766079, 35.944393, 36.101749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192833, 35.654560, 36.420681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.496105, 35.549992, 36.659618>,  <38.678066, 35.487251, 36.802982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.496105, 35.549992, 36.659618>,  <38.192833, 35.654560, 36.420681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496105, 35.549992, 36.659618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438550, 0.473502, 0.763851,
		-0.482534, -0.841102, 0.244352,
		0.758178, -0.261423, 0.597347,
		38.723560, 35.471565, 36.838821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976879, 35.358528, 37.113853>,  <38.192833, 35.654560, 36.420681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976879, 35.358528, 37.113853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.349541, 35.492199, 37.170921>,  <38.573135, 35.572399, 37.205162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.349541, 35.492199, 37.170921>,  <37.976879, 35.358528, 37.113853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349541, 35.492199, 37.170921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306315, 0.511122, 0.803072,
		0.195444, -0.791885, 0.578550,
		0.931650, 0.334174, 0.142670,
		38.629036, 35.592453, 37.213722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947350, 35.398880, 37.725464>,  <37.976879, 35.358528, 37.113853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947350, 35.398880, 37.725464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.282276, 35.605228, 37.653042>,  <38.483231, 35.729038, 37.609589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.282276, 35.605228, 37.653042>,  <37.947350, 35.398880, 37.725464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282276, 35.605228, 37.653042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161178, 0.549370, 0.819886,
		0.522414, -0.657326, 0.543145,
		0.837320, 0.515863, -0.181052,
		38.533470, 35.759987, 37.598724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283028, 35.453403, 38.322155>,  <37.947350, 35.398880, 37.725464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283028, 35.453403, 38.322155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.404243, 35.757057, 38.091717>,  <38.476971, 35.939251, 37.953453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.404243, 35.757057, 38.091717>,  <38.283028, 35.453403, 38.322155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404243, 35.757057, 38.091717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271505, 0.648238, 0.711388,
		0.913485, -0.059164, 0.402548,
		0.303035, 0.759136, -0.576092,
		38.495155, 35.984798, 37.918888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410732, 35.958412, 38.805996>,  <38.283028, 35.453403, 38.322155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410732, 35.958412, 38.805996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420521, 36.188416, 38.478882>,  <38.426395, 36.326416, 38.282616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420521, 36.188416, 38.478882>,  <38.410732, 35.958412, 38.805996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420521, 36.188416, 38.478882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343083, 0.773178, 0.533377,
		0.938986, 0.267512, 0.216199,
		0.024476, 0.575008, -0.817782,
		38.427864, 36.360916, 38.233547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514648, 36.682632, 39.109203>,  <38.410732, 35.958412, 38.805996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514648, 36.682632, 39.109203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.369942, 36.736221, 38.740166>,  <38.283115, 36.768375, 38.518745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.369942, 36.736221, 38.740166>,  <38.514648, 36.682632, 39.109203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369942, 36.736221, 38.740166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446977, 0.843534, 0.297761,
		0.818128, 0.520098, -0.245285,
		-0.361771, 0.133970, -0.922591,
		38.261410, 36.776413, 38.463390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698368, 37.331875, 39.055992>,  <38.514648, 36.682632, 39.109203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698368, 37.331875, 39.055992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.409687, 37.229446, 38.798756>,  <38.236477, 37.167988, 38.644413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.409687, 37.229446, 38.798756>,  <38.698368, 37.331875, 39.055992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409687, 37.229446, 38.798756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651813, 0.564113, 0.506868,
		0.232981, 0.784986, -0.574036,
		-0.721706, -0.256073, -0.643092,
		38.193176, 37.152626, 38.605827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283600, 37.859196, 38.654369>,  <38.698368, 37.331875, 39.055992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283600, 37.859196, 38.654369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.052479, 37.541691, 38.730354>,  <37.913807, 37.351189, 38.775944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.052479, 37.541691, 38.730354>,  <38.283600, 37.859196, 38.654369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052479, 37.541691, 38.730354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556948, 0.553594, 0.619147,
		-0.596617, 0.251945, -0.761953,
		-0.577803, -0.793762, 0.189963,
		37.879139, 37.303562, 38.787342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803074, 38.435658, 38.759270>,  <38.283600, 37.859196, 38.654369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803074, 38.435658, 38.759270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694351, 38.102150, 38.951496>,  <37.629120, 37.902046, 39.066833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694351, 38.102150, 38.951496>,  <37.803074, 38.435658, 38.759270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694351, 38.102150, 38.951496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556946, 0.543527, 0.628005,
		-0.784815, -0.096956, -0.612099,
		-0.271803, -0.833773, 0.480568,
		37.612812, 37.852016, 39.095665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908184, 39.027760, 38.117844>,  <37.803074, 38.435658, 38.759270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908184, 39.027760, 38.117844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.064713, 39.356941, 37.953110>,  <38.158630, 39.554451, 37.854267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.064713, 39.356941, 37.953110>,  <37.908184, 39.027760, 38.117844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064713, 39.356941, 37.953110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183356, -0.368827, -0.911234,
		-0.901802, 0.432100, 0.006563,
		0.391324, 0.822956, -0.411837,
		38.182110, 39.603828, 37.829559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409370, 39.388828, 37.770966>,  <37.908184, 39.027760, 38.117844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409370, 39.388828, 37.770966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.752514, 39.483051, 37.588276>,  <37.958401, 39.539585, 37.478664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.752514, 39.483051, 37.588276>,  <37.409370, 39.388828, 37.770966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752514, 39.483051, 37.588276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394395, -0.267978, -0.879000,
		-0.329444, 0.934185, -0.136985,
		0.857857, 0.235555, -0.456722,
		38.009872, 39.553719, 37.451260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247028, 39.462074, 37.099575>,  <37.409370, 39.388828, 37.770966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247028, 39.462074, 37.099575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.646938, 39.453823, 37.101414>,  <37.886887, 39.448872, 37.102516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.646938, 39.453823, 37.101414>,  <37.247028, 39.462074, 37.099575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646938, 39.453823, 37.101414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002019, -0.309568, -0.950875,
		0.021040, 0.950653, -0.309541,
		0.999777, -0.020631, 0.004593,
		37.946873, 39.447636, 37.102791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474243, 39.800659, 36.427750>,  <37.247028, 39.462074, 37.099575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474243, 39.800659, 36.427750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787323, 39.587177, 36.555836>,  <37.975170, 39.459087, 36.632687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787323, 39.587177, 36.555836>,  <37.474243, 39.800659, 36.427750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787323, 39.587177, 36.555836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228399, -0.232302, -0.945447,
		0.578976, 0.813139, -0.059925,
		0.782701, -0.533704, 0.320218,
		38.022133, 39.427067, 36.651901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076199, 39.933258, 36.004261>,  <37.474243, 39.800659, 36.427750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076199, 39.933258, 36.004261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.175220, 39.580872, 36.165562>,  <38.234634, 39.369438, 36.262344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.175220, 39.580872, 36.165562>,  <38.076199, 39.933258, 36.004261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175220, 39.580872, 36.165562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368548, -0.299300, -0.880109,
		0.896041, 0.366493, 0.250585,
		0.247554, -0.880967, 0.403255,
		38.249485, 39.316582, 36.286537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698528, 39.769615, 35.804775>,  <38.076199, 39.933258, 36.004261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698528, 39.769615, 35.804775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.611996, 39.406593, 35.948742>,  <38.560074, 39.188782, 36.035122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.611996, 39.406593, 35.948742>,  <38.698528, 39.769615, 35.804775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611996, 39.406593, 35.948742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536075, -0.418525, -0.733117,
		0.815980, 0.034347, 0.577058,
		-0.216333, -0.907555, 0.359921,
		38.547096, 39.134327, 36.056717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208893, 39.319748, 35.387123>,  <38.698528, 39.769615, 35.804775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208893, 39.319748, 35.387123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944603, 39.072018, 35.556770>,  <38.786030, 38.923382, 35.658558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944603, 39.072018, 35.556770>,  <39.208893, 39.319748, 35.387123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944603, 39.072018, 35.556770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309361, -0.739481, -0.597883,
		0.683912, -0.263830, 0.680189,
		-0.660727, -0.619323, 0.424121,
		38.746384, 38.886219, 35.684006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628761, 38.653469, 35.609943>,  <39.208893, 39.319748, 35.387123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628761, 38.653469, 35.609943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240814, 38.580612, 35.545212>,  <39.008045, 38.536900, 35.506374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240814, 38.580612, 35.545212>,  <39.628761, 38.653469, 35.609943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240814, 38.580612, 35.545212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243468, -0.698918, -0.672485,
		0.009383, -0.691619, 0.722201,
		-0.969863, -0.182143, -0.161830,
		38.949856, 38.525970, 35.496662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655476, 38.008595, 35.472393>,  <39.628761, 38.653469, 35.609943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655476, 38.008595, 35.472393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.296696, 38.127262, 35.341263>,  <39.081429, 38.198463, 35.262585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.296696, 38.127262, 35.341263>,  <39.655476, 38.008595, 35.472393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296696, 38.127262, 35.341263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110176, -0.568108, -0.815546,
		-0.428186, -0.767622, 0.476879,
		-0.896949, 0.296665, -0.327829,
		39.027611, 38.216263, 35.242912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347965, 37.430290, 35.193913>,  <39.655476, 38.008595, 35.472393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347965, 37.430290, 35.193913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.158947, 37.740509, 35.026470>,  <39.045536, 37.926640, 34.926003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.158947, 37.740509, 35.026470>,  <39.347965, 37.430290, 35.193913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158947, 37.740509, 35.026470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047109, -0.496534, -0.866738,
		-0.880048, -0.389851, 0.271169,
		-0.472543, 0.775545, -0.418608,
		39.017185, 37.973171, 34.900887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897896, 37.165894, 34.762383>,  <39.347965, 37.430290, 35.193913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897896, 37.165894, 34.762383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927124, 37.534065, 34.608776>,  <38.944660, 37.754967, 34.516609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927124, 37.534065, 34.608776>,  <38.897896, 37.165894, 34.762383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927124, 37.534065, 34.608776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068865, -0.379475, -0.922635,
		-0.994947, 0.093860, 0.035658,
		0.073068, 0.920429, -0.384021,
		38.949043, 37.810192, 34.493568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344868, 37.353611, 34.310238>,  <38.897896, 37.165894, 34.762383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344868, 37.353611, 34.310238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.633018, 37.595638, 34.174622>,  <38.805908, 37.740856, 34.093254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.633018, 37.595638, 34.174622>,  <38.344868, 37.353611, 34.310238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633018, 37.595638, 34.174622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109555, -0.383419, -0.917054,
		-0.684876, 0.697768, -0.209918,
		0.720377, 0.605071, -0.339038,
		38.849133, 37.777161, 34.072910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088680, 37.574268, 33.572990>,  <38.344868, 37.353611, 34.310238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088680, 37.574268, 33.572990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.482090, 37.638680, 33.605831>,  <38.718136, 37.677326, 33.625534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.482090, 37.638680, 33.605831>,  <38.088680, 37.574268, 33.572990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482090, 37.638680, 33.605831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132327, -0.332053, -0.933933,
		-0.123127, 0.929414, -0.347892,
		0.983529, 0.161028, 0.082102,
		38.777149, 37.686989, 33.630463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267834, 37.704193, 32.920143>,  <38.088680, 37.574268, 33.572990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267834, 37.704193, 32.920143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.621025, 37.625099, 33.090435>,  <38.832939, 37.577644, 33.192608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.621025, 37.625099, 33.090435>,  <38.267834, 37.704193, 32.920143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621025, 37.625099, 33.090435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343909, -0.344772, -0.873418,
		0.319482, 0.917624, -0.236425,
		0.882982, -0.197733, 0.425727,
		38.885921, 37.565781, 33.218155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083679, 38.354141, 32.451405>,  <38.267834, 37.704193, 32.920143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083679, 38.354141, 32.451405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.777969, 38.363052, 32.193604>,  <37.594543, 38.368397, 32.038921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.777969, 38.363052, 32.193604>,  <38.083679, 38.354141, 32.451405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777969, 38.363052, 32.193604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592853, 0.369022, 0.715785,
		0.253781, 0.929154, -0.268829,
		-0.764278, 0.022276, -0.644502,
		37.548687, 38.369736, 32.000252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825565, 39.081898, 32.376263>,  <38.083679, 38.354141, 32.451405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825565, 39.081898, 32.376263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.535919, 38.819618, 32.290733>,  <37.362129, 38.662251, 32.239418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.535919, 38.819618, 32.290733>,  <37.825565, 39.081898, 32.376263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535919, 38.819618, 32.290733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581660, 0.414033, 0.700178,
		-0.370574, 0.631381, -0.681200,
		-0.724118, -0.655694, -0.213819,
		37.318684, 38.622910, 32.226589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215424, 39.457878, 32.311676>,  <37.825565, 39.081898, 32.376263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215424, 39.457878, 32.311676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.090263, 39.084846, 32.383675>,  <37.015167, 38.861027, 32.426876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.090263, 39.084846, 32.383675>,  <37.215424, 39.457878, 32.311676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090263, 39.084846, 32.383675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431867, 0.308487, 0.847541,
		-0.845923, 0.187457, -0.499273,
		-0.312897, -0.932575, 0.180000,
		36.996395, 38.805073, 32.437675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500134, 39.513710, 32.566628>,  <37.215424, 39.457878, 32.311676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500134, 39.513710, 32.566628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.557083, 39.131798, 32.671032>,  <36.591255, 38.902653, 32.733673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.557083, 39.131798, 32.671032>,  <36.500134, 39.513710, 32.566628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557083, 39.131798, 32.671032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567879, 0.137188, 0.811599,
		-0.810705, -0.263776, -0.522666,
		0.142377, -0.954778, 0.261012,
		36.599796, 38.845364, 32.749336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897152, 39.384933, 32.847813>,  <36.500134, 39.513710, 32.566628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897152, 39.384933, 32.847813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.142025, 39.101673, 32.988529>,  <36.288948, 38.931717, 33.072960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.142025, 39.101673, 32.988529>,  <35.897152, 39.384933, 32.847813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142025, 39.101673, 32.988529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455490, 0.047850, 0.888954,
		-0.646347, -0.704437, -0.293263,
		0.612180, -0.708151, 0.351792,
		36.325680, 38.889229, 33.094067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512173, 38.843277, 33.141747>,  <35.897152, 39.384933, 32.847813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512173, 38.843277, 33.141747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.867710, 38.753361, 33.301460>,  <36.081032, 38.699409, 33.397289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.867710, 38.753361, 33.301460>,  <35.512173, 38.843277, 33.141747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867710, 38.753361, 33.301460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418956, -0.045784, 0.906852,
		-0.185574, -0.973330, -0.134874,
		0.888841, -0.224794, 0.399286,
		36.134361, 38.685921, 33.421246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329861, 38.300236, 33.561470>,  <35.512173, 38.843277, 33.141747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329861, 38.300236, 33.561470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.682911, 38.425621, 33.701595>,  <35.894741, 38.500851, 33.785671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.682911, 38.425621, 33.701595>,  <35.329861, 38.300236, 33.561470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682911, 38.425621, 33.701595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242645, -0.334472, 0.910633,
		0.402618, -0.888747, -0.219153,
		0.882622, 0.313461, 0.350314,
		35.947697, 38.519657, 33.806690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554157, 37.688202, 33.859722>,  <35.329861, 38.300236, 33.561470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554157, 37.688202, 33.859722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.738670, 38.002384, 34.024780>,  <35.849380, 38.190895, 34.123814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.738670, 38.002384, 34.024780>,  <35.554157, 37.688202, 33.859722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738670, 38.002384, 34.024780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129860, -0.400302, 0.907136,
		0.877697, -0.472034, -0.082655,
		0.461286, 0.785457, 0.412642,
		35.877056, 38.238022, 34.148571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919689, 37.372959, 34.354652>,  <35.554157, 37.688202, 33.859722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919689, 37.372959, 34.354652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.901257, 37.763496, 34.439163>,  <35.890198, 37.997818, 34.489872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.901257, 37.763496, 34.439163>,  <35.919689, 37.372959, 34.354652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901257, 37.763496, 34.439163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024784, -0.212557, 0.976834,
		0.998630, 0.039782, 0.033994,
		-0.046086, 0.976339, 0.211280,
		35.887432, 38.056396, 34.502548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513287, 37.557381, 34.765850>,  <35.919689, 37.372959, 34.354652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513287, 37.557381, 34.765850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.232128, 37.830517, 34.845509>,  <36.063435, 37.994400, 34.893303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.232128, 37.830517, 34.845509>,  <36.513287, 37.557381, 34.765850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232128, 37.830517, 34.845509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106284, -0.377663, 0.919823,
		0.703307, 0.625374, 0.338034,
		-0.702896, 0.682845, 0.199146,
		36.021259, 38.035370, 34.905251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627544, 37.779461, 35.424583>,  <36.513287, 37.557381, 34.765850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627544, 37.779461, 35.424583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.256042, 37.920105, 35.377636>,  <36.033142, 38.004494, 35.349468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.256042, 37.920105, 35.377636>,  <36.627544, 37.779461, 35.424583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256042, 37.920105, 35.377636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240113, -0.329428, 0.913139,
		0.282406, 0.876268, 0.390386,
		-0.928759, 0.351613, -0.117371,
		35.977413, 38.025589, 35.342426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543724, 38.200886, 35.959747>,  <36.627544, 37.779461, 35.424583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543724, 38.200886, 35.959747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.190067, 38.050564, 35.848709>,  <35.977875, 37.960369, 35.782085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.190067, 38.050564, 35.848709>,  <36.543724, 38.200886, 35.959747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190067, 38.050564, 35.848709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152970, -0.328565, 0.932011,
		-0.441467, 0.866495, 0.233011,
		-0.884142, -0.375808, -0.277598,
		35.924824, 37.937820, 35.765430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.835793, 37.974735, 28.798851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484566, 37.783413, 28.792881>,  <39.273830, 37.668621, 28.789299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484566, 37.783413, 28.792881>,  <39.835793, 37.974735, 28.798851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484566, 37.783413, 28.792881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226028, 0.387044, 0.893928,
		-0.421794, 0.788302, -0.447961,
		-0.878067, -0.478305, -0.014926,
		39.221146, 37.639923, 28.788403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354431, 38.458450, 29.050291>,  <39.835793, 37.974735, 28.798851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354431, 38.458450, 29.050291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155155, 38.112007, 29.066561>,  <39.035591, 37.904140, 29.076323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155155, 38.112007, 29.066561>,  <39.354431, 38.458450, 29.050291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155155, 38.112007, 29.066561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520921, 0.336478, 0.784489,
		-0.693143, 0.369637, -0.618807,
		-0.498191, -0.866113, 0.040676,
		39.005699, 37.852173, 29.078764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629753, 38.612148, 29.268921>,  <39.354431, 38.458450, 29.050291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629753, 38.612148, 29.268921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704777, 38.231434, 29.366020>,  <38.749790, 38.003006, 29.424280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704777, 38.231434, 29.366020>,  <38.629753, 38.612148, 29.268921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704777, 38.231434, 29.366020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497469, 0.121050, 0.858994,
		-0.846963, -0.281871, -0.450780,
		0.187559, -0.951785, 0.242747,
		38.761044, 37.945900, 29.438845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020412, 38.422836, 29.486635>,  <38.629753, 38.612148, 29.268921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020412, 38.422836, 29.486635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258869, 38.143772, 29.645576>,  <38.401943, 37.976334, 29.740940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258869, 38.143772, 29.645576>,  <38.020412, 38.422836, 29.486635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258869, 38.143772, 29.645576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598075, -0.055689, 0.799503,
		-0.535655, -0.714259, -0.450452,
		0.596138, -0.697662, 0.397351,
		38.437710, 37.934475, 29.764782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523628, 37.866570, 29.673712>,  <38.020412, 38.422836, 29.486635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523628, 37.866570, 29.673712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854099, 37.893169, 29.897499>,  <38.052383, 37.909130, 30.031771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854099, 37.893169, 29.897499>,  <37.523628, 37.866570, 29.673712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854099, 37.893169, 29.897499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561715, 0.020329, 0.827081,
		0.043636, -0.997579, 0.054156,
		0.826179, 0.066511, 0.559468,
		38.101952, 37.913120, 30.065340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466316, 37.366367, 30.315199>,  <37.523628, 37.866570, 29.673712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466316, 37.366367, 30.315199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743927, 37.626350, 30.439053>,  <37.910492, 37.782341, 30.513365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743927, 37.626350, 30.439053>,  <37.466316, 37.366367, 30.315199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743927, 37.626350, 30.439053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477512, 0.093706, 0.873614,
		0.538801, -0.754167, 0.375399,
		0.694028, 0.649962, 0.309635,
		37.952137, 37.821339, 30.531942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614971, 37.076813, 30.885586>,  <37.466316, 37.366367, 30.315199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614971, 37.076813, 30.885586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741909, 37.455517, 30.907280>,  <37.818073, 37.682739, 30.920296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741909, 37.455517, 30.907280>,  <37.614971, 37.076813, 30.885586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741909, 37.455517, 30.907280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431700, 0.093307, 0.897178,
		0.844351, -0.308126, 0.438326,
		0.317343, 0.946758, 0.054235,
		37.837112, 37.739544, 30.923550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887932, 37.149429, 31.662098>,  <37.614971, 37.076813, 30.885586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887932, 37.149429, 31.662098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828869, 37.511253, 31.502115>,  <37.793430, 37.728348, 31.406126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828869, 37.511253, 31.502115>,  <37.887932, 37.149429, 31.662098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828869, 37.511253, 31.502115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398094, 0.315829, 0.861263,
		0.905382, 0.286396, 0.313464,
		-0.147662, 0.904560, -0.399958,
		37.784569, 37.782623, 31.382128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206173, 37.661999, 32.069401>,  <37.887932, 37.149429, 31.662098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206173, 37.661999, 32.069401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947029, 37.880848, 31.857389>,  <37.791542, 38.012157, 31.730183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947029, 37.880848, 31.857389>,  <38.206173, 37.661999, 32.069401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947029, 37.880848, 31.857389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293833, 0.462457, 0.836538,
		0.702806, 0.697701, -0.138845,
		-0.647863, 0.547126, -0.530025,
		37.752670, 38.044987, 31.698381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763832, 38.011066, 32.511189>,  <38.206173, 37.661999, 32.069401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763832, 38.011066, 32.511189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898643, 37.707859, 32.734550>,  <38.979530, 37.525936, 32.868568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898643, 37.707859, 32.734550>,  <38.763832, 38.011066, 32.511189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898643, 37.707859, 32.734550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513335, -0.349246, -0.783909,
		0.789241, 0.550848, 0.271413,
		0.337025, -0.758020, 0.558409,
		38.999752, 37.480453, 32.902073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481510, 37.947968, 32.208031>,  <38.763832, 38.011066, 32.511189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481510, 37.947968, 32.208031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379623, 37.612823, 32.401154>,  <39.318493, 37.411736, 32.517029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379623, 37.612823, 32.401154>,  <39.481510, 37.947968, 32.208031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379623, 37.612823, 32.401154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504462, -0.541088, -0.672861,
		0.825009, 0.072172, 0.560493,
		-0.254714, -0.837863, 0.482811,
		39.303207, 37.361465, 32.545998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953918, 37.572872, 32.095455>,  <39.481510, 37.947968, 32.208031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953918, 37.572872, 32.095455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711697, 37.288181, 32.237862>,  <39.566364, 37.117367, 32.323307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711697, 37.288181, 32.237862>,  <39.953918, 37.572872, 32.095455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711697, 37.288181, 32.237862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549358, -0.697533, -0.460059,
		0.575773, -0.083006, 0.813385,
		-0.605550, -0.711729, 0.356021,
		39.530033, 37.074661, 32.344669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358509, 37.053814, 32.522968>,  <39.953918, 37.572872, 32.095455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358509, 37.053814, 32.522968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013527, 36.892891, 32.400124>,  <39.806538, 36.796337, 32.326416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013527, 36.892891, 32.400124>,  <40.358509, 37.053814, 32.522968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013527, 36.892891, 32.400124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496515, -0.790249, -0.359136,
		-0.098213, -0.462225, 0.881307,
		-0.862454, -0.402311, -0.307114,
		39.754791, 36.772198, 32.307991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498138, 36.380642, 32.602268>,  <40.358509, 37.053814, 32.522968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498138, 36.380642, 32.602268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181545, 36.394695, 32.358196>,  <39.991589, 36.403126, 32.211754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181545, 36.394695, 32.358196>,  <40.498138, 36.380642, 32.602268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181545, 36.394695, 32.358196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423720, -0.687950, -0.589226,
		-0.440475, -0.724908, 0.529614,
		-0.791482, 0.035131, -0.610182,
		39.944099, 36.405235, 32.175140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339420, 35.640003, 32.413235>,  <40.498138, 36.380642, 32.602268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339420, 35.640003, 32.413235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189842, 35.882389, 32.132385>,  <40.100094, 36.027821, 31.963875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189842, 35.882389, 32.132385>,  <40.339420, 35.640003, 32.413235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189842, 35.882389, 32.132385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549264, -0.465311, -0.694115,
		-0.747312, -0.645211, -0.158832,
		-0.373944, 0.605961, -0.702123,
		40.077660, 36.064178, 31.921749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369179, 35.218410, 31.978401>,  <40.339420, 35.640003, 32.413235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369179, 35.218410, 31.978401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301086, 35.561249, 31.783916>,  <40.260231, 35.766953, 31.667227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301086, 35.561249, 31.783916>,  <40.369179, 35.218410, 31.978401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301086, 35.561249, 31.783916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511526, -0.344863, -0.787027,
		-0.842236, -0.382687, -0.379722,
		-0.170233, 0.857100, -0.486210,
		40.250015, 35.818378, 31.638054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126354, 35.010220, 31.233974>,  <40.369179, 35.218410, 31.978401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126354, 35.010220, 31.233974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294830, 35.372906, 31.242666>,  <40.395916, 35.590515, 31.247881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294830, 35.372906, 31.242666>,  <40.126354, 35.010220, 31.233974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294830, 35.372906, 31.242666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501456, -0.212843, -0.838594,
		-0.755737, 0.364106, -0.544323,
		0.421193, 0.906711, 0.021729,
		40.421188, 35.644920, 31.249186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025650, 35.202400, 30.583202>,  <40.126354, 35.010220, 31.233974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025650, 35.202400, 30.583202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312992, 35.458717, 30.691532>,  <40.485397, 35.612507, 30.756531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312992, 35.458717, 30.691532>,  <40.025650, 35.202400, 30.583202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312992, 35.458717, 30.691532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424510, -0.095355, -0.900388,
		-0.551135, 0.761771, -0.340521,
		0.718360, 0.640790, 0.270826,
		40.528500, 35.650955, 30.772779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111214, 35.723209, 30.005135>,  <40.025650, 35.202400, 30.583202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111214, 35.723209, 30.005135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449604, 35.698872, 30.217033>,  <40.652637, 35.684269, 30.344172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449604, 35.698872, 30.217033>,  <40.111214, 35.723209, 30.005135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449604, 35.698872, 30.217033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531424, 0.014566, -0.846981,
		0.043820, 0.998041, 0.044658,
		0.845972, -0.060847, 0.529745,
		40.703396, 35.680618, 30.375957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524227, 36.232044, 29.791729>,  <40.111214, 35.723209, 30.005135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524227, 36.232044, 29.791729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773666, 35.967545, 29.958523>,  <40.923328, 35.808846, 30.058599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773666, 35.967545, 29.958523>,  <40.524227, 36.232044, 29.791729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773666, 35.967545, 29.958523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485527, -0.090447, -0.869531,
		0.612691, 0.744694, 0.264651,
		0.623598, -0.661249, 0.416985,
		40.960747, 35.769169, 30.083618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112366, 36.422943, 29.497051>,  <40.524227, 36.232044, 29.791729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112366, 36.422943, 29.497051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174992, 36.052940, 29.635530>,  <41.212566, 35.830940, 29.718618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174992, 36.052940, 29.635530>,  <41.112366, 36.422943, 29.497051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174992, 36.052940, 29.635530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453049, -0.244206, -0.857385,
		0.877629, 0.291084, 0.380838,
		0.156568, -0.925005, 0.346198,
		41.221962, 35.775440, 29.739389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681946, 36.462677, 29.274178>,  <41.112366, 36.422943, 29.497051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681946, 36.462677, 29.274178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617649, 36.082451, 29.380459>,  <41.579071, 35.854317, 29.444227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617649, 36.082451, 29.380459>,  <41.681946, 36.462677, 29.274178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617649, 36.082451, 29.380459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653684, -0.304223, -0.692925,
		0.739500, 0.062306, 0.670267,
		-0.160738, -0.950561, 0.265701,
		41.569427, 35.797283, 29.460169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353012, 36.118755, 29.528147>,  <41.681946, 36.462677, 29.274178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353012, 36.118755, 29.528147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100651, 35.836830, 29.398405>,  <41.949234, 35.667675, 29.320560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100651, 35.836830, 29.398405>,  <42.353012, 36.118755, 29.528147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100651, 35.836830, 29.398405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642644, -0.240480, -0.727446,
		0.434710, -0.667392, 0.604661,
		-0.630901, -0.704810, -0.324357,
		41.911381, 35.625385, 29.301098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.235661, 33.456657, 28.686480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613953, 33.488312, 28.812546>,  <37.840927, 33.507305, 28.888186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613953, 33.488312, 28.812546>,  <37.235661, 33.456657, 28.686480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613953, 33.488312, 28.812546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324134, 0.298423, 0.897708,
		-0.023013, -0.951147, 0.307878,
		0.945731, 0.079135, 0.315167,
		37.897671, 33.512051, 28.907095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204720, 33.211483, 29.414230>,  <37.235661, 33.456657, 28.686480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204720, 33.211483, 29.414230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543434, 33.421101, 29.377724>,  <37.746662, 33.546871, 29.355820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543434, 33.421101, 29.377724>,  <37.204720, 33.211483, 29.414230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543434, 33.421101, 29.377724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186396, 0.453014, 0.871800,
		0.498213, -0.721213, 0.481285,
		0.846783, 0.524052, -0.091267,
		37.797470, 33.578316, 29.350344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418461, 33.213245, 30.058136>,  <37.204720, 33.211483, 29.414230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418461, 33.213245, 30.058136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625683, 33.507843, 29.884148>,  <37.750015, 33.684601, 29.779755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625683, 33.507843, 29.884148>,  <37.418461, 33.213245, 30.058136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625683, 33.507843, 29.884148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090809, 0.553016, 0.828207,
		0.850515, -0.389555, 0.353371,
		0.518052, 0.736492, -0.434973,
		37.781097, 33.728790, 29.753656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963169, 33.437210, 30.496138>,  <37.418461, 33.213245, 30.058136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963169, 33.437210, 30.496138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.860554, 33.748405, 30.266731>,  <37.798985, 33.935123, 30.129087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.860554, 33.748405, 30.266731>,  <37.963169, 33.437210, 30.496138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860554, 33.748405, 30.266731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292510, 0.503056, 0.813248,
		0.921209, 0.376388, 0.098517,
		-0.256537, 0.777989, -0.573517,
		37.783592, 33.981804, 30.094677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152042, 34.032524, 30.923061>,  <37.963169, 33.437210, 30.496138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152042, 34.032524, 30.923061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.891048, 34.167549, 30.651676>,  <37.734451, 34.248566, 30.488846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.891048, 34.167549, 30.651676>,  <38.152042, 34.032524, 30.923061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891048, 34.167549, 30.651676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473706, 0.517132, 0.712865,
		0.591490, 0.786528, -0.177518,
		-0.652489, 0.337561, -0.678462,
		37.695301, 34.268818, 30.448137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240143, 34.715137, 31.003342>,  <38.152042, 34.032524, 30.923061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240143, 34.715137, 31.003342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.890484, 34.692493, 30.810400>,  <37.680691, 34.678909, 30.694635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.890484, 34.692493, 30.810400>,  <38.240143, 34.715137, 31.003342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890484, 34.692493, 30.810400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418853, 0.590596, 0.689753,
		0.245832, 0.804980, -0.539976,
		-0.874145, -0.056607, -0.482356,
		37.628239, 34.675510, 30.665693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953949, 35.404331, 30.950993>,  <38.240143, 34.715137, 31.003342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953949, 35.404331, 30.950993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.651569, 35.143223, 30.931301>,  <37.470142, 34.986557, 30.919487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.651569, 35.143223, 30.931301>,  <37.953949, 35.404331, 30.950993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651569, 35.143223, 30.931301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445152, 0.457459, 0.769786,
		-0.479978, 0.603834, -0.636400,
		-0.755950, -0.652775, -0.049228,
		37.424786, 34.947392, 30.916533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393406, 35.882759, 31.012133>,  <37.953949, 35.404331, 30.950993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393406, 35.882759, 31.012133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.249184, 35.517513, 31.088266>,  <37.162651, 35.298367, 31.133945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.249184, 35.517513, 31.088266>,  <37.393406, 35.882759, 31.012133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249184, 35.517513, 31.088266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573309, 0.377912, 0.726979,
		-0.735743, 0.152995, -0.659753,
		-0.360552, -0.913113, 0.190333,
		37.141018, 35.243580, 31.145367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587490, 35.856426, 31.130812>,  <37.393406, 35.882759, 31.012133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587490, 35.856426, 31.130812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722298, 35.522549, 31.305035>,  <36.803181, 35.322224, 31.409569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722298, 35.522549, 31.305035>,  <36.587490, 35.856426, 31.130812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722298, 35.522549, 31.305035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495207, 0.236305, 0.836021,
		-0.800742, -0.497447, -0.333705,
		0.337020, -0.834690, 0.435558,
		36.823402, 35.272141, 31.435701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985703, 35.537071, 31.395151>,  <36.587490, 35.856426, 31.130812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985703, 35.537071, 31.395151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.279762, 35.353333, 31.594570>,  <36.456200, 35.243088, 31.714222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.279762, 35.353333, 31.594570>,  <35.985703, 35.537071, 31.395151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279762, 35.353333, 31.594570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571086, -0.023396, 0.820557,
		-0.365258, -0.887948, -0.279527,
		0.735151, -0.459349, 0.498549,
		36.500309, 35.215527, 31.744135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756054, 34.945557, 31.641523>,  <35.985703, 35.537071, 31.395151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756054, 34.945557, 31.641523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.063328, 35.016975, 31.887453>,  <36.247692, 35.059826, 32.035011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.063328, 35.016975, 31.887453>,  <35.756054, 34.945557, 31.641523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063328, 35.016975, 31.887453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603250, -0.119781, 0.788506,
		0.214431, -0.976613, 0.015696,
		0.768185, 0.178549, 0.614826,
		36.293785, 35.070541, 32.071899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607300, 34.358459, 32.114452>,  <35.756054, 34.945557, 31.641523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607300, 34.358459, 32.114452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.853455, 34.631046, 32.272896>,  <36.001148, 34.794598, 32.367962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.853455, 34.631046, 32.272896>,  <35.607300, 34.358459, 32.114452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853455, 34.631046, 32.272896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611602, 0.095810, 0.785342,
		0.497236, -0.725549, 0.475748,
		0.615385, 0.681469, 0.396107,
		36.038071, 34.835487, 32.391727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838291, 34.125809, 32.757912>,  <35.607300, 34.358459, 32.114452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838291, 34.125809, 32.757912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874634, 34.523296, 32.784042>,  <35.896439, 34.761787, 32.799721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874634, 34.523296, 32.784042>,  <35.838291, 34.125809, 32.757912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874634, 34.523296, 32.784042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548440, -0.004825, 0.836176,
		0.831240, -0.111797, 0.544557,
		0.090854, 0.993719, 0.065325,
		35.901890, 34.821411, 32.803638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159042, 34.299294, 33.383236>,  <35.838291, 34.125809, 32.757912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159042, 34.299294, 33.383236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954231, 34.628918, 33.286289>,  <35.831345, 34.826694, 33.228119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954231, 34.628918, 33.286289>,  <36.159042, 34.299294, 33.383236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954231, 34.628918, 33.286289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441581, -0.010507, 0.897160,
		0.736769, 0.566401, 0.369270,
		-0.512032, 0.824063, -0.242371,
		35.800621, 34.876137, 33.213577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635044, 33.967606, 33.878769>,  <36.159042, 34.299294, 33.383236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635044, 33.967606, 33.878769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783924, 33.694439, 34.130196>,  <36.873253, 33.530540, 34.281052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.783924, 33.694439, 34.130196>,  <36.635044, 33.967606, 33.878769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783924, 33.694439, 34.130196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474438, -0.442079, -0.761233,
		0.797734, 0.581543, 0.159461,
		0.372195, -0.682915, 0.628567,
		36.895584, 33.489563, 34.318768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294819, 33.871010, 33.685116>,  <36.635044, 33.967606, 33.878769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294819, 33.871010, 33.685116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.231976, 33.535011, 33.892853>,  <37.194267, 33.333412, 34.017494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.231976, 33.535011, 33.892853>,  <37.294819, 33.871010, 33.685116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231976, 33.535011, 33.892853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569183, -0.506768, -0.647469,
		0.807060, 0.193876, 0.557733,
		-0.157112, -0.839999, 0.519343,
		37.184841, 33.283012, 34.048656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948093, 33.601746, 33.793987>,  <37.294819, 33.871010, 33.685116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948093, 33.601746, 33.793987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711498, 33.289665, 33.875408>,  <37.569542, 33.102417, 33.924263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711498, 33.289665, 33.875408>,  <37.948093, 33.601746, 33.793987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711498, 33.289665, 33.875408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576671, -0.585768, -0.569496,
		0.563556, -0.219465, 0.796392,
		-0.591485, -0.780199, 0.203554,
		37.534054, 33.055607, 33.936474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403702, 33.002274, 33.947060>,  <37.948093, 33.601746, 33.793987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403702, 33.002274, 33.947060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047005, 32.867115, 33.826649>,  <37.832985, 32.786018, 33.754402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047005, 32.867115, 33.826649>,  <38.403702, 33.002274, 33.947060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047005, 32.867115, 33.826649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452524, -0.660453, -0.599186,
		0.003648, -0.670544, 0.741861,
		-0.891745, -0.337896, -0.301028,
		37.779480, 32.765747, 33.736340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460079, 32.267902, 33.975590>,  <38.403702, 33.002274, 33.947060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460079, 32.267902, 33.975590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.140690, 32.342010, 33.746464>,  <37.949059, 32.386475, 33.608986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.140690, 32.342010, 33.746464>,  <38.460079, 32.267902, 33.975590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140690, 32.342010, 33.746464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432548, -0.485251, -0.759891,
		-0.418741, -0.854522, 0.307323,
		-0.798473, 0.185266, -0.572816,
		37.901150, 32.397591, 33.574619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183231, 31.590893, 33.653522>,  <38.460079, 32.267902, 33.975590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183231, 31.590893, 33.653522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046387, 31.882303, 33.416134>,  <37.964279, 32.057152, 33.273701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046387, 31.882303, 33.416134>,  <38.183231, 31.590893, 33.653522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046387, 31.882303, 33.416134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270617, -0.528433, -0.804689,
		-0.899848, -0.435895, -0.016370,
		-0.342109, 0.728528, -0.593471,
		37.943752, 32.100861, 33.238094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702812, 31.300510, 33.087414>,  <38.183231, 31.590893, 33.653522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702812, 31.300510, 33.087414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842644, 31.650908, 32.954487>,  <37.926540, 31.861145, 32.874729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842644, 31.650908, 32.954487>,  <37.702812, 31.300510, 33.087414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842644, 31.650908, 32.954487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279235, -0.435990, -0.855535,
		-0.894329, 0.206280, -0.397019,
		0.349577, 0.875991, -0.332318,
		37.947517, 31.913706, 32.854790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598518, 31.238817, 32.311993>,  <37.702812, 31.300510, 33.087414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598518, 31.238817, 32.311993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865242, 31.530924, 32.371429>,  <38.025276, 31.706188, 32.407093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865242, 31.530924, 32.371429>,  <37.598518, 31.238817, 32.311993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865242, 31.530924, 32.371429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487669, -0.276819, -0.827979,
		-0.563511, 0.624568, -0.540713,
		0.666809, 0.730264, 0.148592,
		38.065285, 31.750004, 32.416008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812344, 31.334391, 31.616554>,  <37.598518, 31.238817, 32.311993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812344, 31.334391, 31.616554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080772, 31.546085, 31.824236>,  <38.241829, 31.673101, 31.948845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080772, 31.546085, 31.824236>,  <37.812344, 31.334391, 31.616554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080772, 31.546085, 31.824236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624514, -0.026098, -0.780577,
		-0.399560, 0.848073, -0.348030,
		0.671069, 0.529237, 0.519206,
		38.282093, 31.704857, 31.979998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938576, 31.950306, 31.190178>,  <37.812344, 31.334391, 31.616554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938576, 31.950306, 31.190178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258080, 31.884710, 31.421724>,  <38.449783, 31.845354, 31.560652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258080, 31.884710, 31.421724>,  <37.938576, 31.950306, 31.190178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258080, 31.884710, 31.421724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586163, -0.004751, -0.810179,
		0.135610, 0.986451, 0.092329,
		0.798764, -0.163988, 0.578865,
		38.497707, 31.835514, 31.595385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531292, 32.450504, 30.992527>,  <37.938576, 31.950306, 31.190178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531292, 32.450504, 30.992527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.692375, 32.131126, 31.171549>,  <38.789024, 31.939499, 31.278963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.692375, 32.131126, 31.171549>,  <38.531292, 32.450504, 30.992527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692375, 32.131126, 31.171549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434227, -0.263786, -0.861315,
		0.805774, 0.541200, 0.240479,
		0.402709, -0.798448, 0.447556,
		38.813187, 31.891592, 31.305815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336769, 32.540245, 30.883413>,  <38.531292, 32.450504, 30.992527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336769, 32.540245, 30.883413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.251266, 32.159134, 30.969690>,  <39.199966, 31.930468, 31.021458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.251266, 32.159134, 30.969690>,  <39.336769, 32.540245, 30.883413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251266, 32.159134, 30.969690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647492, -0.303515, -0.699023,
		0.731479, -0.009762, 0.681794,
		-0.213758, -0.952777, 0.215694,
		39.187138, 31.873301, 31.034399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901466, 32.247314, 30.780592>,  <39.336769, 32.540245, 30.883413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901466, 32.247314, 30.780592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.673416, 31.919117, 30.763918>,  <39.536587, 31.722197, 30.753914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.673416, 31.919117, 30.763918>,  <39.901466, 32.247314, 30.780592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673416, 31.919117, 30.763918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453618, -0.272085, -0.848646,
		0.684971, -0.502745, 0.527316,
		-0.570127, -0.820498, -0.041684,
		39.502377, 31.672968, 30.751413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356831, 31.700575, 30.598635>,  <39.901466, 32.247314, 30.780592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356831, 31.700575, 30.598635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.994049, 31.555805, 30.512428>,  <39.776379, 31.468943, 30.460705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.994049, 31.555805, 30.512428>,  <40.356831, 31.700575, 30.598635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994049, 31.555805, 30.512428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359134, -0.396998, -0.844639,
		0.220137, -0.843447, 0.490038,
		-0.906953, -0.361926, -0.215517,
		39.721962, 31.447227, 30.447773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961048, 31.346191, 30.802296>,  <40.356831, 31.700575, 30.598635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961048, 31.346191, 30.802296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.277252, 31.588793, 30.836348>,  <41.466972, 31.734354, 30.856779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.277252, 31.588793, 30.836348>,  <40.961048, 31.346191, 30.802296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277252, 31.588793, 30.836348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288182, 0.245701, 0.925517,
		0.540415, -0.756162, 0.369013,
		0.790508, 0.606506, 0.085132,
		41.514404, 31.770744, 30.861887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252411, 31.212723, 31.399519>,  <40.961048, 31.346191, 30.802296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252411, 31.212723, 31.399519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.387966, 31.582611, 31.330177>,  <41.469299, 31.804544, 31.288572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.387966, 31.582611, 31.330177>,  <41.252411, 31.212723, 31.399519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387966, 31.582611, 31.330177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148817, 0.234622, 0.960628,
		0.928984, -0.299743, 0.217124,
		0.338883, 0.924720, -0.173353,
		41.489632, 31.860027, 31.278172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565056, 31.363564, 31.947111>,  <41.252411, 31.212723, 31.399519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565056, 31.363564, 31.947111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.473747, 31.722775, 31.796679>,  <41.418961, 31.938301, 31.706419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.473747, 31.722775, 31.796679>,  <41.565056, 31.363564, 31.947111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473747, 31.722775, 31.796679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066670, 0.370957, 0.926254,
		0.971312, 0.236511, -0.024808,
		-0.228272, 0.898028, -0.376083,
		41.405266, 31.992184, 31.683853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009499, 31.817720, 32.301357>,  <41.565056, 31.363564, 31.947111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009499, 31.817720, 32.301357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.692078, 32.021812, 32.168732>,  <41.501625, 32.144268, 32.089157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.692078, 32.021812, 32.168732>,  <42.009499, 31.817720, 32.301357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692078, 32.021812, 32.168732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151349, 0.362269, 0.919703,
		0.589378, 0.780017, -0.210257,
		-0.793553, 0.510231, -0.331568,
		41.454010, 32.174881, 32.069260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053600, 32.365013, 32.780270>,  <42.009499, 31.817720, 32.301357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053600, 32.365013, 32.780270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.705975, 32.420532, 32.590336>,  <41.497398, 32.453842, 32.476376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.705975, 32.420532, 32.590336>,  <42.053600, 32.365013, 32.780270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705975, 32.420532, 32.590336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387621, 0.405321, 0.827928,
		0.307374, 0.903576, -0.298448,
		-0.869063, 0.138799, -0.474831,
		41.445255, 32.462173, 32.447887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871685, 33.069942, 32.858421>,  <42.053600, 32.365013, 32.780270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871685, 33.069942, 32.858421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.529354, 32.877197, 32.783199>,  <41.323956, 32.761551, 32.738068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.529354, 32.877197, 32.783199>,  <41.871685, 33.069942, 32.858421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529354, 32.877197, 32.783199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436035, 0.476508, 0.763422,
		-0.278255, 0.735358, -0.617919,
		-0.855832, -0.481860, -0.188051,
		41.272606, 32.732639, 32.726784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368702, 33.610580, 32.746250>,  <41.871685, 33.069942, 32.858421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368702, 33.610580, 32.746250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.141155, 33.291950, 32.828083>,  <41.004627, 33.100773, 32.877182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.141155, 33.291950, 32.828083>,  <41.368702, 33.610580, 32.746250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141155, 33.291950, 32.828083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439348, 0.504624, 0.743188,
		-0.695243, 0.332895, -0.637039,
		-0.568868, -0.796578, 0.204579,
		40.970493, 33.052979, 32.889458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759556, 33.944744, 32.887493>,  <41.368702, 33.610580, 32.746250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759556, 33.944744, 32.887493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.754089, 33.581936, 33.055843>,  <40.750809, 33.364250, 33.156853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.754089, 33.581936, 33.055843>,  <40.759556, 33.944744, 32.887493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754089, 33.581936, 33.055843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470079, 0.377323, 0.797906,
		-0.882519, -0.186942, -0.431524,
		-0.013662, -0.907017, 0.420872,
		40.749992, 33.309830, 33.182106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105968, 33.940029, 33.150948>,  <40.759556, 33.944744, 32.887493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105968, 33.940029, 33.150948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301655, 33.646149, 33.338940>,  <40.419067, 33.469822, 33.451733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301655, 33.646149, 33.338940>,  <40.105968, 33.940029, 33.150948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301655, 33.646149, 33.338940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406304, 0.284833, 0.868209,
		-0.771740, -0.615698, -0.159167,
		0.489218, -0.734702, 0.469977,
		40.448421, 33.425739, 33.479935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709824, 33.729858, 33.610710>,  <40.105968, 33.940029, 33.150948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709824, 33.729858, 33.610710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063618, 33.592587, 33.737144>,  <40.275894, 33.510223, 33.813004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063618, 33.592587, 33.737144>,  <39.709824, 33.729858, 33.610710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063618, 33.592587, 33.737144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278940, 0.154096, 0.947864,
		-0.373993, -0.926544, 0.040570,
		0.884489, -0.343178, 0.316081,
		40.328964, 33.489632, 33.831970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548321, 33.256142, 34.155384>,  <39.709824, 33.729858, 33.610710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548321, 33.256142, 34.155384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.924984, 33.385490, 34.192715>,  <40.150982, 33.463100, 34.215115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.924984, 33.385490, 34.192715>,  <39.548321, 33.256142, 34.155384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924984, 33.385490, 34.192715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199927, 0.314344, 0.928018,
		0.270757, -0.892535, 0.360655,
		0.941658, 0.323371, 0.093331,
		40.207481, 33.482502, 34.220715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856239, 32.952106, 34.690014>,  <39.548321, 33.256142, 34.155384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856239, 32.952106, 34.690014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.079647, 33.282398, 34.658443>,  <40.213692, 33.480572, 34.639500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.079647, 33.282398, 34.658443>,  <39.856239, 32.952106, 34.690014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079647, 33.282398, 34.658443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325225, 0.305521, 0.894922,
		0.763079, -0.474158, 0.439187,
		0.558515, 0.825731, -0.078928,
		40.247200, 33.530117, 34.634766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961079, 33.189644, 35.344597>,  <39.856239, 32.952106, 34.690014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961079, 33.189644, 35.344597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.073677, 33.513866, 35.139168>,  <40.141235, 33.708401, 35.015911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.073677, 33.513866, 35.139168>,  <39.961079, 33.189644, 35.344597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073677, 33.513866, 35.139168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184573, 0.570964, 0.799958,
		0.941643, -0.130394, 0.310331,
		0.281497, 0.810554, -0.513577,
		40.158127, 33.757034, 34.985096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511646, 33.459846, 35.770660>,  <39.961079, 33.189644, 35.344597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511646, 33.459846, 35.770660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320541, 33.720028, 35.534470>,  <40.205879, 33.876137, 35.392757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320541, 33.720028, 35.534470>,  <40.511646, 33.459846, 35.770660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320541, 33.720028, 35.534470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140774, 0.606773, 0.782310,
		0.867138, 0.456880, -0.198325,
		-0.477760, 0.650452, -0.590473,
		40.177212, 33.915165, 35.357327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.779888, 35.532448, 29.301052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.439148, 35.394100, 29.143709>,  <42.234703, 35.311092, 29.049303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.439148, 35.394100, 29.143709>,  <42.779888, 35.532448, 29.301052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439148, 35.394100, 29.143709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468034, -0.165454, -0.868084,
		0.235164, -0.923578, 0.302822,
		-0.851846, -0.345873, -0.393357,
		42.183594, 35.290337, 29.025702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771919, 34.793533, 29.051573>,  <42.779888, 35.532448, 29.301052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771919, 34.793533, 29.051573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.456947, 34.929165, 28.845667>,  <42.267963, 35.010544, 28.722124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.456947, 34.929165, 28.845667>,  <42.771919, 34.793533, 29.051573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456947, 34.929165, 28.845667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452259, -0.249623, -0.856242,
		-0.418834, -0.907034, 0.043206,
		-0.787426, 0.339083, -0.514765,
		42.220718, 35.030891, 28.691236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567978, 34.206779, 28.661539>,  <42.771919, 34.793533, 29.051573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567978, 34.206779, 28.661539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.421799, 34.540596, 28.496616>,  <42.334091, 34.740887, 28.397663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.421799, 34.540596, 28.496616>,  <42.567978, 34.206779, 28.661539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421799, 34.540596, 28.496616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569384, -0.149999, -0.808271,
		-0.736378, -0.530140, -0.420356,
		-0.365443, 0.834537, -0.412309,
		42.312164, 34.790958, 28.372923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110996, 34.115982, 28.108412>,  <42.567978, 34.206779, 28.661539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110996, 34.115982, 28.108412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.257961, 34.485123, 28.062176>,  <42.346138, 34.706608, 28.034433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.257961, 34.485123, 28.062176>,  <42.110996, 34.115982, 28.108412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257961, 34.485123, 28.062176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524653, -0.308271, -0.793542,
		-0.767952, 0.230909, -0.597437,
		0.367408, 0.922849, -0.115590,
		42.368183, 34.761978, 28.027498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132656, 34.144878, 27.463631>,  <42.110996, 34.115982, 28.108412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132656, 34.144878, 27.463631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.376083, 34.441288, 27.577139>,  <42.522141, 34.619133, 27.645245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.376083, 34.441288, 27.577139>,  <42.132656, 34.144878, 27.463631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376083, 34.441288, 27.577139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679613, -0.302151, -0.668454,
		-0.409600, 0.599655, -0.687490,
		0.608568, 0.741026, 0.283772,
		42.558655, 34.663597, 27.662270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309559, 34.352985, 26.808697>,  <42.132656, 34.144878, 27.463631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309559, 34.352985, 26.808697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.592796, 34.481934, 27.059988>,  <42.762741, 34.559303, 27.210764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.592796, 34.481934, 27.059988>,  <42.309559, 34.352985, 26.808697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592796, 34.481934, 27.059988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688802, -0.511160, -0.514069,
		0.155403, 0.796737, -0.584003,
		0.708097, 0.322375, 0.628230,
		42.805225, 34.578648, 27.248457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830219, 34.713413, 26.431482>,  <42.309559, 34.352985, 26.808697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830219, 34.713413, 26.431482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.998913, 34.632099, 26.784939>,  <43.100128, 34.583313, 26.997013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.998913, 34.632099, 26.784939>,  <42.830219, 34.713413, 26.431482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998913, 34.632099, 26.784939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757087, -0.457339, -0.466541,
		0.498963, 0.865747, -0.038971,
		0.421730, -0.203283, 0.883640,
		43.125431, 34.571114, 27.050032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523998, 34.871201, 26.385708>,  <42.830219, 34.713413, 26.431482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523998, 34.871201, 26.385708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.493877, 34.599686, 26.677895>,  <43.475807, 34.436779, 26.853207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.493877, 34.599686, 26.677895>,  <43.523998, 34.871201, 26.385708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493877, 34.599686, 26.677895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778204, -0.498031, -0.382574,
		0.623481, 0.539644, 0.565735,
		-0.075300, -0.678785, 0.730466,
		43.471287, 34.396049, 26.897034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247955, 34.657562, 26.527967>,  <43.523998, 34.871201, 26.385708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247955, 34.657562, 26.527967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.038284, 34.371052, 26.712223>,  <43.912483, 34.199146, 26.822777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.038284, 34.371052, 26.712223>,  <44.247955, 34.657562, 26.527967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038284, 34.371052, 26.712223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708608, -0.666859, -0.230596,
		0.472353, 0.205542, 0.857108,
		-0.524173, -0.716276, 0.460641,
		43.881031, 34.156170, 26.850416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739079, 34.235977, 26.912352>,  <44.247955, 34.657562, 26.527967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739079, 34.235977, 26.912352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.411121, 34.014030, 26.855928>,  <44.214348, 33.880863, 26.822075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.411121, 34.014030, 26.855928>,  <44.739079, 34.235977, 26.912352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411121, 34.014030, 26.855928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562189, -0.733686, -0.381640,
		0.108270, -0.392203, 0.913485,
		-0.819891, -0.554871, -0.141056,
		44.165154, 33.847569, 26.813612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891190, 33.599144, 27.198933>,  <44.739079, 34.235977, 26.912352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891190, 33.599144, 27.198933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.608574, 33.539604, 26.922195>,  <44.439007, 33.503880, 26.756153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.608574, 33.539604, 26.922195>,  <44.891190, 33.599144, 27.198933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608574, 33.539604, 26.922195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543158, -0.740744, -0.395319,
		-0.453635, -0.655089, 0.604214,
		-0.706537, -0.148853, -0.691844,
		44.396614, 33.494949, 26.714642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703625, 32.855206, 27.170364>,  <44.891190, 33.599144, 27.198933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703625, 32.855206, 27.170364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.612324, 33.019505, 26.817278>,  <44.557545, 33.118084, 26.605427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.612324, 33.019505, 26.817278>,  <44.703625, 32.855206, 27.170364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612324, 33.019505, 26.817278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607025, -0.648813, -0.458871,
		-0.761199, -0.640567, -0.101246,
		-0.228248, 0.410750, -0.882716,
		44.543850, 33.142731, 26.552464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606007, 32.222279, 26.691063>,  <44.703625, 32.855206, 27.170364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606007, 32.222279, 26.691063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.688927, 32.568008, 26.507774>,  <44.738678, 32.775448, 26.397800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.688927, 32.568008, 26.507774>,  <44.606007, 32.222279, 26.691063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688927, 32.568008, 26.507774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617334, -0.478936, -0.624114,
		-0.758897, -0.153497, -0.632862,
		0.207300, 0.864326, -0.458222,
		44.751118, 32.827305, 26.370308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434635, 32.170799, 25.922167>,  <44.606007, 32.222279, 26.691063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434635, 32.170799, 25.922167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.733982, 32.423286, 26.003670>,  <44.913589, 32.574780, 26.052572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.733982, 32.423286, 26.003670>,  <44.434635, 32.170799, 25.922167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733982, 32.423286, 26.003670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607791, -0.529588, -0.591715,
		-0.265590, 0.566662, -0.779972,
		0.748366, 0.631214, 0.203759,
		44.958492, 32.612652, 26.064796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834160, 32.135864, 25.366545>,  <44.434635, 32.170799, 25.922167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834160, 32.135864, 25.366545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786552, 31.756836, 25.485163>,  <43.757988, 31.529419, 25.556334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.786552, 31.756836, 25.485163>,  <43.834160, 32.135864, 25.366545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786552, 31.756836, 25.485163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391724, 0.319251, 0.862920,
		-0.912353, -0.013461, -0.409184,
		-0.119017, -0.947574, 0.296543,
		43.750847, 31.472563, 25.574125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172424, 32.092201, 25.700979>,  <43.834160, 32.135864, 25.366545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172424, 32.092201, 25.700979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.363068, 31.771887, 25.846079>,  <43.477451, 31.579699, 25.933138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.363068, 31.771887, 25.846079>,  <43.172424, 32.092201, 25.700979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363068, 31.771887, 25.846079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514712, 0.080325, 0.853592,
		-0.712684, -0.593537, -0.373892,
		0.476606, -0.800788, 0.362747,
		43.506050, 31.531651, 25.954903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612972, 31.792984, 25.970560>,  <43.172424, 32.092201, 25.700979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612972, 31.792984, 25.970560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.938396, 31.623077, 26.129406>,  <43.133652, 31.521133, 26.224712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.938396, 31.623077, 26.129406>,  <42.612972, 31.792984, 25.970560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938396, 31.623077, 26.129406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432541, 0.014360, 0.901500,
		-0.388629, -0.905189, -0.172046,
		0.813558, -0.424766, 0.397112,
		43.182465, 31.495647, 26.248539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364742, 31.297176, 26.466167>,  <42.612972, 31.792984, 25.970560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364742, 31.297176, 26.466167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.740993, 31.376219, 26.576569>,  <42.966743, 31.423645, 26.642809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.740993, 31.376219, 26.576569>,  <42.364742, 31.297176, 26.466167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740993, 31.376219, 26.576569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291658, 0.054480, 0.954970,
		0.173672, -0.978767, 0.108878,
		0.940624, 0.197606, 0.276003,
		43.023182, 31.435501, 26.659370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495819, 30.796219, 27.096277>,  <42.364742, 31.297176, 26.466167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495819, 30.796219, 27.096277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.791649, 31.062502, 27.135994>,  <42.969147, 31.222271, 27.159824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.791649, 31.062502, 27.135994>,  <42.495819, 30.796219, 27.096277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791649, 31.062502, 27.135994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153570, 0.023267, 0.987864,
		0.655318, -0.745850, 0.119440,
		0.739577, 0.665707, 0.099293,
		43.013523, 31.262215, 27.165781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026409, 30.502228, 27.614250>,  <42.495819, 30.796219, 27.096277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026409, 30.502228, 27.614250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.056049, 30.900135, 27.586130>,  <43.073833, 31.138880, 27.569258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.056049, 30.900135, 27.586130>,  <43.026409, 30.502228, 27.614250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056049, 30.900135, 27.586130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033122, 0.068001, 0.997135,
		0.996700, -0.076219, -0.027910,
		0.074103, 0.994769, -0.070301,
		43.078281, 31.198566, 27.565041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416714, 30.718107, 28.247404>,  <43.026409, 30.502228, 27.614250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416714, 30.718107, 28.247404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.272083, 31.077085, 28.146330>,  <43.185303, 31.292473, 28.085686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.272083, 31.077085, 28.146330>,  <43.416714, 30.718107, 28.247404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272083, 31.077085, 28.146330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236204, 0.174004, 0.955997,
		0.901924, 0.405355, 0.149064,
		-0.361580, 0.897446, -0.252685,
		43.163609, 31.346319, 28.070524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618015, 31.137827, 28.781780>,  <43.416714, 30.718107, 28.247404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618015, 31.137827, 28.781780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.342300, 31.362270, 28.598459>,  <43.176872, 31.496937, 28.488466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.342300, 31.362270, 28.598459>,  <43.618015, 31.137827, 28.781780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342300, 31.362270, 28.598459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333764, 0.315525, 0.888283,
		0.643029, 0.765246, -0.030209,
		-0.689286, 0.561109, -0.458303,
		43.135513, 31.530603, 28.460968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650551, 31.866882, 29.126692>,  <43.618015, 31.137827, 28.781780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650551, 31.866882, 29.126692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.286213, 31.814409, 28.970156>,  <43.067608, 31.782927, 28.876234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.286213, 31.814409, 28.970156>,  <43.650551, 31.866882, 29.126692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286213, 31.814409, 28.970156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412695, 0.275383, 0.868244,
		-0.006129, 0.952342, -0.304970,
		-0.910849, -0.131181, -0.391339,
		43.012959, 31.775055, 28.852755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224293, 32.488651, 29.164679>,  <43.650551, 31.866882, 29.126692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224293, 32.488651, 29.164679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.974934, 32.175964, 29.171438>,  <42.825317, 31.988352, 29.175495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.974934, 32.175964, 29.171438>,  <43.224293, 32.488651, 29.164679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974934, 32.175964, 29.171438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301456, 0.260233, 0.917280,
		-0.721454, 0.566738, -0.397884,
		-0.623400, -0.781720, 0.016900,
		42.787914, 31.941448, 29.176508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564880, 32.708324, 29.371315>,  <43.224293, 32.488651, 29.164679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564880, 32.708324, 29.371315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.503410, 32.315060, 29.410881>,  <42.466530, 32.079102, 29.434620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.503410, 32.315060, 29.410881>,  <42.564880, 32.708324, 29.371315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503410, 32.315060, 29.410881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716907, 0.179826, 0.673578,
		-0.680021, 0.032601, -0.732468,
		-0.153675, -0.983158, 0.098914,
		42.457306, 32.020111, 29.440556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811905, 32.527130, 29.318855>,  <42.564880, 32.708324, 29.371315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811905, 32.527130, 29.318855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.976757, 32.241470, 29.545177>,  <42.075668, 32.070076, 29.680971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.976757, 32.241470, 29.545177>,  <41.811905, 32.527130, 29.318855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976757, 32.241470, 29.545177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772653, 0.055167, 0.632427,
		-0.482862, -0.697815, -0.529054,
		0.412130, -0.714150, 0.565807,
		42.100395, 32.027225, 29.714920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223347, 32.312077, 29.767822>,  <41.811905, 32.527130, 29.318855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223347, 32.312077, 29.767822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.560154, 32.173374, 29.933117>,  <41.762238, 32.090153, 30.032293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.560154, 32.173374, 29.933117>,  <41.223347, 32.312077, 29.767822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560154, 32.173374, 29.933117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499655, -0.212558, 0.839741,
		-0.203368, -0.913545, -0.352245,
		0.842014, -0.346777, 0.413229,
		41.812759, 32.069347, 30.057089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065834, 31.689255, 30.068472>,  <41.223347, 32.312077, 29.767822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065834, 31.689255, 30.068472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.396179, 31.805553, 30.261728>,  <41.594387, 31.875332, 30.377682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.396179, 31.805553, 30.261728>,  <41.065834, 31.689255, 30.068472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396179, 31.805553, 30.261728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479604, -0.088407, 0.873020,
		0.296539, -0.952707, 0.066431,
		0.825860, 0.290746, 0.483139,
		41.643936, 31.892776, 30.406670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617390, 31.053061, 30.242723>,  <41.065834, 31.689255, 30.068472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617390, 31.053061, 30.242723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.241219, 31.140541, 30.138601>,  <40.015514, 31.193029, 30.076128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.241219, 31.140541, 30.138601>,  <40.617390, 31.053061, 30.242723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241219, 31.140541, 30.138601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147383, -0.427707, -0.891821,
		-0.306376, -0.877061, 0.369996,
		-0.940432, 0.218702, -0.260304,
		39.959087, 31.206152, 30.060511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387238, 30.489998, 29.905369>,  <40.617390, 31.053061, 30.242723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387238, 30.489998, 29.905369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.138714, 30.774437, 29.773720>,  <39.989601, 30.945101, 29.694731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.138714, 30.774437, 29.773720>,  <40.387238, 30.489998, 29.905369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138714, 30.774437, 29.773720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072694, -0.365910, -0.927807,
		-0.780188, -0.600377, 0.175650,
		-0.621306, 0.711096, -0.329122,
		39.952320, 30.987766, 29.674984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927345, 30.191677, 29.569633>,  <40.387238, 30.489998, 29.905369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927345, 30.191677, 29.569633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.880360, 30.564398, 29.432262>,  <39.852169, 30.788031, 29.349840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.880360, 30.564398, 29.432262>,  <39.927345, 30.191677, 29.569633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880360, 30.564398, 29.432262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050289, -0.350960, -0.935039,
		-0.991803, -0.092566, 0.088086,
		-0.117468, 0.931804, -0.343428,
		39.845119, 30.843939, 29.329233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461674, 30.166748, 29.078747>,  <39.927345, 30.191677, 29.569633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461674, 30.166748, 29.078747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.625900, 30.513550, 28.965792>,  <39.724434, 30.721630, 28.898020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.625900, 30.513550, 28.965792>,  <39.461674, 30.166748, 29.078747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625900, 30.513550, 28.965792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058924, -0.334271, -0.940633,
		-0.909926, 0.369550, -0.188327,
		0.410563, 0.867004, -0.282387,
		39.749069, 30.773651, 28.881075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186382, 30.315720, 28.415491>,  <39.461674, 30.166748, 29.078747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186382, 30.315720, 28.415491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517525, 30.539799, 28.427038>,  <39.716209, 30.674246, 28.433966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517525, 30.539799, 28.427038>,  <39.186382, 30.315720, 28.415491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517525, 30.539799, 28.427038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262342, -0.341171, -0.902651,
		-0.495815, 0.754838, -0.429404,
		0.827855, 0.560198, 0.028868,
		39.765881, 30.707859, 28.435699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236263, 30.515951, 27.803446>,  <39.186382, 30.315720, 28.415491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236263, 30.515951, 27.803446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.600800, 30.620092, 27.930996>,  <39.819519, 30.682577, 28.007526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.600800, 30.620092, 27.930996>,  <39.236263, 30.515951, 27.803446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600800, 30.620092, 27.930996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341840, -0.047024, -0.938581,
		-0.229369, 0.964367, -0.131855,
		0.911337, 0.260355, 0.318873,
		39.874199, 30.698198, 28.026657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470161, 31.016960, 27.247000>,  <39.236263, 30.515951, 27.803446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470161, 31.016960, 27.247000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.777233, 30.862478, 27.451551>,  <39.961475, 30.769789, 27.574282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.777233, 30.862478, 27.451551>,  <39.470161, 31.016960, 27.247000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777233, 30.862478, 27.451551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494090, -0.151462, -0.856116,
		0.408090, 0.909893, 0.074545,
		0.767683, -0.386204, 0.511379,
		40.007538, 30.746616, 27.604965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459980, 31.730280, 27.051771>,  <39.470161, 31.016960, 27.247000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459980, 31.730280, 27.051771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397308, 32.098431, 26.908464>,  <39.359707, 32.319321, 26.822481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397308, 32.098431, 26.908464>,  <39.459980, 31.730280, 27.051771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397308, 32.098431, 26.908464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200786, 0.325487, 0.923982,
		0.967024, 0.216705, 0.133802,
		-0.156680, 0.920379, -0.358265,
		39.350304, 32.374546, 26.800985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800758, 32.087978, 27.517532>,  <39.459980, 31.730280, 27.051771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800758, 32.087978, 27.517532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533604, 32.322174, 27.333736>,  <39.373310, 32.462692, 27.223459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533604, 32.322174, 27.333736>,  <39.800758, 32.087978, 27.517532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533604, 32.322174, 27.333736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130496, 0.515688, 0.846780,
		0.732731, 0.625516, -0.268019,
		-0.667889, 0.585487, -0.459488,
		39.333237, 32.497822, 27.195890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870182, 32.696487, 27.847881>,  <39.800758, 32.087978, 27.517532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870182, 32.696487, 27.847881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.526764, 32.737301, 27.646891>,  <39.320713, 32.761791, 27.526297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.526764, 32.737301, 27.646891>,  <39.870182, 32.696487, 27.847881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526764, 32.737301, 27.646891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414528, 0.438641, 0.797346,
		0.301766, 0.892851, -0.334297,
		-0.858548, 0.102037, -0.502478,
		39.269199, 32.767914, 27.496147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690865, 33.400864, 28.040199>,  <39.870182, 32.696487, 27.847881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690865, 33.400864, 28.040199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.365242, 33.227470, 27.885588>,  <39.169868, 33.123432, 27.792822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.365242, 33.227470, 27.885588>,  <39.690865, 33.400864, 28.040199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365242, 33.227470, 27.885588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580545, 0.588086, 0.563136,
		-0.016801, 0.682820, -0.730393,
		-0.814054, -0.433488, -0.386528,
		39.121025, 33.097424, 27.769629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271473, 33.910702, 27.699888>,  <39.690865, 33.400864, 28.040199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271473, 33.910702, 27.699888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.053352, 33.599529, 27.824774>,  <38.922482, 33.412827, 27.899706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.053352, 33.599529, 27.824774>,  <39.271473, 33.910702, 27.699888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053352, 33.599529, 27.824774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457783, 0.588387, 0.666510,
		-0.702199, 0.220522, -0.676969,
		-0.545300, -0.777927, 0.312214,
		38.889763, 33.366150, 27.918438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640251, 34.207905, 27.848661>,  <39.271473, 33.910702, 27.699888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640251, 34.207905, 27.848661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606064, 33.843601, 28.010258>,  <38.585552, 33.625019, 28.107216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606064, 33.843601, 28.010258>,  <38.640251, 34.207905, 27.848661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606064, 33.843601, 28.010258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602994, 0.370071, 0.706714,
		-0.793153, -0.183201, -0.580814,
		-0.085471, -0.910760, 0.403992,
		38.580421, 33.570374, 28.131456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892246, 34.044857, 27.918655>,  <38.640251, 34.207905, 27.848661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892246, 34.044857, 27.918655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.111015, 33.858822, 28.197098>,  <38.242275, 33.747200, 28.364164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.111015, 33.858822, 28.197098>,  <37.892246, 34.044857, 27.918655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111015, 33.858822, 28.197098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476028, 0.511225, 0.715574,
		-0.688674, -0.722731, 0.058205,
		0.546923, -0.465090, 0.696108,
		38.275093, 33.719296, 28.405930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.722866, 34.726757, 23.621477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.899151, 34.640068, 23.969915>,  <43.004921, 34.588055, 24.178978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.899151, 34.640068, 23.969915>,  <42.722866, 34.726757, 23.621477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899151, 34.640068, 23.969915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884477, 0.060796, 0.462605,
		-0.153215, -0.974339, -0.164890,
		0.440709, -0.216719, 0.871095,
		43.031364, 34.575054, 24.231245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206856, 34.327427, 23.982523>,  <42.722866, 34.726757, 23.621477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206856, 34.327427, 23.982523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.437519, 34.430962, 24.292482>,  <42.575916, 34.493084, 24.478458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.437519, 34.430962, 24.292482>,  <42.206856, 34.327427, 23.982523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437519, 34.430962, 24.292482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816967, 0.176229, 0.549098,
		0.005569, -0.949708, 0.313088,
		0.576658, 0.258840, 0.774898,
		42.610516, 34.508614, 24.524952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759956, 34.156734, 24.510288>,  <42.206856, 34.327427, 23.982523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759956, 34.156734, 24.510288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.027515, 34.398315, 24.683640>,  <42.188049, 34.543262, 24.787651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.027515, 34.398315, 24.683640>,  <41.759956, 34.156734, 24.510288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027515, 34.398315, 24.683640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692284, 0.293752, 0.659130,
		0.270780, -0.740910, 0.614598,
		0.668896, 0.603955, 0.433378,
		42.228184, 34.579502, 24.813654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793930, 33.963718, 25.247593>,  <41.759956, 34.156734, 24.510288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793930, 33.963718, 25.247593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.890697, 34.347343, 25.188705>,  <41.948757, 34.577518, 25.153374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.890697, 34.347343, 25.188705>,  <41.793930, 33.963718, 25.247593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890697, 34.347343, 25.188705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635049, 0.271217, 0.723294,
		0.733612, -0.081489, 0.674665,
		0.241921, 0.959062, -0.147219,
		41.963272, 34.635063, 25.144541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021957, 34.233318, 25.869267>,  <41.793930, 33.963718, 25.247593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021957, 34.233318, 25.869267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.912548, 34.557781, 25.662498>,  <41.846905, 34.752460, 25.538437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.912548, 34.557781, 25.662498>,  <42.021957, 34.233318, 25.869267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912548, 34.557781, 25.662498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475361, 0.353201, 0.805780,
		0.836193, 0.466120, 0.288987,
		-0.273519, 0.811161, -0.516920,
		41.830494, 34.801128, 25.507423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890987, 34.863670, 26.376263>,  <42.021957, 34.233318, 25.869267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890987, 34.863670, 26.376263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.742889, 35.012478, 26.035788>,  <41.654030, 35.101761, 25.831503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.742889, 35.012478, 26.035788>,  <41.890987, 34.863670, 26.376263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742889, 35.012478, 26.035788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638378, 0.563759, 0.524070,
		0.674829, 0.737414, 0.028759,
		-0.370243, 0.372016, -0.851190,
		41.631817, 35.124084, 25.780430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778049, 35.591873, 26.554638>,  <41.890987, 34.863670, 26.376263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778049, 35.591873, 26.554638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.539043, 35.525337, 26.240873>,  <41.395638, 35.485416, 26.052614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.539043, 35.525337, 26.240873>,  <41.778049, 35.591873, 26.554638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539043, 35.525337, 26.240873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696360, 0.592657, 0.404772,
		0.397559, 0.788092, -0.469954,
		-0.597519, -0.166336, -0.784412,
		41.359787, 35.475437, 26.005550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465324, 36.206116, 26.452448>,  <41.778049, 35.591873, 26.554638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465324, 36.206116, 26.452448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.224499, 35.958935, 26.250202>,  <41.080002, 35.810627, 26.128855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.224499, 35.958935, 26.250202>,  <41.465324, 36.206116, 26.452448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224499, 35.958935, 26.250202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795698, 0.411867, 0.444106,
		-0.066191, 0.669699, -0.739677,
		-0.602066, -0.617956, -0.505617,
		41.043880, 35.773548, 26.098516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952473, 36.669308, 26.124348>,  <41.465324, 36.206116, 26.452448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952473, 36.669308, 26.124348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.803680, 36.302734, 26.183382>,  <40.714405, 36.082790, 26.218803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.803680, 36.302734, 26.183382>,  <40.952473, 36.669308, 26.124348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803680, 36.302734, 26.183382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688698, 0.379082, 0.618055,
		-0.622353, 0.128265, -0.772156,
		-0.371985, -0.916431, 0.147587,
		40.692085, 36.027805, 26.227657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267212, 36.689426, 25.801664>,  <40.952473, 36.669308, 26.124348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267212, 36.689426, 25.801664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.257912, 36.386684, 26.062933>,  <40.252331, 36.205040, 26.219694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.257912, 36.386684, 26.062933>,  <40.267212, 36.689426, 25.801664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257912, 36.386684, 26.062933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741441, 0.451320, 0.496564,
		-0.670615, -0.472743, -0.571655,
		-0.023252, -0.756851, 0.653173,
		40.250935, 36.159630, 26.258884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459549, 36.490993, 25.947462>,  <40.267212, 36.689426, 25.801664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459549, 36.490993, 25.947462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688435, 36.352005, 26.244604>,  <39.825768, 36.268612, 26.422890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688435, 36.352005, 26.244604>,  <39.459549, 36.490993, 25.947462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688435, 36.352005, 26.244604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741977, 0.166503, 0.649420,
		-0.349340, -0.922791, -0.162537,
		0.572216, -0.347467, 0.742857,
		39.860100, 36.247765, 26.467461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982571, 36.041515, 26.282450>,  <39.459549, 36.490993, 25.947462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982571, 36.041515, 26.282450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.266434, 36.130131, 26.549973>,  <39.436752, 36.183300, 26.710487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.266434, 36.130131, 26.549973>,  <38.982571, 36.041515, 26.282450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266434, 36.130131, 26.549973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703734, 0.177374, 0.687966,
		0.033777, -0.958886, 0.281774,
		0.709660, 0.221531, 0.668810,
		39.479332, 36.196590, 26.750616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379105, 35.657864, 26.194521>,  <38.982571, 36.041515, 26.282450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379105, 35.657864, 26.194521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.003727, 35.693901, 26.061127>,  <37.778500, 35.715523, 25.981091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.003727, 35.693901, 26.061127>,  <38.379105, 35.657864, 26.194521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003727, 35.693901, 26.061127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281159, -0.361669, -0.888901,
		-0.200689, -0.927944, 0.314076,
		-0.938442, 0.090087, -0.333483,
		37.722195, 35.720928, 25.961082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310577, 35.141418, 25.847874>,  <38.379105, 35.657864, 26.194521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310577, 35.141418, 25.847874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013153, 35.367153, 25.704405>,  <37.834698, 35.502594, 25.618324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013153, 35.367153, 25.704405>,  <38.310577, 35.141418, 25.847874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013153, 35.367153, 25.704405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215180, -0.305918, -0.927422,
		-0.633103, -0.766770, 0.106034,
		-0.743557, 0.564337, -0.358672,
		37.790085, 35.536453, 25.596804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053356, 34.714012, 25.277830>,  <38.310577, 35.141418, 25.847874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053356, 34.714012, 25.277830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.945805, 35.091228, 25.199476>,  <37.881275, 35.317558, 25.152464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.945805, 35.091228, 25.199476>,  <38.053356, 34.714012, 25.277830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945805, 35.091228, 25.199476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189253, -0.147682, -0.970759,
		-0.944398, -0.298089, -0.138766,
		-0.268879, 0.943045, -0.195885,
		37.865139, 35.374142, 25.140711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487789, 34.701092, 24.774033>,  <38.053356, 34.714012, 25.277830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487789, 34.701092, 24.774033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.694859, 35.042778, 24.754744>,  <37.819099, 35.247791, 24.743170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.694859, 35.042778, 24.754744>,  <37.487789, 34.701092, 24.774033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694859, 35.042778, 24.754744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472112, -0.332203, -0.816548,
		-0.713529, 0.399940, -0.575260,
		0.517673, 0.854218, -0.048221,
		37.850159, 35.299042, 24.740278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340355, 34.958336, 24.086363>,  <37.487789, 34.701092, 24.774033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340355, 34.958336, 24.086363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.680210, 35.128551, 24.210962>,  <37.884125, 35.230682, 24.285721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.680210, 35.128551, 24.210962>,  <37.340355, 34.958336, 24.086363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680210, 35.128551, 24.210962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452070, -0.283538, -0.845718,
		-0.271567, 0.859372, -0.433279,
		0.849638, 0.425541, 0.311497,
		37.935101, 35.256214, 24.304411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640751, 35.502068, 23.645994>,  <37.340355, 34.958336, 24.086363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640751, 35.502068, 23.645994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.972301, 35.419243, 23.853876>,  <38.171230, 35.369549, 23.978605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.972301, 35.419243, 23.853876>,  <37.640751, 35.502068, 23.645994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972301, 35.419243, 23.853876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483543, -0.202014, -0.851690,
		0.281340, 0.957244, -0.067321,
		0.828875, -0.207062, 0.519703,
		38.220963, 35.357124, 24.009787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197403, 35.814606, 23.242886>,  <37.640751, 35.502068, 23.645994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197403, 35.814606, 23.242886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.333481, 35.512825, 23.467411>,  <38.415127, 35.331757, 23.602127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.333481, 35.512825, 23.467411>,  <38.197403, 35.814606, 23.242886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333481, 35.512825, 23.467411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417823, -0.413483, -0.808984,
		0.842432, 0.509741, 0.174562,
		0.340194, -0.754451, 0.561313,
		38.435539, 35.286491, 23.635805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823288, 35.509907, 22.841042>,  <38.197403, 35.814606, 23.242886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823288, 35.509907, 22.841042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.766800, 35.237766, 23.128702>,  <38.732906, 35.074482, 23.301298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.766800, 35.237766, 23.128702>,  <38.823288, 35.509907, 22.841042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766800, 35.237766, 23.128702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335405, -0.716350, -0.611838,
		0.931429, 0.154801, 0.329358,
		-0.141222, -0.680352, 0.719150,
		38.724434, 35.033661, 23.344448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424404, 34.983109, 22.709379>,  <38.823288, 35.509907, 22.841042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424404, 34.983109, 22.709379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157021, 34.786789, 22.932907>,  <38.996590, 34.668995, 23.067024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157021, 34.786789, 22.932907>,  <39.424404, 34.983109, 22.709379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157021, 34.786789, 22.932907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194421, -0.840537, -0.505667,
		0.717892, -0.229369, 0.657283,
		-0.668455, -0.490803, 0.558821,
		38.956486, 34.639549, 23.100554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813519, 34.398827, 22.826408>,  <39.424404, 34.983109, 22.709379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813519, 34.398827, 22.826408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.440441, 34.274872, 22.900219>,  <39.216595, 34.200500, 22.944506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.440441, 34.274872, 22.900219>,  <39.813519, 34.398827, 22.826408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440441, 34.274872, 22.900219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241873, -0.916950, -0.317332,
		0.267539, -0.251342, 0.930188,
		-0.932696, -0.309886, 0.184527,
		39.160633, 34.181908, 22.955578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949413, 33.835358, 22.993448>,  <39.813519, 34.398827, 22.826408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949413, 33.835358, 22.993448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.558048, 33.812939, 22.913874>,  <39.323231, 33.799488, 22.866129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.558048, 33.812939, 22.913874>,  <39.949413, 33.835358, 22.993448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558048, 33.812939, 22.913874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116348, -0.944892, -0.306010,
		-0.170824, -0.322549, 0.931011,
		-0.978408, -0.056047, -0.198938,
		39.264526, 33.796124, 22.854193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658955, 33.247517, 23.348715>,  <39.949413, 33.835358, 22.993448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658955, 33.247517, 23.348715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.429619, 33.340492, 23.034452>,  <39.292019, 33.396278, 22.845896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.429619, 33.340492, 23.034452>,  <39.658955, 33.247517, 23.348715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429619, 33.340492, 23.034452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045639, -0.948362, -0.313888,
		-0.818046, -0.215821, 0.533125,
		-0.573339, 0.232443, -0.785654,
		39.257618, 33.410225, 22.798756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389675, 33.161495, 23.681776>,  <39.658955, 33.247517, 23.348715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389675, 33.161495, 23.681776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.230412, 32.830940, 23.522499>,  <40.134853, 32.632607, 23.426933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.230412, 32.830940, 23.522499>,  <40.389675, 33.161495, 23.681776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230412, 32.830940, 23.522499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062574, -0.457540, 0.886985,
		-0.915181, 0.328243, 0.233883,
		-0.398157, -0.826386, -0.398192,
		40.110966, 32.583023, 23.403042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906586, 32.680248, 23.907347>,  <40.389675, 33.161495, 23.681776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906586, 32.680248, 23.907347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.518921, 32.629574, 23.822792>,  <40.286324, 32.599171, 23.772058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.518921, 32.629574, 23.822792>,  <40.906586, 32.680248, 23.907347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518921, 32.629574, 23.822792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231205, 0.170470, 0.957854,
		-0.085308, 0.977185, -0.194502,
		-0.969158, -0.126682, -0.211388,
		40.228172, 32.591568, 23.759377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538532, 33.018867, 24.395819>,  <40.906586, 32.680248, 23.907347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538532, 33.018867, 24.395819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270340, 32.760990, 24.248945>,  <40.109425, 32.606262, 24.160822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270340, 32.760990, 24.248945>,  <40.538532, 33.018867, 24.395819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270340, 32.760990, 24.248945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453068, -0.036130, 0.890744,
		-0.587524, 0.763586, -0.267865,
		-0.670482, -0.644694, -0.367184,
		40.069195, 32.567581, 24.138790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832481, 33.284946, 24.556505>,  <40.538532, 33.018867, 24.395819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832481, 33.284946, 24.556505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.819630, 32.888027, 24.508640>,  <39.811916, 32.649876, 24.479921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.819630, 32.888027, 24.508640>,  <39.832481, 33.284946, 24.556505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819630, 32.888027, 24.508640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371337, -0.099304, 0.923173,
		-0.927942, 0.074098, -0.365285,
		-0.032131, -0.992294, -0.119664,
		39.809990, 32.590340, 24.472742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276875, 33.193008, 24.950691>,  <39.832481, 33.284946, 24.556505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276875, 33.193008, 24.950691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.454922, 32.839211, 24.894768>,  <39.561749, 32.626934, 24.861214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.454922, 32.839211, 24.894768>,  <39.276875, 33.193008, 24.950691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454922, 32.839211, 24.894768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330962, -0.307568, 0.892113,
		-0.832069, -0.350820, -0.429637,
		0.445113, -0.884493, -0.139810,
		39.588455, 32.573864, 24.852825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788067, 32.716461, 25.118914>,  <39.276875, 33.193008, 24.950691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788067, 32.716461, 25.118914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.153347, 32.555202, 25.142694>,  <39.372517, 32.458447, 25.156963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.153347, 32.555202, 25.142694>,  <38.788067, 32.716461, 25.118914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153347, 32.555202, 25.142694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150025, -0.196959, 0.968865,
		-0.378890, -0.893687, -0.240346,
		0.913201, -0.403151, 0.059450,
		39.427307, 32.434258, 25.160530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658165, 32.228134, 25.466461>,  <38.788067, 32.716461, 25.118914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658165, 32.228134, 25.466461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.056931, 32.237179, 25.496548>,  <39.296188, 32.242607, 25.514599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.056931, 32.237179, 25.496548>,  <38.658165, 32.228134, 25.466461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056931, 32.237179, 25.496548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070220, -0.172385, 0.982524,
		0.035184, -0.984770, -0.170265,
		0.996911, 0.022613, 0.075216,
		39.356003, 32.243961, 25.519112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859314, 31.663340, 25.861984>,  <38.658165, 32.228134, 25.466461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859314, 31.663340, 25.861984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.152626, 31.930683, 25.911951>,  <39.328613, 32.091087, 25.941931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.152626, 31.930683, 25.911951>,  <38.859314, 31.663340, 25.861984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152626, 31.930683, 25.911951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119326, -0.054374, 0.991365,
		0.669379, -0.741850, 0.039881,
		0.733276, 0.668358, 0.124919,
		39.372608, 32.131191, 25.949427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333744, 31.456463, 26.281246>,  <38.859314, 31.663340, 25.861984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333744, 31.456463, 26.281246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.386448, 31.851479, 26.315668>,  <39.418068, 32.088490, 26.336321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.386448, 31.851479, 26.315668>,  <39.333744, 31.456463, 26.281246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386448, 31.851479, 26.315668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081024, -0.075792, 0.993826,
		0.987965, -0.137917, 0.070028,
		0.131758, 0.987540, 0.086055,
		39.425976, 32.147739, 26.341484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991947, 31.225878, 26.732498>,  <39.333744, 31.456463, 26.281246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991947, 31.225878, 26.732498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186428, 30.966822, 26.967161>,  <40.303116, 30.811388, 27.107960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186428, 30.966822, 26.967161>,  <39.991947, 31.225878, 26.732498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186428, 30.966822, 26.967161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692403, -0.124035, -0.710770,
		0.533090, 0.751782, 0.388122,
		0.486203, -0.647641, 0.586658,
		40.332291, 30.772530, 27.143158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707558, 31.385761, 26.716972>,  <39.991947, 31.225878, 26.732498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707558, 31.385761, 26.716972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.688034, 30.994650, 26.798527>,  <40.676319, 30.759983, 26.847460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.688034, 30.994650, 26.798527>,  <40.707558, 31.385761, 26.716972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688034, 30.994650, 26.798527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605931, -0.191263, -0.772183,
		0.794019, 0.085848, 0.601801,
		-0.048812, -0.977777, 0.203885,
		40.673389, 30.701317, 26.859692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349323, 31.122805, 26.705704>,  <40.707558, 31.385761, 26.716972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349323, 31.122805, 26.705704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.130856, 30.794157, 26.640419>,  <40.999775, 30.596970, 26.601248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.130856, 30.794157, 26.640419>,  <41.349323, 31.122805, 26.705704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130856, 30.794157, 26.640419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630710, -0.275126, -0.725610,
		0.551271, -0.499249, 0.668469,
		-0.546173, -0.821618, -0.163212,
		40.967003, 30.547672, 26.591455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854317, 30.547049, 26.482626>,  <41.349323, 31.122805, 26.705704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854317, 30.547049, 26.482626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.494419, 30.414291, 26.369267>,  <41.278481, 30.334637, 26.301250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.494419, 30.414291, 26.369267>,  <41.854317, 30.547049, 26.482626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494419, 30.414291, 26.369267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394972, -0.343012, -0.852256,
		0.185649, -0.878743, 0.439710,
		-0.899740, -0.331894, -0.283400,
		41.224499, 30.314724, 26.284246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995438, 29.978031, 26.061054>,  <41.854317, 30.547049, 26.482626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995438, 29.978031, 26.061054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.617798, 30.048576, 25.949644>,  <41.391216, 30.090904, 25.882797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.617798, 30.048576, 25.949644>,  <41.995438, 29.978031, 26.061054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617798, 30.048576, 25.949644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229433, -0.255185, -0.939277,
		-0.236723, -0.950673, 0.200458,
		-0.944099, 0.176357, -0.278524,
		41.334568, 30.101486, 25.866087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895950, 29.377205, 25.610189>,  <41.995438, 29.978031, 26.061054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895950, 29.377205, 25.610189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.635612, 29.676332, 25.557775>,  <41.479412, 29.855810, 25.526327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.635612, 29.676332, 25.557775>,  <41.895950, 29.377205, 25.610189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635612, 29.676332, 25.557775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215157, 0.016157, -0.976446,
		-0.728090, -0.663704, -0.171414,
		-0.650840, 0.747821, -0.131037,
		41.440361, 29.900679, 25.518465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440479, 29.184425, 25.033360>,  <41.895950, 29.377205, 25.610189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440479, 29.184425, 25.033360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.445229, 29.583662, 25.057602>,  <41.448078, 29.823204, 25.072147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.445229, 29.583662, 25.057602>,  <41.440479, 29.184425, 25.033360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445229, 29.583662, 25.057602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442621, 0.049106, -0.895364,
		-0.896631, 0.037455, -0.441193,
		0.011871, 0.998091, 0.060608,
		41.448792, 29.883089, 25.075785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082008, 29.350122, 24.414789>,  <41.440479, 29.184425, 25.033360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082008, 29.350122, 24.414789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.285305, 29.674004, 24.532145>,  <41.407284, 29.868332, 24.602558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.285305, 29.674004, 24.532145>,  <41.082008, 29.350122, 24.414789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285305, 29.674004, 24.532145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388343, 0.088599, -0.917246,
		-0.768689, 0.580116, -0.269412,
		0.508239, 0.809701, 0.293389,
		41.437778, 29.916914, 24.620161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960705, 29.809963, 23.934071>,  <41.082008, 29.350122, 24.414789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960705, 29.809963, 23.934071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.284500, 29.973671, 24.102467>,  <41.478775, 30.071896, 24.203505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.284500, 29.973671, 24.102467>,  <40.960705, 29.809963, 23.934071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284500, 29.973671, 24.102467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433431, 0.067150, -0.898681,
		-0.396072, 0.909939, -0.123033,
		0.809484, 0.409269, 0.420992,
		41.527344, 30.096451, 24.228764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.922989, 36.285187, 37.548000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299591, 36.349442, 37.666500>,  <35.525551, 36.387997, 37.737598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299591, 36.349442, 37.666500>,  <34.922989, 36.285187, 37.548000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299591, 36.349442, 37.666500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316175, -0.725291, -0.611544,
		0.116628, 0.669438, -0.733656,
		0.941505, 0.160640, 0.296248,
		35.582043, 36.397633, 37.755375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318504, 36.450176, 36.924484>,  <34.922989, 36.285187, 37.548000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318504, 36.450176, 36.924484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584023, 36.331135, 37.198944>,  <35.743332, 36.259708, 37.363621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584023, 36.331135, 37.198944>,  <35.318504, 36.450176, 36.924484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584023, 36.331135, 37.198944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348511, -0.688652, -0.635845,
		0.661751, 0.661204, -0.353406,
		0.663797, -0.297605, 0.686152,
		35.783161, 36.241852, 37.404789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861080, 36.690571, 36.701241>,  <35.318504, 36.450176, 36.924484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861080, 36.690571, 36.701241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939495, 36.367336, 36.923435>,  <35.986542, 36.173393, 37.056751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939495, 36.367336, 36.923435>,  <35.861080, 36.690571, 36.701241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939495, 36.367336, 36.923435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418994, -0.443134, -0.792513,
		0.886575, 0.388104, 0.251716,
		0.196034, -0.808089, 0.555485,
		35.998306, 36.124908, 37.090080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559429, 36.404419, 36.435223>,  <35.861080, 36.690571, 36.701241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559429, 36.404419, 36.435223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394123, 36.110481, 36.650341>,  <36.294941, 35.934120, 36.779411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394123, 36.110481, 36.650341>,  <36.559429, 36.404419, 36.435223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394123, 36.110481, 36.650341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433260, -0.678128, -0.593656,
		0.800936, -0.012332, 0.598623,
		-0.413265, -0.734840, 0.537794,
		36.270145, 35.890030, 36.811680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102470, 35.882961, 36.617912>,  <36.559429, 36.404419, 36.435223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102470, 35.882961, 36.617912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762959, 35.672131, 36.634735>,  <36.559254, 35.545631, 36.644829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762959, 35.672131, 36.634735>,  <37.102470, 35.882961, 36.617912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762959, 35.672131, 36.634735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418209, -0.717871, -0.556564,
		0.323540, -0.454812, 0.829740,
		-0.848778, -0.527075, 0.042053,
		36.508324, 35.514008, 36.647350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318150, 35.227970, 36.631161>,  <37.102470, 35.882961, 36.617912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318150, 35.227970, 36.631161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929253, 35.153934, 36.573914>,  <36.695915, 35.109512, 36.539566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929253, 35.153934, 36.573914>,  <37.318150, 35.227970, 36.631161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929253, 35.153934, 36.573914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233971, -0.770226, -0.593304,
		-0.000416, -0.610321, 0.792154,
		-0.972244, -0.185094, -0.143118,
		36.637581, 35.098408, 36.530979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203693, 34.562061, 36.771118>,  <37.318150, 35.227970, 36.631161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203693, 34.562061, 36.771118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907410, 34.671280, 36.525581>,  <36.729641, 34.736813, 36.378258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907410, 34.671280, 36.525581>,  <37.203693, 34.562061, 36.771118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907410, 34.671280, 36.525581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133573, -0.835592, -0.532865,
		-0.658417, -0.476688, 0.582456,
		-0.740705, 0.273047, -0.613840,
		36.685200, 34.753193, 36.341431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809685, 33.970802, 36.676445>,  <37.203693, 34.562061, 36.771118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809685, 33.970802, 36.676445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.732857, 34.207661, 36.363403>,  <36.686760, 34.349777, 36.175579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.732857, 34.207661, 36.363403>,  <36.809685, 33.970802, 36.676445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732857, 34.207661, 36.363403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080378, -0.785281, -0.613899,
		-0.978084, -0.180816, 0.103234,
		-0.192071, 0.592148, -0.782605,
		36.675236, 34.385303, 36.128620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431416, 33.550056, 36.175732>,  <36.809685, 33.970802, 36.676445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431416, 33.550056, 36.175732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525291, 33.870083, 35.954891>,  <36.581619, 34.062099, 35.822388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525291, 33.870083, 35.954891>,  <36.431416, 33.550056, 36.175732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525291, 33.870083, 35.954891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237598, -0.597949, -0.765509,
		-0.942585, 0.048482, -0.330429,
		0.234693, 0.800066, -0.552099,
		36.595699, 34.110104, 35.789261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957626, 33.483124, 35.606312>,  <36.431416, 33.550056, 36.175732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957626, 33.483124, 35.606312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289310, 33.689186, 35.519573>,  <36.488323, 33.812824, 35.467529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289310, 33.689186, 35.519573>,  <35.957626, 33.483124, 35.606312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289310, 33.689186, 35.519573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165464, -0.596823, -0.785127,
		-0.533877, 0.615159, -0.580134,
		0.829215, 0.515152, -0.216843,
		36.538074, 33.843731, 35.454521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861534, 33.576797, 34.945881>,  <35.957626, 33.483124, 35.606312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861534, 33.576797, 34.945881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247353, 33.648163, 35.023663>,  <36.478844, 33.690983, 35.070332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247353, 33.648163, 35.023663>,  <35.861534, 33.576797, 34.945881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247353, 33.648163, 35.023663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259888, -0.514073, -0.817427,
		-0.045876, 0.838986, -0.542216,
		0.964548, 0.178416, 0.194459,
		36.536716, 33.701687, 35.082001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107498, 33.967171, 34.442059>,  <35.861534, 33.576797, 34.945881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107498, 33.967171, 34.442059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417419, 33.770817, 34.601414>,  <36.603374, 33.653004, 34.697025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417419, 33.770817, 34.601414>,  <36.107498, 33.967171, 34.442059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417419, 33.770817, 34.601414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262782, -0.323074, -0.909158,
		0.574996, 0.809110, -0.121325,
		0.774806, -0.490880, 0.398386,
		36.649860, 33.623554, 34.720928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883984, 34.596939, 33.993240>,  <36.107498, 33.967171, 34.442059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883984, 34.596939, 33.993240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678532, 34.832294, 33.743446>,  <35.555260, 34.973507, 33.593571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678532, 34.832294, 33.743446>,  <35.883984, 34.596939, 33.993240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678532, 34.832294, 33.743446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696018, 0.139886, 0.704267,
		0.501741, 0.796384, 0.337682,
		-0.513630, 0.588392, -0.624484,
		35.524445, 35.008812, 33.556103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659996, 35.128387, 34.466209>,  <35.883984, 34.596939, 33.993240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659996, 35.128387, 34.466209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407574, 35.117496, 34.156105>,  <35.256119, 35.110962, 33.970043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407574, 35.117496, 34.156105>,  <35.659996, 35.128387, 34.466209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407574, 35.117496, 34.156105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757762, 0.235533, 0.608540,
		0.166027, 0.971485, -0.169270,
		-0.631056, -0.027232, -0.775259,
		35.218258, 35.109325, 33.923527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255138, 35.677696, 34.542416>,  <35.659996, 35.128387, 34.466209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255138, 35.677696, 34.542416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035519, 35.422604, 34.326324>,  <34.903748, 35.269547, 34.196671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035519, 35.422604, 34.326324>,  <35.255138, 35.677696, 34.542416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035519, 35.422604, 34.326324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795580, 0.200713, 0.571636,
		-0.256121, 0.743648, -0.617568,
		-0.549049, -0.637732, -0.540224,
		34.870804, 35.231285, 34.164257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753632, 36.025791, 34.257996>,  <35.255138, 35.677696, 34.542416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753632, 36.025791, 34.257996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602612, 35.656509, 34.229305>,  <34.511997, 35.434940, 34.212090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602612, 35.656509, 34.229305>,  <34.753632, 36.025791, 34.257996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602612, 35.656509, 34.229305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785586, 0.278338, 0.552614,
		-0.490211, 0.264992, -0.830345,
		-0.377555, -0.923205, -0.071730,
		34.489346, 35.379547, 34.207787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044067, 36.171135, 34.164837>,  <34.753632, 36.025791, 34.257996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044067, 36.171135, 34.164837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044792, 35.786869, 34.275925>,  <34.045227, 35.556309, 34.342579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044792, 35.786869, 34.275925>,  <34.044067, 36.171135, 34.164837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044792, 35.786869, 34.275925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797106, 0.166314, 0.580484,
		-0.603837, -0.222423, -0.765447,
		0.001809, -0.960660, 0.277721,
		34.045334, 35.498672, 34.359241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393982, 35.892879, 33.953125>,  <34.044067, 36.171135, 34.164837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393982, 35.892879, 33.953125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527912, 35.613358, 34.205971>,  <33.608269, 35.445644, 34.357677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527912, 35.613358, 34.205971>,  <33.393982, 35.892879, 33.953125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527912, 35.613358, 34.205971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902878, -0.045958, 0.427434,
		-0.269641, -0.713838, -0.646320,
		0.334822, -0.698802, 0.632116,
		33.628357, 35.403717, 34.395607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985687, 35.314995, 33.859169>,  <33.393982, 35.892879, 33.953125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985687, 35.314995, 33.859169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143501, 35.275757, 34.224621>,  <33.238190, 35.252213, 34.443893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143501, 35.275757, 34.224621>,  <32.985687, 35.314995, 33.859169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143501, 35.275757, 34.224621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916820, 0.024536, 0.398545,
		-0.061513, -0.994874, -0.080258,
		0.394533, -0.098098, 0.913630,
		33.261860, 35.246326, 34.498711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565216, 34.785706, 34.213654>,  <32.985687, 35.314995, 33.859169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565216, 34.785706, 34.213654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749222, 34.983505, 34.508640>,  <32.859627, 35.102184, 34.685635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749222, 34.983505, 34.508640>,  <32.565216, 34.785706, 34.213654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749222, 34.983505, 34.508640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887205, 0.222849, 0.403987,
		0.035425, -0.840127, 0.541232,
		0.460013, 0.494495, 0.737470,
		32.887226, 35.131855, 34.729881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230061, 34.621220, 34.832779>,  <32.565216, 34.785706, 34.213654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230061, 34.621220, 34.832779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401245, 34.975758, 34.903477>,  <32.503956, 35.188480, 34.945896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401245, 34.975758, 34.903477>,  <32.230061, 34.621220, 34.832779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401245, 34.975758, 34.903477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824342, 0.302628, 0.478412,
		0.370550, -0.350442, 0.860165,
		0.427965, 0.886345, 0.176745,
		32.529636, 35.241661, 34.956501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262943, 34.886414, 35.603447>,  <32.230061, 34.621220, 34.832779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262943, 34.886414, 35.603447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270020, 35.212551, 35.371964>,  <32.274265, 35.408234, 35.233074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270020, 35.212551, 35.371964>,  <32.262943, 34.886414, 35.603447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270020, 35.212551, 35.371964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794817, 0.362619, 0.486593,
		0.606591, 0.451358, 0.654464,
		0.017694, 0.815342, -0.578709,
		32.275326, 35.457153, 35.198353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933874, 35.428623, 36.006382>,  <32.262943, 34.886414, 35.603447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933874, 35.428623, 36.006382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947773, 35.617783, 35.654209>,  <31.956112, 35.731277, 35.442905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947773, 35.617783, 35.654209>,  <31.933874, 35.428623, 36.006382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947773, 35.617783, 35.654209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591975, 0.719527, 0.363107,
		0.805207, 0.508579, 0.304941,
		0.034745, 0.472894, -0.880434,
		31.958197, 35.759651, 35.390079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083771, 36.160625, 36.089520>,  <31.933874, 35.428623, 36.006382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083771, 36.160625, 36.089520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889637, 36.152561, 35.739880>,  <31.773157, 36.147720, 35.530094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889637, 36.152561, 35.739880>,  <32.083771, 36.160625, 36.089520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889637, 36.152561, 35.739880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594826, 0.740334, 0.313189,
		0.640810, 0.671937, -0.371301,
		-0.485330, -0.020165, -0.874098,
		31.744038, 36.146511, 35.477650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982567, 36.810249, 35.965935>,  <32.083771, 36.160625, 36.089520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982567, 36.810249, 35.965935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713255, 36.624146, 35.736076>,  <31.551668, 36.512482, 35.598160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713255, 36.624146, 35.736076>,  <31.982567, 36.810249, 35.965935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713255, 36.624146, 35.736076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707268, 0.631842, 0.317095,
		0.215556, 0.619926, -0.754472,
		-0.673282, -0.465262, -0.574651,
		31.511271, 36.484566, 35.563683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611795, 37.381653, 35.639137>,  <31.982567, 36.810249, 35.965935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611795, 37.381653, 35.639137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.360121, 37.070778, 35.635155>,  <31.209116, 36.884251, 35.632763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.360121, 37.070778, 35.635155>,  <31.611795, 37.381653, 35.639137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360121, 37.070778, 35.635155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679267, 0.543590, 0.493058,
		-0.377786, 0.316990, -0.869940,
		-0.629185, -0.777192, -0.009960,
		31.171366, 36.837620, 35.632168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290951, 37.624180, 35.752102>,  <31.611795, 37.381653, 35.639137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290951, 37.624180, 35.752102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577072, 37.897949, 35.808537>,  <32.748745, 38.062210, 35.842400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577072, 37.897949, 35.808537>,  <32.290951, 37.624180, 35.752102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577072, 37.897949, 35.808537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100732, 0.098805, -0.989995,
		-0.691520, 0.722355, 0.001731,
		0.715299, 0.684427, 0.141091,
		32.791660, 38.103279, 35.850864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210796, 38.080120, 35.206039>,  <32.290951, 37.624180, 35.752102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210796, 38.080120, 35.206039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586994, 38.160999, 35.315277>,  <32.812714, 38.209526, 35.380817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586994, 38.160999, 35.315277>,  <32.210796, 38.080120, 35.206039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586994, 38.160999, 35.315277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296592, -0.096285, -0.950138,
		-0.165819, 0.974600, -0.150526,
		0.940498, 0.202196, 0.273093,
		32.869144, 38.221657, 35.397205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521496, 38.453068, 34.752369>,  <32.210796, 38.080120, 35.206039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521496, 38.453068, 34.752369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.824310, 38.243599, 34.908653>,  <33.006001, 38.117916, 35.002422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.824310, 38.243599, 34.908653>,  <32.521496, 38.453068, 34.752369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824310, 38.243599, 34.908653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405470, -0.092361, -0.909430,
		0.512331, 0.846897, 0.142413,
		0.757041, -0.523674, 0.390711,
		33.051422, 38.086498, 35.025867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999340, 38.612247, 34.298359>,  <32.521496, 38.453068, 34.752369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999340, 38.612247, 34.298359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188854, 38.332020, 34.511799>,  <33.302563, 38.163883, 34.639862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188854, 38.332020, 34.511799>,  <32.999340, 38.612247, 34.298359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188854, 38.332020, 34.511799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572614, -0.215266, -0.791058,
		0.669059, 0.680337, 0.299168,
		0.473785, -0.700573, 0.533597,
		33.330990, 38.121849, 34.671879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649189, 38.717621, 34.152264>,  <32.999340, 38.612247, 34.298359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649189, 38.717621, 34.152264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.623898, 38.331551, 34.253803>,  <33.608723, 38.099907, 34.314728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.623898, 38.331551, 34.253803>,  <33.649189, 38.717621, 34.152264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623898, 38.331551, 34.253803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452301, -0.254446, -0.854799,
		0.889622, 0.060768, 0.452638,
		-0.063227, -0.965176, 0.253846,
		33.604931, 38.041996, 34.329956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286720, 38.448925, 34.052540>,  <33.649189, 38.717621, 34.152264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286720, 38.448925, 34.052540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049007, 38.128647, 34.022289>,  <33.906380, 37.936481, 34.004139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049007, 38.128647, 34.022289>,  <34.286720, 38.448925, 34.052540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049007, 38.128647, 34.022289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468200, -0.267974, -0.842009,
		0.653924, -0.535800, 0.534137,
		-0.594283, -0.800692, -0.075627,
		33.870724, 37.888439, 33.999599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778889, 37.792217, 33.890884>,  <34.286720, 38.448925, 34.052540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778889, 37.792217, 33.890884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.407482, 37.688705, 33.784386>,  <34.184639, 37.626598, 33.720486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.407482, 37.688705, 33.784386>,  <34.778889, 37.792217, 33.890884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407482, 37.688705, 33.784386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361156, -0.463103, -0.809384,
		0.086152, -0.847684, 0.523459,
		-0.928517, -0.258780, -0.266249,
		34.128925, 37.611073, 33.704510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781723, 37.098953, 33.624950>,  <34.778889, 37.792217, 33.890884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781723, 37.098953, 33.624950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446560, 37.247768, 33.465206>,  <34.245461, 37.337059, 33.369358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446560, 37.247768, 33.465206>,  <34.781723, 37.098953, 33.624950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446560, 37.247768, 33.465206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213853, -0.449404, -0.867354,
		-0.502167, -0.812170, 0.296998,
		-0.837911, 0.372043, -0.399361,
		34.195187, 37.359383, 33.345398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354015, 36.523376, 33.379604>,  <34.781723, 37.098953, 33.624950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354015, 36.523376, 33.379604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267075, 36.852428, 33.169445>,  <34.214909, 37.049858, 33.043350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267075, 36.852428, 33.169445>,  <34.354015, 36.523376, 33.379604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267075, 36.852428, 33.169445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303508, -0.454628, -0.837374,
		-0.927708, -0.341467, -0.150859,
		-0.217351, 0.822626, -0.525400,
		34.201870, 37.099216, 33.011826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261078, 36.232933, 32.856792>,  <34.354015, 36.523376, 33.379604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261078, 36.232933, 32.856792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268898, 36.618832, 32.751812>,  <34.273590, 36.850372, 32.688824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268898, 36.618832, 32.751812>,  <34.261078, 36.232933, 32.856792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268898, 36.618832, 32.751812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213406, -0.260481, -0.941598,
		-0.976768, -0.037596, -0.210977,
		0.019555, 0.964747, -0.262453,
		34.274765, 36.908257, 32.673077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893120, 36.222553, 32.270409>,  <34.261078, 36.232933, 32.856792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893120, 36.222553, 32.270409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100513, 36.564392, 32.258900>,  <34.224949, 36.769497, 32.251995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100513, 36.564392, 32.258900>,  <33.893120, 36.222553, 32.270409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100513, 36.564392, 32.258900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226664, -0.169802, -0.959057,
		-0.824497, 0.490738, -0.281747,
		0.518487, 0.854602, -0.028769,
		34.256058, 36.820774, 32.250271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672314, 36.566643, 31.667717>,  <33.893120, 36.222553, 32.270409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672314, 36.566643, 31.667717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022778, 36.745537, 31.739626>,  <34.233055, 36.852875, 31.782772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022778, 36.745537, 31.739626>,  <33.672314, 36.566643, 31.667717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022778, 36.745537, 31.739626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271978, -0.150783, -0.950417,
		-0.397956, 0.881613, -0.253749,
		0.876161, 0.447239, 0.179774,
		34.285625, 36.879707, 31.793558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815712, 37.090023, 31.086317>,  <33.672314, 36.566643, 31.667717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815712, 37.090023, 31.086317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173519, 37.017818, 31.249901>,  <34.388203, 36.974495, 31.348051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173519, 37.017818, 31.249901>,  <33.815712, 37.090023, 31.086317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173519, 37.017818, 31.249901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371674, -0.207987, -0.904765,
		0.248375, 0.961332, -0.118959,
		0.894521, -0.180507, 0.408961,
		34.441875, 36.963665, 31.372589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300648, 37.308887, 30.611042>,  <33.815712, 37.090023, 31.086317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300648, 37.308887, 30.611042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520958, 37.074055, 30.848352>,  <34.653145, 36.933155, 30.990740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520958, 37.074055, 30.848352>,  <34.300648, 37.308887, 30.611042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520958, 37.074055, 30.848352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570499, -0.254042, -0.781021,
		0.609241, 0.768633, 0.195009,
		0.550778, -0.587082, 0.593277,
		34.686192, 36.897930, 31.026335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927563, 37.508522, 30.656151>,  <34.300648, 37.308887, 30.611042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927563, 37.508522, 30.656151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955097, 37.118320, 30.739733>,  <34.971619, 36.884201, 30.789883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955097, 37.118320, 30.739733>,  <34.927563, 37.508522, 30.656151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955097, 37.118320, 30.739733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628026, -0.120369, -0.768827,
		0.775142, 0.184152, 0.604354,
		0.068835, -0.975499, 0.208956,
		34.975746, 36.825672, 30.802420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543518, 37.413010, 30.423746>,  <34.927563, 37.508522, 30.656151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543518, 37.413010, 30.423746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398556, 37.043060, 30.469828>,  <35.311581, 36.821091, 30.497477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398556, 37.043060, 30.469828>,  <35.543518, 37.413010, 30.423746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398556, 37.043060, 30.469828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582736, -0.321318, -0.746440,
		0.727380, -0.203379, 0.655404,
		-0.362403, -0.924874, 0.115204,
		35.289833, 36.765598, 30.504389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028839, 37.029922, 30.379536>,  <35.543518, 37.413010, 30.423746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028839, 37.029922, 30.379536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735764, 36.785545, 30.259590>,  <35.559917, 36.638920, 30.187622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735764, 36.785545, 30.259590>,  <36.028839, 37.029922, 30.379536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735764, 36.785545, 30.259590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595251, -0.361693, -0.717533,
		0.329911, -0.704224, 0.628672,
		-0.732690, -0.610939, -0.299864,
		35.515957, 36.602264, 30.169630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406300, 36.481243, 30.063259>,  <36.028839, 37.029922, 30.379536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406300, 36.481243, 30.063259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028252, 36.471725, 29.932919>,  <35.801422, 36.466015, 29.854713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028252, 36.471725, 29.932919>,  <36.406300, 36.481243, 30.063259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028252, 36.471725, 29.932919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316847, -0.310068, -0.896362,
		-0.079710, -0.950417, 0.300591,
		-0.945121, -0.023792, -0.325852,
		35.744717, 36.464588, 29.835163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303917, 35.801998, 29.810938>,  <36.406300, 36.481243, 30.063259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303917, 35.801998, 29.810938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026157, 36.030224, 29.635544>,  <35.859501, 36.167160, 29.530308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026157, 36.030224, 29.635544>,  <36.303917, 35.801998, 29.810938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026157, 36.030224, 29.635544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298357, -0.326223, -0.896973,
		-0.654825, -0.753681, 0.056296,
		-0.694397, 0.570565, -0.438485,
		35.817837, 36.201393, 29.503998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951958, 35.324741, 29.457952>,  <36.303917, 35.801998, 29.810938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951958, 35.324741, 29.457952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873589, 35.684170, 29.300888>,  <35.826565, 35.899826, 29.206650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873589, 35.684170, 29.300888>,  <35.951958, 35.324741, 29.457952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873589, 35.684170, 29.300888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306785, -0.324157, -0.894877,
		-0.931395, -0.295792, -0.212158,
		-0.195925, 0.898571, -0.392663,
		35.814812, 35.953739, 29.183090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825256, 35.126743, 28.806005>,  <35.951958, 35.324741, 29.457952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825256, 35.126743, 28.806005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868793, 35.522629, 28.768866>,  <35.894917, 35.760159, 28.746582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868793, 35.522629, 28.768866>,  <35.825256, 35.126743, 28.806005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868793, 35.522629, 28.768866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350447, -0.125610, -0.928121,
		-0.930237, 0.068478, -0.360513,
		0.108840, 0.989713, -0.092849,
		35.901447, 35.819542, 28.741011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590729, 35.277550, 28.135502>,  <35.825256, 35.126743, 28.806005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590729, 35.277550, 28.135502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814556, 35.593155, 28.236967>,  <35.948853, 35.782516, 28.297846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814556, 35.593155, 28.236967>,  <35.590729, 35.277550, 28.135502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814556, 35.593155, 28.236967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471536, -0.051386, -0.880348,
		-0.681570, 0.612227, -0.400801,
		0.559568, 0.789011, 0.253664,
		35.982426, 35.829857, 28.313066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541622, 35.748528, 27.553495>,  <35.590729, 35.277550, 28.135502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541622, 35.748528, 27.553495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874058, 35.850147, 27.751383>,  <36.073521, 35.911118, 27.870115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874058, 35.850147, 27.751383>,  <35.541622, 35.748528, 27.553495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874058, 35.850147, 27.751383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479555, 0.123103, -0.868834,
		-0.281625, 0.959326, -0.019519,
		0.831092, 0.254046, 0.494719,
		36.123386, 35.926361, 27.899799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831135, 36.342354, 27.207209>,  <35.541622, 35.748528, 27.553495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831135, 36.342354, 27.207209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137970, 36.181084, 27.406816>,  <36.322071, 36.084320, 27.526581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137970, 36.181084, 27.406816>,  <35.831135, 36.342354, 27.207209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137970, 36.181084, 27.406816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593969, 0.152394, -0.789922,
		0.242430, 0.902345, 0.356374,
		0.767091, -0.403176, 0.499020,
		36.368095, 36.060131, 27.556522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356064, 36.888615, 27.192112>,  <35.831135, 36.342354, 27.207209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356064, 36.888615, 27.192112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506821, 36.523701, 27.256226>,  <36.597275, 36.304752, 27.294695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506821, 36.523701, 27.256226>,  <36.356064, 36.888615, 27.192112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506821, 36.523701, 27.256226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388286, -0.001498, -0.921538,
		0.840944, 0.409557, 0.353662,
		0.376892, -0.912284, 0.160285,
		36.619888, 36.250015, 27.304312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027958, 36.970619, 27.046457>,  <36.356064, 36.888615, 27.192112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027958, 36.970619, 27.046457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.999752, 36.571674, 27.039566>,  <36.982830, 36.332306, 27.035431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.999752, 36.571674, 27.039566>,  <37.027958, 36.970619, 27.046457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999752, 36.571674, 27.039566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692424, -0.036506, -0.720567,
		0.718037, -0.062740, 0.693171,
		-0.070514, -0.997362, -0.017230,
		36.978600, 36.272465, 27.034397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735443, 36.704811, 26.815647>,  <37.027958, 36.970619, 27.046457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735443, 36.704811, 26.815647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.496143, 36.394470, 26.735493>,  <37.352566, 36.208267, 26.687401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.496143, 36.394470, 26.735493>,  <37.735443, 36.704811, 26.815647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496143, 36.394470, 26.735493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544934, -0.210569, -0.811608,
		0.587494, -0.594737, 0.548761,
		-0.598245, -0.775854, -0.200384,
		37.316669, 36.161713, 26.675377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125572, 36.180962, 26.618992>,  <37.735443, 36.704811, 26.815647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125572, 36.180962, 26.618992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.777157, 36.070251, 26.456661>,  <37.568108, 36.003826, 26.359262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.777157, 36.070251, 26.456661>,  <38.125572, 36.180962, 26.618992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777157, 36.070251, 26.456661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469895, -0.228693, -0.852583,
		0.143162, -0.933326, 0.329253,
		-0.871036, -0.276772, -0.405825,
		37.515846, 35.987221, 26.334913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698692, 35.904858, 26.944517>,  <38.125572, 36.180962, 26.618992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698692, 35.904858, 26.944517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.020691, 36.122288, 27.039600>,  <39.213890, 36.252747, 27.096649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.020691, 36.122288, 27.039600>,  <38.698692, 35.904858, 26.944517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020691, 36.122288, 27.039600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476436, 0.353540, 0.804996,
		0.353540, -0.761270, 0.543578,
		-0.804996, -0.543578, -0.237706,
		39.262188, 36.285362, 27.110912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020538, 35.748978, 27.632011>,  <38.698692, 35.904858, 26.944517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020538, 35.748978, 27.632011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.150623, 36.124390, 27.585699>,  <39.228672, 36.349636, 27.557913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.150623, 36.124390, 27.585699>,  <39.020538, 35.748978, 27.632011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150623, 36.124390, 27.585699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375312, 0.240479, 0.895159,
		0.867974, -0.247660, 0.430447,
		0.325209, 0.938528, -0.115780,
		39.248184, 36.405949, 27.550964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264679, 36.084538, 28.345026>,  <39.020538, 35.748978, 27.632011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264679, 36.084538, 28.345026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.245892, 36.404030, 28.105083>,  <39.234619, 36.595726, 27.961119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.245892, 36.404030, 28.105083>,  <39.264679, 36.084538, 28.345026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245892, 36.404030, 28.105083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254381, 0.571154, 0.780432,
		0.965963, 0.189249, 0.176354,
		-0.046970, 0.798729, -0.599855,
		39.231800, 36.643650, 27.925127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726665, 36.525753, 28.586075>,  <39.264679, 36.084538, 28.345026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726665, 36.525753, 28.586075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.472851, 36.758888, 28.383036>,  <39.320560, 36.898769, 28.261211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.472851, 36.758888, 28.383036>,  <39.726665, 36.525753, 28.586075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472851, 36.758888, 28.383036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209687, 0.502300, 0.838884,
		0.743902, 0.638742, -0.196515,
		-0.634540, 0.582841, -0.507598,
		39.282490, 36.933739, 28.230757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956757, 37.216579, 28.712511>,  <39.726665, 36.525753, 28.586075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956757, 37.216579, 28.712511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580421, 37.246426, 28.580296>,  <39.354622, 37.264332, 28.500965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580421, 37.246426, 28.580296>,  <39.956757, 37.216579, 28.712511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580421, 37.246426, 28.580296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236862, 0.552757, 0.798972,
		0.242325, 0.829996, -0.502380,
		-0.940838, 0.074616, -0.330541,
		39.298172, 37.268810, 28.481133>
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
