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
	<24.456158, 35.370190, 35.074394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620737, 35.029240, 34.945297>,  <24.719484, 34.824669, 34.867840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620737, 35.029240, 34.945297>,  <24.456158, 35.370190, 35.074394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620737, 35.029240, 34.945297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087028, 0.315740, -0.944846,
		0.907268, 0.416843, 0.055730,
		0.411449, -0.852379, -0.322738,
		24.744171, 34.773525, 34.848476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033239, 35.623795, 34.813026>,  <24.456158, 35.370190, 35.074394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033239, 35.623795, 34.813026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831579, 35.310814, 34.666817>,  <24.710583, 35.123028, 34.579090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831579, 35.310814, 34.666817>,  <25.033239, 35.623795, 34.813026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.831579, 35.310814, 34.666817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288511, 0.551523, -0.782677,
		0.814000, -0.289128, -0.503795,
		-0.504148, -0.782450, -0.365523,
		24.680334, 35.076080, 34.557159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802629, 35.342983, 34.818001>,  <25.033239, 35.623795, 34.813026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802629, 35.342983, 34.818001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824427, 35.707813, 34.980556>,  <25.837505, 35.926712, 35.078091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824427, 35.707813, 34.980556>,  <25.802629, 35.342983, 34.818001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824427, 35.707813, 34.980556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596707, 0.296580, -0.745641,
		-0.800606, 0.283128, -0.528079,
		0.054494, 0.912074, 0.406389,
		25.840775, 35.981434, 35.102474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261841, 35.634079, 34.400890>,  <25.802629, 35.342983, 34.818001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261841, 35.634079, 34.400890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198496, 35.938461, 34.652561>,  <26.160488, 36.121090, 34.803562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198496, 35.938461, 34.652561>,  <26.261841, 35.634079, 34.400890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198496, 35.938461, 34.652561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380919, 0.634975, -0.672091,
		-0.910945, 0.133232, -0.390420,
		-0.158363, 0.760957, 0.629179,
		26.150988, 36.166748, 34.841316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072962, 36.353249, 34.033154>,  <26.261841, 35.634079, 34.400890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072962, 36.353249, 34.033154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278055, 36.393177, 34.374245>,  <26.401112, 36.417133, 34.578899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278055, 36.393177, 34.374245>,  <26.072962, 36.353249, 34.033154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278055, 36.393177, 34.374245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606008, 0.661476, -0.441819,
		-0.608159, 0.743294, 0.278670,
		0.512735, 0.099820, 0.852725,
		26.431875, 36.423122, 34.630062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277769, 37.077744, 34.119884>,  <26.072962, 36.353249, 34.033154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277769, 37.077744, 34.119884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525560, 36.842361, 34.327721>,  <26.674234, 36.701134, 34.452423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525560, 36.842361, 34.327721>,  <26.277769, 37.077744, 34.119884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525560, 36.842361, 34.327721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782737, 0.412628, -0.465898,
		0.059762, 0.695314, 0.716217,
		0.619476, -0.588453, 0.519589,
		26.711403, 36.665825, 34.483597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723297, 37.479198, 34.398018>,  <26.277769, 37.077744, 34.119884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723297, 37.479198, 34.398018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898388, 37.119995, 34.380207>,  <27.003443, 36.904472, 34.369522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898388, 37.119995, 34.380207>,  <26.723297, 37.479198, 34.398018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898388, 37.119995, 34.380207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847419, 0.428606, -0.313333,
		0.300457, 0.099425, 0.948599,
		0.437728, -0.898004, -0.044523,
		27.029707, 36.850594, 34.366852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435959, 37.597328, 34.664520>,  <26.723297, 37.479198, 34.398018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435959, 37.597328, 34.664520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447470, 37.266548, 34.439903>,  <27.454376, 37.068081, 34.305134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447470, 37.266548, 34.439903>,  <27.435959, 37.597328, 34.664520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447470, 37.266548, 34.439903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781372, 0.368969, -0.503310,
		0.623402, -0.424291, 0.656770,
		0.028778, -0.826945, -0.561545,
		27.456102, 37.018463, 34.271439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106337, 37.522697, 34.603310>,  <27.435959, 37.597328, 34.664520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106337, 37.522697, 34.603310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969259, 37.259277, 34.335320>,  <27.887012, 37.101223, 34.174526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969259, 37.259277, 34.335320>,  <28.106337, 37.522697, 34.603310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969259, 37.259277, 34.335320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772722, 0.207999, -0.599698,
		0.534288, -0.723219, 0.437598,
		-0.342693, -0.658553, -0.669978,
		27.866451, 37.061710, 34.134327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686857, 37.269939, 34.353058>,  <28.106337, 37.522697, 34.603310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686857, 37.269939, 34.353058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442760, 37.129246, 34.069118>,  <28.296303, 37.044830, 33.898754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442760, 37.129246, 34.069118>,  <28.686857, 37.269939, 34.353058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442760, 37.129246, 34.069118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705340, 0.166734, -0.688981,
		0.360695, -0.921131, 0.146345,
		-0.610241, -0.351735, -0.709851,
		28.259687, 37.023724, 33.856163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980598, 36.748489, 33.843002>,  <28.686857, 37.269939, 34.353058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980598, 36.748489, 33.843002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676722, 36.921276, 33.648571>,  <28.494394, 37.024948, 33.531914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676722, 36.921276, 33.648571>,  <28.980598, 36.748489, 33.843002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676722, 36.921276, 33.648571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626308, 0.284957, -0.725629,
		-0.174941, -0.855687, -0.487027,
		-0.759693, 0.431971, -0.486073,
		28.448814, 37.050869, 33.502750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933876, 36.481754, 33.140915>,  <28.980598, 36.748489, 33.843002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933876, 36.481754, 33.140915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716761, 36.815155, 33.099628>,  <28.586491, 37.015194, 33.074856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716761, 36.815155, 33.099628>,  <28.933876, 36.481754, 33.140915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716761, 36.815155, 33.099628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468162, 0.198235, -0.861120,
		-0.697283, -0.515730, -0.497814,
		-0.542790, 0.833502, -0.103219,
		28.553925, 37.065205, 33.068661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663460, 36.557186, 32.380295>,  <28.933876, 36.481754, 33.140915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663460, 36.557186, 32.380295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612268, 36.938053, 32.491283>,  <28.581554, 37.166573, 32.557877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612268, 36.938053, 32.491283>,  <28.663460, 36.557186, 32.380295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612268, 36.938053, 32.491283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409963, 0.305542, -0.859403,
		-0.903079, 0.003769, -0.429458,
		-0.127978, 0.952171, 0.277473,
		28.573875, 37.223705, 32.574524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476452, 36.875614, 31.821030>,  <28.663460, 36.557186, 32.380295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476452, 36.875614, 31.821030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584652, 37.174603, 32.063721>,  <28.649572, 37.353996, 32.209335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584652, 37.174603, 32.063721>,  <28.476452, 36.875614, 31.821030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584652, 37.174603, 32.063721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496321, 0.431741, -0.753170,
		-0.824921, 0.504866, -0.254198,
		0.270502, 0.747469, 0.606727,
		28.665802, 37.398842, 32.245739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150986, 37.571888, 31.589241>,  <28.476452, 36.875614, 31.821030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150986, 37.571888, 31.589241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458467, 37.646591, 31.833933>,  <28.642958, 37.691414, 31.980747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458467, 37.646591, 31.833933>,  <28.150986, 37.571888, 31.589241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458467, 37.646591, 31.833933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309580, 0.728281, -0.611365,
		-0.559688, 0.659339, 0.502018,
		0.768707, 0.186759, 0.611728,
		28.689079, 37.702618, 32.017452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222126, 38.313839, 31.583714>,  <28.150986, 37.571888, 31.589241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222126, 38.313839, 31.583714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578821, 38.169136, 31.692474>,  <28.792839, 38.082314, 31.757730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578821, 38.169136, 31.692474>,  <28.222126, 38.313839, 31.583714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578821, 38.169136, 31.692474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452548, 0.713818, -0.534476,
		-0.000736, 0.599661, 0.800254,
		0.891740, -0.361760, 0.271901,
		28.846344, 38.060608, 31.774044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643038, 38.914581, 31.486137>,  <28.222126, 38.313839, 31.583714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643038, 38.914581, 31.486137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902912, 38.611187, 31.506559>,  <29.058836, 38.429150, 31.518812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.902912, 38.611187, 31.506559>,  <28.643038, 38.914581, 31.486137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902912, 38.611187, 31.506559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517738, 0.392291, -0.760299,
		0.556649, 0.520388, 0.647564,
		0.649684, -0.758488, 0.051056,
		29.097816, 38.383640, 31.521875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313705, 39.260910, 31.558218>,  <28.643038, 38.914581, 31.486137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313705, 39.260910, 31.558218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363558, 38.893715, 31.407610>,  <29.393469, 38.673397, 31.317245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363558, 38.893715, 31.407610>,  <29.313705, 39.260910, 31.558218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363558, 38.893715, 31.407610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560905, 0.378207, -0.736441,
		0.818445, -0.119409, 0.562040,
		0.124630, -0.917987, -0.376519,
		29.400948, 38.618320, 31.294655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043180, 39.066296, 31.519560>,  <29.313705, 39.260910, 31.558218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043180, 39.066296, 31.519560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860500, 38.814445, 31.268164>,  <29.750893, 38.663338, 31.117327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860500, 38.814445, 31.268164>,  <30.043180, 39.066296, 31.519560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860500, 38.814445, 31.268164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609215, 0.293479, -0.736700,
		0.648292, -0.719337, 0.249544,
		-0.456699, -0.629623, -0.628491,
		29.723490, 38.625557, 31.079617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568966, 39.042202, 30.987982>,  <30.043180, 39.066296, 31.519560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568966, 39.042202, 30.987982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244186, 38.866203, 30.834545>,  <30.049318, 38.760605, 30.742483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244186, 38.866203, 30.834545>,  <30.568966, 39.042202, 30.987982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244186, 38.866203, 30.834545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353050, 0.153158, -0.922983,
		0.464860, -0.884842, 0.030984,
		-0.811949, -0.439997, -0.383591,
		30.000601, 38.734203, 30.719467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778469, 38.516220, 30.556082>,  <30.568966, 39.042202, 30.987982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778469, 38.516220, 30.556082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411020, 38.590363, 30.416496>,  <30.190550, 38.634846, 30.332745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411020, 38.590363, 30.416496>,  <30.778469, 38.516220, 30.556082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411020, 38.590363, 30.416496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348480, -0.036259, -0.936615,
		-0.186258, -0.982003, -0.031283,
		-0.918624, 0.185354, -0.348962,
		30.135433, 38.645969, 30.311808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612019, 38.027126, 29.959927>,  <30.778469, 38.516220, 30.556082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612019, 38.027126, 29.959927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363571, 38.332024, 29.887047>,  <30.214502, 38.514961, 29.843319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363571, 38.332024, 29.887047>,  <30.612019, 38.027126, 29.959927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363571, 38.332024, 29.887047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195681, -0.074287, -0.977850,
		-0.758895, -0.643013, -0.103016,
		-0.621117, 0.762244, -0.182201,
		30.177237, 38.560696, 29.832386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224230, 37.825840, 29.282446>,  <30.612019, 38.027126, 29.959927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224230, 37.825840, 29.282446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153614, 38.213585, 29.350763>,  <30.111244, 38.446232, 29.391754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153614, 38.213585, 29.350763>,  <30.224230, 37.825840, 29.282446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153614, 38.213585, 29.350763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119395, 0.193327, -0.973843,
		-0.977025, -0.151530, -0.149867,
		-0.176540, 0.969362, 0.170793,
		30.100653, 38.504395, 29.402000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605934, 38.063404, 28.979589>,  <30.224230, 37.825840, 29.282446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605934, 38.063404, 28.979589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906914, 38.308842, 28.883827>,  <30.087502, 38.456104, 28.826370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906914, 38.308842, 28.883827>,  <29.605934, 38.063404, 28.979589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906914, 38.308842, 28.883827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147773, -0.196943, -0.969215,
		-0.641858, 0.764663, -0.057517,
		0.752450, 0.613599, -0.239406,
		30.132648, 38.492920, 28.812006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438648, 38.247635, 28.263491>,  <29.605934, 38.063404, 28.979589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438648, 38.247635, 28.263491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837093, 38.220535, 28.285997>,  <30.076160, 38.204277, 28.299501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837093, 38.220535, 28.285997>,  <29.438648, 38.247635, 28.263491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837093, 38.220535, 28.285997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047347, -0.126761, -0.990803,
		0.074256, 0.989617, -0.123061,
		0.996115, -0.067746, 0.056268,
		30.135927, 38.200211, 28.302877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776522, 38.582912, 27.698706>,  <29.438648, 38.247635, 28.263491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776522, 38.582912, 27.698706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011587, 38.285866, 27.827187>,  <30.152626, 38.107639, 27.904276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011587, 38.285866, 27.827187>,  <29.776522, 38.582912, 27.698706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011587, 38.285866, 27.827187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134461, -0.301832, -0.943831,
		0.797854, 0.597846, -0.077523,
		0.587665, -0.742615, 0.321204,
		30.187887, 38.063080, 27.923548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339531, 38.590332, 27.284519>,  <29.776522, 38.582912, 27.698706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339531, 38.590332, 27.284519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309658, 38.215729, 27.421564>,  <30.291735, 37.990967, 27.503792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309658, 38.215729, 27.421564>,  <30.339531, 38.590332, 27.284519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309658, 38.215729, 27.421564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345556, -0.346588, -0.872048,
		0.935422, 0.053266, 0.349498,
		-0.074681, -0.936504, 0.342613,
		30.287254, 37.934776, 27.524347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732677, 38.313744, 26.943123>,  <30.339531, 38.590332, 27.284519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732677, 38.313744, 26.943123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538897, 38.184650, 27.268368>,  <29.422628, 38.107197, 27.463514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538897, 38.184650, 27.268368>,  <29.732677, 38.313744, 26.943123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538897, 38.184650, 27.268368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293769, -0.935507, -0.196282,
		0.824019, 0.143779, 0.548014,
		-0.484450, -0.322730, 0.813114,
		29.393562, 38.087833, 27.512302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816786, 37.581196, 26.933435>,  <29.732677, 38.313744, 26.943123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816786, 37.581196, 26.933435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211218, 37.514687, 26.932869>,  <30.447876, 37.474781, 26.932529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211218, 37.514687, 26.932869>,  <29.816786, 37.581196, 26.933435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211218, 37.514687, 26.932869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005386, 0.023438, 0.999711,
		-0.166189, -0.985802, 0.024007,
		0.986079, -0.166270, -0.001415,
		30.507042, 37.464806, 26.932446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996332, 36.942768, 27.319788>,  <29.816786, 37.581196, 26.933435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996332, 36.942768, 27.319788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288599, 37.215710, 27.328953>,  <30.463959, 37.379475, 27.334452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288599, 37.215710, 27.328953>,  <29.996332, 36.942768, 27.319788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288599, 37.215710, 27.328953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124905, 0.100603, 0.987055,
		0.671212, -0.724069, 0.158737,
		0.730666, 0.682351, 0.022914,
		30.507799, 37.420414, 27.335827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476511, 36.786587, 27.807762>,  <29.996332, 36.942768, 27.319788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476511, 36.786587, 27.807762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535378, 37.179031, 27.757542>,  <30.570698, 37.414497, 27.727409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535378, 37.179031, 27.757542>,  <30.476511, 36.786587, 27.807762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535378, 37.179031, 27.757542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087349, 0.139329, 0.986386,
		0.985247, -0.134198, 0.106204,
		0.147168, 0.981111, -0.125552,
		30.579529, 37.473366, 27.719875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999250, 37.128860, 28.194441>,  <30.476511, 36.786587, 27.807762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999250, 37.128860, 28.194441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750809, 37.433308, 28.119688>,  <30.601744, 37.615978, 28.074837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750809, 37.433308, 28.119688>,  <30.999250, 37.128860, 28.194441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750809, 37.433308, 28.119688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032389, 0.263179, 0.964203,
		0.783058, 0.592818, -0.188114,
		-0.621104, 0.761120, -0.186884,
		30.564478, 37.661644, 28.063623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969883, 36.933392, 28.867395>,  <30.999250, 37.128860, 28.194441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969883, 36.933392, 28.867395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220320, 36.813343, 28.579523>,  <31.370583, 36.741314, 28.406799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220320, 36.813343, 28.579523>,  <30.969883, 36.933392, 28.867395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220320, 36.813343, 28.579523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411818, -0.656471, 0.632022,
		-0.662142, -0.692074, -0.287403,
		0.626078, -0.300131, -0.719685,
		31.408148, 36.723309, 28.363619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877960, 36.164013, 28.748074>,  <30.969883, 36.933392, 28.867395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877960, 36.164013, 28.748074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260166, 36.250370, 28.667696>,  <31.489491, 36.302185, 28.619469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260166, 36.250370, 28.667696>,  <30.877960, 36.164013, 28.748074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260166, 36.250370, 28.667696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294931, -0.704808, 0.645183,
		-0.002336, -0.675748, -0.737129,
		0.955516, 0.215895, -0.200945,
		31.546822, 36.315140, 28.607412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348812, 35.581738, 28.707401>,  <30.877960, 36.164013, 28.748074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348812, 35.581738, 28.707401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572725, 35.882576, 28.846537>,  <31.707073, 36.063080, 28.930017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572725, 35.882576, 28.846537>,  <31.348812, 35.581738, 28.707401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572725, 35.882576, 28.846537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239583, -0.548738, 0.800928,
		0.793250, -0.365008, -0.487363,
		0.559780, 0.752100, 0.347837,
		31.740660, 36.108208, 28.950888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096451, 35.383553, 28.931885>,  <31.348812, 35.581738, 28.707401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096451, 35.383553, 28.931885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941151, 35.707634, 29.107533>,  <31.847969, 35.902084, 29.212921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941151, 35.707634, 29.107533>,  <32.096451, 35.383553, 28.931885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941151, 35.707634, 29.107533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077452, -0.446126, 0.891612,
		0.918292, 0.380183, 0.110458,
		-0.388254, 0.810205, 0.439120,
		31.824675, 35.950695, 29.239269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556179, 35.579712, 29.506634>,  <32.096451, 35.383553, 28.931885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556179, 35.579712, 29.506634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187538, 35.719391, 29.574419>,  <31.966354, 35.803200, 29.615089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187538, 35.719391, 29.574419>,  <32.556179, 35.579712, 29.506634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187538, 35.719391, 29.574419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010587, -0.459048, 0.888349,
		0.387999, 0.816907, 0.426755,
		-0.921599, 0.349196, 0.169462,
		31.911058, 35.824150, 29.625257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581551, 35.541405, 30.130125>,  <32.556179, 35.579712, 29.506634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581551, 35.541405, 30.130125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193226, 35.602810, 30.056408>,  <31.960232, 35.639652, 30.012178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193226, 35.602810, 30.056408>,  <32.581551, 35.541405, 30.130125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193226, 35.602810, 30.056408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224143, -0.307168, 0.924882,
		0.085371, 0.939192, 0.332611,
		-0.970810, 0.153510, -0.184291,
		31.901983, 35.648865, 30.001122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295670, 36.085594, 30.719639>,  <32.581551, 35.541405, 30.130125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295670, 36.085594, 30.719639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014923, 35.854118, 30.553503>,  <31.846476, 35.715233, 30.453821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014923, 35.854118, 30.553503>,  <32.295670, 36.085594, 30.719639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014923, 35.854118, 30.553503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365528, -0.207856, 0.907295,
		-0.611373, 0.788615, -0.065641,
		-0.701864, -0.578689, -0.415338,
		31.804363, 35.680511, 30.428902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742037, 36.014488, 31.260250>,  <32.295670, 36.085594, 30.719639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742037, 36.014488, 31.260250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620546, 35.749439, 30.986410>,  <31.547653, 35.590408, 30.822105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620546, 35.749439, 30.986410>,  <31.742037, 36.014488, 31.260250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620546, 35.749439, 30.986410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617705, -0.410120, 0.671001,
		-0.725391, 0.626681, -0.284744,
		-0.303724, -0.662625, -0.684601,
		31.529428, 35.550652, 30.781029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884186, 36.025753, 31.179790>,  <31.742037, 36.014488, 31.260250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884186, 36.025753, 31.179790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062038, 35.680531, 31.083923>,  <31.168749, 35.473396, 31.026403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062038, 35.680531, 31.083923>,  <30.884186, 36.025753, 31.179790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062038, 35.680531, 31.083923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645519, -0.494249, 0.582257,
		-0.620975, -0.104180, -0.776876,
		0.444630, -0.863055, -0.239666,
		31.195427, 35.421616, 31.012024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396952, 35.565773, 31.052031>,  <30.884186, 36.025753, 31.179790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396952, 35.565773, 31.052031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717037, 35.332661, 31.108629>,  <30.909088, 35.192795, 31.142588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717037, 35.332661, 31.108629>,  <30.396952, 35.565773, 31.052031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717037, 35.332661, 31.108629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515825, -0.548501, 0.658081,
		-0.305907, -0.599594, -0.739533,
		0.800216, -0.582781, 0.141495,
		30.957102, 35.157825, 31.151077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120308, 34.874092, 31.054876>,  <30.396952, 35.565773, 31.052031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120308, 34.874092, 31.054876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466784, 34.844387, 31.252542>,  <30.674669, 34.826565, 31.371141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466784, 34.844387, 31.252542>,  <30.120308, 34.874092, 31.054876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466784, 34.844387, 31.252542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496183, -0.245163, 0.832885,
		0.059297, -0.966633, -0.249206,
		0.866191, -0.074264, 0.494164,
		30.726641, 34.822109, 31.400791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073700, 34.272175, 31.393303>,  <30.120308, 34.874092, 31.054876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073700, 34.272175, 31.393303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352455, 34.478958, 31.592140>,  <30.519709, 34.603027, 31.711443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352455, 34.478958, 31.592140>,  <30.073700, 34.272175, 31.393303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352455, 34.478958, 31.592140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417665, -0.270908, 0.867274,
		0.583012, -0.812011, 0.027123,
		0.696888, 0.516960, 0.497091,
		30.561522, 34.634045, 31.741268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284155, 33.823280, 31.911304>,  <30.073700, 34.272175, 31.393303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284155, 33.823280, 31.911304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452412, 34.170109, 32.018070>,  <30.553366, 34.378208, 32.082130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452412, 34.170109, 32.018070>,  <30.284155, 33.823280, 31.911304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452412, 34.170109, 32.018070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303107, -0.142984, 0.942168,
		0.855095, -0.477217, 0.202672,
		0.420640, 0.867075, 0.266913,
		30.578604, 34.430233, 32.098145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973423, 33.749760, 32.274048>,  <30.284155, 33.823280, 31.911304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973423, 33.749760, 32.274048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766960, 34.078712, 32.369778>,  <30.643084, 34.276085, 32.427216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766960, 34.078712, 32.369778>,  <30.973423, 33.749760, 32.274048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766960, 34.078712, 32.369778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168275, -0.371350, 0.913117,
		0.839802, 0.431038, 0.330060,
		-0.516156, 0.822378, 0.239327,
		30.612114, 34.325424, 32.441574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885136, 33.751877, 32.942608>,  <30.973423, 33.749760, 32.274048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885136, 33.751877, 32.942608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635195, 34.059917, 32.891216>,  <30.485231, 34.244740, 32.860382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635195, 34.059917, 32.891216>,  <30.885136, 33.751877, 32.942608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635195, 34.059917, 32.891216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416444, -0.189549, 0.889182,
		0.660405, 0.609113, 0.439143,
		-0.624851, 0.770099, -0.128483,
		30.447739, 34.290947, 32.852673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686604, 33.962025, 33.628956>,  <30.885136, 33.751877, 32.942608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686604, 33.962025, 33.628956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398653, 34.108543, 33.393124>,  <30.225883, 34.196453, 33.251625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398653, 34.108543, 33.393124>,  <30.686604, 33.962025, 33.628956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398653, 34.108543, 33.393124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625165, 0.026891, 0.780029,
		0.301575, 0.930110, 0.209637,
		-0.719876, 0.366295, -0.589582,
		30.182690, 34.218433, 33.216248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343985, 34.527580, 34.043259>,  <30.686604, 33.962025, 33.628956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343985, 34.527580, 34.043259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079571, 34.445667, 33.754509>,  <29.920923, 34.396519, 33.581261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079571, 34.445667, 33.754509>,  <30.343985, 34.527580, 34.043259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079571, 34.445667, 33.754509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747984, 0.103382, 0.655616,
		-0.059631, 0.973332, -0.221515,
		-0.661033, -0.204784, -0.721872,
		29.881262, 34.384232, 33.537949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845274, 35.039822, 34.109428>,  <30.343985, 34.527580, 34.043259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845274, 35.039822, 34.109428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628489, 34.763374, 33.918167>,  <29.498417, 34.597507, 33.803410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628489, 34.763374, 33.918167>,  <29.845274, 35.039822, 34.109428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628489, 34.763374, 33.918167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752331, 0.145421, 0.642535,
		-0.374532, 0.707963, -0.598761,
		-0.541963, -0.691116, -0.478157,
		29.465900, 34.556038, 33.774719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174234, 35.340118, 33.935604>,  <29.845274, 35.039822, 34.109428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174234, 35.340118, 33.935604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123827, 34.943462, 33.924507>,  <29.093582, 34.705467, 33.917850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123827, 34.943462, 33.924507>,  <29.174234, 35.340118, 33.935604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123827, 34.943462, 33.924507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649241, 0.061297, 0.758109,
		-0.750070, 0.113550, -0.651537,
		-0.126020, -0.991639, -0.027744,
		29.086021, 34.645969, 33.916183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371441, 35.120018, 34.017925>,  <29.174234, 35.340118, 33.935604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371441, 35.120018, 34.017925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584211, 34.795147, 34.113781>,  <28.711874, 34.600224, 34.171295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584211, 34.795147, 34.113781>,  <28.371441, 35.120018, 34.017925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584211, 34.795147, 34.113781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576458, -0.140014, 0.805042,
		-0.620283, -0.566362, -0.542663,
		0.531926, -0.812176, 0.239636,
		28.743790, 34.551495, 34.185673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907803, 34.658257, 34.382820>,  <28.371441, 35.120018, 34.017925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907803, 34.658257, 34.382820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278486, 34.547630, 34.484585>,  <28.500896, 34.481255, 34.545643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278486, 34.547630, 34.484585>,  <27.907803, 34.658257, 34.382820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278486, 34.547630, 34.484585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286673, -0.082584, 0.954462,
		-0.242967, -0.957438, -0.155817,
		0.926707, -0.276572, 0.254407,
		28.556498, 34.464661, 34.560905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806883, 34.122551, 34.852818>,  <27.907803, 34.658257, 34.382820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806883, 34.122551, 34.852818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180981, 34.249809, 34.914921>,  <28.405439, 34.326164, 34.952183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180981, 34.249809, 34.914921>,  <27.806883, 34.122551, 34.852818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180981, 34.249809, 34.914921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160482, -0.009907, 0.986989,
		0.315543, -0.947990, 0.041791,
		0.935242, 0.318144, 0.155262,
		28.461554, 34.345253, 34.961498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997438, 33.758785, 35.384392>,  <27.806883, 34.122551, 34.852818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997438, 33.758785, 35.384392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259621, 34.060867, 35.381676>,  <28.416929, 34.242115, 35.380047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259621, 34.060867, 35.381676>,  <27.997438, 33.758785, 35.384392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259621, 34.060867, 35.381676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055414, 0.057053, 0.996832,
		0.753199, -0.653002, 0.079244,
		0.655454, 0.755205, -0.006787,
		28.456257, 34.287430, 35.379639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199858, 33.716843, 36.059242>,  <27.997438, 33.758785, 35.384392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199858, 33.716843, 36.059242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377647, 34.059376, 35.954067>,  <28.484322, 34.264896, 35.890961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377647, 34.059376, 35.954067>,  <28.199858, 33.716843, 36.059242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377647, 34.059376, 35.954067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114949, 0.345622, 0.931306,
		0.888385, -0.383718, 0.252055,
		0.444475, 0.856333, -0.262937,
		28.510990, 34.316277, 35.875187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775923, 33.823853, 36.513977>,  <28.199858, 33.716843, 36.059242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775923, 33.823853, 36.513977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664158, 34.175861, 36.360355>,  <28.597099, 34.387066, 36.268185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664158, 34.175861, 36.360355>,  <28.775923, 33.823853, 36.513977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664158, 34.175861, 36.360355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271580, 0.311217, 0.910708,
		0.920963, 0.358764, 0.152038,
		-0.279412, 0.880019, -0.384052,
		28.580334, 34.439865, 36.245140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085089, 34.296898, 36.849182>,  <28.775923, 33.823853, 36.513977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085089, 34.296898, 36.849182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760090, 34.486752, 36.713787>,  <28.565090, 34.600662, 36.632549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760090, 34.486752, 36.713787>,  <29.085089, 34.296898, 36.849182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760090, 34.486752, 36.713787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174478, 0.356024, 0.918044,
		0.556243, 0.804966, -0.206456,
		-0.812497, 0.474633, -0.338485,
		28.516340, 34.629143, 36.612240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485489, 34.827549, 37.237663>,  <29.085089, 34.296898, 36.849182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485489, 34.827549, 37.237663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732590, 35.120041, 37.353371>,  <29.880850, 35.295536, 37.422794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732590, 35.120041, 37.353371>,  <29.485489, 34.827549, 37.237663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732590, 35.120041, 37.353371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780222, -0.615861, -0.109398,
		0.098156, 0.293277, -0.950975,
		0.617753, 0.731234, 0.289272,
		29.917915, 35.339413, 37.440151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159430, 34.674366, 36.934647>,  <29.485489, 34.827549, 37.237663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159430, 34.674366, 36.934647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237570, 34.970528, 37.191906>,  <30.284454, 35.148224, 37.346264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237570, 34.970528, 37.191906>,  <30.159430, 34.674366, 36.934647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237570, 34.970528, 37.191906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814328, -0.487911, 0.314346,
		0.546543, 0.462329, -0.698243,
		0.195350, 0.740402, 0.643151,
		30.296175, 35.192650, 37.384850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885601, 35.087723, 36.820538>,  <30.159430, 34.674366, 36.934647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885601, 35.087723, 36.820538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772573, 35.055031, 37.202843>,  <30.704756, 35.035416, 37.432224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772573, 35.055031, 37.202843>,  <30.885601, 35.087723, 36.820538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772573, 35.055031, 37.202843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800577, -0.568962, 0.188039,
		0.528423, 0.818292, 0.226201,
		-0.282571, -0.081727, 0.955758,
		30.687801, 35.030514, 37.489571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470095, 35.188679, 37.258106>,  <30.885601, 35.087723, 36.820538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470095, 35.188679, 37.258106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229103, 34.994225, 37.511307>,  <31.084509, 34.877552, 37.663227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229103, 34.994225, 37.511307>,  <31.470095, 35.188679, 37.258106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229103, 34.994225, 37.511307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791587, -0.262571, 0.551767,
		-0.102028, 0.833502, 0.543015,
		-0.602479, -0.486139, 0.632999,
		31.048359, 34.848381, 37.701206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715548, 35.317951, 37.937943>,  <31.470095, 35.188679, 37.258106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715548, 35.317951, 37.937943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519686, 34.973175, 37.990547>,  <31.402168, 34.766308, 38.022110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519686, 34.973175, 37.990547>,  <31.715548, 35.317951, 37.937943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519686, 34.973175, 37.990547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668016, -0.273923, 0.691897,
		-0.560350, 0.426643, 0.709918,
		-0.489656, -0.861941, 0.131511,
		31.372789, 34.714592, 38.029999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387859, 35.202652, 38.578278>,  <31.715548, 35.317951, 37.937943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387859, 35.202652, 38.578278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496536, 34.836021, 38.460922>,  <31.561743, 34.616043, 38.390511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496536, 34.836021, 38.460922>,  <31.387859, 35.202652, 38.578278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496536, 34.836021, 38.460922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518954, -0.117202, 0.846729,
		-0.810476, -0.382303, 0.443817,
		0.271691, -0.916574, -0.293387,
		31.578043, 34.561050, 38.372906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421610, 34.870327, 39.208675>,  <31.387859, 35.202652, 38.578278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421610, 34.870327, 39.208675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628710, 34.638699, 38.956768>,  <31.752970, 34.499722, 38.805622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628710, 34.638699, 38.956768>,  <31.421610, 34.870327, 39.208675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628710, 34.638699, 38.956768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636565, -0.231061, 0.735795,
		-0.571595, -0.781848, 0.248986,
		0.517749, -0.579073, -0.629771,
		31.784035, 34.464977, 38.767838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426250, 34.334808, 39.512539>,  <31.421610, 34.870327, 39.208675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426250, 34.334808, 39.512539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728529, 34.289463, 39.254524>,  <31.909897, 34.262257, 39.099716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728529, 34.289463, 39.254524>,  <31.426250, 34.334808, 39.512539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728529, 34.289463, 39.254524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580601, -0.339739, 0.739919,
		-0.303023, -0.933663, -0.190922,
		0.755698, -0.113363, -0.645034,
		31.955238, 34.255455, 39.061012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820440, 33.596874, 39.678329>,  <31.426250, 34.334808, 39.512539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820440, 33.596874, 39.678329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053757, 33.839863, 39.462643>,  <32.193748, 33.985657, 39.333233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053757, 33.839863, 39.462643>,  <31.820440, 33.596874, 39.678329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053757, 33.839863, 39.462643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771896, -0.207878, 0.600802,
		0.252879, -0.766659, -0.590158,
		0.583291, 0.607470, -0.539213,
		32.228745, 34.022102, 39.300880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335705, 33.208080, 39.706852>,  <31.820440, 33.596874, 39.678329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335705, 33.208080, 39.706852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443935, 33.572338, 39.581940>,  <32.508873, 33.790894, 39.506992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443935, 33.572338, 39.581940>,  <32.335705, 33.208080, 39.706852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443935, 33.572338, 39.581940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829392, -0.055810, 0.555872,
		0.488774, -0.409406, -0.770381,
		0.270572, 0.910644, -0.312279,
		32.525108, 33.845531, 39.488255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045589, 33.167957, 39.645931>,  <32.335705, 33.208080, 39.706852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045589, 33.167957, 39.645931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973732, 33.559307, 39.686951>,  <32.930618, 33.794117, 39.711563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973732, 33.559307, 39.686951>,  <33.045589, 33.167957, 39.645931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973732, 33.559307, 39.686951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780253, 0.078217, 0.620554,
		0.599112, 0.191493, -0.777429,
		-0.179640, 0.978372, 0.102552,
		32.919842, 33.852818, 39.717716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660225, 33.433613, 39.786087>,  <33.045589, 33.167957, 39.645931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660225, 33.433613, 39.786087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404518, 33.706905, 39.927242>,  <33.251095, 33.870880, 40.011936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404518, 33.706905, 39.927242>,  <33.660225, 33.433613, 39.786087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404518, 33.706905, 39.927242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591987, 0.144355, 0.792915,
		0.490801, 0.715793, -0.496744,
		-0.639270, 0.683229, 0.352891,
		33.212738, 33.911873, 40.033108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112053, 33.994312, 40.126640>,  <33.660225, 33.433613, 39.786087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112053, 33.994312, 40.126640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745014, 34.040047, 40.278923>,  <33.524792, 34.067486, 40.370293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745014, 34.040047, 40.278923>,  <34.112053, 33.994312, 40.126640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745014, 34.040047, 40.278923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370725, -0.099438, 0.923404,
		0.143435, 0.988453, 0.048857,
		-0.917600, 0.114336, 0.380707,
		33.469734, 34.074348, 40.393135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147835, 34.421341, 40.651371>,  <34.112053, 33.994312, 40.126640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147835, 34.421341, 40.651371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804073, 34.239288, 40.744568>,  <33.597816, 34.130058, 40.800484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804073, 34.239288, 40.744568>,  <34.147835, 34.421341, 40.651371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804073, 34.239288, 40.744568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319725, -0.122760, 0.939524,
		-0.399004, 0.881922, 0.251017,
		-0.859402, -0.455130, 0.232991,
		33.546253, 34.102749, 40.814465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100792, 34.571754, 41.332397>,  <34.147835, 34.421341, 40.651371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100792, 34.571754, 41.332397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821857, 34.285694, 41.313255>,  <33.654499, 34.114059, 41.301769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821857, 34.285694, 41.313255>,  <34.100792, 34.571754, 41.332397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821857, 34.285694, 41.313255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094841, -0.158246, 0.982834,
		-0.710445, 0.680824, 0.178176,
		-0.697333, -0.715148, -0.047855,
		33.612659, 34.071148, 41.298897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720543, 34.725529, 41.908203>,  <34.100792, 34.571754, 41.332397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720543, 34.725529, 41.908203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622440, 34.348797, 41.816292>,  <33.563580, 34.122757, 41.761147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622440, 34.348797, 41.816292>,  <33.720543, 34.725529, 41.908203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622440, 34.348797, 41.816292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125656, -0.265899, 0.955776,
		-0.961279, 0.205541, 0.183561,
		-0.245260, -0.941833, -0.229776,
		33.548862, 34.066246, 41.747360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212208, 34.456680, 42.448437>,  <33.720543, 34.725529, 41.908203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212208, 34.456680, 42.448437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385757, 34.138355, 42.279472>,  <33.489887, 33.947361, 42.178093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385757, 34.138355, 42.279472>,  <33.212208, 34.456680, 42.448437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385757, 34.138355, 42.279472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031055, -0.481768, 0.875748,
		-0.900436, -0.366851, -0.233743,
		0.433879, -0.795814, -0.422409,
		33.515923, 33.899612, 42.152748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767525, 33.884712, 42.512154>,  <33.212208, 34.456680, 42.448437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767525, 33.884712, 42.512154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140091, 33.742699, 42.480114>,  <33.363632, 33.657490, 42.460892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140091, 33.742699, 42.480114>,  <32.767525, 33.884712, 42.512154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140091, 33.742699, 42.480114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137554, -0.547147, 0.825657,
		-0.336960, -0.758013, -0.558457,
		0.931417, -0.355032, -0.080099,
		33.419518, 33.636189, 42.456085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772713, 33.191311, 42.678066>,  <32.767525, 33.884712, 42.512154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772713, 33.191311, 42.678066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168518, 33.247139, 42.692970>,  <33.406002, 33.280636, 42.701912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168518, 33.247139, 42.692970>,  <32.772713, 33.191311, 42.678066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168518, 33.247139, 42.692970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036824, -0.493106, 0.869189,
		0.139688, -0.858700, -0.493074,
		0.989511, 0.139572, 0.037260,
		33.465370, 33.289009, 42.704147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099293, 32.492069, 42.790459>,  <32.772713, 33.191311, 42.678066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099293, 32.492069, 42.790459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348808, 32.774132, 42.925304>,  <33.498516, 32.943371, 43.006210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348808, 32.774132, 42.925304>,  <33.099293, 32.492069, 42.790459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348808, 32.774132, 42.925304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094221, -0.360327, 0.928056,
		0.775897, -0.610670, -0.158326,
		0.623784, 0.705157, 0.337114,
		33.535942, 32.985680, 43.026440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554565, 32.147762, 43.184326>,  <33.099293, 32.492069, 42.790459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554565, 32.147762, 43.184326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626221, 32.522633, 43.304073>,  <33.669212, 32.747555, 43.375919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626221, 32.522633, 43.304073>,  <33.554565, 32.147762, 43.184326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626221, 32.522633, 43.304073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050512, -0.312646, 0.948526,
		0.982526, -0.154796, -0.103345,
		0.179138, 0.937172, 0.299364,
		33.679962, 32.803783, 43.393883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086937, 32.065372, 43.593555>,  <33.554565, 32.147762, 43.184326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086937, 32.065372, 43.593555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919346, 32.407215, 43.716263>,  <33.818790, 32.612320, 43.789886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919346, 32.407215, 43.716263>,  <34.086937, 32.065372, 43.593555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919346, 32.407215, 43.716263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044738, -0.318009, 0.947032,
		0.906892, 0.410512, 0.095006,
		-0.418981, 0.854605, 0.306765,
		33.793652, 32.663597, 43.808292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502491, 32.401058, 44.181145>,  <34.086937, 32.065372, 43.593555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502491, 32.401058, 44.181145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113697, 32.493690, 44.197174>,  <33.880421, 32.549271, 44.206791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113697, 32.493690, 44.197174>,  <34.502491, 32.401058, 44.181145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113697, 32.493690, 44.197174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035044, -0.311417, 0.949627,
		0.232398, 0.921623, 0.310809,
		-0.971989, 0.231584, 0.040076,
		33.822102, 32.563164, 44.209198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438866, 32.274155, 44.842941>,  <34.502491, 32.401058, 44.181145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438866, 32.274155, 44.842941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069115, 32.401588, 44.759007>,  <33.847263, 32.478046, 44.708645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069115, 32.401588, 44.759007>,  <34.438866, 32.274155, 44.842941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069115, 32.401588, 44.759007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313428, -0.320684, 0.893825,
		0.217465, 0.892001, 0.396286,
		-0.924376, 0.318583, -0.209841,
		33.791801, 32.497162, 44.696053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226444, 32.943913, 45.232128>,  <34.438866, 32.274155, 44.842941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226444, 32.943913, 45.232128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900043, 32.742096, 45.119289>,  <33.704205, 32.621006, 45.051586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900043, 32.742096, 45.119289>,  <34.226444, 32.943913, 45.232128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900043, 32.742096, 45.119289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303494, -0.041394, 0.951934,
		-0.491967, 0.862395, -0.119348,
		-0.816002, -0.504542, -0.282096,
		33.655243, 32.590733, 45.034660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589104, 33.333958, 45.317356>,  <34.226444, 32.943913, 45.232128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589104, 33.333958, 45.317356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466667, 32.953430, 45.331787>,  <33.393204, 32.725113, 45.340446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466667, 32.953430, 45.331787>,  <33.589104, 33.333958, 45.317356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466667, 32.953430, 45.331787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289769, 0.129195, 0.948337,
		-0.906830, 0.279827, -0.315209,
		-0.306094, -0.951318, 0.036073,
		33.374840, 32.668034, 45.342609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881054, 33.280251, 45.687923>,  <33.589104, 33.333958, 45.317356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881054, 33.280251, 45.687923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005981, 32.901054, 45.712490>,  <33.080936, 32.673538, 45.727230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005981, 32.901054, 45.712490>,  <32.881054, 33.280251, 45.687923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005981, 32.901054, 45.712490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403094, -0.073705, 0.912186,
		-0.860218, -0.309644, -0.405149,
		0.312314, -0.947992, 0.061413,
		33.099674, 32.616657, 45.730915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335777, 32.988380, 46.020054>,  <32.881054, 33.280251, 45.687923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335777, 32.988380, 46.020054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626457, 32.714924, 46.047035>,  <32.800865, 32.550850, 46.063225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626457, 32.714924, 46.047035>,  <32.335777, 32.988380, 46.020054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626457, 32.714924, 46.047035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224135, -0.143133, 0.963990,
		-0.649364, -0.715649, -0.257241,
		0.726698, -0.683637, 0.067457,
		32.844467, 32.509834, 46.067272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950466, 32.470238, 46.492622>,  <32.335777, 32.988380, 46.020054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950466, 32.470238, 46.492622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347622, 32.423775, 46.482189>,  <32.585915, 32.395897, 46.475929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347622, 32.423775, 46.482189>,  <31.950466, 32.470238, 46.492622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347622, 32.423775, 46.482189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013632, -0.328575, 0.944379,
		-0.118267, -0.937308, -0.327822,
		0.992888, -0.116157, -0.026083,
		32.645489, 32.388927, 46.474365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097534, 31.817343, 46.913952>,  <31.950466, 32.470238, 46.492622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097534, 31.817343, 46.913952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438499, 32.025780, 46.896706>,  <32.643078, 32.150841, 46.886356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438499, 32.025780, 46.896706>,  <32.097534, 31.817343, 46.913952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438499, 32.025780, 46.896706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300947, -0.421515, 0.855427,
		0.427581, -0.742152, -0.516125,
		0.852411, 0.521091, -0.043117,
		32.694221, 32.182106, 46.883770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706032, 31.445459, 47.169151>,  <32.097534, 31.817343, 46.913952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706032, 31.445459, 47.169151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790451, 31.833817, 47.214447>,  <32.841103, 32.066830, 47.241627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790451, 31.833817, 47.214447>,  <32.706032, 31.445459, 47.169151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790451, 31.833817, 47.214447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214985, -0.159120, 0.963567,
		0.953542, -0.179010, -0.242309,
		0.211045, 0.970894, 0.113243,
		32.853764, 32.125084, 47.248421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216408, 31.459763, 47.570446>,  <32.706032, 31.445459, 47.169151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216408, 31.459763, 47.570446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106472, 31.843042, 47.602249>,  <33.040512, 32.073009, 47.621330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106472, 31.843042, 47.602249>,  <33.216408, 31.459763, 47.570446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106472, 31.843042, 47.602249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309486, 0.009870, 0.950853,
		0.910321, 0.285934, -0.299262,
		-0.274835, 0.958198, 0.079508,
		33.024021, 32.130501, 47.626102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694702, 31.680092, 48.078918>,  <33.216408, 31.459763, 47.570446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694702, 31.680092, 48.078918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421368, 31.972105, 48.074848>,  <33.257366, 32.147312, 48.072407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421368, 31.972105, 48.074848>,  <33.694702, 31.680092, 48.078918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421368, 31.972105, 48.074848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186309, 0.187836, 0.964368,
		0.705930, 0.657094, -0.264367,
		-0.683338, 0.730031, -0.010177,
		33.216366, 32.191113, 48.071796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081635, 32.226665, 48.390785>,  <33.694702, 31.680092, 48.078918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081635, 32.226665, 48.390785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695656, 32.326496, 48.423275>,  <33.464069, 32.386395, 48.442768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695656, 32.326496, 48.423275>,  <34.081635, 32.226665, 48.390785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695656, 32.326496, 48.423275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181559, 0.411280, 0.893244,
		0.189527, 0.876676, -0.442175,
		-0.964943, 0.249575, 0.081220,
		33.406174, 32.401367, 48.447639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006630, 32.989716, 48.592804>,  <34.081635, 32.226665, 48.390785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006630, 32.989716, 48.592804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674530, 32.799610, 48.709301>,  <33.475269, 32.685547, 48.779198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674530, 32.799610, 48.709301>,  <34.006630, 32.989716, 48.592804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674530, 32.799610, 48.709301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176409, 0.271599, 0.946105,
		-0.528745, 0.836877, -0.141654,
		-0.830246, -0.475259, 0.291239,
		33.425457, 32.657032, 48.796673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847431, 33.349983, 49.174534>,  <34.006630, 32.989716, 48.592804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847431, 33.349983, 49.174534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646923, 33.006271, 49.215271>,  <33.526619, 32.800045, 49.239712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646923, 33.006271, 49.215271>,  <33.847431, 33.349983, 49.174534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646923, 33.006271, 49.215271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083786, 0.165343, 0.982671,
		-0.861226, 0.484048, -0.154877,
		-0.501268, -0.859278, 0.101841,
		33.496544, 32.748489, 49.245823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271118, 33.499691, 49.649921>,  <33.847431, 33.349983, 49.174534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271118, 33.499691, 49.649921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333843, 33.104885, 49.663815>,  <33.371479, 32.868000, 49.672150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333843, 33.104885, 49.663815>,  <33.271118, 33.499691, 49.649921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333843, 33.104885, 49.663815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092545, 0.020324, 0.995501,
		-0.983283, -0.159321, -0.088157,
		0.156812, -0.987018, 0.034728,
		33.380886, 32.808781, 49.674232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783043, 33.236000, 50.175213>,  <33.271118, 33.499691, 49.649921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783043, 33.236000, 50.175213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084942, 32.976082, 50.139179>,  <33.266083, 32.820129, 50.117561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084942, 32.976082, 50.139179>,  <32.783043, 33.236000, 50.175213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084942, 32.976082, 50.139179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008172, -0.127991, 0.991742,
		-0.655961, -0.749254, -0.091291,
		0.754751, -0.649798, -0.090080,
		33.311367, 32.781143, 50.112156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726448, 32.845760, 50.754593>,  <32.783043, 33.236000, 50.175213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726448, 32.845760, 50.754593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079651, 32.707672, 50.627396>,  <33.291573, 32.624817, 50.551079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079651, 32.707672, 50.627396>,  <32.726448, 32.845760, 50.754593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079651, 32.707672, 50.627396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170534, -0.395231, 0.902613,
		-0.437285, -0.851242, -0.290119,
		0.883006, -0.345224, -0.317995,
		33.344551, 32.604107, 50.531998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949589, 32.256603, 51.188953>,  <32.726448, 32.845760, 50.754593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949589, 32.256603, 51.188953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294762, 32.344963, 51.007164>,  <33.501865, 32.397980, 50.898090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294762, 32.344963, 51.007164>,  <32.949589, 32.256603, 51.188953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294762, 32.344963, 51.007164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503778, -0.446205, 0.739668,
		-0.039398, -0.867239, -0.496330,
		0.862934, 0.220898, -0.454476,
		33.553642, 32.411232, 50.870823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295879, 31.588177, 51.051701>,  <32.949589, 32.256603, 51.188953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295879, 31.588177, 51.051701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546818, 31.897358, 51.089619>,  <33.697380, 32.082867, 51.112370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546818, 31.897358, 51.089619>,  <33.295879, 31.588177, 51.051701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546818, 31.897358, 51.089619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449442, -0.458782, 0.766499,
		0.635958, -0.438251, -0.635211,
		0.627343, 0.772952, 0.094798,
		33.735020, 32.129242, 51.118057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996487, 31.339918, 51.076633>,  <33.295879, 31.588177, 51.051701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996487, 31.339918, 51.076633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008480, 31.700054, 51.250294>,  <34.015675, 31.916136, 51.354492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008480, 31.700054, 51.250294>,  <33.996487, 31.339918, 51.076633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008480, 31.700054, 51.250294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604999, -0.362097, 0.709128,
		0.795662, 0.241399, -0.555562,
		0.029985, 0.900340, 0.434153,
		34.017475, 31.970156, 51.380539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651073, 31.549671, 51.131229>,  <33.996487, 31.339918, 51.076633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651073, 31.549671, 51.131229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476055, 31.781694, 51.406063>,  <34.371044, 31.920908, 51.570965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476055, 31.781694, 51.406063>,  <34.651073, 31.549671, 51.131229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476055, 31.781694, 51.406063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575755, -0.406205, 0.709580,
		0.690695, 0.706067, -0.156237,
		-0.437547, 0.580058, 0.687085,
		34.344791, 31.955711, 51.612190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156612, 31.762045, 51.660984>,  <34.651073, 31.549671, 51.131229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156612, 31.762045, 51.660984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818367, 31.828932, 51.863758>,  <34.615421, 31.869064, 51.985420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818367, 31.828932, 51.863758>,  <35.156612, 31.762045, 51.660984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818367, 31.828932, 51.863758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416690, -0.386777, 0.822662,
		0.333634, 0.906886, 0.257385,
		-0.845611, 0.167218, 0.506932,
		34.564682, 31.879097, 52.015839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380180, 32.050026, 52.369732>,  <35.156612, 31.762045, 51.660984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380180, 32.050026, 52.369732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003914, 31.923048, 52.417690>,  <34.778152, 31.846863, 52.446465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003914, 31.923048, 52.417690>,  <35.380180, 32.050026, 52.369732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003914, 31.923048, 52.417690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255098, -0.428545, 0.866760,
		-0.223764, 0.845919, 0.484097,
		-0.940667, -0.317442, 0.119900,
		34.721714, 31.827816, 52.453659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179741, 32.362751, 52.976414>,  <35.380180, 32.050026, 52.369732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179741, 32.362751, 52.976414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961422, 32.034176, 52.910267>,  <34.830429, 31.837032, 52.870579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961422, 32.034176, 52.910267>,  <35.179741, 32.362751, 52.976414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961422, 32.034176, 52.910267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349695, -0.402650, 0.845924,
		-0.761456, 0.403877, 0.507018,
		-0.545800, -0.821435, -0.165367,
		34.797684, 31.787745, 52.860657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859070, 32.269993, 53.610134>,  <35.179741, 32.362751, 52.976414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859070, 32.269993, 53.610134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867718, 31.915171, 53.425671>,  <34.872906, 31.702278, 53.314991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867718, 31.915171, 53.425671>,  <34.859070, 32.269993, 53.610134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867718, 31.915171, 53.425671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091201, -0.457593, 0.884472,
		-0.995598, -0.061177, 0.071009,
		0.021616, -0.887055, -0.461158,
		34.874203, 31.649054, 53.287323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473839, 31.832581, 54.074257>,  <34.859070, 32.269993, 53.610134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473839, 31.832581, 54.074257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722546, 31.594366, 53.870789>,  <34.871769, 31.451437, 53.748707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722546, 31.594366, 53.870789>,  <34.473839, 31.832581, 54.074257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722546, 31.594366, 53.870789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042210, -0.623048, 0.781044,
		-0.782065, -0.507097, -0.362252,
		0.621766, -0.595537, -0.508669,
		34.909077, 31.415705, 53.718189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257050, 31.114243, 53.915699>,  <34.473839, 31.832581, 54.074257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257050, 31.114243, 53.915699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654182, 31.139221, 53.956474>,  <34.892460, 31.154207, 53.980938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654182, 31.139221, 53.956474>,  <34.257050, 31.114243, 53.915699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654182, 31.139221, 53.956474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046881, -0.581022, 0.812536,
		0.109966, -0.811489, -0.573928,
		0.992829, 0.062445, 0.101936,
		34.952030, 31.157955, 53.987057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611336, 30.415588, 53.856201>,  <34.257050, 31.114243, 53.915699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611336, 30.415588, 53.856201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765343, 30.695190, 54.097252>,  <34.857746, 30.862951, 54.241882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765343, 30.695190, 54.097252>,  <34.611336, 30.415588, 53.856201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765343, 30.695190, 54.097252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164202, -0.590660, 0.790037,
		0.908184, -0.403131, -0.112638,
		0.385019, 0.699004, 0.602623,
		34.880848, 30.904892, 54.278038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968987, 30.005875, 54.259357>,  <34.611336, 30.415588, 53.856201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968987, 30.005875, 54.259357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917885, 30.352240, 54.452801>,  <34.887222, 30.560059, 54.568867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917885, 30.352240, 54.452801>,  <34.968987, 30.005875, 54.259357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917885, 30.352240, 54.452801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048837, -0.481520, 0.875073,
		0.990602, 0.135414, 0.019229,
		-0.127757, 0.865911, 0.483608,
		34.879559, 30.612013, 54.597881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561417, 30.189365, 54.793961>,  <34.968987, 30.005875, 54.259357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561417, 30.189365, 54.793961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201626, 30.342018, 54.879093>,  <34.985752, 30.433609, 54.930172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201626, 30.342018, 54.879093>,  <35.561417, 30.189365, 54.793961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201626, 30.342018, 54.879093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027307, -0.437017, 0.899039,
		0.436111, 0.814478, 0.382666,
		-0.899479, 0.381631, 0.212829,
		34.931782, 30.456507, 54.942944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708977, 30.655602, 55.302948>,  <35.561417, 30.189365, 54.793961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708977, 30.655602, 55.302948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325905, 30.541529, 55.318554>,  <35.096062, 30.473085, 55.327915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325905, 30.541529, 55.318554>,  <35.708977, 30.655602, 55.302948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325905, 30.541529, 55.318554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110908, -0.240531, 0.964284,
		-0.265615, 0.927801, 0.261981,
		-0.957678, -0.285184, 0.039012,
		35.038601, 30.455973, 55.330257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237087, 30.445673, 54.887123>,  <35.708977, 30.655602, 55.302948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237087, 30.445673, 54.887123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332325, 30.057262, 54.878922>,  <36.389469, 29.824217, 54.874001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332325, 30.057262, 54.878922>,  <36.237087, 30.445673, 54.887123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332325, 30.057262, 54.878922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403428, -0.079676, -0.911536,
		0.883490, 0.225306, -0.410710,
		0.238098, -0.971025, -0.020502,
		36.403755, 29.765955, 54.872772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546249, 30.296881, 54.102688>,  <36.237087, 30.445673, 54.887123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546249, 30.296881, 54.102688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370922, 29.994232, 54.296761>,  <36.265724, 29.812643, 54.413204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370922, 29.994232, 54.296761>,  <36.546249, 30.296881, 54.102688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370922, 29.994232, 54.296761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534149, -0.214864, -0.817630,
		0.722886, -0.617539, -0.309971,
		-0.438317, -0.756624, 0.485179,
		36.239426, 29.767244, 54.442314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627911, 29.679373, 53.742409>,  <36.546249, 30.296881, 54.102688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627911, 29.679373, 53.742409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304577, 29.608463, 53.966965>,  <36.110577, 29.565918, 54.101700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304577, 29.608463, 53.966965>,  <36.627911, 29.679373, 53.742409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304577, 29.608463, 53.966965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489117, -0.328485, -0.807999,
		0.327648, -0.927724, 0.178818,
		-0.808339, -0.177276, 0.561393,
		36.062077, 29.555281, 54.135384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370041, 29.075422, 53.510815>,  <36.627911, 29.679373, 53.742409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370041, 29.075422, 53.510815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082180, 29.324629, 53.633419>,  <35.909462, 29.474152, 53.706982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082180, 29.324629, 53.633419>,  <36.370041, 29.075422, 53.510815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082180, 29.324629, 53.633419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552474, -0.246414, -0.796275,
		-0.420562, -0.742383, 0.521532,
		-0.719653, 0.623016, 0.306515,
		35.866283, 29.511534, 53.725372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838928, 28.686506, 53.336433>,  <36.370041, 29.075422, 53.510815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838928, 28.686506, 53.336433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761360, 29.076841, 53.376705>,  <35.714817, 29.311043, 53.400867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761360, 29.076841, 53.376705>,  <35.838928, 28.686506, 53.336433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761360, 29.076841, 53.376705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477253, -0.004183, -0.878756,
		-0.857102, -0.218459, 0.466532,
		-0.193924, 0.975837, 0.100675,
		35.703182, 29.369593, 53.406906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135998, 28.854219, 53.176575>,  <35.838928, 28.686506, 53.336433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135998, 28.854219, 53.176575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355118, 29.175474, 53.082867>,  <35.486591, 29.368227, 53.026642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355118, 29.175474, 53.082867>,  <35.135998, 28.854219, 53.176575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355118, 29.175474, 53.082867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353290, -0.031757, -0.934974,
		-0.758351, 0.594950, 0.266343,
		0.547805, 0.803135, -0.234273,
		35.519459, 29.416414, 53.012585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933060, 28.946587, 52.578251>,  <35.135998, 28.854219, 53.176575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933060, 28.946587, 52.578251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234886, 29.208517, 52.595413>,  <35.415981, 29.365675, 52.605709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234886, 29.208517, 52.595413>,  <34.933060, 28.946587, 52.578251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234886, 29.208517, 52.595413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003261, 0.069119, -0.997603,
		-0.656221, 0.752613, 0.054291,
		0.754562, 0.654825, 0.042903,
		35.461254, 29.404964, 52.608284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802959, 29.434904, 51.984455>,  <34.933060, 28.946587, 52.578251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802959, 29.434904, 51.984455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189396, 29.463551, 52.083683>,  <35.421257, 29.480740, 52.143219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189396, 29.463551, 52.083683>,  <34.802959, 29.434904, 51.984455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189396, 29.463551, 52.083683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238597, 0.119606, -0.963725,
		-0.098691, 0.990235, 0.098462,
		0.966091, 0.071618, 0.248071,
		35.479221, 29.485037, 52.158104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132912, 30.076815, 51.547848>,  <34.802959, 29.434904, 51.984455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132912, 30.076815, 51.547848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443394, 29.849827, 51.657742>,  <35.629684, 29.713634, 51.723679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443394, 29.849827, 51.657742>,  <35.132912, 30.076815, 51.547848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443394, 29.849827, 51.657742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413953, 0.130021, -0.900965,
		0.475549, 0.813063, 0.335829,
		0.776206, -0.567470, 0.274739,
		35.676254, 29.679586, 51.740162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667694, 30.478792, 51.329201>,  <35.132912, 30.076815, 51.547848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667694, 30.478792, 51.329201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779758, 30.097549, 51.374973>,  <35.846996, 29.868803, 51.402439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779758, 30.097549, 51.374973>,  <35.667694, 30.478792, 51.329201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779758, 30.097549, 51.374973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463703, 0.029987, -0.885483,
		0.840530, 0.301139, 0.450360,
		0.280158, -0.953109, 0.114434,
		35.863808, 29.811617, 51.409302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439365, 30.468634, 51.141670>,  <35.667694, 30.478792, 51.329201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439365, 30.468634, 51.141670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281658, 30.101406, 51.125168>,  <36.187035, 29.881069, 51.115265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281658, 30.101406, 51.125168>,  <36.439365, 30.468634, 51.141670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281658, 30.101406, 51.125168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427972, -0.143696, -0.892295,
		0.813261, -0.369460, 0.449563,
		-0.394267, -0.918069, -0.041256,
		36.163380, 29.825985, 51.112789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914772, 30.012522, 50.826702>,  <36.439365, 30.468634, 51.141670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914772, 30.012522, 50.826702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573967, 29.811689, 50.767380>,  <36.369484, 29.691191, 50.731789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573967, 29.811689, 50.767380>,  <36.914772, 30.012522, 50.826702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573967, 29.811689, 50.767380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247666, -0.136982, -0.959113,
		0.461238, -0.853903, 0.241059,
		-0.852010, -0.502082, -0.148301,
		36.318363, 29.661064, 50.722889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043678, 29.582151, 50.316860>,  <36.914772, 30.012522, 50.826702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043678, 29.582151, 50.316860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644009, 29.590540, 50.330738>,  <36.404205, 29.595573, 50.339066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644009, 29.590540, 50.330738>,  <37.043678, 29.582151, 50.316860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644009, 29.590540, 50.330738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039372, -0.298105, -0.953721,
		-0.009660, -0.954303, 0.298685,
		-0.999178, 0.020973, 0.034693,
		36.344254, 29.596832, 50.341145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904766, 29.062590, 49.902828>,  <37.043678, 29.582151, 50.316860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904766, 29.062590, 49.902828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571346, 29.283358, 49.912491>,  <36.371296, 29.415819, 49.918289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571346, 29.283358, 49.912491>,  <36.904766, 29.062590, 49.902828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571346, 29.283358, 49.912491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085080, -0.085049, -0.992738,
		-0.545859, -0.829548, 0.117850,
		-0.833546, 0.551921, 0.024153,
		36.321281, 29.448935, 49.919735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444199, 28.684973, 49.480438>,  <36.904766, 29.062590, 49.902828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444199, 28.684973, 49.480438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285427, 29.052099, 49.477364>,  <36.190163, 29.272375, 49.475517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285427, 29.052099, 49.477364>,  <36.444199, 28.684973, 49.480438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285427, 29.052099, 49.477364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006928, -0.011373, -0.999911,
		-0.917822, -0.396842, 0.010873,
		-0.396931, 0.917816, -0.007689,
		36.166348, 29.327444, 49.475056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725880, 28.666229, 49.095451>,  <36.444199, 28.684973, 49.480438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725880, 28.666229, 49.095451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817726, 29.055494, 49.101543>,  <35.872833, 29.289053, 49.105198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817726, 29.055494, 49.101543>,  <35.725880, 28.666229, 49.095451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817726, 29.055494, 49.101543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216216, 0.066264, -0.974095,
		-0.948960, 0.220379, 0.225629,
		0.229621, 0.973161, 0.015232,
		35.886612, 29.347443, 49.106113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235966, 29.001770, 48.765705>,  <35.725880, 28.666229, 49.095451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235966, 29.001770, 48.765705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520611, 29.281546, 48.739208>,  <35.691399, 29.449411, 48.723309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520611, 29.281546, 48.739208>,  <35.235966, 29.001770, 48.765705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520611, 29.281546, 48.739208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334835, 0.254745, -0.907188,
		-0.617648, 0.667750, 0.415477,
		0.711616, 0.699439, -0.066243,
		35.734097, 29.491377, 48.719334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970814, 29.749199, 48.581852>,  <35.235966, 29.001770, 48.765705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970814, 29.749199, 48.581852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356697, 29.731737, 48.477985>,  <35.588226, 29.721260, 48.415665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356697, 29.731737, 48.477985>,  <34.970814, 29.749199, 48.581852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356697, 29.731737, 48.477985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238062, 0.276745, -0.930988,
		0.112503, 0.959951, 0.256586,
		0.964712, -0.043655, -0.259663,
		35.646111, 29.718641, 48.400085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987961, 30.230612, 48.038082>,  <34.970814, 29.749199, 48.581852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987961, 30.230612, 48.038082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339275, 30.047543, 47.982731>,  <35.550064, 29.937700, 47.949520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339275, 30.047543, 47.982731>,  <34.987961, 30.230612, 48.038082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339275, 30.047543, 47.982731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115484, 0.077797, -0.990258,
		0.463982, 0.885710, 0.015474,
		0.878285, -0.457675, -0.138382,
		35.602760, 29.910240, 47.941216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473221, 30.630424, 47.609112>,  <34.987961, 30.230612, 48.038082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473221, 30.630424, 47.609112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569847, 30.243965, 47.572887>,  <35.627823, 30.012089, 47.551151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569847, 30.243965, 47.572887>,  <35.473221, 30.630424, 47.609112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569847, 30.243965, 47.572887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073066, 0.074954, -0.994507,
		0.967631, 0.246853, -0.052486,
		0.241563, -0.966150, -0.090564,
		35.642315, 29.954121, 47.545719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993176, 30.604822, 47.147251>,  <35.473221, 30.630424, 47.609112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993176, 30.604822, 47.147251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831432, 30.239342, 47.131031>,  <35.734386, 30.020054, 47.121300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831432, 30.239342, 47.131031>,  <35.993176, 30.604822, 47.147251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831432, 30.239342, 47.131031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087099, 0.005665, -0.996184,
		0.910445, -0.406345, 0.077291,
		-0.404356, -0.913702, -0.040550,
		35.710125, 29.965231, 47.118866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363689, 30.194593, 46.602314>,  <35.993176, 30.604822, 47.147251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363689, 30.194593, 46.602314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026535, 29.986053, 46.655598>,  <35.824242, 29.860929, 46.687569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026535, 29.986053, 46.655598>,  <36.363689, 30.194593, 46.602314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026535, 29.986053, 46.655598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067409, -0.143305, -0.987380,
		0.533859, -0.841225, 0.085646,
		-0.842883, -0.521348, 0.133211,
		35.773670, 29.829649, 46.695560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370884, 29.548008, 46.222328>,  <36.363689, 30.194593, 46.602314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370884, 29.548008, 46.222328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987289, 29.645214, 46.280701>,  <35.757133, 29.703537, 46.315723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987289, 29.645214, 46.280701>,  <36.370884, 29.548008, 46.222328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987289, 29.645214, 46.280701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143918, 0.026104, -0.989245,
		-0.244211, -0.969671, 0.009941,
		-0.958983, 0.243015, 0.145928,
		35.699593, 29.718119, 46.324478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014084, 29.128868, 45.743237>,  <36.370884, 29.548008, 46.222328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014084, 29.128868, 45.743237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731266, 29.394705, 45.839909>,  <35.561577, 29.554207, 45.897911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731266, 29.394705, 45.839909>,  <36.014084, 29.128868, 45.743237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731266, 29.394705, 45.839909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265567, 0.067207, -0.961747,
		-0.655411, -0.744179, 0.128975,
		-0.707044, 0.664591, 0.241678,
		35.519154, 29.594082, 45.912411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605961, 28.900015, 45.300869>,  <36.014084, 29.128868, 45.743237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605961, 28.900015, 45.300869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460838, 29.251411, 45.425205>,  <35.373764, 29.462250, 45.499809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460838, 29.251411, 45.425205>,  <35.605961, 28.900015, 45.300869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460838, 29.251411, 45.425205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396465, 0.156359, -0.904637,
		-0.843318, -0.451448, 0.291563,
		-0.362808, 0.878491, 0.310844,
		35.351997, 29.514959, 45.518459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822876, 28.944143, 45.169735>,  <35.605961, 28.900015, 45.300869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822876, 28.944143, 45.169735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986874, 29.308840, 45.179810>,  <35.085270, 29.527658, 45.185856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986874, 29.308840, 45.179810>,  <34.822876, 28.944143, 45.169735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986874, 29.308840, 45.179810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487382, 0.242339, -0.838886,
		-0.770952, 0.331660, 0.543723,
		0.409990, 0.911742, 0.025187,
		35.109871, 29.582363, 45.187366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249561, 29.260107, 44.983532>,  <34.822876, 28.944143, 45.169735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249561, 29.260107, 44.983532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557964, 29.506956, 44.920662>,  <34.743008, 29.655066, 44.882942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557964, 29.506956, 44.920662>,  <34.249561, 29.260107, 44.983532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557964, 29.506956, 44.920662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405813, 0.285924, -0.868080,
		-0.490772, 0.733082, 0.470886,
		0.771011, 0.617121, -0.157170,
		34.789268, 29.692093, 44.873512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984013, 29.863518, 44.709911>,  <34.249561, 29.260107, 44.983532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984013, 29.863518, 44.709911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366436, 29.885939, 44.594799>,  <34.595890, 29.899391, 44.525730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366436, 29.885939, 44.594799>,  <33.984013, 29.863518, 44.709911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366436, 29.885939, 44.594799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289883, 0.327710, -0.899207,
		0.043908, 0.943114, 0.329557,
		0.956054, 0.056051, -0.287782,
		34.653252, 29.902754, 44.508465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023834, 30.471113, 44.290405>,  <33.984013, 29.863518, 44.709911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023834, 30.471113, 44.290405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347576, 30.260098, 44.187145>,  <34.541821, 30.133488, 44.125191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347576, 30.260098, 44.187145>,  <34.023834, 30.471113, 44.290405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347576, 30.260098, 44.187145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124089, 0.276021, -0.953108,
		0.574056, 0.803439, 0.157939,
		0.809358, -0.527539, -0.258150,
		34.590385, 30.101835, 44.109699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589306, 30.871153, 43.839069>,  <34.023834, 30.471113, 44.290405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589306, 30.871153, 43.839069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675079, 30.487829, 43.763531>,  <34.726543, 30.257835, 43.718208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675079, 30.487829, 43.763531>,  <34.589306, 30.871153, 43.839069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675079, 30.487829, 43.763531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061887, 0.179624, -0.981787,
		0.974775, 0.222220, -0.020788,
		0.214438, -0.958308, -0.188845,
		34.739410, 30.200336, 43.706879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083519, 30.935591, 43.314732>,  <34.589306, 30.871153, 43.839069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083519, 30.935591, 43.314732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950531, 30.559191, 43.289482>,  <34.870739, 30.333351, 43.274334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950531, 30.559191, 43.289482>,  <35.083519, 30.935591, 43.314732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950531, 30.559191, 43.289482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086472, 0.036235, -0.995595,
		0.939141, -0.336465, 0.069323,
		-0.332471, -0.940999, -0.063125,
		34.850788, 30.276892, 43.270546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485653, 30.616188, 42.761108>,  <35.083519, 30.935591, 43.314732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485653, 30.616188, 42.761108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175159, 30.366024, 42.792908>,  <34.988861, 30.215925, 42.811985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175159, 30.366024, 42.792908>,  <35.485653, 30.616188, 42.761108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175159, 30.366024, 42.792908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014471, -0.108385, -0.994004,
		0.630276, -0.772732, 0.075082,
		-0.776236, -0.625410, 0.079495,
		34.942287, 30.178402, 42.816757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613075, 30.246952, 42.185234>,  <35.485653, 30.616188, 42.761108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613075, 30.246952, 42.185234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246635, 30.130659, 42.295685>,  <35.026772, 30.060884, 42.361954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246635, 30.130659, 42.295685>,  <35.613075, 30.246952, 42.185234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246635, 30.130659, 42.295685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237946, -0.160089, -0.957994,
		0.322723, -0.943317, 0.077479,
		-0.916096, -0.290731, 0.276123,
		34.971806, 30.043440, 42.378521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470821, 29.661354, 41.721767>,  <35.613075, 30.246952, 42.185234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470821, 29.661354, 41.721767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116848, 29.797457, 41.848965>,  <34.904465, 29.879118, 41.925282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116848, 29.797457, 41.848965>,  <35.470821, 29.661354, 41.721767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116848, 29.797457, 41.848965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388344, -0.162233, -0.907122,
		-0.257066, -0.926232, 0.275703,
		-0.884933, 0.340258, 0.317992,
		34.851368, 29.899534, 41.944363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983665, 29.255480, 41.338863>,  <35.470821, 29.661354, 41.721767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983665, 29.255480, 41.338863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804482, 29.595196, 41.450600>,  <34.696972, 29.799026, 41.517643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804482, 29.595196, 41.450600>,  <34.983665, 29.255480, 41.338863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804482, 29.595196, 41.450600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353580, 0.118683, -0.927845,
		-0.821164, -0.514411, 0.247127,
		-0.447964, 0.849291, 0.279343,
		34.670094, 29.849983, 41.534401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239609, 29.265034, 41.119080>,  <34.983665, 29.255480, 41.338863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239609, 29.265034, 41.119080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299072, 29.656866, 41.173218>,  <34.334751, 29.891966, 41.205700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299072, 29.656866, 41.173218>,  <34.239609, 29.265034, 41.119080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299072, 29.656866, 41.173218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544534, 0.195334, -0.815676,
		-0.825459, 0.047562, 0.562455,
		0.148662, 0.979583, 0.135341,
		34.343670, 29.950741, 41.213821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509960, 29.706011, 41.008190>,  <34.239609, 29.265034, 41.119080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509960, 29.706011, 41.008190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797905, 29.979218, 40.958729>,  <33.970673, 30.143141, 40.929050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797905, 29.979218, 40.958729>,  <33.509960, 29.706011, 41.008190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797905, 29.979218, 40.958729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561887, 0.468809, -0.681543,
		-0.407535, 0.560095, 0.721255,
		0.719860, 0.683016, -0.123654,
		34.013863, 30.184122, 40.921631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163197, 30.184864, 40.623074>,  <33.509960, 29.706011, 41.008190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163197, 30.184864, 40.623074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534069, 30.332481, 40.597317>,  <33.756592, 30.421051, 40.581863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534069, 30.332481, 40.597317>,  <33.163197, 30.184864, 40.623074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534069, 30.332481, 40.597317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253162, 0.490543, -0.833833,
		-0.276130, 0.789415, 0.548249,
		0.927179, 0.369041, -0.064396,
		33.812222, 30.443193, 40.577999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985126, 30.929754, 40.416283>,  <33.163197, 30.184864, 40.623074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985126, 30.929754, 40.416283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362053, 30.841722, 40.315407>,  <33.588211, 30.788904, 40.254883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362053, 30.841722, 40.315407>,  <32.985126, 30.929754, 40.416283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362053, 30.841722, 40.315407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125158, 0.467116, -0.875293,
		0.310435, 0.856369, 0.412627,
		0.942319, -0.220078, -0.252191,
		33.644749, 30.775700, 40.239750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288361, 31.627188, 40.274181>,  <32.985126, 30.929754, 40.416283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288361, 31.627188, 40.274181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498039, 31.341501, 40.088661>,  <33.623844, 31.170090, 39.977348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498039, 31.341501, 40.088661>,  <33.288361, 31.627188, 40.274181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498039, 31.341501, 40.088661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061919, 0.511222, -0.857216,
		0.849345, 0.478066, 0.223756,
		0.524194, -0.714217, -0.463805,
		33.655296, 31.127235, 39.949520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593708, 32.056625, 39.829765>,  <33.288361, 31.627188, 40.274181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593708, 32.056625, 39.829765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684711, 31.685343, 39.712002>,  <33.739311, 31.462574, 39.641346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684711, 31.685343, 39.712002>,  <33.593708, 32.056625, 39.829765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684711, 31.685343, 39.712002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105273, 0.324006, -0.940180,
		0.968070, 0.182904, 0.171428,
		0.227506, -0.928206, -0.294405,
		33.752964, 31.406881, 39.623680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210987, 32.006916, 39.304073>,  <33.593708, 32.056625, 39.829765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210987, 32.006916, 39.304073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982857, 31.685677, 39.235069>,  <33.845978, 31.492933, 39.193665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982857, 31.685677, 39.235069>,  <34.210987, 32.006916, 39.304073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982857, 31.685677, 39.235069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020937, 0.195739, -0.980433,
		0.821152, -0.562777, -0.094820,
		-0.570325, -0.803099, -0.172514,
		33.811760, 31.444746, 39.183315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633560, 31.624128, 38.832615>,  <34.210987, 32.006916, 39.304073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633560, 31.624128, 38.832615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261837, 31.482498, 38.790638>,  <34.038803, 31.397520, 38.765453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261837, 31.482498, 38.790638>,  <34.633560, 31.624128, 38.832615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261837, 31.482498, 38.790638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023079, 0.227926, -0.973405,
		0.368578, -0.907017, -0.203642,
		-0.929311, -0.354075, -0.104942,
		33.983044, 31.376276, 38.759155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670101, 30.921671, 38.455753>,  <34.633560, 31.624128, 38.832615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670101, 30.921671, 38.455753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329414, 31.126324, 38.410473>,  <34.125004, 31.249115, 38.383305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329414, 31.126324, 38.410473>,  <34.670101, 30.921671, 38.455753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329414, 31.126324, 38.410473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224419, 0.160930, -0.961113,
		-0.473518, -0.843999, -0.251886,
		-0.851714, 0.511632, -0.113206,
		34.073898, 31.279814, 38.376511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335388, 30.608568, 38.490108>,  <34.670101, 30.921671, 38.455753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335388, 30.608568, 38.490108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669441, 30.679888, 38.281971>,  <35.869873, 30.722679, 38.157089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669441, 30.679888, 38.281971>,  <35.335388, 30.608568, 38.490108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669441, 30.679888, 38.281971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549338, -0.222458, 0.805444,
		0.027854, -0.958500, -0.283728,
		0.835136, 0.178298, -0.520344,
		35.919983, 30.733377, 38.125866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752472, 29.948366, 38.463398>,  <35.335388, 30.608568, 38.490108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752472, 29.948366, 38.463398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005676, 30.252186, 38.403549>,  <36.157597, 30.434477, 38.367638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005676, 30.252186, 38.403549>,  <35.752472, 29.948366, 38.463398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005676, 30.252186, 38.403549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575990, -0.332962, 0.746573,
		0.517238, -0.558771, -0.648260,
		0.633009, 0.759547, -0.149626,
		36.195580, 30.480049, 38.358662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370201, 29.655884, 38.647430>,  <35.752472, 29.948366, 38.463398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370201, 29.655884, 38.647430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452991, 30.046036, 38.677895>,  <36.502666, 30.280127, 38.696175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452991, 30.046036, 38.677895>,  <36.370201, 29.655884, 38.647430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452991, 30.046036, 38.677895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604249, -0.188667, 0.774137,
		0.769445, -0.114205, -0.628420,
		0.206972, 0.975378, 0.076160,
		36.515083, 30.338650, 38.700741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078789, 29.644115, 38.888840>,  <36.370201, 29.655884, 38.647430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078789, 29.644115, 38.888840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978622, 30.026920, 38.947380>,  <36.918522, 30.256603, 38.982502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978622, 30.026920, 38.947380>,  <37.078789, 29.644115, 38.888840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978622, 30.026920, 38.947380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459360, -0.015613, 0.888113,
		0.852221, 0.289625, -0.435703,
		-0.250417, 0.957013, 0.146348,
		36.903496, 30.314024, 38.991283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640343, 29.942024, 39.109699>,  <37.078789, 29.644115, 38.888840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640343, 29.942024, 39.109699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363369, 30.212097, 39.211411>,  <37.197186, 30.374140, 39.272438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363369, 30.212097, 39.211411>,  <37.640343, 29.942024, 39.109699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363369, 30.212097, 39.211411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436831, 0.111848, 0.892563,
		0.574201, 0.729123, -0.372388,
		-0.692439, 0.675181, 0.254280,
		37.155636, 30.414652, 39.287693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983669, 30.538733, 39.438606>,  <37.640343, 29.942024, 39.109699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983669, 30.538733, 39.438606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608822, 30.512009, 39.575634>,  <37.383915, 30.495974, 39.657852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608822, 30.512009, 39.575634>,  <37.983669, 30.538733, 39.438606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608822, 30.512009, 39.575634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332125, 0.131016, 0.934092,
		-0.107289, 0.989126, -0.100588,
		-0.937114, -0.066810, 0.342570,
		37.327686, 30.491966, 39.678406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990326, 30.993137, 39.969097>,  <37.983669, 30.538733, 39.438606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990326, 30.993137, 39.969097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672417, 30.758001, 40.029465>,  <37.481670, 30.616919, 40.065685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672417, 30.758001, 40.029465>,  <37.990326, 30.993137, 39.969097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672417, 30.758001, 40.029465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163926, 0.031505, 0.985969,
		-0.584349, 0.808362, 0.071323,
		-0.794773, -0.587842, 0.150921,
		37.433987, 30.581648, 40.074741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716953, 31.325605, 40.577053>,  <37.990326, 30.993137, 39.969097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716953, 31.325605, 40.577053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569992, 30.954042, 40.558510>,  <37.481815, 30.731104, 40.547382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569992, 30.954042, 40.558510>,  <37.716953, 31.325605, 40.577053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569992, 30.954042, 40.558510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031307, -0.062167, 0.997575,
		-0.929536, 0.365057, 0.051921,
		-0.367400, -0.928907, -0.046358,
		37.459774, 30.675371, 40.544601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053474, 31.314909, 41.059288>,  <37.716953, 31.325605, 40.577053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053474, 31.314909, 41.059288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197052, 30.945711, 41.003807>,  <37.283199, 30.724192, 40.970520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197052, 30.945711, 41.003807>,  <37.053474, 31.314909, 41.059288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197052, 30.945711, 41.003807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002841, -0.147524, 0.989054,
		-0.933355, -0.355410, -0.050331,
		0.358944, -0.922996, -0.138702,
		37.304737, 30.668812, 40.962196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637989, 30.922789, 41.505924>,  <37.053474, 31.314909, 41.059288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637989, 30.922789, 41.505924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970097, 30.709530, 41.440929>,  <37.169361, 30.581575, 41.401932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970097, 30.709530, 41.440929>,  <36.637989, 30.922789, 41.505924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970097, 30.709530, 41.440929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037374, -0.237624, 0.970638,
		-0.556102, -0.811967, -0.177367,
		0.830273, -0.533145, -0.162490,
		37.219177, 30.549587, 41.392181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526112, 30.333366, 41.868610>,  <36.637989, 30.922789, 41.505924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526112, 30.333366, 41.868610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920994, 30.339130, 41.805099>,  <37.157925, 30.342588, 41.766994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920994, 30.339130, 41.805099>,  <36.526112, 30.333366, 41.868610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920994, 30.339130, 41.805099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158517, -0.195113, 0.967886,
		-0.017032, -0.980675, -0.194902,
		0.987210, 0.014410, -0.158777,
		37.217155, 30.343452, 41.757465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705448, 29.758205, 42.207054>,  <36.526112, 30.333366, 41.868610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705448, 29.758205, 42.207054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044659, 29.966347, 42.166901>,  <37.248184, 30.091230, 42.142807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044659, 29.966347, 42.166901>,  <36.705448, 29.758205, 42.207054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044659, 29.966347, 42.166901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345581, -0.399386, 0.849155,
		0.401768, -0.754801, -0.518516,
		0.848031, 0.520353, -0.100385,
		37.299068, 30.122452, 42.136784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210957, 29.256121, 42.182808>,  <36.705448, 29.758205, 42.207054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210957, 29.256121, 42.182808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391273, 29.591520, 42.305252>,  <37.499462, 29.792761, 42.378719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391273, 29.591520, 42.305252>,  <37.210957, 29.256121, 42.182808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391273, 29.591520, 42.305252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255612, -0.449832, 0.855753,
		0.855247, -0.307521, -0.417112,
		0.450793, 0.838500, 0.306111,
		37.526512, 29.843071, 42.397087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936649, 29.077875, 42.500408>,  <37.210957, 29.256121, 42.182808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936649, 29.077875, 42.500408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835716, 29.439903, 42.637337>,  <37.775158, 29.657120, 42.719494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835716, 29.439903, 42.637337>,  <37.936649, 29.077875, 42.500408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835716, 29.439903, 42.637337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285749, -0.268292, 0.919982,
		0.924488, 0.329954, -0.190925,
		-0.252328, 0.905069, 0.342317,
		37.760017, 29.711424, 42.740032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521542, 29.365772, 42.923065>,  <37.936649, 29.077875, 42.500408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521542, 29.365772, 42.923065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192520, 29.551443, 43.054485>,  <37.995106, 29.662846, 43.133339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192520, 29.551443, 43.054485>,  <38.521542, 29.365772, 42.923065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192520, 29.551443, 43.054485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247556, -0.227858, 0.941699,
		0.511980, 0.855931, 0.072515,
		-0.822552, 0.464179, 0.328549,
		37.945755, 29.690697, 43.153049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714336, 29.602478, 43.515057>,  <38.521542, 29.365772, 42.923065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714336, 29.602478, 43.515057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318428, 29.653891, 43.539825>,  <38.080883, 29.684738, 43.554688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318428, 29.653891, 43.539825>,  <38.714336, 29.602478, 43.515057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318428, 29.653891, 43.539825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035067, -0.201562, 0.978848,
		0.138293, 0.971006, 0.194993,
		-0.989770, 0.128530, 0.061925,
		38.021496, 29.692450, 43.558403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734051, 29.991671, 44.105568>,  <38.714336, 29.602478, 43.515057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734051, 29.991671, 44.105568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371300, 29.837286, 44.037907>,  <38.153648, 29.744656, 43.997311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371300, 29.837286, 44.037907>,  <38.734051, 29.991671, 44.105568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371300, 29.837286, 44.037907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085577, -0.224366, 0.970740,
		-0.412621, 0.894815, 0.170442,
		-0.906874, -0.385962, -0.169153,
		38.099239, 29.721497, 43.987160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205467, 30.252407, 44.595474>,  <38.734051, 29.991671, 44.105568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205467, 30.252407, 44.595474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033875, 29.915638, 44.464542>,  <37.930920, 29.713577, 44.385983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033875, 29.915638, 44.464542>,  <38.205467, 30.252407, 44.595474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033875, 29.915638, 44.464542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205740, -0.261772, 0.942945,
		-0.879571, 0.471851, -0.060922,
		-0.428982, -0.841922, -0.327326,
		37.905182, 29.663061, 44.366344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594799, 30.282631, 44.808556>,  <38.205467, 30.252407, 44.595474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594799, 30.282631, 44.808556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603565, 29.889795, 44.733704>,  <37.608826, 29.654093, 44.688793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603565, 29.889795, 44.733704>,  <37.594799, 30.282631, 44.808556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603565, 29.889795, 44.733704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219831, -0.187329, 0.957383,
		-0.975292, 0.020158, -0.219999,
		0.021913, -0.982090, -0.187132,
		37.610138, 29.595169, 44.677563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976574, 29.966335, 45.016022>,  <37.594799, 30.282631, 44.808556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976574, 29.966335, 45.016022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255177, 29.680059, 45.036671>,  <37.422340, 29.508293, 45.049061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255177, 29.680059, 45.036671>,  <36.976574, 29.966335, 45.016022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255177, 29.680059, 45.036671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190258, -0.114834, 0.974995,
		-0.691866, -0.688913, -0.216149,
		0.696508, -0.715690, 0.051622,
		37.464130, 29.465353, 45.052158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723751, 29.487902, 45.592716>,  <36.976574, 29.966335, 45.016022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723751, 29.487902, 45.592716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103428, 29.386292, 45.518417>,  <37.331234, 29.325325, 45.473839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103428, 29.386292, 45.518417>,  <36.723751, 29.487902, 45.592716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103428, 29.386292, 45.518417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115059, -0.269246, 0.956174,
		-0.292911, -0.928964, -0.226337,
		0.949191, -0.254031, -0.185751,
		37.388187, 29.310085, 45.462692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920269, 28.703230, 45.892658>,  <36.723751, 29.487902, 45.592716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920269, 28.703230, 45.892658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224380, 28.961145, 45.861088>,  <37.406845, 29.115894, 45.842144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224380, 28.961145, 45.861088>,  <36.920269, 28.703230, 45.892658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224380, 28.961145, 45.861088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190474, -0.105114, 0.976049,
		0.621049, -0.757099, -0.202731,
		0.760275, 0.644788, -0.078926,
		37.452465, 29.154581, 45.837410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526543, 28.462296, 46.345272>,  <36.920269, 28.703230, 45.892658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526543, 28.462296, 46.345272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603863, 28.852575, 46.304001>,  <37.650253, 29.086744, 46.279240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603863, 28.852575, 46.304001>,  <37.526543, 28.462296, 46.345272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603863, 28.852575, 46.304001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382647, 0.021862, 0.923636,
		0.903448, -0.218014, -0.369123,
		0.193296, 0.975701, -0.103174,
		37.661850, 29.145285, 46.273048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240585, 28.491140, 46.641094>,  <37.526543, 28.462296, 46.345272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240585, 28.491140, 46.641094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108131, 28.868040, 46.621025>,  <38.028660, 29.094179, 46.608982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108131, 28.868040, 46.621025>,  <38.240585, 28.491140, 46.641094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108131, 28.868040, 46.621025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367221, 0.177672, 0.913007,
		0.869193, 0.283905, -0.404847,
		-0.331138, 0.942247, -0.050176,
		38.008789, 29.150715, 46.605972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831055, 28.924829, 46.884953>,  <38.240585, 28.491140, 46.641094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831055, 28.924829, 46.884953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503876, 29.150101, 46.931927>,  <38.307568, 29.285263, 46.960110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503876, 29.150101, 46.931927>,  <38.831055, 28.924829, 46.884953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503876, 29.150101, 46.931927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405404, 0.419437, 0.812232,
		0.408176, 0.711971, -0.571393,
		-0.817949, 0.563178, 0.117431,
		38.258492, 29.319054, 46.967155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127403, 29.608208, 47.166809>,  <38.831055, 28.924829, 46.884953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127403, 29.608208, 47.166809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738403, 29.607172, 47.259960>,  <38.505001, 29.606550, 47.315849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738403, 29.607172, 47.259960>,  <39.127403, 29.608208, 47.166809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738403, 29.607172, 47.259960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193335, 0.548513, 0.813483,
		-0.129844, 0.836138, -0.532930,
		-0.972503, -0.002591, 0.232876,
		38.446651, 29.606394, 47.329823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934574, 30.321852, 47.356270>,  <39.127403, 29.608208, 47.166809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934574, 30.321852, 47.356270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642540, 30.092138, 47.504417>,  <38.467319, 29.954311, 47.593304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642540, 30.092138, 47.504417>,  <38.934574, 30.321852, 47.356270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642540, 30.092138, 47.504417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148748, 0.395430, 0.906371,
		-0.666966, 0.716823, -0.203276,
		-0.730090, -0.574281, 0.370365,
		38.423512, 29.919853, 47.615528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499367, 30.769823, 47.712696>,  <38.934574, 30.321852, 47.356270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499367, 30.769823, 47.712696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444492, 30.397631, 47.848568>,  <38.411568, 30.174314, 47.930092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444492, 30.397631, 47.848568>,  <38.499367, 30.769823, 47.712696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444492, 30.397631, 47.848568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012077, 0.344466, 0.938721,
		-0.990471, 0.124679, -0.058494,
		-0.137188, -0.930483, 0.339678,
		38.403336, 30.118486, 47.950470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061474, 30.858383, 48.264179>,  <38.499367, 30.769823, 47.712696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061474, 30.858383, 48.264179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168770, 30.481380, 48.343906>,  <38.233147, 30.255178, 48.391743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168770, 30.481380, 48.343906>,  <38.061474, 30.858383, 48.264179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168770, 30.481380, 48.343906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293124, 0.117240, 0.948859,
		-0.917675, -0.312944, -0.244824,
		0.268236, -0.942508, 0.199319,
		38.249241, 30.198627, 48.403702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591637, 30.667355, 48.765717>,  <38.061474, 30.858383, 48.264179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591637, 30.667355, 48.765717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907825, 30.426092, 48.808331>,  <38.097538, 30.281334, 48.833897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907825, 30.426092, 48.808331>,  <37.591637, 30.667355, 48.765717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907825, 30.426092, 48.808331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058320, 0.247261, 0.967192,
		-0.609711, -0.758329, 0.230630,
		0.790476, -0.603158, 0.106532,
		38.144970, 30.245146, 48.840290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462543, 30.263597, 49.245094>,  <37.591637, 30.667355, 48.765717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462543, 30.263597, 49.245094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861938, 30.249109, 49.261658>,  <38.101574, 30.240417, 49.271595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861938, 30.249109, 49.261658>,  <37.462543, 30.263597, 49.245094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861938, 30.249109, 49.261658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029382, 0.285268, 0.957997,
		-0.046510, -0.957763, 0.283772,
		0.998486, -0.036219, 0.041409,
		38.161484, 30.238243, 49.274082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537079, 29.872648, 49.906792>,  <37.462543, 30.263597, 49.245094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537079, 29.872648, 49.906792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906315, 30.008970, 49.835506>,  <38.127857, 30.090763, 49.792736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906315, 30.008970, 49.835506>,  <37.537079, 29.872648, 49.906792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906315, 30.008970, 49.835506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058874, 0.332694, 0.941195,
		0.380056, -0.879298, 0.287041,
		0.923088, 0.340807, -0.178210,
		38.183243, 30.111212, 49.782043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026630, 29.552195, 50.391594>,  <37.537079, 29.872648, 49.906792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026630, 29.552195, 50.391594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240185, 29.867887, 50.270218>,  <38.368317, 30.057304, 50.197392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240185, 29.867887, 50.270218>,  <38.026630, 29.552195, 50.391594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240185, 29.867887, 50.270218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069850, 0.316468, 0.946028,
		0.842665, -0.526268, 0.113830,
		0.533888, 0.789234, -0.303436,
		38.400352, 30.104658, 50.179188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699623, 29.567751, 50.756153>,  <38.026630, 29.552195, 50.391594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699623, 29.567751, 50.756153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603870, 29.936855, 50.635349>,  <38.546417, 30.158318, 50.562866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603870, 29.936855, 50.635349>,  <38.699623, 29.567751, 50.756153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603870, 29.936855, 50.635349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168236, 0.345770, 0.923114,
		0.956239, 0.170168, -0.238013,
		-0.239382, 0.922760, -0.302010,
		38.532055, 30.213684, 50.544746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215275, 29.934345, 51.152935>,  <38.699623, 29.567751, 50.756153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215275, 29.934345, 51.152935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958469, 30.221832, 51.046154>,  <38.804386, 30.394325, 50.982086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958469, 30.221832, 51.046154>,  <39.215275, 29.934345, 51.152935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958469, 30.221832, 51.046154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291369, 0.550781, 0.782141,
		0.709171, 0.424363, -0.563021,
		-0.642013, 0.718719, -0.266951,
		38.765865, 30.437449, 50.966068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610703, 30.578072, 51.094563>,  <39.215275, 29.934345, 51.152935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610703, 30.578072, 51.094563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234016, 30.705353, 51.138237>,  <39.008003, 30.781721, 51.164440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234016, 30.705353, 51.138237>,  <39.610703, 30.578072, 51.094563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234016, 30.705353, 51.138237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290719, 0.606421, 0.740092,
		0.169286, 0.728697, -0.663583,
		-0.941714, 0.318204, 0.109187,
		38.951504, 30.800814, 51.170994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650650, 31.285336, 51.173855>,  <39.610703, 30.578072, 51.094563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650650, 31.285336, 51.173855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312706, 31.143248, 51.333870>,  <39.109940, 31.057995, 51.429878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312706, 31.143248, 51.333870>,  <39.650650, 31.285336, 51.173855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312706, 31.143248, 51.333870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164113, 0.539621, 0.825758,
		-0.509194, 0.763302, -0.397608,
		-0.844860, -0.355218, 0.400040,
		39.059250, 31.036682, 51.453880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402817, 31.465050, 51.897678>,  <39.650650, 31.285336, 51.173855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402817, 31.465050, 51.897678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553288, 31.781498, 52.090603>,  <39.643570, 31.971367, 52.206356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553288, 31.781498, 52.090603>,  <39.402817, 31.465050, 51.897678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553288, 31.781498, 52.090603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458683, 0.293281, -0.838806,
		-0.805049, 0.536763, -0.252549,
		0.376173, 0.791120, 0.482310,
		39.666138, 32.018833, 52.235294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264038, 32.001163, 51.497639>,  <39.402817, 31.465050, 51.897678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264038, 32.001163, 51.497639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570995, 32.108528, 51.730553>,  <39.755169, 32.172947, 51.870300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570995, 32.108528, 51.730553>,  <39.264038, 32.001163, 51.497639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570995, 32.108528, 51.730553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490304, 0.339549, -0.802688,
		-0.413168, 0.901477, 0.128964,
		0.767395, 0.268413, 0.582288,
		39.801212, 32.189053, 51.905239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430431, 32.558033, 51.224655>,  <39.264038, 32.001163, 51.497639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430431, 32.558033, 51.224655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764248, 32.463570, 51.423759>,  <39.964539, 32.406891, 51.543221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764248, 32.463570, 51.423759>,  <39.430431, 32.558033, 51.224655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764248, 32.463570, 51.423759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550895, 0.346062, -0.759444,
		0.007091, 0.908004, 0.418901,
		0.834544, -0.236155, 0.497761,
		40.014610, 32.392723, 51.573090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814960, 33.175827, 51.285583>,  <39.430431, 32.558033, 51.224655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814960, 33.175827, 51.285583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068462, 32.867111, 51.306347>,  <40.220562, 32.681881, 51.318806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068462, 32.867111, 51.306347>,  <39.814960, 33.175827, 51.285583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068462, 32.867111, 51.306347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522884, 0.377978, -0.764019,
		0.570045, 0.511339, 0.643102,
		0.633751, -0.771793, 0.051907,
		40.258587, 32.635574, 51.321918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474571, 33.483433, 51.065464>,  <39.814960, 33.175827, 51.285583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474571, 33.483433, 51.065464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488495, 33.084030, 51.048656>,  <40.496849, 32.844387, 51.038574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488495, 33.084030, 51.048656>,  <40.474571, 33.483433, 51.065464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488495, 33.084030, 51.048656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502107, 0.053823, -0.863129,
		0.864105, 0.008946, 0.503232,
		0.034807, -0.998510, -0.042017,
		40.498936, 32.784477, 51.036053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138733, 33.387535, 50.756714>,  <40.474571, 33.483433, 51.065464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138733, 33.387535, 50.756714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944626, 33.038074, 50.742573>,  <40.828159, 32.828400, 50.734089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944626, 33.038074, 50.742573>,  <41.138733, 33.387535, 50.756714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944626, 33.038074, 50.742573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432654, -0.204791, -0.877993,
		0.759819, -0.441358, 0.477367,
		-0.485269, -0.873650, -0.035351,
		40.799046, 32.775978, 50.731968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725117, 32.933525, 50.528793>,  <41.138733, 33.387535, 50.756714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725117, 32.933525, 50.528793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360485, 32.794392, 50.441124>,  <41.141705, 32.710911, 50.388523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360485, 32.794392, 50.441124>,  <41.725117, 32.933525, 50.528793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360485, 32.794392, 50.441124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374582, -0.482966, -0.791475,
		0.169452, -0.803588, 0.570554,
		-0.911578, -0.347836, -0.219170,
		41.087013, 32.690041, 50.375374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758926, 32.303188, 50.193443>,  <41.725117, 32.933525, 50.528793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758926, 32.303188, 50.193443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381729, 32.383595, 50.087345>,  <41.155411, 32.431839, 50.023685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381729, 32.383595, 50.087345>,  <41.758926, 32.303188, 50.193443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381729, 32.383595, 50.087345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190737, -0.326705, -0.925680,
		-0.272730, -0.923503, 0.269740,
		-0.942994, 0.201011, -0.265249,
		41.098831, 32.443897, 50.007771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650028, 31.788488, 49.737499>,  <41.758926, 32.303188, 50.193443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650028, 31.788488, 49.737499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361565, 32.054054, 49.658363>,  <41.188484, 32.213394, 49.610882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361565, 32.054054, 49.658363>,  <41.650028, 31.788488, 49.737499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361565, 32.054054, 49.658363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007907, -0.293451, -0.955941,
		-0.692722, -0.687823, 0.216875,
		-0.721161, 0.663917, -0.197842,
		41.145218, 32.253231, 49.599010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152473, 31.444447, 49.374989>,  <41.650028, 31.788488, 49.737499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152473, 31.444447, 49.374989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109959, 31.830194, 49.278084>,  <41.084450, 32.061646, 49.219940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109959, 31.830194, 49.278084>,  <41.152473, 31.444447, 49.374989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109959, 31.830194, 49.278084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095528, -0.252418, -0.962891,
		-0.989736, -0.079202, 0.118954,
		-0.106289, 0.964371, -0.242261,
		41.078072, 32.119507, 49.205406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606319, 31.519609, 48.913471>,  <41.152473, 31.444447, 49.374989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606319, 31.519609, 48.913471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820724, 31.850977, 48.848469>,  <40.949368, 32.049797, 48.809467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820724, 31.850977, 48.848469>,  <40.606319, 31.519609, 48.913471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820724, 31.850977, 48.848469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201924, -0.061096, -0.977494,
		-0.819703, 0.556766, 0.134529,
		0.536016, 0.828420, -0.162505,
		40.981529, 32.099503, 48.799717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237530, 31.897072, 48.433147>,  <40.606319, 31.519609, 48.913471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237530, 31.897072, 48.433147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573402, 32.112591, 48.405895>,  <40.774925, 32.241901, 48.389545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573402, 32.112591, 48.405895>,  <40.237530, 31.897072, 48.433147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573402, 32.112591, 48.405895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273017, 0.310344, -0.910576,
		-0.469471, 0.783190, 0.407689,
		0.839678, 0.538795, -0.068126,
		40.825306, 32.274231, 48.385456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061516, 32.467632, 48.062817>,  <40.237530, 31.897072, 48.433147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061516, 32.467632, 48.062817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459724, 32.492210, 48.034077>,  <40.698650, 32.506958, 48.016830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459724, 32.492210, 48.034077>,  <40.061516, 32.467632, 48.062817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459724, 32.492210, 48.034077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084548, 0.238516, -0.967451,
		-0.042310, 0.969193, 0.242643,
		0.995521, 0.061447, -0.071852,
		40.758381, 32.510643, 48.012520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203682, 32.986027, 47.706127>,  <40.061516, 32.467632, 48.062817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203682, 32.986027, 47.706127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509632, 32.735928, 47.644127>,  <40.693203, 32.585869, 47.606926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509632, 32.735928, 47.644127>,  <40.203682, 32.986027, 47.706127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509632, 32.735928, 47.644127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148478, 0.063024, -0.986905,
		0.626831, 0.777876, -0.044630,
		0.764877, -0.625250, -0.155003,
		40.739094, 32.548351, 47.597626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595181, 33.322819, 47.248524>,  <40.203682, 32.986027, 47.706127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595181, 33.322819, 47.248524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669025, 32.930210, 47.228413>,  <40.713333, 32.694645, 47.216347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669025, 32.930210, 47.228413>,  <40.595181, 33.322819, 47.248524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669025, 32.930210, 47.228413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304156, -0.008416, -0.952585,
		0.934563, 0.191148, -0.300090,
		0.184610, -0.981525, -0.050273,
		40.724407, 32.635754, 47.213329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840179, 33.135330, 46.572659>,  <40.595181, 33.322819, 47.248524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840179, 33.135330, 46.572659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725269, 32.775780, 46.705013>,  <40.656322, 32.560047, 46.784424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725269, 32.775780, 46.705013>,  <40.840179, 33.135330, 46.572659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725269, 32.775780, 46.705013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279698, -0.251667, -0.926516,
		0.916101, -0.358716, -0.179116,
		-0.287279, -0.898881, 0.330885,
		40.639084, 32.506115, 46.804279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171036, 32.755859, 46.070568>,  <40.840179, 33.135330, 46.572659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171036, 32.755859, 46.070568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896378, 32.501022, 46.210648>,  <40.731583, 32.348122, 46.294693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896378, 32.501022, 46.210648>,  <41.171036, 32.755859, 46.070568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896378, 32.501022, 46.210648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312254, -0.176555, -0.933448,
		0.656520, -0.750295, -0.077704,
		-0.686643, -0.637091, 0.350194,
		40.690384, 32.309895, 46.315704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193810, 32.153919, 45.575451>,  <41.171036, 32.755859, 46.070568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193810, 32.153919, 45.575451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841007, 32.142864, 45.763618>,  <40.629326, 32.136230, 45.876518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841007, 32.142864, 45.763618>,  <41.193810, 32.153919, 45.575451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841007, 32.142864, 45.763618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456796, -0.195065, -0.867921,
		0.115749, -0.980401, 0.159425,
		-0.882009, -0.027636, 0.470422,
		40.576405, 32.134575, 45.904743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795956, 31.560045, 45.458401>,  <41.193810, 32.153919, 45.575451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795956, 31.560045, 45.458401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491638, 31.804449, 45.545906>,  <40.309048, 31.951092, 45.598408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491638, 31.804449, 45.545906>,  <40.795956, 31.560045, 45.458401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491638, 31.804449, 45.545906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479921, -0.302766, -0.823413,
		-0.436883, -0.731435, 0.523580,
		-0.760795, 0.611012, 0.218758,
		40.263401, 31.987753, 45.611534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245403, 31.121696, 45.312084>,  <40.795956, 31.560045, 45.458401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245403, 31.121696, 45.312084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104870, 31.496189, 45.314404>,  <40.020550, 31.720884, 45.315796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104870, 31.496189, 45.314404>,  <40.245403, 31.121696, 45.312084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104870, 31.496189, 45.314404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517337, -0.188969, -0.834657,
		-0.780340, -0.296238, 0.550739,
		-0.351330, 0.936234, 0.005794,
		39.999470, 31.777060, 45.316143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668812, 31.060490, 45.048321>,  <40.245403, 31.121696, 45.312084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668812, 31.060490, 45.048321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676907, 31.458698, 45.011391>,  <39.681763, 31.697624, 44.989231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676907, 31.458698, 45.011391>,  <39.668812, 31.060490, 45.048321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676907, 31.458698, 45.011391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678414, -0.054158, -0.732681,
		-0.734401, 0.077466, 0.674281,
		0.020240, 0.995523, -0.092327,
		39.682980, 31.757355, 44.983692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949902, 31.260124, 44.880047>,  <39.668812, 31.060490, 45.048321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949902, 31.260124, 44.880047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176033, 31.577732, 44.790665>,  <39.311714, 31.768297, 44.737038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176033, 31.577732, 44.790665>,  <38.949902, 31.260124, 44.880047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176033, 31.577732, 44.790665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485872, 0.101634, -0.868101,
		-0.666579, 0.599335, 0.443249,
		0.565333, 0.794020, -0.223453,
		39.345634, 31.815939, 44.723629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491585, 31.769560, 44.529942>,  <38.949902, 31.260124, 44.880047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491585, 31.769560, 44.529942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867260, 31.849127, 44.417973>,  <39.092667, 31.896868, 44.350792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867260, 31.849127, 44.417973>,  <38.491585, 31.769560, 44.529942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867260, 31.849127, 44.417973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290995, 0.028188, -0.956309,
		-0.182338, 0.979610, 0.084358,
		0.939188, 0.198919, -0.279922,
		39.149017, 31.908802, 44.333996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537800, 32.363079, 43.994499>,  <38.491585, 31.769560, 44.529942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537800, 32.363079, 43.994499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895428, 32.190639, 43.945843>,  <39.110004, 32.087177, 43.916649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895428, 32.190639, 43.945843>,  <38.537800, 32.363079, 43.994499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895428, 32.190639, 43.945843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146122, -0.023985, -0.988976,
		0.423425, 0.901988, -0.084437,
		0.894069, -0.431095, -0.121645,
		39.163647, 32.061310, 43.909348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730221, 32.677166, 43.400658>,  <38.537800, 32.363079, 43.994499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730221, 32.677166, 43.400658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992100, 32.376595, 43.433449>,  <39.149227, 32.196251, 43.453125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992100, 32.376595, 43.433449>,  <38.730221, 32.677166, 43.400658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992100, 32.376595, 43.433449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052041, -0.063389, -0.996631,
		0.754094, 0.656762, -0.002395,
		0.654701, -0.751429, 0.081980,
		39.188511, 32.151165, 43.458042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216480, 32.840370, 42.937485>,  <38.730221, 32.677166, 43.400658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216480, 32.840370, 42.937485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273563, 32.449512, 43.000507>,  <39.307816, 32.214996, 43.038319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273563, 32.449512, 43.000507>,  <39.216480, 32.840370, 42.937485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273563, 32.449512, 43.000507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244449, -0.119453, -0.962276,
		0.959103, 0.175840, 0.221814,
		0.142710, -0.977144, 0.157552,
		39.316376, 32.156368, 43.047771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720276, 32.763191, 42.495529>,  <39.216480, 32.840370, 42.937485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720276, 32.763191, 42.495529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553226, 32.407841, 42.571823>,  <39.452995, 32.194630, 42.617599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553226, 32.407841, 42.571823>,  <39.720276, 32.763191, 42.495529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553226, 32.407841, 42.571823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104893, -0.255656, -0.961061,
		0.902546, -0.381354, 0.199952,
		-0.417623, -0.888375, 0.190740,
		39.427940, 32.141327, 42.629044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183418, 32.155056, 42.251411>,  <39.720276, 32.763191, 42.495529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183418, 32.155056, 42.251411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810680, 32.015026, 42.289585>,  <39.587036, 31.931009, 42.312489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810680, 32.015026, 42.289585>,  <40.183418, 32.155056, 42.251411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810680, 32.015026, 42.289585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049058, -0.139052, -0.989069,
		0.359517, -0.926344, 0.112402,
		-0.931848, -0.350073, 0.095436,
		39.531124, 31.910004, 42.318214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278149, 31.547789, 42.084290>,  <40.183418, 32.155056, 42.251411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278149, 31.547789, 42.084290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902096, 31.646828, 41.990616>,  <39.676464, 31.706251, 41.934414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902096, 31.646828, 41.990616>,  <40.278149, 31.547789, 42.084290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902096, 31.646828, 41.990616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242335, 0.002535, -0.970189,
		-0.239624, -0.968859, -0.062385,
		-0.940135, 0.247599, -0.234181,
		39.620056, 31.721107, 41.920361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123524, 31.239738, 41.468922>,  <40.278149, 31.547789, 42.084290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123524, 31.239738, 41.468922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852886, 31.534243, 41.473652>,  <39.690502, 31.710945, 41.476490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852886, 31.534243, 41.473652>,  <40.123524, 31.239738, 41.468922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852886, 31.534243, 41.473652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058007, -0.037280, -0.997620,
		-0.734066, -0.675672, 0.067932,
		-0.676596, 0.736259, 0.011828,
		39.649906, 31.755121, 41.477200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638119, 31.133423, 41.022442>,  <40.123524, 31.239738, 41.468922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638119, 31.133423, 41.022442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586178, 31.529852, 41.034546>,  <39.555016, 31.767710, 41.041809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586178, 31.529852, 41.034546>,  <39.638119, 31.133423, 41.022442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586178, 31.529852, 41.034546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069531, 0.039541, -0.996796,
		-0.989093, -0.127329, -0.074045,
		-0.129849, 0.991072, 0.030256,
		39.547222, 31.827173, 41.043621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333256, 31.251717, 40.359718>,  <39.638119, 31.133423, 41.022442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333256, 31.251717, 40.359718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417328, 31.619007, 40.493992>,  <39.467773, 31.839382, 40.574554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417328, 31.619007, 40.493992>,  <39.333256, 31.251717, 40.359718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417328, 31.619007, 40.493992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102662, 0.320722, -0.941593,
		-0.972257, 0.232370, -0.026856,
		0.210184, 0.918228, 0.335680,
		39.480385, 31.894476, 40.594696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832668, 31.754379, 40.013062>,  <39.333256, 31.251717, 40.359718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832668, 31.754379, 40.013062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176716, 31.931374, 40.114574>,  <39.383144, 32.037571, 40.175484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176716, 31.931374, 40.114574>,  <38.832668, 31.754379, 40.013062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176716, 31.931374, 40.114574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108840, 0.326864, -0.938783,
		-0.498349, 0.835085, 0.232982,
		0.860117, 0.442484, 0.253783,
		39.434750, 32.064117, 40.190708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956844, 32.225124, 39.432899>,  <38.832668, 31.754379, 40.013062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956844, 32.225124, 39.432899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299908, 32.311565, 39.619541>,  <39.505745, 32.363430, 39.731525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299908, 32.311565, 39.619541>,  <38.956844, 32.225124, 39.432899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299908, 32.311565, 39.619541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319536, 0.486972, -0.812868,
		-0.402883, 0.846262, 0.348605,
		0.857660, 0.216099, 0.466604,
		39.557205, 32.376396, 39.759521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099407, 32.901089, 39.328117>,  <38.956844, 32.225124, 39.432899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099407, 32.901089, 39.328117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458233, 32.737305, 39.394592>,  <39.673531, 32.639034, 39.434479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458233, 32.737305, 39.394592>,  <39.099407, 32.901089, 39.328117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458233, 32.737305, 39.394592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403507, 0.605676, -0.685812,
		0.180153, 0.682278, 0.708550,
		0.897066, -0.409456, 0.166190,
		39.727352, 32.614468, 39.444450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535366, 33.421009, 39.236553>,  <39.099407, 32.901089, 39.328117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535366, 33.421009, 39.236553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780853, 33.105301, 39.228638>,  <39.928146, 32.915874, 39.223888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780853, 33.105301, 39.228638>,  <39.535366, 33.421009, 39.236553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780853, 33.105301, 39.228638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452441, 0.372125, -0.810444,
		0.647026, 0.488436, 0.585481,
		0.613722, -0.789274, -0.019786,
		39.964970, 32.868519, 39.222702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138264, 33.619808, 39.304333>,  <39.535366, 33.421009, 39.236553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138264, 33.619808, 39.304333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172955, 33.266903, 39.119251>,  <40.193768, 33.055161, 39.008202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172955, 33.266903, 39.119251>,  <40.138264, 33.619808, 39.304333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172955, 33.266903, 39.119251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571888, 0.424392, -0.702022,
		0.815734, -0.203730, 0.541361,
		0.086727, -0.882262, -0.462702,
		40.198971, 33.002224, 38.980442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838177, 33.624432, 39.169003>,  <40.138264, 33.619808, 39.304333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838177, 33.624432, 39.169003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683903, 33.347050, 38.925571>,  <40.591339, 33.180618, 38.779514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683903, 33.347050, 38.925571>,  <40.838177, 33.624432, 39.169003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683903, 33.347050, 38.925571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689461, 0.221698, -0.689560,
		0.613101, -0.685542, 0.392607,
		-0.385682, -0.693457, -0.608578,
		40.568199, 33.139011, 38.742996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398682, 33.232555, 38.901150>,  <40.838177, 33.624432, 39.169003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398682, 33.232555, 38.901150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106689, 33.209442, 38.628742>,  <40.931496, 33.195576, 38.465298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106689, 33.209442, 38.628742>,  <41.398682, 33.232555, 38.901150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106689, 33.209442, 38.628742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681625, 0.011611, -0.731610,
		0.050181, -0.998262, 0.030909,
		-0.729979, -0.057781, -0.681022,
		40.887695, 33.192108, 38.424435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682030, 32.797451, 38.410019>,  <41.398682, 33.232555, 38.901150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682030, 32.797451, 38.410019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394478, 32.987179, 38.206753>,  <41.221947, 33.101013, 38.084793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394478, 32.987179, 38.206753>,  <41.682030, 32.797451, 38.410019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394478, 32.987179, 38.206753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614285, 0.091291, -0.783786,
		-0.325372, -0.875608, -0.356993,
		-0.718879, 0.474317, -0.508169,
		41.178814, 33.129475, 38.054302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621761, 32.550148, 37.713039>,  <41.682030, 32.797451, 38.410019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621761, 32.550148, 37.713039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559723, 32.944798, 37.733135>,  <41.522499, 33.181587, 37.745193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559723, 32.944798, 37.733135>,  <41.621761, 32.550148, 37.713039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559723, 32.944798, 37.733135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565046, 0.130309, -0.814704,
		-0.810351, -0.097974, -0.577696,
		-0.155099, 0.986621, 0.050236,
		41.513195, 33.240784, 37.748207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180351, 32.889847, 37.017990>,  <41.621761, 32.550148, 37.713039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180351, 32.889847, 37.017990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473839, 33.048897, 37.238373>,  <41.649929, 33.144329, 37.370602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473839, 33.048897, 37.238373>,  <41.180351, 32.889847, 37.017990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473839, 33.048897, 37.238373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608167, -0.022751, -0.793483,
		-0.302977, 0.917264, -0.258518,
		0.733715, 0.397629, 0.550957,
		41.693954, 33.168186, 37.403660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668987, 33.455139, 36.999336>,  <41.180351, 32.889847, 37.017990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668987, 33.455139, 36.999336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751743, 33.779198, 37.218742>,  <41.801395, 33.973633, 37.350384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751743, 33.779198, 37.218742>,  <41.668987, 33.455139, 36.999336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751743, 33.779198, 37.218742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802563, 0.180105, -0.568730,
		-0.559543, 0.557880, -0.612929,
		0.206892, 0.810143, 0.548511,
		41.813812, 34.022240, 37.383297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725014, 34.163853, 36.585537>,  <41.668987, 33.455139, 36.999336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725014, 34.163853, 36.585537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950813, 34.126213, 36.913555>,  <42.086292, 34.103630, 37.110367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950813, 34.126213, 36.913555>,  <41.725014, 34.163853, 36.585537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950813, 34.126213, 36.913555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818376, -0.065809, -0.570902,
		0.107686, 0.993386, 0.039857,
		0.564503, -0.094096, 0.820050,
		42.120163, 34.097984, 37.159569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229572, 34.769058, 36.771275>,  <41.725014, 34.163853, 36.585537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229572, 34.769058, 36.771275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364601, 34.404709, 36.866234>,  <42.445618, 34.186100, 36.923210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364601, 34.404709, 36.866234>,  <42.229572, 34.769058, 36.771275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364601, 34.404709, 36.866234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710646, 0.081229, -0.698845,
		0.617275, 0.404617, 0.674728,
		0.337572, -0.910871, 0.237399,
		42.465874, 34.131447, 36.937454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957436, 34.801376, 36.550014>,  <42.229572, 34.769058, 36.771275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957436, 34.801376, 36.550014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855122, 34.417080, 36.593002>,  <42.793736, 34.186501, 36.618793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855122, 34.417080, 36.593002>,  <42.957436, 34.801376, 36.550014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855122, 34.417080, 36.593002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689860, -0.259273, -0.675922,
		0.677251, -0.098749, 0.729095,
		-0.255781, -0.960743, 0.107470,
		42.778389, 34.128857, 36.625244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478794, 34.343323, 36.779987>,  <42.957436, 34.801376, 36.550014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478794, 34.343323, 36.779987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236336, 34.149696, 36.527554>,  <43.090862, 34.033520, 36.376095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236336, 34.149696, 36.527554>,  <43.478794, 34.343323, 36.779987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236336, 34.149696, 36.527554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735769, -0.039938, -0.676054,
		0.302052, -0.874119, 0.380370,
		-0.606143, -0.484068, -0.631085,
		43.054493, 34.004475, 36.338226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107838, 34.668182, 37.071400>,  <43.478794, 34.343323, 36.779987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107838, 34.668182, 37.071400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497322, 34.756748, 37.092796>,  <44.731014, 34.809887, 37.105633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497322, 34.756748, 37.092796>,  <44.107838, 34.668182, 37.071400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497322, 34.756748, 37.092796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194598, 0.930643, -0.309894,
		-0.118393, 0.291339, 0.949265,
		0.973712, 0.221414, 0.053488,
		44.789436, 34.823174, 37.108841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272186, 35.346882, 37.531101>,  <44.107838, 34.668182, 37.071400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272186, 35.346882, 37.531101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478741, 35.244099, 37.204342>,  <44.602673, 35.182426, 37.008286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478741, 35.244099, 37.204342>,  <44.272186, 35.346882, 37.531101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478741, 35.244099, 37.204342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149165, 0.912346, -0.381279,
		0.843264, 0.318740, 0.432794,
		0.516387, -0.256962, -0.816894,
		44.633656, 35.167011, 36.959274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976944, 35.721786, 37.359310>,  <44.272186, 35.346882, 37.531101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976944, 35.721786, 37.359310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835354, 35.580582, 37.012878>,  <44.750401, 35.495861, 36.805019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835354, 35.580582, 37.012878>,  <44.976944, 35.721786, 37.359310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835354, 35.580582, 37.012878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073931, 0.912572, -0.402176,
		0.932329, -0.206389, -0.296927,
		-0.353972, -0.353008, -0.866076,
		44.729160, 35.474678, 36.753056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514622, 35.762730, 36.899609>,  <44.976944, 35.721786, 37.359310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514622, 35.762730, 36.899609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162262, 35.765030, 36.710297>,  <44.950848, 35.766411, 36.596710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162262, 35.765030, 36.710297>,  <45.514622, 35.762730, 36.899609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162262, 35.765030, 36.710297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157038, 0.946835, -0.280789,
		0.446500, -0.321668, -0.834965,
		-0.880896, 0.005749, -0.473276,
		44.897995, 35.766754, 36.568314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591610, 36.061504, 36.226032>,  <45.514622, 35.762730, 36.899609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591610, 36.061504, 36.226032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202957, 36.107796, 36.308540>,  <44.969765, 36.135571, 36.358044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202957, 36.107796, 36.308540>,  <45.591610, 36.061504, 36.226032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202957, 36.107796, 36.308540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075602, 0.978324, -0.192786,
		-0.224108, -0.171722, -0.959316,
		-0.971627, 0.115731, 0.206268,
		44.911469, 36.142513, 36.370422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586452, 36.578724, 35.847614>,  <45.591610, 36.061504, 36.226032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586452, 36.578724, 35.847614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234795, 36.584011, 36.038162>,  <45.023800, 36.587181, 36.152493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234795, 36.584011, 36.038162>,  <45.586452, 36.578724, 35.847614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234795, 36.584011, 36.038162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005928, 0.999841, -0.016797,
		-0.476515, -0.011943, -0.879085,
		-0.879146, 0.013215, 0.476369,
		44.971050, 36.587975, 36.181072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202709, 36.975414, 35.469555>,  <45.586452, 36.578724, 35.847614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202709, 36.975414, 35.469555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064758, 36.977852, 35.845005>,  <44.981987, 36.979317, 36.070274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064758, 36.977852, 35.845005>,  <45.202709, 36.975414, 35.469555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064758, 36.977852, 35.845005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075083, 0.996954, 0.021112,
		-0.935640, 0.077757, -0.344284,
		-0.344876, 0.006097, 0.938628,
		44.961296, 36.979679, 36.126595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761223, 37.585770, 35.483685>,  <45.202709, 36.975414, 35.469555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761223, 37.585770, 35.483685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830357, 37.506458, 35.869598>,  <44.871838, 37.458870, 36.101147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830357, 37.506458, 35.869598>,  <44.761223, 37.585770, 35.483685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830357, 37.506458, 35.869598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054856, 0.976070, 0.210425,
		-0.983423, -0.089292, 0.157817,
		0.172830, -0.198279, 0.964788,
		44.882206, 37.446976, 36.159035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202656, 37.791431, 35.810936>,  <44.761223, 37.585770, 35.483685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202656, 37.791431, 35.810936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501354, 37.796040, 36.076939>,  <44.680573, 37.798805, 36.236542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501354, 37.796040, 36.076939>,  <44.202656, 37.791431, 35.810936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501354, 37.796040, 36.076939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127494, 0.983787, 0.126127,
		-0.652774, -0.178970, 0.736109,
		0.746748, 0.011517, 0.665008,
		44.725380, 37.799496, 36.276440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066521, 38.271931, 36.272106>,  <44.202656, 37.791431, 35.810936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066521, 38.271931, 36.272106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463295, 38.237629, 36.309429>,  <44.701359, 38.217049, 36.331821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463295, 38.237629, 36.309429>,  <44.066521, 38.271931, 36.272106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463295, 38.237629, 36.309429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088625, 0.995699, -0.027013,
		-0.090587, 0.035064, 0.995271,
		0.991937, -0.085759, 0.093305,
		44.760876, 38.211903, 36.337421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271336, 38.944107, 36.598492>,  <44.066521, 38.271931, 36.272106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271336, 38.944107, 36.598492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624413, 38.809471, 36.467312>,  <44.836258, 38.728687, 36.388603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624413, 38.809471, 36.467312>,  <44.271336, 38.944107, 36.598492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624413, 38.809471, 36.467312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241393, 0.923503, -0.298115,
		0.403209, 0.183979, 0.896423,
		0.882696, -0.336592, -0.327953,
		44.889221, 38.708492, 36.368927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825821, 39.384697, 36.832336>,  <44.271336, 38.944107, 36.598492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825821, 39.384697, 36.832336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973015, 39.192905, 36.513668>,  <45.061333, 39.077831, 36.322468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973015, 39.192905, 36.513668>,  <44.825821, 39.384697, 36.832336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973015, 39.192905, 36.513668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428308, 0.847890, -0.312466,
		0.825312, -0.226240, 0.517374,
		0.367984, -0.479478, -0.796674,
		45.083408, 39.049061, 36.274666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530281, 39.702351, 36.777718>,  <44.825821, 39.384697, 36.832336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530281, 39.702351, 36.777718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479465, 39.527603, 36.421516>,  <45.448975, 39.422752, 36.207794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479465, 39.527603, 36.421516>,  <45.530281, 39.702351, 36.777718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479465, 39.527603, 36.421516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519279, 0.735627, -0.434973,
		0.845109, -0.517682, 0.133403,
		-0.127042, -0.436873, -0.890507,
		45.441353, 39.396542, 36.154366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279076, 39.565910, 36.487797>,  <45.530281, 39.702351, 36.777718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279076, 39.565910, 36.487797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984219, 39.591431, 36.218708>,  <45.807304, 39.606743, 36.057255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984219, 39.591431, 36.218708>,  <46.279076, 39.565910, 36.487797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984219, 39.591431, 36.218708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443412, 0.796900, -0.410289,
		0.509912, -0.600733, -0.615719,
		-0.737140, 0.063805, -0.672721,
		45.763077, 39.610573, 36.016891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.508640, 39.815773, 35.748032>,  <46.279076, 39.565910, 36.487797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.508640, 39.815773, 35.748032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.122978, 39.921913, 35.748096>,  <45.891582, 39.985600, 35.748135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.122978, 39.921913, 35.748096>,  <46.508640, 39.815773, 35.748032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122978, 39.921913, 35.748096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254477, 0.924804, -0.282806,
		-0.075193, -0.272626, -0.959177,
		-0.964151, 0.265354, 0.000161,
		45.833733, 40.001518, 35.748146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.409206, 40.196907, 35.118374>,  <46.508640, 39.815773, 35.748032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.409206, 40.196907, 35.118374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.090096, 40.281963, 35.344059>,  <45.898628, 40.332996, 35.479469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.090096, 40.281963, 35.344059>,  <46.409206, 40.196907, 35.118374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090096, 40.281963, 35.344059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042094, 0.953106, -0.299695,
		-0.601484, -0.215340, -0.769315,
		-0.797775, 0.212645, 0.564214,
		45.850761, 40.345757, 35.513325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162022, 40.833286, 34.832375>,  <46.409206, 40.196907, 35.118374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.162022, 40.833286, 34.832375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926849, 40.811008, 35.155174>,  <45.785748, 40.797642, 35.348854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926849, 40.811008, 35.155174>,  <46.162022, 40.833286, 34.832375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.926849, 40.811008, 35.155174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317498, 0.933458, -0.166888,
		-0.744001, -0.354337, -0.566488,
		-0.587927, -0.055694, 0.806994,
		45.750473, 40.794300, 35.397274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497234, 41.184685, 34.673290>,  <46.162022, 40.833286, 34.832375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497234, 41.184685, 34.673290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.552246, 41.181923, 35.069481>,  <45.585255, 41.180267, 35.307194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.552246, 41.181923, 35.069481>,  <45.497234, 41.184685, 34.673290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.552246, 41.181923, 35.069481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153493, 0.987747, 0.028196,
		-0.978532, -0.155909, 0.134788,
		0.137533, -0.006901, 0.990473,
		45.593506, 41.179852, 35.366623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933342, 41.421047, 34.910480>,  <45.497234, 41.184685, 34.673290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933342, 41.421047, 34.910480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204403, 41.491962, 35.195957>,  <45.367039, 41.534512, 35.367245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204403, 41.491962, 35.195957>,  <44.933342, 41.421047, 34.910480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204403, 41.491962, 35.195957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366915, 0.922585, 0.119206,
		-0.637309, -0.342645, 0.690240,
		0.677651, 0.177288, 0.713694,
		45.407700, 41.545151, 35.410065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548801, 41.737389, 35.465412>,  <44.933342, 41.421047, 34.910480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548801, 41.737389, 35.465412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933903, 41.839016, 35.502392>,  <45.164963, 41.899994, 35.524578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933903, 41.839016, 35.502392>,  <44.548801, 41.737389, 35.465412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933903, 41.839016, 35.502392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260738, 0.962945, 0.068934,
		-0.071507, -0.090471, 0.993328,
		0.962758, 0.254069, 0.092447,
		45.222729, 41.915237, 35.530125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527023, 42.276852, 35.938042>,  <44.548801, 41.737389, 35.465412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527023, 42.276852, 35.938042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878510, 42.277950, 35.747108>,  <45.089401, 42.278610, 35.632549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878510, 42.277950, 35.747108>,  <44.527023, 42.276852, 35.938042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878510, 42.277950, 35.747108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088618, 0.983538, -0.157478,
		0.469039, 0.180679, 0.864498,
		0.878720, 0.002747, -0.477329,
		45.142124, 42.278774, 35.603909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983761, 42.733391, 36.338116>,  <44.527023, 42.276852, 35.938042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983761, 42.733391, 36.338116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085693, 42.746990, 35.951561>,  <45.146851, 42.755150, 35.719627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085693, 42.746990, 35.951561>,  <44.983761, 42.733391, 36.338116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085693, 42.746990, 35.951561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051037, 0.998462, 0.021670,
		0.965639, 0.043800, 0.256171,
		0.254827, 0.034000, -0.966389,
		45.162140, 42.757191, 35.661644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560986, 43.185326, 36.220936>,  <44.983761, 42.733391, 36.338116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560986, 43.185326, 36.220936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346428, 43.186188, 35.883350>,  <45.217693, 43.186707, 35.680798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346428, 43.186188, 35.883350>,  <45.560986, 43.185326, 36.220936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346428, 43.186188, 35.883350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023458, 0.999649, -0.012353,
		0.843640, -0.026424, -0.536258,
		-0.536396, 0.002158, -0.843964,
		45.185509, 43.186836, 35.630161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837276, 43.617943, 35.754017>,  <45.560986, 43.185326, 36.220936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837276, 43.617943, 35.754017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466553, 43.599400, 35.604954>,  <45.244118, 43.588272, 35.515514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466553, 43.599400, 35.604954>,  <45.837276, 43.617943, 35.754017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466553, 43.599400, 35.604954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008395, 0.994660, -0.102863,
		0.375436, -0.092206, -0.922251,
		-0.926811, -0.046360, -0.372657,
		45.188511, 43.585491, 35.493156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659733, 43.723003, 35.060230>,  <45.837276, 43.617943, 35.754017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659733, 43.723003, 35.060230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264046, 43.781548, 35.062428>,  <45.026634, 43.816673, 35.063747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264046, 43.781548, 35.062428>,  <45.659733, 43.723003, 35.060230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264046, 43.781548, 35.062428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118782, -0.779745, -0.614727,
		-0.085684, -0.608751, 0.788721,
		-0.989217, 0.146358, 0.005497,
		44.967281, 43.825455, 35.064075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593979, 44.174679, 34.377125>,  <45.659733, 43.723003, 35.060230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593979, 44.174679, 34.377125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333744, 44.350433, 34.129356>,  <45.177605, 44.455887, 33.980694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333744, 44.350433, 34.129356>,  <45.593979, 44.174679, 34.377125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333744, 44.350433, 34.129356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527223, -0.848368, -0.048041,
		-0.546605, 0.295318, 0.783588,
		-0.650584, 0.439385, -0.619420,
		45.138569, 44.482250, 33.943531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825291, 44.048252, 34.541813>,  <45.593979, 44.174679, 34.377125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825291, 44.048252, 34.541813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834229, 44.113163, 34.147217>,  <44.839592, 44.152111, 33.910458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834229, 44.113163, 34.147217>,  <44.825291, 44.048252, 34.541813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834229, 44.113163, 34.147217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462783, -0.872977, -0.154090,
		-0.886190, 0.459974, 0.055595,
		0.022344, 0.162281, -0.986491,
		44.840931, 44.161846, 33.851269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163876, 43.987591, 34.339886>,  <44.825291, 44.048252, 34.541813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163876, 43.987591, 34.339886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434071, 43.916584, 34.053612>,  <44.596188, 43.873981, 33.881847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434071, 43.916584, 34.053612>,  <44.163876, 43.987591, 34.339886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434071, 43.916584, 34.053612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377186, -0.917179, -0.128507,
		-0.633595, 0.356750, -0.686503,
		0.675491, -0.177518, -0.715681,
		44.636719, 43.863327, 33.838909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034584, 43.406532, 33.959801>,  <44.163876, 43.987591, 34.339886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034584, 43.406532, 33.959801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353134, 43.488163, 33.732067>,  <44.544262, 43.537144, 33.595428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353134, 43.488163, 33.732067>,  <44.034584, 43.406532, 33.959801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353134, 43.488163, 33.732067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121930, -0.867848, -0.481635,
		-0.592387, 0.452981, -0.666247,
		0.796373, 0.204079, -0.569334,
		44.592045, 43.549385, 33.561268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938881, 43.413944, 33.244202>,  <44.034584, 43.406532, 33.959801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938881, 43.413944, 33.244202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324062, 43.325352, 33.305740>,  <44.555172, 43.272198, 33.342663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324062, 43.325352, 33.305740>,  <43.938881, 43.413944, 33.244202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324062, 43.325352, 33.305740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157612, -0.925147, -0.345342,
		0.218815, 0.308300, -0.925781,
		0.962953, -0.221480, 0.153844,
		44.612949, 43.258907, 33.351894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192562, 43.032505, 32.589451>,  <43.938881, 43.413944, 33.244202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192562, 43.032505, 32.589451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415810, 42.939354, 32.908016>,  <44.549759, 42.883461, 33.099155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415810, 42.939354, 32.908016>,  <44.192562, 43.032505, 32.589451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415810, 42.939354, 32.908016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079143, -0.970372, -0.228287,
		0.825981, 0.064379, -0.560010,
		0.558115, -0.232882, 0.796414,
		44.583244, 42.869488, 33.146942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776855, 42.531239, 32.417877>,  <44.192562, 43.032505, 32.589451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776855, 42.531239, 32.417877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643475, 42.472561, 32.790390>,  <44.563446, 42.437355, 33.013897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643475, 42.472561, 32.790390>,  <44.776855, 42.531239, 32.417877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643475, 42.472561, 32.790390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126338, -0.971956, -0.198342,
		0.934262, -0.183795, 0.305571,
		-0.333456, -0.146698, 0.931282,
		44.543438, 42.428551, 33.069775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012814, 41.934811, 32.536846>,  <44.776855, 42.531239, 32.417877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012814, 41.934811, 32.536846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696972, 41.971516, 32.779533>,  <44.507465, 41.993538, 32.925144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696972, 41.971516, 32.779533>,  <45.012814, 41.934811, 32.536846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696972, 41.971516, 32.779533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108417, -0.994063, 0.009242,
		0.603961, -0.058481, 0.794865,
		-0.789605, 0.091759, 0.606715,
		44.460091, 41.999043, 32.961548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151333, 41.422691, 33.121876>,  <45.012814, 41.934811, 32.536846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151333, 41.422691, 33.121876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759312, 41.502106, 33.125290>,  <44.524097, 41.549755, 33.127338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759312, 41.502106, 33.125290>,  <45.151333, 41.422691, 33.121876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759312, 41.502106, 33.125290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197140, -0.976771, 0.083992,
		0.025014, 0.080634, 0.996430,
		-0.980056, 0.198537, 0.008537,
		44.465294, 41.561668, 33.127850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908260, 40.984604, 33.637589>,  <45.151333, 41.422691, 33.121876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908260, 40.984604, 33.637589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586239, 41.073509, 33.417591>,  <44.393028, 41.126854, 33.285595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586239, 41.073509, 33.417591>,  <44.908260, 40.984604, 33.637589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586239, 41.073509, 33.417591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296296, -0.953878, 0.048217,
		-0.513907, 0.201777, 0.833778,
		-0.805052, 0.222266, -0.549990,
		44.344723, 41.140190, 33.252594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391857, 40.651115, 33.883682>,  <44.908260, 40.984604, 33.637589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391857, 40.651115, 33.883682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233383, 40.696255, 33.519199>,  <44.138298, 40.723339, 33.300510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233383, 40.696255, 33.519199>,  <44.391857, 40.651115, 33.883682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233383, 40.696255, 33.519199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449860, -0.888997, 0.085499,
		-0.800414, 0.443790, 0.402974,
		-0.396187, 0.112848, -0.911209,
		44.114529, 40.730110, 33.245838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774376, 40.253780, 34.002117>,  <44.391857, 40.651115, 33.883682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774376, 40.253780, 34.002117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865543, 40.307880, 33.616421>,  <43.920246, 40.340340, 33.385002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865543, 40.307880, 33.616421>,  <43.774376, 40.253780, 34.002117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865543, 40.307880, 33.616421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386047, -0.896589, -0.217017,
		-0.893879, 0.421704, -0.152138,
		0.227922, 0.135254, -0.964240,
		43.933918, 40.348457, 33.327148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267765, 39.797642, 33.615448>,  <43.774376, 40.253780, 34.002117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267765, 39.797642, 33.615448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559143, 39.862797, 33.349262>,  <43.733971, 39.901890, 33.189552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559143, 39.862797, 33.349262>,  <43.267765, 39.797642, 33.615448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559143, 39.862797, 33.349262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017618, -0.975458, -0.219480,
		-0.684880, 0.148155, -0.713435,
		0.728443, 0.162887, -0.665462,
		43.777676, 39.911663, 33.149624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239418, 39.185390, 33.216118>,  <43.267765, 39.797642, 33.615448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239418, 39.185390, 33.216118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567104, 39.329105, 33.037323>,  <43.763718, 39.415333, 32.930046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567104, 39.329105, 33.037323>,  <43.239418, 39.185390, 33.216118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567104, 39.329105, 33.037323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335630, -0.932370, -0.134306,
		-0.465008, -0.039995, -0.884403,
		0.819219, 0.359286, -0.446983,
		43.812870, 39.436890, 32.903229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329391, 38.937206, 32.575424>,  <43.239418, 39.185390, 33.216118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329391, 38.937206, 32.575424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692200, 39.044781, 32.705032>,  <43.909885, 39.109325, 32.782795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692200, 39.044781, 32.705032>,  <43.329391, 38.937206, 32.575424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692200, 39.044781, 32.705032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313069, -0.945285, -0.091788,
		0.281602, 0.184693, -0.941588,
		0.907021, 0.268934, 0.324016,
		43.964306, 39.125462, 32.802238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816750, 38.487881, 32.247692>,  <43.329391, 38.937206, 32.575424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816750, 38.487881, 32.247692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034267, 38.643818, 32.544964>,  <44.164780, 38.737381, 32.723328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034267, 38.643818, 32.544964>,  <43.816750, 38.487881, 32.247692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034267, 38.643818, 32.544964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397499, -0.899570, 0.181020,
		0.739107, 0.196974, -0.644144,
		0.543796, 0.389839, 0.743176,
		44.197407, 38.760769, 32.767918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163166, 37.928745, 32.352329>,  <43.816750, 38.487881, 32.247692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163166, 37.928745, 32.352329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322422, 38.160515, 32.636795>,  <44.417976, 38.299576, 32.807472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322422, 38.160515, 32.636795>,  <44.163166, 37.928745, 32.352329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322422, 38.160515, 32.636795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439298, -0.801009, 0.406696,
		0.805297, 0.150490, -0.573454,
		0.398138, 0.579428, 0.711160,
		44.441864, 38.334343, 32.850143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920589, 37.923958, 32.301971>,  <44.163166, 37.928745, 32.352329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920589, 37.923958, 32.301971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788250, 37.970200, 32.676601>,  <44.708847, 37.997944, 32.901379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788250, 37.970200, 32.676601>,  <44.920589, 37.923958, 32.301971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788250, 37.970200, 32.676601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372367, -0.895944, 0.242132,
		0.867112, 0.428859, 0.253371,
		-0.330846, 0.115608, 0.936576,
		44.688995, 38.004883, 32.957573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512272, 37.808769, 32.741028>,  <44.920589, 37.923958, 32.301971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512272, 37.808769, 32.741028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185566, 37.770367, 32.968601>,  <44.989544, 37.747326, 33.105145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185566, 37.770367, 32.968601>,  <45.512272, 37.808769, 32.741028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185566, 37.770367, 32.968601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368917, -0.845050, 0.387027,
		0.443619, 0.525998, 0.725623,
		-0.816763, -0.096002, 0.568930,
		44.940536, 37.741566, 33.139278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754257, 37.616039, 33.404812>,  <45.512272, 37.808769, 32.741028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754257, 37.616039, 33.404812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373241, 37.497150, 33.378494>,  <45.144630, 37.425816, 33.362705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373241, 37.497150, 33.378494>,  <45.754257, 37.616039, 33.404812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373241, 37.497150, 33.378494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230970, -0.846424, 0.479812,
		-0.198297, 0.441844, 0.874901,
		-0.952539, -0.297221, -0.065791,
		45.087479, 37.407986, 33.358757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633884, 37.391647, 34.029003>,  <45.754257, 37.616039, 33.404812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633884, 37.391647, 34.029003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334541, 37.222672, 33.824455>,  <45.154934, 37.121284, 33.701725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334541, 37.222672, 33.824455>,  <45.633884, 37.391647, 34.029003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334541, 37.222672, 33.824455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039175, -0.797763, 0.601698,
		-0.662137, 0.430252, 0.613561,
		-0.748358, -0.422443, -0.511373,
		45.110035, 37.095940, 33.671043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310566, 37.057430, 34.555023>,  <45.633884, 37.391647, 34.029003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310566, 37.057430, 34.555023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198143, 36.878815, 34.215233>,  <45.130688, 36.771645, 34.011360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198143, 36.878815, 34.215233>,  <45.310566, 37.057430, 34.555023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198143, 36.878815, 34.215233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107504, -0.894236, 0.434493,
		-0.953649, 0.030797, 0.299340,
		-0.281061, -0.446535, -0.849477,
		45.113823, 36.744854, 33.960388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913029, 36.515434, 34.766335>,  <45.310566, 37.057430, 34.555023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913029, 36.515434, 34.766335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.984600, 36.418098, 34.385017>,  <45.027542, 36.359695, 34.156227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.984600, 36.418098, 34.385017>,  <44.913029, 36.515434, 34.766335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984600, 36.418098, 34.385017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005392, -0.968674, 0.248279,
		-0.983847, -0.049564, -0.172012,
		0.178929, -0.243342, -0.953294,
		45.038280, 36.345097, 34.099030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616028, 35.931080, 34.755852>,  <44.913029, 36.515434, 34.766335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616028, 35.931080, 34.755852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874825, 35.933792, 34.450863>,  <45.030102, 35.935421, 34.267872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874825, 35.933792, 34.450863>,  <44.616028, 35.931080, 34.755852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874825, 35.933792, 34.450863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182548, -0.972258, 0.146252,
		-0.740325, -0.233811, -0.630279,
		0.646989, 0.006782, -0.762469,
		45.068920, 35.935825, 34.222122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518436, 35.280228, 34.384327>,  <44.616028, 35.931080, 34.755852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518436, 35.280228, 34.384327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890507, 35.416843, 34.330475>,  <45.113750, 35.498814, 34.298164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890507, 35.416843, 34.330475>,  <44.518436, 35.280228, 34.384327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890507, 35.416843, 34.330475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357307, -0.926449, 0.118422,
		-0.084279, -0.158256, -0.983795,
		0.930177, 0.341536, -0.134626,
		45.169559, 35.519302, 34.290089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756908, 34.815048, 33.900078>,  <44.518436, 35.280228, 34.384327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756908, 34.815048, 33.900078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079094, 34.971420, 34.078247>,  <45.272404, 35.065243, 34.185150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079094, 34.971420, 34.078247>,  <44.756908, 34.815048, 33.900078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079094, 34.971420, 34.078247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397966, -0.913703, 0.082280,
		0.439151, 0.110991, -0.891531,
		0.805462, 0.390932, 0.445424,
		45.320732, 35.088699, 34.211876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251148, 34.307484, 33.742073>,  <44.756908, 34.815048, 33.900078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251148, 34.307484, 33.742073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434635, 34.546871, 34.004803>,  <45.544727, 34.690506, 34.162441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434635, 34.546871, 34.004803>,  <45.251148, 34.307484, 33.742073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434635, 34.546871, 34.004803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563717, -0.767385, 0.305523,
		0.686881, 0.230113, -0.689378,
		0.458714, 0.598472, 0.656820,
		45.572250, 34.726414, 34.201847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916821, 34.054325, 33.734081>,  <45.251148, 34.307484, 33.742073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916821, 34.054325, 33.734081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873577, 34.259640, 34.074635>,  <45.847633, 34.382828, 34.278965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873577, 34.259640, 34.074635>,  <45.916821, 34.054325, 33.734081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873577, 34.259640, 34.074635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538902, -0.689402, 0.484055,
		0.835403, 0.511142, -0.202080,
		-0.108106, 0.513282, 0.851384,
		45.841145, 34.413624, 34.330051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492039, 34.267868, 33.440613>,  <45.916821, 34.054325, 33.734081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492039, 34.267868, 33.440613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328163, 34.629227, 33.491245>,  <46.229839, 34.846043, 33.521626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328163, 34.629227, 33.491245>,  <46.492039, 34.267868, 33.440613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328163, 34.629227, 33.491245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174336, -0.058661, 0.982937,
		0.895412, 0.424766, -0.133463,
		-0.409689, 0.903401, 0.126578,
		46.205257, 34.900246, 33.529217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933670, 33.884666, 33.880863>,  <46.492039, 34.267868, 33.440613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933670, 33.884666, 33.880863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659370, 34.081898, 34.095013>,  <46.494793, 34.200237, 34.223503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659370, 34.081898, 34.095013>,  <46.933670, 33.884666, 33.880863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659370, 34.081898, 34.095013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207600, -0.572501, 0.793186,
		0.697606, 0.655068, 0.290227,
		-0.685746, 0.493081, 0.535373,
		46.453648, 34.229820, 34.255623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253159, 34.077168, 34.458160>,  <46.933670, 33.884666, 33.880863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253159, 34.077168, 34.458160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.869282, 34.008682, 34.547310>,  <46.638954, 33.967590, 34.600800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.869282, 34.008682, 34.547310>,  <47.253159, 34.077168, 34.458160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.869282, 34.008682, 34.547310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279322, -0.668818, 0.688957,
		0.031106, 0.723442, 0.689684,
		-0.959694, -0.171213, 0.222878,
		46.581375, 33.957317, 34.614174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.830025, 34.483871, 34.681091>,  <47.253159, 34.077168, 34.458160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.830025, 34.483871, 34.681091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640656, 34.835220, 34.707428>,  <47.527035, 35.046028, 34.723232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640656, 34.835220, 34.707428>,  <47.830025, 34.483871, 34.681091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.640656, 34.835220, 34.707428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220390, 0.190497, -0.956629,
		-0.852816, -0.438382, -0.283770,
		-0.473426, 0.878369, 0.065844,
		47.498627, 35.098732, 34.727180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.411987, 35.155449, 46.727890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013691, 35.165165, 46.692318>,  <35.774712, 35.170994, 46.670975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013691, 35.165165, 46.692318>,  <36.411987, 35.155449, 46.727890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013691, 35.165165, 46.692318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090207, 0.057672, -0.994252,
		-0.019027, -0.998040, -0.059618,
		-0.995742, 0.024295, -0.088933,
		35.714970, 35.172451, 46.665638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277908, 34.804207, 46.160980>,  <36.411987, 35.155449, 46.727890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277908, 34.804207, 46.160980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.913410, 34.966705, 46.188087>,  <35.694710, 35.064205, 46.204353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.913410, 34.966705, 46.188087>,  <36.277908, 34.804207, 46.160980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913410, 34.966705, 46.188087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095886, -0.049230, -0.994174,
		-0.400542, -0.912437, 0.083814,
		-0.911247, 0.406245, 0.067771,
		35.640038, 35.088577, 46.208420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848183, 34.429459, 45.846558>,  <36.277908, 34.804207, 46.160980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848183, 34.429459, 45.846558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.644642, 34.773537, 45.860069>,  <35.522518, 34.979984, 45.868176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.644642, 34.773537, 45.860069>,  <35.848183, 34.429459, 45.846558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644642, 34.773537, 45.860069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201812, -0.081056, -0.976065,
		-0.836867, -0.503484, 0.214842,
		-0.508848, 0.860194, 0.033776,
		35.491989, 35.031593, 45.870201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251610, 34.335407, 45.606598>,  <35.848183, 34.429459, 45.846558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251610, 34.335407, 45.606598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.294640, 34.729736, 45.555096>,  <35.320457, 34.966335, 45.524197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.294640, 34.729736, 45.555096>,  <35.251610, 34.335407, 45.606598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294640, 34.729736, 45.555096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290875, -0.092629, -0.952266,
		-0.950694, 0.139886, 0.276788,
		0.107571, 0.985825, -0.128751,
		35.326912, 35.025482, 45.516472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714436, 34.517776, 45.050285>,  <35.251610, 34.335407, 45.606598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714436, 34.517776, 45.050285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932209, 34.852142, 45.022457>,  <35.062874, 35.052761, 45.005760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932209, 34.852142, 45.022457>,  <34.714436, 34.517776, 45.050285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932209, 34.852142, 45.022457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241722, 0.076931, -0.967291,
		-0.803221, 0.543441, 0.243943,
		0.544433, 0.835914, -0.069569,
		35.095539, 35.102917, 45.001587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372585, 34.928917, 44.748119>,  <34.714436, 34.517776, 45.050285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372585, 34.928917, 44.748119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706688, 35.145260, 44.708477>,  <34.907150, 35.275066, 44.684692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706688, 35.145260, 44.708477>,  <34.372585, 34.928917, 44.748119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706688, 35.145260, 44.708477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151196, 0.052611, -0.987103,
		-0.528665, 0.839469, 0.125719,
		0.835256, 0.540855, -0.099110,
		34.957264, 35.307518, 44.678745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267612, 35.464993, 44.156498>,  <34.372585, 34.928917, 44.748119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267612, 35.464993, 44.156498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.660351, 35.402954, 44.200180>,  <34.895992, 35.365730, 44.226387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.660351, 35.402954, 44.200180>,  <34.267612, 35.464993, 44.156498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660351, 35.402954, 44.200180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100352, -0.063809, -0.992904,
		0.160960, 0.985837, -0.047087,
		0.981846, -0.155092, 0.109201,
		34.954906, 35.356426, 44.232941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662327, 35.989609, 43.817284>,  <34.267612, 35.464993, 44.156498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662327, 35.989609, 43.817284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877972, 35.653271, 43.836617>,  <35.007359, 35.451466, 43.848217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877972, 35.653271, 43.836617>,  <34.662327, 35.989609, 43.817284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877972, 35.653271, 43.836617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239755, 0.098204, -0.965854,
		0.807389, 0.532290, 0.254540,
		0.539111, -0.840847, 0.048331,
		35.039703, 35.401016, 43.851116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001942, 36.138859, 43.253139>,  <34.662327, 35.989609, 43.817284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001942, 36.138859, 43.253139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098957, 35.758339, 43.329254>,  <35.157166, 35.530025, 43.374924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098957, 35.758339, 43.329254>,  <35.001942, 36.138859, 43.253139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098957, 35.758339, 43.329254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417635, -0.074654, -0.905543,
		0.875647, 0.299095, 0.379190,
		0.242536, -0.951299, 0.190283,
		35.171719, 35.472950, 43.386337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685951, 36.073441, 42.982998>,  <35.001942, 36.138859, 43.253139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685951, 36.073441, 42.982998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539936, 35.701454, 43.000484>,  <35.452328, 35.478264, 43.010975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.539936, 35.701454, 43.000484>,  <35.685951, 36.073441, 42.982998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539936, 35.701454, 43.000484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430465, -0.210231, -0.877783,
		0.825498, -0.301607, 0.477060,
		-0.365038, -0.929966, 0.043714,
		35.430424, 35.422466, 43.013599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239574, 35.677700, 42.747963>,  <35.685951, 36.073441, 42.982998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239574, 35.677700, 42.747963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923157, 35.434483, 42.721039>,  <35.733307, 35.288551, 42.704884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923157, 35.434483, 42.721039>,  <36.239574, 35.677700, 42.747963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923157, 35.434483, 42.721039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278999, -0.260652, -0.924240,
		0.544433, -0.749896, 0.375832,
		-0.791045, -0.608043, -0.067313,
		35.685844, 35.252071, 42.700844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532204, 35.030251, 42.372040>,  <36.239574, 35.677700, 42.747963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532204, 35.030251, 42.372040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.135433, 35.060661, 42.331448>,  <35.897369, 35.078907, 42.307091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.135433, 35.060661, 42.331448>,  <36.532204, 35.030251, 42.372040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135433, 35.060661, 42.331448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083341, -0.212259, -0.973653,
		-0.095561, -0.974252, 0.204210,
		-0.991929, 0.076024, -0.101479,
		35.837856, 35.083469, 42.301003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419369, 34.427208, 41.902882>,  <36.532204, 35.030251, 42.372040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419369, 34.427208, 41.902882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096874, 34.663757, 41.909313>,  <35.903378, 34.805687, 41.913174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096874, 34.663757, 41.909313>,  <36.419369, 34.427208, 41.902882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096874, 34.663757, 41.909313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105274, -0.116667, -0.987576,
		-0.582153, -0.797911, 0.156318,
		-0.806235, 0.591377, 0.016082,
		35.855003, 34.841171, 41.914139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869259, 34.022430, 41.722595>,  <36.419369, 34.427208, 41.902882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869259, 34.022430, 41.722595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811733, 34.408089, 41.633377>,  <35.777218, 34.639484, 41.579845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811733, 34.408089, 41.633377>,  <35.869259, 34.022430, 41.722595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811733, 34.408089, 41.633377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004200, -0.225983, -0.974122,
		-0.989597, -0.139151, 0.036548,
		-0.143809, 0.964141, -0.223048,
		35.768589, 34.697330, 41.566463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493816, 33.984962, 41.158249>,  <35.869259, 34.022430, 41.722595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493816, 33.984962, 41.158249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.648369, 34.353008, 41.132648>,  <35.741100, 34.573837, 41.117287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.648369, 34.353008, 41.132648>,  <35.493816, 33.984962, 41.158249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648369, 34.353008, 41.132648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103273, -0.025800, -0.994318,
		-0.916538, 0.390798, 0.085054,
		0.386383, 0.920115, -0.064005,
		35.764282, 34.629044, 41.113445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300415, 34.177139, 40.460903>,  <35.493816, 33.984962, 41.158249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300415, 34.177139, 40.460903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556591, 34.455009, 40.591908>,  <35.710297, 34.621731, 40.670509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556591, 34.455009, 40.591908>,  <35.300415, 34.177139, 40.460903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556591, 34.455009, 40.591908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341359, 0.124530, -0.931647,
		-0.687978, 0.708461, -0.157380,
		0.640437, 0.694676, 0.327513,
		35.748722, 34.663414, 40.690163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389778, 34.551468, 39.885765>,  <35.300415, 34.177139, 40.460903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389778, 34.551468, 39.885765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708984, 34.623745, 40.115730>,  <35.900509, 34.667110, 40.253708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708984, 34.623745, 40.115730>,  <35.389778, 34.551468, 39.885765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708984, 34.623745, 40.115730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572835, 0.068851, -0.816774,
		-0.187170, 0.981126, -0.048564,
		0.798015, 0.180695, 0.574910,
		35.948387, 34.677952, 40.288204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727448, 35.085342, 39.523983>,  <35.389778, 34.551468, 39.885765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727448, 35.085342, 39.523983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019253, 34.944160, 39.758327>,  <36.194336, 34.859451, 39.898933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019253, 34.944160, 39.758327>,  <35.727448, 35.085342, 39.523983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019253, 34.944160, 39.758327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657930, 0.128041, -0.742114,
		0.186917, 0.926839, 0.325626,
		0.729513, -0.352953, 0.585862,
		36.238106, 34.838276, 39.934086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178356, 35.596310, 39.479317>,  <35.727448, 35.085342, 39.523983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178356, 35.596310, 39.479317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382843, 35.270851, 39.590046>,  <36.505535, 35.075577, 39.656483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382843, 35.270851, 39.590046>,  <36.178356, 35.596310, 39.479317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382843, 35.270851, 39.590046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705172, 0.212977, -0.676293,
		0.491309, 0.540940, 0.682641,
		0.511221, -0.813649, 0.276819,
		36.536209, 35.026756, 39.673092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839535, 35.800854, 39.628235>,  <36.178356, 35.596310, 39.479317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839535, 35.800854, 39.628235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880363, 35.408558, 39.561630>,  <36.904861, 35.173180, 39.521667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880363, 35.408558, 39.561630>,  <36.839535, 35.800854, 39.628235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880363, 35.408558, 39.561630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694225, 0.190117, -0.694195,
		0.712483, -0.044739, 0.700262,
		0.102074, -0.980742, -0.166514,
		36.910984, 35.114334, 39.511677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550613, 35.725029, 39.556767>,  <36.839535, 35.800854, 39.628235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550613, 35.725029, 39.556767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386375, 35.393517, 39.404694>,  <37.287830, 35.194611, 39.313450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386375, 35.393517, 39.404694>,  <37.550613, 35.725029, 39.556767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386375, 35.393517, 39.404694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573048, 0.089768, -0.814591,
		0.709244, -0.552329, 0.438071,
		-0.410597, -0.828779, -0.380178,
		37.263195, 35.144882, 39.290642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054291, 35.600708, 39.174892>,  <37.550613, 35.725029, 39.556767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054291, 35.600708, 39.174892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768524, 35.375717, 39.008408>,  <37.597065, 35.240723, 38.908516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768524, 35.375717, 39.008408>,  <38.054291, 35.600708, 39.174892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768524, 35.375717, 39.008408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520489, -0.029640, -0.853354,
		0.467652, -0.826284, 0.313936,
		-0.714418, -0.562473, -0.416210,
		37.554199, 35.206974, 38.883545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045742, 35.706429, 38.506798>,  <38.054291, 35.600708, 39.174892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045742, 35.706429, 38.506798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426895, 35.589474, 38.474472>,  <38.655586, 35.519302, 38.455078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.426895, 35.589474, 38.474472>,  <38.045742, 35.706429, 38.506798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426895, 35.589474, 38.474472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053900, -0.425352, 0.903421,
		-0.298515, -0.856498, -0.421070,
		0.952882, -0.292380, -0.080809,
		38.712761, 35.501759, 38.450230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016735, 34.981297, 38.721893>,  <38.045742, 35.706429, 38.506798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016735, 34.981297, 38.721893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.393982, 35.106411, 38.766953>,  <38.620331, 35.181480, 38.793987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.393982, 35.106411, 38.766953>,  <38.016735, 34.981297, 38.721893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393982, 35.106411, 38.766953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039979, -0.443101, 0.895580,
		0.330039, -0.840136, -0.430402,
		0.943120, 0.312784, 0.112653,
		38.676918, 35.200245, 38.800747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442520, 34.382935, 38.919395>,  <38.016735, 34.981297, 38.721893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442520, 34.382935, 38.919395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.694515, 34.675571, 39.023617>,  <38.845711, 34.851154, 39.086151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.694515, 34.675571, 39.023617>,  <38.442520, 34.382935, 38.919395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694515, 34.675571, 39.023617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087236, -0.400045, 0.912334,
		0.771691, -0.552029, -0.315844,
		0.629987, 0.731593, 0.260555,
		38.883511, 34.895050, 39.101784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991253, 34.036999, 39.331093>,  <38.442520, 34.382935, 38.919395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991253, 34.036999, 39.331093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993019, 34.426239, 39.423229>,  <38.994080, 34.659782, 39.478512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993019, 34.426239, 39.423229>,  <38.991253, 34.036999, 39.331093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993019, 34.426239, 39.423229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179804, -0.227363, 0.957067,
		0.983693, 0.037186, -0.175972,
		0.004420, 0.973100, 0.230341,
		38.994347, 34.718170, 39.492332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538689, 34.118809, 39.738335>,  <38.991253, 34.036999, 39.331093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538689, 34.118809, 39.738335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291958, 34.419140, 39.832802>,  <39.143921, 34.599339, 39.889484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291958, 34.419140, 39.832802>,  <39.538689, 34.118809, 39.738335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291958, 34.419140, 39.832802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147936, -0.184114, 0.971708,
		0.773070, 0.634315, 0.002492,
		-0.616828, 0.750830, 0.236171,
		39.106911, 34.644390, 39.903652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728531, 34.259651, 40.386627>,  <39.538689, 34.118809, 39.738335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728531, 34.259651, 40.386627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.390240, 34.470211, 40.351643>,  <39.187263, 34.596546, 40.330650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.390240, 34.470211, 40.351643>,  <39.728531, 34.259651, 40.386627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390240, 34.470211, 40.351643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123387, -0.033445, 0.991795,
		0.519152, 0.849581, 0.093236,
		-0.845729, 0.526397, -0.087464,
		39.136520, 34.628132, 40.325405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756195, 34.886940, 40.783733>,  <39.728531, 34.259651, 40.386627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756195, 34.886940, 40.783733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366932, 34.814125, 40.727406>,  <39.133373, 34.770435, 40.693607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366932, 34.814125, 40.727406>,  <39.756195, 34.886940, 40.783733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366932, 34.814125, 40.727406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139033, -0.022608, 0.990030,
		-0.183408, 0.983032, -0.003308,
		-0.973156, -0.182039, -0.140820,
		39.074986, 34.759514, 40.685158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370518, 35.474442, 41.040005>,  <39.756195, 34.886940, 40.783733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370518, 35.474442, 41.040005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.148857, 35.141483, 41.037479>,  <39.015862, 34.941708, 41.035965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.148857, 35.141483, 41.037479>,  <39.370518, 35.474442, 41.040005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148857, 35.141483, 41.037479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116242, 0.069876, 0.990760,
		-0.824262, 0.549760, -0.135481,
		-0.554147, -0.832395, -0.006309,
		38.982613, 34.891766, 41.035587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737736, 35.631336, 41.409943>,  <39.370518, 35.474442, 41.040005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737736, 35.631336, 41.409943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763111, 35.232513, 41.392723>,  <38.778336, 34.993221, 41.382393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763111, 35.232513, 41.392723>,  <38.737736, 35.631336, 41.409943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763111, 35.232513, 41.392723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396243, -0.064755, 0.915860,
		-0.915951, -0.041045, -0.399184,
		0.063441, -0.997057, -0.043048,
		38.782143, 34.933395, 41.379810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269157, 35.459316, 41.891953>,  <38.737736, 35.631336, 41.409943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269157, 35.459316, 41.891953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441090, 35.100510, 41.850773>,  <38.544250, 34.885223, 41.826065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441090, 35.100510, 41.850773>,  <38.269157, 35.459316, 41.891953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441090, 35.100510, 41.850773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123842, -0.171510, 0.977368,
		-0.894376, -0.407355, -0.184810,
		0.429832, -0.897021, -0.102947,
		38.570038, 34.831402, 41.819889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839787, 34.880222, 42.100521>,  <38.269157, 35.459316, 41.891953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839787, 34.880222, 42.100521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207012, 34.723640, 42.125576>,  <38.427349, 34.629692, 42.140610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207012, 34.723640, 42.125576>,  <37.839787, 34.880222, 42.100521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207012, 34.723640, 42.125576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090720, -0.053649, 0.994430,
		-0.385916, -0.918631, -0.084767,
		0.918062, -0.391457, 0.062634,
		38.482430, 34.606205, 42.144367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879147, 34.250854, 42.428932>,  <37.839787, 34.880222, 42.100521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879147, 34.250854, 42.428932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265976, 34.337864, 42.481770>,  <38.498074, 34.390072, 42.513470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265976, 34.337864, 42.481770>,  <37.879147, 34.250854, 42.428932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265976, 34.337864, 42.481770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144952, 0.044200, 0.988451,
		0.209175, -0.975053, 0.074275,
		0.967075, 0.217525, 0.132091,
		38.556099, 34.403122, 42.521397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088348, 33.708076, 42.860867>,  <37.879147, 34.250854, 42.428932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088348, 33.708076, 42.860867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356140, 34.002495, 42.900951>,  <38.516815, 34.179146, 42.925003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356140, 34.002495, 42.900951>,  <38.088348, 33.708076, 42.860867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356140, 34.002495, 42.900951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112388, -0.032989, 0.993117,
		0.734284, -0.676129, 0.060637,
		0.669475, 0.736045, 0.100212,
		38.556984, 34.223309, 42.931015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572456, 33.461372, 43.411514>,  <38.088348, 33.708076, 42.860867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572456, 33.461372, 43.411514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623669, 33.857491, 43.389854>,  <38.654396, 34.095161, 43.376858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623669, 33.857491, 43.389854>,  <38.572456, 33.461372, 43.411514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623669, 33.857491, 43.389854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068420, 0.063285, 0.995647,
		0.989407, -0.123769, 0.075859,
		0.128031, 0.990291, -0.054147,
		38.662079, 34.154579, 43.373611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113564, 33.683598, 43.870274>,  <38.572456, 33.461372, 43.411514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113564, 33.683598, 43.870274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.891403, 34.011162, 43.812424>,  <38.758106, 34.207699, 43.777714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.891403, 34.011162, 43.812424>,  <39.113564, 33.683598, 43.870274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891403, 34.011162, 43.812424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214938, 0.026638, 0.976264,
		0.803326, 0.573303, 0.161220,
		-0.555400, 0.818910, -0.144624,
		38.724785, 34.256836, 43.769035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311062, 34.131329, 44.370186>,  <39.113564, 33.683598, 43.870274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311062, 34.131329, 44.370186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956169, 34.280415, 44.261448>,  <38.743233, 34.369865, 44.196205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956169, 34.280415, 44.261448>,  <39.311062, 34.131329, 44.370186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956169, 34.280415, 44.261448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159689, 0.304713, 0.938962,
		0.432799, 0.876490, -0.210833,
		-0.887234, 0.372715, -0.271845,
		38.689999, 34.392227, 44.179893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244740, 34.788628, 44.661381>,  <39.311062, 34.131329, 44.370186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244740, 34.788628, 44.661381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.863522, 34.721664, 44.560436>,  <38.634792, 34.681484, 44.499870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.863522, 34.721664, 44.560436>,  <39.244740, 34.788628, 44.661381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863522, 34.721664, 44.560436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299079, 0.389435, 0.871144,
		-0.047561, 0.905712, -0.421217,
		-0.953042, -0.167410, -0.252357,
		38.577610, 34.671440, 44.484730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914066, 35.240829, 44.945076>,  <39.244740, 34.788628, 44.661381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914066, 35.240829, 44.945076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612354, 34.983891, 44.890732>,  <38.431328, 34.829727, 44.858124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612354, 34.983891, 44.890732>,  <38.914066, 35.240829, 44.945076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612354, 34.983891, 44.890732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307274, 0.162497, 0.937645,
		-0.580213, 0.748992, -0.319943,
		-0.754278, -0.642344, -0.135863,
		38.386070, 34.791187, 44.849972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.219437, 35.538895, 45.435131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173904, 35.149849, 45.354069>,  <38.146587, 34.916424, 45.305431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173904, 35.149849, 45.354069>,  <38.219437, 35.538895, 45.435131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173904, 35.149849, 45.354069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419453, -0.137860, 0.897248,
		-0.900612, 0.187135, -0.392273,
		-0.113828, -0.972612, -0.202653,
		38.139755, 34.858067, 45.293274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556801, 35.431335, 45.642670>,  <38.219437, 35.538895, 45.435131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556801, 35.431335, 45.642670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729713, 35.071625, 45.616024>,  <37.833462, 34.855801, 45.600037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729713, 35.071625, 45.616024>,  <37.556801, 35.431335, 45.642670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729713, 35.071625, 45.616024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332745, -0.227737, 0.915105,
		-0.838100, -0.373420, -0.397676,
		0.432284, -0.899274, -0.066612,
		37.859398, 34.801842, 45.596039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076015, 34.925392, 45.969437>,  <37.556801, 35.431335, 45.642670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076015, 34.925392, 45.969437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445259, 34.772568, 45.986877>,  <37.666805, 34.680874, 45.997341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445259, 34.772568, 45.986877>,  <37.076015, 34.925392, 45.969437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445259, 34.772568, 45.986877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191672, -0.358869, 0.913496,
		-0.333351, -0.851618, -0.404505,
		0.923114, -0.382047, 0.043602,
		37.722191, 34.657951, 45.999958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907429, 34.242989, 46.290276>,  <37.076015, 34.925392, 45.969437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907429, 34.242989, 46.290276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298397, 34.313831, 46.336365>,  <37.532978, 34.356335, 46.364017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298397, 34.313831, 46.336365>,  <36.907429, 34.242989, 46.290276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298397, 34.313831, 46.336365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097308, -0.106753, 0.989513,
		0.187550, -0.978385, -0.087109,
		0.977424, 0.177106, 0.115226,
		37.591625, 34.366962, 46.370934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124222, 33.807289, 46.774406>,  <36.907429, 34.242989, 46.290276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124222, 33.807289, 46.774406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.411636, 34.085472, 46.777172>,  <37.584084, 34.252380, 46.778831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.411636, 34.085472, 46.777172>,  <37.124222, 33.807289, 46.774406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411636, 34.085472, 46.777172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064579, -0.076613, 0.994967,
		0.692485, -0.714473, -0.099961,
		0.718536, 0.695455, 0.006914,
		37.627197, 34.294109, 46.779247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636974, 33.517197, 47.171356>,  <37.124222, 33.807289, 46.774406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636974, 33.517197, 47.171356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747330, 33.901669, 47.169777>,  <37.813545, 34.132351, 47.168831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747330, 33.901669, 47.169777>,  <37.636974, 33.517197, 47.171356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747330, 33.901669, 47.169777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216127, -0.058033, 0.974639,
		0.936575, -0.269747, -0.223748,
		0.275891, 0.961181, -0.003947,
		37.830097, 34.190022, 47.168594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323654, 33.599113, 47.448509>,  <37.636974, 33.517197, 47.171356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323654, 33.599113, 47.448509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131256, 33.946239, 47.498363>,  <38.015816, 34.154514, 47.528275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131256, 33.946239, 47.498363>,  <38.323654, 33.599113, 47.448509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131256, 33.946239, 47.498363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255510, 0.002772, 0.966802,
		0.838662, 0.496876, -0.223069,
		-0.480999, 0.867817, 0.124632,
		37.986958, 34.206585, 47.535751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809631, 34.094902, 47.825249>,  <38.323654, 33.599113, 47.448509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809631, 34.094902, 47.825249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440723, 34.238033, 47.883724>,  <38.219379, 34.323914, 47.918808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440723, 34.238033, 47.883724>,  <38.809631, 34.094902, 47.825249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440723, 34.238033, 47.883724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217709, 0.168370, 0.961381,
		0.319399, 0.918481, -0.233186,
		-0.922273, 0.357831, 0.146185,
		38.164043, 34.345383, 47.927578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915501, 34.676628, 48.186672>,  <38.809631, 34.094902, 47.825249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915501, 34.676628, 48.186672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.531532, 34.595982, 48.264549>,  <38.301151, 34.547596, 48.311275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.531532, 34.595982, 48.264549>,  <38.915501, 34.676628, 48.186672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531532, 34.595982, 48.264549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201189, -0.012039, 0.979479,
		-0.195131, 0.979392, 0.052119,
		-0.959920, -0.201612, 0.194693,
		38.243557, 34.535500, 48.322956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812283, 35.041016, 48.795605>,  <38.915501, 34.676628, 48.186672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812283, 35.041016, 48.795605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.509018, 34.780746, 48.778549>,  <38.327061, 34.624584, 48.768314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.509018, 34.780746, 48.778549>,  <38.812283, 35.041016, 48.795605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509018, 34.780746, 48.778549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010879, -0.078001, 0.996894,
		-0.651978, 0.755341, 0.066216,
		-0.758160, -0.650673, -0.042638,
		38.281570, 34.585545, 48.765759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193432, 35.249165, 49.250832>,  <38.812283, 35.041016, 48.795605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193432, 35.249165, 49.250832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153271, 34.853275, 49.210106>,  <38.129173, 34.615742, 49.185669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153271, 34.853275, 49.210106>,  <38.193432, 35.249165, 49.250832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153271, 34.853275, 49.210106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031203, -0.099148, 0.994583,
		-0.994458, 0.103035, -0.020927,
		-0.100402, -0.989724, -0.101814,
		38.123150, 34.556358, 49.179562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701668, 35.155228, 49.765541>,  <38.193432, 35.249165, 49.250832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701668, 35.155228, 49.765541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877563, 34.805080, 49.685188>,  <37.983101, 34.594990, 49.636978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877563, 34.805080, 49.685188>,  <37.701668, 35.155228, 49.765541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877563, 34.805080, 49.685188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163382, -0.141968, 0.976295,
		-0.883139, -0.462138, 0.080591,
		0.439741, -0.875371, -0.200882,
		38.009487, 34.542469, 49.624924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359482, 34.562130, 50.172981>,  <37.701668, 35.155228, 49.765541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359482, 34.562130, 50.172981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.726715, 34.437080, 50.075497>,  <37.947056, 34.362049, 50.017006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.726715, 34.437080, 50.075497>,  <37.359482, 34.562130, 50.172981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726715, 34.437080, 50.075497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174022, -0.234540, 0.956403,
		-0.356159, -0.920465, -0.160922,
		0.918078, -0.312627, -0.243715,
		38.002140, 34.343292, 50.002384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405254, 33.938126, 50.515152>,  <37.359482, 34.562130, 50.172981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405254, 33.938126, 50.515152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777485, 34.068378, 50.448223>,  <38.000824, 34.146530, 50.408066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777485, 34.068378, 50.448223>,  <37.405254, 33.938126, 50.515152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777485, 34.068378, 50.448223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229247, -0.161940, 0.959803,
		0.285449, -0.931524, -0.225348,
		0.930572, 0.325635, -0.167323,
		38.056656, 34.166069, 50.398026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829494, 33.448395, 50.897469>,  <37.405254, 33.938126, 50.515152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829494, 33.448395, 50.897469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.090908, 33.744415, 50.833946>,  <38.247757, 33.922028, 50.795834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.090908, 33.744415, 50.833946>,  <37.829494, 33.448395, 50.897469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090908, 33.744415, 50.833946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333527, -0.093226, 0.938120,
		0.679453, -0.666056, -0.307754,
		0.653531, 0.740053, -0.158805,
		38.286968, 33.966431, 50.786304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348236, 33.222336, 51.360149>,  <37.829494, 33.448395, 50.897469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348236, 33.222336, 51.360149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.422485, 33.603260, 51.263275>,  <38.467033, 33.831814, 51.205151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.422485, 33.603260, 51.263275>,  <38.348236, 33.222336, 51.360149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422485, 33.603260, 51.263275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292385, 0.181772, 0.938866,
		0.938113, -0.245085, -0.244699,
		0.185622, 0.952309, -0.242182,
		38.478172, 33.888954, 51.190620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088890, 33.420292, 51.546051>,  <38.348236, 33.222336, 51.360149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088890, 33.420292, 51.546051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851852, 33.742474, 51.549587>,  <38.709629, 33.935783, 51.551708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851852, 33.742474, 51.549587>,  <39.088890, 33.420292, 51.546051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851852, 33.742474, 51.549587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219327, 0.150791, 0.963928,
		0.775064, 0.573160, -0.266015,
		-0.592598, 0.805450, 0.008837,
		38.674072, 33.984108, 51.552238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334007, 33.747940, 52.127296>,  <39.088890, 33.420292, 51.546051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334007, 33.747940, 52.127296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.007099, 33.966007, 52.052605>,  <38.810955, 34.096848, 52.007790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.007099, 33.966007, 52.052605>,  <39.334007, 33.747940, 52.127296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007099, 33.966007, 52.052605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018616, 0.348841, 0.936997,
		0.575955, 0.762303, -0.295245,
		-0.817269, 0.545164, -0.186726,
		38.761917, 34.129555, 51.996586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468754, 34.484581, 52.445744>,  <39.334007, 33.747940, 52.127296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468754, 34.484581, 52.445744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.082436, 34.397125, 52.389969>,  <38.850647, 34.344650, 52.356503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.082436, 34.397125, 52.389969>,  <39.468754, 34.484581, 52.445744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082436, 34.397125, 52.389969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168299, 0.119379, 0.978481,
		-0.197291, 0.968475, -0.152092,
		-0.965791, -0.218642, -0.139441,
		38.792698, 34.331532, 52.348137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175163, 34.876904, 52.966972>,  <39.468754, 34.484581, 52.445744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175163, 34.876904, 52.966972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896801, 34.604752, 52.875065>,  <38.729782, 34.441460, 52.819920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896801, 34.604752, 52.875065>,  <39.175163, 34.876904, 52.966972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896801, 34.604752, 52.875065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201833, -0.121748, 0.971824,
		-0.689187, 0.722672, -0.052599,
		-0.695906, -0.680384, -0.229766,
		38.688030, 34.400635, 52.806133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591675, 35.065670, 53.266376>,  <39.175163, 34.876904, 52.966972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591675, 35.065670, 53.266376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560738, 34.666965, 53.257572>,  <38.542175, 34.427742, 53.252289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560738, 34.666965, 53.257572>,  <38.591675, 35.065670, 53.266376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560738, 34.666965, 53.257572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229108, -0.003719, 0.973394,
		-0.970323, 0.080333, -0.228079,
		-0.077347, -0.996761, -0.022014,
		38.537533, 34.367939, 53.250969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922440, 34.832645, 53.450195>,  <38.591675, 35.065670, 53.266376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922440, 34.832645, 53.450195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173428, 34.548191, 53.577045>,  <38.324020, 34.377518, 53.653156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173428, 34.548191, 53.577045>,  <37.922440, 34.832645, 53.450195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173428, 34.548191, 53.577045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319893, 0.135886, 0.937658,
		-0.709894, -0.689799, -0.142222,
		0.627470, -0.711133, 0.317127,
		38.361668, 34.334850, 53.672184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623116, 34.487877, 53.949211>,  <37.922440, 34.832645, 53.450195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623116, 34.487877, 53.949211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009972, 34.459042, 54.046741>,  <38.242085, 34.441742, 54.105259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009972, 34.459042, 54.046741>,  <37.623116, 34.487877, 53.949211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009972, 34.459042, 54.046741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222487, 0.224265, 0.948791,
		-0.123074, -0.971859, 0.200857,
		0.967136, -0.072084, 0.243827,
		38.300114, 34.437416, 54.119888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150429, 34.574879, 54.552471>,  <37.623116, 34.487877, 53.949211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150429, 34.574879, 54.552471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817657, 34.382225, 54.662685>,  <36.617992, 34.266632, 54.728813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817657, 34.382225, 54.662685>,  <37.150429, 34.574879, 54.552471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817657, 34.382225, 54.662685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197662, -0.206766, -0.958216,
		0.518481, -0.851632, 0.076815,
		-0.831930, -0.481633, 0.275539,
		36.568077, 34.237736, 54.745346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012257, 34.013206, 54.066010>,  <37.150429, 34.574879, 54.552471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012257, 34.013206, 54.066010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.656837, 34.046970, 54.246395>,  <36.443588, 34.067226, 54.354626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.656837, 34.046970, 54.246395>,  <37.012257, 34.013206, 54.066010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656837, 34.046970, 54.246395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455871, -0.051689, -0.888544,
		-0.051689, -0.995090, 0.084407,
		0.888544, -0.084407, -0.450961,
		36.390274, 34.072292, 54.381683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528675, 33.401459, 53.855007>,  <37.012257, 34.013206, 54.066010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528675, 33.401459, 53.855007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282158, 33.694252, 53.971203>,  <36.134247, 33.869926, 54.040920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282158, 33.694252, 53.971203>,  <36.528675, 33.401459, 53.855007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282158, 33.694252, 53.971203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652769, -0.268477, -0.708388,
		-0.440535, -0.626201, 0.643274,
		-0.616297, 0.731979, 0.290491,
		36.097267, 33.913845, 54.058350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936386, 33.130535, 53.677883>,  <36.528675, 33.401459, 53.855007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936386, 33.130535, 53.677883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.855324, 33.520267, 53.717079>,  <35.806686, 33.754108, 53.740597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.855324, 33.520267, 53.717079>,  <35.936386, 33.130535, 53.677883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855324, 33.520267, 53.717079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657846, -0.061331, -0.750651,
		-0.725376, -0.216586, 0.653392,
		-0.202654, 0.974335, 0.097993,
		35.794529, 33.812569, 53.746475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350700, 33.153400, 53.376648>,  <35.936386, 33.130535, 53.677883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350700, 33.153400, 53.376648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433834, 33.544605, 53.383572>,  <35.483715, 33.779327, 53.387726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433834, 33.544605, 53.383572>,  <35.350700, 33.153400, 53.376648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433834, 33.544605, 53.383572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498464, 0.121124, -0.858407,
		-0.841628, 0.169777, 0.512677,
		0.207835, 0.978011, 0.017314,
		35.496185, 33.838009, 53.388767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740948, 33.522511, 53.304935>,  <35.350700, 33.153400, 53.376648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740948, 33.522511, 53.304935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050522, 33.737587, 53.171116>,  <35.236267, 33.866631, 53.090824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050522, 33.737587, 53.171116>,  <34.740948, 33.522511, 53.304935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050522, 33.737587, 53.171116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470527, 0.134681, -0.872047,
		-0.423832, 0.832317, 0.357231,
		0.773932, 0.537688, -0.334546,
		35.282700, 33.898895, 53.070751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474060, 34.006939, 52.750465>,  <34.740948, 33.522511, 53.304935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474060, 34.006939, 52.750465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869576, 34.024174, 52.693291>,  <35.106884, 34.034515, 52.658985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869576, 34.024174, 52.693291>,  <34.474060, 34.006939, 52.750465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869576, 34.024174, 52.693291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147721, 0.143784, -0.978522,
		-0.021604, 0.988671, 0.148537,
		0.988793, 0.043083, -0.142941,
		35.166214, 34.037098, 52.650410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573597, 34.562897, 52.338272>,  <34.474060, 34.006939, 52.750465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573597, 34.562897, 52.338272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.912575, 34.356758, 52.287273>,  <35.115963, 34.233074, 52.256672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.912575, 34.356758, 52.287273>,  <34.573597, 34.562897, 52.338272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912575, 34.356758, 52.287273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112459, 0.060455, -0.991816,
		0.518838, 0.854846, -0.006723,
		0.847443, -0.515348, -0.127501,
		35.166809, 34.202152, 52.249023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013199, 35.018681, 51.932541>,  <34.573597, 34.562897, 52.338272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013199, 35.018681, 51.932541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166698, 34.651806, 51.889652>,  <35.258801, 34.431679, 51.863918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166698, 34.651806, 51.889652>,  <35.013199, 35.018681, 51.932541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166698, 34.651806, 51.889652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139748, 0.057090, -0.988540,
		0.912801, 0.394338, -0.106268,
		0.383752, -0.917191, -0.107220,
		35.281822, 34.376648, 51.857487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745853, 35.052509, 51.500202>,  <35.013199, 35.018681, 51.932541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745853, 35.052509, 51.500202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581627, 34.690845, 51.452995>,  <35.483089, 34.473846, 51.424671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581627, 34.690845, 51.452995>,  <35.745853, 35.052509, 51.500202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581627, 34.690845, 51.452995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157404, 0.057205, -0.985876,
		0.898142, -0.423343, 0.118832,
		-0.410566, -0.904162, -0.118014,
		35.458458, 34.419598, 51.417591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231239, 34.727158, 50.985207>,  <35.745853, 35.052509, 51.500202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231239, 34.727158, 50.985207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904179, 34.497097, 50.974983>,  <35.707943, 34.359062, 50.968849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904179, 34.497097, 50.974983>,  <36.231239, 34.727158, 50.985207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904179, 34.497097, 50.974983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042910, -0.016619, -0.998941,
		0.574117, -0.817879, 0.038269,
		-0.817649, -0.575151, -0.025554,
		35.658882, 34.324551, 50.967316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430790, 34.396271, 50.484539>,  <36.231239, 34.727158, 50.985207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430790, 34.396271, 50.484539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041088, 34.324120, 50.538643>,  <35.807266, 34.280830, 50.571106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041088, 34.324120, 50.538643>,  <36.430790, 34.396271, 50.484539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041088, 34.324120, 50.538643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106856, -0.158840, -0.981505,
		0.198528, -0.970687, 0.135476,
		-0.974253, -0.180380, 0.135258,
		35.748814, 34.270004, 50.579220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178837, 33.732998, 50.245213>,  <36.430790, 34.396271, 50.484539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178837, 33.732998, 50.245213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.864826, 33.980755, 50.249008>,  <35.676422, 34.129410, 50.251286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.864826, 33.980755, 50.249008>,  <36.178837, 33.732998, 50.245213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864826, 33.980755, 50.249008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011329, 0.000960, -0.999935,
		-0.619362, -0.785080, 0.006264,
		-0.785023, 0.619393, 0.009489,
		35.629318, 34.166573, 50.251854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702824, 33.470234, 49.609779>,  <36.178837, 33.732998, 50.245213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702824, 33.470234, 49.609779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594845, 33.840656, 49.715267>,  <35.530056, 34.062908, 49.778561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594845, 33.840656, 49.715267>,  <35.702824, 33.470234, 49.609779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594845, 33.840656, 49.715267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254439, 0.195547, -0.947113,
		-0.928648, -0.322775, 0.182836,
		-0.269951, 0.926055, 0.263721,
		35.513859, 34.118473, 49.794384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074947, 33.645908, 49.167419>,  <35.702824, 33.470234, 49.609779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074947, 33.645908, 49.167419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.221336, 33.995522, 49.295254>,  <35.309170, 34.205288, 49.371952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.221336, 33.995522, 49.295254>,  <35.074947, 33.645908, 49.167419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221336, 33.995522, 49.295254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124447, 0.386286, -0.913945,
		-0.922268, 0.294707, 0.250140,
		0.365971, 0.874032, 0.319584,
		35.331127, 34.257732, 49.391129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624371, 34.140228, 48.836967>,  <35.074947, 33.645908, 49.167419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624371, 34.140228, 48.836967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965729, 34.328472, 48.926628>,  <35.170544, 34.441418, 48.980427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965729, 34.328472, 48.926628>,  <34.624371, 34.140228, 48.836967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965729, 34.328472, 48.926628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109302, 0.582011, -0.805802,
		-0.509680, 0.663165, 0.548123,
		0.853392, 0.470612, 0.224154,
		35.221748, 34.469654, 48.993874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437710, 34.782085, 48.662056>,  <34.624371, 34.140228, 48.836967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437710, 34.782085, 48.662056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837677, 34.786213, 48.665043>,  <35.077656, 34.788689, 48.666836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837677, 34.786213, 48.665043>,  <34.437710, 34.782085, 48.662056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837677, 34.786213, 48.665043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000167, 0.575505, -0.817798,
		-0.012737, 0.817733, 0.575457,
		0.999919, 0.010320, 0.007467,
		35.137653, 34.789310, 48.667282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677261, 35.504280, 48.480255>,  <34.437710, 34.782085, 48.662056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677261, 35.504280, 48.480255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970097, 35.237450, 48.425034>,  <35.145798, 35.077351, 48.391903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970097, 35.237450, 48.425034>,  <34.677261, 35.504280, 48.480255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970097, 35.237450, 48.425034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241056, 0.443222, -0.863392,
		0.637137, 0.598799, 0.485280,
		0.732085, -0.667079, -0.138050,
		35.189720, 35.037327, 48.383617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286991, 35.863384, 48.173698>,  <34.677261, 35.504280, 48.480255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286991, 35.863384, 48.173698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.327686, 35.479149, 48.070225>,  <35.352104, 35.248608, 48.008141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.327686, 35.479149, 48.070225>,  <35.286991, 35.863384, 48.173698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327686, 35.479149, 48.070225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150398, 0.271897, -0.950501,
		0.983377, 0.057797, 0.172133,
		0.101738, -0.960589, -0.258685,
		35.358208, 35.190971, 47.992619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541199, 36.037399, 47.543251>,  <35.286991, 35.863384, 48.173698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541199, 36.037399, 47.543251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506905, 35.638897, 47.547737>,  <35.486328, 35.399796, 47.550426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506905, 35.638897, 47.547737>,  <35.541199, 36.037399, 47.543251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506905, 35.638897, 47.547737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157593, -0.024673, -0.987196,
		0.983775, -0.082871, 0.159118,
		-0.085736, -0.996255, 0.011213,
		35.481182, 35.340019, 47.551102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167717, 35.710899, 47.173847>,  <35.541199, 36.037399, 47.543251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167717, 35.710899, 47.173847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842197, 35.480309, 47.144432>,  <35.646885, 35.341953, 47.126781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842197, 35.480309, 47.144432>,  <36.167717, 35.710899, 47.173847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842197, 35.480309, 47.144432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032669, 0.080967, -0.996181,
		0.580230, -0.813092, -0.047058,
		-0.813798, -0.576477, -0.073542,
		35.598057, 35.307365, 47.122368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.997997, 42.346447, 34.567852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.810837, 42.498936, 34.886787>,  <45.698540, 42.590427, 35.078148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.810837, 42.498936, 34.886787>,  <45.997997, 42.346447, 34.567852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.810837, 42.498936, 34.886787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192535, -0.836547, 0.512952,
		0.862556, 0.393524, 0.318020,
		-0.467898, 0.381220, 0.797335,
		45.670467, 42.613300, 35.125988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384899, 42.298508, 35.146034>,  <45.997997, 42.346447, 34.567852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384899, 42.298508, 35.146034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.012127, 42.320045, 35.289478>,  <45.788464, 42.332970, 35.375546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.012127, 42.320045, 35.289478>,  <46.384899, 42.298508, 35.146034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012127, 42.320045, 35.289478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136932, -0.863450, 0.485493,
		0.335788, 0.501552, 0.797303,
		-0.931931, 0.053847, 0.358614,
		45.732548, 42.336201, 35.397064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495785, 42.127182, 35.768955>,  <46.384899, 42.298508, 35.146034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495785, 42.127182, 35.768955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.107201, 42.077778, 35.687954>,  <45.874050, 42.048134, 35.639355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.107201, 42.077778, 35.687954>,  <46.495785, 42.127182, 35.768955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107201, 42.077778, 35.687954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018060, -0.889767, 0.456057,
		-0.236509, 0.439384, 0.866605,
		-0.971461, -0.123513, -0.202503,
		45.815762, 42.040726, 35.627205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330238, 41.645306, 36.390690>,  <46.495785, 42.127182, 35.768955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.330238, 41.645306, 36.390690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.049988, 41.620300, 36.106377>,  <45.881836, 41.605297, 35.935787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.049988, 41.620300, 36.106377>,  <46.330238, 41.645306, 36.390690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049988, 41.620300, 36.106377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112923, -0.973885, 0.196965,
		-0.704536, 0.218263, 0.675271,
		-0.700627, -0.062515, -0.710784,
		45.839798, 41.601547, 35.893143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929829, 41.141556, 36.643711>,  <46.330238, 41.645306, 36.390690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929829, 41.141556, 36.643711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840172, 41.149414, 36.253967>,  <45.786377, 41.154129, 36.020123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840172, 41.149414, 36.253967>,  <45.929829, 41.141556, 36.643711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840172, 41.149414, 36.253967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236035, -0.971124, 0.034719,
		-0.945540, 0.237764, 0.222311,
		-0.224146, 0.019645, -0.974358,
		45.772926, 41.155308, 35.961658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306797, 40.667908, 36.591412>,  <45.929829, 41.141556, 36.643711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306797, 40.667908, 36.591412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.427906, 40.739407, 36.216953>,  <45.500572, 40.782307, 35.992279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.427906, 40.739407, 36.216953>,  <45.306797, 40.667908, 36.591412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427906, 40.739407, 36.216953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250395, -0.932829, -0.259098,
		-0.919581, 0.312856, -0.237681,
		0.302776, 0.178748, -0.936150,
		45.518738, 40.793030, 35.936108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784245, 40.532619, 36.212212>,  <45.306797, 40.667908, 36.591412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784245, 40.532619, 36.212212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089554, 40.490467, 35.957241>,  <45.272739, 40.465176, 35.804260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089554, 40.490467, 35.957241>,  <44.784245, 40.532619, 36.212212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089554, 40.490467, 35.957241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353660, -0.893814, -0.275718,
		-0.540682, 0.435879, -0.719494,
		0.763274, -0.105381, -0.637423,
		45.318535, 40.458855, 35.766014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592445, 40.169224, 35.614216>,  <44.784245, 40.532619, 36.212212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592445, 40.169224, 35.614216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986156, 40.113697, 35.657887>,  <45.222385, 40.080383, 35.684090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986156, 40.113697, 35.657887>,  <44.592445, 40.169224, 35.614216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986156, 40.113697, 35.657887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135293, -0.990035, -0.039067,
		0.113516, 0.023682, -0.993254,
		0.984281, -0.138815, 0.109181,
		45.281441, 40.072052, 35.690639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845078, 39.619625, 35.082001>,  <44.592445, 40.169224, 35.614216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845078, 39.619625, 35.082001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113533, 39.628021, 35.378414>,  <45.274609, 39.633057, 35.556263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113533, 39.628021, 35.378414>,  <44.845078, 39.619625, 35.082001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113533, 39.628021, 35.378414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057206, -0.995152, 0.079997,
		0.739118, -0.096081, -0.666689,
		0.671143, 0.020988, 0.741031,
		45.314877, 39.634319, 35.600723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128845, 38.974823, 34.992081>,  <44.845078, 39.619625, 35.082001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128845, 38.974823, 34.992081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246971, 39.084419, 35.358189>,  <45.317844, 39.150177, 35.577854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246971, 39.084419, 35.358189>,  <45.128845, 38.974823, 34.992081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246971, 39.084419, 35.358189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211486, -0.915485, 0.342289,
		0.931700, -0.294648, -0.212407,
		0.295310, 0.273990, 0.915271,
		45.335564, 39.166615, 35.632771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653721, 38.569912, 35.200882>,  <45.128845, 38.974823, 34.992081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653721, 38.569912, 35.200882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464802, 38.715008, 35.522221>,  <45.351452, 38.802067, 35.715023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464802, 38.715008, 35.522221>,  <45.653721, 38.569912, 35.200882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464802, 38.715008, 35.522221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139307, -0.930660, 0.338327,
		0.870362, 0.047879, 0.490078,
		-0.472295, 0.362738, 0.803342,
		45.323112, 38.823830, 35.763222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959991, 38.221359, 35.882572>,  <45.653721, 38.569912, 35.200882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959991, 38.221359, 35.882572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634583, 38.377445, 36.055042>,  <45.439339, 38.471096, 36.158524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634583, 38.377445, 36.055042>,  <45.959991, 38.221359, 35.882572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634583, 38.377445, 36.055042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179814, -0.873900, 0.451625,
		0.553034, 0.289877, 0.781105,
		-0.813523, 0.390218, 0.431173,
		45.390526, 38.494511, 36.184395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.981285, 38.034260, 36.540417>,  <45.959991, 38.221359, 35.882572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.981285, 38.034260, 36.540417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.588345, 38.103653, 36.512470>,  <45.352581, 38.145290, 36.495705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.588345, 38.103653, 36.512470>,  <45.981285, 38.034260, 36.540417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588345, 38.103653, 36.512470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183259, -0.818326, 0.544756,
		0.037337, 0.547946, 0.835680,
		-0.982355, 0.173486, -0.069862,
		45.293636, 38.155697, 36.491512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631878, 37.820076, 37.154110>,  <45.981285, 38.034260, 36.540417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631878, 37.820076, 37.154110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.352165, 37.806999, 36.868473>,  <45.184338, 37.799152, 36.697090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.352165, 37.806999, 36.868473>,  <45.631878, 37.820076, 37.154110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352165, 37.806999, 36.868473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295372, -0.896476, 0.330282,
		-0.650966, 0.441885, 0.617236,
		-0.699284, -0.032688, -0.714096,
		45.142380, 37.797192, 36.654243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163532, 37.352306, 37.404446>,  <45.631878, 37.820076, 37.154110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163532, 37.352306, 37.404446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.091774, 37.380775, 37.011967>,  <45.048717, 37.397858, 36.776478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.091774, 37.380775, 37.011967>,  <45.163532, 37.352306, 37.404446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.091774, 37.380775, 37.011967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329704, -0.944049, -0.008193,
		-0.926883, 0.322036, 0.192823,
		-0.179396, 0.071168, -0.981200,
		45.037956, 37.402126, 36.717606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613369, 36.925095, 37.364399>,  <45.163532, 37.352306, 37.404446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613369, 36.925095, 37.364399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685261, 36.950047, 36.971706>,  <44.728397, 36.965019, 36.736092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685261, 36.950047, 36.971706>,  <44.613369, 36.925095, 37.364399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685261, 36.950047, 36.971706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376225, -0.917756, -0.127193,
		-0.908929, 0.392214, -0.141478,
		0.179730, 0.062382, -0.981736,
		44.739182, 36.968761, 36.677185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921608, 36.659534, 36.953621>,  <44.613369, 36.925095, 37.364399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921608, 36.659534, 36.953621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.247723, 36.633892, 36.723423>,  <44.443394, 36.618507, 36.585304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.247723, 36.633892, 36.723423>,  <43.921608, 36.659534, 36.953621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247723, 36.633892, 36.723423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248849, -0.936187, -0.248251,
		-0.522855, 0.345608, -0.779216,
		0.815289, -0.064108, -0.575494,
		44.492310, 36.614658, 36.550774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634960, 36.314713, 36.323040>,  <43.921608, 36.659534, 36.953621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634960, 36.314713, 36.323040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.033092, 36.283249, 36.345425>,  <44.271973, 36.264370, 36.358856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.033092, 36.283249, 36.345425>,  <43.634960, 36.314713, 36.323040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033092, 36.283249, 36.345425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067812, -0.982302, -0.174600,
		0.068706, 0.169989, -0.983048,
		0.995330, -0.078659, 0.055962,
		44.331692, 36.259651, 36.362213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837543, 35.809074, 35.800995>,  <43.634960, 36.314713, 36.323040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837543, 35.809074, 35.800995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141945, 35.800678, 36.060360>,  <44.324585, 35.795643, 36.215977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141945, 35.800678, 36.060360>,  <43.837543, 35.809074, 35.800995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141945, 35.800678, 36.060360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053789, -0.998077, 0.030823,
		0.646517, -0.058333, -0.760666,
		0.761001, -0.020988, 0.648411,
		44.370247, 35.794380, 36.254883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154522, 35.172344, 35.583958>,  <43.837543, 35.809074, 35.800995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154522, 35.172344, 35.583958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364883, 35.264931, 35.911335>,  <44.491100, 35.320484, 36.107761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364883, 35.264931, 35.911335>,  <44.154522, 35.172344, 35.583958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364883, 35.264931, 35.911335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279998, -0.955737, 0.090379,
		0.803136, 0.181632, -0.567435,
		0.525902, 0.231467, 0.818443,
		44.522655, 35.334370, 36.156868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866386, 35.005138, 35.552597>,  <44.154522, 35.172344, 35.583958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866386, 35.005138, 35.552597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.782478, 34.993805, 35.943535>,  <44.732132, 34.987007, 36.178097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.782478, 34.993805, 35.943535>,  <44.866386, 35.005138, 35.552597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782478, 34.993805, 35.943535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338906, -0.939719, 0.045499,
		0.917137, 0.340771, 0.206726,
		-0.209769, -0.028332, 0.977340,
		44.719547, 34.985306, 36.236736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571194, 35.010586, 35.511829>,  <44.866386, 35.005138, 35.552597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571194, 35.010586, 35.511829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.672119, 34.829418, 35.169788>,  <45.732674, 34.720718, 34.964565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.672119, 34.829418, 35.169788>,  <45.571194, 35.010586, 35.511829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672119, 34.829418, 35.169788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012149, 0.882141, -0.470830,
		0.967570, 0.129184, 0.217069,
		0.252309, -0.452924, -0.855102,
		45.747810, 34.693542, 34.913258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165310, 35.389271, 35.216488>,  <45.571194, 35.010586, 35.511829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165310, 35.389271, 35.216488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.964188, 35.186691, 34.936291>,  <45.843513, 35.065144, 34.768173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.964188, 35.186691, 34.936291>,  <46.165310, 35.389271, 35.216488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964188, 35.186691, 34.936291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066629, 0.830680, -0.552749,
		0.861827, -0.231252, -0.451415,
		-0.502806, -0.506452, -0.700495,
		45.813347, 35.034756, 34.726143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.537651, 35.585224, 34.498631>,  <46.165310, 35.389271, 35.216488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.537651, 35.585224, 34.498631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.174557, 35.432766, 34.428490>,  <45.956699, 35.341290, 34.386406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.174557, 35.432766, 34.428490>,  <46.537651, 35.585224, 34.498631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174557, 35.432766, 34.428490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247861, 0.824400, -0.508851,
		0.338508, -0.418437, -0.842806,
		-0.907732, -0.381149, -0.175352,
		45.902237, 35.318420, 34.375885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.395119, 35.843292, 33.866344>,  <46.537651, 35.585224, 34.498631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.395119, 35.843292, 33.866344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.035454, 35.742630, 34.009548>,  <45.819653, 35.682232, 34.095470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.035454, 35.742630, 34.009548>,  <46.395119, 35.843292, 33.866344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.035454, 35.742630, 34.009548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400250, 0.803691, -0.440319,
		-0.176921, -0.539213, -0.823376,
		-0.899166, -0.251654, 0.358009,
		45.765705, 35.667133, 34.116951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033154, 35.913445, 33.247524>,  <46.395119, 35.843292, 33.866344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033154, 35.913445, 33.247524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755745, 35.918602, 33.535652>,  <45.589302, 35.921696, 33.708530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755745, 35.918602, 33.535652>,  <46.033154, 35.913445, 33.247524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755745, 35.918602, 33.535652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399855, 0.824820, -0.399735,
		-0.599290, -0.565248, -0.566873,
		-0.693518, 0.012890, 0.720324,
		45.547691, 35.922470, 33.751751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408348, 35.883854, 32.928982>,  <46.033154, 35.913445, 33.247524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408348, 35.883854, 32.928982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.350723, 36.050335, 33.288097>,  <45.316147, 36.150223, 33.503567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.350723, 36.050335, 33.288097>,  <45.408348, 35.883854, 32.928982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350723, 36.050335, 33.288097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383155, 0.813023, -0.438391,
		-0.912380, -0.407148, 0.042341,
		-0.144066, 0.416202, 0.897786,
		45.307503, 36.175198, 33.557434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.790764, 36.239216, 32.861607>,  <45.408348, 35.883854, 32.928982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.790764, 36.239216, 32.861607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.932938, 36.391449, 33.203091>,  <45.018242, 36.482788, 33.407982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.932938, 36.391449, 33.203091>,  <44.790764, 36.239216, 32.861607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932938, 36.391449, 33.203091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455752, 0.867988, -0.197197,
		-0.816061, -0.318990, 0.481964,
		0.355436, 0.380581, 0.853712,
		45.039570, 36.505623, 33.459206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173336, 36.469028, 33.069134>,  <44.790764, 36.239216, 32.861607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173336, 36.469028, 33.069134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.480324, 36.663025, 33.236839>,  <44.664516, 36.779423, 33.337463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.480324, 36.663025, 33.236839>,  <44.173336, 36.469028, 33.069134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480324, 36.663025, 33.236839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488548, 0.865907, -0.107358,
		-0.415109, -0.122435, 0.901496,
		0.767467, 0.484990, 0.419261,
		44.710564, 36.808521, 33.362617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873154, 36.926723, 33.484081>,  <44.173336, 36.469028, 33.069134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873154, 36.926723, 33.484081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.234531, 37.090450, 33.433090>,  <44.451359, 37.188686, 33.402496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.234531, 37.090450, 33.433090>,  <43.873154, 36.926723, 33.484081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234531, 37.090450, 33.433090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389626, 0.907985, 0.154128,
		0.178831, -0.089579, 0.979793,
		0.903444, 0.409316, -0.127474,
		44.505566, 37.213245, 33.394848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908718, 37.516857, 33.972038>,  <43.873154, 36.926723, 33.484081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908718, 37.516857, 33.972038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.198753, 37.593960, 33.707588>,  <44.372776, 37.640221, 33.548920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.198753, 37.593960, 33.707588>,  <43.908718, 37.516857, 33.972038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198753, 37.593960, 33.707588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224638, 0.973720, 0.037523,
		0.650983, 0.121306, 0.749337,
		0.725092, 0.192756, -0.661125,
		44.416283, 37.651787, 33.509251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288105, 38.156918, 34.176647>,  <43.908718, 37.516857, 33.972038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288105, 38.156918, 34.176647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.399467, 38.123371, 33.793930>,  <44.466286, 38.103245, 33.564301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.399467, 38.123371, 33.793930>,  <44.288105, 38.156918, 34.176647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399467, 38.123371, 33.793930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013263, 0.995750, -0.091140,
		0.960373, 0.038064, 0.276107,
		0.278402, -0.083866, -0.956796,
		44.482986, 38.098213, 33.506889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399052, 38.801262, 34.095387>,  <44.288105, 38.156918, 34.176647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399052, 38.801262, 34.095387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432796, 38.658382, 33.723301>,  <44.453045, 38.572655, 33.500050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432796, 38.658382, 33.723301>,  <44.399052, 38.801262, 34.095387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432796, 38.658382, 33.723301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132567, 0.921216, -0.365770,
		0.987577, 0.154172, 0.030361,
		0.084361, -0.357202, -0.930210,
		44.458103, 38.551224, 33.444237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896454, 39.181229, 33.771706>,  <44.399052, 38.801262, 34.095387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896454, 39.181229, 33.771706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677528, 39.048130, 33.464531>,  <44.546173, 38.968273, 33.280224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677528, 39.048130, 33.464531>,  <44.896454, 39.181229, 33.771706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677528, 39.048130, 33.464531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205052, 0.942916, -0.262418,
		0.811420, 0.013844, -0.584299,
		-0.547312, -0.332743, -0.767940,
		44.513336, 38.948307, 33.234150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142395, 39.470837, 33.252914>,  <44.896454, 39.181229, 33.771706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142395, 39.470837, 33.252914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.773369, 39.378036, 33.129597>,  <44.551952, 39.322357, 33.055607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.773369, 39.378036, 33.129597>,  <45.142395, 39.470837, 33.252914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773369, 39.378036, 33.129597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110200, 0.924183, -0.365706,
		0.369762, -0.303415, -0.878189,
		-0.922568, -0.232000, -0.308292,
		44.496597, 39.308437, 33.037109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090412, 39.749668, 32.624805>,  <45.142395, 39.470837, 33.252914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090412, 39.749668, 32.624805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.716019, 39.692661, 32.753571>,  <44.491383, 39.658459, 32.830830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.716019, 39.692661, 32.753571>,  <45.090412, 39.749668, 32.624805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716019, 39.692661, 32.753571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165136, 0.985291, -0.043943,
		-0.310919, -0.094290, -0.945747,
		-0.935980, -0.142514, 0.321917,
		44.435226, 39.649906, 32.850147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642868, 40.125797, 32.203701>,  <45.090412, 39.749668, 32.624805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642868, 40.125797, 32.203701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.394493, 40.064770, 32.511246>,  <44.245468, 40.028152, 32.695774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.394493, 40.064770, 32.511246>,  <44.642868, 40.125797, 32.203701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394493, 40.064770, 32.511246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401173, 0.904532, -0.144505,
		-0.673418, -0.398178, -0.622867,
		-0.620942, -0.152565, 0.768866,
		44.208210, 40.019001, 32.741905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103905, 40.570465, 32.064137>,  <44.642868, 40.125797, 32.203701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103905, 40.570465, 32.064137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072533, 40.487823, 32.454247>,  <44.053711, 40.438236, 32.688313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072533, 40.487823, 32.454247>,  <44.103905, 40.570465, 32.064137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072533, 40.487823, 32.454247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196966, 0.962216, 0.188002,
		-0.977268, -0.177351, -0.116160,
		-0.078429, -0.206608, 0.975275,
		44.049004, 40.425842, 32.746830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659328, 41.069347, 32.106506>,  <44.103905, 40.570465, 32.064137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659328, 41.069347, 32.106506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.802032, 40.975708, 32.468262>,  <43.887653, 40.919525, 32.685314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.802032, 40.975708, 32.468262>,  <43.659328, 41.069347, 32.106506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802032, 40.975708, 32.468262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071129, 0.972089, 0.223569,
		-0.931484, -0.015432, 0.363454,
		0.356760, -0.234103, 0.904388,
		43.909061, 40.905476, 32.739578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281387, 41.524509, 32.533352>,  <43.659328, 41.069347, 32.106506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281387, 41.524509, 32.533352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.598282, 41.405846, 32.746651>,  <43.788418, 41.334648, 32.874630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.598282, 41.405846, 32.746651>,  <43.281387, 41.524509, 32.533352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598282, 41.405846, 32.746651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213984, 0.953439, 0.212519,
		-0.571467, -0.054258, 0.818830,
		0.792235, -0.296664, 0.533249,
		43.835953, 41.316845, 32.906624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151474, 41.754211, 33.192924>,  <43.281387, 41.524509, 32.533352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151474, 41.754211, 33.192924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.548626, 41.710213, 33.174622>,  <43.786915, 41.683815, 33.163639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.548626, 41.710213, 33.174622>,  <43.151474, 41.754211, 33.192924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548626, 41.710213, 33.174622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116678, 0.975419, 0.186932,
		0.024068, -0.190939, 0.981307,
		0.992878, -0.109998, -0.045755,
		43.846489, 41.677212, 33.160896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423851, 42.230740, 33.692818>,  <43.151474, 41.754211, 33.192924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423851, 42.230740, 33.692818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726208, 42.156334, 33.441730>,  <43.907623, 42.111691, 33.291080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726208, 42.156334, 33.441730>,  <43.423851, 42.230740, 33.692818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726208, 42.156334, 33.441730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227185, 0.973736, -0.014974,
		0.614014, -0.131289, 0.778299,
		0.755892, -0.186012, -0.627715,
		43.952976, 42.100529, 33.253414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.813324, 34.724575, 42.496838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431236, 34.609535, 42.524673>,  <39.201984, 34.540512, 42.541374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431236, 34.609535, 42.524673>,  <39.813324, 34.724575, 42.496838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431236, 34.609535, 42.524673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004033, -0.247820, -0.968798,
		0.295875, -0.925133, 0.237882,
		-0.955218, -0.287602, 0.069592,
		39.144672, 34.523254, 42.545551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700607, 34.066734, 42.188370>,  <39.813324, 34.724575, 42.496838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700607, 34.066734, 42.188370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348858, 34.256470, 42.171906>,  <39.137806, 34.370312, 42.162029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348858, 34.256470, 42.171906>,  <39.700607, 34.066734, 42.188370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348858, 34.256470, 42.171906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015271, -0.058296, -0.998183,
		-0.475880, -0.878408, 0.044021,
		-0.879378, 0.474343, -0.041157,
		39.085045, 34.398773, 42.159557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246086, 33.773369, 41.657257>,  <39.700607, 34.066734, 42.188370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246086, 33.773369, 41.657257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034115, 34.106800, 41.719654>,  <38.906933, 34.306858, 41.757092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034115, 34.106800, 41.719654>,  <39.246086, 33.773369, 41.657257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034115, 34.106800, 41.719654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324740, -0.029535, -0.945342,
		-0.783405, -0.551618, 0.286347,
		-0.529925, 0.833574, 0.155994,
		38.875137, 34.356873, 41.766453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502502, 33.712261, 41.410076>,  <39.246086, 33.773369, 41.657257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502502, 33.712261, 41.410076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612591, 34.096260, 41.389442>,  <38.678642, 34.326660, 41.377064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612591, 34.096260, 41.389442>,  <38.502502, 33.712261, 41.410076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612591, 34.096260, 41.389442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150332, -0.010023, -0.988585,
		-0.949555, 0.279831, 0.141559,
		0.275218, 0.959997, -0.051585,
		38.695156, 34.384258, 41.373966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105026, 33.919922, 40.835403>,  <38.502502, 33.712261, 41.410076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105026, 33.919922, 40.835403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387112, 34.193962, 40.908413>,  <38.556362, 34.358387, 40.952221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387112, 34.193962, 40.908413>,  <38.105026, 33.919922, 40.835403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387112, 34.193962, 40.908413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059250, 0.313490, -0.947741,
		-0.706518, 0.657542, 0.261668,
		0.705210, 0.685100, 0.182527,
		38.598675, 34.399490, 40.963169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820553, 34.608921, 40.661396>,  <38.105026, 33.919922, 40.835403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820553, 34.608921, 40.661396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218948, 34.644588, 40.658382>,  <38.457985, 34.665989, 40.656574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218948, 34.644588, 40.658382>,  <37.820553, 34.608921, 40.661396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218948, 34.644588, 40.658382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050503, 0.490599, -0.869921,
		-0.073872, 0.866812, 0.493134,
		0.995988, 0.089168, -0.007535,
		38.517746, 34.671337, 40.656120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896088, 35.085602, 40.265575>,  <37.820553, 34.608921, 40.661396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896088, 35.085602, 40.265575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279949, 34.973225, 40.270264>,  <38.510265, 34.905800, 40.273075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279949, 34.973225, 40.270264>,  <37.896088, 35.085602, 40.265575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279949, 34.973225, 40.270264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119876, 0.371063, -0.920838,
		0.254353, 0.885090, 0.389770,
		0.959653, -0.280942, 0.011720,
		38.567844, 34.888943, 40.273781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304119, 35.653164, 40.041409>,  <37.896088, 35.085602, 40.265575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304119, 35.653164, 40.041409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559444, 35.346756, 40.011013>,  <38.712639, 35.162910, 39.992775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559444, 35.346756, 40.011013>,  <38.304119, 35.653164, 40.041409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559444, 35.346756, 40.011013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301716, 0.339780, -0.890796,
		0.708185, 0.545678, 0.448006,
		0.638311, -0.766019, -0.075988,
		38.750938, 35.116951, 39.988216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891880, 35.966557, 39.742329>,  <38.304119, 35.653164, 40.041409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891880, 35.966557, 39.742329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955441, 35.578918, 39.666859>,  <38.993576, 35.346336, 39.621578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955441, 35.578918, 39.666859>,  <38.891880, 35.966557, 39.742329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955441, 35.578918, 39.666859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281108, 0.227604, -0.932296,
		0.946429, 0.095105, 0.308588,
		0.158902, -0.969098, -0.188676,
		39.003113, 35.288189, 39.610256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622646, 35.943588, 39.435623>,  <38.891880, 35.966557, 39.742329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622646, 35.943588, 39.435623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395603, 35.626373, 39.347164>,  <39.259377, 35.436043, 39.294090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395603, 35.626373, 39.347164>,  <39.622646, 35.943588, 39.435623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395603, 35.626373, 39.347164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045249, 0.238155, -0.970173,
		0.822054, -0.560685, -0.099295,
		-0.567608, -0.793041, -0.221147,
		39.225319, 35.388462, 39.280819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940826, 35.574059, 38.892109>,  <39.622646, 35.943588, 39.435623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940826, 35.574059, 38.892109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555527, 35.468803, 38.870548>,  <39.324345, 35.405651, 38.857613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555527, 35.468803, 38.870548>,  <39.940826, 35.574059, 38.892109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555527, 35.468803, 38.870548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019283, 0.267910, -0.963251,
		0.267910, -0.926813, -0.263139,
		0.963251, 0.263139, 0.053904,
		39.266552, 35.389862, 38.854378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966877, 35.278481, 38.265858>,  <39.940826, 35.574059, 38.892109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966877, 35.278481, 38.265858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573929, 35.328259, 38.321655>,  <39.338161, 35.358128, 38.355133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573929, 35.328259, 38.321655>,  <39.966877, 35.278481, 38.265858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573929, 35.328259, 38.321655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104690, 0.251975, -0.962054,
		-0.154876, -0.959698, -0.234505,
		-0.982372, 0.124449, 0.139495,
		39.279217, 35.365593, 38.363503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612091, 34.917080, 37.824059>,  <39.966877, 35.278481, 38.265858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612091, 34.917080, 37.824059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354225, 35.212566, 37.902756>,  <39.199505, 35.389858, 37.949974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354225, 35.212566, 37.902756>,  <39.612091, 34.917080, 37.824059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354225, 35.212566, 37.902756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105344, 0.169058, -0.979960,
		-0.757169, -0.652475, -0.031167,
		-0.644668, 0.738712, 0.196740,
		39.160824, 35.434181, 37.961777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455917, 34.394455, 37.238419>,  <39.612091, 34.917080, 37.824059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455917, 34.394455, 37.238419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367981, 34.204189, 37.579102>,  <39.315220, 34.090031, 37.783512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367981, 34.204189, 37.579102>,  <39.455917, 34.394455, 37.238419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367981, 34.204189, 37.579102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662745, -0.567837, -0.488191,
		0.715849, -0.671791, -0.190412,
		-0.219839, -0.475666, 0.851712,
		39.302029, 34.061489, 37.834614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527931, 33.566074, 37.250969>,  <39.455917, 34.394455, 37.238419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527931, 33.566074, 37.250969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220875, 33.682693, 37.479259>,  <39.036640, 33.752663, 37.616234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220875, 33.682693, 37.479259>,  <39.527931, 33.566074, 37.250969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220875, 33.682693, 37.479259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581747, -0.690610, -0.429684,
		0.268875, -0.661861, 0.699747,
		-0.767643, 0.291545, 0.570723,
		38.990582, 33.770157, 37.650475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197826, 33.637180, 37.369694>,  <39.527931, 33.566074, 37.250969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197826, 33.637180, 37.369694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512104, 33.484543, 37.564457>,  <40.700668, 33.392960, 37.681313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512104, 33.484543, 37.564457>,  <40.197826, 33.637180, 37.369694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512104, 33.484543, 37.564457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606471, -0.319915, 0.727906,
		-0.121993, -0.867204, -0.482778,
		0.785691, -0.381591, 0.486907,
		40.747810, 33.370064, 37.710529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091892, 32.861294, 37.540943>,  <40.197826, 33.637180, 37.369694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091892, 32.861294, 37.540943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341110, 32.989727, 37.826241>,  <40.490643, 33.066788, 37.997421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341110, 32.989727, 37.826241>,  <40.091892, 32.861294, 37.540943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341110, 32.989727, 37.826241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446718, -0.602456, 0.661430,
		0.642074, -0.730720, -0.231923,
		0.623043, 0.321083, 0.713248,
		40.528023, 33.086052, 38.040215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947300, 32.327976, 37.931416>,  <40.091892, 32.861294, 37.540943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947300, 32.327976, 37.931416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162670, 32.559834, 38.176075>,  <40.291893, 32.698948, 38.322868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162670, 32.559834, 38.176075>,  <39.947300, 32.327976, 37.931416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162670, 32.559834, 38.176075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350508, -0.506017, 0.788093,
		0.766316, -0.638717, -0.069284,
		0.538427, 0.579644, 0.611645,
		40.324200, 32.733727, 38.359570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352760, 31.889759, 38.422516>,  <39.947300, 32.327976, 37.931416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352760, 31.889759, 38.422516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298168, 32.243725, 38.600639>,  <40.265411, 32.456104, 38.707512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298168, 32.243725, 38.600639>,  <40.352760, 31.889759, 38.422516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298168, 32.243725, 38.600639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082282, -0.458085, 0.885092,
		0.987220, 0.084157, 0.135332,
		-0.136480, 0.884916, 0.445306,
		40.257225, 32.509201, 38.734230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761185, 31.816542, 39.008312>,  <40.352760, 31.889759, 38.422516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761185, 31.816542, 39.008312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505753, 32.114841, 39.084282>,  <40.352493, 32.293819, 39.129864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505753, 32.114841, 39.084282>,  <40.761185, 31.816542, 39.008312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505753, 32.114841, 39.084282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100834, -0.325756, 0.940061,
		0.762918, 0.581157, 0.283220,
		-0.638583, 0.745748, 0.189925,
		40.314178, 32.338566, 39.141258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774696, 31.812147, 39.634636>,  <40.761185, 31.816542, 39.008312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774696, 31.812147, 39.634636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476028, 32.076122, 39.601273>,  <40.296825, 32.234509, 39.581253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476028, 32.076122, 39.601273>,  <40.774696, 31.812147, 39.634636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476028, 32.076122, 39.601273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386768, -0.328702, 0.861606,
		0.541191, 0.675600, 0.500677,
		-0.746674, 0.659939, -0.083410,
		40.252026, 32.274105, 39.576248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705635, 32.058346, 40.304092>,  <40.774696, 31.812147, 39.634636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705635, 32.058346, 40.304092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363728, 32.143562, 40.114784>,  <40.158581, 32.194691, 40.001202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363728, 32.143562, 40.114784>,  <40.705635, 32.058346, 40.304092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363728, 32.143562, 40.114784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490747, -0.034974, 0.870600,
		0.168921, 0.976417, 0.134443,
		-0.854771, 0.213040, -0.473266,
		40.107296, 32.207474, 39.972805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472034, 32.724258, 40.570442>,  <40.705635, 32.058346, 40.304092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472034, 32.724258, 40.570442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162891, 32.496807, 40.457764>,  <39.977406, 32.360336, 40.390156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162891, 32.496807, 40.457764>,  <40.472034, 32.724258, 40.570442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162891, 32.496807, 40.457764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319970, -0.034164, 0.946811,
		-0.548009, 0.821884, -0.155541,
		-0.772855, -0.568630, -0.281700,
		39.931034, 32.326218, 40.373253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970051, 33.014675, 40.921967>,  <40.472034, 32.724258, 40.570442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970051, 33.014675, 40.921967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849846, 32.645439, 40.825962>,  <39.777725, 32.423897, 40.768360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849846, 32.645439, 40.825962>,  <39.970051, 33.014675, 40.921967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849846, 32.645439, 40.825962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296099, -0.148916, 0.943477,
		-0.906654, 0.354589, -0.228575,
		-0.300508, -0.923088, -0.240009,
		39.759693, 32.368511, 40.753960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327850, 33.036064, 41.185966>,  <39.970051, 33.014675, 40.921967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327850, 33.036064, 41.185966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438835, 32.655319, 41.133842>,  <39.505424, 32.426872, 41.102570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438835, 32.655319, 41.133842>,  <39.327850, 33.036064, 41.185966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438835, 32.655319, 41.133842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233703, -0.198431, 0.951845,
		-0.931879, -0.233647, -0.277509,
		0.277463, -0.951858, -0.130310,
		39.522076, 32.369762, 41.094749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705704, 32.600609, 41.498222>,  <39.327850, 33.036064, 41.185966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705704, 32.600609, 41.498222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991116, 32.320610, 41.486423>,  <39.162365, 32.152611, 41.479343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991116, 32.320610, 41.486423>,  <38.705704, 32.600609, 41.498222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991116, 32.320610, 41.486423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274539, -0.318079, 0.907444,
		-0.644594, -0.639392, -0.419138,
		0.713531, -0.700002, -0.029494,
		39.205173, 32.110611, 41.477577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372108, 32.024982, 41.852795>,  <38.705704, 32.600609, 41.498222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372108, 32.024982, 41.852795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766373, 31.958178, 41.862469>,  <39.002930, 31.918095, 41.868275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766373, 31.958178, 41.862469>,  <38.372108, 32.024982, 41.852795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766373, 31.958178, 41.862469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075638, -0.309109, 0.948014,
		-0.150853, -0.936247, -0.317308,
		0.985658, -0.167012, 0.024186,
		39.062069, 31.908073, 41.869724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300766, 31.516857, 42.352482>,  <38.372108, 32.024982, 41.852795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300766, 31.516857, 42.352482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681976, 31.636536, 42.333591>,  <38.910702, 31.708344, 42.322258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681976, 31.636536, 42.333591>,  <38.300766, 31.516857, 42.352482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681976, 31.636536, 42.333591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078732, -0.094147, 0.992440,
		0.292492, -0.949535, -0.113280,
		0.953021, 0.299199, -0.047222,
		38.967884, 31.726295, 42.319424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417240, 30.688364, 42.200054>,  <38.300766, 31.516857, 42.352482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417240, 30.688364, 42.200054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044140, 30.546129, 42.176292>,  <37.820278, 30.460789, 42.162037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044140, 30.546129, 42.176292>,  <38.417240, 30.688364, 42.200054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044140, 30.546129, 42.176292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038279, 0.066152, -0.997075,
		0.358479, -0.932298, -0.048092,
		-0.932752, -0.355590, -0.059402,
		37.764313, 30.439453, 42.158470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511112, 30.427784, 41.457928>,  <38.417240, 30.688364, 42.200054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511112, 30.427784, 41.457928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126007, 30.398939, 41.562145>,  <37.894943, 30.381632, 41.624676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126007, 30.398939, 41.562145>,  <38.511112, 30.427784, 41.457928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126007, 30.398939, 41.562145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255235, -0.075123, -0.963956,
		0.089088, -0.994563, 0.053919,
		-0.962766, -0.072115, 0.260540,
		37.837177, 30.377306, 41.640308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266151, 29.761604, 41.205322>,  <38.511112, 30.427784, 41.457928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266151, 29.761604, 41.205322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961174, 30.015575, 41.255203>,  <37.778187, 30.167957, 41.285130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961174, 30.015575, 41.255203>,  <38.266151, 29.761604, 41.205322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961174, 30.015575, 41.255203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211398, -0.062283, -0.975414,
		-0.611550, -0.770057, 0.181710,
		-0.762442, 0.634927, 0.124699,
		37.732441, 30.206053, 41.292614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830227, 29.559513, 40.622749>,  <38.266151, 29.761604, 41.205322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830227, 29.559513, 40.622749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659813, 29.895178, 40.757984>,  <37.557564, 30.096577, 40.839127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659813, 29.895178, 40.757984>,  <37.830227, 29.559513, 40.622749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659813, 29.895178, 40.757984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535543, 0.067270, -0.841824,
		-0.729170, -0.539707, 0.420747,
		-0.426034, 0.839161, 0.338088,
		37.532001, 30.146927, 40.859409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055546, 29.471195, 40.520214>,  <37.830227, 29.559513, 40.622749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055546, 29.471195, 40.520214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168072, 29.855034, 40.517735>,  <37.235588, 30.085337, 40.516247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168072, 29.855034, 40.517735>,  <37.055546, 29.471195, 40.520214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168072, 29.855034, 40.517735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548734, 0.155563, -0.821396,
		-0.787245, 0.234468, 0.570324,
		0.281313, 0.959596, -0.006195,
		37.252464, 30.142912, 40.515877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438232, 29.886177, 40.490051>,  <37.055546, 29.471195, 40.520214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438232, 29.886177, 40.490051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732536, 30.113585, 40.342838>,  <36.909119, 30.250029, 40.254509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732536, 30.113585, 40.342838>,  <36.438232, 29.886177, 40.490051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732536, 30.113585, 40.342838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619905, 0.346514, -0.704021,
		-0.272719, 0.746135, 0.607378,
		0.735759, 0.568516, -0.368032,
		36.953262, 30.284140, 40.232430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152313, 30.503881, 40.206360>,  <36.438232, 29.886177, 40.490051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152313, 30.503881, 40.206360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509205, 30.500223, 40.025761>,  <36.723339, 30.498028, 39.917400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509205, 30.500223, 40.025761>,  <36.152313, 30.503881, 40.206360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509205, 30.500223, 40.025761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427530, 0.304859, -0.851046,
		0.145425, 0.952354, 0.268094,
		0.892227, -0.009146, -0.451494,
		36.776875, 30.497480, 39.890312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173504, 31.100376, 39.784237>,  <36.152313, 30.503881, 40.206360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173504, 31.100376, 39.784237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475887, 30.883245, 39.637882>,  <36.657318, 30.752968, 39.550068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475887, 30.883245, 39.637882>,  <36.173504, 31.100376, 39.784237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475887, 30.883245, 39.637882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300694, 0.208540, -0.930642,
		0.581478, 0.813543, -0.005577,
		0.755954, -0.542825, -0.365889,
		36.702675, 30.720398, 39.528114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235443, 31.492798, 39.295193>,  <36.173504, 31.100376, 39.784237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235443, 31.492798, 39.295193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419594, 31.147835, 39.210999>,  <36.530087, 30.940857, 39.160484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419594, 31.147835, 39.210999>,  <36.235443, 31.492798, 39.295193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419594, 31.147835, 39.210999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238505, 0.108222, -0.965092,
		0.855083, 0.494509, -0.155865,
		0.460379, -0.862409, -0.210481,
		36.557709, 30.889112, 39.147854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753277, 31.595032, 38.755970>,  <36.235443, 31.492798, 39.295193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753277, 31.595032, 38.755970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667698, 31.204794, 38.736195>,  <36.616348, 30.970652, 38.724331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667698, 31.204794, 38.736195>,  <36.753277, 31.595032, 38.755970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667698, 31.204794, 38.736195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322297, 0.118274, -0.939221,
		0.922145, -0.185013, -0.339735,
		-0.213949, -0.975593, -0.049436,
		36.603512, 30.912115, 38.721363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063725, 31.381502, 38.201962>,  <36.753277, 31.595032, 38.755970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063725, 31.381502, 38.201962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760880, 31.131088, 38.276646>,  <36.579174, 30.980841, 38.321457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760880, 31.131088, 38.276646>,  <37.063725, 31.381502, 38.201962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760880, 31.131088, 38.276646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361756, 0.163781, -0.917773,
		0.543978, -0.762402, -0.350473,
		-0.757113, -0.626034, 0.186710,
		36.533745, 30.943277, 38.332657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081829, 30.956278, 37.679874>,  <37.063725, 31.381502, 38.201962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081829, 30.956278, 37.679874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711082, 30.909567, 37.822586>,  <36.488636, 30.881540, 37.908211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711082, 30.909567, 37.822586>,  <37.081829, 30.956278, 37.679874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711082, 30.909567, 37.822586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367816, 0.092423, -0.925294,
		0.075066, -0.988850, -0.128611,
		-0.926864, -0.116764, 0.356777,
		36.433025, 30.874535, 37.929619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.710907, 29.085598, 45.438446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.316719, 29.150774, 45.419239>,  <38.080208, 29.189880, 45.407715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.316719, 29.150774, 45.419239>,  <38.710907, 29.085598, 45.438446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316719, 29.150774, 45.419239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012075, -0.349151, -0.936989,
		-0.169439, -0.922791, 0.346044,
		-0.985467, 0.162941, -0.048017,
		38.021080, 29.199656, 45.404835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404533, 28.546709, 45.040379>,  <38.710907, 29.085598, 45.438446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404533, 28.546709, 45.040379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.116417, 28.824083, 45.047585>,  <37.943546, 28.990507, 45.051910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.116417, 28.824083, 45.047585>,  <38.404533, 28.546709, 45.040379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116417, 28.824083, 45.047585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061800, -0.038278, -0.997354,
		-0.690910, -0.719502, 0.070426,
		-0.720294, 0.693434, 0.018018,
		37.900330, 29.032114, 45.052990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743240, 28.306824, 44.619980>,  <38.404533, 28.546709, 45.040379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743240, 28.306824, 44.619980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.743347, 28.706440, 44.637478>,  <37.743412, 28.946211, 44.647976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.743347, 28.706440, 44.637478>,  <37.743240, 28.306824, 44.619980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743347, 28.706440, 44.637478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146864, 0.043312, -0.988208,
		-0.989157, -0.006164, 0.146735,
		0.000264, 0.999043, 0.043748,
		37.743427, 29.006153, 44.650600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439541, 28.524496, 43.996143>,  <37.743240, 28.306824, 44.619980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439541, 28.524496, 43.996143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.595009, 28.870125, 44.124092>,  <37.688290, 29.077501, 44.200859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.595009, 28.870125, 44.124092>,  <37.439541, 28.524496, 43.996143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595009, 28.870125, 44.124092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229402, 0.245479, -0.941868,
		-0.892361, 0.439457, -0.102809,
		0.388673, 0.864071, 0.319868,
		37.711609, 29.129347, 44.220051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045341, 29.056370, 43.761398>,  <37.439541, 28.524496, 43.996143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045341, 29.056370, 43.761398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.362797, 29.280369, 43.856518>,  <37.553268, 29.414768, 43.913589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.362797, 29.280369, 43.856518>,  <37.045341, 29.056370, 43.761398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362797, 29.280369, 43.856518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022163, 0.363993, -0.931138,
		-0.607991, 0.744254, 0.276466,
		0.793635, 0.559996, 0.237799,
		37.600887, 29.448368, 43.927856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758141, 29.620455, 43.608654>,  <37.045341, 29.056370, 43.761398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758141, 29.620455, 43.608654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153267, 29.682673, 43.606632>,  <37.390343, 29.720003, 43.605419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153267, 29.682673, 43.606632>,  <36.758141, 29.620455, 43.608654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153267, 29.682673, 43.606632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071922, 0.427490, -0.901154,
		-0.138009, 0.890538, 0.433469,
		0.987816, 0.155543, -0.005052,
		37.449612, 29.729336, 43.605118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877415, 30.291649, 43.469166>,  <36.758141, 29.620455, 43.608654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877415, 30.291649, 43.469166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203373, 30.089569, 43.355522>,  <37.398949, 29.968321, 43.287334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203373, 30.089569, 43.355522>,  <36.877415, 30.291649, 43.469166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203373, 30.089569, 43.355522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001180, 0.491624, -0.870807,
		0.579607, 0.709280, 0.401219,
		0.814895, -0.505199, -0.284112,
		37.447842, 29.938009, 43.270290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406059, 30.802578, 43.312592>,  <36.877415, 30.291649, 43.469166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406059, 30.802578, 43.312592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.526131, 30.478355, 43.111439>,  <37.598171, 30.283821, 42.990746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.526131, 30.478355, 43.111439>,  <37.406059, 30.802578, 43.312592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526131, 30.478355, 43.111439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091290, 0.549188, -0.830697,
		0.949505, 0.203447, 0.238849,
		0.300176, -0.810556, -0.502885,
		37.616184, 30.235189, 42.960575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989452, 30.977158, 42.763500>,  <37.406059, 30.802578, 43.312592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989452, 30.977158, 42.763500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.827591, 30.626413, 42.659676>,  <37.730473, 30.415968, 42.597382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.827591, 30.626413, 42.659676>,  <37.989452, 30.977158, 42.763500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827591, 30.626413, 42.659676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021187, 0.292749, -0.955954,
		0.914223, -0.381334, -0.137041,
		-0.404657, -0.876859, -0.259559,
		37.706192, 30.363356, 42.581806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711639, 30.998154, 42.808044>,  <37.989452, 30.977158, 42.763500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711639, 30.998154, 42.808044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924767, 31.331533, 42.749439>,  <39.052643, 31.531561, 42.714275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924767, 31.331533, 42.749439>,  <38.711639, 30.998154, 42.808044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924767, 31.331533, 42.749439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321742, -0.039390, 0.946008,
		0.782679, -0.551189, -0.289144,
		0.532818, 0.833450, -0.146510,
		39.084614, 31.581568, 42.705486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370129, 30.895773, 43.049244>,  <38.711639, 30.998154, 42.808044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370129, 30.895773, 43.049244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332748, 31.294010, 43.052265>,  <39.310322, 31.532953, 43.054077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332748, 31.294010, 43.052265>,  <39.370129, 30.895773, 43.049244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332748, 31.294010, 43.052265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411156, 0.031678, 0.911014,
		0.906762, 0.088242, -0.412306,
		-0.093451, 0.995595, 0.007557,
		39.304714, 31.592690, 43.054531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802734, 31.029070, 43.460846>,  <39.370129, 30.895773, 43.049244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802734, 31.029070, 43.460846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631676, 31.390471, 43.472202>,  <39.529041, 31.607311, 43.479015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631676, 31.390471, 43.472202>,  <39.802734, 31.029070, 43.460846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631676, 31.390471, 43.472202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435089, 0.178204, 0.882576,
		0.792351, 0.389778, -0.469311,
		-0.427642, 0.903502, 0.028388,
		39.503384, 31.661522, 43.480721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335205, 31.499443, 43.676224>,  <39.802734, 31.029070, 43.460846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335205, 31.499443, 43.676224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.985657, 31.678083, 43.753048>,  <39.775925, 31.785269, 43.799145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.985657, 31.678083, 43.753048>,  <40.335205, 31.499443, 43.676224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985657, 31.678083, 43.753048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356142, 0.319186, 0.878227,
		0.330914, 0.835863, -0.437982,
		-0.873876, 0.446602, 0.192063,
		39.723495, 31.812063, 43.810665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472340, 32.050846, 44.113079>,  <40.335205, 31.499443, 43.676224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472340, 32.050846, 44.113079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.078285, 32.013420, 44.170696>,  <39.841850, 31.990965, 44.205265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.078285, 32.013420, 44.170696>,  <40.472340, 32.050846, 44.113079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078285, 32.013420, 44.170696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125948, 0.176711, 0.976171,
		-0.116790, 0.979805, -0.162301,
		-0.985138, -0.093565, 0.144042,
		39.782745, 31.985350, 44.213909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289711, 32.651085, 44.412991>,  <40.472340, 32.050846, 44.113079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289711, 32.651085, 44.412991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978802, 32.414116, 44.497738>,  <39.792255, 32.271935, 44.548588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978802, 32.414116, 44.497738>,  <40.289711, 32.651085, 44.412991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978802, 32.414116, 44.497738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035897, 0.294440, 0.954996,
		-0.628139, 0.749897, -0.207594,
		-0.777272, -0.592418, 0.211868,
		39.745621, 32.236389, 44.561298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835354, 33.072102, 44.734425>,  <40.289711, 32.651085, 44.412991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835354, 33.072102, 44.734425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.772045, 32.691044, 44.838291>,  <39.734062, 32.462410, 44.900612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.772045, 32.691044, 44.838291>,  <39.835354, 33.072102, 44.734425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772045, 32.691044, 44.838291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132597, 0.240093, 0.961651,
		-0.978453, 0.186630, 0.088318,
		-0.158268, -0.952641, 0.259666,
		39.724564, 32.405251, 44.916191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503300, 33.035641, 45.451969>,  <39.835354, 33.072102, 44.734425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503300, 33.035641, 45.451969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.626400, 32.657612, 45.407921>,  <39.700260, 32.430794, 45.381493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.626400, 32.657612, 45.407921>,  <39.503300, 33.035641, 45.451969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626400, 32.657612, 45.407921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253038, -0.030275, 0.966982,
		-0.917203, -0.325453, 0.229823,
		0.307749, -0.945074, -0.110120,
		39.718723, 32.374088, 45.374886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325375, 32.668613, 46.045391>,  <39.503300, 33.035641, 45.451969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325375, 32.668613, 46.045391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630501, 32.442734, 45.919384>,  <39.813576, 32.307205, 45.843781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630501, 32.442734, 45.919384>,  <39.325375, 32.668613, 46.045391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630501, 32.442734, 45.919384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335335, -0.071068, 0.939415,
		-0.552873, -0.822232, 0.135151,
		0.762812, -0.564698, -0.315015,
		39.859344, 32.273323, 45.824879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381958, 32.090733, 46.480740>,  <39.325375, 32.668613, 46.045391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381958, 32.090733, 46.480740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746132, 32.093407, 46.315300>,  <39.964638, 32.095013, 46.216038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746132, 32.093407, 46.315300>,  <39.381958, 32.090733, 46.480740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746132, 32.093407, 46.315300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413446, -0.046089, 0.909361,
		-0.012974, -0.998915, -0.044730,
		0.910436, 0.006695, -0.413596,
		40.019264, 32.095413, 46.191219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782482, 31.637568, 46.934742>,  <39.381958, 32.090733, 46.480740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782482, 31.637568, 46.934742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.058636, 31.839401, 46.727371>,  <40.224327, 31.960501, 46.602947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.058636, 31.839401, 46.727371>,  <39.782482, 31.637568, 46.934742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058636, 31.839401, 46.727371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578248, 0.045762, 0.814577,
		0.434746, -0.862150, -0.260180,
		0.690381, 0.504583, -0.518431,
		40.265751, 31.990776, 46.571842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379353, 31.295170, 47.048775>,  <39.782482, 31.637568, 46.934742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379353, 31.295170, 47.048775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.462395, 31.678066, 46.968182>,  <40.512218, 31.907804, 46.919827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.462395, 31.678066, 46.968182>,  <40.379353, 31.295170, 47.048775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462395, 31.678066, 46.968182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582812, 0.044383, 0.811394,
		0.785640, -0.285873, -0.548677,
		0.207603, 0.957239, -0.201479,
		40.524677, 31.965239, 46.907738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094704, 31.330032, 47.180447>,  <40.379353, 31.295170, 47.048775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094704, 31.330032, 47.180447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.974945, 31.711678, 47.182526>,  <40.903091, 31.940664, 47.183773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.974945, 31.711678, 47.182526>,  <41.094704, 31.330032, 47.180447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974945, 31.711678, 47.182526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476845, 0.144907, 0.866961,
		0.826426, 0.262046, -0.498349,
		-0.299398, 0.954114, 0.005200,
		40.885124, 31.997911, 47.184086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643063, 31.759481, 47.209099>,  <41.094704, 31.330032, 47.180447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643063, 31.759481, 47.209099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.345016, 31.979364, 47.360165>,  <41.166191, 32.111294, 47.450806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.345016, 31.979364, 47.360165>,  <41.643063, 31.759481, 47.209099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345016, 31.979364, 47.360165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534869, 0.154264, 0.830733,
		0.398398, 0.820991, -0.408964,
		-0.745113, 0.549705, 0.377665,
		41.121483, 32.144276, 47.473465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.339649, 33.106445, 48.112816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618809, 32.820641, 48.093227>,  <32.786304, 32.649158, 48.081474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618809, 32.820641, 48.093227>,  <32.339649, 33.106445, 48.112816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618809, 32.820641, 48.093227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001652, 0.069980, -0.997547,
		0.716190, 0.696110, 0.050019,
		0.697903, -0.714516, -0.048969,
		32.828178, 32.606285, 48.078537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780445, 33.420078, 47.633888>,  <32.339649, 33.106445, 48.112816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780445, 33.420078, 47.633888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.862534, 33.028713, 47.643608>,  <32.911785, 32.793892, 47.649441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.862534, 33.028713, 47.643608>,  <32.780445, 33.420078, 47.633888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862534, 33.028713, 47.643608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050032, -0.035288, -0.998124,
		0.977437, 0.203617, -0.056194,
		0.205218, -0.978415, 0.024304,
		32.924099, 32.735188, 47.650898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301079, 33.346138, 47.195995>,  <32.780445, 33.420078, 47.633888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301079, 33.346138, 47.195995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146309, 32.978634, 47.227386>,  <33.053448, 32.758129, 47.246220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146309, 32.978634, 47.227386>,  <33.301079, 33.346138, 47.195995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146309, 32.978634, 47.227386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030868, -0.072151, -0.996916,
		0.921593, -0.388158, -0.000443,
		-0.386929, -0.918765, 0.078475,
		33.030231, 32.703003, 47.250931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785469, 32.955860, 46.843048>,  <33.301079, 33.346138, 47.195995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785469, 32.955860, 46.843048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.443745, 32.748161, 46.852226>,  <33.238708, 32.623543, 46.857735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.443745, 32.748161, 46.852226>,  <33.785469, 32.955860, 46.843048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443745, 32.748161, 46.852226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089270, -0.190082, -0.977701,
		0.512035, -0.833214, 0.208744,
		-0.854313, -0.519252, 0.022947,
		33.187450, 32.592384, 46.859112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986816, 32.260368, 46.606209>,  <33.785469, 32.955860, 46.843048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986816, 32.260368, 46.606209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601814, 32.355202, 46.553474>,  <33.370815, 32.412102, 46.521835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601814, 32.355202, 46.553474>,  <33.986816, 32.260368, 46.606209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601814, 32.355202, 46.553474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042910, -0.346809, -0.936954,
		-0.267851, -0.907479, 0.323632,
		-0.962505, 0.237077, -0.131833,
		33.313065, 32.426327, 46.513924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704769, 31.609648, 46.332924>,  <33.986816, 32.260368, 46.606209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704769, 31.609648, 46.332924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.475704, 31.925240, 46.243866>,  <33.338264, 32.114594, 46.190430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.475704, 31.925240, 46.243866>,  <33.704769, 31.609648, 46.332924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475704, 31.925240, 46.243866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048665, -0.303827, -0.951483,
		-0.818346, -0.534044, 0.212386,
		-0.572662, 0.788978, -0.222647,
		33.303905, 32.161934, 46.177071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397774, 31.401356, 45.663239>,  <33.704769, 31.609648, 46.332924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397774, 31.401356, 45.663239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.320080, 31.793287, 45.682018>,  <33.273464, 32.028446, 45.693287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.320080, 31.793287, 45.682018>,  <33.397774, 31.401356, 45.663239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320080, 31.793287, 45.682018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137255, 0.020243, -0.990329,
		-0.971305, -0.198799, 0.130555,
		-0.194234, 0.979831, 0.046948,
		33.261810, 32.087238, 45.696102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850582, 31.473135, 45.196743>,  <33.397774, 31.401356, 45.663239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850582, 31.473135, 45.196743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026119, 31.827335, 45.257801>,  <33.131443, 32.039856, 45.294437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026119, 31.827335, 45.257801>,  <32.850582, 31.473135, 45.196743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026119, 31.827335, 45.257801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152579, 0.093980, -0.983813,
		-0.885514, 0.455033, -0.093866,
		0.438845, 0.885502, 0.152649,
		33.157772, 32.092987, 45.303596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613804, 31.871185, 44.639542>,  <32.850582, 31.473135, 45.196743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613804, 31.871185, 44.639542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927536, 32.086597, 44.762703>,  <33.115776, 32.215847, 44.836601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927536, 32.086597, 44.762703>,  <32.613804, 31.871185, 44.639542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927536, 32.086597, 44.762703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176229, 0.282466, -0.942951,
		-0.594782, 0.793849, 0.126642,
		0.784332, 0.538532, 0.307905,
		33.162834, 32.248158, 44.855076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543343, 32.489902, 44.241535>,  <32.613804, 31.871185, 44.639542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543343, 32.489902, 44.241535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908958, 32.495518, 44.403687>,  <33.128330, 32.498886, 44.500977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908958, 32.495518, 44.403687>,  <32.543343, 32.489902, 44.241535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908958, 32.495518, 44.403687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353426, 0.462862, -0.812926,
		-0.199043, 0.886319, 0.418115,
		0.914042, 0.014034, 0.405378,
		33.183170, 32.499729, 44.525299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692383, 33.223755, 44.479965>,  <32.543343, 32.489902, 44.241535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692383, 33.223755, 44.479965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.031788, 33.029770, 44.395275>,  <33.235432, 32.913380, 44.344460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.031788, 33.029770, 44.395275>,  <32.692383, 33.223755, 44.479965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031788, 33.029770, 44.395275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116918, 0.562043, -0.818802,
		0.516091, 0.670013, 0.533604,
		0.848517, -0.484964, -0.211729,
		33.286343, 32.884281, 44.331757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175983, 33.760757, 44.116249>,  <32.692383, 33.223755, 44.479965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175983, 33.760757, 44.116249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355354, 33.417946, 44.014729>,  <33.462978, 33.212261, 43.953815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355354, 33.417946, 44.014729>,  <33.175983, 33.760757, 44.116249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355354, 33.417946, 44.014729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398123, 0.445746, -0.801754,
		0.800254, 0.258488, 0.541088,
		0.448432, -0.857027, -0.253800,
		33.489883, 33.160839, 43.938587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887657, 33.940357, 43.917011>,  <33.175983, 33.760757, 44.116249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887657, 33.940357, 43.917011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815189, 33.587837, 43.742435>,  <33.771709, 33.376324, 43.637691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815189, 33.587837, 43.742435>,  <33.887657, 33.940357, 43.917011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815189, 33.587837, 43.742435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440088, 0.324219, -0.837380,
		0.879489, -0.343781, 0.329112,
		-0.181170, -0.881304, -0.436441,
		33.760838, 33.323444, 43.611504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324574, 33.929462, 43.408142>,  <33.887657, 33.940357, 43.917011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324574, 33.929462, 43.408142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.077045, 33.632221, 43.306271>,  <33.928528, 33.453876, 43.245148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.077045, 33.632221, 43.306271>,  <34.324574, 33.929462, 43.408142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077045, 33.632221, 43.306271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137238, 0.216953, -0.966487,
		0.773451, -0.633034, -0.032273,
		-0.618821, -0.743102, -0.254679,
		33.891399, 33.409290, 43.229866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992573, 34.194187, 43.212940>,  <34.324574, 33.929462, 43.408142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992573, 34.194187, 43.212940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149948, 34.554977, 43.141781>,  <35.244373, 34.771450, 43.099087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149948, 34.554977, 43.141781>,  <34.992573, 34.194187, 43.212940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149948, 34.554977, 43.141781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069471, 0.163781, 0.984048,
		0.916723, -0.399520, 0.001777,
		0.393438, 0.901976, -0.177897,
		35.267979, 34.825569, 43.088413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401482, 34.198200, 43.728134>,  <34.992573, 34.194187, 43.212940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401482, 34.198200, 43.728134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.338364, 34.573429, 43.604771>,  <35.300495, 34.798569, 43.530754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.338364, 34.573429, 43.604771>,  <35.401482, 34.198200, 43.728134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338364, 34.573429, 43.604771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083032, 0.323821, 0.942468,
		0.983975, 0.123107, -0.128987,
		-0.157793, 0.938075, -0.308410,
		35.291027, 34.854851, 43.512249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934837, 34.500145, 44.026318>,  <35.401482, 34.198200, 43.728134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934837, 34.500145, 44.026318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649689, 34.775505, 43.972778>,  <35.478600, 34.940720, 43.940655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649689, 34.775505, 43.972778>,  <35.934837, 34.500145, 44.026318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649689, 34.775505, 43.972778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125923, 0.313412, 0.941231,
		0.689893, 0.654126, -0.310109,
		-0.712875, 0.688399, -0.133851,
		35.435825, 34.982025, 43.932621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222397, 35.105892, 44.329117>,  <35.934837, 34.500145, 44.026318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222397, 35.105892, 44.329117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831474, 35.188156, 44.308784>,  <35.596920, 35.237514, 44.296585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831474, 35.188156, 44.308784>,  <36.222397, 35.105892, 44.329117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831474, 35.188156, 44.308784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024169, 0.346636, 0.937688,
		0.210462, 0.915177, -0.343739,
		-0.977303, 0.205655, -0.050835,
		35.538284, 35.249851, 44.293533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223930, 35.758995, 44.538383>,  <36.222397, 35.105892, 44.329117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223930, 35.758995, 44.538383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.855518, 35.607803, 44.575989>,  <35.634472, 35.517086, 44.598553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.855518, 35.607803, 44.575989>,  <36.223930, 35.758995, 44.538383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855518, 35.607803, 44.575989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015512, 0.276773, 0.960810,
		-0.389190, 0.883474, -0.260779,
		-0.921027, -0.377983, 0.094013,
		35.579208, 35.494408, 44.604191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946198, 36.106354, 45.015774>,  <36.223930, 35.758995, 44.538383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946198, 36.106354, 45.015774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679768, 35.808151, 45.006187>,  <35.519909, 35.629230, 45.000435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679768, 35.808151, 45.006187>,  <35.946198, 36.106354, 45.015774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679768, 35.808151, 45.006187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211975, 0.158387, 0.964355,
		-0.715132, 0.647411, -0.263525,
		-0.666073, -0.745502, -0.023967,
		35.479946, 35.584499, 44.998997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311256, 36.311771, 45.409290>,  <35.946198, 36.106354, 45.015774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311256, 36.311771, 45.409290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313866, 35.914246, 45.453644>,  <35.315430, 35.675732, 45.480255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313866, 35.914246, 45.453644>,  <35.311256, 36.311771, 45.409290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313866, 35.914246, 45.453644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237372, 0.106176, 0.965599,
		-0.971397, -0.032618, -0.235210,
		0.006522, -0.993812, 0.110882,
		35.315823, 35.616100, 45.486908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851841, 36.150936, 45.977581>,  <35.311256, 36.311771, 45.409290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851841, 36.150936, 45.977581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050514, 35.805107, 45.947071>,  <35.169720, 35.597610, 45.928764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050514, 35.805107, 45.947071>,  <34.851841, 36.150936, 45.977581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050514, 35.805107, 45.947071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114439, -0.152345, 0.981679,
		-0.860354, -0.478856, -0.174609,
		0.496684, -0.864574, -0.076271,
		35.199520, 35.545734, 45.924191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471603, 35.629360, 46.252979>,  <34.851841, 36.150936, 45.977581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471603, 35.629360, 46.252979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.833126, 35.458218, 46.249702>,  <35.050041, 35.355534, 46.247738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.833126, 35.458218, 46.249702>,  <34.471603, 35.629360, 46.252979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833126, 35.458218, 46.249702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161413, -0.358579, 0.919438,
		-0.396331, -0.829672, -0.393149,
		0.903807, -0.427861, -0.008196,
		35.104271, 35.329861, 46.247246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403725, 35.071602, 46.610691>,  <34.471603, 35.629360, 46.252979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403725, 35.071602, 46.610691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.801743, 35.104004, 46.633728>,  <35.040554, 35.123447, 46.647549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.801743, 35.104004, 46.633728>,  <34.403725, 35.071602, 46.610691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801743, 35.104004, 46.633728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033131, -0.275969, 0.960595,
		0.093709, -0.957747, -0.271918,
		0.995048, 0.081008, 0.057592,
		35.100258, 35.128307, 46.651005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620029, 34.471756, 46.923183>,  <34.403725, 35.071602, 46.610691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620029, 34.471756, 46.923183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915565, 34.732368, 46.992039>,  <35.092888, 34.888737, 47.033352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915565, 34.732368, 46.992039>,  <34.620029, 34.471756, 46.923183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915565, 34.732368, 46.992039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095987, -0.354579, 0.930086,
		0.667014, -0.670659, -0.324514,
		0.738836, 0.651529, 0.172135,
		35.137215, 34.927826, 47.043678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173378, 34.098377, 47.219196>,  <34.620029, 34.471756, 46.923183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173378, 34.098377, 47.219196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.215355, 34.482693, 47.321861>,  <35.240543, 34.713284, 47.383461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.215355, 34.482693, 47.321861>,  <35.173378, 34.098377, 47.219196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215355, 34.482693, 47.321861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189954, -0.272698, 0.943161,
		0.976168, -0.050226, -0.211124,
		0.104944, 0.960788, 0.256659,
		35.246838, 34.770927, 47.398857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623985, 33.975891, 47.831207>,  <35.173378, 34.098377, 47.219196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623985, 33.975891, 47.831207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.570312, 34.369728, 47.876076>,  <35.538109, 34.606030, 47.902996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.570312, 34.369728, 47.876076>,  <35.623985, 33.975891, 47.831207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570312, 34.369728, 47.876076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045928, -0.119249, 0.991802,
		0.989892, 0.127931, 0.061221,
		-0.134183, 0.984588, 0.112168,
		35.530056, 34.665104, 47.909725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281097, 34.393570, 48.056602>,  <35.623985, 33.975891, 47.831207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281097, 34.393570, 48.056602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930637, 34.543835, 48.177422>,  <35.720360, 34.633995, 48.249912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930637, 34.543835, 48.177422>,  <36.281097, 34.393570, 48.056602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930637, 34.543835, 48.177422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260225, -0.158845, 0.952392,
		0.405755, 0.913043, 0.041416,
		-0.876154, 0.375661, 0.302049,
		35.667789, 34.656532, 48.268036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937275, 34.749245, 47.915398>,  <36.281097, 34.393570, 48.056602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937275, 34.749245, 47.915398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.319153, 34.631973, 47.935822>,  <37.548279, 34.561611, 47.948074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.319153, 34.631973, 47.935822>,  <36.937275, 34.749245, 47.915398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319153, 34.631973, 47.935822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086798, 0.110220, -0.990110,
		0.284651, 0.949683, 0.130674,
		0.954694, -0.293178, 0.051056,
		37.605560, 34.544022, 47.951138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317142, 35.317345, 47.559200>,  <36.937275, 34.749245, 47.915398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317142, 35.317345, 47.559200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.513809, 34.969120, 47.551304>,  <37.631809, 34.760185, 47.546566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.513809, 34.969120, 47.551304>,  <37.317142, 35.317345, 47.559200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513809, 34.969120, 47.551304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167917, 0.117030, -0.978830,
		0.854438, 0.477947, 0.203722,
		0.491670, -0.870558, -0.019740,
		37.661312, 34.707954, 47.545383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996449, 35.450069, 47.227348>,  <37.317142, 35.317345, 47.559200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996449, 35.450069, 47.227348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.941196, 35.054905, 47.199177>,  <37.908047, 34.817806, 47.182274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.941196, 35.054905, 47.199177>,  <37.996449, 35.450069, 47.227348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941196, 35.054905, 47.199177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327259, 0.021594, -0.944688,
		0.934784, -0.153539, 0.320319,
		-0.138129, -0.987907, -0.070433,
		37.899757, 34.758533, 47.178047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568832, 35.201233, 46.914780>,  <37.996449, 35.450069, 47.227348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568832, 35.201233, 46.914780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.285225, 34.923084, 46.867882>,  <38.115059, 34.756195, 46.839745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.285225, 34.923084, 46.867882>,  <38.568832, 35.201233, 46.914780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285225, 34.923084, 46.867882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359494, -0.213385, -0.908422,
		0.606674, -0.686239, 0.401277,
		-0.709021, -0.695373, -0.117243,
		38.072517, 34.714474, 46.832710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872715, 34.667023, 46.533840>,  <38.568832, 35.201233, 46.914780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872715, 34.667023, 46.533840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488117, 34.574127, 46.475056>,  <38.257359, 34.518391, 46.439785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488117, 34.574127, 46.475056>,  <38.872715, 34.667023, 46.533840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488117, 34.574127, 46.475056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170447, -0.084427, -0.981743,
		0.215588, -0.968989, 0.120760,
		-0.961493, -0.232235, -0.146960,
		38.199669, 34.504456, 46.430969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918949, 34.212242, 46.056999>,  <38.872715, 34.667023, 46.533840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918949, 34.212242, 46.056999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.540623, 34.341099, 46.040733>,  <38.313625, 34.418411, 46.030972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.540623, 34.341099, 46.040733>,  <38.918949, 34.212242, 46.056999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540623, 34.341099, 46.040733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019095, -0.180216, -0.983442,
		-0.324133, -0.929381, 0.176603,
		-0.945819, 0.322138, -0.040668,
		38.256878, 34.437740, 46.028534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518848, 33.689327, 45.591537>,  <38.918949, 34.212242, 46.056999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518848, 33.689327, 45.591537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.292950, 34.019344, 45.599121>,  <38.157410, 34.217354, 45.603672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.292950, 34.019344, 45.599121>,  <38.518848, 33.689327, 45.591537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292950, 34.019344, 45.599121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125758, -0.063331, -0.990037,
		-0.815624, -0.561508, 0.139522,
		-0.564750, 0.825044, 0.018960,
		38.123524, 34.266857, 45.604809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943867, 33.555080, 45.169384>,  <38.518848, 33.689327, 45.591537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943867, 33.555080, 45.169384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.992363, 33.951763, 45.186413>,  <38.021461, 34.189774, 45.196632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.992363, 33.951763, 45.186413>,  <37.943867, 33.555080, 45.169384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992363, 33.951763, 45.186413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076110, 0.052052, -0.995740,
		-0.989701, 0.117480, 0.081790,
		0.121237, 0.991710, 0.042575,
		38.028732, 34.249275, 45.199184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523800, 33.804470, 44.658096>,  <37.943867, 33.555080, 45.169384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523800, 33.804470, 44.658096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782711, 34.102379, 44.723030>,  <37.938057, 34.281124, 44.761990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782711, 34.102379, 44.723030>,  <37.523800, 33.804470, 44.658096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782711, 34.102379, 44.723030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069545, 0.154380, -0.985561,
		-0.759078, 0.649218, 0.048131,
		0.647274, 0.744771, 0.162336,
		37.976894, 34.325809, 44.771732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344746, 34.311001, 44.131111>,  <37.523800, 33.804470, 44.658096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344746, 34.311001, 44.131111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709957, 34.416473, 44.255592>,  <37.929085, 34.479755, 44.330280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709957, 34.416473, 44.255592>,  <37.344746, 34.311001, 44.131111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709957, 34.416473, 44.255592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291345, 0.112372, -0.949995,
		-0.285462, 0.958043, 0.025779,
		0.913033, 0.263677, 0.311200,
		37.983868, 34.495575, 44.348953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583702, 34.928913, 43.782536>,  <37.344746, 34.311001, 44.131111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583702, 34.928913, 43.782536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.917816, 34.741817, 43.898129>,  <38.118286, 34.629559, 43.967484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.917816, 34.741817, 43.898129>,  <37.583702, 34.928913, 43.782536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917816, 34.741817, 43.898129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377597, 0.105979, -0.919885,
		0.399641, 0.877489, 0.265140,
		0.835289, -0.467740, 0.288984,
		38.168404, 34.601494, 43.984825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094978, 35.369026, 43.630993>,  <37.583702, 34.928913, 43.782536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094978, 35.369026, 43.630993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.267635, 35.008327, 43.640282>,  <38.371227, 34.791908, 43.645855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.267635, 35.008327, 43.640282>,  <38.094978, 35.369026, 43.630993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267635, 35.008327, 43.640282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526773, 0.231082, -0.817993,
		0.732255, 0.365314, 0.574760,
		0.431640, -0.901747, 0.023226,
		38.397129, 34.737804, 43.647251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849659, 35.444859, 43.399868>,  <38.094978, 35.369026, 43.630993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849659, 35.444859, 43.399868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.795692, 35.049175, 43.376991>,  <38.763313, 34.811768, 43.363266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.795692, 35.049175, 43.376991>,  <38.849659, 35.444859, 43.399868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795692, 35.049175, 43.376991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433610, -0.007043, -0.901073,
		0.890944, -0.146365, 0.429880,
		-0.134913, -0.989205, -0.057190,
		38.755219, 34.752415, 43.359833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452366, 35.133305, 43.004025>,  <38.849659, 35.444859, 43.399868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452366, 35.133305, 43.004025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.159088, 34.864635, 42.961540>,  <38.983120, 34.703434, 42.936050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.159088, 34.864635, 42.961540>,  <39.452366, 35.133305, 43.004025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159088, 34.864635, 42.961540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333329, -0.218851, -0.917058,
		0.592718, -0.707786, 0.384349,
		-0.733196, -0.671672, -0.106209,
		38.939129, 34.663136, 42.929676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.879511, 39.257904, 28.885637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.498686, 39.207264, 28.774248>,  <30.270191, 39.176880, 28.707415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.498686, 39.207264, 28.774248>,  <30.879511, 39.257904, 28.885637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498686, 39.207264, 28.774248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225912, -0.322787, 0.919115,
		-0.206247, 0.937966, 0.278713,
		-0.952064, -0.126600, -0.278472,
		30.213066, 39.169285, 28.690706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481216, 39.738632, 29.334362>,  <30.879511, 39.257904, 28.885637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481216, 39.738632, 29.334362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.261843, 39.429390, 29.206911>,  <30.130219, 39.243843, 29.130440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.261843, 39.429390, 29.206911>,  <30.481216, 39.738632, 29.334362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261843, 39.429390, 29.206911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146526, -0.286298, 0.946870,
		-0.823257, 0.565982, 0.043735,
		-0.548432, -0.773109, -0.318628,
		30.097313, 39.197456, 29.111322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842577, 39.833172, 29.538923>,  <30.481216, 39.738632, 29.334362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842577, 39.833172, 29.538923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899536, 39.439022, 29.501482>,  <29.933712, 39.202534, 29.479017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899536, 39.439022, 29.501482>,  <29.842577, 39.833172, 29.538923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899536, 39.439022, 29.501482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204979, -0.121871, 0.971149,
		-0.968353, -0.119102, -0.219335,
		0.142396, -0.985374, -0.093601,
		29.942255, 39.143410, 29.473402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309162, 39.505978, 29.855946>,  <29.842577, 39.833172, 29.538923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309162, 39.505978, 29.855946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582926, 39.216988, 29.816730>,  <29.747183, 39.043594, 29.793201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582926, 39.216988, 29.816730>,  <29.309162, 39.505978, 29.855946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582926, 39.216988, 29.816730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345430, -0.439725, 0.829048,
		-0.642078, -0.533542, -0.550517,
		0.684408, -0.722478, -0.098036,
		29.788248, 39.000244, 29.787319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008478, 38.871162, 29.755346>,  <29.309162, 39.505978, 29.855946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008478, 38.871162, 29.755346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.354933, 38.818558, 29.948225>,  <29.562805, 38.786995, 30.063951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.354933, 38.818558, 29.948225>,  <29.008478, 38.871162, 29.755346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354933, 38.818558, 29.948225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487341, -0.436364, 0.756363,
		0.110941, -0.890107, -0.442042,
		0.866135, -0.131514, 0.482197,
		29.614773, 38.779102, 30.092884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900808, 38.237881, 30.160648>,  <29.008478, 38.871162, 29.755346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900808, 38.237881, 30.160648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239721, 38.369614, 30.327335>,  <29.443069, 38.448654, 30.427347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.239721, 38.369614, 30.327335>,  <28.900808, 38.237881, 30.160648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239721, 38.369614, 30.327335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301320, -0.348060, 0.887728,
		0.437399, -0.877721, -0.195672,
		0.847283, 0.329332, 0.416716,
		29.493906, 38.468414, 30.452351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216539, 37.669479, 30.361294>,  <28.900808, 38.237881, 30.160648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216539, 37.669479, 30.361294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.378834, 37.970276, 30.569098>,  <29.476212, 38.150753, 30.693781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.378834, 37.970276, 30.569098>,  <29.216539, 37.669479, 30.361294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378834, 37.970276, 30.569098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250303, -0.455249, 0.854457,
		0.879048, -0.476721, 0.003513,
		0.405738, 0.751988, 0.519510,
		29.500555, 38.195873, 30.724951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677113, 37.392433, 30.919416>,  <29.216539, 37.669479, 30.361294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677113, 37.392433, 30.919416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605186, 37.765541, 31.044382>,  <29.562031, 37.989407, 31.119362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605186, 37.765541, 31.044382>,  <29.677113, 37.392433, 30.919416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605186, 37.765541, 31.044382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351820, -0.357563, 0.865084,
		0.918634, 0.045643, 0.392464,
		-0.179816, 0.932773, 0.312412,
		29.551241, 38.045372, 31.138105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975918, 37.489765, 31.580711>,  <29.677113, 37.392433, 30.919416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975918, 37.489765, 31.580711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658516, 37.731926, 31.555950>,  <29.468075, 37.877224, 31.541094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658516, 37.731926, 31.555950>,  <29.975918, 37.489765, 31.580711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658516, 37.731926, 31.555950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236263, -0.212723, 0.948119,
		0.560828, 0.766963, 0.311831,
		-0.793506, 0.605406, -0.061904,
		29.420464, 37.913548, 31.537378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037413, 37.763664, 32.190105>,  <29.975918, 37.489765, 31.580711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037413, 37.763664, 32.190105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665770, 37.864014, 32.081425>,  <29.442783, 37.924225, 32.016216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665770, 37.864014, 32.081425>,  <30.037413, 37.763664, 32.190105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665770, 37.864014, 32.081425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333684, -0.252007, 0.908376,
		0.159419, 0.934641, 0.317854,
		-0.929107, 0.250875, -0.271700,
		29.387037, 37.939278, 31.999914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727531, 38.077374, 32.718948>,  <30.037413, 37.763664, 32.190105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727531, 38.077374, 32.718948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412743, 37.947075, 32.509354>,  <29.223869, 37.868896, 32.383595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412743, 37.947075, 32.509354>,  <29.727531, 38.077374, 32.718948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412743, 37.947075, 32.509354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499050, -0.163318, 0.851045,
		-0.362799, 0.931246, -0.034036,
		-0.786973, -0.325744, -0.523989,
		29.176651, 37.849350, 32.352158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132944, 38.375797, 33.003395>,  <29.727531, 38.077374, 32.718948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132944, 38.375797, 33.003395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981409, 38.085335, 32.773895>,  <28.890488, 37.911057, 32.636196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981409, 38.085335, 32.773895>,  <29.132944, 38.375797, 33.003395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981409, 38.085335, 32.773895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607759, -0.272328, 0.745967,
		-0.697932, 0.631300, -0.338157,
		-0.378840, -0.726152, -0.573745,
		28.867758, 37.867489, 32.601772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474489, 38.380260, 33.118370>,  <29.132944, 38.375797, 33.003395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474489, 38.380260, 33.118370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515278, 38.024231, 32.940662>,  <28.539751, 37.810616, 32.834038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515278, 38.024231, 32.940662>,  <28.474489, 38.380260, 33.118370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515278, 38.024231, 32.940662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734155, -0.368697, 0.570156,
		-0.671280, 0.268023, -0.691047,
		0.101972, -0.890071, -0.444269,
		28.545870, 37.757210, 32.807381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825296, 38.125980, 32.960686>,  <28.474489, 38.380260, 33.118370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825296, 38.125980, 32.960686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057344, 37.804142, 33.011433>,  <28.196573, 37.611038, 33.041882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057344, 37.804142, 33.011433>,  <27.825296, 38.125980, 32.960686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057344, 37.804142, 33.011433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712093, -0.425354, 0.558567,
		-0.395454, -0.414377, -0.819700,
		0.580121, -0.804590, 0.126867,
		28.231380, 37.562763, 33.049492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450823, 37.490437, 32.888115>,  <27.825296, 38.125980, 32.960686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450823, 37.490437, 32.888115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773661, 37.350964, 33.078701>,  <27.967363, 37.267281, 33.193054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773661, 37.350964, 33.078701>,  <27.450823, 37.490437, 32.888115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773661, 37.350964, 33.078701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586516, -0.566148, 0.579203,
		0.067795, -0.746927, -0.661440,
		0.807095, -0.348678, 0.476467,
		28.015789, 37.246361, 33.221642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406540, 36.780788, 32.833519>,  <27.450823, 37.490437, 32.888115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406540, 36.780788, 32.833519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645115, 36.869854, 33.141983>,  <27.788260, 36.923294, 33.327061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645115, 36.869854, 33.141983>,  <27.406540, 36.780788, 32.833519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645115, 36.869854, 33.141983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601613, -0.511980, 0.613138,
		0.531343, -0.829636, -0.171404,
		0.596436, 0.222668, 0.771157,
		27.824045, 36.936653, 33.373329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405397, 36.165833, 33.178276>,  <27.406540, 36.780788, 32.833519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405397, 36.165833, 33.178276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511919, 36.447994, 33.441025>,  <27.575832, 36.617290, 33.598675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511919, 36.447994, 33.441025>,  <27.405397, 36.165833, 33.178276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511919, 36.447994, 33.441025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498665, -0.482370, 0.720175,
		0.824873, -0.519344, 0.223306,
		0.266303, 0.705408, 0.656873,
		27.591810, 36.659618, 33.638088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477505, 35.838531, 33.793266>,  <27.405397, 36.165833, 33.178276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477505, 35.838531, 33.793266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464994, 36.207821, 33.946461>,  <27.457489, 36.429394, 34.038376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464994, 36.207821, 33.946461>,  <27.477505, 35.838531, 33.793266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464994, 36.207821, 33.946461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395077, -0.363390, 0.843719,
		0.918116, -0.124922, 0.376109,
		-0.031275, 0.923224, 0.382987,
		27.455612, 36.484787, 34.061356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760935, 35.791313, 34.443993>,  <27.477505, 35.838531, 33.793266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760935, 35.791313, 34.443993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503704, 36.096020, 34.412594>,  <27.349365, 36.278843, 34.393757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503704, 36.096020, 34.412594>,  <27.760935, 35.791313, 34.443993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503704, 36.096020, 34.412594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479490, -0.320611, 0.816883,
		0.597109, 0.562957, 0.571437,
		-0.643079, 0.761766, -0.078492,
		27.310780, 36.324551, 34.389046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519972, 35.848801, 35.116932>,  <27.760935, 35.791313, 34.443993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519972, 35.848801, 35.116932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.262167, 36.061184, 34.896862>,  <27.107485, 36.188614, 34.764820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.262167, 36.061184, 34.896862>,  <27.519972, 35.848801, 35.116932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262167, 36.061184, 34.896862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703405, -0.129690, 0.698857,
		0.299713, 0.837414, 0.457066,
		-0.644510, 0.530959, -0.550172,
		27.068813, 36.220470, 34.731812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166664, 35.612877, 35.635277>,  <27.519972, 35.848801, 35.116932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166664, 35.612877, 35.635277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.309082, 35.290653, 35.824722>,  <28.394533, 35.097321, 35.938389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.309082, 35.290653, 35.824722>,  <28.166664, 35.612877, 35.635277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309082, 35.290653, 35.824722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641482, -0.157845, -0.750724,
		0.679509, 0.571105, 0.460551,
		0.356046, -0.805558, 0.473611,
		28.415895, 35.048985, 35.966805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882397, 35.514824, 35.557777>,  <28.166664, 35.612877, 35.635277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882397, 35.514824, 35.557777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766750, 35.144070, 35.653519>,  <28.697363, 34.921616, 35.710964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766750, 35.144070, 35.653519>,  <28.882397, 35.514824, 35.557777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766750, 35.144070, 35.653519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504789, -0.360056, -0.784568,
		0.813388, -0.106008, 0.571981,
		-0.289116, -0.926888, 0.239354,
		28.680016, 34.866005, 35.725327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395319, 35.202251, 35.362057>,  <28.882397, 35.514824, 35.557777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395319, 35.202251, 35.362057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096399, 34.936535, 35.355667>,  <28.917048, 34.777103, 35.351833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096399, 34.936535, 35.355667>,  <29.395319, 35.202251, 35.362057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096399, 34.936535, 35.355667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358305, -0.382596, -0.851609,
		0.559608, -0.642132, 0.523934,
		-0.747300, -0.664295, -0.015975,
		28.872210, 34.737247, 35.350876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730656, 34.558167, 35.106617>,  <29.395319, 35.202251, 35.362057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730656, 34.558167, 35.106617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.339586, 34.493599, 35.052803>,  <29.104944, 34.454857, 35.020515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.339586, 34.493599, 35.052803>,  <29.730656, 34.558167, 35.106617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339586, 34.493599, 35.052803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186547, -0.372059, -0.909270,
		0.096721, -0.914065, 0.393865,
		-0.977673, -0.161420, -0.134530,
		29.046284, 34.445171, 35.012444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694584, 33.920292, 34.877678>,  <29.730656, 34.558167, 35.106617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694584, 33.920292, 34.877678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.340855, 34.078041, 34.777725>,  <29.128616, 34.172691, 34.717754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.340855, 34.078041, 34.777725>,  <29.694584, 33.920292, 34.877678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340855, 34.078041, 34.777725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214111, -0.133050, -0.967706,
		-0.414884, -0.909268, 0.033220,
		-0.884323, 0.394373, -0.249884,
		29.075558, 34.196354, 34.702759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296064, 33.359547, 34.505394>,  <29.694584, 33.920292, 34.877678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296064, 33.359547, 34.505394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189322, 33.734680, 34.416618>,  <29.125277, 33.959759, 34.363354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189322, 33.734680, 34.416618>,  <29.296064, 33.359547, 34.505394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189322, 33.734680, 34.416618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151853, -0.186493, -0.970650,
		-0.951698, -0.292725, -0.092647,
		-0.266856, 0.937834, -0.221936,
		29.109264, 34.016029, 34.350037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017874, 33.366951, 33.781071>,  <29.296064, 33.359547, 34.505394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017874, 33.366951, 33.781071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047289, 33.763042, 33.828480>,  <29.064938, 34.000698, 33.856926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047289, 33.763042, 33.828480>,  <29.017874, 33.366951, 33.781071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047289, 33.763042, 33.828480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290533, 0.092422, -0.952391,
		-0.954035, 0.104470, -0.280896,
		0.073536, 0.990224, 0.118526,
		29.069349, 34.060108, 33.864037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773521, 33.543934, 33.180603>,  <29.017874, 33.366951, 33.781071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773521, 33.543934, 33.180603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989052, 33.840164, 33.341209>,  <29.118370, 34.017902, 33.437572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989052, 33.840164, 33.341209>,  <28.773521, 33.543934, 33.180603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989052, 33.840164, 33.341209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550204, 0.051540, -0.833439,
		-0.637919, 0.669993, -0.379696,
		0.538828, 0.740576, 0.401511,
		29.150700, 34.062336, 33.461662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026506, 33.972656, 32.654591>,  <28.773521, 33.543934, 33.180603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026506, 33.972656, 32.654591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.295063, 34.091473, 32.926178>,  <29.456198, 34.162762, 33.089130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.295063, 34.091473, 32.926178>,  <29.026506, 33.972656, 32.654591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295063, 34.091473, 32.926178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623818, 0.268098, -0.734149,
		-0.400103, 0.916455, -0.005300,
		0.671393, 0.297041, 0.678968,
		29.496481, 34.180584, 33.129868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209368, 34.774231, 32.594231>,  <29.026506, 33.972656, 32.654591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209368, 34.774231, 32.594231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515522, 34.575504, 32.757866>,  <29.699215, 34.456268, 32.856049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515522, 34.575504, 32.757866>,  <29.209368, 34.774231, 32.594231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515522, 34.575504, 32.757866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630403, 0.450837, -0.631933,
		0.129524, 0.741564, 0.658260,
		0.765386, -0.496819, 0.409090,
		29.745138, 34.426460, 32.880592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569078, 35.254189, 32.893108>,  <29.209368, 34.774231, 32.594231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569078, 35.254189, 32.893108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808130, 34.938522, 32.836460>,  <29.951561, 34.749123, 32.802471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808130, 34.938522, 32.836460>,  <29.569078, 35.254189, 32.893108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808130, 34.938522, 32.836460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668948, 0.588152, -0.454516,
		0.441982, 0.176897, 0.879408,
		0.597629, -0.789167, -0.141618,
		29.987419, 34.701771, 32.793976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140884, 35.555988, 32.558777>,  <29.569078, 35.254189, 32.893108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140884, 35.555988, 32.558777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281288, 35.182304, 32.533340>,  <30.365530, 34.958096, 32.518078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281288, 35.182304, 32.533340>,  <30.140884, 35.555988, 32.558777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281288, 35.182304, 32.533340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671118, 0.298356, -0.678663,
		0.652987, 0.195541, 0.731691,
		0.351011, -0.934210, -0.063591,
		30.386591, 34.902042, 32.514263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887691, 35.621201, 32.531368>,  <30.140884, 35.555988, 32.558777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887691, 35.621201, 32.531368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.803436, 35.250462, 32.407063>,  <30.752882, 35.028019, 32.332478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.803436, 35.250462, 32.407063>,  <30.887691, 35.621201, 32.531368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803436, 35.250462, 32.407063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678133, 0.090433, -0.729354,
		0.704107, -0.364372, 0.609480,
		-0.210640, -0.926852, -0.310767,
		30.740244, 34.972404, 32.313831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497011, 35.222977, 32.422184>,  <30.887691, 35.621201, 32.531368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497011, 35.222977, 32.422184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.211245, 35.055031, 32.198284>,  <31.039785, 34.954266, 32.063942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.211245, 35.055031, 32.198284>,  <31.497011, 35.222977, 32.422184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211245, 35.055031, 32.198284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652000, -0.109081, -0.750331,
		0.253978, -0.901009, 0.351679,
		-0.714417, -0.419863, -0.559754,
		30.996920, 34.929073, 32.030357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820341, 34.716953, 32.044155>,  <31.497011, 35.222977, 32.422184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820341, 34.716953, 32.044155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.483543, 34.719727, 31.828379>,  <31.281466, 34.721390, 31.698914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.483543, 34.719727, 31.828379>,  <31.820341, 34.716953, 32.044155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483543, 34.719727, 31.828379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535767, 0.127943, -0.834616,
		0.063233, -0.991757, -0.111441,
		-0.841995, 0.006932, -0.539441,
		31.230946, 34.721806, 31.666546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032898, 34.411011, 31.366383>,  <31.820341, 34.716953, 32.044155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032898, 34.411011, 31.366383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.694551, 34.614555, 31.302422>,  <31.491543, 34.736683, 31.264044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.694551, 34.614555, 31.302422>,  <32.032898, 34.411011, 31.366383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694551, 34.614555, 31.302422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373352, 0.350736, -0.858832,
		-0.380941, -0.786159, -0.486660,
		-0.845868, 0.508860, -0.159904,
		31.440792, 34.767212, 31.254450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789526, 34.373707, 30.667019>,  <32.032898, 34.411011, 31.366383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789526, 34.373707, 30.667019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609238, 34.705303, 30.799456>,  <31.501064, 34.904263, 30.878918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609238, 34.705303, 30.799456>,  <31.789526, 34.373707, 30.667019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609238, 34.705303, 30.799456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090288, 0.411336, -0.907001,
		-0.888088, -0.378908, -0.260245,
		-0.450718, 0.828994, 0.331092,
		31.474022, 34.954002, 30.898783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457758, 34.519478, 30.055511>,  <31.789526, 34.373707, 30.667019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457758, 34.519478, 30.055511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.456331, 34.841949, 30.292175>,  <31.455475, 35.035431, 30.434174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.456331, 34.841949, 30.292175>,  <31.457758, 34.519478, 30.055511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456331, 34.841949, 30.292175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003495, 0.591650, -0.806188,
		-0.999988, -0.004942, 0.000708,
		-0.003566, 0.806180, 0.591660,
		31.455261, 35.083805, 30.469673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850578, 34.951794, 29.850760>,  <31.457758, 34.519478, 30.055511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850578, 34.951794, 29.850760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.127108, 35.178997, 30.029392>,  <31.293026, 35.315319, 30.136572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.127108, 35.178997, 30.029392>,  <30.850578, 34.951794, 29.850760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127108, 35.178997, 30.029392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141483, 0.712520, -0.687239,
		-0.708557, 0.411921, 0.572946,
		0.691324, 0.568011, 0.446581,
		31.334505, 35.349400, 30.163366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633169, 35.586430, 29.779284>,  <30.850578, 34.951794, 29.850760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633169, 35.586430, 29.779284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018536, 35.658169, 29.858944>,  <31.249756, 35.701214, 29.906740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018536, 35.658169, 29.858944>,  <30.633169, 35.586430, 29.779284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018536, 35.658169, 29.858944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039458, 0.640059, -0.767312,
		-0.265087, 0.747099, 0.609567,
		0.963417, 0.179352, 0.199150,
		31.307560, 35.711975, 29.918690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672096, 36.323299, 29.762545>,  <30.633169, 35.586430, 29.779284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672096, 36.323299, 29.762545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.034056, 36.161354, 29.710018>,  <31.251232, 36.064186, 29.678503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.034056, 36.161354, 29.710018>,  <30.672096, 36.323299, 29.762545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034056, 36.161354, 29.710018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233578, 0.730292, -0.641961,
		0.355803, 0.550239, 0.755408,
		0.904901, -0.404859, -0.131316,
		31.305527, 36.039898, 29.670624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180832, 36.864441, 29.842386>,  <30.672096, 36.323299, 29.762545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180832, 36.864441, 29.842386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382038, 36.582935, 29.641708>,  <31.502762, 36.414032, 29.521301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382038, 36.582935, 29.641708>,  <31.180832, 36.864441, 29.842386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382038, 36.582935, 29.641708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340497, 0.694897, -0.633388,
		0.794379, 0.147778, 0.589172,
		0.503014, -0.703761, -0.501694,
		31.532942, 36.371807, 29.491199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.045948, 32.428844, 47.852303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.649181, 32.463062, 47.889797>,  <41.411121, 32.483593, 47.912292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.649181, 32.463062, 47.889797>,  <42.045948, 32.428844, 47.852303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649181, 32.463062, 47.889797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095210, 0.013335, 0.995368,
		0.083896, 0.996245, -0.021372,
		-0.991916, 0.085542, 0.093734,
		41.351608, 32.488724, 47.917919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991272, 32.897930, 48.339294>,  <42.045948, 32.428844, 47.852303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991272, 32.897930, 48.339294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.635830, 32.714806, 48.328079>,  <41.422565, 32.604931, 48.321350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.635830, 32.714806, 48.328079>,  <41.991272, 32.897930, 48.339294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635830, 32.714806, 48.328079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054873, 0.045424, 0.997460,
		-0.455372, 0.887890, -0.065485,
		-0.888608, -0.457809, -0.028037,
		41.369247, 32.577461, 48.319668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607281, 33.264324, 48.824856>,  <41.991272, 32.897930, 48.339294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607281, 33.264324, 48.824856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.413410, 32.915737, 48.794846>,  <41.297089, 32.706585, 48.776840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.413410, 32.915737, 48.794846>,  <41.607281, 33.264324, 48.824856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413410, 32.915737, 48.794846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211144, 0.033332, 0.976886,
		-0.848827, 0.489314, -0.200161,
		-0.484676, -0.871471, -0.075023,
		41.268009, 32.654297, 48.772339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913723, 33.429089, 49.049519>,  <41.607281, 33.264324, 48.824856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913723, 33.429089, 49.049519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.954403, 33.031609, 49.068386>,  <40.978813, 32.793121, 49.079708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.954403, 33.031609, 49.068386>,  <40.913723, 33.429089, 49.049519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954403, 33.031609, 49.068386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237247, 0.021819, 0.971204,
		-0.966111, -0.109964, -0.233533,
		0.101702, -0.993696, 0.047168,
		40.984913, 32.733501, 49.082535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265591, 33.160160, 49.264004>,  <40.913723, 33.429089, 49.049519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265591, 33.160160, 49.264004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542427, 32.892117, 49.371307>,  <40.708527, 32.731289, 49.435692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542427, 32.892117, 49.371307>,  <40.265591, 33.160160, 49.264004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542427, 32.892117, 49.371307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304205, 0.066248, 0.950300,
		-0.654580, -0.739297, -0.158002,
		0.692087, -0.670112, 0.268263,
		40.750053, 32.691082, 49.451786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911568, 32.809826, 49.810524>,  <40.265591, 33.160160, 49.264004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911568, 32.809826, 49.810524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.292347, 32.692966, 49.847301>,  <40.520813, 32.622852, 49.869370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.292347, 32.692966, 49.847301>,  <39.911568, 32.809826, 49.810524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292347, 32.692966, 49.847301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090969, 0.016958, 0.995709,
		-0.292452, -0.956223, -0.010433,
		0.951943, -0.292146, 0.091945,
		40.577930, 32.605324, 49.874886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941341, 32.161224, 50.030628>,  <39.911568, 32.809826, 49.810524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941341, 32.161224, 50.030628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.290154, 32.317131, 50.149052>,  <40.499439, 32.410675, 50.220108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.290154, 32.317131, 50.149052>,  <39.941341, 32.161224, 50.030628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290154, 32.317131, 50.149052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250598, -0.164051, 0.954090,
		0.420443, -0.906183, -0.045382,
		0.872025, 0.389768, 0.296061,
		40.551762, 32.434063, 50.237869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052608, 31.769182, 50.557079>,  <39.941341, 32.161224, 50.030628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052608, 31.769182, 50.557079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.299541, 32.077080, 50.622063>,  <40.447701, 32.261818, 50.661053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.299541, 32.077080, 50.622063>,  <40.052608, 31.769182, 50.557079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299541, 32.077080, 50.622063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070636, -0.151435, 0.985940,
		0.783523, -0.620131, -0.039114,
		0.617335, 0.769744, 0.162456,
		40.484741, 32.308002, 50.670799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653252, 31.507343, 50.939877>,  <40.052608, 31.769182, 50.557079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653252, 31.507343, 50.939877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.609840, 31.901974, 50.988682>,  <40.583794, 32.138752, 51.017963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.609840, 31.901974, 50.988682>,  <40.653252, 31.507343, 50.939877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609840, 31.901974, 50.988682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100391, -0.132985, 0.986021,
		0.989012, 0.094759, 0.113476,
		-0.108525, 0.986578, 0.122010,
		40.577282, 32.197948, 51.025284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081692, 31.667595, 51.506500>,  <40.653252, 31.507343, 50.939877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081692, 31.667595, 51.506500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.812725, 31.957258, 51.445244>,  <40.651344, 32.131058, 51.408489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.812725, 31.957258, 51.445244>,  <41.081692, 31.667595, 51.506500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812725, 31.957258, 51.445244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322979, -0.100896, 0.941013,
		0.665992, 0.682211, 0.301732,
		-0.672413, 0.724160, -0.153144,
		40.611000, 32.174507, 51.399300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166279, 32.058701, 52.173637>,  <41.081692, 31.667595, 51.506500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166279, 32.058701, 52.173637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818485, 32.160313, 52.004185>,  <40.609810, 32.221279, 51.902515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818485, 32.160313, 52.004185>,  <41.166279, 32.058701, 52.173637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818485, 32.160313, 52.004185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447207, -0.040648, 0.893506,
		0.209755, 0.966343, 0.148946,
		-0.869488, 0.254027, -0.423629,
		40.557640, 32.236523, 51.877094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881634, 32.498924, 52.688881>,  <41.166279, 32.058701, 52.173637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881634, 32.498924, 52.688881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.571751, 32.411793, 52.451435>,  <40.385822, 32.359512, 52.308968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.571751, 32.411793, 52.451435>,  <40.881634, 32.498924, 52.688881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571751, 32.411793, 52.451435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616296, 0.050128, 0.785918,
		-0.141441, 0.974698, -0.173083,
		-0.774709, -0.217831, -0.593612,
		40.339336, 32.346443, 52.273350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384113, 32.827518, 52.898243>,  <40.881634, 32.498924, 52.688881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384113, 32.827518, 52.898243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.157215, 32.576679, 52.684708>,  <40.021076, 32.426178, 52.556587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.157215, 32.576679, 52.684708>,  <40.384113, 32.827518, 52.898243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157215, 32.576679, 52.684708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693420, 0.013964, 0.720398,
		-0.444304, 0.778817, -0.442761,
		-0.567242, -0.627095, -0.533843,
		39.987041, 32.388550, 52.524555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664955, 33.070652, 52.958115>,  <40.384113, 32.827518, 52.898243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664955, 33.070652, 52.958115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.685452, 32.686031, 52.850189>,  <39.697750, 32.455261, 52.785435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.685452, 32.686031, 52.850189>,  <39.664955, 33.070652, 52.958115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685452, 32.686031, 52.850189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661162, -0.235149, 0.712439,
		-0.748491, 0.141883, -0.647789,
		0.051244, -0.961548, -0.269815,
		39.700825, 32.397568, 52.769245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988861, 33.290600, 53.352638>,  <39.664955, 33.070652, 52.958115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988861, 33.290600, 53.352638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.713943, 33.554932, 53.473259>,  <38.548992, 33.713531, 53.545631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.713943, 33.554932, 53.473259>,  <38.988861, 33.290600, 53.352638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713943, 33.554932, 53.473259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182899, 0.244330, -0.952287,
		-0.702976, -0.709655, -0.047061,
		-0.687294, 0.660827, 0.301553,
		38.507755, 33.753181, 53.563725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236412, 33.187099, 52.956520>,  <38.988861, 33.290600, 53.352638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236412, 33.187099, 52.956520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334770, 33.555645, 53.076931>,  <38.393787, 33.776772, 53.149178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334770, 33.555645, 53.076931>,  <38.236412, 33.187099, 52.956520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334770, 33.555645, 53.076931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204700, 0.352922, -0.912986,
		-0.947434, 0.162882, 0.275386,
		0.245899, 0.921366, 0.301028,
		38.408539, 33.832054, 53.167240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707458, 33.574574, 52.605629>,  <38.236412, 33.187099, 52.956520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707458, 33.574574, 52.605629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.009754, 33.829090, 52.667576>,  <38.191132, 33.981800, 52.704742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.009754, 33.829090, 52.667576>,  <37.707458, 33.574574, 52.605629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009754, 33.829090, 52.667576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048952, 0.180928, -0.982277,
		-0.653037, 0.749930, 0.105587,
		0.755743, 0.636294, 0.154863,
		38.236477, 34.019978, 52.714035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482975, 34.170151, 52.348804>,  <37.707458, 33.574574, 52.605629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482975, 34.170151, 52.348804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.881973, 34.166927, 52.320717>,  <38.121372, 34.164993, 52.303864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.881973, 34.166927, 52.320717>,  <37.482975, 34.170151, 52.348804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881973, 34.166927, 52.320717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067349, 0.192907, -0.978903,
		0.021429, 0.981184, 0.191882,
		0.997499, -0.008054, -0.070216,
		38.181225, 34.164513, 52.299652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602825, 34.655483, 51.867817>,  <37.482975, 34.170151, 52.348804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602825, 34.655483, 51.867817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966385, 34.490864, 51.894764>,  <38.184521, 34.392094, 51.910931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966385, 34.490864, 51.894764>,  <37.602825, 34.655483, 51.867817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966385, 34.490864, 51.894764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144933, 0.160258, -0.976377,
		0.391030, 0.897187, 0.205304,
		0.908895, -0.411548, 0.067366,
		38.239052, 34.367401, 51.914974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068241, 35.164413, 51.512558>,  <37.602825, 34.655483, 51.867817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068241, 35.164413, 51.512558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.250919, 34.808582, 51.515942>,  <38.360527, 34.595081, 51.517971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.250919, 34.808582, 51.515942>,  <38.068241, 35.164413, 51.512558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250919, 34.808582, 51.515942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022948, 0.002269, -0.999734,
		0.889326, 0.456770, 0.021450,
		0.456698, -0.889582, 0.008463,
		38.387928, 34.541706, 51.518482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553391, 35.212822, 51.052792>,  <38.068241, 35.164413, 51.512558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553391, 35.212822, 51.052792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.518642, 34.816463, 51.093925>,  <38.497795, 34.578648, 51.118607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.518642, 34.816463, 51.093925>,  <38.553391, 35.212822, 51.052792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518642, 34.816463, 51.093925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033230, -0.100287, -0.994403,
		0.995665, -0.089801, -0.024216,
		-0.086870, -0.990898, 0.102836,
		38.492580, 34.519196, 51.124775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059666, 34.988720, 50.636200>,  <38.553391, 35.212822, 51.052792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059666, 34.988720, 50.636200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.809212, 34.678814, 50.671276>,  <38.658939, 34.492870, 50.692322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.809212, 34.678814, 50.671276>,  <39.059666, 34.988720, 50.636200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809212, 34.678814, 50.671276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060409, -0.160333, -0.985213,
		0.777368, -0.611582, 0.147193,
		-0.626138, -0.774765, 0.087693,
		38.621368, 34.446384, 50.697582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306511, 34.531204, 50.065952>,  <39.059666, 34.988720, 50.636200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306511, 34.531204, 50.065952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.932251, 34.432369, 50.166759>,  <38.707695, 34.373066, 50.227245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.932251, 34.432369, 50.166759>,  <39.306511, 34.531204, 50.065952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932251, 34.432369, 50.166759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187005, -0.258516, -0.947733,
		0.299326, -0.933872, 0.195673,
		-0.935645, -0.247090, 0.252020,
		38.651558, 34.358242, 50.242367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116016, 33.838634, 49.680908>,  <39.306511, 34.531204, 50.065952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116016, 33.838634, 49.680908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.759541, 33.986931, 49.785473>,  <38.545654, 34.075909, 49.848213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.759541, 33.986931, 49.785473>,  <39.116016, 33.838634, 49.680908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759541, 33.986931, 49.785473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371614, -0.266134, -0.889424,
		-0.260176, -0.889788, 0.374948,
		-0.891185, 0.370743, 0.261416,
		38.492184, 34.098156, 49.863895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506947, 33.390884, 49.365692>,  <39.116016, 33.838634, 49.680908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506947, 33.390884, 49.365692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356670, 33.754139, 49.439606>,  <38.266506, 33.972092, 49.483955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356670, 33.754139, 49.439606>,  <38.506947, 33.390884, 49.365692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356670, 33.754139, 49.439606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399011, 0.021461, -0.916695,
		-0.836449, -0.418127, 0.354294,
		-0.375691, 0.908135, 0.184788,
		38.243961, 34.026581, 49.495041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880844, 33.279491, 49.120285>,  <38.506947, 33.390884, 49.365692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880844, 33.279491, 49.120285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.961281, 33.671303, 49.124058>,  <38.009544, 33.906387, 49.126320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.961281, 33.671303, 49.124058>,  <37.880844, 33.279491, 49.120285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961281, 33.671303, 49.124058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297809, 0.070308, -0.952033,
		-0.933205, 0.188639, 0.305851,
		0.201095, 0.979526, 0.009433,
		38.021610, 33.965160, 49.126888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310188, 33.662434, 48.698086>,  <37.880844, 33.279491, 49.120285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310188, 33.662434, 48.698086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.600578, 33.936287, 48.724110>,  <37.774815, 34.100597, 48.739723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.600578, 33.936287, 48.724110>,  <37.310188, 33.662434, 48.698086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600578, 33.936287, 48.724110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292344, 0.392852, -0.871896,
		-0.622488, 0.613958, 0.485350,
		0.725978, 0.684634, 0.065058,
		37.818371, 34.141678, 48.743626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014076, 34.308544, 48.492901>,  <37.310188, 33.662434, 48.698086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014076, 34.308544, 48.492901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410767, 34.335724, 48.449333>,  <37.648781, 34.352032, 48.423195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410767, 34.335724, 48.449333>,  <37.014076, 34.308544, 48.492901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410767, 34.335724, 48.449333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122718, 0.252731, -0.959722,
		-0.037689, 0.965147, 0.258979,
		0.991726, 0.067952, -0.108916,
		37.708282, 34.356110, 48.416656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462639, 34.758942, 48.675518>,  <37.014076, 34.308544, 48.492901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462639, 34.758942, 48.675518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063194, 34.770004, 48.693443>,  <35.823528, 34.776642, 48.704197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063194, 34.770004, 48.693443>,  <36.462639, 34.758942, 48.675518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063194, 34.770004, 48.693443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037788, -0.216360, 0.975582,
		0.036673, 0.975922, 0.215015,
		-0.998613, 0.027652, 0.044813,
		35.763611, 34.778301, 48.706886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324791, 35.139671, 49.340656>,  <36.462639, 34.758942, 48.675518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324791, 35.139671, 49.340656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985638, 34.952377, 49.241173>,  <35.782146, 34.840000, 49.181480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985638, 34.952377, 49.241173>,  <36.324791, 35.139671, 49.340656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985638, 34.952377, 49.241173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236489, -0.085852, 0.967834,
		-0.474524, 0.879425, -0.037940,
		-0.847880, -0.468233, -0.248713,
		35.731274, 34.811909, 49.166557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741169, 35.398365, 49.745689>,  <36.324791, 35.139671, 49.340656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741169, 35.398365, 49.745689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586868, 35.052917, 49.615856>,  <35.494286, 34.845650, 49.537956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586868, 35.052917, 49.615856>,  <35.741169, 35.398365, 49.745689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586868, 35.052917, 49.615856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215845, -0.257569, 0.941844,
		-0.896997, 0.433380, -0.087049,
		-0.385755, -0.863620, -0.324582,
		35.471142, 34.793831, 49.518482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189648, 35.357830, 50.130535>,  <35.741169, 35.398365, 49.745689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189648, 35.357830, 50.130535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276829, 34.987480, 50.007080>,  <35.329136, 34.765270, 49.933006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276829, 34.987480, 50.007080>,  <35.189648, 35.357830, 50.130535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276829, 34.987480, 50.007080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238593, -0.357194, 0.903043,
		-0.946346, -0.123179, -0.298757,
		0.217950, -0.925873, -0.308639,
		35.342213, 34.709717, 49.914490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602489, 34.907269, 50.272923>,  <35.189648, 35.357830, 50.130535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602489, 34.907269, 50.272923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952232, 34.715675, 50.241749>,  <35.162079, 34.600719, 50.223045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952232, 34.715675, 50.241749>,  <34.602489, 34.907269, 50.272923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952232, 34.715675, 50.241749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079170, -0.299236, 0.950889,
		-0.478776, -0.825250, -0.299561,
		0.874360, -0.478979, -0.077932,
		35.214542, 34.571983, 50.218369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426113, 34.184528, 50.453110>,  <34.602489, 34.907269, 50.272923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426113, 34.184528, 50.453110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815872, 34.258244, 50.504631>,  <35.049728, 34.302471, 50.535545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815872, 34.258244, 50.504631>,  <34.426113, 34.184528, 50.453110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815872, 34.258244, 50.504631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023257, -0.487197, 0.872982,
		0.223635, -0.853626, -0.470437,
		0.974395, 0.184289, 0.128807,
		35.108192, 34.313530, 50.543274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686306, 33.573620, 50.804363>,  <34.426113, 34.184528, 50.453110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686306, 33.573620, 50.804363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004482, 33.798874, 50.893944>,  <35.195389, 33.934025, 50.947693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004482, 33.798874, 50.893944>,  <34.686306, 33.573620, 50.804363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004482, 33.798874, 50.893944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021087, -0.343592, 0.938882,
		0.605664, -0.751548, -0.261432,
		0.795441, 0.563134, 0.223949,
		35.243114, 33.967815, 50.961128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647419, 32.843269, 50.670052>,  <34.686306, 33.573620, 50.804363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647419, 32.843269, 50.670052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270412, 32.778816, 50.787151>,  <34.044209, 32.740147, 50.857410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270412, 32.778816, 50.787151>,  <34.647419, 32.843269, 50.670052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270412, 32.778816, 50.787151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283379, -0.078873, -0.955759,
		0.177093, -0.983776, 0.028677,
		-0.942515, -0.161132, 0.292749,
		33.987659, 32.730476, 50.874977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573727, 32.356361, 50.265812>,  <34.647419, 32.843269, 50.670052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573727, 32.356361, 50.265812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189243, 32.436272, 50.341892>,  <33.958553, 32.484219, 50.387539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189243, 32.436272, 50.341892>,  <34.573727, 32.356361, 50.265812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189243, 32.436272, 50.341892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218294, -0.129428, -0.967262,
		-0.168623, -0.971255, 0.168017,
		-0.961205, 0.199780, 0.190195,
		33.900883, 32.496204, 50.398952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165920, 31.823019, 49.942028>,  <34.573727, 32.356361, 50.265812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165920, 31.823019, 49.942028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895885, 32.113899, 49.991718>,  <33.733864, 32.288429, 50.021534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895885, 32.113899, 49.991718>,  <34.165920, 31.823019, 49.942028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895885, 32.113899, 49.991718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385656, -0.204314, -0.899736,
		-0.628909, -0.655310, 0.418380,
		-0.675087, 0.727203, 0.124229,
		33.693359, 32.332062, 50.028988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560516, 31.541540, 49.712357>,  <34.165920, 31.823019, 49.942028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560516, 31.541540, 49.712357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507317, 31.937906, 49.704346>,  <33.475399, 32.175724, 49.699539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507317, 31.937906, 49.704346>,  <33.560516, 31.541540, 49.712357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507317, 31.937906, 49.704346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371934, -0.068631, -0.925718,
		-0.918682, -0.115668, 0.377683,
		-0.132997, 0.990914, -0.020029,
		33.467419, 32.235180, 49.698338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799839, 31.721195, 49.427834>,  <33.560516, 31.541540, 49.712357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799839, 31.721195, 49.427834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.986675, 32.067825, 49.357544>,  <33.098778, 32.275803, 49.315372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.986675, 32.067825, 49.357544>,  <32.799839, 31.721195, 49.427834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986675, 32.067825, 49.357544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452678, 0.063645, -0.889400,
		-0.759547, 0.494973, 0.422007,
		0.467087, 0.866575, -0.175722,
		33.126801, 32.327797, 49.304829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250103, 32.168571, 49.172295>,  <32.799839, 31.721195, 49.427834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250103, 32.168571, 49.172295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601593, 32.329052, 49.068844>,  <32.812485, 32.425339, 49.006775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601593, 32.329052, 49.068844>,  <32.250103, 32.168571, 49.172295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601593, 32.329052, 49.068844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292840, 0.025230, -0.955828,
		-0.376954, 0.915642, 0.139658,
		0.878721, 0.401201, -0.258626,
		32.865208, 32.449413, 48.991257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160671, 32.792957, 48.741791>,  <32.250103, 32.168571, 49.172295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160671, 32.792957, 48.741791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527977, 32.657543, 48.659637>,  <32.748360, 32.576294, 48.610344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527977, 32.657543, 48.659637>,  <32.160671, 32.792957, 48.741791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527977, 32.657543, 48.659637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255932, -0.111650, -0.960226,
		0.302140, 0.934306, -0.189167,
		0.918265, -0.338536, -0.205385,
		32.803455, 32.555981, 48.598022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.255367, 31.414095, 51.936596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.431488, 31.268326, 52.264820>,  <37.537163, 31.180864, 52.461754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.431488, 31.268326, 52.264820>,  <37.255367, 31.414095, 51.936596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431488, 31.268326, 52.264820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618290, 0.785762, 0.017201,
		-0.651037, 0.499773, 0.571294,
		0.440304, -0.364424, 0.820565,
		37.563580, 31.158998, 52.510990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875973, 31.090786, 51.915672>,  <37.255367, 31.414095, 51.936596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875973, 31.090786, 51.915672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.243969, 31.089071, 51.758907>,  <38.464767, 31.088043, 51.664848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.243969, 31.089071, 51.758907>,  <37.875973, 31.090786, 51.915672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243969, 31.089071, 51.758907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387706, -0.156404, -0.908417,
		-0.057401, 0.987684, -0.145553,
		0.919994, -0.004287, -0.391908,
		38.519966, 31.087786, 51.641335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729897, 31.185543, 51.230423>,  <37.875973, 31.090786, 51.915672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729897, 31.185543, 51.230423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.116859, 31.086245, 51.210403>,  <38.349037, 31.026665, 51.198391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.116859, 31.086245, 51.210403>,  <37.729897, 31.185543, 51.230423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116859, 31.086245, 51.210403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117590, -0.265296, -0.956969,
		0.224285, 0.931661, -0.285840,
		0.967403, -0.248246, -0.050052,
		38.407082, 31.011770, 51.195389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938927, 31.375755, 50.550533>,  <37.729897, 31.185543, 51.230423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938927, 31.375755, 50.550533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.186222, 31.090685, 50.683121>,  <38.334599, 30.919643, 50.762672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.186222, 31.090685, 50.683121>,  <37.938927, 31.375755, 50.550533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186222, 31.090685, 50.683121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130905, -0.509190, -0.850640,
		0.775010, 0.482512, -0.408096,
		0.618243, -0.712676, 0.331464,
		38.371696, 30.876883, 50.782558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502060, 31.498180, 50.087223>,  <37.938927, 31.375755, 50.550533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502060, 31.498180, 50.087223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.531689, 31.122084, 50.220165>,  <38.549465, 30.896425, 50.299931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.531689, 31.122084, 50.220165>,  <38.502060, 31.498180, 50.087223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531689, 31.122084, 50.220165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177909, -0.315466, -0.932110,
		0.981255, 0.128173, 0.143910,
		0.074072, -0.940241, 0.332356,
		38.553909, 30.840012, 50.319874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947548, 31.199154, 49.754341>,  <38.502060, 31.498180, 50.087223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947548, 31.199154, 49.754341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.783638, 30.856722, 49.880333>,  <38.685291, 30.651262, 49.955929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.783638, 30.856722, 49.880333>,  <38.947548, 31.199154, 49.754341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783638, 30.856722, 49.880333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195021, -0.419538, -0.886541,
		0.891098, -0.301850, 0.338868,
		-0.409770, -0.856081, 0.314983,
		38.660706, 30.599897, 49.974827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362446, 30.720404, 49.576431>,  <38.947548, 31.199154, 49.754341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362446, 30.720404, 49.576431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.025341, 30.508286, 49.613411>,  <38.823078, 30.381016, 49.635601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.025341, 30.508286, 49.613411>,  <39.362446, 30.720404, 49.576431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025341, 30.508286, 49.613411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127036, -0.362832, -0.923155,
		0.523088, -0.766251, 0.373146,
		-0.842758, -0.530294, 0.092452,
		38.772514, 30.349197, 49.641148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427284, 30.037699, 49.344559>,  <39.362446, 30.720404, 49.576431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427284, 30.037699, 49.344559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.031857, 30.089050, 49.312931>,  <38.794601, 30.119862, 49.293957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.031857, 30.089050, 49.312931>,  <39.427284, 30.037699, 49.344559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031857, 30.089050, 49.312931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009789, -0.468646, -0.883332,
		-0.150454, -0.874008, 0.462032,
		-0.988569, 0.128378, -0.079066,
		38.735287, 30.127563, 49.289211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167904, 29.474987, 48.955116>,  <39.427284, 30.037699, 49.344559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167904, 29.474987, 48.955116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.831871, 29.689783, 48.924389>,  <38.630249, 29.818661, 48.905952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.831871, 29.689783, 48.924389>,  <39.167904, 29.474987, 48.955116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831871, 29.689783, 48.924389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075148, -0.255450, -0.963897,
		-0.537225, -0.803983, 0.254953,
		-0.840085, 0.536989, -0.076817,
		38.579845, 29.850880, 48.901344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760246, 29.028559, 48.643078>,  <39.167904, 29.474987, 48.955116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760246, 29.028559, 48.643078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.593559, 29.385679, 48.574669>,  <38.493546, 29.599953, 48.533623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.593559, 29.385679, 48.574669>,  <38.760246, 29.028559, 48.643078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593559, 29.385679, 48.574669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082847, -0.224652, -0.970911,
		-0.905252, -0.390430, 0.167583,
		-0.416720, 0.892803, -0.171021,
		38.468544, 29.653521, 48.523361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074669, 29.005995, 48.469589>,  <38.760246, 29.028559, 48.643078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074669, 29.005995, 48.469589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.201813, 29.342434, 48.294537>,  <38.278099, 29.544296, 48.189507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.201813, 29.342434, 48.294537>,  <38.074669, 29.005995, 48.469589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201813, 29.342434, 48.294537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280521, -0.357477, -0.890796,
		-0.905689, 0.405915, 0.122317,
		0.317862, 0.841097, -0.437630,
		38.297173, 29.594763, 48.163246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499435, 29.116547, 48.160267>,  <38.074669, 29.005995, 48.469589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499435, 29.116547, 48.160267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.775150, 29.369289, 48.018482>,  <37.940578, 29.520935, 47.933411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.775150, 29.369289, 48.018482>,  <37.499435, 29.116547, 48.160267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775150, 29.369289, 48.018482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366677, -0.117711, -0.922872,
		-0.624845, 0.766096, 0.150550,
		0.689287, 0.631855, -0.354461,
		37.981937, 29.558846, 47.912144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891289, 29.528915, 48.217239>,  <37.499435, 29.116547, 48.160267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891289, 29.528915, 48.217239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.502037, 29.605930, 48.267754>,  <36.268486, 29.652140, 48.298061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.502037, 29.605930, 48.267754>,  <36.891289, 29.528915, 48.217239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502037, 29.605930, 48.267754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120816, -0.039935, 0.991871,
		0.196016, 0.980477, 0.015601,
		-0.973130, 0.192538, 0.126285,
		36.210098, 29.663692, 48.305637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877548, 30.082460, 48.668644>,  <36.891289, 29.528915, 48.217239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877548, 30.082460, 48.668644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.515778, 29.912930, 48.688198>,  <36.298717, 29.811211, 48.699932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.515778, 29.912930, 48.688198>,  <36.877548, 30.082460, 48.668644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515778, 29.912930, 48.688198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054190, -0.000462, 0.998531,
		-0.423180, 0.905744, 0.023385,
		-0.904424, -0.423825, 0.048887,
		36.244450, 29.785782, 48.702866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332176, 30.517124, 49.046204>,  <36.877548, 30.082460, 48.668644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332176, 30.517124, 49.046204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.192078, 30.142700, 49.059586>,  <36.108021, 29.918045, 49.067616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.192078, 30.142700, 49.059586>,  <36.332176, 30.517124, 49.046204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192078, 30.142700, 49.059586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108242, 0.075930, 0.991221,
		-0.930383, 0.343547, -0.127915,
		-0.350244, -0.936061, 0.033458,
		36.087006, 29.861881, 49.069622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615864, 30.453157, 49.403561>,  <36.332176, 30.517124, 49.046204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615864, 30.453157, 49.403561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.787983, 30.093163, 49.431480>,  <35.891254, 29.877167, 49.448231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.787983, 30.093163, 49.431480>,  <35.615864, 30.453157, 49.403561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787983, 30.093163, 49.431480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269043, -0.054056, 0.961610,
		-0.861662, -0.432555, -0.265395,
		0.430295, -0.899985, 0.069798,
		35.917072, 29.823168, 49.452419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184502, 30.135113, 49.870533>,  <35.615864, 30.453157, 49.403561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184502, 30.135113, 49.870533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.529545, 29.934166, 49.894306>,  <35.736572, 29.813599, 49.908569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.529545, 29.934166, 49.894306>,  <35.184502, 30.135113, 49.870533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529545, 29.934166, 49.894306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145366, -0.133623, 0.980313,
		-0.484536, -0.854267, -0.188292,
		0.862609, -0.502368, 0.059436,
		35.788326, 29.783455, 49.912136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985958, 29.510859, 50.165936>,  <35.184502, 30.135113, 49.870533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985958, 29.510859, 50.165936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379044, 29.542549, 50.232876>,  <35.614895, 29.561563, 50.273041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379044, 29.542549, 50.232876>,  <34.985958, 29.510859, 50.165936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379044, 29.542549, 50.232876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129360, -0.352867, 0.926688,
		0.132472, -0.932313, -0.336516,
		0.982709, 0.079229, 0.167349,
		35.673855, 29.566317, 50.283081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241879, 28.946959, 50.605522>,  <34.985958, 29.510859, 50.165936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241879, 28.946959, 50.605522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.564384, 29.177803, 50.657501>,  <35.757889, 29.316309, 50.688690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.564384, 29.177803, 50.657501>,  <35.241879, 28.946959, 50.605522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564384, 29.177803, 50.657501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001198, -0.218082, 0.975930,
		0.591558, -0.787010, -0.175140,
		0.806262, 0.577109, 0.129951,
		35.806263, 29.350935, 50.696487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710224, 28.553806, 51.018547>,  <35.241879, 28.946959, 50.605522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710224, 28.553806, 51.018547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814205, 28.939651, 51.036221>,  <35.876595, 29.171158, 51.046825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814205, 28.939651, 51.036221>,  <35.710224, 28.553806, 51.018547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814205, 28.939651, 51.036221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129627, -0.080205, 0.988314,
		0.956882, -0.251182, -0.145889,
		0.259948, 0.964611, 0.044187,
		35.892189, 29.229034, 51.049477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284092, 28.575792, 51.482372>,  <35.710224, 28.553806, 51.018547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284092, 28.575792, 51.482372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.141506, 28.949183, 51.466599>,  <36.055954, 29.173216, 51.457134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.141506, 28.949183, 51.466599>,  <36.284092, 28.575792, 51.482372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141506, 28.949183, 51.466599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029744, 0.053523, 0.998124,
		0.933834, 0.354626, -0.046844,
		-0.356468, 0.933475, -0.039434,
		36.034565, 29.229225, 51.454769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737034, 28.963144, 51.958618>,  <36.284092, 28.575792, 51.482372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737034, 28.963144, 51.958618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.402882, 29.178249, 51.913105>,  <36.202389, 29.307312, 51.885796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.402882, 29.178249, 51.913105>,  <36.737034, 28.963144, 51.958618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402882, 29.178249, 51.913105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019636, 0.177671, 0.983894,
		0.549317, 0.824163, -0.137864,
		-0.835383, 0.537763, -0.113781,
		36.152267, 29.339579, 51.878971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746510, 29.442783, 52.400143>,  <36.737034, 28.963144, 51.958618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746510, 29.442783, 52.400143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.355244, 29.498802, 52.338722>,  <36.120483, 29.532413, 52.301868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.355244, 29.498802, 52.338722>,  <36.746510, 29.442783, 52.400143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355244, 29.498802, 52.338722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098092, 0.340242, 0.935208,
		0.183219, 0.929850, -0.319076,
		-0.978166, 0.140049, -0.153550,
		36.061794, 29.540817, 52.292656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530132, 30.146730, 52.711914>,  <36.746510, 29.442783, 52.400143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530132, 30.146730, 52.711914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.208946, 29.909420, 52.689060>,  <36.016235, 29.767035, 52.675346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.208946, 29.909420, 52.689060>,  <36.530132, 30.146730, 52.711914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208946, 29.909420, 52.689060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244620, 0.240618, 0.939289,
		-0.543509, 0.768197, -0.338336,
		-0.802969, -0.593276, -0.057139,
		35.968056, 29.731438, 52.671917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969406, 30.599014, 52.889416>,  <36.530132, 30.146730, 52.711914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969406, 30.599014, 52.889416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.881275, 30.212635, 52.943680>,  <35.828396, 29.980808, 52.976238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.881275, 30.212635, 52.943680>,  <35.969406, 30.599014, 52.889416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881275, 30.212635, 52.943680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343608, 0.207018, 0.916012,
		-0.912902, 0.155211, -0.377518,
		-0.220328, -0.965947, 0.135656,
		35.815178, 29.922852, 52.984375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237461, 30.583767, 53.260864>,  <35.969406, 30.599014, 52.889416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237461, 30.583767, 53.260864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.461105, 30.254793, 53.302818>,  <35.595291, 30.057409, 53.327991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.461105, 30.254793, 53.302818>,  <35.237461, 30.583767, 53.260864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461105, 30.254793, 53.302818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163275, 0.014806, 0.986470,
		-0.812860, -0.568666, -0.126005,
		0.559106, -0.822435, 0.104884,
		35.628838, 30.008062, 53.334282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722755, 30.484943, 52.718819>,  <35.237461, 30.583767, 53.260864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722755, 30.484943, 52.718819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.741726, 30.825357, 52.928005>,  <34.753109, 31.029606, 53.053516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.741726, 30.825357, 52.928005>,  <34.722755, 30.484943, 52.718819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741726, 30.825357, 52.928005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532315, 0.464544, -0.707700,
		-0.845217, -0.244820, 0.475049,
		0.047422, 0.851036, 0.522962,
		34.755951, 31.080667, 53.084892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003685, 30.811363, 52.663155>,  <34.722755, 30.484943, 52.718819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003685, 30.811363, 52.663155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.242008, 31.120132, 52.751831>,  <34.385002, 31.305395, 52.805035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.242008, 31.120132, 52.751831>,  <34.003685, 30.811363, 52.663155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242008, 31.120132, 52.751831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470191, 0.559045, -0.682927,
		-0.651102, 0.302658, 0.696035,
		0.595808, 0.771925, 0.221688,
		34.420750, 31.351709, 52.818336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523476, 31.410566, 52.627178>,  <34.003685, 30.811363, 52.663155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523476, 31.410566, 52.627178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.902775, 31.532238, 52.590729>,  <34.130356, 31.605240, 52.568859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.902775, 31.532238, 52.590729>,  <33.523476, 31.410566, 52.627178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902775, 31.532238, 52.590729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307765, 0.809771, -0.499551,
		-0.078160, 0.501743, 0.861478,
		0.948247, 0.304177, -0.091127,
		34.187248, 31.623491, 52.563389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477119, 32.100746, 52.710602>,  <33.523476, 31.410566, 52.627178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477119, 32.100746, 52.710602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.805279, 32.026733, 52.494190>,  <34.002174, 31.982327, 52.364346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.805279, 32.026733, 52.494190>,  <33.477119, 32.100746, 52.710602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805279, 32.026733, 52.494190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327080, 0.624242, -0.709465,
		0.469004, 0.759003, 0.451607,
		0.820398, -0.185030, -0.541027,
		34.051399, 31.971224, 52.331882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596546, 32.726547, 52.363819>,  <33.477119, 32.100746, 52.710602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596546, 32.726547, 52.363819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.822632, 32.479755, 52.144775>,  <33.958282, 32.331680, 52.013351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.822632, 32.479755, 52.144775>,  <33.596546, 32.726547, 52.363819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822632, 32.479755, 52.144775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279426, 0.481384, -0.830777,
		0.776179, 0.622583, 0.099686,
		0.565215, -0.616977, -0.547605,
		33.992195, 32.294662, 51.980495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080116, 33.130573, 51.940311>,  <33.596546, 32.726547, 52.363819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080116, 33.130573, 51.940311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028088, 32.773308, 51.768105>,  <33.996872, 32.558949, 51.664780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028088, 32.773308, 51.768105>,  <34.080116, 33.130573, 51.940311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028088, 32.773308, 51.768105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138111, 0.446294, -0.884165,
		0.981839, -0.055543, -0.181405,
		-0.130069, -0.893161, -0.430517,
		33.989067, 32.505360, 51.638950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523052, 33.162285, 51.423214>,  <34.080116, 33.130573, 51.940311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523052, 33.162285, 51.423214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.257256, 32.874729, 51.341579>,  <34.097778, 32.702198, 51.292599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.257256, 32.874729, 51.341579>,  <34.523052, 33.162285, 51.423214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257256, 32.874729, 51.341579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023880, 0.293385, -0.955696,
		0.746912, -0.630180, -0.212120,
		-0.664493, -0.718887, -0.204084,
		34.057907, 32.659061, 51.280354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287987, 33.120140, 51.273296>,  <34.523052, 33.162285, 51.423214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287987, 33.120140, 51.273296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.318268, 33.515625, 51.325020>,  <35.336437, 33.752914, 51.356052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.318268, 33.515625, 51.325020>,  <35.287987, 33.120140, 51.273296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318268, 33.515625, 51.325020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150174, -0.139505, 0.978768,
		0.985757, -0.054673, -0.159039,
		0.075699, 0.988711, 0.129307,
		35.340977, 33.812237, 51.363811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722145, 33.148209, 51.801579>,  <35.287987, 33.120140, 51.273296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722145, 33.148209, 51.801579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.590591, 33.525745, 51.814209>,  <35.511662, 33.752266, 51.821789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.590591, 33.525745, 51.814209>,  <35.722145, 33.148209, 51.801579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590591, 33.525745, 51.814209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146984, 0.018131, 0.988973,
		0.932863, 0.329896, -0.144692,
		-0.328882, 0.943843, 0.031576,
		35.491928, 33.808899, 51.823681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254921, 33.453072, 52.223713>,  <35.722145, 33.148209, 51.801579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254921, 33.453072, 52.223713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.930843, 33.687401, 52.215775>,  <35.736397, 33.827999, 52.211010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.930843, 33.687401, 52.215775>,  <36.254921, 33.453072, 52.223713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930843, 33.687401, 52.215775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141470, 0.228291, 0.963260,
		0.568834, 0.777619, -0.267837,
		-0.810194, 0.585826, -0.019850,
		35.687786, 33.863148, 52.209820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425827, 34.067905, 52.464973>,  <36.254921, 33.453072, 52.223713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425827, 34.067905, 52.464973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.030926, 34.081867, 52.527077>,  <35.793983, 34.090244, 52.564339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.030926, 34.081867, 52.527077>,  <36.425827, 34.067905, 52.464973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030926, 34.081867, 52.527077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159129, 0.219866, 0.962464,
		-0.000538, 0.974905, -0.222619,
		-0.987257, 0.034908, 0.155254,
		35.734749, 34.092339, 52.573654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385887, 34.636581, 52.891541>,  <36.425827, 34.067905, 52.464973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385887, 34.636581, 52.891541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.053734, 34.421852, 52.951260>,  <35.854443, 34.293015, 52.987091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.053734, 34.421852, 52.951260>,  <36.385887, 34.636581, 52.891541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053734, 34.421852, 52.951260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043158, 0.205167, 0.977775,
		-0.555518, 0.818372, -0.147200,
		-0.830384, -0.536819, 0.149293,
		35.804619, 34.260807, 52.996048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950596, 35.028889, 53.411785>,  <36.385887, 34.636581, 52.891541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950596, 35.028889, 53.411785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.809452, 34.655193, 53.391064>,  <35.724766, 34.430977, 53.378632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.809452, 34.655193, 53.391064>,  <35.950596, 35.028889, 53.411785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809452, 34.655193, 53.391064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136654, -0.106229, 0.984907,
		-0.925645, 0.340451, 0.165152,
		-0.352856, -0.934242, -0.051807,
		35.703594, 34.374920, 53.375523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296822, 34.994080, 53.918556>,  <35.950596, 35.028889, 53.411785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296822, 34.994080, 53.918556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.481186, 34.645412, 53.851921>,  <35.591805, 34.436211, 53.811939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.481186, 34.645412, 53.851921>,  <35.296822, 34.994080, 53.918556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481186, 34.645412, 53.851921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214364, -0.072798, 0.974037,
		-0.861166, -0.484656, 0.153301,
		0.460913, -0.871670, -0.166584,
		35.619461, 34.383911, 53.801945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266651, 34.730389, 54.591003>,  <35.296822, 34.994080, 53.918556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266651, 34.730389, 54.591003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.526600, 34.484474, 54.412251>,  <35.682571, 34.336926, 54.305000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.526600, 34.484474, 54.412251>,  <35.266651, 34.730389, 54.591003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526600, 34.484474, 54.412251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422107, -0.197014, 0.884879,
		-0.632050, -0.763694, 0.131469,
		0.649876, -0.614782, -0.446883,
		35.721561, 34.300041, 54.278187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248604, 34.106457, 55.004784>,  <35.266651, 34.730389, 54.591003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248604, 34.106457, 55.004784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.597420, 34.120682, 54.809525>,  <35.806709, 34.129215, 54.692368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.597420, 34.120682, 54.809525>,  <35.248604, 34.106457, 55.004784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597420, 34.120682, 54.809525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489211, -0.093832, 0.867103,
		-0.014967, -0.994953, -0.099224,
		0.872037, 0.035564, -0.488146,
		35.859032, 34.131351, 54.663082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.570995, 34.579327, 38.352448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946518, 34.617783, 38.484745>,  <37.171833, 34.640858, 38.564125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946518, 34.617783, 38.484745>,  <36.570995, 34.579327, 38.352448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946518, 34.617783, 38.484745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282066, -0.336502, 0.898446,
		0.197674, -0.936762, -0.288794,
		0.938810, 0.096141, 0.330746,
		37.228161, 34.646626, 38.583969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783890, 34.041359, 38.717300>,  <36.570995, 34.579327, 38.352448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783890, 34.041359, 38.717300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922424, 34.386009, 38.865711>,  <37.005543, 34.592800, 38.954758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922424, 34.386009, 38.865711>,  <36.783890, 34.041359, 38.717300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922424, 34.386009, 38.865711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594789, -0.104161, 0.797105,
		0.725450, -0.496745, 0.476410,
		0.346334, 0.861624, 0.371022,
		37.026325, 34.644497, 38.977016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147449, 33.858490, 39.424725>,  <36.783890, 34.041359, 38.717300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147449, 33.858490, 39.424725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031864, 34.241077, 39.441040>,  <36.962513, 34.470631, 39.450829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031864, 34.241077, 39.441040>,  <37.147449, 33.858490, 39.424725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031864, 34.241077, 39.441040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358058, -0.147491, 0.921977,
		0.887860, 0.251811, 0.385091,
		-0.288962, 0.956471, 0.040789,
		36.945175, 34.528019, 39.453278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164513, 33.934174, 40.063179>,  <37.147449, 33.858490, 39.424725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164513, 33.934174, 40.063179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985821, 34.278240, 39.964764>,  <36.878605, 34.484680, 39.905712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985821, 34.278240, 39.964764>,  <37.164513, 33.934174, 40.063179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985821, 34.278240, 39.964764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446497, 0.023961, 0.894464,
		0.775287, 0.509444, 0.373360,
		-0.446733, 0.860170, -0.246042,
		36.851799, 34.536293, 39.890949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143749, 34.365475, 40.663418>,  <37.164513, 33.934174, 40.063179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143749, 34.365475, 40.663418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856461, 34.533749, 40.441727>,  <36.684086, 34.634712, 40.308712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856461, 34.533749, 40.441727>,  <37.143749, 34.365475, 40.663418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856461, 34.533749, 40.441727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612736, -0.004963, 0.790272,
		0.329708, 0.907191, 0.261335,
		-0.718225, 0.420689, -0.554232,
		36.640991, 34.659954, 40.275455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028549, 35.045036, 40.922543>,  <37.143749, 34.365475, 40.663418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028549, 35.045036, 40.922543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699596, 34.911293, 40.738415>,  <36.502224, 34.831047, 40.627937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699596, 34.911293, 40.738415>,  <37.028549, 35.045036, 40.922543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699596, 34.911293, 40.738415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559819, 0.331271, 0.759514,
		-0.101461, 0.882306, -0.459611,
		-0.822379, -0.334360, -0.460321,
		36.452881, 34.810986, 40.600319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605030, 35.646839, 40.983387>,  <37.028549, 35.045036, 40.922543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605030, 35.646839, 40.983387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372990, 35.336102, 40.885406>,  <36.233765, 35.149658, 40.826618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372990, 35.336102, 40.885406>,  <36.605030, 35.646839, 40.983387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372990, 35.336102, 40.885406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637913, 0.246283, 0.729665,
		-0.506510, 0.579532, -0.638428,
		-0.580099, -0.776844, -0.244947,
		36.198959, 35.103046, 40.811924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977234, 35.918713, 41.057549>,  <36.605030, 35.646839, 40.983387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977234, 35.918713, 41.057549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929989, 35.522369, 41.083637>,  <35.901642, 35.284565, 41.099293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929989, 35.522369, 41.083637>,  <35.977234, 35.918713, 41.057549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929989, 35.522369, 41.083637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311059, 0.099298, 0.945189,
		-0.943022, 0.091353, -0.319943,
		-0.118116, -0.990855, 0.065224,
		35.894554, 35.225113, 41.103203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349182, 35.884964, 41.393669>,  <35.977234, 35.918713, 41.057549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349182, 35.884964, 41.393669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484222, 35.511478, 41.441353>,  <35.565247, 35.287388, 41.469963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484222, 35.511478, 41.441353>,  <35.349182, 35.884964, 41.393669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484222, 35.511478, 41.441353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419738, -0.035972, 0.906932,
		-0.842524, -0.356218, -0.404058,
		0.337600, -0.933710, 0.119211,
		35.585503, 35.231365, 41.477116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744873, 35.391586, 41.612457>,  <35.349182, 35.884964, 41.393669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744873, 35.391586, 41.612457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095200, 35.237926, 41.729324>,  <35.305397, 35.145729, 41.799446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095200, 35.237926, 41.729324>,  <34.744873, 35.391586, 41.612457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095200, 35.237926, 41.729324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406378, -0.260375, 0.875821,
		-0.260375, -0.885794, -0.384154,
		-0.875821, 0.384154, -0.292172,
		35.357944, 35.122681, 41.816975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555367, 34.933651, 42.068161>,  <34.744873, 35.391586, 41.612457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555367, 34.933651, 42.068161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946278, 34.984566, 42.135952>,  <35.180824, 35.015114, 42.176624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946278, 34.984566, 42.135952>,  <34.555367, 34.933651, 42.068161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946278, 34.984566, 42.135952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165739, -0.039462, 0.985380,
		0.132114, -0.991081, -0.017469,
		0.977280, 0.127288, 0.169474,
		35.239460, 35.022751, 42.186794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670658, 34.475780, 42.637775>,  <34.555367, 34.933651, 42.068161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670658, 34.475780, 42.637775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002468, 34.697021, 42.668659>,  <35.201553, 34.829765, 42.687191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002468, 34.697021, 42.668659>,  <34.670658, 34.475780, 42.637775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002468, 34.697021, 42.668659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234661, 0.219752, 0.946913,
		0.506770, -0.803610, 0.312081,
		0.829529, 0.553100, 0.077212,
		35.251328, 34.862953, 42.691822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710018, 33.675266, 42.676071>,  <34.670658, 34.475780, 42.637775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710018, 33.675266, 42.676071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323898, 33.570831, 42.678406>,  <34.092228, 33.508171, 42.679806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323898, 33.570831, 42.678406>,  <34.710018, 33.675266, 42.676071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323898, 33.570831, 42.678406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067603, 0.228238, -0.971255,
		0.252261, -0.937942, -0.237968,
		-0.965295, -0.261097, 0.005832,
		34.034309, 33.492504, 42.680157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657581, 33.161865, 42.177425>,  <34.710018, 33.675266, 42.676071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657581, 33.161865, 42.177425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303333, 33.339474, 42.231861>,  <34.090782, 33.446037, 42.264523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303333, 33.339474, 42.231861>,  <34.657581, 33.161865, 42.177425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303333, 33.339474, 42.231861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130688, 0.042909, -0.990495,
		-0.445638, -0.894989, 0.020027,
		-0.885622, 0.444019, 0.136086,
		34.037647, 33.472679, 42.272686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136456, 32.872238, 41.668232>,  <34.657581, 33.161865, 42.177425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136456, 32.872238, 41.668232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968613, 33.208511, 41.805157>,  <33.867908, 33.410275, 41.887310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968613, 33.208511, 41.805157>,  <34.136456, 32.872238, 41.668232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968613, 33.208511, 41.805157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270121, 0.244379, -0.931297,
		-0.866582, -0.483243, 0.124544,
		-0.419607, 0.840687, 0.342309,
		33.842731, 33.460716, 41.907848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551746, 32.812504, 41.332134>,  <34.136456, 32.872238, 41.668232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551746, 32.812504, 41.332134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551815, 33.191280, 41.460693>,  <33.551857, 33.418549, 41.537827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551815, 33.191280, 41.460693>,  <33.551746, 32.812504, 41.332134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551815, 33.191280, 41.460693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548495, 0.268824, -0.791762,
		-0.836154, -0.176150, 0.519440,
		0.000169, 0.946945, 0.321396,
		33.551865, 33.475365, 41.557114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854343, 33.046318, 41.346092>,  <33.551746, 32.812504, 41.332134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854343, 33.046318, 41.346092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093182, 33.365013, 41.308830>,  <33.236485, 33.556232, 41.286472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093182, 33.365013, 41.308830>,  <32.854343, 33.046318, 41.346092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093182, 33.365013, 41.308830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508446, 0.286084, -0.812182,
		-0.620448, 0.532317, 0.575919,
		0.597099, 0.796740, -0.093154,
		33.272312, 33.604034, 41.280884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410172, 33.496651, 40.963188>,  <32.854343, 33.046318, 41.346092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410172, 33.496651, 40.963188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753635, 33.700497, 40.941315>,  <32.959713, 33.822803, 40.928192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753635, 33.700497, 40.941315>,  <32.410172, 33.496651, 40.963188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753635, 33.700497, 40.941315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273461, 0.365276, -0.889827,
		-0.433497, 0.779015, 0.453009,
		0.858662, 0.509618, -0.054684,
		33.011234, 33.853382, 40.924908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274593, 34.164669, 40.908104>,  <32.410172, 33.496651, 40.963188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274593, 34.164669, 40.908104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641808, 34.145771, 40.750637>,  <32.862137, 34.134430, 40.656158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641808, 34.145771, 40.750637>,  <32.274593, 34.164669, 40.908104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641808, 34.145771, 40.750637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341404, 0.410661, -0.845459,
		0.201610, 0.910563, 0.360872,
		0.918040, -0.047250, -0.393663,
		32.917221, 34.131596, 40.632538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426464, 34.788162, 40.634525>,  <32.274593, 34.164669, 40.908104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426464, 34.788162, 40.634525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656647, 34.529339, 40.434456>,  <32.794754, 34.374046, 40.314415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656647, 34.529339, 40.434456>,  <32.426464, 34.788162, 40.634525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656647, 34.529339, 40.434456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312696, 0.391034, -0.865629,
		0.755696, 0.654530, 0.022689,
		0.575452, -0.647058, -0.500171,
		32.829281, 34.335220, 40.284405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630383, 35.095825, 40.035473>,  <32.426464, 34.788162, 40.634525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630383, 35.095825, 40.035473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713440, 34.716793, 39.938339>,  <32.763275, 34.489372, 39.880058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713440, 34.716793, 39.938339>,  <32.630383, 35.095825, 40.035473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713440, 34.716793, 39.938339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302365, 0.173916, -0.937192,
		0.930300, 0.268029, -0.250403,
		0.207646, -0.947583, -0.242837,
		32.775734, 34.432518, 39.865490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707294, 35.100613, 39.233379>,  <32.630383, 35.095825, 40.035473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707294, 35.100613, 39.233379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645702, 34.713230, 39.311749>,  <32.608746, 34.480801, 39.358768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645702, 34.713230, 39.311749>,  <32.707294, 35.100613, 39.233379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645702, 34.713230, 39.311749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277582, -0.147900, -0.949249,
		0.948282, -0.200548, -0.246053,
		-0.153979, -0.968455, 0.195919,
		32.599510, 34.422695, 39.370525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934532, 34.861610, 38.564911>,  <32.707294, 35.100613, 39.233379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934532, 34.861610, 38.564911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722496, 34.603821, 38.785332>,  <32.595276, 34.449146, 38.917583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722496, 34.603821, 38.785332>,  <32.934532, 34.861610, 38.564911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722496, 34.603821, 38.785332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518589, -0.267766, -0.812014,
		0.670873, -0.716212, -0.192276,
		-0.530090, -0.644470, 0.551056,
		32.563469, 34.410480, 38.950649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884045, 34.185085, 38.124950>,  <32.934532, 34.861610, 38.564911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884045, 34.185085, 38.124950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602524, 34.194336, 38.408958>,  <32.433613, 34.199886, 38.579361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602524, 34.194336, 38.408958>,  <32.884045, 34.185085, 38.124950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602524, 34.194336, 38.408958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698265, -0.206437, -0.685427,
		0.130720, -0.978187, 0.161441,
		-0.703803, 0.023129, 0.710019,
		32.391384, 34.201275, 38.621964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413372, 33.607410, 37.992111>,  <32.884045, 34.185085, 38.124950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413372, 33.607410, 37.992111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223495, 33.872620, 38.223652>,  <32.109570, 34.031746, 38.362576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223495, 33.872620, 38.223652>,  <32.413372, 33.607410, 37.992111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223495, 33.872620, 38.223652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794614, -0.040017, -0.605794,
		-0.378489, -0.747532, 0.545841,
		-0.474694, 0.663019, 0.578854,
		32.081089, 34.071526, 38.397308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690533, 33.335632, 37.992699>,  <32.413372, 33.607410, 37.992111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690533, 33.335632, 37.992699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683050, 33.717419, 38.111790>,  <31.678560, 33.946491, 38.183243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683050, 33.717419, 38.111790>,  <31.690533, 33.335632, 37.992699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683050, 33.717419, 38.111790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822527, 0.154599, -0.547311,
		-0.568419, -0.255125, 0.782184,
		-0.018708, 0.954468, 0.297724,
		31.677437, 34.003757, 38.201107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308842, 32.955666, 38.407047>,  <31.690533, 33.335632, 37.992699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308842, 32.955666, 38.407047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367870, 33.095631, 38.777081>,  <32.403286, 33.179607, 38.999100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367870, 33.095631, 38.777081>,  <32.308842, 32.955666, 38.407047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367870, 33.095631, 38.777081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859352, 0.417674, -0.295065,
		-0.489631, 0.838518, -0.239059,
		0.147569, 0.349909, 0.925088,
		32.412140, 33.200603, 39.054607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666267, 32.416042, 38.262802>,  <32.308842, 32.955666, 38.407047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666267, 32.416042, 38.262802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864796, 32.251587, 38.568645>,  <32.983913, 32.152912, 38.752151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864796, 32.251587, 38.568645>,  <32.666267, 32.416042, 38.262802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864796, 32.251587, 38.568645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751851, 0.643902, -0.141809,
		-0.434031, 0.645256, 0.628699,
		0.496323, -0.411139, 0.764610,
		33.013691, 32.128246, 38.798027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924438, 31.683884, 38.451008>,  <32.666267, 32.416042, 38.262802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924438, 31.683884, 38.451008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285854, 31.525301, 38.385975>,  <33.502705, 31.430151, 38.346954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285854, 31.525301, 38.385975>,  <32.924438, 31.683884, 38.451008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285854, 31.525301, 38.385975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020087, -0.418195, 0.908135,
		-0.428033, -0.817270, -0.385820,
		0.903540, -0.396462, -0.162585,
		33.556919, 31.406364, 38.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770657, 30.987377, 38.719845>,  <32.924438, 31.683884, 38.451008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770657, 30.987377, 38.719845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157944, 31.087069, 38.711399>,  <33.390316, 31.146883, 38.706333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157944, 31.087069, 38.711399>,  <32.770657, 30.987377, 38.719845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157944, 31.087069, 38.711399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080814, -0.231822, 0.969396,
		0.236706, -0.940289, -0.244594,
		0.968214, 0.249229, -0.021114,
		33.448406, 31.161837, 38.705063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075104, 30.424328, 39.036194>,  <32.770657, 30.987377, 38.719845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075104, 30.424328, 39.036194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313599, 30.743580, 39.070812>,  <33.456696, 30.935131, 39.091583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313599, 30.743580, 39.070812>,  <33.075104, 30.424328, 39.036194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313599, 30.743580, 39.070812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223526, -0.268581, 0.936963,
		0.771062, -0.539308, -0.338541,
		0.596237, 0.798130, 0.086543,
		33.492470, 30.983019, 39.096775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695747, 30.183777, 39.251480>,  <33.075104, 30.424328, 39.036194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695747, 30.183777, 39.251480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708279, 30.569311, 39.357342>,  <33.715797, 30.800631, 39.420860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708279, 30.569311, 39.357342>,  <33.695747, 30.183777, 39.251480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708279, 30.569311, 39.357342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204649, -0.265362, 0.942179,
		0.978334, 0.024649, -0.205560,
		0.031324, 0.963834, 0.264657,
		33.717674, 30.858461, 39.436737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368004, 30.311100, 39.319767>,  <33.695747, 30.183777, 39.251480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368004, 30.311100, 39.319767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133835, 30.549776, 39.539307>,  <33.993332, 30.692982, 39.671032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133835, 30.549776, 39.539307>,  <34.368004, 30.311100, 39.319767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133835, 30.549776, 39.539307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462407, -0.310316, 0.830592,
		0.665924, 0.740042, -0.094247,
		-0.585427, 0.596692, 0.548848,
		33.958206, 30.728785, 39.703960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855106, 30.507523, 39.795269>,  <34.368004, 30.311100, 39.319767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855106, 30.507523, 39.795269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492844, 30.595594, 39.940220>,  <34.275486, 30.648438, 40.027191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492844, 30.595594, 39.940220>,  <34.855106, 30.507523, 39.795269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492844, 30.595594, 39.940220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300920, -0.268349, 0.915115,
		0.298731, 0.937822, 0.176775,
		-0.905653, 0.220178, 0.362374,
		34.221149, 30.661648, 40.048931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016846, 30.896467, 40.365559>,  <34.855106, 30.507523, 39.795269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016846, 30.896467, 40.365559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650715, 30.760601, 40.452087>,  <34.431034, 30.679081, 40.504005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650715, 30.760601, 40.452087>,  <35.016846, 30.896467, 40.365559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650715, 30.760601, 40.452087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319233, -0.284582, 0.903938,
		-0.245475, 0.896460, 0.368920,
		-0.915332, -0.339665, 0.216322,
		34.376114, 30.658701, 40.516983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976910, 31.147375, 40.979839>,  <35.016846, 30.896467, 40.365559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976910, 31.147375, 40.979839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704884, 30.857903, 40.932854>,  <34.541668, 30.684219, 40.904663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704884, 30.857903, 40.932854>,  <34.976910, 31.147375, 40.979839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704884, 30.857903, 40.932854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196282, -0.334090, 0.921877,
		-0.706390, 0.603878, 0.369248,
		-0.680064, -0.723682, -0.117467,
		34.500866, 30.640799, 40.897614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580952, 31.136810, 41.537594>,  <34.976910, 31.147375, 40.979839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580952, 31.136810, 41.537594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493145, 30.765915, 41.416241>,  <34.440460, 30.543379, 41.343430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493145, 30.765915, 41.416241>,  <34.580952, 31.136810, 41.537594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493145, 30.765915, 41.416241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142078, -0.338040, 0.930346,
		-0.965207, 0.161126, 0.205946,
		-0.219521, -0.927236, -0.303386,
		34.427288, 30.487743, 41.325226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935390, 30.934622, 41.817760>,  <34.580952, 31.136810, 41.537594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935390, 30.934622, 41.817760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177139, 30.622738, 41.752296>,  <34.322189, 30.435608, 41.713017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177139, 30.622738, 41.752296>,  <33.935390, 30.934622, 41.817760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177139, 30.622738, 41.752296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089874, -0.137391, 0.986431,
		-0.791614, -0.610883, -0.012960,
		0.604375, -0.779708, -0.163663,
		34.358452, 30.388824, 41.703197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723595, 30.527161, 42.330212>,  <33.935390, 30.934622, 41.817760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723595, 30.527161, 42.330212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065609, 30.357607, 42.210716>,  <34.270817, 30.255875, 42.139019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065609, 30.357607, 42.210716>,  <33.723595, 30.527161, 42.330212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065609, 30.357607, 42.210716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212595, -0.238915, 0.947483,
		-0.472995, -0.873637, -0.114164,
		0.855032, -0.423884, -0.298736,
		34.322117, 30.230442, 42.121094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717026, 29.849974, 42.630978>,  <33.723595, 30.527161, 42.330212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717026, 29.849974, 42.630978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109535, 29.884367, 42.562031>,  <34.345039, 29.905003, 42.520660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109535, 29.884367, 42.562031>,  <33.717026, 29.849974, 42.630978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109535, 29.884367, 42.562031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188317, -0.239975, 0.952338,
		0.040523, -0.966963, -0.251674,
		0.981272, 0.085986, -0.172372,
		34.403915, 29.910162, 42.510319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968262, 29.291189, 43.019226>,  <33.717026, 29.849974, 42.630978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968262, 29.291189, 43.019226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275040, 29.537931, 42.948467>,  <34.459106, 29.685976, 42.906013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275040, 29.537931, 42.948467>,  <33.968262, 29.291189, 43.019226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275040, 29.537931, 42.948467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300405, -0.101521, 0.948393,
		0.567062, -0.780502, -0.263167,
		0.766941, 0.616854, -0.176898,
		34.505123, 29.722988, 42.895397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558140, 28.955696, 43.275742>,  <33.968262, 29.291189, 43.019226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558140, 28.955696, 43.275742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650471, 29.344765, 43.265713>,  <34.705868, 29.578205, 43.259697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650471, 29.344765, 43.265713>,  <34.558140, 28.955696, 43.275742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650471, 29.344765, 43.265713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475177, -0.090205, 0.875254,
		0.849073, -0.213947, -0.483013,
		0.230828, 0.972672, -0.025072,
		34.719719, 29.636566, 43.258190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170231, 29.016340, 43.534901>,  <34.558140, 28.955696, 43.275742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170231, 29.016340, 43.534901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017193, 29.383610, 43.576035>,  <34.925369, 29.603971, 43.600716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017193, 29.383610, 43.576035>,  <35.170231, 29.016340, 43.534901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017193, 29.383610, 43.576035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261289, 0.000768, 0.965260,
		0.886199, 0.396174, -0.240203,
		-0.382595, 0.918175, 0.102835,
		34.902412, 29.659061, 43.606884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630478, 29.368668, 43.902645>,  <35.170231, 29.016340, 43.534901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630478, 29.368668, 43.902645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302551, 29.586819, 43.972454>,  <35.105793, 29.717710, 44.014339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302551, 29.586819, 43.972454>,  <35.630478, 29.368668, 43.902645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302551, 29.586819, 43.972454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271697, 0.102191, 0.956942,
		0.504062, 0.831936, -0.231956,
		-0.819819, 0.545380, 0.174524,
		35.056606, 29.750433, 44.024811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959492, 29.925535, 44.202526>,  <35.630478, 29.368668, 43.902645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959492, 29.925535, 44.202526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568966, 29.930920, 44.288902>,  <35.334652, 29.934151, 44.340729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568966, 29.930920, 44.288902>,  <35.959492, 29.925535, 44.202526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568966, 29.930920, 44.288902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216364, 0.061519, 0.974373,
		-0.000168, 0.998015, -0.062974,
		-0.976313, 0.013461, 0.215945,
		35.276073, 29.934958, 44.353687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874832, 30.474428, 44.662582>,  <35.959492, 29.925535, 44.202526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874832, 30.474428, 44.662582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558876, 30.238001, 44.727951>,  <35.369301, 30.096144, 44.767174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558876, 30.238001, 44.727951>,  <35.874832, 30.474428, 44.662582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558876, 30.238001, 44.727951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169007, 0.046349, 0.984524,
		-0.589495, 0.805289, 0.063284,
		-0.789894, -0.591068, 0.163422,
		35.321907, 30.060680, 44.776978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530010, 30.803808, 45.178047>,  <35.874832, 30.474428, 44.662582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530010, 30.803808, 45.178047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434547, 30.415398, 45.182953>,  <35.377270, 30.182352, 45.185898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434547, 30.415398, 45.182953>,  <35.530010, 30.803808, 45.178047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434547, 30.415398, 45.182953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231391, -0.044596, 0.971838,
		-0.943133, 0.234777, 0.235330,
		-0.238660, -0.971026, 0.012265,
		35.362949, 30.124090, 45.186634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061821, 30.716290, 45.716305>,  <35.530010, 30.803808, 45.178047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061821, 30.716290, 45.716305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161289, 30.333900, 45.653976>,  <35.220970, 30.104467, 45.616581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161289, 30.333900, 45.653976>,  <35.061821, 30.716290, 45.716305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161289, 30.333900, 45.653976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010904, -0.158100, 0.987363,
		-0.968527, -0.247227, -0.028891,
		0.248670, -0.955972, -0.155820,
		35.235889, 30.047110, 45.607231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589432, 30.366793, 46.227772>,  <35.061821, 30.716290, 45.716305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589432, 30.366793, 46.227772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905804, 30.145235, 46.123749>,  <35.095627, 30.012300, 46.061333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905804, 30.145235, 46.123749>,  <34.589432, 30.366793, 46.227772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905804, 30.145235, 46.123749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118489, -0.278323, 0.953151,
		-0.600327, -0.784689, -0.154503,
		0.790929, -0.553895, -0.260061,
		35.143082, 29.979067, 46.045731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461472, 29.706488, 46.376507>,  <34.589432, 30.366793, 46.227772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461472, 29.706488, 46.376507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856216, 29.770081, 46.388050>,  <35.093063, 29.808235, 46.394978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856216, 29.770081, 46.388050>,  <34.461472, 29.706488, 46.376507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856216, 29.770081, 46.388050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022250, -0.310611, 0.950277,
		0.160041, -0.937148, -0.310066,
		0.986860, 0.158982, 0.028858,
		35.152275, 29.817776, 46.396709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719994, 29.137146, 46.907124>,  <34.461472, 29.706488, 46.376507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719994, 29.137146, 46.907124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056522, 29.341787, 46.837345>,  <35.258442, 29.464573, 46.795479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056522, 29.341787, 46.837345>,  <34.719994, 29.137146, 46.907124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056522, 29.341787, 46.837345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351103, -0.271858, 0.896002,
		0.410974, -0.815079, -0.408347,
		0.841325, 0.511606, -0.174450,
		35.308918, 29.495270, 46.785011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239433, 28.731026, 47.224293>,  <34.719994, 29.137146, 46.907124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239433, 28.731026, 47.224293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383831, 29.102757, 47.193214>,  <35.470470, 29.325794, 47.174568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383831, 29.102757, 47.193214>,  <35.239433, 28.731026, 47.224293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383831, 29.102757, 47.193214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366076, -0.064591, 0.928341,
		0.857711, -0.363571, -0.363521,
		0.360998, 0.929325, -0.077694,
		35.492130, 29.381554, 47.169907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001019, 28.735600, 47.469135>,  <35.239433, 28.731026, 47.224293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001019, 28.735600, 47.469135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875477, 29.114862, 47.489098>,  <35.800152, 29.342421, 47.501076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875477, 29.114862, 47.489098>,  <36.001019, 28.735600, 47.469135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875477, 29.114862, 47.489098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429529, 0.094908, 0.898052,
		0.846759, 0.303293, -0.437049,
		-0.313852, 0.948159, 0.049909,
		35.781322, 29.399311, 47.504070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603783, 29.113159, 47.723694>,  <36.001019, 28.735600, 47.469135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603783, 29.113159, 47.723694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300106, 29.361874, 47.800640>,  <36.117901, 29.511103, 47.846809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300106, 29.361874, 47.800640>,  <36.603783, 29.113159, 47.723694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300106, 29.361874, 47.800640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330586, 0.113784, 0.936892,
		0.560659, 0.774877, -0.291938,
		-0.759194, 0.621787, 0.192369,
		36.072350, 29.548410, 47.858353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210922, 29.471928, 47.544571>,  <36.603783, 29.113159, 47.723694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210922, 29.471928, 47.544571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599857, 29.540075, 47.480659>,  <37.833218, 29.580965, 47.442314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599857, 29.540075, 47.480659>,  <37.210922, 29.471928, 47.544571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599857, 29.540075, 47.480659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162191, 0.000264, -0.986759,
		-0.168073, 0.985380, 0.027889,
		0.972340, 0.170371, -0.159775,
		37.891560, 29.591187, 47.432728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263577, 30.139650, 47.177052>,  <37.210922, 29.471928, 47.544571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263577, 30.139650, 47.177052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574444, 29.895342, 47.116428>,  <37.760963, 29.748756, 47.080055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574444, 29.895342, 47.116428>,  <37.263577, 30.139650, 47.177052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574444, 29.895342, 47.116428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158718, 0.042807, -0.986395,
		0.608948, 0.790651, -0.063672,
		0.777169, -0.610770, -0.151558,
		37.807594, 29.712111, 47.070961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551342, 30.374447, 46.573471>,  <37.263577, 30.139650, 47.177052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551342, 30.374447, 46.573471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701450, 30.003716, 46.578571>,  <37.791515, 29.781277, 46.581631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701450, 30.003716, 46.578571>,  <37.551342, 30.374447, 46.573471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701450, 30.003716, 46.578571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094873, -0.052090, -0.994126,
		0.922049, 0.371852, -0.107478,
		0.375266, -0.926829, 0.012751,
		37.814030, 29.725666, 46.582397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019600, 30.397621, 46.049866>,  <37.551342, 30.374447, 46.573471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019600, 30.397621, 46.049866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924736, 30.013714, 46.110001>,  <37.867817, 29.783369, 46.146080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924736, 30.013714, 46.110001>,  <38.019600, 30.397621, 46.049866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924736, 30.013714, 46.110001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120617, -0.182646, -0.975752,
		0.963954, -0.213275, 0.159080,
		-0.237159, -0.959768, 0.150338,
		37.853588, 29.725784, 46.155102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569202, 29.859770, 45.847126>,  <38.019600, 30.397621, 46.049866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569202, 29.859770, 45.847126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210613, 29.684052, 45.823959>,  <37.995461, 29.578621, 45.810059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210613, 29.684052, 45.823959>,  <38.569202, 29.859770, 45.847126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210613, 29.684052, 45.823959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069773, -0.010874, -0.997504,
		0.437570, -0.898277, 0.040399,
		-0.896474, -0.439296, -0.057917,
		37.941669, 29.552263, 45.806583>
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
