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
	<24.086248, 35.371197, 35.381176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301577, 35.074268, 35.221596>,  <24.430773, 34.896111, 35.125847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301577, 35.074268, 35.221596>,  <24.086248, 35.371197, 35.381176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301577, 35.074268, 35.221596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724847, 0.649332, -0.230140,
		0.429892, -0.165291, 0.887622,
		0.538321, -0.742325, -0.398953,
		24.463074, 34.851570, 35.101910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804876, 35.327503, 35.666416>,  <24.086248, 35.371197, 35.381176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804876, 35.327503, 35.666416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796850, 35.206566, 35.285221>,  <24.792034, 35.134003, 35.056503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796850, 35.206566, 35.285221>,  <24.804876, 35.327503, 35.666416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.796850, 35.206566, 35.285221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768695, 0.604827, -0.208068,
		0.639301, -0.736732, 0.220273,
		-0.020063, -0.302341, -0.952989,
		24.790831, 35.115864, 34.999325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501905, 35.143162, 35.471851>,  <24.804876, 35.327503, 35.666416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501905, 35.143162, 35.471851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307667, 35.218685, 35.130432>,  <25.191124, 35.264000, 34.925579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307667, 35.218685, 35.130432>,  <25.501905, 35.143162, 35.471851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307667, 35.218685, 35.130432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743713, 0.602386, -0.289864,
		0.459439, -0.775553, -0.432935,
		-0.485599, 0.188805, -0.853549,
		25.161987, 35.275326, 34.874367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084421, 35.081085, 35.090160>,  <25.501905, 35.143162, 35.471851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084421, 35.081085, 35.090160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804964, 35.292431, 34.897194>,  <25.637291, 35.419239, 34.781414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804964, 35.292431, 34.897194>,  <26.084421, 35.081085, 35.090160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804964, 35.292431, 34.897194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710584, 0.591095, -0.381677,
		0.083489, -0.609454, -0.788413,
		-0.698641, 0.528368, -0.482419,
		25.595371, 35.450943, 34.752468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446959, 35.325798, 34.497124>,  <26.084421, 35.081085, 35.090160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446959, 35.325798, 34.497124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134350, 35.571602, 34.540207>,  <25.946785, 35.719082, 34.566055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134350, 35.571602, 34.540207>,  <26.446959, 35.325798, 34.497124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134350, 35.571602, 34.540207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526845, 0.742533, -0.413617,
		-0.334147, -0.266506, -0.904057,
		-0.781524, 0.614507, 0.107708,
		25.899893, 35.755955, 34.572517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451061, 35.749477, 33.911018>,  <26.446959, 35.325798, 34.497124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451061, 35.749477, 33.911018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242346, 35.962040, 34.177956>,  <26.117117, 36.089577, 34.338116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242346, 35.962040, 34.177956>,  <26.451061, 35.749477, 33.911018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242346, 35.962040, 34.177956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607613, 0.780604, -0.146506,
		-0.598783, 0.329040, -0.730200,
		-0.521790, 0.531404, 0.667341,
		26.085808, 36.121460, 34.378159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185307, 36.507435, 33.717545>,  <26.451061, 35.749477, 33.911018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185307, 36.507435, 33.717545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307808, 36.440960, 34.092476>,  <26.381310, 36.401073, 34.317436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307808, 36.440960, 34.092476>,  <26.185307, 36.507435, 33.717545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307808, 36.440960, 34.092476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785324, 0.600613, -0.150101,
		-0.538029, 0.782078, 0.314451,
		0.306254, -0.166187, 0.937332,
		26.399685, 36.391106, 34.373676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187109, 37.189060, 34.096027>,  <26.185307, 36.507435, 33.717545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187109, 37.189060, 34.096027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453083, 36.930984, 34.246544>,  <26.612667, 36.776138, 34.336853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453083, 36.930984, 34.246544>,  <26.187109, 37.189060, 34.096027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453083, 36.930984, 34.246544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721646, 0.684862, -0.100950,
		-0.192575, 0.338675, 0.920986,
		0.664937, -0.645185, 0.376291,
		26.652565, 36.737431, 34.359432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669350, 37.673203, 34.369358>,  <26.187109, 37.189060, 34.096027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669350, 37.673203, 34.369358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853716, 37.323277, 34.309681>,  <26.964334, 37.113319, 34.273876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853716, 37.323277, 34.309681>,  <26.669350, 37.673203, 34.369358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853716, 37.323277, 34.309681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807657, 0.483170, -0.337990,
		0.367762, 0.035291, 0.929250,
		0.460914, -0.874815, -0.149189,
		26.991989, 37.060833, 34.264923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272346, 37.709572, 34.724308>,  <26.669350, 37.673203, 34.369358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272346, 37.709572, 34.724308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335995, 37.433609, 34.441830>,  <27.374184, 37.268032, 34.272343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335995, 37.433609, 34.441830>,  <27.272346, 37.709572, 34.724308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335995, 37.433609, 34.441830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774637, 0.530709, -0.343927,
		0.612061, -0.492318, 0.618874,
		0.159121, -0.689907, -0.706194,
		27.383732, 37.226639, 34.229973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963984, 37.682262, 34.749512>,  <27.272346, 37.709572, 34.724308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963984, 37.682262, 34.749512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851574, 37.516380, 34.403324>,  <27.784128, 37.416851, 34.195610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851574, 37.516380, 34.403324>,  <27.963984, 37.682262, 34.749512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851574, 37.516380, 34.403324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709860, 0.517074, -0.478261,
		0.645853, -0.748766, 0.149076,
		-0.281022, -0.414709, -0.865473,
		27.767267, 37.391968, 34.143681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594034, 37.482445, 34.406357>,  <27.963984, 37.682262, 34.749512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594034, 37.482445, 34.406357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294039, 37.579418, 34.160191>,  <28.114040, 37.637604, 34.012489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294039, 37.579418, 34.160191>,  <28.594034, 37.482445, 34.406357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294039, 37.579418, 34.160191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634979, 0.524457, -0.567227,
		0.185244, -0.816192, -0.547279,
		-0.749991, 0.242435, -0.615418,
		28.069042, 37.652149, 33.975567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827738, 37.266411, 33.714455>,  <28.594034, 37.482445, 34.406357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827738, 37.266411, 33.714455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584116, 37.579487, 33.765759>,  <28.437943, 37.767330, 33.796539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584116, 37.579487, 33.765759>,  <28.827738, 37.266411, 33.714455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584116, 37.579487, 33.765759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715141, 0.611869, -0.337920,
		-0.342962, -0.114091, -0.932395,
		-0.609057, 0.782688, 0.128256,
		28.401400, 37.814293, 33.804234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729982, 37.647106, 33.115208>,  <28.827738, 37.266411, 33.714455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729982, 37.647106, 33.115208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699390, 37.946213, 33.379025>,  <28.681036, 38.125679, 33.537315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699390, 37.946213, 33.379025>,  <28.729982, 37.647106, 33.115208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699390, 37.946213, 33.379025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350178, 0.639484, -0.684424,
		-0.933556, 0.178612, -0.310760,
		-0.076480, 0.747769, 0.659539,
		28.676447, 38.170544, 33.576885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166178, 38.205250, 33.057713>,  <28.729982, 37.647106, 33.115208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166178, 38.205250, 33.057713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518284, 38.337830, 33.193520>,  <28.729548, 38.417377, 33.275005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518284, 38.337830, 33.193520>,  <28.166178, 38.205250, 33.057713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518284, 38.337830, 33.193520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146499, 0.490736, -0.858904,
		-0.451299, 0.805803, 0.383421,
		0.880265, 0.331452, 0.339518,
		28.782364, 38.437263, 33.295376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687046, 37.572685, 32.885216>,  <28.166178, 38.205250, 33.057713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687046, 37.572685, 32.885216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872566, 37.467110, 33.223499>,  <27.983877, 37.403763, 33.426472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872566, 37.467110, 33.223499>,  <27.687046, 37.572685, 32.885216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872566, 37.467110, 33.223499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768642, -0.594563, 0.235976,
		0.440546, -0.759494, -0.478632,
		0.463799, -0.263938, 0.845711,
		28.011705, 37.387928, 33.477211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489445, 36.907505, 33.003807>,  <27.687046, 37.572685, 32.885216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489445, 36.907505, 33.003807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592714, 37.032253, 33.369556>,  <27.654676, 37.107101, 33.589008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592714, 37.032253, 33.369556>,  <27.489445, 36.907505, 33.003807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592714, 37.032253, 33.369556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687663, -0.605463, 0.400668,
		0.678577, -0.732224, 0.058148,
		0.258172, 0.311870, 0.914377,
		27.670166, 37.125813, 33.643867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562683, 36.278267, 33.351269>,  <27.489445, 36.907505, 33.003807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562683, 36.278267, 33.351269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507936, 36.561241, 33.628628>,  <27.475088, 36.731026, 33.795044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507936, 36.561241, 33.628628>,  <27.562683, 36.278267, 33.351269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507936, 36.561241, 33.628628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643830, -0.595504, 0.480477,
		0.752829, -0.380670, 0.536972,
		-0.136866, 0.707436, 0.693400,
		27.466877, 36.773472, 33.836647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516348, 35.894878, 33.958359>,  <27.562683, 36.278267, 33.351269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516348, 35.894878, 33.958359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367491, 36.253666, 34.053825>,  <27.278175, 36.468937, 34.111107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367491, 36.253666, 34.053825>,  <27.516348, 35.894878, 33.958359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367491, 36.253666, 34.053825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587891, -0.426766, 0.687208,
		0.718257, 0.115429, 0.686136,
		-0.372144, 0.896965, 0.238668,
		27.255848, 36.522755, 34.125427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625132, 35.974518, 34.783787>,  <27.516348, 35.894878, 33.958359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625132, 35.974518, 34.783787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318058, 36.170933, 34.619087>,  <27.133814, 36.288784, 34.520267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318058, 36.170933, 34.619087>,  <27.625132, 35.974518, 34.783787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318058, 36.170933, 34.619087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634629, -0.493406, 0.594808,
		0.088916, 0.717934, 0.690409,
		-0.767685, 0.491042, -0.411750,
		27.087753, 36.318245, 34.495564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082325, 36.155479, 35.302879>,  <27.625132, 35.974518, 34.783787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082325, 36.155479, 35.302879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911795, 36.140820, 34.941349>,  <26.809477, 36.132023, 34.724430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911795, 36.140820, 34.941349>,  <27.082325, 36.155479, 35.302879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911795, 36.140820, 34.941349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788495, -0.474617, 0.391171,
		-0.443309, 0.879429, 0.173443,
		-0.426326, -0.036651, -0.903827,
		26.783897, 36.129826, 34.670200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050381, 36.819534, 35.494396>,  <27.082325, 36.155479, 35.302879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050381, 36.819534, 35.494396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952314, 37.124798, 35.733555>,  <26.893475, 37.307957, 35.877048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952314, 37.124798, 35.733555>,  <27.050381, 36.819534, 35.494396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952314, 37.124798, 35.733555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926614, 0.003097, 0.376001,
		0.285098, 0.646201, -0.707915,
		-0.245165, 0.763161, 0.597896,
		26.878765, 37.353745, 35.912922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400873, 36.997379, 35.330585>,  <27.050381, 36.819534, 35.494396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400873, 36.997379, 35.330585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567286, 37.354664, 35.262360>,  <26.667133, 37.569035, 35.221424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567286, 37.354664, 35.262360>,  <26.400873, 36.997379, 35.330585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567286, 37.354664, 35.262360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548407, 0.096823, -0.830587,
		-0.725375, 0.439090, 0.530124,
		0.416031, 0.893210, -0.170567,
		26.692095, 37.622627, 35.211189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671862, 36.974426, 35.333656>,  <26.400873, 36.997379, 35.330585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671862, 36.974426, 35.333656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811239, 36.891758, 34.967953>,  <25.894865, 36.842155, 34.748531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811239, 36.891758, 34.967953>,  <25.671862, 36.974426, 35.333656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811239, 36.891758, 34.967953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599358, -0.799053, -0.047800,
		-0.720664, 0.564626, -0.402294,
		0.348443, -0.206670, -0.914262,
		25.915771, 36.829758, 34.693676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174232, 36.882732, 34.993488>,  <25.671862, 36.974426, 35.333656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174232, 36.882732, 34.993488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460155, 36.658825, 34.825817>,  <25.631708, 36.524479, 34.725212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460155, 36.658825, 34.825817>,  <25.174232, 36.882732, 34.993488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460155, 36.658825, 34.825817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561953, -0.816546, 0.132141,
		-0.416248, 0.141105, -0.898235,
		0.714805, -0.559769, -0.419180,
		25.674597, 36.490894, 34.700062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807329, 36.443558, 34.546558>,  <25.174232, 36.882732, 34.993488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807329, 36.443558, 34.546558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141312, 36.229233, 34.496361>,  <25.341702, 36.100636, 34.466244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141312, 36.229233, 34.496361>,  <24.807329, 36.443558, 34.546558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141312, 36.229233, 34.496361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546888, -0.833304, -0.080737,
		-0.061310, 0.136041, -0.988804,
		0.834958, -0.535815, -0.125489,
		25.391800, 36.068489, 34.458714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631025, 36.121475, 34.050522>,  <24.807329, 36.443558, 34.546558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631025, 36.121475, 34.050522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917625, 35.916248, 34.239578>,  <25.089584, 35.793114, 34.353012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917625, 35.916248, 34.239578>,  <24.631025, 36.121475, 34.050522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917625, 35.916248, 34.239578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595964, -0.802354, 0.032467,
		0.362570, -0.304941, -0.880655,
		0.716498, -0.513068, 0.472644,
		25.132574, 35.762329, 34.381371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.579300, 35.503689, 33.747231>,  <24.631025, 36.121475, 34.050522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.579300, 35.503689, 33.747231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753263, 35.428711, 34.099529>,  <24.857641, 35.383724, 34.310909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.753263, 35.428711, 34.099529>,  <24.579300, 35.503689, 33.747231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.753263, 35.428711, 34.099529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650873, -0.741344, 0.163623,
		0.622267, -0.644417, -0.444422,
		0.434911, -0.187445, 0.880748,
		24.883738, 35.372478, 34.363754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603207, 34.800934, 33.761017>,  <24.579300, 35.503689, 33.747231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603207, 34.800934, 33.761017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664385, 34.902805, 34.142960>,  <24.701092, 34.963928, 34.372124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664385, 34.902805, 34.142960>,  <24.603207, 34.800934, 33.761017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664385, 34.902805, 34.142960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618804, -0.728668, 0.293470,
		0.770512, -0.635753, 0.046149,
		0.152947, 0.254679, 0.954854,
		24.710270, 34.979210, 34.429417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928543, 34.260170, 34.215965>,  <24.603207, 34.800934, 33.761017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.928543, 34.260170, 34.215965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.700764, 34.497871, 34.443153>,  <24.564096, 34.640491, 34.579468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.700764, 34.497871, 34.443153>,  <24.928543, 34.260170, 34.215965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.700764, 34.497871, 34.443153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394959, -0.803751, 0.444963,
		0.720927, 0.029058, 0.692401,
		-0.569448, 0.594256, 0.567969,
		24.529930, 34.676147, 34.613544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.893539, 34.116756, 34.932255>,  <24.928543, 34.260170, 34.215965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.893539, 34.116756, 34.932255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538038, 34.275299, 34.840157>,  <24.324738, 34.370426, 34.784897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538038, 34.275299, 34.840157>,  <24.893539, 34.116756, 34.932255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538038, 34.275299, 34.840157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456778, -0.807802, 0.372572,
		-0.038324, 0.436298, 0.898986,
		-0.888755, 0.396358, -0.230249,
		24.271412, 34.394207, 34.771080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188972, 33.578926, 34.593288>,  <24.893539, 34.116756, 34.932255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188972, 33.578926, 34.593288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340576, 33.915104, 34.438366>,  <25.431540, 34.116810, 34.345413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340576, 33.915104, 34.438366>,  <25.188972, 33.578926, 34.593288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340576, 33.915104, 34.438366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635210, -0.068080, -0.769333,
		-0.672948, 0.537607, 0.508055,
		0.379010, 0.840443, -0.387308,
		25.454279, 34.167236, 34.322174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727013, 33.050461, 34.631325>,  <25.188972, 33.578926, 34.593288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727013, 33.050461, 34.631325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069376, 32.873283, 34.524574>,  <26.274794, 32.766975, 34.460526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069376, 32.873283, 34.524574>,  <25.727013, 33.050461, 34.631325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069376, 32.873283, 34.524574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190539, -0.749885, 0.633535,
		-0.480744, -0.491399, -0.726231,
		0.855909, -0.442944, -0.266873,
		26.326149, 32.740398, 34.444511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349281, 32.948074, 35.065006>,  <25.727013, 33.050461, 34.631325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349281, 32.948074, 35.065006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561361, 32.624638, 35.167042>,  <26.688610, 32.430576, 35.228264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561361, 32.624638, 35.167042>,  <26.349281, 32.948074, 35.065006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561361, 32.624638, 35.167042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000438, -0.301118, -0.953587,
		0.847873, 0.505479, -0.160006,
		0.530199, -0.808590, 0.255088,
		26.720421, 32.382061, 35.243568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914978, 33.431797, 34.706665>,  <26.349281, 32.948074, 35.065006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914978, 33.431797, 34.706665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965015, 33.141983, 34.977783>,  <26.995039, 32.968094, 35.140453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965015, 33.141983, 34.977783>,  <26.914978, 33.431797, 34.706665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965015, 33.141983, 34.977783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863309, -0.416150, -0.285511,
		0.488926, -0.549431, -0.677552,
		0.125095, -0.724531, 0.677795,
		27.002544, 32.924625, 35.181122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511295, 33.355423, 34.366287>,  <26.914978, 33.431797, 34.706665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511295, 33.355423, 34.366287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860085, 33.329716, 34.172161>,  <28.069359, 33.314289, 34.055683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860085, 33.329716, 34.172161>,  <27.511295, 33.355423, 34.366287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860085, 33.329716, 34.172161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266365, -0.894047, -0.360180,
		-0.410748, 0.443339, -0.796704,
		0.871972, -0.064271, -0.485318,
		28.121675, 33.310436, 34.026566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350838, 33.358387, 33.679966>,  <27.511295, 33.355423, 34.366287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350838, 33.358387, 33.679966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685625, 33.157818, 33.767654>,  <27.886497, 33.037476, 33.820267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685625, 33.157818, 33.767654>,  <27.350838, 33.358387, 33.679966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685625, 33.157818, 33.767654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405332, -0.837149, -0.367270,
		0.367677, 0.218537, -0.903911,
		0.836971, -0.501421, 0.219221,
		27.936716, 33.007393, 33.833420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632315, 33.041222, 32.977451>,  <27.350838, 33.358387, 33.679966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632315, 33.041222, 32.977451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755058, 32.834988, 33.297455>,  <27.828705, 32.711246, 33.489456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755058, 32.834988, 33.297455>,  <27.632315, 33.041222, 32.977451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755058, 32.834988, 33.297455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407021, -0.830909, -0.379373,
		0.860332, -0.209207, -0.464824,
		0.306859, -0.515580, 0.800009,
		27.847116, 32.680313, 33.537457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911209, 32.339069, 32.761467>,  <27.632315, 33.041222, 32.977451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911209, 32.339069, 32.761467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788094, 32.307457, 33.140732>,  <27.714224, 32.288490, 33.368290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788094, 32.307457, 33.140732>,  <27.911209, 32.339069, 32.761467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788094, 32.307457, 33.140732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474808, -0.850830, -0.225046,
		0.824513, -0.519464, 0.224355,
		-0.307791, -0.079028, 0.948166,
		27.695757, 32.283749, 33.425182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586729, 31.746082, 32.795120>,  <27.911209, 32.339069, 32.761467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586729, 31.746082, 32.795120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517883, 31.829285, 33.180267>,  <27.476576, 31.879206, 33.411354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517883, 31.829285, 33.180267>,  <27.586729, 31.746082, 32.795120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517883, 31.829285, 33.180267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463646, -0.879521, 0.107122,
		0.869142, -0.427991, 0.247821,
		-0.172116, 0.208005, 0.962866,
		27.466248, 31.891685, 33.469128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966923, 31.229654, 33.280758>,  <27.586729, 31.746082, 32.795120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966923, 31.229654, 33.280758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633654, 31.381073, 33.442017>,  <27.433693, 31.471924, 33.538773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633654, 31.381073, 33.442017>,  <27.966923, 31.229654, 33.280758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633654, 31.381073, 33.442017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437020, -0.897413, -0.060524,
		0.338874, -0.226608, 0.913134,
		-0.833173, 0.378548, 0.403142,
		27.383701, 31.494637, 33.562958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724077, 30.821957, 33.852432>,  <27.966923, 31.229654, 33.280758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724077, 30.821957, 33.852432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412041, 31.021935, 33.701962>,  <27.224819, 31.141922, 33.611679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412041, 31.021935, 33.701962>,  <27.724077, 30.821957, 33.852432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412041, 31.021935, 33.701962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502783, -0.858763, -0.098667,
		-0.372376, 0.112166, 0.921279,
		-0.780093, 0.499945, -0.376178,
		27.178013, 31.171917, 33.589108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304724, 31.060059, 34.281384>,  <27.724077, 30.821957, 33.852432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304724, 31.060059, 34.281384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310776, 31.068779, 34.681244>,  <28.314407, 31.074011, 34.921158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310776, 31.068779, 34.681244>,  <28.304724, 31.060059, 34.281384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310776, 31.068779, 34.681244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128533, 0.991425, -0.023568,
		-0.991590, 0.128844, 0.012199,
		0.015131, 0.021802, 0.999648,
		28.315315, 31.075319, 34.981140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753725, 31.525343, 34.634037>,  <28.304724, 31.060059, 34.281384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753725, 31.525343, 34.634037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083687, 31.492647, 34.857769>,  <28.281664, 31.473030, 34.992008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083687, 31.492647, 34.857769>,  <27.753725, 31.525343, 34.634037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083687, 31.492647, 34.857769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047769, 0.996031, 0.075105,
		-0.563250, -0.035236, 0.825535,
		0.824905, -0.081738, 0.559332,
		28.331158, 31.468126, 35.025570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279850, 32.005840, 34.590046>,  <27.753725, 31.525343, 34.634037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279850, 32.005840, 34.590046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165060, 32.211193, 34.266544>,  <28.096186, 32.334404, 34.072445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165060, 32.211193, 34.266544>,  <28.279850, 32.005840, 34.590046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165060, 32.211193, 34.266544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620315, 0.742940, 0.251494,
		0.729968, -0.429509, -0.531665,
		-0.286976, 0.513383, -0.808754,
		28.078968, 32.365208, 34.023918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920235, 32.256210, 34.167068>,  <28.279850, 32.005840, 34.590046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920235, 32.256210, 34.167068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607769, 32.481075, 34.058437>,  <28.420290, 32.615993, 33.993259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607769, 32.481075, 34.058437>,  <28.920235, 32.256210, 34.167068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607769, 32.481075, 34.058437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522360, 0.826752, 0.208857,
		0.341935, 0.021293, -0.939482,
		-0.781166, 0.562163, -0.271573,
		28.373419, 32.649723, 33.976967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192593, 32.791111, 33.737160>,  <28.920235, 32.256210, 34.167068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192593, 32.791111, 33.737160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864567, 32.888496, 33.944321>,  <28.667751, 32.946930, 34.068615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864567, 32.888496, 33.944321>,  <29.192593, 32.791111, 33.737160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864567, 32.888496, 33.944321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291708, 0.956429, 0.012285,
		-0.492342, 0.161149, -0.855354,
		-0.820065, 0.243465, 0.517898,
		28.618547, 32.961536, 34.099689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638184, 33.211231, 33.390018>,  <29.192593, 32.791111, 33.737160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638184, 33.211231, 33.390018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710249, 33.251343, 33.781422>,  <28.753489, 33.275410, 34.016266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710249, 33.251343, 33.781422>,  <28.638184, 33.211231, 33.390018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710249, 33.251343, 33.781422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276033, 0.949663, -0.148143,
		-0.944111, 0.296791, 0.143416,
		0.180165, 0.100276, 0.978512,
		28.764297, 33.281425, 34.074974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009844, 32.836269, 32.852196>,  <28.638184, 33.211231, 33.390018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009844, 32.836269, 32.852196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065290, 32.466587, 32.994537>,  <29.098558, 32.244778, 33.079941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065290, 32.466587, 32.994537>,  <29.009844, 32.836269, 32.852196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065290, 32.466587, 32.994537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987066, -0.099711, 0.125532,
		-0.080535, -0.368650, -0.926073,
		0.138618, -0.924205, 0.355852,
		29.106876, 32.189323, 33.101292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684069, 32.422062, 32.434601>,  <29.009844, 32.836269, 32.852196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684069, 32.422062, 32.434601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707363, 32.222794, 32.780647>,  <28.721340, 32.103233, 32.988277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707363, 32.222794, 32.780647>,  <28.684069, 32.422062, 32.434601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707363, 32.222794, 32.780647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996713, 0.019874, 0.078538,
		-0.056319, -0.866851, -0.495377,
		0.058235, -0.498172, 0.865121,
		28.724834, 32.073341, 33.040184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257444, 32.017143, 32.165901>,  <28.684069, 32.422062, 32.434601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257444, 32.017143, 32.165901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494232, 32.300732, 32.012573>,  <29.636305, 32.470886, 31.920578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494232, 32.300732, 32.012573>,  <29.257444, 32.017143, 32.165901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494232, 32.300732, 32.012573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752879, -0.316688, 0.576959,
		0.287657, -0.630132, -0.721240,
		0.591969, 0.708973, -0.383315,
		29.671824, 32.513424, 31.897579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000574, 31.754234, 31.801712>,  <29.257444, 32.017143, 32.165901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000574, 31.754234, 31.801712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034176, 32.117161, 31.966503>,  <30.054337, 32.334915, 32.065376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034176, 32.117161, 31.966503>,  <30.000574, 31.754234, 31.801712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034176, 32.117161, 31.966503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814975, -0.300453, 0.495524,
		0.573376, 0.294125, -0.764677,
		0.084003, 0.907314, 0.411977,
		30.059378, 32.389355, 32.090096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718609, 32.091694, 31.747999>,  <30.000574, 31.754234, 31.801712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718609, 32.091694, 31.747999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512339, 32.159943, 32.083847>,  <30.388577, 32.200893, 32.285355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512339, 32.159943, 32.083847>,  <30.718609, 32.091694, 31.747999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512339, 32.159943, 32.083847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779192, -0.314113, 0.542395,
		0.356282, 0.933927, 0.029032,
		-0.515677, 0.170624, 0.839622,
		30.357635, 32.211128, 32.335735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008791, 32.571899, 32.258095>,  <30.718609, 32.091694, 31.747999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008791, 32.571899, 32.258095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806339, 32.270386, 32.425732>,  <30.684868, 32.089478, 32.526314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806339, 32.270386, 32.425732>,  <31.008791, 32.571899, 32.258095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806339, 32.270386, 32.425732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757325, -0.155924, 0.634151,
		-0.412666, 0.638353, 0.649778,
		-0.506128, -0.753785, 0.419096,
		30.654501, 32.044250, 32.551460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972534, 32.699287, 32.947762>,  <31.008791, 32.571899, 32.258095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972534, 32.699287, 32.947762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934900, 32.305183, 32.890602>,  <30.912319, 32.068722, 32.856308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934900, 32.305183, 32.890602>,  <30.972534, 32.699287, 32.947762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934900, 32.305183, 32.890602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668763, -0.168873, 0.724043,
		-0.737499, -0.027441, 0.674791,
		-0.094085, -0.985256, -0.142895,
		30.906675, 32.009605, 32.847733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533251, 32.326073, 33.517033>,  <30.972534, 32.699287, 32.947762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533251, 32.326073, 33.517033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812271, 32.105556, 33.333950>,  <30.979683, 31.973246, 33.224102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812271, 32.105556, 33.333950>,  <30.533251, 32.326073, 33.517033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812271, 32.105556, 33.333950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532177, -0.029130, 0.846132,
		-0.479799, -0.833803, 0.273066,
		0.697553, -0.551293, -0.457708,
		31.021538, 31.940168, 33.196636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778021, 32.467182, 34.096642>,  <30.533251, 32.326073, 33.517033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778021, 32.467182, 34.096642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982557, 32.201962, 33.877956>,  <31.105280, 32.042828, 33.746746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982557, 32.201962, 33.877956>,  <30.778021, 32.467182, 34.096642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982557, 32.201962, 33.877956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593896, -0.187163, 0.782469,
		-0.621143, -0.724796, 0.298080,
		0.511341, -0.663053, -0.546709,
		31.135960, 32.003044, 33.713943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445395, 32.817020, 34.132366>,  <30.778021, 32.467182, 34.096642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445395, 32.817020, 34.132366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451132, 32.708633, 34.517357>,  <31.454575, 32.643600, 34.748352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451132, 32.708633, 34.517357>,  <31.445395, 32.817020, 34.132366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451132, 32.708633, 34.517357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983527, 0.177288, 0.035253,
		-0.180188, 0.946121, 0.269049,
		0.014345, -0.270969, 0.962481,
		31.455435, 32.627342, 34.806103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949652, 33.384129, 34.329720>,  <31.445395, 32.817020, 34.132366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949652, 33.384129, 34.329720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037407, 33.276226, 33.954678>,  <32.090061, 33.211483, 33.729652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037407, 33.276226, 33.954678>,  <31.949652, 33.384129, 34.329720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037407, 33.276226, 33.954678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058142, 0.955693, -0.288566,
		0.973904, 0.117822, 0.193981,
		0.219386, -0.269757, -0.937604,
		32.103222, 33.195297, 33.673397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583878, 33.688698, 34.097492>,  <31.949652, 33.384129, 34.329720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583878, 33.688698, 34.097492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299839, 33.611454, 33.826653>,  <32.129417, 33.565109, 33.664146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299839, 33.611454, 33.826653>,  <32.583878, 33.688698, 34.097492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299839, 33.611454, 33.826653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120257, 0.980787, -0.153605,
		0.693758, -0.027649, -0.719678,
		-0.710097, -0.193111, -0.677104,
		32.086811, 33.553520, 33.623520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801411, 33.938496, 33.313786>,  <32.583878, 33.688698, 34.097492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801411, 33.938496, 33.313786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420837, 33.934910, 33.436874>,  <32.192493, 33.932758, 33.510727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420837, 33.934910, 33.436874>,  <32.801411, 33.938496, 33.313786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420837, 33.934910, 33.436874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062778, 0.984220, -0.165440,
		-0.301383, -0.176723, -0.936983,
		-0.951434, -0.008962, 0.307721,
		32.135406, 33.932220, 33.529190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497765, 34.309765, 32.772873>,  <32.801411, 33.938496, 33.313786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497765, 34.309765, 32.772873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336807, 34.375515, 33.133110>,  <32.240234, 34.414963, 33.349251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336807, 34.375515, 33.133110>,  <32.497765, 34.309765, 32.772873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336807, 34.375515, 33.133110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491294, 0.868860, 0.060933,
		-0.772471, 0.466973, -0.430377,
		-0.402391, 0.164373, 0.900590,
		32.216091, 34.424828, 33.403286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042671, 34.901760, 32.946991>,  <32.497765, 34.309765, 32.772873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042671, 34.901760, 32.946991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278847, 34.761723, 33.237869>,  <32.420551, 34.677700, 33.412395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278847, 34.761723, 33.237869>,  <32.042671, 34.901760, 32.946991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278847, 34.761723, 33.237869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559979, 0.826562, -0.056740,
		-0.581209, 0.440717, 0.684079,
		0.590440, -0.350092, 0.727197,
		32.455978, 34.656696, 33.456028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116505, 35.422764, 33.454205>,  <32.042671, 34.901760, 32.946991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116505, 35.422764, 33.454205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431179, 35.178078, 33.420891>,  <32.619984, 35.031265, 33.400902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431179, 35.178078, 33.420891>,  <32.116505, 35.422764, 33.454205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431179, 35.178078, 33.420891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594103, 0.786811, -0.167243,
		0.167830, 0.082090, 0.982392,
		0.786686, -0.611711, -0.083280,
		32.667183, 34.994564, 33.395908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600887, 35.723946, 33.913296>,  <32.116505, 35.422764, 33.454205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600887, 35.723946, 33.913296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800667, 35.499123, 33.649586>,  <32.920536, 35.364227, 33.491360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800667, 35.499123, 33.649586>,  <32.600887, 35.723946, 33.913296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800667, 35.499123, 33.649586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612707, 0.767163, -0.189871,
		0.612488, -0.309108, 0.727538,
		0.499449, -0.562061, -0.659271,
		32.950500, 35.330505, 33.451805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380638, 35.905682, 33.885738>,  <32.600887, 35.723946, 33.913296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380638, 35.905682, 33.885738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252888, 35.793922, 33.523537>,  <33.176239, 35.726868, 33.306217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252888, 35.793922, 33.523537>,  <33.380638, 35.905682, 33.885738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252888, 35.793922, 33.523537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322051, 0.866670, -0.381006,
		0.891225, -0.413302, -0.186815,
		-0.319378, -0.279398, -0.905502,
		33.157074, 35.710102, 33.251884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982342, 36.043793, 33.513252>,  <33.380638, 35.905682, 33.885738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982342, 36.043793, 33.513252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642704, 36.034214, 33.302174>,  <33.438923, 36.028469, 33.175526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642704, 36.034214, 33.302174>,  <33.982342, 36.043793, 33.513252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642704, 36.034214, 33.302174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215788, 0.896096, -0.387876,
		0.482155, -0.443215, -0.755704,
		-0.849095, -0.023945, -0.527697,
		33.387974, 36.027031, 33.143864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156307, 36.680660, 34.022617>,  <33.982342, 36.043793, 33.513252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156307, 36.680660, 34.022617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418915, 36.950874, 33.888371>,  <34.576477, 37.113003, 33.807823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418915, 36.950874, 33.888371>,  <34.156307, 36.680660, 34.022617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418915, 36.950874, 33.888371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055895, -0.400135, -0.914750,
		-0.752240, 0.619306, -0.224935,
		0.656514, 0.675539, -0.335613,
		34.615868, 37.153538, 33.787685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863979, 37.063896, 33.498802>,  <34.156307, 36.680660, 34.022617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863979, 37.063896, 33.498802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259521, 37.089832, 33.445190>,  <34.496845, 37.105392, 33.413025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259521, 37.089832, 33.445190>,  <33.863979, 37.063896, 33.498802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259521, 37.089832, 33.445190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092496, -0.437882, -0.894261,
		-0.116671, 0.896691, -0.427005,
		0.988854, 0.064838, -0.134028,
		34.556179, 37.109283, 33.404984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989925, 37.140438, 32.802807>,  <33.863979, 37.063896, 33.498802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989925, 37.140438, 32.802807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339134, 37.021687, 32.957573>,  <34.548660, 36.950436, 33.050430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339134, 37.021687, 32.957573>,  <33.989925, 37.140438, 32.802807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339134, 37.021687, 32.957573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120216, -0.637873, -0.760701,
		0.472638, 0.710619, -0.521185,
		0.873019, -0.296881, 0.386911,
		34.601040, 36.932621, 33.073647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283150, 37.009922, 32.184338>,  <33.989925, 37.140438, 32.802807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283150, 37.009922, 32.184338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527668, 36.816528, 32.434956>,  <34.674381, 36.700493, 32.585327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527668, 36.816528, 32.434956>,  <34.283150, 37.009922, 32.184338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527668, 36.816528, 32.434956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018640, -0.800264, -0.599358,
		0.791180, 0.354709, -0.498213,
		0.611299, -0.483487, 0.626541,
		34.711060, 36.671482, 32.622917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856995, 36.672314, 31.809679>,  <34.283150, 37.009922, 32.184338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856995, 36.672314, 31.809679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850811, 36.473663, 32.156811>,  <34.847099, 36.354473, 32.365089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850811, 36.473663, 32.156811>,  <34.856995, 36.672314, 31.809679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850811, 36.473663, 32.156811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111727, -0.863355, -0.492072,
		0.993619, 0.089353, 0.068832,
		-0.015458, -0.496623, 0.867829,
		34.846172, 36.324677, 32.417160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279819, 36.192135, 31.648201>,  <34.856995, 36.672314, 31.809679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279819, 36.192135, 31.648201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074692, 36.070568, 31.969360>,  <34.951614, 35.997627, 32.162056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074692, 36.070568, 31.969360>,  <35.279819, 36.192135, 31.648201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074692, 36.070568, 31.969360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180500, -0.952505, -0.245264,
		0.839306, 0.019147, 0.543322,
		-0.512821, -0.303921, 0.802899,
		34.920845, 35.979393, 32.210232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737034, 35.684696, 31.982189>,  <35.279819, 36.192135, 31.648201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737034, 35.684696, 31.982189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367085, 35.602406, 32.110119>,  <35.145115, 35.553032, 32.186878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367085, 35.602406, 32.110119>,  <35.737034, 35.684696, 31.982189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367085, 35.602406, 32.110119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051355, -0.900895, -0.430988,
		0.376794, -0.382184, 0.843778,
		-0.924872, -0.205726, 0.319825,
		35.089622, 35.540688, 32.206066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788639, 35.072495, 32.364338>,  <35.737034, 35.684696, 31.982189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788639, 35.072495, 32.364338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408367, 35.112614, 32.246937>,  <35.180202, 35.136684, 32.176498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408367, 35.112614, 32.246937>,  <35.788639, 35.072495, 32.364338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408367, 35.112614, 32.246937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017495, -0.927425, -0.373600,
		-0.309672, -0.360310, 0.879932,
		-0.950683, 0.100298, -0.293501,
		35.123161, 35.142704, 32.158886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510735, 34.326550, 32.429691>,  <35.788639, 35.072495, 32.364338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510735, 34.326550, 32.429691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257172, 34.528767, 32.195568>,  <35.105034, 34.650097, 32.055096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257172, 34.528767, 32.195568>,  <35.510735, 34.326550, 32.429691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257172, 34.528767, 32.195568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006946, -0.760479, -0.649325,
		-0.773383, -0.407543, 0.485580,
		-0.633901, 0.505550, -0.585311,
		35.067001, 34.680431, 32.019978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068970, 33.845894, 32.209831>,  <35.510735, 34.326550, 32.429691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068970, 33.845894, 32.209831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042439, 34.141457, 31.941618>,  <35.026520, 34.318794, 31.780691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042439, 34.141457, 31.941618>,  <35.068970, 33.845894, 32.209831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042439, 34.141457, 31.941618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110665, -0.673313, -0.731029,
		-0.991642, 0.025718, 0.126429,
		-0.066325, 0.738910, -0.670532,
		35.022541, 34.363129, 31.740458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670380, 33.577400, 31.698078>,  <35.068970, 33.845894, 32.209831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670380, 33.577400, 31.698078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844418, 33.888340, 31.516344>,  <34.948841, 34.074905, 31.407303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844418, 33.888340, 31.516344>,  <34.670380, 33.577400, 31.698078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844418, 33.888340, 31.516344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040239, -0.520885, -0.852678,
		-0.899486, 0.352712, -0.257913,
		0.435093, 0.777350, -0.454336,
		34.974945, 34.121544, 31.380043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421486, 33.547565, 31.082941>,  <34.670380, 33.577400, 31.698078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421486, 33.547565, 31.082941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753963, 33.767704, 31.051359>,  <34.953449, 33.899788, 31.032410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753963, 33.767704, 31.051359>,  <34.421486, 33.547565, 31.082941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753963, 33.767704, 31.051359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174171, -0.392611, -0.903062,
		-0.527997, 0.736868, -0.422191,
		0.831194, 0.550347, -0.078956,
		35.003323, 33.932808, 31.027672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405788, 33.874599, 30.348454>,  <34.421486, 33.547565, 31.082941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405788, 33.874599, 30.348454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784847, 33.919956, 30.467855>,  <35.012283, 33.947170, 30.539495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784847, 33.919956, 30.467855>,  <34.405788, 33.874599, 30.348454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784847, 33.919956, 30.467855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290247, 0.083810, -0.953275,
		-0.133107, 0.990009, 0.046512,
		0.947649, 0.113388, 0.298503,
		35.069141, 33.953972, 30.557407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716106, 34.573456, 30.005838>,  <34.405788, 33.874599, 30.348454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716106, 34.573456, 30.005838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012379, 34.321957, 30.100554>,  <35.190144, 34.171059, 30.157383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012379, 34.321957, 30.100554>,  <34.716106, 34.573456, 30.005838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012379, 34.321957, 30.100554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341809, 0.049230, -0.938479,
		0.578407, 0.776051, 0.251375,
		0.740683, -0.628745, 0.236786,
		35.234585, 34.133331, 30.171589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230209, 34.721916, 29.650789>,  <34.716106, 34.573456, 30.005838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230209, 34.721916, 29.650789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401924, 34.370914, 29.736292>,  <35.504951, 34.160313, 29.787594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401924, 34.370914, 29.736292>,  <35.230209, 34.721916, 29.650789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401924, 34.370914, 29.736292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393170, -0.031502, -0.918926,
		0.813098, 0.478526, 0.331486,
		0.429288, -0.877508, 0.213757,
		35.530712, 34.107662, 29.800419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922836, 34.721600, 29.354424>,  <35.230209, 34.721916, 29.650789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922836, 34.721600, 29.354424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809067, 34.338539, 29.372368>,  <35.740807, 34.108704, 29.383135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809067, 34.338539, 29.372368>,  <35.922836, 34.721600, 29.354424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809067, 34.338539, 29.372368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336432, -0.143521, -0.930707,
		0.897729, -0.249621, 0.363004,
		-0.284423, -0.957649, 0.044863,
		35.723740, 34.051243, 29.385826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352013, 34.433388, 28.893972>,  <35.922836, 34.721600, 29.354424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352013, 34.433388, 28.893972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081940, 34.144939, 28.956095>,  <35.919895, 33.971870, 28.993368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081940, 34.144939, 28.956095>,  <36.352013, 34.433388, 28.893972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081940, 34.144939, 28.956095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172807, -0.359310, -0.917080,
		0.717126, -0.592356, 0.367213,
		-0.675181, -0.721118, 0.155307,
		35.879387, 33.928604, 29.002687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629482, 33.825665, 28.708673>,  <36.352013, 34.433388, 28.893972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629482, 33.825665, 28.708673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237652, 33.747730, 28.688770>,  <36.002556, 33.700970, 28.676828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237652, 33.747730, 28.688770>,  <36.629482, 33.825665, 28.708673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237652, 33.747730, 28.688770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142999, -0.500957, -0.853577,
		0.141382, -0.843256, 0.518585,
		-0.979572, -0.194838, -0.049759,
		35.943779, 33.689278, 28.673843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645351, 33.319229, 28.321831>,  <36.629482, 33.825665, 28.708673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645351, 33.319229, 28.321831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262669, 33.434113, 28.302935>,  <36.033058, 33.503040, 28.291597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262669, 33.434113, 28.302935>,  <36.645351, 33.319229, 28.321831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262669, 33.434113, 28.302935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015465, -0.212233, -0.977097,
		-0.290658, -0.934060, 0.207485,
		-0.956702, 0.287209, -0.047242,
		35.975658, 33.520275, 28.288763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177326, 32.708744, 28.020262>,  <36.645351, 33.319229, 28.321831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177326, 32.708744, 28.020262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977123, 33.049938, 27.961054>,  <35.857002, 33.254654, 27.925529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977123, 33.049938, 27.961054>,  <36.177326, 32.708744, 28.020262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977123, 33.049938, 27.961054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093935, -0.223476, -0.970172,
		-0.860622, -0.471672, 0.191976,
		-0.500506, 0.852985, -0.148022,
		35.826973, 33.305832, 27.916647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484570, 32.523781, 27.720156>,  <36.177326, 32.708744, 28.020262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484570, 32.523781, 27.720156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561028, 32.906456, 27.632324>,  <35.606903, 33.136063, 27.579626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561028, 32.906456, 27.632324>,  <35.484570, 32.523781, 27.720156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561028, 32.906456, 27.632324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257473, -0.167002, -0.951745,
		-0.947192, 0.238455, 0.214399,
		0.191143, 0.956687, -0.219579,
		35.618370, 33.193462, 27.566450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056553, 32.669270, 27.242823>,  <35.484570, 32.523781, 27.720156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056553, 32.669270, 27.242823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304840, 32.975178, 27.173737>,  <35.453812, 33.158722, 27.132284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304840, 32.975178, 27.173737>,  <35.056553, 32.669270, 27.242823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304840, 32.975178, 27.173737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116199, -0.128123, -0.984928,
		-0.775376, 0.631431, 0.009337,
		0.620717, 0.764774, -0.172715,
		35.491055, 33.204609, 27.121922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785801, 32.990959, 26.604076>,  <35.056553, 32.669270, 27.242823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785801, 32.990959, 26.604076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163082, 33.119011, 26.639605>,  <35.389450, 33.195843, 26.660921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163082, 33.119011, 26.639605>,  <34.785801, 32.990959, 26.604076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163082, 33.119011, 26.639605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114310, -0.061689, -0.991528,
		-0.311939, 0.945363, -0.094779,
		0.943201, 0.320131, 0.088821,
		35.446041, 33.215050, 26.666250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796062, 33.548050, 26.141773>,  <34.785801, 32.990959, 26.604076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796062, 33.548050, 26.141773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182316, 33.470509, 26.211035>,  <35.414066, 33.423985, 26.252592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182316, 33.470509, 26.211035>,  <34.796062, 33.548050, 26.141773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182316, 33.470509, 26.211035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198408, 0.119377, -0.972822,
		0.167914, 0.973740, 0.153736,
		0.965629, -0.193853, 0.173153,
		35.472004, 33.412354, 26.262981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168285, 34.161861, 25.845673>,  <34.796062, 33.548050, 26.141773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168285, 34.161861, 25.845673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424683, 33.854847, 25.846928>,  <35.578522, 33.670639, 25.847681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424683, 33.854847, 25.846928>,  <35.168285, 34.161861, 25.845673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424683, 33.854847, 25.846928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282554, 0.232166, -0.930732,
		0.713642, 0.597484, 0.365688,
		0.640998, -0.767536, 0.003139,
		35.616982, 33.624584, 25.847870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805080, 34.401276, 25.571589>,  <35.168285, 34.161861, 25.845673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805080, 34.401276, 25.571589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833138, 34.003101, 25.545687>,  <35.849972, 33.764198, 25.530146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833138, 34.003101, 25.545687>,  <35.805080, 34.401276, 25.571589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833138, 34.003101, 25.545687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383620, 0.086841, -0.919399,
		0.920823, 0.039653, 0.387960,
		0.070147, -0.995433, -0.064753,
		35.854183, 33.704472, 25.526260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556244, 34.223824, 25.270517>,  <35.805080, 34.401276, 25.571589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556244, 34.223824, 25.270517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342278, 33.891472, 25.209185>,  <36.213898, 33.692062, 25.172386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342278, 33.891472, 25.209185>,  <36.556244, 34.223824, 25.270517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342278, 33.891472, 25.209185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404253, -0.092331, -0.909975,
		0.741918, -0.548746, 0.385273,
		-0.534918, -0.830874, -0.153331,
		36.181801, 33.642208, 25.163185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038860, 33.688881, 24.996466>,  <36.556244, 34.223824, 25.270517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038860, 33.688881, 24.996466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666645, 33.567287, 24.914793>,  <36.443317, 33.494331, 24.865789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666645, 33.567287, 24.914793>,  <37.038860, 33.688881, 24.996466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666645, 33.567287, 24.914793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222662, -0.027033, -0.974521,
		0.290720, -0.952293, 0.092841,
		-0.930539, -0.303985, -0.204181,
		36.387482, 33.476093, 24.853539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187416, 33.301056, 24.545063>,  <37.038860, 33.688881, 24.996466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187416, 33.301056, 24.545063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802475, 33.375973, 24.466269>,  <36.571510, 33.420921, 24.418993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802475, 33.375973, 24.466269>,  <37.187416, 33.301056, 24.545063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802475, 33.375973, 24.466269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208482, 0.043615, -0.977053,
		-0.174399, -0.981336, -0.081019,
		-0.962351, 0.187288, -0.196985,
		36.513771, 33.432159, 24.407173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078659, 32.875763, 23.952593>,  <37.187416, 33.301056, 24.545063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078659, 32.875763, 23.952593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780472, 33.141922, 23.937004>,  <36.601559, 33.301617, 23.927650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780472, 33.141922, 23.937004>,  <37.078659, 32.875763, 23.952593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780472, 33.141922, 23.937004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060027, 0.008787, -0.998158,
		-0.663834, -0.746433, -0.046493,
		-0.745467, 0.665402, -0.038973,
		36.556831, 33.341541, 23.925312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795734, 32.589436, 23.410894>,  <37.078659, 32.875763, 23.952593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795734, 32.589436, 23.410894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601341, 32.938873, 23.421120>,  <36.484707, 33.148537, 23.427256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601341, 32.938873, 23.421120>,  <36.795734, 32.589436, 23.410894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601341, 32.938873, 23.421120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254282, 0.169322, -0.952193,
		-0.836159, -0.456248, -0.304427,
		-0.485982, 0.873595, 0.025564,
		36.455547, 33.200951, 23.428789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386497, 32.602406, 22.826284>,  <36.795734, 32.589436, 23.410894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386497, 32.602406, 22.826284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487076, 32.971680, 22.942562>,  <36.547421, 33.193245, 23.012329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487076, 32.971680, 22.942562>,  <36.386497, 32.602406, 22.826284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487076, 32.971680, 22.942562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323213, 0.203013, -0.924294,
		-0.912311, 0.326363, -0.247339,
		0.251442, 0.923186, 0.290696,
		36.562508, 33.248634, 23.029770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167194, 33.119061, 22.270294>,  <36.386497, 32.602406, 22.826284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167194, 33.119061, 22.270294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454372, 33.285271, 22.493685>,  <36.626678, 33.384998, 22.627720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454372, 33.285271, 22.493685>,  <36.167194, 33.119061, 22.270294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454372, 33.285271, 22.493685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454966, 0.327108, -0.828255,
		-0.526844, 0.848727, 0.045795,
		0.717943, 0.415526, 0.558477,
		36.669754, 33.409927, 22.661228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264614, 33.738144, 22.037851>,  <36.167194, 33.119061, 22.270294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264614, 33.738144, 22.037851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616985, 33.676559, 22.216852>,  <36.828407, 33.639610, 22.324253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616985, 33.676559, 22.216852>,  <36.264614, 33.738144, 22.037851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616985, 33.676559, 22.216852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466076, 0.446217, -0.763979,
		-0.082062, 0.881582, 0.464843,
		0.880931, -0.153958, 0.447502,
		36.881264, 33.630371, 22.351103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587990, 34.332275, 21.827999>,  <36.264614, 33.738144, 22.037851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587990, 34.332275, 21.827999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879303, 34.085472, 21.947260>,  <37.054092, 33.937389, 22.018816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879303, 34.085472, 21.947260>,  <36.587990, 34.332275, 21.827999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879303, 34.085472, 21.947260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500968, 0.182508, -0.846004,
		0.467579, 0.765498, 0.442021,
		0.728287, -0.617012, 0.298153,
		37.097790, 33.900368, 22.036705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166752, 34.703686, 21.840813>,  <36.587990, 34.332275, 21.827999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166752, 34.703686, 21.840813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260784, 34.317268, 21.797928>,  <37.317204, 34.085419, 21.772198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260784, 34.317268, 21.797928>,  <37.166752, 34.703686, 21.840813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260784, 34.317268, 21.797928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418913, 0.200234, -0.885674,
		0.877067, 0.163296, 0.451760,
		0.235085, -0.966044, -0.107212,
		37.331310, 34.027454, 21.765764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886818, 34.752861, 21.677540>,  <37.166752, 34.703686, 21.840813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886818, 34.752861, 21.677540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803905, 34.367558, 21.609222>,  <37.754158, 34.136375, 21.568232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803905, 34.367558, 21.609222>,  <37.886818, 34.752861, 21.677540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803905, 34.367558, 21.609222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568039, 0.023629, -0.822662,
		0.796471, -0.267540, 0.542270,
		-0.207282, -0.963257, -0.170793,
		37.741722, 34.078579, 21.557985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493393, 34.395420, 21.656246>,  <37.886818, 34.752861, 21.677540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493393, 34.395420, 21.656246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226742, 34.169529, 21.461641>,  <38.066753, 34.033993, 21.344879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226742, 34.169529, 21.461641>,  <38.493393, 34.395420, 21.656246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226742, 34.169529, 21.461641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628508, -0.074956, -0.774183,
		0.400735, -0.821867, 0.404903,
		-0.666625, -0.564727, -0.486512,
		38.026752, 34.000111, 21.315687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828823, 33.782028, 21.383665>,  <38.493393, 34.395420, 21.656246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828823, 33.782028, 21.383665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503075, 33.853088, 21.162674>,  <38.307625, 33.895725, 21.030079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503075, 33.853088, 21.162674>,  <38.828823, 33.782028, 21.383665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503075, 33.853088, 21.162674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580326, 0.243249, -0.777207,
		-0.003679, -0.953557, -0.301190,
		-0.814376, 0.177648, -0.552479,
		38.258762, 33.906384, 20.996929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981476, 33.489555, 20.770086>,  <38.828823, 33.782028, 21.383665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981476, 33.489555, 20.770086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666058, 33.715260, 20.672262>,  <38.476807, 33.850681, 20.613567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666058, 33.715260, 20.672262>,  <38.981476, 33.489555, 20.770086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666058, 33.715260, 20.672262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381143, 0.136318, -0.914411,
		-0.482625, -0.814267, -0.322556,
		-0.788545, 0.564257, -0.244562,
		38.429493, 33.884537, 20.598894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620327, 33.165909, 20.089670>,  <38.981476, 33.489555, 20.770086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620327, 33.165909, 20.089670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470783, 33.536839, 20.082808>,  <38.381058, 33.759396, 20.078690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470783, 33.536839, 20.082808>,  <38.620327, 33.165909, 20.089670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470783, 33.536839, 20.082808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353193, 0.125238, -0.927130,
		-0.857603, -0.352677, -0.374347,
		-0.373860, 0.927326, -0.017158,
		38.358624, 33.815037, 20.077660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140591, 33.155228, 19.581396>,  <38.620327, 33.165909, 20.089670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140591, 33.155228, 19.581396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250668, 33.535366, 19.639524>,  <38.316715, 33.763447, 19.674402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250668, 33.535366, 19.639524>,  <38.140591, 33.155228, 19.581396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250668, 33.535366, 19.639524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225801, 0.083039, -0.970628,
		-0.934496, 0.299925, -0.191736,
		0.275194, 0.950342, 0.145323,
		38.333225, 33.820469, 19.683121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813606, 33.563290, 19.122259>,  <38.140591, 33.155228, 19.581396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813606, 33.563290, 19.122259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141594, 33.753025, 19.250418>,  <38.338387, 33.866867, 19.327312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141594, 33.753025, 19.250418>,  <37.813606, 33.563290, 19.122259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141594, 33.753025, 19.250418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324429, 0.076029, -0.942850,
		-0.471592, 0.877052, -0.091548,
		0.819968, 0.474341, 0.320396,
		38.387585, 33.895329, 19.346537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985764, 34.167637, 18.721716>,  <37.813606, 33.563290, 19.122259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985764, 34.167637, 18.721716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332848, 34.016964, 18.851448>,  <38.541100, 33.926559, 18.929287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332848, 34.016964, 18.851448>,  <37.985764, 34.167637, 18.721716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332848, 34.016964, 18.851448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437596, 0.269388, -0.857870,
		0.235771, 0.886308, 0.398584,
		0.867711, -0.376680, 0.324331,
		38.593163, 33.903961, 18.948748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427803, 34.874252, 18.783190>,  <37.985764, 34.167637, 18.721716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427803, 34.874252, 18.783190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549679, 35.155846, 18.526573>,  <38.622803, 35.324802, 18.372602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549679, 35.155846, 18.526573>,  <38.427803, 34.874252, 18.783190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549679, 35.155846, 18.526573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133792, -0.635255, -0.760626,
		-0.943009, 0.317586, -0.099367,
		0.304687, 0.703982, -0.641541,
		38.641087, 35.367039, 18.334110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859283, 34.983170, 18.335073>,  <38.427803, 34.874252, 18.783190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859283, 34.983170, 18.335073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199760, 35.089546, 18.154076>,  <38.404045, 35.153370, 18.045477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199760, 35.089546, 18.154076>,  <37.859283, 34.983170, 18.335073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199760, 35.089546, 18.154076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195260, -0.639798, -0.743325,
		-0.487185, 0.721065, -0.492662,
		0.851190, 0.265940, -0.452495,
		38.455116, 35.169327, 18.018328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761456, 35.124023, 17.506920>,  <37.859283, 34.983170, 18.335073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761456, 35.124023, 17.506920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139290, 35.027206, 17.595612>,  <38.365990, 34.969116, 17.648827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139290, 35.027206, 17.595612>,  <37.761456, 35.124023, 17.506920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139290, 35.027206, 17.595612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034975, -0.745851, -0.665194,
		0.326383, 0.620581, -0.712989,
		0.944590, -0.242045, 0.221729,
		38.422668, 34.954594, 17.662130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253098, 35.198277, 16.900938>,  <37.761456, 35.124023, 17.506920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253098, 35.198277, 16.900938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372002, 34.910030, 17.151489>,  <38.443344, 34.737083, 17.301819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372002, 34.910030, 17.151489>,  <38.253098, 35.198277, 16.900938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372002, 34.910030, 17.151489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062395, -0.639968, -0.765864,
		0.952755, 0.266745, -0.145275,
		0.297262, -0.720617, 0.626376,
		38.461182, 34.693844, 17.339401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850651, 34.967548, 16.654135>,  <38.253098, 35.198277, 16.900938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850651, 34.967548, 16.654135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743061, 34.662636, 16.889620>,  <38.678509, 34.479687, 17.030910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743061, 34.662636, 16.889620>,  <38.850651, 34.967548, 16.654135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743061, 34.662636, 16.889620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135203, -0.635067, -0.760533,
		0.953611, -0.124967, 0.273878,
		-0.268972, -0.762282, 0.588711,
		38.662369, 34.433952, 17.066233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561111, 35.118370, 16.784111>,  <38.850651, 34.967548, 16.654135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561111, 35.118370, 16.784111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649246, 35.285202, 16.431408>,  <39.702129, 35.385300, 16.219786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649246, 35.285202, 16.431408>,  <39.561111, 35.118370, 16.784111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649246, 35.285202, 16.431408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832398, -0.551646, -0.052925,
		-0.508492, -0.722312, -0.468722,
		0.220340, 0.417075, -0.881759,
		39.715347, 35.410324, 16.166880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569668, 34.934586, 17.569689>,  <39.561111, 35.118370, 16.784111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569668, 34.934586, 17.569689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208118, 35.044762, 17.438757>,  <38.991188, 35.110867, 17.360199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208118, 35.044762, 17.438757>,  <39.569668, 34.934586, 17.569689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208118, 35.044762, 17.438757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050876, 0.690507, 0.721535,
		0.424762, 0.668830, -0.610118,
		-0.903874, 0.275440, -0.327328,
		38.936954, 35.127392, 17.340559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511414, 35.629288, 17.425232>,  <39.569668, 34.934586, 17.569689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511414, 35.629288, 17.425232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162899, 35.497124, 17.570385>,  <38.953789, 35.417824, 17.657476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162899, 35.497124, 17.570385>,  <39.511414, 35.629288, 17.425232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162899, 35.497124, 17.570385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025223, 0.708294, 0.705467,
		-0.490121, 0.623819, -0.608795,
		-0.871289, -0.330409, 0.362885,
		38.901512, 35.398003, 17.679251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139751, 36.249603, 17.535133>,  <39.511414, 35.629288, 17.425232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139751, 36.249603, 17.535133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991409, 35.967171, 17.776436>,  <38.902405, 35.797710, 17.921217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991409, 35.967171, 17.776436>,  <39.139751, 36.249603, 17.535133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991409, 35.967171, 17.776436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096317, 0.616830, 0.781181,
		-0.923682, 0.347810, -0.160748,
		-0.370857, -0.706080, 0.603255,
		38.880154, 35.755348, 17.957413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552979, 36.493057, 17.813797>,  <39.139751, 36.249603, 17.535133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552979, 36.493057, 17.813797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654625, 36.206997, 18.074255>,  <38.715614, 36.035362, 18.230530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654625, 36.206997, 18.074255>,  <38.552979, 36.493057, 17.813797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654625, 36.206997, 18.074255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237113, 0.606634, 0.758797,
		-0.937657, -0.347219, -0.015414,
		0.254118, -0.715146, 0.651145,
		38.730862, 35.992455, 18.269598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158421, 36.612701, 18.408232>,  <38.552979, 36.493057, 17.813797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158421, 36.612701, 18.408232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445148, 36.371529, 18.548309>,  <38.617184, 36.226826, 18.632357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445148, 36.371529, 18.548309>,  <38.158421, 36.612701, 18.408232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445148, 36.371529, 18.548309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064894, 0.442374, 0.894479,
		-0.694231, -0.663907, 0.277976,
		0.716820, -0.602937, 0.350194,
		38.660194, 36.190647, 18.653368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884552, 36.291225, 19.065977>,  <38.158421, 36.612701, 18.408232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884552, 36.291225, 19.065977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284271, 36.294811, 19.051466>,  <38.524105, 36.296963, 19.042759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284271, 36.294811, 19.051466>,  <37.884552, 36.291225, 19.065977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284271, 36.294811, 19.051466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030738, 0.354977, 0.934370,
		0.021250, -0.934832, 0.354453,
		0.999302, 0.008960, -0.036278,
		38.584061, 36.297501, 19.040583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028202, 36.156990, 19.642212>,  <37.884552, 36.291225, 19.065977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028202, 36.156990, 19.642212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390148, 36.308559, 19.564615>,  <38.607315, 36.399502, 19.518057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390148, 36.308559, 19.564615>,  <38.028202, 36.156990, 19.642212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390148, 36.308559, 19.564615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110054, 0.231981, 0.966475,
		0.411225, -0.895879, 0.168209,
		0.904865, 0.378927, -0.193991,
		38.661610, 36.422237, 19.506418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457771, 35.961582, 20.182995>,  <38.028202, 36.156990, 19.642212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457771, 35.961582, 20.182995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665783, 36.265076, 20.026081>,  <38.790592, 36.447174, 19.931932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665783, 36.265076, 20.026081>,  <38.457771, 35.961582, 20.182995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665783, 36.265076, 20.026081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218491, 0.325825, 0.919837,
		0.825730, -0.564054, 0.003662,
		0.520031, 0.758736, -0.392284,
		38.821793, 36.492695, 19.908396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034298, 35.972790, 20.673861>,  <38.457771, 35.961582, 20.182995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034298, 35.972790, 20.673861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031063, 36.325054, 20.484388>,  <39.029121, 36.536411, 20.370705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031063, 36.325054, 20.484388>,  <39.034298, 35.972790, 20.673861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031063, 36.325054, 20.484388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197943, 0.465734, 0.862502,
		0.980180, -0.086785, -0.178088,
		-0.008090, 0.880659, -0.473682,
		39.028637, 36.589252, 20.342283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689762, 36.512440, 20.905132>,  <39.034298, 35.972790, 20.673861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689762, 36.512440, 20.905132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377277, 36.729626, 20.781906>,  <39.189789, 36.859936, 20.707970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377277, 36.729626, 20.781906>,  <39.689762, 36.512440, 20.905132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377277, 36.729626, 20.781906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064511, 0.561053, 0.825262,
		0.620928, 0.624829, -0.473327,
		-0.781209, 0.542963, -0.308065,
		39.142914, 36.892513, 20.689487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807091, 37.071285, 21.125624>,  <39.689762, 36.512440, 20.905132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807091, 37.071285, 21.125624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416203, 37.109612, 21.049875>,  <39.181671, 37.132607, 21.004427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416203, 37.109612, 21.049875>,  <39.807091, 37.071285, 21.125624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416203, 37.109612, 21.049875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165244, 0.216403, 0.962218,
		0.133177, 0.971591, -0.195640,
		-0.977220, 0.095817, -0.189369,
		39.123035, 37.138355, 20.993065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588127, 37.649086, 21.520086>,  <39.807091, 37.071285, 21.125624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588127, 37.649086, 21.520086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230247, 37.485134, 21.449087>,  <39.015518, 37.386765, 21.406488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230247, 37.485134, 21.449087>,  <39.588127, 37.649086, 21.520086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230247, 37.485134, 21.449087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287876, 0.225318, 0.930784,
		-0.341517, 0.883872, -0.319587,
		-0.894703, -0.409880, -0.177496,
		38.961838, 37.362171, 21.395838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145409, 38.033382, 21.911304>,  <39.588127, 37.649086, 21.520086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145409, 38.033382, 21.911304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924625, 37.705566, 21.849722>,  <38.792156, 37.508877, 21.812773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924625, 37.705566, 21.849722>,  <39.145409, 38.033382, 21.911304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924625, 37.705566, 21.849722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407688, 0.104160, 0.907161,
		-0.727418, 0.563476, -0.391608,
		-0.551953, -0.819540, -0.153955,
		38.759041, 37.459705, 21.803535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512794, 38.157913, 22.178314>,  <39.145409, 38.033382, 21.911304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512794, 38.157913, 22.178314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541290, 37.758942, 22.175398>,  <38.558388, 37.519558, 22.173649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541290, 37.758942, 22.175398>,  <38.512794, 38.157913, 22.178314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541290, 37.758942, 22.175398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539926, -0.044703, 0.840525,
		-0.838693, -0.055940, -0.541724,
		0.071235, -0.997433, -0.007289,
		38.562660, 37.459713, 22.173212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883366, 37.955299, 22.444908>,  <38.512794, 38.157913, 22.178314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883366, 37.955299, 22.444908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118076, 37.632256, 22.468454>,  <38.258904, 37.438431, 22.482582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118076, 37.632256, 22.468454>,  <37.883366, 37.955299, 22.444908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118076, 37.632256, 22.468454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575958, -0.365159, 0.731389,
		-0.569178, -0.463068, -0.679415,
		0.586778, -0.807606, 0.058867,
		38.294109, 37.389973, 22.486115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425304, 37.402985, 22.617336>,  <37.883366, 37.955299, 22.444908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425304, 37.402985, 22.617336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774811, 37.245510, 22.731554>,  <37.984516, 37.151024, 22.800085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774811, 37.245510, 22.731554>,  <37.425304, 37.402985, 22.617336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774811, 37.245510, 22.731554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427145, -0.340481, 0.837628,
		-0.232540, -0.853864, -0.465663,
		0.873769, -0.393687, 0.285548,
		38.036942, 37.127403, 22.817219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252895, 36.692261, 22.903070>,  <37.425304, 37.402985, 22.617336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252895, 36.692261, 22.903070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613762, 36.790573, 23.044876>,  <37.830284, 36.849560, 23.129959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613762, 36.790573, 23.044876>,  <37.252895, 36.692261, 22.903070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613762, 36.790573, 23.044876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224987, -0.433102, 0.872814,
		0.368064, -0.867187, -0.335433,
		0.902169, 0.245784, 0.354515,
		37.884415, 36.864307, 23.151230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662884, 36.068760, 23.150436>,  <37.252895, 36.692261, 22.903070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662884, 36.068760, 23.150436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796864, 36.378693, 23.364891>,  <37.877251, 36.564651, 23.493565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796864, 36.378693, 23.364891>,  <37.662884, 36.068760, 23.150436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796864, 36.378693, 23.364891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197576, -0.498599, 0.844016,
		0.921290, -0.388628, -0.013916,
		0.334947, 0.774834, 0.536137,
		37.897346, 36.611141, 23.525732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004074, 35.742279, 23.559492>,  <37.662884, 36.068760, 23.150436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004074, 35.742279, 23.559492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948105, 36.100975, 23.727432>,  <37.914524, 36.316193, 23.828196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948105, 36.100975, 23.727432>,  <38.004074, 35.742279, 23.559492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948105, 36.100975, 23.727432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310795, -0.442365, 0.841261,
		0.940122, -0.012777, 0.340599,
		-0.139920, 0.896744, 0.419848,
		37.906128, 36.369999, 23.853386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371326, 35.684956, 24.224298>,  <38.004074, 35.742279, 23.559492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371326, 35.684956, 24.224298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126579, 36.000465, 24.247803>,  <37.979729, 36.189770, 24.261906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126579, 36.000465, 24.247803>,  <38.371326, 35.684956, 24.224298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126579, 36.000465, 24.247803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269195, -0.277525, 0.922233,
		0.743740, 0.548469, 0.382143,
		-0.611871, 0.788772, 0.058762,
		37.943020, 36.237099, 24.265430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478451, 36.255260, 24.845953>,  <38.371326, 35.684956, 24.224298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478451, 36.255260, 24.845953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102295, 36.193642, 24.724669>,  <37.876602, 36.156670, 24.651897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102295, 36.193642, 24.724669>,  <38.478451, 36.255260, 24.845953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102295, 36.193642, 24.724669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307272, 0.002680, 0.951618,
		-0.145785, 0.988060, -0.049856,
		-0.940389, -0.154050, -0.303212,
		37.820179, 36.147427, 24.633705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224167, 36.433147, 25.485477>,  <38.478451, 36.255260, 24.845953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224167, 36.433147, 25.485477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898163, 36.368057, 25.263027>,  <37.702560, 36.329002, 25.129557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898163, 36.368057, 25.263027>,  <38.224167, 36.433147, 25.485477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898163, 36.368057, 25.263027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577641, 0.152539, 0.801912,
		-0.045658, 0.974810, -0.218316,
		-0.815013, -0.162722, -0.556126,
		37.653660, 36.319241, 25.096189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835796, 36.861504, 25.774225>,  <38.224167, 36.433147, 25.485477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835796, 36.861504, 25.774225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575790, 36.617828, 25.592514>,  <37.419788, 36.471622, 25.483486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575790, 36.617828, 25.592514>,  <37.835796, 36.861504, 25.774225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575790, 36.617828, 25.592514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587210, 0.023204, 0.809102,
		-0.482357, 0.792684, -0.372806,
		-0.650012, -0.609191, -0.454279,
		37.380787, 36.435070, 25.456230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205566, 37.093044, 25.885277>,  <37.835796, 36.861504, 25.774225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205566, 37.093044, 25.885277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148304, 36.706814, 25.798407>,  <37.113945, 36.475075, 25.746284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148304, 36.706814, 25.798407>,  <37.205566, 37.093044, 25.885277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148304, 36.706814, 25.798407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589045, -0.093211, 0.802706,
		-0.795319, 0.242838, -0.555426,
		-0.143156, -0.965578, -0.217175,
		37.105358, 36.417141, 25.733253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483166, 37.063229, 25.821012>,  <37.205566, 37.093044, 25.885277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483166, 37.063229, 25.821012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632797, 36.702061, 25.905676>,  <36.722576, 36.485359, 25.956474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632797, 36.702061, 25.905676>,  <36.483166, 37.063229, 25.821012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632797, 36.702061, 25.905676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672169, -0.106733, 0.732664,
		-0.638947, -0.416344, -0.646842,
		0.374080, -0.902921, 0.211656,
		36.745022, 36.431183, 25.969173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963291, 36.738808, 26.137133>,  <36.483166, 37.063229, 25.821012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963291, 36.738808, 26.137133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269382, 36.501419, 26.236906>,  <36.453037, 36.358986, 26.296770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269382, 36.501419, 26.236906>,  <35.963291, 36.738808, 26.137133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269382, 36.501419, 26.236906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437495, -0.195192, 0.877780,
		-0.472247, -0.780830, -0.409006,
		0.765232, -0.593468, 0.249431,
		36.498951, 36.323380, 26.311735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608627, 36.214668, 26.498014>,  <35.963291, 36.738808, 26.137133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608627, 36.214668, 26.498014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996044, 36.229416, 26.596453>,  <36.228497, 36.238266, 26.655516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996044, 36.229416, 26.596453>,  <35.608627, 36.214668, 26.498014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996044, 36.229416, 26.596453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245512, -0.019611, 0.969195,
		0.040564, -0.999128, -0.009941,
		0.968544, 0.036874, 0.246093,
		36.286606, 36.240479, 26.670280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653973, 35.734924, 27.032259>,  <35.608627, 36.214668, 26.498014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653973, 35.734924, 27.032259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975491, 35.968880, 27.075741>,  <36.168400, 36.109253, 27.101830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975491, 35.968880, 27.075741>,  <35.653973, 35.734924, 27.032259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975491, 35.968880, 27.075741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207240, 0.104010, 0.972745,
		0.557644, -0.804415, 0.204816,
		0.803794, 0.584892, 0.108706,
		36.216629, 36.144348, 27.108353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936943, 35.449883, 27.649189>,  <35.653973, 35.734924, 27.032259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936943, 35.449883, 27.649189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084427, 35.818737, 27.602327>,  <36.172916, 36.040051, 27.574211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084427, 35.818737, 27.602327>,  <35.936943, 35.449883, 27.649189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084427, 35.818737, 27.602327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085776, 0.159248, 0.983505,
		0.925580, -0.352575, 0.137813,
		0.368705, 0.922134, -0.117155,
		36.195038, 36.095379, 27.567181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455330, 35.532646, 28.105316>,  <35.936943, 35.449883, 27.649189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455330, 35.532646, 28.105316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333206, 35.906830, 28.034098>,  <36.259930, 36.131340, 27.991367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333206, 35.906830, 28.034098>,  <36.455330, 35.532646, 28.105316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333206, 35.906830, 28.034098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091310, 0.157353, 0.983312,
		0.947865, 0.316474, 0.037375,
		-0.305312, 0.935459, -0.178046,
		36.241611, 36.187469, 27.980684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870449, 35.920292, 28.573763>,  <36.455330, 35.532646, 28.105316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870449, 35.920292, 28.573763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555161, 36.146519, 28.476727>,  <36.365990, 36.282253, 28.418505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555161, 36.146519, 28.476727>,  <36.870449, 35.920292, 28.573763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555161, 36.146519, 28.476727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009936, 0.382454, 0.923921,
		0.615317, 0.730661, -0.295838,
		-0.788217, 0.565565, -0.242590,
		36.318695, 36.316189, 28.403950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011871, 36.499321, 28.970648>,  <36.870449, 35.920292, 28.573763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011871, 36.499321, 28.970648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628445, 36.533848, 28.862059>,  <36.398388, 36.554565, 28.796906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628445, 36.533848, 28.862059>,  <37.011871, 36.499321, 28.970648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628445, 36.533848, 28.862059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180991, 0.551370, 0.814391,
		0.219982, 0.829783, -0.512902,
		-0.958567, 0.086320, -0.271475,
		36.340874, 36.559746, 28.780617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993160, 37.145565, 29.265993>,  <37.011871, 36.499321, 28.970648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993160, 37.145565, 29.265993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625504, 37.004082, 29.196638>,  <36.404907, 36.919193, 29.155025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625504, 37.004082, 29.196638>,  <36.993160, 37.145565, 29.265993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625504, 37.004082, 29.196638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356776, 0.560912, 0.747054,
		-0.166983, 0.748511, -0.641754,
		-0.919145, -0.353707, -0.173388,
		36.349758, 36.897968, 29.144621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582916, 37.711685, 29.196815>,  <36.993160, 37.145565, 29.265993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582916, 37.711685, 29.196815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331360, 37.423557, 29.313871>,  <36.180424, 37.250683, 29.384106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331360, 37.423557, 29.313871>,  <36.582916, 37.711685, 29.196815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331360, 37.423557, 29.313871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214359, 0.522443, 0.825290,
		-0.747358, 0.456289, -0.482967,
		-0.628893, -0.720315, 0.292642,
		36.142693, 37.207462, 29.401665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092796, 38.143665, 29.500814>,  <36.582916, 37.711685, 29.196815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092796, 38.143665, 29.500814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996422, 37.774548, 29.621084>,  <35.938599, 37.553078, 29.693247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996422, 37.774548, 29.621084>,  <36.092796, 38.143665, 29.500814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996422, 37.774548, 29.621084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482771, 0.382707, 0.787698,
		-0.841951, 0.044629, -0.537705,
		-0.240937, -0.922791, 0.300675,
		35.924141, 37.497711, 29.711287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386517, 38.157253, 29.624598>,  <36.092796, 38.143665, 29.500814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386517, 38.157253, 29.624598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554096, 37.855194, 29.826281>,  <35.654644, 37.673958, 29.947290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554096, 37.855194, 29.826281>,  <35.386517, 38.157253, 29.624598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554096, 37.855194, 29.826281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376834, 0.360609, 0.853204,
		-0.826120, -0.547454, -0.133488,
		0.418953, -0.755152, 0.504206,
		35.679783, 37.628647, 29.977543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006126, 38.027767, 30.173597>,  <35.386517, 38.157253, 29.624598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006126, 38.027767, 30.173597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337837, 37.842697, 30.298965>,  <35.536865, 37.731655, 30.374186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337837, 37.842697, 30.298965>,  <35.006126, 38.027767, 30.173597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337837, 37.842697, 30.298965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201005, 0.276357, 0.939800,
		-0.521434, -0.842355, 0.136178,
		0.829279, -0.462671, 0.313420,
		35.586620, 37.703896, 30.392992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862797, 37.589397, 30.731901>,  <35.006126, 38.027767, 30.173597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862797, 37.589397, 30.731901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248268, 37.683517, 30.782434>,  <35.479549, 37.739990, 30.812754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248268, 37.683517, 30.782434>,  <34.862797, 37.589397, 30.731901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248268, 37.683517, 30.782434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169496, 0.173283, 0.970177,
		0.206406, -0.956347, 0.206873,
		0.963674, 0.235314, 0.126331,
		35.537373, 37.754108, 30.820333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990200, 37.364895, 31.399204>,  <34.862797, 37.589397, 30.731901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990200, 37.364895, 31.399204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327030, 37.572411, 31.340183>,  <35.529129, 37.696918, 31.304770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327030, 37.572411, 31.340183>,  <34.990200, 37.364895, 31.399204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327030, 37.572411, 31.340183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048641, 0.345499, 0.937158,
		0.537167, -0.781977, 0.316170,
		0.842072, 0.518789, -0.147554,
		35.579651, 37.728046, 31.295918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426483, 37.304306, 32.060043>,  <34.990200, 37.364895, 31.399204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426483, 37.304306, 32.060043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546154, 37.642460, 31.883038>,  <35.617958, 37.845352, 31.776834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546154, 37.642460, 31.883038>,  <35.426483, 37.304306, 32.060043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546154, 37.642460, 31.883038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009716, 0.461032, 0.887330,
		0.954147, -0.269772, 0.129718,
		0.299181, 0.845384, -0.442513,
		35.635910, 37.896076, 31.750284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906296, 37.541779, 32.570225>,  <35.426483, 37.304306, 32.060043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906296, 37.541779, 32.570225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844448, 37.859013, 32.334560>,  <35.807339, 38.049355, 32.193161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844448, 37.859013, 32.334560>,  <35.906296, 37.541779, 32.570225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844448, 37.859013, 32.334560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139158, 0.607867, 0.781749,
		0.978124, 0.038889, -0.204354,
		-0.154621, 0.793086, -0.589158,
		35.798061, 38.096939, 32.157814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405296, 38.034977, 32.721527>,  <35.906296, 37.541779, 32.570225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405296, 38.034977, 32.721527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115082, 38.247162, 32.546162>,  <35.940952, 38.374474, 32.440941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115082, 38.247162, 32.546162>,  <36.405296, 38.034977, 32.721527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115082, 38.247162, 32.546162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109286, 0.717783, 0.687637,
		0.679454, 0.450991, -0.578748,
		-0.725534, 0.530467, -0.438413,
		35.897423, 38.406303, 32.414639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865921, 38.532131, 32.968086>,  <36.405296, 38.034977, 32.721527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865921, 38.532131, 32.968086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253819, 38.593937, 33.043690>,  <37.486557, 38.631020, 33.089050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253819, 38.593937, 33.043690>,  <36.865921, 38.532131, 32.968086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253819, 38.593937, 33.043690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156755, 0.199409, -0.967297,
		-0.187149, 0.967658, 0.169155,
		0.969744, 0.154513, 0.189005,
		37.544743, 38.640289, 33.100391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053547, 39.031662, 32.373432>,  <36.865921, 38.532131, 32.968086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053547, 39.031662, 32.373432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391518, 38.889591, 32.533401>,  <37.594299, 38.804348, 32.629383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391518, 38.889591, 32.533401>,  <37.053547, 39.031662, 32.373432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391518, 38.889591, 32.533401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448566, 0.063267, -0.891507,
		0.291340, 0.932656, 0.212776,
		0.844931, -0.355176, 0.399926,
		37.644997, 38.783039, 32.653378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570049, 39.556629, 32.334301>,  <37.053547, 39.031662, 32.373432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570049, 39.556629, 32.334301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770103, 39.210629, 32.350510>,  <37.890137, 39.003029, 32.360233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770103, 39.210629, 32.350510>,  <37.570049, 39.556629, 32.334301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770103, 39.210629, 32.350510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557641, 0.285924, -0.779284,
		0.662494, 0.412344, 0.625359,
		0.500138, -0.864997, 0.040517,
		37.920143, 38.951130, 32.362663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294357, 39.709740, 32.135628>,  <37.570049, 39.556629, 32.334301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294357, 39.709740, 32.135628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268070, 39.316750, 32.065861>,  <38.252296, 39.080956, 32.024002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268070, 39.316750, 32.065861>,  <38.294357, 39.709740, 32.135628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268070, 39.316750, 32.065861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413034, 0.132331, -0.901050,
		0.908341, -0.131258, 0.397099,
		-0.065722, -0.982476, -0.174416,
		38.248352, 39.022007, 32.013535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928356, 39.492058, 31.768625>,  <38.294357, 39.709740, 32.135628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928356, 39.492058, 31.768625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679855, 39.190380, 31.683556>,  <38.530754, 39.009373, 31.632513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679855, 39.190380, 31.683556>,  <38.928356, 39.492058, 31.768625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679855, 39.190380, 31.683556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292421, 0.028665, -0.955860,
		0.727002, -0.656023, 0.202735,
		-0.621255, -0.754196, -0.212674,
		38.493481, 38.964123, 31.619753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344086, 39.010311, 31.564991>,  <38.928356, 39.492058, 31.768625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344086, 39.010311, 31.564991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979103, 38.922691, 31.426750>,  <38.760113, 38.870121, 31.343805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979103, 38.922691, 31.426750>,  <39.344086, 39.010311, 31.564991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979103, 38.922691, 31.426750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357547, -0.016145, -0.933756,
		0.198955, -0.975581, 0.093050,
		-0.912457, -0.219046, -0.345604,
		38.705364, 38.856979, 31.323069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492302, 38.450771, 31.191532>,  <39.344086, 39.010311, 31.564991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492302, 38.450771, 31.191532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129257, 38.569828, 31.073107>,  <38.911430, 38.641262, 31.002052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129257, 38.569828, 31.073107>,  <39.492302, 38.450771, 31.191532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129257, 38.569828, 31.073107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320286, 0.035003, -0.946674,
		-0.271409, -0.954035, -0.127100,
		-0.907609, 0.297645, -0.296064,
		38.856976, 38.659122, 30.984287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273010, 37.943497, 30.636086>,  <39.492302, 38.450771, 31.191532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273010, 37.943497, 30.636086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036198, 38.255737, 30.555931>,  <38.894108, 38.443081, 30.507837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036198, 38.255737, 30.555931>,  <39.273010, 37.943497, 30.636086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036198, 38.255737, 30.555931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044367, -0.216702, -0.975229,
		-0.804690, -0.586261, 0.093662,
		-0.592036, 0.780601, -0.200388,
		38.858585, 38.489918, 30.495815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751579, 37.706245, 30.183989>,  <39.273010, 37.943497, 30.636086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751579, 37.706245, 30.183989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739517, 38.100922, 30.120079>,  <38.732281, 38.337727, 30.081734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739517, 38.100922, 30.120079>,  <38.751579, 37.706245, 30.183989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739517, 38.100922, 30.120079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219784, -0.149392, -0.964042,
		-0.975082, -0.064186, -0.212355,
		-0.030154, 0.986693, -0.159776,
		38.730473, 38.396931, 30.072145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364796, 37.765881, 29.625591>,  <38.751579, 37.706245, 30.183989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364796, 37.765881, 29.625591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575497, 38.104584, 29.655338>,  <38.701916, 38.307808, 29.673187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575497, 38.104584, 29.655338>,  <38.364796, 37.765881, 29.625591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575497, 38.104584, 29.655338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157081, -0.010983, -0.987525,
		-0.835381, 0.531859, -0.138796,
		0.526749, 0.846762, 0.074370,
		38.733521, 38.358612, 29.677649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119335, 38.290840, 29.108583>,  <38.364796, 37.765881, 29.625591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119335, 38.290840, 29.108583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491676, 38.397724, 29.208265>,  <38.715080, 38.461853, 29.268074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491676, 38.397724, 29.208265>,  <38.119335, 38.290840, 29.108583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491676, 38.397724, 29.208265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214916, 0.151167, -0.964863,
		-0.295493, 0.951707, 0.083287,
		0.930857, 0.267210, 0.249206,
		38.770935, 38.477886, 29.283028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420677, 38.887047, 28.712160>,  <38.119335, 38.290840, 29.108583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420677, 38.887047, 28.712160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778633, 38.761177, 28.838751>,  <38.993404, 38.685654, 28.914705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778633, 38.761177, 28.838751>,  <38.420677, 38.887047, 28.712160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778633, 38.761177, 28.838751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363373, 0.102039, -0.926039,
		0.259108, 0.943699, 0.205657,
		0.894887, -0.314674, 0.316476,
		39.047100, 38.666775, 28.933693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863060, 39.331326, 28.370296>,  <38.420677, 38.887047, 28.712160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863060, 39.331326, 28.370296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101685, 39.032894, 28.488611>,  <39.244858, 38.853836, 28.559599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101685, 39.032894, 28.488611>,  <38.863060, 39.331326, 28.370296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101685, 39.032894, 28.488611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455578, 0.011385, -0.890123,
		0.660732, 0.665763, 0.346688,
		0.596558, -0.746076, 0.295785,
		39.280651, 38.809071, 28.577347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536545, 39.503525, 28.135855>,  <38.863060, 39.331326, 28.370296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536545, 39.503525, 28.135855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529167, 39.109116, 28.202080>,  <39.524742, 38.872471, 28.241814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529167, 39.109116, 28.202080>,  <39.536545, 39.503525, 28.135855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529167, 39.109116, 28.202080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292140, -0.163678, -0.942265,
		0.956198, 0.030988, 0.291077,
		-0.018444, -0.986027, 0.165561,
		39.523636, 38.813309, 28.251749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143436, 39.314861, 27.883150>,  <39.536545, 39.503525, 28.135855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143436, 39.314861, 27.883150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916428, 38.987526, 27.919453>,  <39.780224, 38.791122, 27.941235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916428, 38.987526, 27.919453>,  <40.143436, 39.314861, 27.883150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916428, 38.987526, 27.919453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328123, -0.325887, -0.886641,
		0.755153, -0.473407, 0.453465,
		-0.567520, -0.818342, 0.090758,
		39.746170, 38.742023, 27.946680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633545, 38.788471, 27.788885>,  <40.143436, 39.314861, 27.883150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633545, 38.788471, 27.788885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271568, 38.638905, 27.707628>,  <40.054382, 38.549164, 27.658875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271568, 38.638905, 27.707628>,  <40.633545, 38.788471, 27.788885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271568, 38.638905, 27.707628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314847, -0.267178, -0.910762,
		0.286277, -0.888144, 0.359508,
		-0.904940, -0.373920, -0.203142,
		40.000088, 38.526730, 27.646685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817162, 38.280434, 27.440701>,  <40.633545, 38.788471, 27.788885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817162, 38.280434, 27.440701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436466, 38.328037, 27.327541>,  <40.208050, 38.356602, 27.259645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436466, 38.328037, 27.327541>,  <40.817162, 38.280434, 27.440701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436466, 38.328037, 27.327541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242776, -0.271982, -0.931174,
		-0.187763, -0.954915, 0.229962,
		-0.951738, 0.119011, -0.282899,
		40.150944, 38.363739, 27.242672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563175, 37.677822, 27.011372>,  <40.817162, 38.280434, 27.440701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563175, 37.677822, 27.011372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336464, 37.991077, 26.909035>,  <40.200439, 38.179031, 26.847633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336464, 37.991077, 26.909035>,  <40.563175, 37.677822, 27.011372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336464, 37.991077, 26.909035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065353, -0.352291, -0.933606,
		-0.821277, -0.512424, 0.250850,
		-0.566775, 0.783143, -0.255840,
		40.166431, 38.226021, 26.832283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169128, 37.452980, 26.584681>,  <40.563175, 37.677822, 27.011372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169128, 37.452980, 26.584681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110474, 37.841991, 26.512360>,  <40.075279, 38.075397, 26.468967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110474, 37.841991, 26.512360>,  <40.169128, 37.452980, 26.584681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110474, 37.841991, 26.512360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040634, -0.188547, -0.981223,
		-0.988355, -0.136540, 0.067166,
		-0.146640, 0.972526, -0.180804,
		40.066483, 38.133751, 26.458118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611580, 37.455124, 26.151398>,  <40.169128, 37.452980, 26.584681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611580, 37.455124, 26.151398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797005, 37.803631, 26.086905>,  <39.908260, 38.012737, 26.048208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797005, 37.803631, 26.086905>,  <39.611580, 37.455124, 26.151398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797005, 37.803631, 26.086905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148327, -0.103092, -0.983550,
		-0.873559, 0.479855, 0.081443,
		0.463565, 0.871270, -0.161233,
		39.936073, 38.065010, 26.038534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251202, 37.625446, 25.542677>,  <39.611580, 37.455124, 26.151398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251202, 37.625446, 25.542677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584171, 37.844841, 25.574247>,  <39.783955, 37.976479, 25.593189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584171, 37.844841, 25.574247>,  <39.251202, 37.625446, 25.542677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584171, 37.844841, 25.574247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168908, -0.115496, -0.978842,
		-0.527765, 0.828145, -0.188786,
		0.832427, 0.548486, 0.078926,
		39.833900, 38.009388, 25.597925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287010, 38.025600, 24.960718>,  <39.251202, 37.625446, 25.542677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287010, 38.025600, 24.960718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659290, 38.013340, 25.106512>,  <39.882660, 38.005985, 25.193989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659290, 38.013340, 25.106512>,  <39.287010, 38.025600, 24.960718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659290, 38.013340, 25.106512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322655, -0.400585, -0.857570,
		0.172289, 0.915747, -0.362938,
		0.930704, -0.030646, 0.364486,
		39.938503, 38.004147, 25.215858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678349, 38.305523, 24.463459>,  <39.287010, 38.025600, 24.960718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678349, 38.305523, 24.463459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951637, 38.113876, 24.683876>,  <40.115612, 37.998890, 24.816126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951637, 38.113876, 24.683876>,  <39.678349, 38.305523, 24.463459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951637, 38.113876, 24.683876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337351, -0.462171, -0.820117,
		0.647609, 0.746220, -0.154137,
		0.683226, -0.479117, 0.551044,
		40.156605, 37.970142, 24.849190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326084, 38.376167, 24.067770>,  <39.678349, 38.305523, 24.463459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326084, 38.376167, 24.067770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389236, 38.060337, 24.304970>,  <40.427128, 37.870838, 24.447290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389236, 38.060337, 24.304970>,  <40.326084, 38.376167, 24.067770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389236, 38.060337, 24.304970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388114, -0.502582, -0.772514,
		0.907987, 0.352120, 0.227094,
		0.157884, -0.789571, 0.593001,
		40.436600, 37.823467, 24.482870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046097, 38.122284, 23.852600>,  <40.326084, 38.376167, 24.067770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046097, 38.122284, 23.852600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842663, 37.837410, 24.046148>,  <40.720604, 37.666485, 24.162277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842663, 37.837410, 24.046148>,  <41.046097, 38.122284, 23.852600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842663, 37.837410, 24.046148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248607, -0.659507, -0.709397,
		0.824341, -0.240493, 0.512469,
		-0.508582, -0.712189, 0.483871,
		40.690086, 37.623753, 24.191309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537346, 37.544258, 24.017321>,  <41.046097, 38.122284, 23.852600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537346, 37.544258, 24.017321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188210, 37.349846, 24.034863>,  <40.978725, 37.233200, 24.045387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188210, 37.349846, 24.034863>,  <41.537346, 37.544258, 24.017321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188210, 37.349846, 24.034863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235670, -0.498506, -0.834237,
		0.427324, -0.717823, 0.549659,
		-0.872842, -0.486027, 0.043854,
		40.926357, 37.204037, 24.048019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668613, 36.797016, 24.095943>,  <41.537346, 37.544258, 24.017321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668613, 36.797016, 24.095943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301090, 36.863575, 23.952774>,  <41.080578, 36.903511, 23.866873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301090, 36.863575, 23.952774>,  <41.668613, 36.797016, 24.095943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301090, 36.863575, 23.952774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223853, -0.527202, -0.819724,
		-0.325095, -0.833289, 0.447149,
		-0.918805, 0.166392, -0.357925,
		41.025448, 36.913494, 23.845396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430153, 36.162689, 23.758360>,  <41.668613, 36.797016, 24.095943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430153, 36.162689, 23.758360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203403, 36.455959, 23.608107>,  <41.067352, 36.631924, 23.517954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203403, 36.455959, 23.608107>,  <41.430153, 36.162689, 23.758360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203403, 36.455959, 23.608107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084678, -0.401701, -0.911847,
		-0.819441, -0.548710, 0.165629,
		-0.566874, 0.733180, -0.375634,
		41.033340, 36.675915, 23.495417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963490, 35.850574, 23.317343>,  <41.430153, 36.162689, 23.758360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963490, 35.850574, 23.317343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952271, 36.226009, 23.179779>,  <40.945538, 36.451271, 23.097240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952271, 36.226009, 23.179779>,  <40.963490, 35.850574, 23.317343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952271, 36.226009, 23.179779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016226, -0.344426, -0.938673,
		-0.999475, -0.020746, 0.024889,
		-0.028046, 0.938584, -0.343909,
		40.943855, 36.507584, 23.076607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367718, 35.895470, 22.765944>,  <40.963490, 35.850574, 23.317343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367718, 35.895470, 22.765944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610088, 36.207470, 22.703402>,  <40.755512, 36.394669, 22.665876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610088, 36.207470, 22.703402>,  <40.367718, 35.895470, 22.765944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610088, 36.207470, 22.703402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093715, -0.265165, -0.959638,
		-0.789979, 0.566820, -0.233770,
		0.605930, 0.780001, -0.156355,
		40.791866, 36.441471, 22.656494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046707, 36.226280, 22.111027>,  <40.367718, 35.895470, 22.765944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046707, 36.226280, 22.111027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422451, 36.347721, 22.174807>,  <40.647900, 36.420586, 22.213076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422451, 36.347721, 22.174807>,  <40.046707, 36.226280, 22.111027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422451, 36.347721, 22.174807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259047, -0.323545, -0.910062,
		-0.224704, 0.896184, -0.382572,
		0.939363, 0.303599, 0.159452,
		40.704262, 36.438801, 22.222643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259304, 36.595425, 21.537350>,  <40.046707, 36.226280, 22.111027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259304, 36.595425, 21.537350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606720, 36.481144, 21.699348>,  <40.815170, 36.412575, 21.796547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606720, 36.481144, 21.699348>,  <40.259304, 36.595425, 21.537350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606720, 36.481144, 21.699348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265990, -0.420800, -0.867281,
		0.418203, 0.860990, -0.289487,
		0.868536, -0.285699, 0.404995,
		40.867279, 36.395435, 21.820847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782909, 36.800068, 21.087172>,  <40.259304, 36.595425, 21.537350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782909, 36.800068, 21.087172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941444, 36.503700, 21.304041>,  <41.036568, 36.325878, 21.434162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941444, 36.503700, 21.304041>,  <40.782909, 36.800068, 21.087172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941444, 36.503700, 21.304041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074482, -0.562639, -0.823341,
		0.915077, 0.366706, -0.167811,
		0.396341, -0.740921, 0.542171,
		41.060345, 36.281425, 21.466692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159840, 36.516125, 20.585350>,  <40.782909, 36.800068, 21.087172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159840, 36.516125, 20.585350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186886, 36.246262, 20.879360>,  <41.203114, 36.084343, 21.055767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186886, 36.246262, 20.879360>,  <41.159840, 36.516125, 20.585350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186886, 36.246262, 20.879360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209124, -0.710765, -0.671625,
		0.975549, 0.199124, 0.093029,
		0.067615, -0.674657, 0.735028,
		41.207169, 36.043865, 21.099869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754593, 36.101807, 20.523361>,  <41.159840, 36.516125, 20.585350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754593, 36.101807, 20.523361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483231, 35.877106, 20.712761>,  <41.320415, 35.742283, 20.826401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483231, 35.877106, 20.712761>,  <41.754593, 36.101807, 20.523361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483231, 35.877106, 20.712761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111714, -0.715868, -0.689241,
		0.726148, -0.414686, 0.548402,
		-0.678402, -0.561755, 0.473499,
		41.279709, 35.708580, 20.854811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033661, 35.351387, 20.398998>,  <41.754593, 36.101807, 20.523361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033661, 35.351387, 20.398998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662434, 35.320026, 20.544621>,  <41.439697, 35.301212, 20.631994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662434, 35.320026, 20.544621>,  <42.033661, 35.351387, 20.398998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662434, 35.320026, 20.544621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136137, -0.838501, -0.527620,
		0.346625, -0.539231, 0.767516,
		-0.928072, -0.078399, 0.364055,
		41.384010, 35.296505, 20.653837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979446, 34.695820, 20.477991>,  <42.033661, 35.351387, 20.398998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979446, 34.695820, 20.477991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597385, 34.811356, 20.451908>,  <41.368149, 34.880676, 20.436258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597385, 34.811356, 20.451908>,  <41.979446, 34.695820, 20.477991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597385, 34.811356, 20.451908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182965, -0.748838, -0.636997,
		-0.232820, -0.596500, 0.768104,
		-0.955154, 0.288841, -0.065206,
		41.310841, 34.898006, 20.432346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489483, 34.065895, 20.496466>,  <41.979446, 34.695820, 20.477991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489483, 34.065895, 20.496466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331619, 34.373455, 20.295254>,  <41.236900, 34.557991, 20.174526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331619, 34.373455, 20.295254>,  <41.489483, 34.065895, 20.496466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331619, 34.373455, 20.295254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192532, -0.604518, -0.772975,
		-0.898429, -0.208213, 0.386617,
		-0.394660, 0.768899, -0.503029,
		41.213223, 34.604126, 20.144344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070610, 33.891747, 20.174614>,  <41.489483, 34.065895, 20.496466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070610, 33.891747, 20.174614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363861, 33.638241, 20.273296>,  <42.539814, 33.486137, 20.332506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363861, 33.638241, 20.273296>,  <42.070610, 33.891747, 20.174614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363861, 33.638241, 20.273296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058416, 0.302731, 0.951284,
		-0.677575, -0.711826, 0.184919,
		0.733130, -0.633764, 0.246705,
		42.583801, 33.448112, 20.347307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814064, 33.500416, 20.822104>,  <42.070610, 33.891747, 20.174614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814064, 33.500416, 20.822104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211071, 33.452663, 20.832352>,  <42.449276, 33.424011, 20.838501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211071, 33.452663, 20.832352>,  <41.814064, 33.500416, 20.822104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211071, 33.452663, 20.832352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022037, 0.031236, 0.999269,
		-0.120090, -0.992357, 0.028372,
		0.992518, -0.119377, 0.025620,
		42.508827, 33.416851, 20.840038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908474, 33.063389, 21.325272>,  <41.814064, 33.500416, 20.822104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908474, 33.063389, 21.325272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260620, 33.247658, 21.280115>,  <42.471909, 33.358219, 21.253021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260620, 33.247658, 21.280115>,  <41.908474, 33.063389, 21.325272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260620, 33.247658, 21.280115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005210, 0.228609, 0.973504,
		0.474272, -0.857626, 0.198859,
		0.880363, 0.460669, -0.112891,
		42.524731, 33.385857, 21.246248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261269, 32.959190, 21.955099>,  <41.908474, 33.063389, 21.325272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261269, 32.959190, 21.955099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460102, 33.268852, 21.798338>,  <42.579403, 33.454651, 21.704281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460102, 33.268852, 21.798338>,  <42.261269, 32.959190, 21.955099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460102, 33.268852, 21.798338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257621, 0.299617, 0.918619,
		0.828575, -0.557596, -0.050504,
		0.497087, 0.774155, -0.391904,
		42.609230, 33.501099, 21.680767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848129, 32.949223, 22.329315>,  <42.261269, 32.959190, 21.955099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848129, 32.949223, 22.329315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804237, 33.320568, 22.187273>,  <42.777901, 33.543377, 22.102047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804237, 33.320568, 22.187273>,  <42.848129, 32.949223, 22.329315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804237, 33.320568, 22.187273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199036, 0.370550, 0.907236,
		0.973830, 0.028871, -0.225438,
		-0.109728, 0.928363, -0.355107,
		42.771320, 33.599075, 22.080742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490784, 33.334232, 22.535828>,  <42.848129, 32.949223, 22.329315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490784, 33.334232, 22.535828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193439, 33.592758, 22.466898>,  <43.015034, 33.747871, 22.425541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193439, 33.592758, 22.466898>,  <43.490784, 33.334232, 22.535828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193439, 33.592758, 22.466898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244675, 0.502508, 0.829229,
		0.622533, 0.574254, -0.531681,
		-0.743362, 0.646311, -0.172322,
		42.970432, 33.786652, 22.415201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801155, 34.055603, 22.573835>,  <43.490784, 33.334232, 22.535828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801155, 34.055603, 22.573835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423901, 34.188560, 22.573763>,  <43.197548, 34.268333, 22.573719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423901, 34.188560, 22.573763>,  <43.801155, 34.055603, 22.573835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423901, 34.188560, 22.573763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106197, 0.301837, 0.947427,
		0.314972, 0.893538, -0.319974,
		-0.943141, 0.332393, -0.000179,
		43.140957, 34.288277, 22.573709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753475, 34.659176, 22.942699>,  <43.801155, 34.055603, 22.573835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753475, 34.659176, 22.942699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367794, 34.554153, 22.957516>,  <43.136383, 34.491142, 22.966406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367794, 34.554153, 22.957516>,  <43.753475, 34.659176, 22.942699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367794, 34.554153, 22.957516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103390, 0.500916, 0.859299,
		-0.244164, 0.824712, -0.510132,
		-0.964207, -0.262552, 0.037039,
		43.078533, 34.475388, 22.968628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368790, 35.301231, 23.085293>,  <43.753475, 34.659176, 22.942699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368790, 35.301231, 23.085293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128208, 34.999157, 23.189560>,  <42.983860, 34.817913, 23.252119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128208, 34.999157, 23.189560>,  <43.368790, 35.301231, 23.085293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128208, 34.999157, 23.189560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302631, 0.517327, 0.800492,
		-0.739372, 0.402570, -0.539690,
		-0.601451, -0.755188, 0.260667,
		42.947773, 34.772602, 23.267759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771378, 35.662395, 23.350945>,  <43.368790, 35.301231, 23.085293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771378, 35.662395, 23.350945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775707, 35.287308, 23.489838>,  <42.778305, 35.062256, 23.573174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775707, 35.287308, 23.489838>,  <42.771378, 35.662395, 23.350945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775707, 35.287308, 23.489838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257950, 0.332883, 0.907001,
		-0.966098, -0.099387, -0.238281,
		0.010825, -0.937716, 0.347234,
		42.778954, 35.005993, 23.594007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126530, 35.530640, 23.581326>,  <42.771378, 35.662395, 23.350945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126530, 35.530640, 23.581326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367332, 35.274864, 23.772615>,  <42.511814, 35.121399, 23.887390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367332, 35.274864, 23.772615>,  <42.126530, 35.530640, 23.581326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367332, 35.274864, 23.772615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295923, 0.377598, 0.877410,
		-0.741629, -0.669728, 0.038093,
		0.602010, -0.639440, 0.478226,
		42.547935, 35.083031, 23.916082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639648, 35.349884, 24.155607>,  <42.126530, 35.530640, 23.581326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639648, 35.349884, 24.155607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001461, 35.210793, 24.254324>,  <42.218548, 35.127338, 24.313555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001461, 35.210793, 24.254324>,  <41.639648, 35.349884, 24.155607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001461, 35.210793, 24.254324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178850, 0.216013, 0.959871,
		-0.387089, -0.912371, 0.133198,
		0.904531, -0.347732, 0.246794,
		42.272820, 35.106472, 24.328362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598000, 34.750820, 24.653032>,  <41.639648, 35.349884, 24.155607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598000, 34.750820, 24.653032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971355, 34.878937, 24.717772>,  <42.195370, 34.955807, 24.756615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971355, 34.878937, 24.717772>,  <41.598000, 34.750820, 24.653032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971355, 34.878937, 24.717772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184648, 0.041930, 0.981910,
		0.307716, -0.946389, 0.098279,
		0.933389, 0.320296, 0.161846,
		42.251373, 34.975025, 24.766325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832848, 34.375900, 25.239361>,  <41.598000, 34.750820, 24.653032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832848, 34.375900, 25.239361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043873, 34.714455, 25.210218>,  <42.170486, 34.917587, 25.192734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043873, 34.714455, 25.210218>,  <41.832848, 34.375900, 25.239361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043873, 34.714455, 25.210218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297551, 0.264429, 0.917355,
		0.795703, -0.462282, 0.391346,
		0.527560, 0.846388, -0.072855,
		42.202141, 34.968372, 25.188362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043270, 34.449612, 25.838106>,  <41.832848, 34.375900, 25.239361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043270, 34.449612, 25.838106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086941, 34.827312, 25.713867>,  <42.113144, 35.053932, 25.639324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086941, 34.827312, 25.713867>,  <42.043270, 34.449612, 25.838106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086941, 34.827312, 25.713867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205882, 0.327171, 0.922264,
		0.972468, -0.036742, 0.230123,
		0.109176, 0.944250, -0.310599,
		42.119694, 35.110588, 25.620687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304474, 34.681984, 26.337904>,  <42.043270, 34.449612, 25.838106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304474, 34.681984, 26.337904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254223, 35.030674, 26.148460>,  <42.224072, 35.239887, 26.034794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254223, 35.030674, 26.148460>,  <42.304474, 34.681984, 26.337904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254223, 35.030674, 26.148460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176298, 0.450176, 0.875363,
		0.976287, 0.193467, 0.097129,
		-0.125628, 0.871730, -0.473608,
		42.216534, 35.292194, 26.006378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725578, 35.193886, 26.538467>,  <42.304474, 34.681984, 26.337904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725578, 35.193886, 26.538467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417866, 35.405628, 26.395361>,  <42.233238, 35.532673, 26.309496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417866, 35.405628, 26.395361>,  <42.725578, 35.193886, 26.538467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417866, 35.405628, 26.395361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093570, 0.460580, 0.882672,
		0.632027, 0.712496, -0.304782,
		-0.769277, 0.529354, -0.357767,
		42.187084, 35.564434, 26.288031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860912, 35.931961, 26.734896>,  <42.725578, 35.193886, 26.538467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860912, 35.931961, 26.734896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470371, 35.880325, 26.665529>,  <42.236046, 35.849342, 26.623909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470371, 35.880325, 26.665529>,  <42.860912, 35.931961, 26.734896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470371, 35.880325, 26.665529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214778, 0.487774, 0.846137,
		-0.024638, 0.863373, -0.503964,
		-0.976352, -0.129088, -0.173415,
		42.177467, 35.841599, 26.613504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537846, 36.601768, 26.847849>,  <42.860912, 35.931961, 26.734896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537846, 36.601768, 26.847849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232590, 36.346619, 26.889282>,  <42.049435, 36.193527, 26.914143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232590, 36.346619, 26.889282>,  <42.537846, 36.601768, 26.847849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232590, 36.346619, 26.889282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338955, 0.531574, 0.776234,
		-0.550202, 0.557267, -0.621877,
		-0.763143, -0.637874, 0.103585,
		42.003647, 36.155258, 26.920357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878300, 37.036156, 27.067291>,  <42.537846, 36.601768, 26.847849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878300, 37.036156, 27.067291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798832, 36.655846, 27.162426>,  <41.751152, 36.427662, 27.219507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798832, 36.655846, 27.162426>,  <41.878300, 37.036156, 27.067291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798832, 36.655846, 27.162426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466511, 0.305156, 0.830209,
		-0.861916, 0.053980, -0.504169,
		-0.198665, -0.950771, 0.237837,
		41.739231, 36.370613, 27.233778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233814, 37.183029, 27.327133>,  <41.878300, 37.036156, 27.067291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233814, 37.183029, 27.327133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348507, 36.815228, 27.434687>,  <41.417320, 36.594547, 27.499218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348507, 36.815228, 27.434687>,  <41.233814, 37.183029, 27.327133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348507, 36.815228, 27.434687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501455, 0.095098, 0.859941,
		-0.816291, -0.381401, -0.433823,
		0.286727, -0.919505, 0.268883,
		41.434525, 36.539375, 27.515352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679550, 36.917042, 27.563969>,  <41.233814, 37.183029, 27.327133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679550, 36.917042, 27.563969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965530, 36.692032, 27.730055>,  <41.137119, 36.557026, 27.829706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965530, 36.692032, 27.730055>,  <40.679550, 36.917042, 27.563969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965530, 36.692032, 27.730055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425555, 0.121076, 0.896796,
		-0.554746, -0.817864, -0.152823,
		0.714954, -0.562529, 0.415213,
		41.180016, 36.523273, 27.854618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358006, 36.475174, 28.015068>,  <40.679550, 36.917042, 27.563969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358006, 36.475174, 28.015068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730927, 36.522350, 28.151829>,  <40.954681, 36.550655, 28.233885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730927, 36.522350, 28.151829>,  <40.358006, 36.475174, 28.015068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730927, 36.522350, 28.151829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361310, 0.346102, 0.865834,
		-0.016218, -0.930754, 0.365285,
		0.932305, 0.117939, 0.341903,
		41.010616, 36.557732, 28.254400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320553, 36.316917, 28.701597>,  <40.358006, 36.475174, 28.015068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320553, 36.316917, 28.701597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671982, 36.506477, 28.677799>,  <40.882839, 36.620213, 28.663521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671982, 36.506477, 28.677799>,  <40.320553, 36.316917, 28.701597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671982, 36.506477, 28.677799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061611, 0.235971, 0.969805,
		0.473627, -0.848374, 0.236514,
		0.878568, 0.473898, -0.059493,
		40.935551, 36.648647, 28.659952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797131, 35.970646, 29.155172>,  <40.320553, 36.316917, 28.701597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797131, 35.970646, 29.155172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920528, 36.347656, 29.103840>,  <40.994568, 36.573864, 29.073040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920528, 36.347656, 29.103840>,  <40.797131, 35.970646, 29.155172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920528, 36.347656, 29.103840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008225, 0.137549, 0.990461,
		0.951189, -0.304500, 0.050186,
		0.308499, 0.942529, -0.128331,
		41.013077, 36.630413, 29.065340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391796, 36.022514, 29.559099>,  <40.797131, 35.970646, 29.155172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391796, 36.022514, 29.559099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262859, 36.397675, 29.507812>,  <41.185497, 36.622768, 29.477039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262859, 36.397675, 29.507812>,  <41.391796, 36.022514, 29.559099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262859, 36.397675, 29.507812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134611, 0.179487, 0.974507,
		0.937002, 0.296869, -0.184109,
		-0.322346, 0.937899, -0.128218,
		41.166157, 36.679043, 29.469347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763115, 36.420868, 30.095087>,  <41.391796, 36.022514, 29.559099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763115, 36.420868, 30.095087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434341, 36.631519, 30.008291>,  <41.237076, 36.757912, 29.956213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434341, 36.631519, 30.008291>,  <41.763115, 36.420868, 30.095087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434341, 36.631519, 30.008291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057462, 0.302352, 0.951463,
		0.566675, 0.794509, -0.218253,
		-0.821935, 0.526629, -0.216989,
		41.187759, 36.789509, 29.943195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969631, 37.084969, 30.292755>,  <41.763115, 36.420868, 30.095087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969631, 37.084969, 30.292755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570290, 37.068481, 30.276844>,  <41.330685, 37.058590, 30.267298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570290, 37.068481, 30.276844>,  <41.969631, 37.084969, 30.292755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570290, 37.068481, 30.276844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051022, 0.324298, 0.944578,
		-0.026033, 0.945056, -0.325869,
		-0.998358, -0.041217, -0.039776,
		41.270782, 37.056118, 30.264912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767696, 37.702953, 30.483849>,  <41.969631, 37.084969, 30.292755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767696, 37.702953, 30.483849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453796, 37.461159, 30.538635>,  <41.265457, 37.316082, 30.571507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453796, 37.461159, 30.538635>,  <41.767696, 37.702953, 30.483849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453796, 37.461159, 30.538635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027013, 0.254130, 0.966793,
		-0.619219, 0.754994, -0.215759,
		-0.784754, -0.604485, 0.136967,
		41.218369, 37.279812, 30.579725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466511, 38.039295, 31.000275>,  <41.767696, 37.702953, 30.483849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466511, 38.039295, 31.000275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259735, 37.697201, 31.014975>,  <41.135670, 37.491943, 31.023794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259735, 37.697201, 31.014975>,  <41.466511, 38.039295, 31.000275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259735, 37.697201, 31.014975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059723, 0.078859, 0.995095,
		-0.853938, 0.512206, -0.091842,
		-0.516936, -0.855235, 0.036750,
		41.104652, 37.440632, 31.025999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864037, 38.167763, 31.475643>,  <41.466511, 38.039295, 31.000275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864037, 38.167763, 31.475643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947300, 37.776707, 31.463711>,  <40.997257, 37.542072, 31.456551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947300, 37.776707, 31.463711>,  <40.864037, 38.167763, 31.475643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947300, 37.776707, 31.463711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009821, -0.028410, 0.999548,
		-0.978047, -0.208353, 0.003688,
		0.208154, -0.977641, -0.029833,
		41.009747, 37.483414, 31.454762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303288, 37.853802, 31.942816>,  <40.864037, 38.167763, 31.475643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303288, 37.853802, 31.942816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596817, 37.582710, 31.924101>,  <40.772934, 37.420055, 31.912872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596817, 37.582710, 31.924101>,  <40.303288, 37.853802, 31.942816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596817, 37.582710, 31.924101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011499, -0.056467, 0.998338,
		-0.679247, -0.733139, -0.033643,
		0.733820, -0.677731, -0.046786,
		40.816963, 37.379391, 31.910065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134007, 37.364086, 32.341698>,  <40.303288, 37.853802, 31.942816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134007, 37.364086, 32.341698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530643, 37.321274, 32.312622>,  <40.768627, 37.295586, 32.295177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530643, 37.321274, 32.312622>,  <40.134007, 37.364086, 32.341698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530643, 37.321274, 32.312622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051364, -0.189984, 0.980443,
		-0.118740, -0.975936, -0.182890,
		0.991596, -0.107023, -0.072686,
		40.828121, 37.289165, 32.290817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345856, 36.728443, 32.758316>,  <40.134007, 37.364086, 32.341698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345856, 36.728443, 32.758316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687523, 36.933487, 32.723381>,  <40.892525, 37.056515, 32.702419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687523, 36.933487, 32.723381>,  <40.345856, 36.728443, 32.758316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687523, 36.933487, 32.723381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137446, -0.060591, 0.988654,
		0.501501, -0.856482, -0.122211,
		0.854169, 0.512609, -0.087334,
		40.943775, 37.087269, 32.697182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845383, 36.451954, 33.205933>,  <40.345856, 36.728443, 32.758316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845383, 36.451954, 33.205933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997784, 36.813763, 33.129330>,  <41.089222, 37.030849, 33.083366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997784, 36.813763, 33.129330>,  <40.845383, 36.451954, 33.205933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997784, 36.813763, 33.129330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202237, 0.120585, 0.971884,
		0.902186, -0.409016, -0.136986,
		0.380998, 0.904525, -0.191508,
		41.112083, 37.085121, 33.071877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499676, 36.403736, 33.463081>,  <40.845383, 36.451954, 33.205933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499676, 36.403736, 33.463081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449402, 36.800446, 33.453308>,  <41.419235, 37.038471, 33.447445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449402, 36.800446, 33.453308>,  <41.499676, 36.403736, 33.463081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449402, 36.800446, 33.453308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305826, 0.062165, 0.950056,
		0.943755, 0.111937, -0.311122,
		-0.125688, 0.991769, -0.024435,
		41.411697, 37.097977, 33.445976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059635, 36.732555, 33.911049>,  <41.499676, 36.403736, 33.463081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059635, 36.732555, 33.911049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769005, 37.007240, 33.920033>,  <41.594627, 37.172050, 33.925423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769005, 37.007240, 33.920033>,  <42.059635, 36.732555, 33.911049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769005, 37.007240, 33.920033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183507, 0.162453, 0.969502,
		0.662124, 0.708541, -0.244052,
		-0.726579, 0.686716, 0.022458,
		41.551033, 37.213257, 33.926769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389759, 37.299530, 34.189617>,  <42.059635, 36.732555, 33.911049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389759, 37.299530, 34.189617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003296, 37.390312, 34.238651>,  <41.771416, 37.444782, 34.268070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003296, 37.390312, 34.238651>,  <42.389759, 37.299530, 34.189617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003296, 37.390312, 34.238651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179392, 0.249712, 0.951558,
		0.185349, 0.941348, -0.281975,
		-0.966160, 0.226954, 0.122586,
		41.713448, 37.458397, 34.275429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288410, 37.931316, 34.613190>,  <42.389759, 37.299530, 34.189617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288410, 37.931316, 34.613190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936283, 37.750607, 34.671085>,  <41.725006, 37.642181, 34.705822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936283, 37.750607, 34.671085>,  <42.288410, 37.931316, 34.613190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936283, 37.750607, 34.671085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074771, 0.169153, 0.982750,
		-0.468462, 0.875950, -0.115129,
		-0.880314, -0.451773, 0.144737,
		41.672188, 37.615074, 34.714508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065594, 38.285614, 35.164074>,  <42.288410, 37.931316, 34.613190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065594, 38.285614, 35.164074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805569, 37.981781, 35.172504>,  <41.649555, 37.799480, 35.177563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805569, 37.981781, 35.172504>,  <42.065594, 38.285614, 35.164074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805569, 37.981781, 35.172504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157665, 0.161963, 0.974120,
		-0.743343, 0.629917, -0.225046,
		-0.650064, -0.759587, 0.021078,
		41.610550, 37.753906, 35.178829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437908, 38.476082, 35.406269>,  <42.065594, 38.285614, 35.164074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437908, 38.476082, 35.406269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477009, 38.087238, 35.491539>,  <41.500469, 37.853931, 35.542702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477009, 38.087238, 35.491539>,  <41.437908, 38.476082, 35.406269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477009, 38.087238, 35.491539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115952, 0.201613, 0.972578,
		-0.988433, -0.119789, -0.093010,
		0.097752, -0.972113, 0.213170,
		41.506336, 37.795605, 35.555489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805527, 38.339867, 35.816486>,  <41.437908, 38.476082, 35.406269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805527, 38.339867, 35.816486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079952, 38.056057, 35.880863>,  <41.244606, 37.885773, 35.919491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079952, 38.056057, 35.880863>,  <40.805527, 38.339867, 35.816486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079952, 38.056057, 35.880863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147212, 0.081262, 0.985761,
		-0.712496, -0.699985, -0.048699,
		0.686061, -0.709519, 0.160945,
		41.285770, 37.843201, 35.929146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542091, 37.983788, 36.358467>,  <40.805527, 38.339867, 35.816486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542091, 37.983788, 36.358467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926567, 37.877007, 36.330608>,  <41.157253, 37.812939, 36.313892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926567, 37.877007, 36.330608>,  <40.542091, 37.983788, 36.358467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926567, 37.877007, 36.330608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061508, -0.038750, 0.997354,
		-0.268948, -0.962930, -0.020826,
		0.961189, -0.266955, -0.069650,
		41.214924, 37.796921, 36.309711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682236, 37.556644, 36.990685>,  <40.542091, 37.983788, 36.358467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682236, 37.556644, 36.990685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043758, 37.614384, 36.829536>,  <41.260670, 37.649029, 36.732849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043758, 37.614384, 36.829536>,  <40.682236, 37.556644, 36.990685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043758, 37.614384, 36.829536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415644, -0.071999, 0.906673,
		0.101871, -0.986904, -0.125070,
		0.903804, 0.144348, -0.402866,
		41.314899, 37.657688, 36.708675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064541, 37.134052, 37.472481>,  <40.682236, 37.556644, 36.990685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064541, 37.134052, 37.472481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333771, 37.376019, 37.302284>,  <41.495308, 37.521198, 37.200165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333771, 37.376019, 37.302284>,  <41.064541, 37.134052, 37.472481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333771, 37.376019, 37.302284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477167, 0.084362, 0.874754,
		0.565049, -0.791808, -0.231864,
		0.673076, 0.604917, -0.425493,
		41.535694, 37.557495, 37.174637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709660, 36.919106, 37.801277>,  <41.064541, 37.134052, 37.472481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709660, 36.919106, 37.801277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754551, 37.284008, 37.643696>,  <41.781487, 37.502949, 37.549145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754551, 37.284008, 37.643696>,  <41.709660, 36.919106, 37.801277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754551, 37.284008, 37.643696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574641, 0.263864, 0.774702,
		0.810675, -0.313325, -0.494605,
		0.112225, 0.912252, -0.393957,
		41.788219, 37.557682, 37.525509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388786, 37.045662, 37.799229>,  <41.709660, 36.919106, 37.801277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388786, 37.045662, 37.799229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199070, 37.397507, 37.813831>,  <42.085239, 37.608612, 37.822594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199070, 37.397507, 37.813831>,  <42.388786, 37.045662, 37.799229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199070, 37.397507, 37.813831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383396, 0.169047, 0.907982,
		0.792497, 0.444648, -0.417416,
		-0.474295, 0.879609, 0.036506,
		42.056782, 37.661388, 37.824783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919369, 37.594181, 38.021523>,  <42.388786, 37.045662, 37.799229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919369, 37.594181, 38.021523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538357, 37.688007, 38.099155>,  <42.309750, 37.744301, 38.145733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538357, 37.688007, 38.099155>,  <42.919369, 37.594181, 38.021523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538357, 37.688007, 38.099155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259002, 0.289291, 0.921536,
		0.160012, 0.928058, -0.336310,
		-0.952530, 0.234562, 0.194079,
		42.252598, 37.758377, 38.157379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870403, 38.334198, 38.277531>,  <42.919369, 37.594181, 38.021523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870403, 38.334198, 38.277531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571747, 38.112030, 38.423977>,  <42.392555, 37.978729, 38.511845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571747, 38.112030, 38.423977>,  <42.870403, 38.334198, 38.277531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571747, 38.112030, 38.423977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288288, 0.225833, 0.930532,
		-0.599519, 0.800316, -0.008494,
		-0.746637, -0.555422, 0.366113,
		42.347755, 37.945404, 38.533810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581944, 38.676521, 38.910397>,  <42.870403, 38.334198, 38.277531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581944, 38.676521, 38.910397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438816, 38.306618, 38.962234>,  <42.352940, 38.084675, 38.993336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438816, 38.306618, 38.962234>,  <42.581944, 38.676521, 38.910397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438816, 38.306618, 38.962234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206663, 0.056915, 0.976755,
		-0.910636, 0.376280, 0.170748,
		-0.357816, -0.924756, 0.129592,
		42.331470, 38.029190, 39.001114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124157, 38.589024, 39.505611>,  <42.581944, 38.676521, 38.910397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124157, 38.589024, 39.505611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245888, 38.212524, 39.447037>,  <42.318928, 37.986626, 39.411892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245888, 38.212524, 39.447037>,  <42.124157, 38.589024, 39.505611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245888, 38.212524, 39.447037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127462, -0.112109, 0.985487,
		-0.944001, -0.318578, 0.085855,
		0.304329, -0.941244, -0.146437,
		42.337185, 37.930153, 39.403107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683846, 38.191143, 39.932201>,  <42.124157, 38.589024, 39.505611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683846, 38.191143, 39.932201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035770, 38.004704, 39.894951>,  <42.246925, 37.892838, 39.872601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035770, 38.004704, 39.894951>,  <41.683846, 38.191143, 39.932201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035770, 38.004704, 39.894951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033084, -0.135395, 0.990239,
		-0.474161, -0.874310, -0.103702,
		0.879817, -0.466102, -0.093125,
		42.299717, 37.864872, 39.867012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713551, 37.820358, 40.682850>,  <41.683846, 38.191143, 39.932201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713551, 37.820358, 40.682850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998138, 37.577785, 40.540836>,  <42.168892, 37.432243, 40.455627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998138, 37.577785, 40.540836>,  <41.713551, 37.820358, 40.682850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998138, 37.577785, 40.540836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147234, -0.365372, 0.919144,
		-0.687117, -0.706217, -0.170665,
		0.711472, -0.606432, -0.355033,
		42.211578, 37.395855, 40.434326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714565, 37.113483, 40.908489>,  <41.713551, 37.820358, 40.682850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714565, 37.113483, 40.908489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081654, 37.252300, 40.831184>,  <42.301907, 37.335590, 40.784801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081654, 37.252300, 40.831184>,  <41.714565, 37.113483, 40.908489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081654, 37.252300, 40.831184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257724, -0.149979, 0.954508,
		0.302271, -0.925779, -0.227080,
		0.917720, 0.347044, -0.193261,
		42.356968, 37.356415, 40.773205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264229, 36.622486, 41.316425>,  <41.714565, 37.113483, 40.908489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264229, 36.622486, 41.316425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472973, 36.951630, 41.226475>,  <42.598217, 37.149117, 41.172504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472973, 36.951630, 41.226475>,  <42.264229, 36.622486, 41.316425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472973, 36.951630, 41.226475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354915, 0.030278, 0.934408,
		0.775694, -0.567440, -0.276244,
		0.521857, 0.822858, -0.224879,
		42.629532, 37.198486, 41.159012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895721, 36.552025, 41.679180>,  <42.264229, 36.622486, 41.316425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895721, 36.552025, 41.679180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902405, 36.933693, 41.559662>,  <42.906414, 37.162693, 41.487949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902405, 36.933693, 41.559662>,  <42.895721, 36.552025, 41.679180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902405, 36.933693, 41.559662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358940, 0.273196, 0.892483,
		0.933211, -0.122166, -0.337924,
		0.016711, 0.954170, -0.298800,
		42.907417, 37.219944, 41.470020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564037, 36.727795, 41.824249>,  <42.895721, 36.552025, 41.679180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564037, 36.727795, 41.824249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327183, 37.049934, 41.813046>,  <43.185070, 37.243217, 41.806324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327183, 37.049934, 41.813046>,  <43.564037, 36.727795, 41.824249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327183, 37.049934, 41.813046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226662, 0.199811, 0.953258,
		0.773301, 0.558114, -0.300858,
		-0.592141, 0.805348, -0.028011,
		43.149540, 37.291538, 41.804642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865200, 37.153542, 42.246845>,  <43.564037, 36.727795, 41.824249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865200, 37.153542, 42.246845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495186, 37.305267, 42.238472>,  <43.273178, 37.396301, 42.233448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495186, 37.305267, 42.238472>,  <43.865200, 37.153542, 42.246845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495186, 37.305267, 42.238472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095677, 0.285947, 0.953457,
		0.367643, 0.879975, -0.300802,
		-0.925032, 0.379312, -0.020933,
		43.217678, 37.419060, 42.232193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834076, 37.894615, 42.424000>,  <43.865200, 37.153542, 42.246845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834076, 37.894615, 42.424000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468246, 37.758152, 42.510876>,  <43.248749, 37.676273, 42.563000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468246, 37.758152, 42.510876>,  <43.834076, 37.894615, 42.424000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468246, 37.758152, 42.510876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031306, 0.475698, 0.879052,
		-0.403211, 0.810755, -0.424379,
		-0.914572, -0.341158, 0.217187,
		43.193874, 37.655804, 42.576031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430984, 38.440784, 42.749897>,  <43.834076, 37.894615, 42.424000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430984, 38.440784, 42.749897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288429, 38.080929, 42.850807>,  <43.202896, 37.865017, 42.911354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288429, 38.080929, 42.850807>,  <43.430984, 38.440784, 42.749897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288429, 38.080929, 42.850807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196486, 0.191799, 0.961564,
		-0.913444, 0.392258, 0.108412,
		-0.356388, -0.899637, 0.252271,
		43.181515, 37.811039, 42.926487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858543, 38.513260, 43.195759>,  <43.430984, 38.440784, 42.749897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858543, 38.513260, 43.195759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061817, 38.176815, 43.269821>,  <43.183781, 37.974949, 43.314259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061817, 38.176815, 43.269821>,  <42.858543, 38.513260, 43.195759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061817, 38.176815, 43.269821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296228, 0.372576, 0.879452,
		-0.808702, -0.392074, 0.438497,
		0.508184, -0.841109, 0.185159,
		43.214272, 37.924480, 43.325371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774155, 38.194756, 43.853420>,  <42.858543, 38.513260, 43.195759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774155, 38.194756, 43.853420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156261, 38.139988, 43.748558>,  <43.385525, 38.107128, 43.685642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156261, 38.139988, 43.748558>,  <42.774155, 38.194756, 43.853420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156261, 38.139988, 43.748558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281438, 0.148394, 0.948036,
		-0.090906, -0.979404, 0.180291,
		0.955264, -0.136923, -0.262151,
		43.442841, 38.098911, 43.669914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447094, 37.970848, 44.256638>,  <42.774155, 38.194756, 43.853420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447094, 37.970848, 44.256638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213646, 37.648720, 44.298298>,  <43.073578, 37.455444, 44.323296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213646, 37.648720, 44.298298>,  <43.447094, 37.970848, 44.256638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213646, 37.648720, 44.298298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253591, 0.058912, -0.965516,
		0.771410, -0.589910, -0.238604,
		-0.583624, -0.805317, 0.104151,
		43.038559, 37.407124, 44.329544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580566, 37.396168, 43.731213>,  <43.447094, 37.970848, 44.256638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580566, 37.396168, 43.731213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194035, 37.419365, 43.831493>,  <42.962116, 37.433281, 43.891663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194035, 37.419365, 43.831493>,  <43.580566, 37.396168, 43.731213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194035, 37.419365, 43.831493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242262, 0.123388, -0.962333,
		-0.086741, -0.990663, -0.105183,
		-0.966325, 0.057991, 0.250703,
		42.904137, 37.436764, 43.906704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278095, 36.917423, 43.365219>,  <43.580566, 37.396168, 43.731213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278095, 36.917423, 43.365219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057312, 37.234730, 43.468033>,  <42.924843, 37.425114, 43.529720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057312, 37.234730, 43.468033>,  <43.278095, 36.917423, 43.365219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057312, 37.234730, 43.468033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076122, 0.259027, -0.962866,
		-0.830389, -0.551030, -0.082587,
		-0.551960, 0.793266, 0.257039,
		42.891724, 37.472710, 43.545143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703388, 36.828979, 42.974358>,  <43.278095, 36.917423, 43.365219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703388, 36.828979, 42.974358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750000, 37.222179, 43.031120>,  <42.777969, 37.458099, 43.065178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750000, 37.222179, 43.031120>,  <42.703388, 36.828979, 42.974358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750000, 37.222179, 43.031120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004001, 0.142418, -0.989798,
		-0.993179, 0.115911, 0.012663,
		0.116532, 0.982996, 0.141910,
		42.784958, 37.517078, 43.073692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082901, 37.104382, 42.801517>,  <42.703388, 36.828979, 42.974358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082901, 37.104382, 42.801517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414547, 37.315823, 42.728680>,  <42.613533, 37.442688, 42.684978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414547, 37.315823, 42.728680>,  <42.082901, 37.104382, 42.801517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414547, 37.315823, 42.728680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179989, -0.055989, -0.982074,
		-0.529318, 0.847023, 0.048721,
		0.829111, 0.528599, -0.182091,
		42.663280, 37.474403, 42.674053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946930, 37.678436, 42.327339>,  <42.082901, 37.104382, 42.801517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946930, 37.678436, 42.327339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340389, 37.620384, 42.284698>,  <42.576466, 37.585552, 42.259113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340389, 37.620384, 42.284698>,  <41.946930, 37.678436, 42.327339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340389, 37.620384, 42.284698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110206, -0.016987, -0.993764,
		0.142416, 0.989266, -0.032704,
		0.983652, -0.145132, -0.106603,
		42.635487, 37.576843, 42.252716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233379, 38.219395, 41.832134>,  <41.946930, 37.678436, 42.327339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233379, 38.219395, 41.832134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496162, 37.917915, 41.824684>,  <42.653831, 37.737030, 41.820213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496162, 37.917915, 41.824684>,  <42.233379, 38.219395, 41.832134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496162, 37.917915, 41.824684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006705, 0.018866, -0.999800,
		0.753897, 0.656952, 0.007340,
		0.656959, -0.753697, -0.018628,
		42.693249, 37.691807, 41.819096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870598, 38.493652, 41.426815>,  <42.233379, 38.219395, 41.832134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870598, 38.493652, 41.426815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828445, 38.096310, 41.445274>,  <42.803154, 37.857903, 41.456348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828445, 38.096310, 41.445274>,  <42.870598, 38.493652, 41.426815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828445, 38.096310, 41.445274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015540, -0.044752, -0.998877,
		0.994311, -0.105977, -0.010721,
		-0.105378, -0.993361, 0.046144,
		42.796833, 37.798302, 41.459118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084354, 38.382504, 40.843731>,  <42.870598, 38.493652, 41.426815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084354, 38.382504, 40.843731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942642, 38.022751, 40.946182>,  <42.857613, 37.806900, 41.007652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942642, 38.022751, 40.946182>,  <43.084354, 38.382504, 40.843731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942642, 38.022751, 40.946182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280554, -0.159051, -0.946569,
		0.892061, -0.407211, -0.195975,
		-0.354283, -0.899379, 0.256128,
		42.836357, 37.752937, 41.023022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518456, 37.838463, 40.470562>,  <43.084354, 38.382504, 40.843731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518456, 37.838463, 40.470562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158813, 37.687405, 40.559109>,  <42.943027, 37.596771, 40.612236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158813, 37.687405, 40.559109>,  <43.518456, 37.838463, 40.470562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158813, 37.687405, 40.559109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166924, -0.171703, -0.970904,
		0.404665, -0.909892, 0.091340,
		-0.899101, -0.377644, 0.221365,
		42.889084, 37.574112, 40.625519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469364, 37.288357, 39.987080>,  <43.518456, 37.838463, 40.470562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469364, 37.288357, 39.987080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093060, 37.358250, 40.103313>,  <42.867275, 37.400185, 40.173054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093060, 37.358250, 40.103313>,  <43.469364, 37.288357, 39.987080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093060, 37.358250, 40.103313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288861, 0.035767, -0.956703,
		-0.177561, -0.983966, 0.016826,
		-0.940761, 0.174733, 0.290580,
		42.810829, 37.410667, 40.190487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146873, 36.966171, 39.496323>,  <43.469364, 37.288357, 39.987080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146873, 36.966171, 39.496323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860706, 37.205513, 39.640625>,  <42.689007, 37.349117, 39.727207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860706, 37.205513, 39.640625>,  <43.146873, 36.966171, 39.496323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860706, 37.205513, 39.640625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398745, 0.074331, -0.914044,
		-0.573739, -0.797775, 0.185413,
		-0.715420, 0.598356, 0.360756,
		42.646080, 37.385021, 39.748852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617477, 36.617661, 39.251534>,  <43.146873, 36.966171, 39.496323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617477, 36.617661, 39.251534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588402, 37.011932, 39.312389>,  <42.570957, 37.248497, 39.348904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588402, 37.011932, 39.312389>,  <42.617477, 36.617661, 39.251534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588402, 37.011932, 39.312389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201821, 0.134850, -0.970095,
		-0.976721, -0.101220, 0.189129,
		-0.072689, 0.985682, 0.152140,
		42.566593, 37.307636, 39.358032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918480, 36.809681, 39.097149>,  <42.617477, 36.617661, 39.251534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918480, 36.809681, 39.097149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034119, 37.191830, 39.072830>,  <42.103504, 37.421120, 39.058239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034119, 37.191830, 39.072830>,  <41.918480, 36.809681, 39.097149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034119, 37.191830, 39.072830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328858, 0.039473, -0.943554,
		-0.899041, 0.292772, 0.325592,
		0.289099, 0.955367, -0.060792,
		42.120850, 37.478439, 39.054592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313084, 37.251755, 38.932766>,  <41.918480, 36.809681, 39.097149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313084, 37.251755, 38.932766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637974, 37.454460, 38.817192>,  <41.832909, 37.576084, 38.747849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637974, 37.454460, 38.817192>,  <41.313084, 37.251755, 38.932766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637974, 37.454460, 38.817192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389873, 0.103134, -0.915075,
		-0.433930, 0.855892, 0.281342,
		0.812222, 0.506766, -0.288936,
		41.881641, 37.606491, 38.730511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256634, 37.980709, 38.976368>,  <41.313084, 37.251755, 38.932766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256634, 37.980709, 38.976368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603302, 38.063553, 38.794823>,  <41.811302, 38.113258, 38.685894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603302, 38.063553, 38.794823>,  <41.256634, 37.980709, 38.976368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603302, 38.063553, 38.794823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433084, -0.139251, -0.890532,
		-0.247637, 0.968357, -0.030989,
		0.866668, 0.207107, -0.453864,
		41.863304, 38.125687, 38.658665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059280, 38.255295, 38.369568>,  <41.256634, 37.980709, 38.976368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059280, 38.255295, 38.369568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440014, 38.152115, 38.303265>,  <41.668453, 38.090206, 38.263485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440014, 38.152115, 38.303265>,  <41.059280, 38.255295, 38.369568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440014, 38.152115, 38.303265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177438, -0.022518, -0.983874,
		0.250058, 0.965896, -0.067203,
		0.951833, -0.257950, -0.165756,
		41.725563, 38.074730, 38.253536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346870, 38.743946, 37.838913>,  <41.059280, 38.255295, 38.369568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346870, 38.743946, 37.838913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568203, 38.410801, 37.833775>,  <41.701004, 38.210915, 37.830692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568203, 38.410801, 37.833775>,  <41.346870, 38.743946, 37.838913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568203, 38.410801, 37.833775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088316, -0.043322, -0.995150,
		0.828265, 0.551785, -0.097527,
		0.553334, -0.832861, -0.012850,
		41.734203, 38.160942, 37.829918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813328, 38.873981, 37.202736>,  <41.346870, 38.743946, 37.838913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813328, 38.873981, 37.202736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811813, 38.479927, 37.271439>,  <41.810905, 38.243496, 37.312660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811813, 38.479927, 37.271439>,  <41.813328, 38.873981, 37.202736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811813, 38.479927, 37.271439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103981, -0.171212, -0.979732,
		0.994572, 0.014154, 0.103083,
		-0.003782, -0.985132, 0.171754,
		41.810680, 38.184387, 37.322964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266819, 38.605049, 36.703236>,  <41.813328, 38.873981, 37.202736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266819, 38.605049, 36.703236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049461, 38.297409, 36.837822>,  <41.919044, 38.112827, 36.918575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049461, 38.297409, 36.837822>,  <42.266819, 38.605049, 36.703236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049461, 38.297409, 36.837822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067376, -0.439468, -0.895728,
		0.836767, -0.464067, 0.290624,
		-0.543397, -0.769097, 0.336465,
		41.886440, 38.066681, 36.938763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562740, 37.988308, 36.618492>,  <42.266819, 38.605049, 36.703236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562740, 37.988308, 36.618492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164894, 37.947159, 36.613491>,  <41.926186, 37.922470, 36.610493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164894, 37.947159, 36.613491>,  <42.562740, 37.988308, 36.618492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164894, 37.947159, 36.613491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058592, -0.458761, -0.886626,
		0.085479, -0.882584, 0.462319,
		-0.994616, -0.102876, -0.012498,
		41.866508, 37.916298, 36.609741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552738, 37.459965, 36.250896>,  <42.562740, 37.988308, 36.618492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552738, 37.459965, 36.250896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174709, 37.590710, 36.251381>,  <41.947891, 37.669159, 36.251671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174709, 37.590710, 36.251381>,  <42.552738, 37.459965, 36.250896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174709, 37.590710, 36.251381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112154, -0.320787, -0.940488,
		-0.307014, -0.888967, 0.339825,
		-0.945074, 0.326856, 0.001216,
		41.891190, 37.688770, 36.251743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078087, 36.843010, 36.114483>,  <42.552738, 37.459965, 36.250896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078087, 36.843010, 36.114483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875641, 37.179958, 36.040451>,  <41.754173, 37.382130, 35.996033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875641, 37.179958, 36.040451>,  <42.078087, 36.843010, 36.114483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875641, 37.179958, 36.040451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240881, -0.344117, -0.907502,
		-0.828145, -0.414718, 0.377075,
		-0.506115, 0.842373, -0.185081,
		41.723804, 37.432671, 35.984928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481991, 36.529987, 35.781693>,  <42.078087, 36.843010, 36.114483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481991, 36.529987, 35.781693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483486, 36.921524, 35.699863>,  <41.484383, 37.156448, 35.650764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483486, 36.921524, 35.699863>,  <41.481991, 36.529987, 35.781693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483486, 36.921524, 35.699863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306075, -0.193641, -0.932106,
		-0.952000, 0.066098, 0.298876,
		0.003735, 0.978843, -0.204577,
		41.484608, 37.215176, 35.638489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816238, 36.437149, 35.100513>,  <41.481991, 36.529987, 35.781693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816238, 36.437149, 35.100513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765198, 36.182964, 35.405121>,  <41.734573, 36.030453, 35.587883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765198, 36.182964, 35.405121>,  <41.816238, 36.437149, 35.100513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765198, 36.182964, 35.405121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161988, -0.770836, -0.616094,
		0.978507, 0.044740, 0.201299,
		-0.127604, -0.635461, 0.761516,
		41.726917, 35.992325, 35.633575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432499, 36.145546, 35.197460>,  <41.816238, 36.437149, 35.100513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432499, 36.145546, 35.197460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135254, 35.911308, 35.326996>,  <41.956909, 35.770767, 35.404716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135254, 35.911308, 35.326996>,  <42.432499, 36.145546, 35.197460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135254, 35.911308, 35.326996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399329, -0.776389, -0.487602,
		0.536958, -0.233025, 0.810787,
		-0.743110, -0.585593, 0.323835,
		41.912319, 35.735630, 35.424145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565315, 35.459770, 35.675663>,  <42.432499, 36.145546, 35.197460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565315, 35.459770, 35.675663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301445, 35.431431, 35.376385>,  <42.143124, 35.414429, 35.196815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301445, 35.431431, 35.376385>,  <42.565315, 35.459770, 35.675663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301445, 35.431431, 35.376385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599307, -0.650313, -0.466823,
		-0.453491, -0.756356, 0.471458,
		-0.659680, -0.070848, -0.748201,
		42.103542, 35.410175, 35.151924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660564, 36.063602, 35.984581>,  <42.565315, 35.459770, 35.675663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660564, 36.063602, 35.984581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544079, 36.072189, 36.367149>,  <42.474190, 36.077343, 36.596691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544079, 36.072189, 36.367149>,  <42.660564, 36.063602, 35.984581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544079, 36.072189, 36.367149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536396, -0.824148, 0.181822,
		0.792134, 0.565967, 0.228484,
		-0.291210, 0.021470, 0.956418,
		42.456715, 36.078629, 36.654076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285748, 35.985760, 36.420727>,  <42.660564, 36.063602, 35.984581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285748, 35.985760, 36.420727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955978, 35.881611, 36.621738>,  <42.758118, 35.819122, 36.742348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955978, 35.881611, 36.621738>,  <43.285748, 35.985760, 36.420727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955978, 35.881611, 36.621738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435958, -0.858362, 0.270473,
		0.360932, 0.442067, 0.821161,
		-0.824420, -0.260369, 0.502533,
		42.708652, 35.803501, 36.772499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370750, 35.561790, 37.069946>,  <43.285748, 35.985760, 36.420727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370750, 35.561790, 37.069946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015602, 35.453892, 36.920853>,  <42.802513, 35.389153, 36.831398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015602, 35.453892, 36.920853>,  <43.370750, 35.561790, 37.069946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015602, 35.453892, 36.920853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300212, -0.953544, -0.025034,
		-0.348663, -0.134125, 0.927601,
		-0.887866, -0.269748, -0.372732,
		42.749241, 35.372967, 36.809032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977493, 34.998291, 37.462780>,  <43.370750, 35.561790, 37.069946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977493, 34.998291, 37.462780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890907, 34.997341, 37.072266>,  <42.838955, 34.996773, 36.837955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890907, 34.997341, 37.072266>,  <42.977493, 34.998291, 37.462780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890907, 34.997341, 37.072266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385102, -0.919120, -0.083155,
		-0.897127, -0.393971, 0.199874,
		-0.216469, -0.002372, -0.976287,
		42.825966, 34.996628, 36.779381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854855, 34.466473, 37.938644>,  <42.977493, 34.998291, 37.462780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854855, 34.466473, 37.938644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678860, 34.644718, 37.626789>,  <42.573261, 34.751667, 37.439674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678860, 34.644718, 37.626789>,  <42.854855, 34.466473, 37.938644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678860, 34.644718, 37.626789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827770, -0.135328, -0.544503,
		-0.348147, -0.884935, -0.309326,
		-0.439989, 0.445618, -0.779637,
		42.546864, 34.778404, 37.392899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728481, 33.961514, 37.292194>,  <42.854855, 34.466473, 37.938644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728481, 33.961514, 37.292194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759998, 34.339855, 37.166241>,  <42.778908, 34.566860, 37.090668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759998, 34.339855, 37.166241>,  <42.728481, 33.961514, 37.292194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759998, 34.339855, 37.166241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721613, -0.272040, -0.636608,
		-0.687799, -0.177063, -0.703976,
		0.078790, 0.945856, -0.314880,
		42.783634, 34.623611, 37.071777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898212, 33.936584, 36.629593>,  <42.728481, 33.961514, 37.292194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898212, 33.936584, 36.629593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025814, 34.311333, 36.686871>,  <43.102375, 34.536182, 36.721237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025814, 34.311333, 36.686871>,  <42.898212, 33.936584, 36.629593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025814, 34.311333, 36.686871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718236, -0.140397, -0.681488,
		-0.618363, 0.320247, -0.717683,
		0.319005, 0.936873, 0.143197,
		43.121517, 34.592396, 36.729828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967117, 34.124165, 35.980946>,  <42.898212, 33.936584, 36.629593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967117, 34.124165, 35.980946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202328, 34.380779, 36.177986>,  <43.343456, 34.534748, 36.296211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202328, 34.380779, 36.177986>,  <42.967117, 34.124165, 35.980946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202328, 34.380779, 36.177986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693643, -0.086718, -0.715080,
		-0.416030, 0.762178, -0.495987,
		0.588030, 0.641533, 0.492602,
		43.378738, 34.573238, 36.325768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211472, 34.663300, 35.618988>,  <42.967117, 34.124165, 35.980946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211472, 34.663300, 35.618988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493160, 34.565292, 35.885532>,  <43.662174, 34.506489, 36.045460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493160, 34.565292, 35.885532>,  <43.211472, 34.663300, 35.618988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493160, 34.565292, 35.885532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617509, -0.251798, -0.745172,
		0.350373, 0.936249, -0.026017,
		0.704217, -0.245022, 0.666365,
		43.704426, 34.491787, 36.085442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848919, 35.033928, 35.483109>,  <43.211472, 34.663300, 35.618988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848919, 35.033928, 35.483109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862694, 34.664719, 35.636391>,  <43.870960, 34.443195, 35.728359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862694, 34.664719, 35.636391>,  <43.848919, 35.033928, 35.483109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862694, 34.664719, 35.636391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422905, -0.333951, -0.842394,
		0.905519, 0.191072, 0.378849,
		0.034441, -0.923021, 0.383205,
		43.873028, 34.387814, 35.751350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286087, 35.659344, 35.638653>,  <43.848919, 35.033928, 35.483109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286087, 35.659344, 35.638653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433689, 35.938423, 35.884270>,  <44.522251, 36.105873, 36.031639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433689, 35.938423, 35.884270>,  <44.286087, 35.659344, 35.638653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433689, 35.938423, 35.884270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929016, -0.296512, -0.221380,
		0.027613, 0.652144, -0.757592,
		0.369007, 0.697702, 0.614040,
		44.544392, 36.147736, 36.068481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910099, 35.824715, 35.366398>,  <44.286087, 35.659344, 35.638653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910099, 35.824715, 35.366398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939106, 35.984516, 35.731941>,  <44.956512, 36.080395, 35.951267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939106, 35.984516, 35.731941>,  <44.910099, 35.824715, 35.366398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939106, 35.984516, 35.731941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995774, -0.080766, -0.043714,
		0.056345, 0.913168, -0.403669,
		0.072521, 0.399500, 0.913860,
		44.960861, 36.104366, 36.006100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585827, 36.020424, 35.017807>,  <44.910099, 35.824715, 35.366398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585827, 36.020424, 35.017807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739204, 35.652767, 34.981693>,  <45.831230, 35.432175, 34.960026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739204, 35.652767, 34.981693>,  <45.585827, 36.020424, 35.017807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739204, 35.652767, 34.981693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743952, 0.365324, -0.559529,
		0.547268, 0.147383, 0.823878,
		0.383448, -0.919139, -0.090285,
		45.854240, 35.377026, 34.954609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297745, 35.959454, 35.250713>,  <45.585827, 36.020424, 35.017807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297745, 35.959454, 35.250713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281502, 35.670395, 34.974705>,  <46.271755, 35.496960, 34.809101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281502, 35.670395, 34.974705>,  <46.297745, 35.959454, 35.250713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281502, 35.670395, 34.974705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837206, 0.352334, -0.418267,
		0.545378, -0.594677, 0.590696,
		-0.040611, -0.722648, -0.690022,
		46.269318, 35.453602, 34.767696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.968563, 35.682751, 35.136799>,  <46.297745, 35.959454, 35.250713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.968563, 35.682751, 35.136799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726509, 35.640087, 34.821220>,  <46.581276, 35.614491, 34.631874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726509, 35.640087, 34.821220>,  <46.968563, 35.682751, 35.136799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726509, 35.640087, 34.821220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582556, 0.616120, -0.530118,
		0.542627, -0.780398, -0.310700,
		-0.605131, -0.106656, -0.788949,
		46.544971, 35.608089, 34.584534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.457745, 35.322838, 35.513470>,  <46.968563, 35.682751, 35.136799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.457745, 35.322838, 35.513470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683331, 34.992786, 35.526726>,  <47.818684, 34.794754, 35.534679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683331, 34.992786, 35.526726>,  <47.457745, 35.322838, 35.513470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.683331, 34.992786, 35.526726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078038, -0.013297, 0.996862,
		-0.822101, -0.564784, -0.071891,
		0.563967, -0.825132, 0.033143,
		47.852520, 34.745247, 35.536667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.263397, 34.563206, 35.674110>,  <47.457745, 35.322838, 35.513470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.263397, 34.563206, 35.674110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641533, 34.617901, 35.792522>,  <47.868416, 34.650719, 35.863567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641533, 34.617901, 35.792522>,  <47.263397, 34.563206, 35.674110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.641533, 34.617901, 35.792522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269739, -0.182172, 0.945544,
		0.183217, -0.973713, -0.135332,
		0.945342, 0.136736, 0.296026,
		47.925137, 34.658920, 35.881329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.466434, 34.486198, 35.019756>,  <47.263397, 34.563206, 35.674110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.466434, 34.486198, 35.019756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794968, 34.699348, 34.938316>,  <47.992088, 34.827240, 34.889450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794968, 34.699348, 34.938316>,  <47.466434, 34.486198, 35.019756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.794968, 34.699348, 34.938316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529787, -0.580219, 0.618605,
		0.211505, -0.615947, -0.758864,
		0.821335, 0.532874, -0.203602,
		48.041367, 34.859211, 34.877235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.920311, 31.223923, 27.152946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529076, 31.225502, 27.069683>,  <38.294334, 31.226450, 27.019726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529076, 31.225502, 27.069683>,  <38.920311, 31.223923, 27.152946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529076, 31.225502, 27.069683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196833, 0.308228, 0.930727,
		0.067833, 0.951305, -0.300697,
		-0.978088, 0.003947, -0.208156,
		38.235649, 31.226686, 27.007236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673695, 31.901920, 27.309938>,  <38.920311, 31.223923, 27.152946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673695, 31.901920, 27.309938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350716, 31.666557, 27.326935>,  <38.156929, 31.525339, 27.337133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350716, 31.666557, 27.326935>,  <38.673695, 31.901920, 27.309938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350716, 31.666557, 27.326935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184365, 0.320103, 0.929270,
		-0.560393, 0.742502, -0.366948,
		-0.807446, -0.588409, 0.042493,
		38.108482, 31.490034, 27.339684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237038, 32.355118, 27.548721>,  <38.673695, 31.901920, 27.309938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237038, 32.355118, 27.548721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.054058, 32.005356, 27.613403>,  <37.944271, 31.795498, 27.652212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.054058, 32.005356, 27.613403>,  <38.237038, 32.355118, 27.548721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054058, 32.005356, 27.613403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412913, 0.369929, 0.832259,
		-0.787554, 0.313948, -0.530279,
		-0.457451, -0.874408, 0.161705,
		37.916824, 31.743032, 27.661915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552982, 32.570751, 27.700243>,  <38.237038, 32.355118, 27.548721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552982, 32.570751, 27.700243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589340, 32.192146, 27.824080>,  <37.611156, 31.964983, 27.898382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589340, 32.192146, 27.824080>,  <37.552982, 32.570751, 27.700243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589340, 32.192146, 27.824080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382068, 0.253944, 0.888559,
		-0.919653, -0.199051, -0.338551,
		0.090895, -0.946515, 0.309591,
		37.616608, 31.908192, 27.916958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956783, 32.484241, 28.286903>,  <37.552982, 32.570751, 27.700243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956783, 32.484241, 28.286903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218895, 32.195316, 28.375332>,  <37.376163, 32.021961, 28.428389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218895, 32.195316, 28.375332>,  <36.956783, 32.484241, 28.286903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218895, 32.195316, 28.375332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234455, 0.083727, 0.968515,
		-0.718077, -0.686483, -0.114485,
		0.655283, -0.722309, 0.221072,
		37.415482, 31.978624, 28.441654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646675, 32.314648, 28.932217>,  <36.956783, 32.484241, 28.286903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646675, 32.314648, 28.932217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016850, 32.165634, 28.904562>,  <37.238956, 32.076225, 28.887970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016850, 32.165634, 28.904562>,  <36.646675, 32.314648, 28.932217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016850, 32.165634, 28.904562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012957, -0.151246, 0.988411,
		-0.378671, -0.915612, -0.135142,
		0.925440, -0.372532, -0.069136,
		37.294483, 32.053875, 28.883821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670200, 31.791140, 29.460146>,  <36.646675, 32.314648, 28.932217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670200, 31.791140, 29.460146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029751, 31.932495, 29.356497>,  <37.245480, 32.017307, 29.294308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029751, 31.932495, 29.356497>,  <36.670200, 31.791140, 29.460146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029751, 31.932495, 29.356497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264757, 0.033233, 0.963742,
		0.349190, -0.934885, -0.063690,
		0.898872, 0.353392, -0.259122,
		37.299412, 32.038513, 29.278761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248753, 31.402748, 29.867149>,  <36.670200, 31.791140, 29.460146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248753, 31.402748, 29.867149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.419880, 31.752449, 29.775358>,  <37.522556, 31.962269, 29.720284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.419880, 31.752449, 29.775358>,  <37.248753, 31.402748, 29.867149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419880, 31.752449, 29.775358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109830, 0.201723, 0.973265,
		0.897168, -0.441582, -0.009719,
		0.427816, 0.874250, -0.229478,
		37.548225, 32.014725, 29.706514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943596, 31.492088, 30.259460>,  <37.248753, 31.402748, 29.867149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943596, 31.492088, 30.259460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817951, 31.858137, 30.158361>,  <37.742565, 32.077766, 30.097702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817951, 31.858137, 30.158361>,  <37.943596, 31.492088, 30.259460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817951, 31.858137, 30.158361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028762, 0.275274, 0.960935,
		0.948949, 0.294574, -0.112788,
		-0.314114, 0.915123, -0.252748,
		37.723717, 32.132675, 30.082537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357304, 31.950314, 30.659922>,  <37.943596, 31.492088, 30.259460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357304, 31.950314, 30.659922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041588, 32.171001, 30.552122>,  <37.852158, 32.303413, 30.487442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041588, 32.171001, 30.552122>,  <38.357304, 31.950314, 30.659922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041588, 32.171001, 30.552122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163074, 0.234795, 0.958268,
		0.591971, 0.800299, -0.095350,
		-0.789289, 0.551718, -0.269500,
		37.804802, 32.336517, 30.471272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393101, 32.446316, 31.072197>,  <38.357304, 31.950314, 30.659922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393101, 32.446316, 31.072197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017471, 32.496819, 30.944326>,  <37.792091, 32.527122, 30.867603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017471, 32.496819, 30.944326>,  <38.393101, 32.446316, 31.072197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017471, 32.496819, 30.944326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258275, 0.354449, 0.898699,
		0.226778, 0.926512, -0.300246,
		-0.939077, 0.126259, -0.319676,
		37.735748, 32.534695, 30.848423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193478, 33.123688, 31.128695>,  <38.393101, 32.446316, 31.072197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193478, 33.123688, 31.128695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858078, 32.905937, 31.138315>,  <37.656837, 32.775288, 31.144087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858078, 32.905937, 31.138315>,  <38.193478, 33.123688, 31.128695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858078, 32.905937, 31.138315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254454, 0.430202, 0.866129,
		-0.481847, 0.720126, -0.499242,
		-0.838497, -0.544375, 0.024052,
		37.606529, 32.742626, 31.145531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595840, 33.586937, 31.144278>,  <38.193478, 33.123688, 31.128695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595840, 33.586937, 31.144278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.487095, 33.237701, 31.306173>,  <37.421848, 33.028160, 31.403311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.487095, 33.237701, 31.306173>,  <37.595840, 33.586937, 31.144278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487095, 33.237701, 31.306173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155377, 0.454883, 0.876892,
		-0.949710, 0.175506, -0.259322,
		-0.271861, -0.873086, 0.404738,
		37.405537, 32.975777, 31.427595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078159, 33.778316, 31.679255>,  <37.595840, 33.586937, 31.144278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078159, 33.778316, 31.679255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.159920, 33.397877, 31.771879>,  <37.208977, 33.169613, 31.827454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.159920, 33.397877, 31.771879>,  <37.078159, 33.778316, 31.679255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159920, 33.397877, 31.771879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013843, 0.233726, 0.972204,
		-0.978789, -0.201929, 0.034609,
		0.204405, -0.951103, 0.231564,
		37.221241, 33.112545, 31.841349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660160, 33.521713, 32.293293>,  <37.078159, 33.778316, 31.679255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660160, 33.521713, 32.293293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988586, 33.294086, 32.275352>,  <37.185642, 33.157509, 32.264587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988586, 33.294086, 32.275352>,  <36.660160, 33.521713, 32.293293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988586, 33.294086, 32.275352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131042, 0.111423, 0.985096,
		-0.555589, -0.814706, 0.166057,
		0.821066, -0.569068, -0.044855,
		37.234905, 33.123367, 32.261894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563419, 32.989124, 32.790836>,  <36.660160, 33.521713, 32.293293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563419, 32.989124, 32.790836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961040, 33.016228, 32.756741>,  <37.199612, 33.032490, 32.736282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961040, 33.016228, 32.756741>,  <36.563419, 32.989124, 32.790836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961040, 33.016228, 32.756741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071538, 0.183801, 0.980357,
		0.082090, -0.980626, 0.177861,
		0.994054, 0.067754, -0.085241,
		37.259258, 33.036556, 32.731167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729858, 32.926529, 33.408638>,  <36.563419, 32.989124, 32.790836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729858, 32.926529, 33.408638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.087753, 33.024937, 33.259548>,  <37.302490, 33.083981, 33.170094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.087753, 33.024937, 33.259548>,  <36.729858, 32.926529, 33.408638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087753, 33.024937, 33.259548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283741, 0.331358, 0.899829,
		0.344891, -0.910863, 0.226668,
		0.894729, 0.246028, -0.372731,
		37.356174, 33.098740, 33.147728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300823, 32.603546, 33.829010>,  <36.729858, 32.926529, 33.408638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300823, 32.603546, 33.829010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482647, 32.911968, 33.650639>,  <37.591740, 33.097023, 33.543617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482647, 32.911968, 33.650639>,  <37.300823, 32.603546, 33.829010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482647, 32.911968, 33.650639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369717, 0.292141, 0.882022,
		0.810361, -0.565797, -0.152277,
		0.454559, 0.771056, -0.445925,
		37.619015, 33.143284, 33.516861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909737, 32.659924, 34.139961>,  <37.300823, 32.603546, 33.829010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909737, 32.659924, 34.139961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.895149, 33.026222, 33.979923>,  <37.886398, 33.246002, 33.883900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.895149, 33.026222, 33.979923>,  <37.909737, 32.659924, 34.139961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895149, 33.026222, 33.979923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114824, 0.401548, 0.908611,
		0.992717, -0.012808, -0.119792,
		-0.036464, 0.915749, -0.400094,
		37.884209, 33.300945, 33.859894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578381, 33.037960, 34.377842>,  <37.909737, 32.659924, 34.139961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578381, 33.037960, 34.377842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315800, 33.322502, 34.277409>,  <38.158253, 33.493229, 34.217148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315800, 33.322502, 34.277409>,  <38.578381, 33.037960, 34.377842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315800, 33.322502, 34.277409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136878, 0.439635, 0.887685,
		0.741848, 0.548353, -0.385968,
		-0.656450, 0.711358, -0.251085,
		38.118866, 33.535908, 34.202084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841297, 33.731689, 34.556259>,  <38.578381, 33.037960, 34.377842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841297, 33.731689, 34.556259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445347, 33.788418, 34.553947>,  <38.207775, 33.822456, 34.552559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445347, 33.788418, 34.553947>,  <38.841297, 33.731689, 34.556259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445347, 33.788418, 34.553947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062055, 0.469027, 0.881001,
		0.127657, 0.871722, -0.473079,
		-0.989875, 0.141823, -0.005780,
		38.148384, 33.830963, 34.552212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807755, 34.483479, 34.763485>,  <38.841297, 33.731689, 34.556259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807755, 34.483479, 34.763485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.432632, 34.346214, 34.784500>,  <38.207558, 34.263855, 34.797108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.432632, 34.346214, 34.784500>,  <38.807755, 34.483479, 34.763485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432632, 34.346214, 34.784500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161433, 0.565044, 0.809114,
		-0.307337, 0.750313, -0.585299,
		-0.937808, -0.343157, 0.052533,
		38.151291, 34.243267, 34.800259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871552, 35.247261, 34.708912>,  <38.807755, 34.483479, 34.763485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871552, 35.247261, 34.708912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267929, 35.296471, 34.730438>,  <39.505756, 35.325996, 34.743355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267929, 35.296471, 34.730438>,  <38.871552, 35.247261, 34.708912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267929, 35.296471, 34.730438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105952, -0.470086, -0.876238,
		-0.082502, 0.874005, -0.478863,
		0.990943, 0.123028, 0.053819,
		39.565212, 35.333378, 34.746586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105328, 35.600563, 34.089432>,  <38.871552, 35.247261, 34.708912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105328, 35.600563, 34.089432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407730, 35.399143, 34.256710>,  <39.589172, 35.278294, 34.357079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407730, 35.399143, 34.256710>,  <39.105328, 35.600563, 34.089432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407730, 35.399143, 34.256710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244068, -0.375967, -0.893912,
		0.607357, 0.777874, -0.161334,
		0.756008, -0.503548, 0.418200,
		39.634533, 35.248077, 34.382172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732723, 35.738945, 33.644543>,  <39.105328, 35.600563, 34.089432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732723, 35.738945, 33.644543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782581, 35.394157, 33.841099>,  <39.812496, 35.187283, 33.959034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782581, 35.394157, 33.841099>,  <39.732723, 35.738945, 33.644543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782581, 35.394157, 33.841099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274492, -0.445968, -0.851919,
		0.953476, 0.241075, 0.181015,
		0.124649, -0.861972, 0.491393,
		39.819977, 35.135567, 33.988518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414623, 35.571323, 33.413319>,  <39.732723, 35.738945, 33.644543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414623, 35.571323, 33.413319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.196091, 35.257462, 33.530510>,  <40.064972, 35.069145, 33.600822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.196091, 35.257462, 33.530510>,  <40.414623, 35.571323, 33.413319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196091, 35.257462, 33.530510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120274, -0.419665, -0.899675,
		0.828886, -0.456287, 0.323651,
		-0.546335, -0.784655, 0.292975,
		40.032188, 35.022064, 33.618404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799889, 34.958443, 33.178017>,  <40.414623, 35.571323, 33.413319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799889, 34.958443, 33.178017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430599, 34.814011, 33.230610>,  <40.209026, 34.727352, 33.262165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430599, 34.814011, 33.230610>,  <40.799889, 34.958443, 33.178017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430599, 34.814011, 33.230610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100292, -0.556711, -0.824630,
		0.370952, -0.748128, 0.550180,
		-0.923220, -0.361077, 0.131482,
		40.153633, 34.705688, 33.270054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967262, 34.322308, 32.987507>,  <40.799889, 34.958443, 33.178017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967262, 34.322308, 32.987507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.569744, 34.365311, 32.976097>,  <40.331234, 34.391113, 32.969254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.569744, 34.365311, 32.976097>,  <40.967262, 34.322308, 32.987507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569744, 34.365311, 32.976097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032131, -0.522992, -0.851732,
		-0.106484, -0.845530, 0.523201,
		-0.993795, 0.107507, -0.028522,
		40.271606, 34.397564, 32.967541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759350, 33.677948, 32.889847>,  <40.967262, 34.322308, 32.987507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759350, 33.677948, 32.889847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.458874, 33.914768, 32.773098>,  <40.278587, 34.056858, 32.703049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.458874, 33.914768, 32.773098>,  <40.759350, 33.677948, 32.889847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458874, 33.914768, 32.773098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042584, -0.484720, -0.873632,
		-0.658707, -0.643838, 0.389331,
		-0.751194, 0.592047, -0.291871,
		40.233517, 34.092381, 32.685535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376354, 33.288288, 32.468510>,  <40.759350, 33.677948, 32.889847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376354, 33.288288, 32.468510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.207401, 33.638233, 32.373676>,  <40.106030, 33.848202, 32.316776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.207401, 33.638233, 32.373676>,  <40.376354, 33.288288, 32.468510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207401, 33.638233, 32.373676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153296, -0.326739, -0.932600,
		-0.893362, -0.357567, 0.272121,
		-0.422379, 0.874865, -0.237082,
		40.080688, 33.900692, 32.302551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635590, 33.195564, 32.185196>,  <40.376354, 33.288288, 32.468510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635590, 33.195564, 32.185196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.783348, 33.544159, 32.056164>,  <39.872002, 33.753315, 31.978745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.783348, 33.544159, 32.056164>,  <39.635590, 33.195564, 32.185196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783348, 33.544159, 32.056164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090632, -0.311692, -0.945851,
		-0.924842, 0.378631, -0.036153,
		0.369397, 0.871486, -0.322582,
		39.894169, 33.805603, 31.959389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249008, 33.358585, 31.639759>,  <39.635590, 33.195564, 32.185196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249008, 33.358585, 31.639759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.583515, 33.565163, 31.566065>,  <39.784218, 33.689110, 31.521849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.583515, 33.565163, 31.566065>,  <39.249008, 33.358585, 31.639759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583515, 33.565163, 31.566065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022512, -0.303374, -0.952606,
		-0.547862, 0.800779, -0.242075,
		0.836266, 0.516447, -0.184234,
		39.834396, 33.720097, 31.510796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107742, 33.746872, 31.001371>,  <39.249008, 33.358585, 31.639759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107742, 33.746872, 31.001371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.505299, 33.738552, 31.044714>,  <39.743832, 33.733562, 31.070719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.505299, 33.738552, 31.044714>,  <39.107742, 33.746872, 31.001371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505299, 33.738552, 31.044714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096565, -0.311129, -0.945449,
		0.053374, 0.950140, -0.307222,
		0.993895, -0.020795, 0.108357,
		39.803467, 33.732315, 31.077221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309032, 34.106407, 30.459703>,  <39.107742, 33.746872, 31.001371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309032, 34.106407, 30.459703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.638500, 33.909592, 30.572468>,  <39.836182, 33.791504, 30.640127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.638500, 33.909592, 30.572468>,  <39.309032, 34.106407, 30.459703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638500, 33.909592, 30.572468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183637, -0.238909, -0.953520,
		0.536515, 0.837153, -0.106426,
		0.823668, -0.492034, 0.281910,
		39.885601, 33.761982, 30.657042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842091, 34.324547, 29.966024>,  <39.309032, 34.106407, 30.459703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842091, 34.324547, 29.966024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934898, 33.972195, 30.131054>,  <39.990582, 33.760784, 30.230072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934898, 33.972195, 30.131054>,  <39.842091, 34.324547, 29.966024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934898, 33.972195, 30.131054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354109, -0.318555, -0.879278,
		0.905967, 0.350103, 0.238018,
		0.232016, -0.880881, 0.412574,
		40.004505, 33.707932, 30.254826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345741, 34.166420, 29.685068>,  <39.842091, 34.324547, 29.966024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345741, 34.166420, 29.685068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.247604, 33.806686, 29.829847>,  <40.188721, 33.590847, 29.916716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.247604, 33.806686, 29.829847>,  <40.345741, 34.166420, 29.685068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247604, 33.806686, 29.829847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246804, -0.419005, -0.873798,
		0.937493, -0.125052, 0.324760,
		-0.245347, -0.899332, 0.361950,
		40.174000, 33.536888, 29.938433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901390, 33.689632, 29.582851>,  <40.345741, 34.166420, 29.685068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901390, 33.689632, 29.582851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.592674, 33.444267, 29.649876>,  <40.407444, 33.297050, 29.690090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.592674, 33.444267, 29.649876>,  <40.901390, 33.689632, 29.582851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592674, 33.444267, 29.649876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258251, -0.543166, -0.798922,
		0.581080, -0.573323, 0.577621,
		-0.771785, -0.613409, 0.167562,
		40.361137, 33.260246, 29.700144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188549, 33.041370, 29.420115>,  <40.901390, 33.689632, 29.582851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188549, 33.041370, 29.420115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.791004, 33.012005, 29.387020>,  <40.552479, 32.994385, 29.367165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.791004, 33.012005, 29.387020>,  <41.188549, 33.041370, 29.420115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791004, 33.012005, 29.387020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105057, -0.392474, -0.913743,
		0.034613, -0.916828, 0.397779,
		-0.993864, -0.073417, -0.082735,
		40.492844, 32.989979, 29.362200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068375, 32.337345, 29.099878>,  <41.188549, 33.041370, 29.420115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068375, 32.337345, 29.099878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.727215, 32.538460, 29.043636>,  <40.522518, 32.659130, 29.009892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.727215, 32.538460, 29.043636>,  <41.068375, 32.337345, 29.099878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727215, 32.538460, 29.043636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030033, -0.316122, -0.948243,
		-0.521214, -0.804531, 0.284720,
		-0.852898, 0.502788, -0.140604,
		40.471344, 32.689297, 29.001455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608948, 31.822563, 28.889208>,  <41.068375, 32.337345, 29.099878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608948, 31.822563, 28.889208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.427784, 32.153385, 28.756027>,  <40.319084, 32.351879, 28.676119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.427784, 32.153385, 28.756027>,  <40.608948, 31.822563, 28.889208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427784, 32.153385, 28.756027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125514, -0.428878, -0.894601,
		-0.882678, -0.363382, 0.298049,
		-0.452909, 0.827053, -0.332951,
		40.291912, 32.401501, 28.656141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.857628, 31.691961, 28.447199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021179, 32.037117, 28.328377>,  <40.119308, 32.244209, 28.257084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021179, 32.037117, 28.328377>,  <39.857628, 31.691961, 28.447199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021179, 32.037117, 28.328377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140355, -0.262174, -0.954759,
		-0.901732, 0.432072, 0.013914,
		0.408877, 0.862890, -0.297054,
		40.143841, 32.295982, 28.239260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573570, 31.745182, 27.758757>,  <39.857628, 31.691961, 28.447199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573570, 31.745182, 27.758757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891453, 31.987606, 27.772249>,  <40.082180, 32.133060, 27.780346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891453, 31.987606, 27.772249>,  <39.573570, 31.745182, 27.758757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891453, 31.987606, 27.772249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201925, -0.211550, -0.956281,
		-0.572428, 0.766770, -0.290498,
		0.794703, 0.606061, 0.033733,
		40.129864, 32.169426, 27.782370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508610, 32.146484, 27.241888>,  <39.573570, 31.745182, 27.758757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508610, 32.146484, 27.241888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.903934, 32.169727, 27.298275>,  <40.141129, 32.183674, 27.332108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.903934, 32.169727, 27.298275>,  <39.508610, 32.146484, 27.241888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903934, 32.169727, 27.298275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142614, -0.025221, -0.989457,
		-0.053944, 0.997991, -0.033213,
		0.988307, 0.058112, 0.140967,
		40.200428, 32.187160, 27.340565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677391, 32.667969, 26.748863>,  <39.508610, 32.146484, 27.241888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677391, 32.667969, 26.748863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.016609, 32.471855, 26.829311>,  <40.220139, 32.354187, 26.877581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.016609, 32.471855, 26.829311>,  <39.677391, 32.667969, 26.748863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016609, 32.471855, 26.829311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104804, -0.216856, -0.970561,
		0.519463, 0.844154, -0.132519,
		0.848041, -0.490283, 0.201120,
		40.271023, 32.324772, 26.889647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164783, 32.890015, 26.190317>,  <39.677391, 32.667969, 26.748863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164783, 32.890015, 26.190317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.325340, 32.555767, 26.340319>,  <40.421673, 32.355217, 26.430319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.325340, 32.555767, 26.340319>,  <40.164783, 32.890015, 26.190317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325340, 32.555767, 26.340319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082604, -0.374739, -0.923443,
		0.912175, 0.401637, -0.081390,
		0.401389, -0.835619, 0.375004,
		40.445755, 32.305080, 26.452820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658306, 32.805153, 25.675138>,  <40.164783, 32.890015, 26.190317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658306, 32.805153, 25.675138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.620640, 32.452522, 25.860159>,  <40.598042, 32.240944, 25.971170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.620640, 32.452522, 25.860159>,  <40.658306, 32.805153, 25.675138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620640, 32.452522, 25.860159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303191, -0.467937, -0.830126,
		0.948266, 0.062073, 0.311350,
		-0.094164, -0.881579, 0.462549,
		40.592392, 32.188049, 25.998924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305500, 32.409500, 25.630774>,  <40.658306, 32.805153, 25.675138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305500, 32.409500, 25.630774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.039547, 32.118977, 25.700523>,  <40.879974, 31.944662, 25.742373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.039547, 32.118977, 25.700523>,  <41.305500, 32.409500, 25.630774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039547, 32.118977, 25.700523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454945, -0.578920, -0.676667,
		0.592419, -0.370572, 0.715344,
		-0.664880, -0.726312, 0.174373,
		40.840084, 31.901083, 25.752836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731770, 31.765402, 25.549860>,  <41.305500, 32.409500, 25.630774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731770, 31.765402, 25.549860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.349590, 31.650850, 25.521257>,  <41.120285, 31.582119, 25.504097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.349590, 31.650850, 25.521257>,  <41.731770, 31.765402, 25.549860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349590, 31.650850, 25.521257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258499, -0.694870, -0.671070,
		0.142495, -0.659653, 0.737938,
		-0.955444, -0.286380, -0.071505,
		41.062958, 31.564936, 25.499805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713566, 31.042446, 25.500429>,  <41.731770, 31.765402, 25.549860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713566, 31.042446, 25.500429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353081, 31.151453, 25.365641>,  <41.136791, 31.216858, 25.284767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353081, 31.151453, 25.365641>,  <41.713566, 31.042446, 25.500429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353081, 31.151453, 25.365641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078317, -0.662336, -0.745102,
		-0.426244, -0.697885, 0.575563,
		-0.901212, 0.272519, -0.336973,
		41.082718, 31.233210, 25.264549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493877, 30.435495, 25.287838>,  <41.713566, 31.042446, 25.500429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493877, 30.435495, 25.287838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.272739, 30.708956, 25.097263>,  <41.140057, 30.873032, 24.982920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.272739, 30.708956, 25.097263>,  <41.493877, 30.435495, 25.287838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272739, 30.708956, 25.097263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299880, -0.370220, -0.879210,
		-0.777457, -0.628936, -0.000341,
		-0.552840, 0.683650, -0.476435,
		41.106888, 30.914051, 24.954332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056320, 30.113640, 24.728132>,  <41.493877, 30.435495, 25.287838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056320, 30.113640, 24.728132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081730, 30.502497, 24.637880>,  <41.096977, 30.735811, 24.583729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.081730, 30.502497, 24.637880>,  <41.056320, 30.113640, 24.728132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081730, 30.502497, 24.637880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388337, -0.232347, -0.891745,
		-0.919325, -0.030968, -0.392279,
		0.063529, 0.972140, -0.225628,
		41.100788, 30.794138, 24.570192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769989, 30.036503, 24.072752>,  <41.056320, 30.113640, 24.728132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769989, 30.036503, 24.072752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.893604, 30.415998, 24.099255>,  <40.967773, 30.643696, 24.115156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.893604, 30.415998, 24.099255>,  <40.769989, 30.036503, 24.072752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893604, 30.415998, 24.099255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205226, 0.001503, -0.978714,
		-0.928644, 0.316055, -0.194241,
		0.309036, 0.948740, 0.066259,
		40.986317, 30.700621, 24.119133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408131, 30.460770, 23.567251>,  <40.769989, 30.036503, 24.072752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408131, 30.460770, 23.567251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769867, 30.619719, 23.629560>,  <40.986908, 30.715088, 23.666946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769867, 30.619719, 23.629560>,  <40.408131, 30.460770, 23.567251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769867, 30.619719, 23.629560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131698, 0.087361, -0.987433,
		-0.405986, 0.913490, 0.026671,
		0.904340, 0.397371, 0.155772,
		41.041168, 30.738930, 23.676292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483585, 30.958298, 23.017338>,  <40.408131, 30.460770, 23.567251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483585, 30.958298, 23.017338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.857624, 30.934151, 23.157028>,  <41.082047, 30.919662, 23.240843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.857624, 30.934151, 23.157028>,  <40.483585, 30.958298, 23.017338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857624, 30.934151, 23.157028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348842, 0.330668, -0.876908,
		-0.062539, 0.941814, 0.330265,
		0.935092, -0.060369, 0.349224,
		41.138153, 30.916040, 23.261795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747856, 31.575203, 22.838911>,  <40.483585, 30.958298, 23.017338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747856, 31.575203, 22.838911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.031662, 31.294613, 22.865791>,  <41.201946, 31.126259, 22.881920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.031662, 31.294613, 22.865791>,  <40.747856, 31.575203, 22.838911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031662, 31.294613, 22.865791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294035, 0.208040, -0.932879,
		0.640411, 0.681654, 0.353866,
		0.709519, -0.701475, 0.067199,
		41.244518, 31.084169, 22.885950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275829, 31.871105, 22.611536>,  <40.747856, 31.575203, 22.838911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275829, 31.871105, 22.611536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366116, 31.484474, 22.562908>,  <41.420288, 31.252495, 22.533731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366116, 31.484474, 22.562908>,  <41.275829, 31.871105, 22.611536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366116, 31.484474, 22.562908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503607, 0.222591, -0.834766,
		0.833927, 0.127195, 0.537017,
		0.225713, -0.966579, -0.121568,
		41.433830, 31.194500, 22.526438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018181, 31.816809, 22.355822>,  <41.275829, 31.871105, 22.611536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018181, 31.816809, 22.355822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.854202, 31.469179, 22.245077>,  <41.755814, 31.260601, 22.178631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.854202, 31.469179, 22.245077>,  <42.018181, 31.816809, 22.355822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854202, 31.469179, 22.245077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261509, 0.178807, -0.948494,
		0.873818, -0.461233, 0.153970,
		-0.409946, -0.869076, -0.276861,
		41.731220, 31.208456, 22.162020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616180, 31.548759, 21.995041>,  <42.018181, 31.816809, 22.355822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616180, 31.548759, 21.995041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.275890, 31.365747, 21.891552>,  <42.071716, 31.255941, 21.829458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.275890, 31.365747, 21.891552>,  <42.616180, 31.548759, 21.995041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275890, 31.365747, 21.891552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109960, 0.326420, -0.938807,
		0.513985, -0.827114, -0.227383,
		-0.850722, -0.457529, -0.258724,
		42.020672, 31.228489, 21.813934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660988, 31.258131, 21.322390>,  <42.616180, 31.548759, 21.995041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660988, 31.258131, 21.322390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.262012, 31.229515, 21.322519>,  <42.022629, 31.212345, 21.322598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.262012, 31.229515, 21.322519>,  <42.660988, 31.258131, 21.322390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262012, 31.229515, 21.322519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021210, 0.291411, -0.956363,
		0.068323, -0.953919, -0.292182,
		-0.997438, -0.071539, 0.000322,
		41.962780, 31.208054, 21.322617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491104, 30.960684, 20.687466>,  <42.660988, 31.258131, 21.322390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491104, 30.960684, 20.687466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.135857, 31.109943, 20.794800>,  <41.922707, 31.199499, 20.859201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.135857, 31.109943, 20.794800>,  <42.491104, 30.960684, 20.687466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135857, 31.109943, 20.794800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231902, 0.140260, -0.962574,
		-0.396823, -0.917107, -0.038033,
		-0.888118, 0.373152, 0.268338,
		41.869423, 31.221889, 20.875301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956787, 30.609766, 20.367939>,  <42.491104, 30.960684, 20.687466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956787, 30.609766, 20.367939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.794258, 30.965147, 20.453312>,  <41.696739, 31.178375, 20.504536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.794258, 30.965147, 20.453312>,  <41.956787, 30.609766, 20.367939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794258, 30.965147, 20.453312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402843, 0.035471, -0.914581,
		-0.820132, -0.457598, 0.343494,
		-0.406327, 0.888451, 0.213431,
		41.672359, 31.231682, 20.517342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148972, 30.662464, 20.223475>,  <41.956787, 30.609766, 20.367939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148972, 30.662464, 20.223475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.321419, 31.022762, 20.202311>,  <41.424889, 31.238941, 20.189611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.321419, 31.022762, 20.202311>,  <41.148972, 30.662464, 20.223475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321419, 31.022762, 20.202311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361444, 0.118671, -0.924811,
		-0.826738, 0.417826, 0.376729,
		0.431117, 0.900743, -0.052911,
		41.450752, 31.292986, 20.186438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719608, 31.116411, 19.810926>,  <41.148972, 30.662464, 20.223475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719608, 31.116411, 19.810926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.078579, 31.291658, 19.790239>,  <41.293961, 31.396807, 19.777828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.078579, 31.291658, 19.790239>,  <40.719608, 31.116411, 19.810926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078579, 31.291658, 19.790239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072361, 0.030545, -0.996911,
		-0.435184, 0.898399, 0.059114,
		0.897429, 0.438117, -0.051717,
		41.347809, 31.423094, 19.774725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689342, 31.513786, 19.203627>,  <40.719608, 31.116411, 19.810926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689342, 31.513786, 19.203627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083336, 31.543093, 19.266163>,  <41.319733, 31.560677, 19.303684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083336, 31.543093, 19.266163>,  <40.689342, 31.513786, 19.203627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083336, 31.543093, 19.266163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118954, 0.368338, -0.922050,
		-0.125140, 0.926801, 0.354091,
		0.984982, 0.073265, 0.156341,
		41.378830, 31.565073, 19.313065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044544, 31.177235, 19.000362>,  <40.689342, 31.513786, 19.203627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044544, 31.177235, 19.000362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646576, 31.217402, 19.003210>,  <39.407795, 31.241501, 19.004919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646576, 31.217402, 19.003210>,  <40.044544, 31.177235, 19.000362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646576, 31.217402, 19.003210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042675, 0.356652, 0.933262,
		0.091174, 0.928825, -0.359125,
		-0.994920, 0.100415, 0.007120,
		39.348099, 31.247526, 19.005346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957100, 31.779060, 19.379896>,  <40.044544, 31.177235, 19.000362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957100, 31.779060, 19.379896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587330, 31.626543, 19.376879>,  <39.365467, 31.535032, 19.375069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587330, 31.626543, 19.376879>,  <39.957100, 31.779060, 19.379896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587330, 31.626543, 19.376879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131440, 0.299972, 0.944849,
		-0.358001, 0.874433, -0.327418,
		-0.924423, -0.381293, -0.007545,
		39.310001, 31.512156, 19.374615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547150, 32.206390, 19.742725>,  <39.957100, 31.779060, 19.379896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547150, 32.206390, 19.742725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305000, 31.888149, 19.752056>,  <39.159710, 31.697205, 19.757654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305000, 31.888149, 19.752056>,  <39.547150, 32.206390, 19.742725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305000, 31.888149, 19.752056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102003, 0.106613, 0.989055,
		-0.789379, 0.596368, -0.145694,
		-0.605373, -0.795600, 0.023326,
		39.123390, 31.649469, 19.759054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827736, 32.444160, 20.011911>,  <39.547150, 32.206390, 19.742725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827736, 32.444160, 20.011911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.870140, 32.051971, 20.078173>,  <38.895580, 31.816658, 20.117929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.870140, 32.051971, 20.078173>,  <38.827736, 32.444160, 20.011911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870140, 32.051971, 20.078173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185417, 0.144177, 0.972026,
		-0.976925, -0.133757, -0.166512,
		0.106009, -0.980471, 0.165651,
		38.901943, 31.757830, 20.127869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140930, 32.220051, 20.352882>,  <38.827736, 32.444160, 20.011911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140930, 32.220051, 20.352882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414963, 31.936489, 20.419952>,  <38.579384, 31.766352, 20.460194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414963, 31.936489, 20.419952>,  <38.140930, 32.220051, 20.352882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414963, 31.936489, 20.419952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274024, -0.037519, 0.960991,
		-0.674957, -0.704308, -0.219960,
		0.685086, -0.708902, 0.167674,
		38.620487, 31.723818, 20.470255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796753, 31.847298, 20.919682>,  <38.140930, 32.220051, 20.352882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796753, 31.847298, 20.919682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.182907, 31.743557, 20.908638>,  <38.414600, 31.681313, 20.902012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.182907, 31.743557, 20.908638>,  <37.796753, 31.847298, 20.919682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182907, 31.743557, 20.908638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007333, -0.078817, 0.996862,
		-0.260716, -0.962561, -0.074188,
		0.965388, -0.259354, -0.027608,
		38.472523, 31.665751, 20.900356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806129, 31.251736, 21.333313>,  <37.796753, 31.847298, 20.919682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806129, 31.251736, 21.333313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179607, 31.390255, 21.296875>,  <38.403694, 31.473366, 21.275013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179607, 31.390255, 21.296875>,  <37.806129, 31.251736, 21.333313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179607, 31.390255, 21.296875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133446, -0.100445, 0.985953,
		0.332282, -0.932732, -0.139996,
		0.933692, 0.346297, -0.091094,
		38.459717, 31.494144, 21.269547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187790, 30.779634, 21.767517>,  <37.806129, 31.251736, 21.333313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187790, 30.779634, 21.767517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379124, 31.128767, 21.728811>,  <38.493923, 31.338247, 21.705587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379124, 31.128767, 21.728811>,  <38.187790, 30.779634, 21.767517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379124, 31.128767, 21.728811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143584, 0.030974, 0.989153,
		0.866362, -0.487037, -0.110509,
		0.478332, 0.872832, -0.096765,
		38.522625, 31.390617, 21.699781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758030, 30.634897, 22.145418>,  <38.187790, 30.779634, 21.767517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758030, 30.634897, 22.145418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.713139, 31.031746, 22.123150>,  <38.686203, 31.269855, 22.109789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.713139, 31.031746, 22.123150>,  <38.758030, 30.634897, 22.145418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713139, 31.031746, 22.123150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168496, 0.074213, 0.982905,
		0.979292, 0.100933, -0.175497,
		-0.112231, 0.992122, -0.055670,
		38.679470, 31.329382, 22.106449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263477, 30.888081, 22.572617>,  <38.758030, 30.634897, 22.145418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263477, 30.888081, 22.572617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005642, 31.191462, 22.534145>,  <38.850941, 31.373491, 22.511063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005642, 31.191462, 22.534145>,  <39.263477, 30.888081, 22.572617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005642, 31.191462, 22.534145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099242, 0.207748, 0.973135,
		0.758060, 0.617728, -0.209183,
		-0.644590, 0.758454, -0.096180,
		38.812263, 31.418999, 22.505291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455807, 31.412151, 23.002686>,  <39.263477, 30.888081, 22.572617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455807, 31.412151, 23.002686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066338, 31.489714, 22.954750>,  <38.832657, 31.536251, 22.925989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066338, 31.489714, 22.954750>,  <39.455807, 31.412151, 23.002686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066338, 31.489714, 22.954750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117122, 0.025453, 0.992791,
		0.195560, 0.980690, -0.002072,
		-0.973673, 0.193907, -0.119838,
		38.774235, 31.547886, 22.918798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309830, 32.039948, 23.440035>,  <39.455807, 31.412151, 23.002686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309830, 32.039948, 23.440035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957504, 31.860998, 23.378038>,  <38.746109, 31.753628, 23.340841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957504, 31.860998, 23.378038>,  <39.309830, 32.039948, 23.440035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957504, 31.860998, 23.378038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132024, -0.082291, 0.987825,
		-0.454685, 0.890551, 0.013418,
		-0.880813, -0.447377, -0.154991,
		38.693260, 31.726786, 23.331541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767899, 32.394005, 23.871021>,  <39.309830, 32.039948, 23.440035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767899, 32.394005, 23.871021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622272, 32.034920, 23.771763>,  <38.534897, 31.819469, 23.712208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622272, 32.034920, 23.771763>,  <38.767899, 32.394005, 23.871021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622272, 32.034920, 23.771763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278668, -0.149232, 0.948722,
		-0.888707, 0.414547, -0.195833,
		-0.364066, -0.897708, -0.248145,
		38.513054, 31.765608, 23.697319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054291, 32.417152, 24.190514>,  <38.767899, 32.394005, 23.871021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054291, 32.417152, 24.190514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083748, 32.023830, 24.123959>,  <38.101421, 31.787836, 24.084024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083748, 32.023830, 24.123959>,  <38.054291, 32.417152, 24.190514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083748, 32.023830, 24.123959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220504, -0.178767, 0.958864,
		-0.972602, -0.033920, -0.229987,
		0.073639, -0.983307, -0.166389,
		38.105839, 31.728838, 24.074041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378899, 32.077290, 24.358212>,  <38.054291, 32.417152, 24.190514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378899, 32.077290, 24.358212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686901, 31.823374, 24.383915>,  <37.871704, 31.671024, 24.399338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686901, 31.823374, 24.383915>,  <37.378899, 32.077290, 24.358212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686901, 31.823374, 24.383915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272141, -0.235669, 0.932952,
		-0.577087, -0.735866, -0.354219,
		0.770007, -0.634792, 0.064258,
		37.917904, 31.632936, 24.403193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193760, 31.570627, 24.827679>,  <37.378899, 32.077290, 24.358212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193760, 31.570627, 24.827679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.586262, 31.493898, 24.835104>,  <37.821762, 31.447861, 24.839560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.586262, 31.493898, 24.835104>,  <37.193760, 31.570627, 24.827679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586262, 31.493898, 24.835104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042774, -0.122847, 0.991503,
		-0.187917, -0.973710, -0.128750,
		0.981253, -0.191827, 0.018565,
		37.880638, 31.436352, 24.840673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323727, 30.915716, 25.140676>,  <37.193760, 31.570627, 24.827679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323727, 30.915716, 25.140676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655373, 31.133532, 25.191334>,  <37.854362, 31.264221, 25.221727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655373, 31.133532, 25.191334>,  <37.323727, 30.915716, 25.140676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655373, 31.133532, 25.191334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051289, -0.151479, 0.987129,
		0.556714, -0.824943, -0.097665,
		0.829120, 0.544539, 0.126641,
		37.904110, 31.296894, 25.229326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533115, 30.583879, 25.699997>,  <37.323727, 30.915716, 25.140676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533115, 30.583879, 25.699997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779606, 30.898832, 25.693161>,  <37.927502, 31.087805, 25.689060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779606, 30.898832, 25.693161>,  <37.533115, 30.583879, 25.699997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779606, 30.898832, 25.693161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074475, -0.036657, 0.996549,
		0.784038, -0.615375, -0.081230,
		0.616229, 0.787381, -0.017090,
		37.964474, 31.135046, 25.688034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334568, 30.403387, 26.100008>,  <37.533115, 30.583879, 25.699997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334568, 30.403387, 26.100008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236073, 30.790188, 26.073856>,  <38.176975, 31.022268, 26.058165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236073, 30.790188, 26.073856>,  <38.334568, 30.403387, 26.100008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236073, 30.790188, 26.073856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027278, 0.074344, 0.996860,
		0.968824, 0.243687, -0.044685,
		-0.246243, 0.967000, -0.065379,
		38.162201, 31.080288, 26.054243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800198, 30.692854, 26.597000>,  <38.334568, 30.403387, 26.100008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800198, 30.692854, 26.597000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.487633, 30.936510, 26.542837>,  <38.300095, 31.082705, 26.510340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.487633, 30.936510, 26.542837>,  <38.800198, 30.692854, 26.597000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487633, 30.936510, 26.542837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062446, 0.139574, 0.988241,
		0.620877, 0.780684, -0.071027,
		-0.781417, 0.609141, -0.135409,
		38.253208, 31.119253, 26.502214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.987827, 33.150932, 30.986561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.654232, 33.342186, 30.876398>,  <40.454075, 33.456940, 30.810301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.654232, 33.342186, 30.876398>,  <40.987827, 33.150932, 30.986561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654232, 33.342186, 30.876398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052084, 0.428677, 0.901955,
		0.549320, 0.766563, -0.332608,
		-0.833987, 0.478139, -0.275407,
		40.404037, 33.485626, 30.793776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068024, 33.729321, 31.362932>,  <40.987827, 33.150932, 30.986561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068024, 33.729321, 31.362932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681221, 33.725872, 31.261091>,  <40.449139, 33.723804, 31.199987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681221, 33.725872, 31.261091>,  <41.068024, 33.729321, 31.362932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681221, 33.725872, 31.261091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220424, 0.529347, 0.819271,
		0.127710, 0.848362, -0.513783,
		-0.967008, -0.008621, -0.254602,
		40.391117, 33.723286, 31.184711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927433, 34.481865, 31.350197>,  <41.068024, 33.729321, 31.362932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927433, 34.481865, 31.350197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.610886, 34.249432, 31.426178>,  <40.420959, 34.109970, 31.471766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.610886, 34.249432, 31.426178>,  <40.927433, 34.481865, 31.350197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610886, 34.249432, 31.426178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250320, 0.591464, 0.766492,
		-0.557746, 0.559027, -0.613521,
		-0.791366, -0.581084, 0.189951,
		40.373474, 34.075108, 31.483164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370438, 34.914143, 31.504959>,  <40.927433, 34.481865, 31.350197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370438, 34.914143, 31.504959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236942, 34.565395, 31.648323>,  <40.156845, 34.356148, 31.734341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236942, 34.565395, 31.648323>,  <40.370438, 34.914143, 31.504959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236942, 34.565395, 31.648323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093023, 0.408813, 0.907865,
		-0.938064, 0.269650, -0.217541,
		-0.333740, -0.871872, 0.358409,
		40.136822, 34.303833, 31.755846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730072, 35.082321, 31.848520>,  <40.370438, 34.914143, 31.504959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730072, 35.082321, 31.848520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836174, 34.723473, 31.989832>,  <39.899837, 34.508163, 32.074619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836174, 34.723473, 31.989832>,  <39.730072, 35.082321, 31.848520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836174, 34.723473, 31.989832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157752, 0.321088, 0.933818,
		-0.951185, -0.303434, -0.056352,
		0.265258, -0.897123, 0.353281,
		39.915752, 34.454334, 32.095818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250420, 34.912521, 32.315620>,  <39.730072, 35.082321, 31.848520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250420, 34.912521, 32.315620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.546558, 34.662773, 32.415257>,  <39.724243, 34.512924, 32.475037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.546558, 34.662773, 32.415257>,  <39.250420, 34.912521, 32.315620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546558, 34.662773, 32.415257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158202, 0.198301, 0.967289,
		-0.653344, -0.755535, 0.048034,
		0.740347, -0.624374, 0.249086,
		39.768661, 34.475460, 32.489983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967567, 34.442249, 32.802475>,  <39.250420, 34.912521, 32.315620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967567, 34.442249, 32.802475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363647, 34.427490, 32.856342>,  <39.601295, 34.418633, 32.888664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363647, 34.427490, 32.856342>,  <38.967567, 34.442249, 32.802475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363647, 34.427490, 32.856342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117900, 0.295832, 0.947936,
		-0.074820, -0.954527, 0.288583,
		0.990203, -0.036900, 0.134673,
		39.660709, 34.416420, 32.896744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047962, 34.118435, 33.555737>,  <38.967567, 34.442249, 32.802475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047962, 34.118435, 33.555737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380943, 34.317249, 33.457771>,  <39.580730, 34.436539, 33.398994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380943, 34.317249, 33.457771>,  <39.047962, 34.118435, 33.555737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380943, 34.317249, 33.457771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072827, 0.340019, 0.937594,
		0.549289, -0.798339, 0.246853,
		0.832453, 0.497033, -0.244909,
		39.630680, 34.466358, 33.384300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451767, 33.998264, 34.135994>,  <39.047962, 34.118435, 33.555737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451767, 33.998264, 34.135994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.609325, 34.317875, 33.954269>,  <39.703861, 34.509644, 33.845234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.609325, 34.317875, 33.954269>,  <39.451767, 33.998264, 34.135994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609325, 34.317875, 33.954269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004831, 0.496060, 0.868275,
		0.919141, -0.339818, 0.199258,
		0.393899, 0.799029, -0.454307,
		39.727497, 34.557583, 33.817978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059399, 34.039574, 34.609783>,  <39.451767, 33.998264, 34.135994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059399, 34.039574, 34.609783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.960121, 34.374687, 34.415249>,  <39.900555, 34.575756, 34.298527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.960121, 34.374687, 34.415249>,  <40.059399, 34.039574, 34.609783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960121, 34.374687, 34.415249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341904, 0.545498, 0.765202,
		0.906368, 0.023635, -0.421828,
		-0.248192, 0.837779, -0.486340,
		39.885662, 34.626022, 34.269348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540470, 34.549580, 34.979336>,  <40.059399, 34.039574, 34.609783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540470, 34.549580, 34.979336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311775, 34.793106, 34.759350>,  <40.174561, 34.939220, 34.627357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311775, 34.793106, 34.759350>,  <40.540470, 34.549580, 34.979336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311775, 34.793106, 34.759350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074736, 0.628895, 0.773890,
		0.817027, 0.483562, -0.314061,
		-0.571735, 0.608817, -0.549964,
		40.140255, 34.975750, 34.594360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750370, 35.292271, 35.039650>,  <40.540470, 34.549580, 34.979336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750370, 35.292271, 35.039650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.362141, 35.267090, 34.946674>,  <40.129204, 35.251980, 34.890888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.362141, 35.267090, 34.946674>,  <40.750370, 35.292271, 35.039650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362141, 35.267090, 34.946674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234239, 0.470757, 0.850600,
		0.055875, 0.880014, -0.471649,
		-0.970572, -0.062952, -0.232437,
		40.070969, 35.248203, 34.876942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516766, 35.981098, 34.946545>,  <40.750370, 35.292271, 35.039650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516766, 35.981098, 34.946545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236580, 35.741619, 35.101936>,  <40.068470, 35.597931, 35.195171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236580, 35.741619, 35.101936>,  <40.516766, 35.981098, 34.946545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236580, 35.741619, 35.101936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043258, 0.507708, 0.860442,
		-0.712378, 0.619512, -0.329731,
		-0.700462, -0.598696, 0.388479,
		40.026440, 35.562012, 35.218479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155636, 36.446331, 35.352383>,  <40.516766, 35.981098, 34.946545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155636, 36.446331, 35.352383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.109283, 36.068504, 35.475262>,  <40.081470, 35.841808, 35.548988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.109283, 36.068504, 35.475262>,  <40.155636, 36.446331, 35.352383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109283, 36.068504, 35.475262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292068, 0.328012, 0.898390,
		-0.949351, 0.014385, -0.313888,
		-0.115883, -0.944564, 0.307197,
		40.074520, 35.785133, 35.567421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927547, 36.664295, 35.269238>,  <40.155636, 36.446331, 35.352383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927547, 36.664295, 35.269238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130692, 37.006065, 35.225365>,  <41.252579, 37.211128, 35.199039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130692, 37.006065, 35.225365>,  <40.927547, 36.664295, 35.269238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130692, 37.006065, 35.225365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240580, 0.018419, -0.970455,
		-0.827163, 0.519244, 0.214912,
		0.507862, 0.854428, -0.109684,
		41.283051, 37.262394, 35.192459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489395, 37.165405, 34.933575>,  <40.927547, 36.664295, 35.269238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489395, 37.165405, 34.933575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.852165, 37.310051, 34.847115>,  <41.069828, 37.396839, 34.795238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.852165, 37.310051, 34.847115>,  <40.489395, 37.165405, 34.933575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852165, 37.310051, 34.847115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234919, 0.008179, -0.971981,
		-0.349715, 0.932292, 0.092368,
		0.906925, 0.361615, -0.216153,
		41.124241, 37.418537, 34.782269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379108, 37.633739, 34.342194>,  <40.489395, 37.165405, 34.933575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379108, 37.633739, 34.342194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.777279, 37.599659, 34.324905>,  <41.016182, 37.579212, 34.314533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.777279, 37.599659, 34.324905>,  <40.379108, 37.633739, 34.342194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777279, 37.599659, 34.324905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040715, 0.030891, -0.998693,
		0.086426, 0.995885, 0.027281,
		0.995426, -0.085202, -0.043218,
		41.075905, 37.574097, 34.311939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549850, 38.000492, 33.839733>,  <40.379108, 37.633739, 34.342194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549850, 38.000492, 33.839733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.883530, 37.781441, 33.865696>,  <41.083736, 37.650009, 33.881275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.883530, 37.781441, 33.865696>,  <40.549850, 38.000492, 33.839733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883530, 37.781441, 33.865696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090269, 0.019486, -0.995727,
		0.544024, 0.836494, 0.065689,
		0.834200, -0.547629, 0.064909,
		41.133789, 37.617153, 33.885170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212540, 38.406128, 33.513023>,  <40.549850, 38.000492, 33.839733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212540, 38.406128, 33.513023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.235565, 38.008202, 33.479488>,  <41.249382, 37.769447, 33.459366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.235565, 38.008202, 33.479488>,  <41.212540, 38.406128, 33.513023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235565, 38.008202, 33.479488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011209, 0.083330, -0.996459,
		0.998279, 0.058303, -0.006353,
		0.057568, -0.994815, -0.083840,
		41.252834, 37.709759, 33.454338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453312, 38.318241, 32.884266>,  <41.212540, 38.406128, 33.513023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453312, 38.318241, 32.884266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351360, 37.937019, 32.949650>,  <41.290192, 37.708286, 32.988880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351360, 37.937019, 32.949650>,  <41.453312, 38.318241, 32.884266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351360, 37.937019, 32.949650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025535, -0.175616, -0.984127,
		0.966637, -0.246656, 0.069097,
		-0.254875, -0.953058, 0.163458,
		41.274899, 37.651100, 32.998688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991478, 37.825974, 32.526192>,  <41.453312, 38.318241, 32.884266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991478, 37.825974, 32.526192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.683792, 37.577358, 32.585526>,  <41.499180, 37.428188, 32.621124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.683792, 37.577358, 32.585526>,  <41.991478, 37.825974, 32.526192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683792, 37.577358, 32.585526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008923, -0.242565, -0.970094,
		0.638931, -0.744884, 0.192130,
		-0.769212, -0.621538, 0.148336,
		41.453030, 37.390896, 32.630028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109230, 37.262642, 32.047947>,  <41.991478, 37.825974, 32.526192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109230, 37.262642, 32.047947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719109, 37.249317, 32.135277>,  <41.485035, 37.241322, 32.187675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719109, 37.249317, 32.135277>,  <42.109230, 37.262642, 32.047947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719109, 37.249317, 32.135277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210810, -0.154221, -0.965285,
		0.065829, -0.987475, 0.143389,
		-0.975308, -0.033316, 0.218322,
		41.426517, 37.239323, 32.200775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898777, 36.583416, 31.708929>,  <42.109230, 37.262642, 32.047947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898777, 36.583416, 31.708929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.578831, 36.811832, 31.782829>,  <41.386864, 36.948883, 31.827169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.578831, 36.811832, 31.782829>,  <41.898777, 36.583416, 31.708929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578831, 36.811832, 31.782829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216773, 0.012183, -0.976146,
		-0.559672, -0.820830, 0.114042,
		-0.799861, 0.571043, 0.184752,
		41.338871, 36.983147, 31.838255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293713, 36.210632, 31.382391>,  <41.898777, 36.583416, 31.708929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293713, 36.210632, 31.382391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.185440, 36.594479, 31.413044>,  <41.120476, 36.824787, 31.431437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.185440, 36.594479, 31.413044>,  <41.293713, 36.210632, 31.382391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185440, 36.594479, 31.413044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236728, 0.010809, -0.971516,
		-0.933108, -0.281113, 0.224242,
		-0.270681, 0.959614, 0.076633,
		41.104237, 36.882362, 31.436033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622528, 36.248264, 31.138277>,  <41.293713, 36.210632, 31.382391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622528, 36.248264, 31.138277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.761887, 36.619720, 31.087309>,  <40.845501, 36.842594, 31.056728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.761887, 36.619720, 31.087309>,  <40.622528, 36.248264, 31.138277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761887, 36.619720, 31.087309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196518, -0.060550, -0.978629,
		-0.916514, 0.365995, 0.161400,
		0.348401, 0.928645, -0.127420,
		40.866405, 36.898315, 31.049084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144073, 36.570095, 30.633116>,  <40.622528, 36.248264, 31.138277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144073, 36.570095, 30.633116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.475857, 36.793510, 30.635548>,  <40.674927, 36.927559, 30.637007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.475857, 36.793510, 30.635548>,  <40.144073, 36.570095, 30.633116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475857, 36.793510, 30.635548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061399, 0.101986, -0.992889,
		-0.555184, 0.823187, 0.118886,
		0.829458, 0.558535, 0.006078,
		40.724693, 36.961071, 30.637371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988522, 37.177147, 30.230091>,  <40.144073, 36.570095, 30.633116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988522, 37.177147, 30.230091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386852, 37.140709, 30.231947>,  <40.625851, 37.118847, 30.233061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386852, 37.140709, 30.231947>,  <39.988522, 37.177147, 30.230091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386852, 37.140709, 30.231947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001339, -0.065463, -0.997854,
		0.091204, 0.993688, -0.065312,
		0.995831, -0.091096, 0.004640,
		40.685600, 37.113380, 30.233339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147469, 37.519810, 29.642315>,  <39.988522, 37.177147, 30.230091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147469, 37.519810, 29.642315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.477657, 37.315758, 29.738945>,  <40.675770, 37.193325, 29.796923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.477657, 37.315758, 29.738945>,  <40.147469, 37.519810, 29.642315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477657, 37.315758, 29.738945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248515, -0.055803, -0.967019,
		0.506790, 0.858283, 0.080712,
		0.825472, -0.510133, 0.241577,
		40.725300, 37.162716, 29.811419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092392, 38.223854, 29.489771>,  <40.147469, 37.519810, 29.642315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092392, 38.223854, 29.489771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.787476, 38.397156, 29.297440>,  <39.604527, 38.501137, 29.182041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.787476, 38.397156, 29.297440>,  <40.092392, 38.223854, 29.489771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787476, 38.397156, 29.297440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326444, 0.384113, 0.863650,
		0.558875, 0.815319, -0.151373,
		-0.762295, 0.433258, -0.480827,
		39.558788, 38.527134, 29.153191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998108, 38.925102, 29.578024>,  <40.092392, 38.223854, 29.489771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998108, 38.925102, 29.578024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632496, 38.787731, 29.491671>,  <39.413128, 38.705307, 29.439859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632496, 38.787731, 29.491671>,  <39.998108, 38.925102, 29.578024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632496, 38.787731, 29.491671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290485, 0.182680, 0.939280,
		-0.283137, 0.921241, -0.266736,
		-0.914031, -0.343428, -0.215883,
		39.358288, 38.684704, 29.426907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474773, 39.463326, 29.755590>,  <39.998108, 38.925102, 29.578024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474773, 39.463326, 29.755590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.263115, 39.124081, 29.744974>,  <39.136120, 38.920532, 29.738604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.263115, 39.124081, 29.744974>,  <39.474773, 39.463326, 29.755590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263115, 39.124081, 29.744974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446584, 0.251760, 0.858592,
		-0.721501, 0.466176, -0.511973,
		-0.529149, -0.848114, -0.026542,
		39.104370, 38.869648, 29.737011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751732, 39.673717, 29.944153>,  <39.474773, 39.463326, 29.755590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751732, 39.673717, 29.944153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749607, 39.275406, 29.980825>,  <38.748333, 39.036419, 30.002829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749607, 39.275406, 29.980825>,  <38.751732, 39.673717, 29.944153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749607, 39.275406, 29.980825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418765, 0.085472, 0.904063,
		-0.908079, -0.033587, -0.417449,
		-0.005316, -0.995774, 0.091680,
		38.748013, 38.976673, 30.008329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072277, 39.448627, 30.205496>,  <38.751732, 39.673717, 29.944153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072277, 39.448627, 30.205496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.304043, 39.140114, 30.310879>,  <38.443100, 38.955006, 30.374107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.304043, 39.140114, 30.310879>,  <38.072277, 39.448627, 30.205496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304043, 39.140114, 30.310879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450134, -0.033349, 0.892338,
		-0.679458, -0.635620, -0.366502,
		0.579411, -0.771282, 0.263455,
		38.477867, 38.908730, 30.389915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668037, 39.068108, 30.647018>,  <38.072277, 39.448627, 30.205496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668037, 39.068108, 30.647018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031460, 38.914032, 30.711708>,  <38.249512, 38.821587, 30.750523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031460, 38.914032, 30.711708>,  <37.668037, 39.068108, 30.647018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031460, 38.914032, 30.711708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232201, -0.143798, 0.961980,
		-0.347293, -0.911563, -0.220091,
		0.908554, -0.385194, 0.161726,
		38.304028, 38.798473, 30.760225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514458, 38.445633, 30.976269>,  <37.668037, 39.068108, 30.647018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514458, 38.445633, 30.976269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.894505, 38.543335, 31.053848>,  <38.122532, 38.601955, 31.100395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.894505, 38.543335, 31.053848>,  <37.514458, 38.445633, 30.976269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894505, 38.543335, 31.053848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132034, -0.248375, 0.959623,
		0.282566, -0.937362, -0.203735,
		0.950118, 0.244257, 0.193947,
		38.179539, 38.616611, 31.112032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826210, 37.873970, 31.355597>,  <37.514458, 38.445633, 30.976269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826210, 37.873970, 31.355597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.023556, 38.211525, 31.439928>,  <38.141964, 38.414059, 31.490528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.023556, 38.211525, 31.439928>,  <37.826210, 37.873970, 31.355597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023556, 38.211525, 31.439928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123609, -0.171903, 0.977328,
		0.860997, -0.508236, 0.019501,
		0.493361, 0.843887, 0.210831,
		38.171566, 38.464691, 31.503178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237854, 37.743713, 31.934692>,  <37.826210, 37.873970, 31.355597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237854, 37.743713, 31.934692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.218128, 38.142738, 31.954414>,  <38.206291, 38.382153, 31.966248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.218128, 38.142738, 31.954414>,  <38.237854, 37.743713, 31.934692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218128, 38.142738, 31.954414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174739, -0.057220, 0.982951,
		0.983379, 0.039862, 0.177135,
		-0.049318, 0.997565, 0.049304,
		38.203331, 38.442009, 31.969206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690918, 37.903099, 32.410202>,  <38.237854, 37.743713, 31.934692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690918, 37.903099, 32.410202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.454834, 38.225742, 32.397377>,  <38.313183, 38.419327, 32.389683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.454834, 38.225742, 32.397377>,  <38.690918, 37.903099, 32.410202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454834, 38.225742, 32.397377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099919, -0.033582, 0.994429,
		0.801039, 0.590130, 0.100416,
		-0.590215, 0.806609, -0.032065,
		38.277771, 38.467724, 32.387756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854946, 38.381721, 32.993073>,  <38.690918, 37.903099, 32.410202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854946, 38.381721, 32.993073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.487316, 38.511150, 32.903095>,  <38.266739, 38.588806, 32.849110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.487316, 38.511150, 32.903095>,  <38.854946, 38.381721, 32.993073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487316, 38.511150, 32.903095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268503, -0.096364, 0.958447,
		0.288448, 0.941285, 0.175445,
		-0.919078, 0.323570, -0.224942,
		38.211594, 38.608223, 32.835613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647865, 38.970390, 33.474060>,  <38.854946, 38.381721, 32.993073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647865, 38.970390, 33.474060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313148, 38.813850, 33.320892>,  <38.112320, 38.719925, 33.228992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313148, 38.813850, 33.320892>,  <38.647865, 38.970390, 33.474060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313148, 38.813850, 33.320892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447698, 0.086459, 0.889995,
		-0.315195, 0.916171, -0.247556,
		-0.836791, -0.391352, -0.382917,
		38.062111, 38.696445, 33.206017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.939583, 38.603451, 25.786621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576130, 38.449093, 25.722784>,  <40.358059, 38.356480, 25.684481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576130, 38.449093, 25.722784>,  <40.939583, 38.603451, 25.786621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576130, 38.449093, 25.722784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321174, 0.401534, 0.857682,
		-0.266889, 0.830577, -0.488787,
		-0.908635, -0.385891, -0.159594,
		40.303539, 38.333324, 25.674906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611042, 39.166275, 25.820086>,  <40.939583, 38.603451, 25.786621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611042, 39.166275, 25.820086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391354, 38.840061, 25.893030>,  <40.259541, 38.644333, 25.936798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391354, 38.840061, 25.893030>,  <40.611042, 39.166275, 25.820086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391354, 38.840061, 25.893030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172538, 0.324183, 0.930127,
		-0.817670, 0.479382, -0.318759,
		-0.549223, -0.815536, 0.182363,
		40.226585, 38.595402, 25.947739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986301, 39.414833, 26.222078>,  <40.611042, 39.166275, 25.820086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986301, 39.414833, 26.222078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002228, 39.018421, 26.273113>,  <40.011784, 38.780575, 26.303734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002228, 39.018421, 26.273113>,  <39.986301, 39.414833, 26.222078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002228, 39.018421, 26.273113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239346, 0.114512, 0.964158,
		-0.970117, -0.068930, -0.232639,
		0.039819, -0.991027, 0.127588,
		40.014172, 38.721111, 26.311390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422264, 39.240486, 26.595047>,  <39.986301, 39.414833, 26.222078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422264, 39.240486, 26.595047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650055, 38.919987, 26.668468>,  <39.786732, 38.727688, 26.712521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650055, 38.919987, 26.668468>,  <39.422264, 39.240486, 26.595047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650055, 38.919987, 26.668468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376742, -0.055949, 0.924627,
		-0.730588, -0.595708, -0.333726,
		0.569480, -0.801250, 0.183552,
		39.820900, 38.679611, 26.723534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947552, 38.700500, 26.899881>,  <39.422264, 39.240486, 26.595047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947552, 38.700500, 26.899881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310184, 38.564423, 26.999786>,  <39.527763, 38.482777, 27.059731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310184, 38.564423, 26.999786>,  <38.947552, 38.700500, 26.899881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310184, 38.564423, 26.999786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329888, -0.202104, 0.922132,
		-0.263227, -0.918380, -0.295449,
		0.906579, -0.340196, 0.249763,
		39.582157, 38.462364, 27.074717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855816, 38.062183, 27.218731>,  <38.947552, 38.700500, 26.899881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855816, 38.062183, 27.218731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210934, 38.183903, 27.356842>,  <39.424004, 38.256935, 27.439709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210934, 38.183903, 27.356842>,  <38.855816, 38.062183, 27.218731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210934, 38.183903, 27.356842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312141, -0.153190, 0.937604,
		0.338204, -0.940178, -0.041018,
		0.887798, 0.304298, 0.345278,
		39.477272, 38.275192, 27.460424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002735, 37.682140, 27.859028>,  <38.855816, 38.062183, 27.218731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002735, 37.682140, 27.859028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249638, 37.996086, 27.880917>,  <39.397778, 38.184452, 27.894051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249638, 37.996086, 27.880917>,  <39.002735, 37.682140, 27.859028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249638, 37.996086, 27.880917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088747, 0.000345, 0.996054,
		0.781744, -0.619673, 0.069867,
		0.617252, 0.784860, 0.054724,
		39.434814, 38.231544, 27.897333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486603, 37.528229, 28.420420>,  <39.002735, 37.682140, 27.859028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486603, 37.528229, 28.420420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498215, 37.924278, 28.365551>,  <39.505180, 38.161907, 28.332630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498215, 37.924278, 28.365551>,  <39.486603, 37.528229, 28.420420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498215, 37.924278, 28.365551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082854, 0.139140, 0.986801,
		0.996139, -0.017277, 0.086074,
		0.029025, 0.990122, -0.137171,
		39.506924, 38.221313, 28.324400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069149, 37.811726, 28.894777>,  <39.486603, 37.528229, 28.420420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069149, 37.811726, 28.894777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812187, 38.107384, 28.813810>,  <39.658009, 38.284779, 28.765230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812187, 38.107384, 28.813810>,  <40.069149, 37.811726, 28.894777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812187, 38.107384, 28.813810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170766, 0.119425, 0.978047,
		0.747097, 0.662870, 0.049502,
		-0.642406, 0.739149, -0.202418,
		39.619465, 38.329128, 28.753084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832855, 37.894138, 29.175245>,  <40.069149, 37.811726, 28.894777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832855, 37.894138, 29.175245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942131, 37.525826, 29.286619>,  <41.007694, 37.304836, 29.353443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942131, 37.525826, 29.286619>,  <40.832855, 37.894138, 29.175245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942131, 37.525826, 29.286619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390137, -0.158522, -0.907008,
		0.879297, 0.356410, 0.315926,
		0.273185, -0.920784, 0.278436,
		41.024086, 37.249592, 29.370150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607281, 37.772877, 28.904343>,  <40.832855, 37.894138, 29.175245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607281, 37.772877, 28.904343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408493, 37.429604, 28.955799>,  <41.289219, 37.223640, 28.986673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408493, 37.429604, 28.955799>,  <41.607281, 37.772877, 28.904343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408493, 37.429604, 28.955799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286219, -0.302056, -0.909308,
		0.819206, -0.415080, 0.395740,
		-0.496971, -0.858179, 0.128642,
		41.259403, 37.172150, 28.994392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099369, 37.295071, 28.728689>,  <41.607281, 37.772877, 28.904343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099369, 37.295071, 28.728689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746552, 37.107857, 28.706993>,  <41.534863, 36.995529, 28.693975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746552, 37.107857, 28.706993>,  <42.099369, 37.295071, 28.728689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746552, 37.107857, 28.706993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317764, -0.505912, -0.801922,
		0.347886, -0.724567, 0.594961,
		-0.882044, -0.468035, -0.054242,
		41.481937, 36.967445, 28.690722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209400, 36.483032, 28.723186>,  <42.099369, 37.295071, 28.728689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209400, 36.483032, 28.723186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838905, 36.538956, 28.583164>,  <41.616608, 36.572510, 28.499151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838905, 36.538956, 28.583164>,  <42.209400, 36.483032, 28.723186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838905, 36.538956, 28.583164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112849, -0.783233, -0.611401,
		-0.359654, -0.605805, 0.709682,
		-0.926236, 0.139807, -0.350057,
		41.561035, 36.580898, 28.478148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048512, 35.788692, 28.502810>,  <42.209400, 36.483032, 28.723186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048512, 35.788692, 28.502810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778839, 36.009182, 28.306187>,  <41.617035, 36.141476, 28.188213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778839, 36.009182, 28.306187>,  <42.048512, 35.788692, 28.502810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778839, 36.009182, 28.306187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272082, -0.433383, -0.859157,
		-0.686623, -0.712971, 0.142200,
		-0.674181, 0.551227, -0.491557,
		41.576584, 36.174549, 28.158720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865265, 35.360245, 27.941959>,  <42.048512, 35.788692, 28.502810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865265, 35.360245, 27.941959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718468, 35.712208, 27.821245>,  <41.630390, 35.923386, 27.748816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718468, 35.712208, 27.821245>,  <41.865265, 35.360245, 27.941959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718468, 35.712208, 27.821245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231010, -0.228051, -0.945847,
		-0.901083, -0.416836, -0.119574,
		-0.366994, 0.879909, -0.301786,
		41.608368, 35.976181, 27.730709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347038, 35.171185, 27.470068>,  <41.865265, 35.360245, 27.941959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347038, 35.171185, 27.470068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513504, 35.529007, 27.404861>,  <41.613384, 35.743702, 27.365738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513504, 35.529007, 27.404861>,  <41.347038, 35.171185, 27.470068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513504, 35.529007, 27.404861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004507, -0.177249, -0.984155,
		-0.909280, 0.410301, -0.069733,
		0.416160, 0.894559, -0.163018,
		41.638351, 35.797375, 27.355955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878815, 35.535000, 26.899921>,  <41.347038, 35.171185, 27.470068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878815, 35.535000, 26.899921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239983, 35.706284, 26.914762>,  <41.456684, 35.809055, 26.923666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239983, 35.706284, 26.914762>,  <40.878815, 35.535000, 26.899921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239983, 35.706284, 26.914762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096488, -0.117822, -0.988336,
		-0.418843, 0.895966, -0.147700,
		0.902918, 0.428209, 0.037101,
		41.510857, 35.834747, 26.925894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897659, 35.895290, 26.276848>,  <40.878815, 35.535000, 26.899921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897659, 35.895290, 26.276848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281590, 35.887566, 26.388824>,  <41.511948, 35.882931, 26.456011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281590, 35.887566, 26.388824>,  <40.897659, 35.895290, 26.276848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281590, 35.887566, 26.388824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274603, -0.140618, -0.951220,
		0.057733, 0.989875, -0.129666,
		0.959823, -0.019310, 0.279941,
		41.569538, 35.881771, 26.472807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212498, 36.310741, 25.896885>,  <40.897659, 35.895290, 26.276848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212498, 36.310741, 25.896885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494598, 36.045818, 25.998053>,  <41.663857, 35.886864, 26.058754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494598, 36.045818, 25.998053>,  <41.212498, 36.310741, 25.896885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494598, 36.045818, 25.998053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230446, -0.123220, -0.965252,
		0.670463, 0.739026, 0.065727,
		0.705247, -0.662312, 0.252921,
		41.706173, 35.847126, 26.073929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540302, 36.155098, 25.285770>,  <41.212498, 36.310741, 25.896885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540302, 36.155098, 25.285770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768669, 35.937035, 25.531324>,  <41.905689, 35.806198, 25.678658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768669, 35.937035, 25.531324>,  <41.540302, 36.155098, 25.285770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768669, 35.937035, 25.531324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508089, -0.352731, -0.785765,
		0.644900, 0.760518, 0.075606,
		0.570920, -0.545155, 0.613887,
		41.939945, 35.773487, 25.715490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266380, 36.315201, 25.181406>,  <41.540302, 36.155098, 25.285770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266380, 36.315201, 25.181406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240395, 35.944427, 25.329233>,  <42.224804, 35.721966, 25.417929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240395, 35.944427, 25.329233>,  <42.266380, 36.315201, 25.181406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240395, 35.944427, 25.329233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668564, -0.315371, -0.673471,
		0.740812, 0.203328, 0.640200,
		-0.064965, -0.926930, 0.369568,
		42.220905, 35.666348, 25.440104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834202, 36.094936, 24.955067>,  <42.266380, 36.315201, 25.181406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834202, 36.094936, 24.955067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642723, 35.757790, 25.053392>,  <42.527836, 35.555500, 25.112389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642723, 35.757790, 25.053392>,  <42.834202, 36.094936, 24.955067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642723, 35.757790, 25.053392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411580, -0.462736, -0.785161,
		0.775533, -0.274681, 0.568417,
		-0.478696, -0.842867, 0.245814,
		42.499115, 35.504929, 25.127136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359768, 35.551682, 24.979074>,  <42.834202, 36.094936, 24.955067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359768, 35.551682, 24.979074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019707, 35.348137, 24.924955>,  <42.815670, 35.226009, 24.892485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019707, 35.348137, 24.924955>,  <43.359768, 35.551682, 24.979074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019707, 35.348137, 24.924955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407950, -0.474100, -0.780260,
		0.332901, -0.718532, 0.610646,
		-0.850149, -0.508862, -0.135297,
		42.764664, 35.195477, 24.884367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.141811, 33.321941, 24.720709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540676, 33.347134, 24.737228>,  <35.779995, 33.362251, 24.747139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540676, 33.347134, 24.737228>,  <35.141811, 33.321941, 24.720709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540676, 33.347134, 24.737228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021181, -0.291674, 0.956283,
		0.072278, -0.954442, -0.289512,
		0.997160, 0.062986, 0.041297,
		35.839825, 33.366028, 24.749617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391750, 32.672543, 24.974707>,  <35.141811, 33.321941, 24.720709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391750, 32.672543, 24.974707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653587, 32.970425, 25.026739>,  <35.810688, 33.149155, 25.057959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653587, 32.970425, 25.026739>,  <35.391750, 32.672543, 24.974707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653587, 32.970425, 25.026739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113522, -0.073286, 0.990829,
		0.747413, -0.663352, 0.036569,
		0.654588, 0.744710, 0.130080,
		35.849964, 33.193836, 25.065763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066559, 32.482193, 25.433434>,  <35.391750, 32.672543, 24.974707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066559, 32.482193, 25.433434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.986794, 32.873688, 25.452625>,  <35.938934, 33.108585, 25.464140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.986794, 32.873688, 25.452625>,  <36.066559, 32.482193, 25.433434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986794, 32.873688, 25.452625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073451, -0.033897, 0.996723,
		0.977159, 0.202286, -0.065130,
		-0.199415, 0.978740, 0.047980,
		35.926968, 33.167309, 25.467020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471142, 32.588200, 25.915899>,  <36.066559, 32.482193, 25.433434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471142, 32.588200, 25.915899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232239, 32.908924, 25.908058>,  <36.088898, 33.101357, 25.903355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232239, 32.908924, 25.908058>,  <36.471142, 32.588200, 25.915899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232239, 32.908924, 25.908058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104638, 0.102127, 0.989253,
		0.795194, 0.588788, -0.144896,
		-0.597258, 0.801809, -0.019601,
		36.053062, 33.149467, 25.902178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741329, 33.064026, 26.379442>,  <36.471142, 32.588200, 25.915899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741329, 33.064026, 26.379442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.363037, 33.188850, 26.343182>,  <36.136063, 33.263744, 26.321424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.363037, 33.188850, 26.343182>,  <36.741329, 33.064026, 26.379442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363037, 33.188850, 26.343182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004731, 0.292155, 0.956359,
		0.324931, 0.904025, -0.277775,
		-0.945726, 0.312065, -0.090653,
		36.079319, 33.282471, 26.315985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627346, 33.705685, 26.828915>,  <36.741329, 33.064026, 26.379442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627346, 33.705685, 26.828915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.264381, 33.553288, 26.757975>,  <36.046604, 33.461849, 26.715410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.264381, 33.553288, 26.757975>,  <36.627346, 33.705685, 26.828915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264381, 33.553288, 26.757975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244180, 0.134524, 0.960354,
		-0.342034, 0.914738, -0.215100,
		-0.907408, -0.380996, -0.177349,
		35.992161, 33.438988, 26.704769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260685, 34.229355, 26.974289>,  <36.627346, 33.705685, 26.828915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260685, 34.229355, 26.974289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011887, 33.917500, 27.003384>,  <35.862606, 33.730389, 27.020840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011887, 33.917500, 27.003384>,  <36.260685, 34.229355, 26.974289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011887, 33.917500, 27.003384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129318, 0.193896, 0.972461,
		-0.772267, 0.595462, -0.221424,
		-0.621997, -0.779634, 0.072736,
		35.825287, 33.683609, 27.025204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751442, 34.557896, 27.346043>,  <36.260685, 34.229355, 26.974289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751442, 34.557896, 27.346043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.721294, 34.160183, 27.376291>,  <35.703205, 33.921555, 27.394442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.721294, 34.160183, 27.376291>,  <35.751442, 34.557896, 27.346043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721294, 34.160183, 27.376291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029485, 0.078028, 0.996515,
		-0.996719, 0.072881, -0.035197,
		-0.075373, -0.994284, 0.075623,
		35.698681, 33.861897, 27.398979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191380, 34.458271, 27.805407>,  <35.751442, 34.557896, 27.346043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191380, 34.458271, 27.805407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434235, 34.142475, 27.841400>,  <35.579948, 33.952999, 27.862997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434235, 34.142475, 27.841400>,  <35.191380, 34.458271, 27.805407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434235, 34.142475, 27.841400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095456, 0.039958, 0.994631,
		-0.788843, -0.612466, -0.051101,
		0.607136, -0.789486, 0.089984,
		35.616375, 33.905628, 27.868395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858376, 34.179157, 28.367752>,  <35.191380, 34.458271, 27.805407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858376, 34.179157, 28.367752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178104, 33.943836, 28.318781>,  <35.369942, 33.802643, 28.289398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178104, 33.943836, 28.318781>,  <34.858376, 34.179157, 28.367752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178104, 33.943836, 28.318781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026538, -0.168982, 0.985262,
		-0.600318, -0.790790, -0.119459,
		0.799321, -0.588300, -0.122429,
		35.417900, 33.767345, 28.282053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709953, 33.466125, 28.622705>,  <34.858376, 34.179157, 28.367752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709953, 33.466125, 28.622705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097187, 33.565086, 28.638737>,  <35.329529, 33.624462, 28.648355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097187, 33.565086, 28.638737>,  <34.709953, 33.466125, 28.622705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097187, 33.565086, 28.638737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015509, -0.100479, 0.994818,
		0.250145, -0.963689, -0.093435,
		0.968084, 0.247400, 0.040080,
		35.387611, 33.639305, 28.650761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996590, 32.956234, 29.091209>,  <34.709953, 33.466125, 28.622705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996590, 32.956234, 29.091209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240456, 33.273132, 29.080917>,  <35.386776, 33.463272, 29.074741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240456, 33.273132, 29.080917>,  <34.996590, 32.956234, 29.091209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240456, 33.273132, 29.080917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031096, 0.008533, 0.999480,
		0.792051, -0.610145, -0.019433,
		0.609662, 0.792244, -0.025732,
		35.423355, 33.510807, 29.073198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573856, 32.764244, 29.511814>,  <34.996590, 32.956234, 29.091209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573856, 32.764244, 29.511814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.600941, 33.163200, 29.501741>,  <35.617191, 33.402573, 29.495699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.600941, 33.163200, 29.501741>,  <35.573856, 32.764244, 29.511814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600941, 33.163200, 29.501741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052991, 0.021608, 0.998361,
		0.996297, -0.068933, -0.051390,
		0.067709, 0.997387, -0.025180,
		35.621254, 33.462418, 29.494186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083950, 32.960411, 29.986698>,  <35.573856, 32.764244, 29.511814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083950, 32.960411, 29.986698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903164, 33.313217, 29.933365>,  <35.794693, 33.524902, 29.901365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903164, 33.313217, 29.933365>,  <36.083950, 32.960411, 29.986698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903164, 33.313217, 29.933365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108845, 0.093827, 0.989621,
		0.885371, 0.461785, 0.053596,
		-0.451963, 0.882015, -0.133335,
		35.767574, 33.577820, 29.893364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844025, 33.024734, 30.059395>,  <36.083950, 32.960411, 29.986698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844025, 33.024734, 30.059395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.128136, 32.794106, 30.220921>,  <37.298603, 32.655727, 30.317837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.128136, 32.794106, 30.220921>,  <36.844025, 33.024734, 30.059395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128136, 32.794106, 30.220921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375805, -0.174471, -0.910126,
		0.595212, 0.798197, 0.092758,
		0.710277, -0.576577, 0.403814,
		37.341217, 32.621132, 30.342064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415092, 33.282768, 29.693649>,  <36.844025, 33.024734, 30.059395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415092, 33.282768, 29.693649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.542408, 32.925022, 29.819386>,  <37.618797, 32.710377, 29.894827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.542408, 32.925022, 29.819386>,  <37.415092, 33.282768, 29.693649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542408, 32.925022, 29.819386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307616, -0.216207, -0.926621,
		0.896698, 0.391626, 0.206305,
		0.318284, -0.894362, 0.314343,
		37.637894, 32.656712, 29.913689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136631, 33.086006, 29.366034>,  <37.415092, 33.282768, 29.693649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136631, 33.086006, 29.366034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.929867, 32.756165, 29.457968>,  <37.805809, 32.558258, 29.513128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.929867, 32.756165, 29.457968>,  <38.136631, 33.086006, 29.366034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929867, 32.756165, 29.457968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113999, -0.332409, -0.936220,
		0.848413, -0.457744, 0.265831,
		-0.516914, -0.824606, 0.229837,
		37.774792, 32.508781, 29.526918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486286, 32.561260, 29.012945>,  <38.136631, 33.086006, 29.366034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486286, 32.561260, 29.012945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.114010, 32.428284, 29.074007>,  <37.890644, 32.348499, 29.110645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.114010, 32.428284, 29.074007>,  <38.486286, 32.561260, 29.012945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114010, 32.428284, 29.074007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003381, -0.425102, -0.905139,
		0.365801, -0.841885, 0.396761,
		-0.930687, -0.332442, 0.152656,
		37.834805, 32.328552, 29.119804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521416, 31.878057, 28.827026>,  <38.486286, 32.561260, 29.012945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521416, 31.878057, 28.827026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129620, 31.958656, 28.827822>,  <37.894543, 32.007015, 28.828299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129620, 31.958656, 28.827822>,  <38.521416, 31.878057, 28.827026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129620, 31.958656, 28.827822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112430, -0.538283, -0.835231,
		-0.167227, -0.818321, 0.549895,
		-0.979487, 0.201498, 0.001988,
		37.835773, 32.019104, 28.828419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360596, 31.126118, 28.748280>,  <38.521416, 31.878057, 28.827026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360596, 31.126118, 28.748280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067127, 31.380779, 28.653288>,  <37.891045, 31.533577, 28.596292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067127, 31.380779, 28.653288>,  <38.360596, 31.126118, 28.748280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067127, 31.380779, 28.653288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002574, -0.346883, -0.937905,
		-0.679500, -0.688725, 0.252860,
		-0.733671, 0.636655, -0.237480,
		37.847027, 31.571775, 28.582045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809647, 30.767389, 28.464874>,  <38.360596, 31.126118, 28.748280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809647, 30.767389, 28.464874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.757614, 31.132692, 28.310450>,  <37.726395, 31.351873, 28.217794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.757614, 31.132692, 28.310450>,  <37.809647, 30.767389, 28.464874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757614, 31.132692, 28.310450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059231, -0.395830, -0.916412,
		-0.989733, -0.096342, 0.105583,
		-0.130082, 0.913256, -0.386059,
		37.718590, 31.406670, 28.194632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375950, 30.602060, 27.868382>,  <37.809647, 30.767389, 28.464874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375950, 30.602060, 27.868382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.525677, 30.968231, 27.809212>,  <37.615513, 31.187933, 27.773710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.525677, 30.968231, 27.809212>,  <37.375950, 30.602060, 27.868382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525677, 30.968231, 27.809212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010229, -0.163586, -0.986476,
		-0.927243, 0.367745, -0.070598,
		0.374320, 0.915425, -0.147923,
		37.637974, 31.242859, 27.764835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194668, 30.713787, 27.123264>,  <37.375950, 30.602060, 27.868382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194668, 30.713787, 27.123264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436966, 31.019041, 27.213333>,  <37.582344, 31.202194, 27.267374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.436966, 31.019041, 27.213333>,  <37.194668, 30.713787, 27.123264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436966, 31.019041, 27.213333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216330, 0.114378, -0.969597,
		-0.765689, 0.636036, -0.095806,
		0.605741, 0.763135, 0.225172,
		37.618687, 31.247982, 27.280884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002098, 31.385082, 26.638195>,  <37.194668, 30.713787, 27.123264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002098, 31.385082, 26.638195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379635, 31.335043, 26.760513>,  <37.606155, 31.305019, 26.833904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379635, 31.335043, 26.760513>,  <37.002098, 31.385082, 26.638195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379635, 31.335043, 26.760513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309919, 0.014468, -0.950653,
		0.114502, 0.992039, 0.052427,
		0.943843, -0.125100, 0.305795,
		37.662788, 31.297514, 26.852251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346123, 31.939133, 26.251736>,  <37.002098, 31.385082, 26.638195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346123, 31.939133, 26.251736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645245, 31.691542, 26.347782>,  <37.824718, 31.542986, 26.405411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645245, 31.691542, 26.347782>,  <37.346123, 31.939133, 26.251736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645245, 31.691542, 26.347782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402728, 0.135377, -0.905253,
		0.527826, 0.773653, 0.350515,
		0.747803, -0.618979, 0.240116,
		37.869587, 31.505848, 26.419817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916367, 32.314632, 26.070415>,  <37.346123, 31.939133, 26.251736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916367, 32.314632, 26.070415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.054737, 31.939457, 26.080229>,  <38.137760, 31.714352, 26.086117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.054737, 31.939457, 26.080229>,  <37.916367, 32.314632, 26.070415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054737, 31.939457, 26.080229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341273, 0.101425, -0.934476,
		0.873995, 0.331634, 0.355179,
		0.345929, -0.937940, 0.024533,
		38.158516, 31.658075, 26.087589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647442, 32.272106, 25.748840>,  <37.916367, 32.314632, 26.070415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647442, 32.272106, 25.748840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462402, 31.918083, 25.728163>,  <38.351379, 31.705669, 25.715757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462402, 31.918083, 25.728163>,  <38.647442, 32.272106, 25.748840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462402, 31.918083, 25.728163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132954, -0.011608, -0.991054,
		0.876542, -0.465333, 0.123043,
		-0.462599, -0.885060, -0.051693,
		38.323624, 31.652565, 25.712654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061279, 31.785860, 25.339205>,  <38.647442, 32.272106, 25.748840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061279, 31.785860, 25.339205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694595, 31.628632, 25.310532>,  <38.474586, 31.534294, 25.293327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694595, 31.628632, 25.310532>,  <39.061279, 31.785860, 25.339205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694595, 31.628632, 25.310532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090280, -0.029006, -0.995494,
		0.389221, -0.919050, 0.062076,
		-0.916709, -0.393072, -0.071682,
		38.419582, 31.510710, 25.289026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727245, 31.306875, 25.508053>,  <39.061279, 31.785860, 25.339205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727245, 31.306875, 25.508053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.120796, 31.378075, 25.501080>,  <40.356926, 31.420795, 25.496895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.120796, 31.378075, 25.501080>,  <39.727245, 31.306875, 25.508053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120796, 31.378075, 25.501080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053259, 0.384643, 0.921528,
		0.170739, -0.905740, 0.387921,
		0.983876, 0.178001, -0.017435,
		40.415958, 31.431475, 25.495850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953289, 30.969494, 26.064028>,  <39.727245, 31.306875, 25.508053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953289, 30.969494, 26.064028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225311, 31.244066, 25.961010>,  <40.388527, 31.408810, 25.899200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225311, 31.244066, 25.961010>,  <39.953289, 30.969494, 26.064028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225311, 31.244066, 25.961010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198087, 0.510247, 0.836905,
		0.705889, -0.518129, 0.482972,
		0.680060, 0.686433, -0.257544,
		40.429329, 31.449995, 25.883747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418076, 31.008842, 26.578930>,  <39.953289, 30.969494, 26.064028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418076, 31.008842, 26.578930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466015, 31.371799, 26.417797>,  <40.494778, 31.589573, 26.321117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466015, 31.371799, 26.417797>,  <40.418076, 31.008842, 26.578930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466015, 31.371799, 26.417797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088709, 0.394347, 0.914670,
		0.988821, -0.145355, -0.033232,
		0.119847, 0.907393, -0.402833,
		40.501968, 31.644018, 26.296947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111279, 31.278282, 26.833448>,  <40.418076, 31.008842, 26.578930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111279, 31.278282, 26.833448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892941, 31.594187, 26.721502>,  <40.761936, 31.783730, 26.654335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892941, 31.594187, 26.721502>,  <41.111279, 31.278282, 26.833448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892941, 31.594187, 26.721502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155167, 0.423515, 0.892501,
		0.823391, 0.443744, -0.353720,
		-0.545848, 0.789763, -0.279864,
		40.729187, 31.831116, 26.637543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471508, 31.761190, 27.181465>,  <41.111279, 31.278282, 26.833448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471508, 31.761190, 27.181465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.105766, 31.899426, 27.097067>,  <40.886322, 31.982367, 27.046429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.105766, 31.899426, 27.097067>,  <41.471508, 31.761190, 27.181465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105766, 31.899426, 27.097067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050924, 0.418808, 0.906646,
		0.401692, 0.839743, -0.365342,
		-0.914358, 0.345588, -0.210995,
		40.831459, 32.003101, 27.033768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451878, 32.438293, 27.503370>,  <41.471508, 31.761190, 27.181465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451878, 32.438293, 27.503370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.061916, 32.371166, 27.444845>,  <40.827942, 32.330891, 27.409731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.061916, 32.371166, 27.444845>,  <41.451878, 32.438293, 27.503370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061916, 32.371166, 27.444845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206070, 0.431341, 0.878340,
		-0.084288, 0.886444, -0.455096,
		-0.974900, -0.167815, -0.146312,
		40.769447, 32.320820, 27.400951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086571, 33.006016, 27.798107>,  <41.451878, 32.438293, 27.503370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086571, 33.006016, 27.798107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.784660, 32.744652, 27.774908>,  <40.603516, 32.587833, 27.760988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.784660, 32.744652, 27.774908>,  <41.086571, 33.006016, 27.798107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784660, 32.744652, 27.774908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425063, 0.419822, 0.801917,
		-0.499633, 0.629922, -0.594614,
		-0.754777, -0.653412, -0.058000,
		40.558228, 32.548630, 27.757507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482357, 33.439587, 27.837351>,  <41.086571, 33.006016, 27.798107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482357, 33.439587, 27.837351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.407291, 33.071838, 27.975647>,  <40.362251, 32.851189, 28.058624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.407291, 33.071838, 27.975647>,  <40.482357, 33.439587, 27.837351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407291, 33.071838, 27.975647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342436, 0.391152, 0.854247,
		-0.920607, 0.041921, -0.388233,
		-0.187669, -0.919371, 0.345742,
		40.350990, 32.796028, 28.079369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810928, 33.499371, 28.170298>,  <40.482357, 33.439587, 27.837351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810928, 33.499371, 28.170298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962193, 33.167812, 28.335188>,  <40.052952, 32.968880, 28.434122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962193, 33.167812, 28.335188>,  <39.810928, 33.499371, 28.170298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962193, 33.167812, 28.335188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270962, 0.326686, 0.905459,
		-0.885196, -0.454109, -0.101057,
		0.378163, -0.828892, 0.412227,
		40.075642, 32.919144, 28.458857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348526, 33.316597, 28.755503>,  <39.810928, 33.499371, 28.170298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348526, 33.316597, 28.755503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.698692, 33.132740, 28.815346>,  <39.908791, 33.022427, 28.851252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.698692, 33.132740, 28.815346>,  <39.348526, 33.316597, 28.755503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698692, 33.132740, 28.815346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054353, 0.213945, 0.975332,
		-0.480313, -0.861949, 0.162307,
		0.875412, -0.459643, 0.149610,
		39.961315, 32.994846, 28.860229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197388, 32.851799, 29.345545>,  <39.348526, 33.316597, 28.755503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197388, 32.851799, 29.345545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594631, 32.898647, 29.344191>,  <39.832977, 32.926758, 29.343378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594631, 32.898647, 29.344191>,  <39.197388, 32.851799, 29.345545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594631, 32.898647, 29.344191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009293, 0.107549, 0.994157,
		0.116817, -0.987275, 0.107896,
		0.993110, 0.117137, -0.003389,
		39.892563, 32.933784, 29.343174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413898, 32.421722, 29.882387>,  <39.197388, 32.851799, 29.345545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413898, 32.421722, 29.882387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.711433, 32.681263, 29.818266>,  <39.889954, 32.836987, 29.779793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.711433, 32.681263, 29.818266>,  <39.413898, 32.421722, 29.882387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711433, 32.681263, 29.818266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053602, 0.181156, 0.981992,
		0.666207, -0.739035, 0.099971,
		0.743838, 0.648852, -0.160302,
		39.934586, 32.875919, 29.770176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945774, 32.388760, 30.449396>,  <39.413898, 32.421722, 29.882387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945774, 32.388760, 30.449396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039375, 32.746372, 30.296585>,  <40.095535, 32.960941, 30.204899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039375, 32.746372, 30.296585>,  <39.945774, 32.388760, 30.449396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039375, 32.746372, 30.296585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179021, 0.346599, 0.920772,
		0.955612, -0.283853, -0.078946,
		0.234001, 0.894034, -0.382030,
		40.109577, 33.014584, 30.181976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502155, 32.654438, 30.862494>,  <39.945774, 32.388760, 30.449396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502155, 32.654438, 30.862494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.334400, 32.964237, 30.673063>,  <40.233749, 33.150116, 30.559406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.334400, 32.964237, 30.673063>,  <40.502155, 32.654438, 30.862494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334400, 32.964237, 30.673063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107905, 0.560498, 0.821096,
		0.901373, 0.293253, -0.318636,
		-0.419384, 0.774497, -0.473574,
		40.208584, 33.196587, 30.530991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.509739, 34.891716, 24.636461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.123158, 34.959801, 24.559521>,  <42.891209, 35.000652, 24.513357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.123158, 34.959801, 24.559521>,  <43.509739, 34.891716, 24.636461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123158, 34.959801, 24.559521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066656, -0.557020, -0.827819,
		-0.248049, -0.812869, 0.526988,
		-0.966451, 0.170213, -0.192351,
		42.833221, 35.010864, 24.501816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262348, 34.183598, 24.525568>,  <43.509739, 34.891716, 24.636461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262348, 34.183598, 24.525568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.034233, 34.463539, 24.353537>,  <42.897362, 34.631504, 24.250319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.034233, 34.463539, 24.353537>,  <43.262348, 34.183598, 24.525568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034233, 34.463539, 24.353537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040545, -0.498945, -0.865685,
		-0.820443, -0.511128, 0.256167,
		-0.570289, 0.699858, -0.430079,
		42.863148, 34.673496, 24.224512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908981, 33.802399, 24.109043>,  <43.262348, 34.183598, 24.525568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908981, 33.802399, 24.109043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.880215, 34.169312, 23.952368>,  <42.862953, 34.389458, 23.858362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.880215, 34.169312, 23.952368>,  <42.908981, 33.802399, 24.109043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880215, 34.169312, 23.952368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129499, -0.397970, -0.908213,
		-0.988968, -0.014593, 0.147408,
		-0.071918, 0.917282, -0.391690,
		42.858639, 34.444496, 23.834862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266327, 33.776356, 23.713146>,  <42.908981, 33.802399, 24.109043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266327, 33.776356, 23.713146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.487797, 34.077862, 23.571564>,  <42.620678, 34.258766, 23.486614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.487797, 34.077862, 23.571564>,  <42.266327, 33.776356, 23.713146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487797, 34.077862, 23.571564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288182, -0.225350, -0.930682,
		-0.781276, 0.617301, 0.092450,
		0.553677, 0.753762, -0.353955,
		42.653900, 34.303989, 23.465378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780632, 34.237774, 23.249550>,  <42.266327, 33.776356, 23.713146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780632, 34.237774, 23.249550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.166264, 34.278896, 23.151588>,  <42.397644, 34.303570, 23.092812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.166264, 34.278896, 23.151588>,  <41.780632, 34.237774, 23.249550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166264, 34.278896, 23.151588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209027, -0.275203, -0.938388,
		-0.163872, 0.955873, -0.243828,
		0.964082, 0.102809, -0.244901,
		42.455486, 34.309738, 23.078117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801102, 34.455753, 22.598419>,  <41.780632, 34.237774, 23.249550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801102, 34.455753, 22.598419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.181072, 34.333775, 22.625675>,  <42.409054, 34.260586, 22.642029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.181072, 34.333775, 22.625675>,  <41.801102, 34.455753, 22.598419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181072, 34.333775, 22.625675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002091, -0.224263, -0.974526,
		0.312462, 0.925587, -0.213672,
		0.949928, -0.304949, 0.068138,
		42.466049, 34.242290, 22.646116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131191, 34.755177, 22.009144>,  <41.801102, 34.455753, 22.598419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131191, 34.755177, 22.009144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.375332, 34.465275, 22.137018>,  <42.521816, 34.291332, 22.213743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.375332, 34.465275, 22.137018>,  <42.131191, 34.755177, 22.009144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375332, 34.465275, 22.137018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130614, -0.305974, -0.943037,
		0.781286, 0.617343, -0.092090,
		0.610355, -0.724753, 0.319687,
		42.558437, 34.247849, 22.232924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659325, 34.781273, 21.514591>,  <42.131191, 34.755177, 22.009144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659325, 34.781273, 21.514591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.699955, 34.426926, 21.695665>,  <42.724335, 34.214317, 21.804310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.699955, 34.426926, 21.695665>,  <42.659325, 34.781273, 21.514591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699955, 34.426926, 21.695665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115027, -0.441529, -0.889843,
		0.988156, 0.142457, 0.057049,
		0.101576, -0.885866, 0.452686,
		42.730427, 34.161167, 21.831470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229565, 34.561661, 21.270113>,  <42.659325, 34.781273, 21.514591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229565, 34.561661, 21.270113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.047077, 34.229652, 21.398449>,  <42.937584, 34.030449, 21.475451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.047077, 34.229652, 21.398449>,  <43.229565, 34.561661, 21.270113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047077, 34.229652, 21.398449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144111, -0.424701, -0.893790,
		0.878122, -0.361526, 0.313371,
		-0.456217, -0.830017, 0.320839,
		42.910213, 33.980648, 21.494701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694115, 33.989567, 21.068644>,  <43.229565, 34.561661, 21.270113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694115, 33.989567, 21.068644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.330826, 33.828697, 21.114908>,  <43.112850, 33.732174, 21.142666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.330826, 33.828697, 21.114908>,  <43.694115, 33.989567, 21.068644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330826, 33.828697, 21.114908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158626, -0.586614, -0.794179,
		0.387250, -0.702948, 0.596575,
		-0.908226, -0.402178, 0.115660,
		43.058357, 33.708042, 21.149607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803505, 33.277237, 20.838894>,  <43.694115, 33.989567, 21.068644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803505, 33.277237, 20.838894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.408428, 33.337898, 20.823616>,  <43.171383, 33.374294, 20.814449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.408428, 33.337898, 20.823616>,  <43.803505, 33.277237, 20.838894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408428, 33.337898, 20.823616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049118, -0.532695, -0.844881,
		-0.148474, -0.832609, 0.533589,
		-0.987696, 0.151652, -0.038195,
		43.112118, 33.383392, 20.812157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566547, 32.689243, 20.614567>,  <43.803505, 33.277237, 20.838894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566547, 32.689243, 20.614567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.279102, 32.952801, 20.525616>,  <43.106636, 33.110935, 20.472246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.279102, 32.952801, 20.525616>,  <43.566547, 32.689243, 20.614567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279102, 32.952801, 20.525616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099108, -0.413551, -0.905071,
		-0.688312, -0.628356, 0.362485,
		-0.718613, 0.658896, -0.222377,
		43.063519, 33.150471, 20.458902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059029, 32.344559, 20.277336>,  <43.566547, 32.689243, 20.614567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059029, 32.344559, 20.277336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.985428, 32.718079, 20.154594>,  <42.941265, 32.942192, 20.080950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.985428, 32.718079, 20.154594>,  <43.059029, 32.344559, 20.277336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985428, 32.718079, 20.154594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309131, -0.351320, -0.883749,
		-0.933048, -0.067757, 0.353312,
		-0.184005, 0.933800, -0.306853,
		42.930225, 32.998219, 20.062538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292545, 32.179470, 19.991373>,  <43.059029, 32.344559, 20.277336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292545, 32.179470, 19.991373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.934540, 32.013130, 19.926846>,  <41.719738, 31.913326, 19.888128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.934540, 32.013130, 19.926846>,  <42.292545, 32.179470, 19.991373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934540, 32.013130, 19.926846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072151, -0.221928, 0.972390,
		-0.440169, 0.881940, 0.168624,
		-0.895011, -0.415849, -0.161319,
		41.666035, 31.888376, 19.878450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701443, 32.519669, 20.344717>,  <42.292545, 32.179470, 19.991373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701443, 32.519669, 20.344717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.641953, 32.129227, 20.281334>,  <41.606258, 31.894962, 20.243305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.641953, 32.129227, 20.281334>,  <41.701443, 32.519669, 20.344717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641953, 32.129227, 20.281334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057739, -0.168536, 0.984003,
		-0.987191, 0.137197, 0.081425,
		-0.148726, -0.976101, -0.158456,
		41.597336, 31.836397, 20.233797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344036, 32.331562, 21.013859>,  <41.701443, 32.519669, 20.344717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344036, 32.331562, 21.013859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.404694, 31.989916, 20.814861>,  <41.441086, 31.784929, 20.695463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.404694, 31.989916, 20.814861>,  <41.344036, 32.331562, 21.013859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404694, 31.989916, 20.814861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089495, -0.513110, 0.853644,
		-0.984376, -0.084924, -0.154246,
		0.151640, -0.854111, -0.497493,
		41.450184, 31.733683, 20.665613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752197, 31.793427, 21.058342>,  <41.344036, 32.331562, 21.013859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752197, 31.793427, 21.058342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099323, 31.599480, 21.014875>,  <41.307598, 31.483112, 20.988794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099323, 31.599480, 21.014875>,  <40.752197, 31.793427, 21.058342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099323, 31.599480, 21.014875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059917, -0.319209, 0.945788,
		-0.493269, -0.814254, -0.306065,
		0.867811, -0.484867, -0.108668,
		41.359665, 31.454020, 20.982275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705906, 31.230455, 21.464916>,  <40.752197, 31.793427, 21.058342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705906, 31.230455, 21.464916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099121, 31.215731, 21.393051>,  <41.335052, 31.206896, 21.349932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099121, 31.215731, 21.393051>,  <40.705906, 31.230455, 21.464916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099121, 31.215731, 21.393051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129949, -0.551459, 0.824018,
		-0.129408, -0.833389, -0.537323,
		0.983039, -0.036810, -0.179661,
		41.394032, 31.204687, 21.339153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952473, 30.561716, 21.452505>,  <40.705906, 31.230455, 21.464916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952473, 30.561716, 21.452505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.262150, 30.786200, 21.569584>,  <41.447956, 30.920889, 21.639832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.262150, 30.786200, 21.569584>,  <40.952473, 30.561716, 21.452505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262150, 30.786200, 21.569584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131681, -0.595126, 0.792771,
		0.619102, -0.575214, -0.534642,
		0.774192, 0.561208, 0.292699,
		41.494408, 30.954561, 21.657394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224445, 30.041037, 21.884567>,  <40.952473, 30.561716, 21.452505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224445, 30.041037, 21.884567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.392456, 30.392879, 21.973888>,  <41.493263, 30.603985, 22.027481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.392456, 30.392879, 21.973888>,  <41.224445, 30.041037, 21.884567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392456, 30.392879, 21.973888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095154, -0.287390, 0.953075,
		0.902509, -0.379070, -0.204410,
		0.420028, 0.879610, 0.223302,
		41.518463, 30.656763, 22.040878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738007, 29.974764, 22.369328>,  <41.224445, 30.041037, 21.884567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738007, 29.974764, 22.369328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.654118, 30.361370, 22.428480>,  <41.603783, 30.593334, 22.463972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.654118, 30.361370, 22.428480>,  <41.738007, 29.974764, 22.369328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654118, 30.361370, 22.428480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042659, -0.160145, 0.986171,
		0.976830, 0.200514, 0.074816,
		-0.209722, 0.966513, 0.147881,
		41.591202, 30.651323, 22.472845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197243, 30.274015, 22.929111>,  <41.738007, 29.974764, 22.369328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197243, 30.274015, 22.929111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.885044, 30.523582, 22.913342>,  <41.697723, 30.673323, 22.903879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.885044, 30.523582, 22.913342>,  <42.197243, 30.274015, 22.929111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885044, 30.523582, 22.913342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013010, 0.046839, 0.998818,
		0.625025, 0.780087, -0.028441,
		-0.780497, 0.623916, -0.039425,
		41.650894, 30.710756, 22.901514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352257, 30.676075, 23.568281>,  <42.197243, 30.274015, 22.929111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352257, 30.676075, 23.568281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.971390, 30.765251, 23.484690>,  <41.742870, 30.818756, 23.434534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.971390, 30.765251, 23.484690>,  <42.352257, 30.676075, 23.568281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971390, 30.765251, 23.484690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202794, 0.050557, 0.977915,
		0.228582, 0.973520, -0.002928,
		-0.952169, 0.222940, -0.208980,
		41.685738, 30.832134, 23.421995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194176, 31.254583, 23.951355>,  <42.352257, 30.676075, 23.568281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194176, 31.254583, 23.951355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.837406, 31.101513, 23.855000>,  <41.623344, 31.009670, 23.797186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.837406, 31.101513, 23.855000>,  <42.194176, 31.254583, 23.951355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837406, 31.101513, 23.855000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328710, 0.182898, 0.926552,
		-0.310511, 0.905598, -0.288921,
		-0.891926, -0.382676, -0.240887,
		41.569828, 30.986710, 23.782734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750660, 31.770996, 24.200872>,  <42.194176, 31.254583, 23.951355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750660, 31.770996, 24.200872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.515224, 31.449305, 24.167923>,  <41.373962, 31.256290, 24.148153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.515224, 31.449305, 24.167923>,  <41.750660, 31.770996, 24.200872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515224, 31.449305, 24.167923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434972, 0.229146, 0.870799,
		-0.681444, 0.548371, -0.484688,
		-0.588586, -0.804227, -0.082376,
		41.338650, 31.208036, 24.143209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990986, 32.016224, 24.203054>,  <41.750660, 31.770996, 24.200872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990986, 32.016224, 24.203054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.021214, 31.631554, 24.308489>,  <41.039349, 31.400753, 24.371750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.021214, 31.631554, 24.308489>,  <40.990986, 32.016224, 24.203054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021214, 31.631554, 24.308489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536738, 0.183551, 0.823542,
		-0.840358, -0.203710, -0.502295,
		0.075567, -0.961671, 0.263587,
		41.043884, 31.343052, 24.387566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364407, 31.886471, 24.528416>,  <40.990986, 32.016224, 24.203054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364407, 31.886471, 24.528416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568581, 31.559431, 24.634987>,  <40.691086, 31.363207, 24.698931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.568581, 31.559431, 24.634987>,  <40.364407, 31.886471, 24.528416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568581, 31.559431, 24.634987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437911, 0.019501, 0.898807,
		-0.740061, -0.575454, -0.348083,
		0.510434, -0.817601, 0.266430,
		40.721710, 31.314150, 24.714916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908817, 31.598026, 24.887787>,  <40.364407, 31.886471, 24.528416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908817, 31.598026, 24.887787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.268471, 31.468575, 25.005646>,  <40.484264, 31.390903, 25.076361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.268471, 31.468575, 25.005646>,  <39.908817, 31.598026, 24.887787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268471, 31.468575, 25.005646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236882, 0.206245, 0.949394,
		-0.368021, -0.923433, 0.108781,
		0.899137, -0.323628, 0.294647,
		40.538212, 31.371487, 25.094040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170235, 31.308144, 24.769466>,  <39.908817, 31.598026, 24.887787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170235, 31.308144, 24.769466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.772179, 31.319284, 24.807253>,  <38.533344, 31.325968, 24.829924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.772179, 31.319284, 24.807253>,  <39.170235, 31.308144, 24.769466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772179, 31.319284, 24.807253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098485, -0.280952, -0.954655,
		-0.000046, -0.959317, 0.282329,
		-0.995139, 0.027849, 0.094465,
		38.473637, 31.327639, 24.835592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879734, 30.708998, 24.392981>,  <39.170235, 31.308144, 24.769466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879734, 30.708998, 24.392981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611736, 31.005623, 24.406744>,  <38.450935, 31.183598, 24.415003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611736, 31.005623, 24.406744>,  <38.879734, 30.708998, 24.392981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611736, 31.005623, 24.406744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083160, -0.028914, -0.996117,
		-0.737690, -0.670258, 0.081041,
		-0.669999, 0.741564, 0.034410,
		38.410736, 31.228092, 24.417067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455898, 30.520493, 23.879129>,  <38.879734, 30.708998, 24.392981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455898, 30.520493, 23.879129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.360332, 30.905367, 23.931465>,  <38.302994, 31.136292, 23.962866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.360332, 30.905367, 23.931465>,  <38.455898, 30.520493, 23.879129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360332, 30.905367, 23.931465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043798, 0.123925, -0.991324,
		-0.970052, -0.242575, 0.012534,
		-0.238918, 0.962185, 0.130838,
		38.288658, 31.194023, 23.970716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998482, 30.639692, 23.359579>,  <38.455898, 30.520493, 23.879129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998482, 30.639692, 23.359579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.144260, 30.991360, 23.482376>,  <38.231728, 31.202360, 23.556055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.144260, 30.991360, 23.482376>,  <37.998482, 30.639692, 23.359579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144260, 30.991360, 23.482376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195887, 0.249914, -0.948246,
		-0.910390, 0.405717, -0.081139,
		0.364442, 0.879168, 0.306994,
		38.253593, 31.255110, 23.574474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567085, 31.149755, 23.054773>,  <37.998482, 30.639692, 23.359579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567085, 31.149755, 23.054773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921326, 31.318933, 23.131535>,  <38.133869, 31.420441, 23.177591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921326, 31.318933, 23.131535>,  <37.567085, 31.149755, 23.054773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921326, 31.318933, 23.131535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071589, 0.283937, -0.956167,
		-0.458895, 0.860521, 0.221177,
		0.885602, 0.422946, 0.191901,
		38.187008, 31.445818, 23.189104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520634, 31.700897, 22.633972>,  <37.567085, 31.149755, 23.054773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520634, 31.700897, 22.633972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.900696, 31.635609, 22.740223>,  <38.128735, 31.596436, 22.803972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.900696, 31.635609, 22.740223>,  <37.520634, 31.700897, 22.633972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900696, 31.635609, 22.740223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298170, 0.226879, -0.927157,
		0.091067, 0.960148, 0.264239,
		0.950159, -0.163222, 0.265626,
		38.185745, 31.586641, 22.819910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842113, 32.314968, 22.407034>,  <37.520634, 31.700897, 22.633972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842113, 32.314968, 22.407034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.122242, 32.030746, 22.434340>,  <38.290318, 31.860212, 22.450724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.122242, 32.030746, 22.434340>,  <37.842113, 32.314968, 22.407034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122242, 32.030746, 22.434340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321941, 0.229046, -0.918636,
		0.637107, 0.665317, 0.389163,
		0.700321, -0.710557, 0.068266,
		38.332336, 31.817579, 22.454819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998394, 33.035606, 22.381361>,  <37.842113, 32.314968, 22.407034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998394, 33.035606, 22.381361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.730347, 33.318329, 22.290714>,  <37.569519, 33.487965, 22.236326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.730347, 33.318329, 22.290714>,  <37.998394, 33.035606, 22.381361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730347, 33.318329, 22.290714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337801, -0.018554, 0.941035,
		0.660928, 0.707160, 0.251195,
		-0.670123, 0.706810, -0.226617,
		37.529308, 33.530373, 22.222729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950783, 33.426964, 23.037437>,  <37.998394, 33.035606, 22.381361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950783, 33.426964, 23.037437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.631058, 33.477779, 22.802504>,  <37.439224, 33.508270, 22.661543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.631058, 33.477779, 22.802504>,  <37.950783, 33.426964, 23.037437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631058, 33.477779, 22.802504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573351, 0.131399, 0.808705,
		0.179915, 0.983155, -0.032189,
		-0.799312, 0.127043, -0.587334,
		37.391266, 33.515892, 22.626303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533154, 34.128262, 23.237946>,  <37.950783, 33.426964, 23.037437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533154, 34.128262, 23.237946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278027, 33.872128, 23.066759>,  <37.124950, 33.718445, 22.964048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278027, 33.872128, 23.066759>,  <37.533154, 34.128262, 23.237946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278027, 33.872128, 23.066759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611665, 0.083475, 0.786701,
		-0.468030, 0.763544, -0.444914,
		-0.637820, -0.640337, -0.427964,
		37.086681, 33.680027, 22.938370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840202, 34.433632, 23.417374>,  <37.533154, 34.128262, 23.237946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840202, 34.433632, 23.417374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.767895, 34.053886, 23.314589>,  <36.724510, 33.826038, 23.252918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.767895, 34.053886, 23.314589>,  <36.840202, 34.433632, 23.417374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767895, 34.053886, 23.314589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749438, -0.036232, 0.661083,
		-0.636918, 0.312082, -0.704940,
		-0.180771, -0.949364, -0.256963,
		36.713665, 33.769077, 23.237499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099274, 34.461048, 23.561285>,  <36.840202, 34.433632, 23.417374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099274, 34.461048, 23.561285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197453, 34.074116, 23.535910>,  <36.256359, 33.841957, 23.520685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197453, 34.074116, 23.535910>,  <36.099274, 34.461048, 23.561285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197453, 34.074116, 23.535910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493139, -0.180929, 0.850928,
		-0.834609, -0.177570, -0.521437,
		0.245443, -0.967333, -0.063438,
		36.271084, 33.783916, 23.516878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515556, 34.043873, 23.806307>,  <36.099274, 34.461048, 23.561285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515556, 34.043873, 23.806307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851254, 33.829334, 23.842091>,  <36.052673, 33.700611, 23.863560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851254, 33.829334, 23.842091>,  <35.515556, 34.043873, 23.806307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851254, 33.829334, 23.842091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264794, -0.259425, 0.928753,
		-0.474928, -0.803137, -0.359742,
		0.839242, -0.536348, 0.089458,
		36.103027, 33.668430, 23.868929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330967, 33.433769, 24.001526>,  <35.515556, 34.043873, 23.806307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330967, 33.433769, 24.001526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702568, 33.474258, 24.143913>,  <35.925529, 33.498554, 24.229345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702568, 33.474258, 24.143913>,  <35.330967, 33.433769, 24.001526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702568, 33.474258, 24.143913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324180, -0.241385, 0.914681,
		0.178515, -0.965136, -0.191431,
		0.928999, 0.101226, 0.355968,
		35.981270, 33.504627, 24.250704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.400780, 35.511429, 19.731998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.609104, 35.200283, 19.872671>,  <40.734100, 35.013596, 19.957075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.609104, 35.200283, 19.872671>,  <40.400780, 35.511429, 19.731998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609104, 35.200283, 19.872671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212405, 0.517084, 0.829161,
		-0.826824, -0.357138, 0.434527,
		0.520812, -0.777866, 0.351680,
		40.765347, 34.966923, 19.978174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179413, 35.507561, 20.315855>,  <40.400780, 35.511429, 19.731998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179413, 35.507561, 20.315855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511543, 35.289043, 20.359905>,  <40.710823, 35.157932, 20.386335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511543, 35.289043, 20.359905>,  <40.179413, 35.507561, 20.315855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511543, 35.289043, 20.359905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151464, 0.411396, 0.898784,
		-0.536302, -0.729602, 0.424336,
		0.830325, -0.546291, 0.110125,
		40.760639, 35.125156, 20.392942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131393, 35.147697, 21.027454>,  <40.179413, 35.507561, 20.315855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131393, 35.147697, 21.027454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.510044, 35.187626, 20.904860>,  <40.737236, 35.211582, 20.831303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.510044, 35.187626, 20.904860>,  <40.131393, 35.147697, 21.027454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510044, 35.187626, 20.904860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228812, 0.461607, 0.857067,
		0.227032, -0.881450, 0.414128,
		0.946626, 0.099824, -0.306486,
		40.794033, 35.217575, 20.812914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535835, 34.952618, 21.574179>,  <40.131393, 35.147697, 21.027454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535835, 34.952618, 21.574179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.764927, 35.193260, 21.351450>,  <40.902382, 35.337646, 21.217813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.764927, 35.193260, 21.351450>,  <40.535835, 34.952618, 21.574179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764927, 35.193260, 21.351450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237204, 0.528575, 0.815072,
		0.784676, -0.598895, 0.160026,
		0.572729, 0.601609, -0.556820,
		40.936745, 35.373741, 21.184404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078358, 35.172623, 22.018070>,  <40.535835, 34.952618, 21.574179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078358, 35.172623, 22.018070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.141132, 35.446838, 21.733702>,  <41.178795, 35.611366, 21.563080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.141132, 35.446838, 21.733702>,  <41.078358, 35.172623, 22.018070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141132, 35.446838, 21.733702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081428, 0.708411, 0.701087,
		0.984247, -0.167912, 0.055351,
		0.156933, 0.685536, -0.710924,
		41.188213, 35.652500, 21.520424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693108, 35.425724, 22.171759>,  <41.078358, 35.172623, 22.018070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693108, 35.425724, 22.171759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.486324, 35.692139, 21.956665>,  <41.362255, 35.851986, 21.827608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.486324, 35.692139, 21.956665>,  <41.693108, 35.425724, 22.171759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486324, 35.692139, 21.956665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100126, 0.670920, 0.734739,
		0.850136, 0.325986, -0.413523,
		-0.516956, 0.666033, -0.537733,
		41.331238, 35.891949, 21.795345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964813, 36.019775, 22.362946>,  <41.693108, 35.425724, 22.171759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964813, 36.019775, 22.362946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.631886, 36.148376, 22.182331>,  <41.432129, 36.225536, 22.073961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.631886, 36.148376, 22.182331>,  <41.964813, 36.019775, 22.362946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631886, 36.148376, 22.182331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077927, 0.738648, 0.669572,
		0.548796, 0.592483, -0.589734,
		-0.832316, 0.321502, -0.451538,
		41.382191, 36.244827, 22.046869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949703, 36.834282, 22.294575>,  <41.964813, 36.019775, 22.362946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949703, 36.834282, 22.294575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.566788, 36.722233, 22.265926>,  <41.337040, 36.655003, 22.248737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.566788, 36.722233, 22.265926>,  <41.949703, 36.834282, 22.294575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566788, 36.722233, 22.265926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200959, 0.466515, 0.861382,
		-0.207885, 0.838983, -0.502883,
		-0.957288, -0.280127, -0.071620,
		41.279602, 36.638195, 22.244440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548622, 37.464451, 22.306005>,  <41.949703, 36.834282, 22.294575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548622, 37.464451, 22.306005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.314991, 37.158943, 22.415924>,  <41.174812, 36.975639, 22.481876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.314991, 37.158943, 22.415924>,  <41.548622, 37.464451, 22.306005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314991, 37.158943, 22.415924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098932, 0.403007, 0.909834,
		-0.805648, 0.504225, -0.310947,
		-0.584075, -0.763769, 0.274798,
		41.139771, 36.929813, 22.498363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959717, 37.712109, 22.616163>,  <41.548622, 37.464451, 22.306005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959717, 37.712109, 22.616163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.968182, 37.333672, 22.745443>,  <40.973259, 37.106609, 22.823011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.968182, 37.333672, 22.745443>,  <40.959717, 37.712109, 22.616163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968182, 37.333672, 22.745443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339678, 0.297240, 0.892338,
		-0.940304, -0.128665, -0.315079,
		0.021158, -0.946094, 0.323200,
		40.974529, 37.049843, 22.842403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296291, 37.561050, 22.872725>,  <40.959717, 37.712109, 22.616163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296291, 37.561050, 22.872725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.516369, 37.283733, 23.058901>,  <40.648415, 37.117344, 23.170607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.516369, 37.283733, 23.058901>,  <40.296291, 37.561050, 22.872725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516369, 37.283733, 23.058901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549644, 0.118939, 0.826889,
		-0.628634, -0.710775, -0.315624,
		0.550191, -0.693291, 0.465442,
		40.681427, 37.075745, 23.198534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843262, 37.221085, 23.255497>,  <40.296291, 37.561050, 22.872725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843262, 37.221085, 23.255497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.196564, 37.150719, 23.429352>,  <40.408546, 37.108501, 23.533665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.196564, 37.150719, 23.429352>,  <39.843262, 37.221085, 23.255497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196564, 37.150719, 23.429352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419280, 0.118653, 0.900070,
		-0.209903, -0.977229, 0.031045,
		0.883258, -0.175910, 0.434638,
		40.461540, 37.097946, 23.559744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250038, 36.706924, 23.167280>,  <39.843262, 37.221085, 23.255497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250038, 36.706924, 23.167280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883106, 36.826313, 23.061890>,  <38.662949, 36.897945, 22.998655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883106, 36.826313, 23.061890>,  <39.250038, 36.706924, 23.167280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883106, 36.826313, 23.061890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312851, 0.131105, -0.940710,
		-0.246234, -0.945370, -0.213645,
		-0.917329, 0.298474, -0.263478,
		38.607906, 36.915855, 22.982847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143612, 36.396343, 22.492292>,  <39.250038, 36.706924, 23.167280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143612, 36.396343, 22.492292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891850, 36.706230, 22.516502>,  <38.740791, 36.892162, 22.531029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.891850, 36.706230, 22.516502>,  <39.143612, 36.396343, 22.492292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891850, 36.706230, 22.516502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180825, 0.221769, -0.958186,
		-0.755746, -0.592143, -0.279671,
		-0.629405, 0.774717, 0.060527,
		38.703030, 36.938644, 22.534660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755714, 36.207653, 21.980404>,  <39.143612, 36.396343, 22.492292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755714, 36.207653, 21.980404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.666477, 36.588409, 22.064436>,  <38.612934, 36.816864, 22.114855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.666477, 36.588409, 22.064436>,  <38.755714, 36.207653, 21.980404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666477, 36.588409, 22.064436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096235, 0.235965, -0.966985,
		-0.970036, -0.195506, -0.144246,
		-0.223089, 0.951892, 0.210080,
		38.599552, 36.873978, 22.127460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127529, 36.381489, 21.502399>,  <38.755714, 36.207653, 21.980404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127529, 36.381489, 21.502399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317608, 36.716961, 21.608837>,  <38.431656, 36.918243, 21.672701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317608, 36.716961, 21.608837>,  <38.127529, 36.381489, 21.502399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317608, 36.716961, 21.608837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106606, 0.245317, -0.963563,
		-0.873395, 0.486254, 0.027167,
		0.475201, 0.838676, 0.266096,
		38.460167, 36.968563, 21.688665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721092, 37.004589, 21.347395>,  <38.127529, 36.381489, 21.502399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721092, 37.004589, 21.347395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.118198, 37.050682, 21.333906>,  <38.356461, 37.078339, 21.325813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.118198, 37.050682, 21.333906>,  <37.721092, 37.004589, 21.347395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118198, 37.050682, 21.333906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063866, 0.269004, -0.961019,
		-0.101666, 0.956221, 0.274417,
		0.992766, 0.115229, -0.033721,
		38.416027, 37.085251, 21.323790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877808, 37.406799, 20.698980>,  <37.721092, 37.004589, 21.347395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877808, 37.406799, 20.698980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.260174, 37.331566, 20.789173>,  <38.489594, 37.286427, 20.843288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.260174, 37.331566, 20.789173>,  <37.877808, 37.406799, 20.698980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260174, 37.331566, 20.789173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228156, -0.007600, -0.973595,
		0.184834, 0.982123, 0.035648,
		0.955919, -0.188087, 0.225482,
		38.546951, 37.275139, 20.856817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313435, 37.756081, 20.261341>,  <37.877808, 37.406799, 20.698980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313435, 37.756081, 20.261341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.568531, 37.475021, 20.387568>,  <38.721588, 37.306385, 20.463303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.568531, 37.475021, 20.387568>,  <38.313435, 37.756081, 20.261341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568531, 37.475021, 20.387568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398257, -0.049880, -0.915917,
		0.659304, 0.709790, 0.248023,
		0.637738, -0.702645, 0.315565,
		38.759853, 37.264229, 20.482237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795403, 37.697002, 19.715191>,  <38.313435, 37.756081, 20.261341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795403, 37.697002, 19.715191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.915386, 37.365917, 19.904892>,  <38.987377, 37.167267, 20.018713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.915386, 37.365917, 19.904892>,  <38.795403, 37.697002, 19.715191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915386, 37.365917, 19.904892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181912, -0.438390, -0.880183,
		0.936448, 0.350287, 0.019073,
		0.299955, -0.827715, 0.474251,
		39.005371, 37.117603, 20.047167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455914, 37.508472, 19.489698>,  <38.795403, 37.697002, 19.715191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455914, 37.508472, 19.489698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.269981, 37.184509, 19.632795>,  <39.158424, 36.990131, 19.718653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.269981, 37.184509, 19.632795>,  <39.455914, 37.508472, 19.489698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269981, 37.184509, 19.632795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108247, -0.452998, -0.884916,
		0.878759, -0.372609, 0.298237,
		-0.464829, -0.809911, 0.357742,
		39.130531, 36.941536, 19.740118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816601, 36.941330, 19.157581>,  <39.455914, 37.508472, 19.489698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816601, 36.941330, 19.157581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.458969, 36.796783, 19.263441>,  <39.244392, 36.710056, 19.326956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.458969, 36.796783, 19.263441>,  <39.816601, 36.941330, 19.157581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458969, 36.796783, 19.263441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052332, -0.671075, -0.739540,
		0.444846, -0.647356, 0.618904,
		-0.894077, -0.361370, 0.264648,
		39.190746, 36.688374, 19.342834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866650, 36.236408, 19.143906>,  <39.816601, 36.941330, 19.157581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866650, 36.236408, 19.143906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.482147, 36.327862, 19.082308>,  <39.251446, 36.382732, 19.045349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.482147, 36.327862, 19.082308>,  <39.866650, 36.236408, 19.143906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482147, 36.327862, 19.082308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020546, -0.497664, -0.867127,
		-0.274888, -0.836695, 0.473685,
		-0.961257, 0.228630, -0.153992,
		39.193771, 36.396450, 19.036110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717045, 35.473114, 19.019781>,  <39.866650, 36.236408, 19.143906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717045, 35.473114, 19.019781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.406693, 35.695740, 18.900949>,  <39.220482, 35.829315, 18.829651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.406693, 35.695740, 18.900949>,  <39.717045, 35.473114, 19.019781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406693, 35.695740, 18.900949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291003, -0.733528, -0.614210,
		-0.559760, -0.390101, 0.731088,
		-0.775877, 0.556560, -0.297079,
		39.173931, 35.862709, 18.811825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138523, 35.059288, 19.084173>,  <39.717045, 35.473114, 19.019781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138523, 35.059288, 19.084173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.019562, 35.350704, 18.837343>,  <38.948185, 35.525555, 18.689245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.019562, 35.350704, 18.837343>,  <39.138523, 35.059288, 19.084173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019562, 35.350704, 18.837343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352350, -0.684450, -0.638261,
		-0.887355, 0.027605, 0.460259,
		-0.297405, 0.728537, -0.617077,
		38.930340, 35.569267, 18.652220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316021, 34.696350, 19.828154>,  <39.138523, 35.059288, 19.084173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316021, 34.696350, 19.828154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.018200, 34.501736, 19.645319>,  <38.839508, 34.384968, 19.535618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.018200, 34.501736, 19.645319>,  <39.316021, 34.696350, 19.828154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018200, 34.501736, 19.645319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467391, -0.108952, 0.877312,
		-0.476645, 0.866840, -0.146282,
		-0.744551, -0.486537, -0.457085,
		38.794834, 34.355774, 19.508194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663433, 35.074104, 19.930313>,  <39.316021, 34.696350, 19.828154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663433, 35.074104, 19.930313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.579945, 34.691826, 19.847292>,  <38.529854, 34.462460, 19.797480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.579945, 34.691826, 19.847292>,  <38.663433, 35.074104, 19.930313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579945, 34.691826, 19.847292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448895, -0.094930, 0.888527,
		-0.868867, 0.278621, -0.409195,
		-0.208717, -0.955698, -0.207553,
		38.517330, 34.405117, 19.785027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899303, 35.005234, 20.099693>,  <38.663433, 35.074104, 19.930313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899303, 35.005234, 20.099693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.026413, 34.625999, 20.094717>,  <38.102676, 34.398460, 20.091732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.026413, 34.625999, 20.094717>,  <37.899303, 35.005234, 20.099693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026413, 34.625999, 20.094717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444243, -0.160462, 0.881419,
		-0.837658, -0.274562, -0.472171,
		0.317770, -0.948086, -0.012440,
		38.121742, 34.341572, 20.090984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360199, 34.483654, 20.146706>,  <37.899303, 35.005234, 20.099693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360199, 34.483654, 20.146706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.697655, 34.327694, 20.294350>,  <37.900127, 34.234116, 20.382936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.697655, 34.327694, 20.294350>,  <37.360199, 34.483654, 20.146706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697655, 34.327694, 20.294350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505286, -0.344140, 0.791362,
		-0.181527, -0.854134, -0.487343,
		0.843643, -0.389901, 0.369112,
		37.950748, 34.210724, 20.405083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167324, 33.834915, 20.250019>,  <37.360199, 34.483654, 20.146706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167324, 33.834915, 20.250019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.496548, 33.853966, 20.476402>,  <37.694080, 33.865395, 20.612232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.496548, 33.853966, 20.476402>,  <37.167324, 33.834915, 20.250019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496548, 33.853966, 20.476402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524639, -0.317952, 0.789722,
		0.217559, -0.946910, -0.236706,
		0.823057, 0.047626, 0.565959,
		37.743465, 33.868252, 20.646191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137718, 33.316936, 20.660488>,  <37.167324, 33.834915, 20.250019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137718, 33.316936, 20.660488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.420235, 33.520931, 20.856882>,  <37.589745, 33.643326, 20.974718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.420235, 33.520931, 20.856882>,  <37.137718, 33.316936, 20.660488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420235, 33.520931, 20.856882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475733, -0.171674, 0.862674,
		0.524240, -0.842878, 0.121364,
		0.706294, 0.509985, 0.490983,
		37.632122, 33.673927, 21.004177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426979, 32.831360, 21.202988>,  <37.137718, 33.316936, 20.660488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426979, 32.831360, 21.202988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.549355, 33.200321, 21.297279>,  <37.622780, 33.421700, 21.353855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.549355, 33.200321, 21.297279>,  <37.426979, 32.831360, 21.202988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549355, 33.200321, 21.297279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245470, -0.162806, 0.955635,
		0.919862, -0.350231, 0.176614,
		0.305939, 0.922406, 0.235730,
		37.641136, 33.477043, 21.367998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831303, 32.736004, 21.766607>,  <37.426979, 32.831360, 21.202988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831303, 32.736004, 21.766607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.731884, 33.121555, 21.804897>,  <37.672234, 33.352886, 21.827871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.731884, 33.121555, 21.804897>,  <37.831303, 32.736004, 21.766607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731884, 33.121555, 21.804897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511365, -0.214506, 0.832162,
		0.822636, 0.157881, 0.546209,
		-0.248547, 0.963878, 0.095725,
		37.657318, 33.410717, 21.833614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603054, 32.647221, 21.956064>,  <37.831303, 32.736004, 21.766607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603054, 32.647221, 21.956064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.665504, 32.256672, 22.015831>,  <38.702976, 32.022343, 22.051691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.665504, 32.256672, 22.015831>,  <38.603054, 32.647221, 21.956064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665504, 32.256672, 22.015831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104363, -0.134118, -0.985455,
		0.982208, 0.169451, 0.080958,
		0.156128, -0.976370, 0.149416,
		38.712341, 31.963760, 22.060656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228176, 32.456512, 21.619465>,  <38.603054, 32.647221, 21.956064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228176, 32.456512, 21.619465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.004391, 32.126305, 21.649197>,  <38.870121, 31.928181, 21.667036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.004391, 32.126305, 21.649197>,  <39.228176, 32.456512, 21.619465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004391, 32.126305, 21.649197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235191, -0.244101, -0.940797,
		0.794788, -0.508859, 0.330719,
		-0.559462, -0.825516, 0.074329,
		38.836552, 31.878649, 21.671495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673698, 31.912457, 21.291641>,  <39.228176, 32.456512, 21.619465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673698, 31.912457, 21.291641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.286301, 31.813356, 21.281584>,  <39.053860, 31.753897, 21.275549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.286301, 31.813356, 21.281584>,  <39.673698, 31.912457, 21.291641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286301, 31.813356, 21.281584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052217, -0.103326, -0.993276,
		0.243489, -0.963298, 0.113008,
		-0.968497, -0.247752, -0.025142,
		38.995750, 31.739031, 21.274042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657742, 31.215658, 21.017134>,  <39.673698, 31.912457, 21.291641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657742, 31.215658, 21.017134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.314621, 31.404423, 20.935667>,  <39.108749, 31.517681, 20.886787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.314621, 31.404423, 20.935667>,  <39.657742, 31.215658, 21.017134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314621, 31.404423, 20.935667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034532, -0.342443, -0.938904,
		-0.512827, -0.812422, 0.277451,
		-0.857797, 0.471914, -0.203669,
		39.057281, 31.545998, 20.874567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449406, 30.770826, 20.647894>,  <39.657742, 31.215658, 21.017134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449406, 30.770826, 20.647894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.188255, 31.066486, 20.581661>,  <39.031567, 31.243881, 20.541922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.188255, 31.066486, 20.581661>,  <39.449406, 30.770826, 20.647894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188255, 31.066486, 20.581661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041127, -0.183687, -0.982124,
		-0.756350, -0.648012, 0.089525,
		-0.652873, 0.739148, -0.165582,
		38.992393, 31.288231, 20.531986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024956, 30.466732, 20.212187>,  <39.449406, 30.770826, 20.647894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024956, 30.466732, 20.212187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.981052, 30.863764, 20.191257>,  <38.954708, 31.101982, 20.178699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.981052, 30.863764, 20.191257>,  <39.024956, 30.466732, 20.212187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981052, 30.863764, 20.191257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026717, -0.055571, -0.998097,
		-0.993599, -0.108155, 0.032618,
		-0.109761, 0.992580, -0.052326,
		38.948124, 31.161537, 20.175560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378586, 30.595217, 19.877325>,  <39.024956, 30.466732, 20.212187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378586, 30.595217, 19.877325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.597553, 30.927073, 19.833447>,  <38.728935, 31.126186, 19.807119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.597553, 30.927073, 19.833447>,  <38.378586, 30.595217, 19.877325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597553, 30.927073, 19.833447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120557, -0.051535, -0.991368,
		-0.828129, 0.555919, 0.071807,
		0.547420, 0.829637, -0.109698,
		38.761780, 31.175964, 19.800537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068081, 31.099024, 19.371952>,  <38.378586, 30.595217, 19.877325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068081, 31.099024, 19.371952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.446877, 31.226860, 19.385046>,  <38.674152, 31.303562, 19.392902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.446877, 31.226860, 19.385046>,  <38.068081, 31.099024, 19.371952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446877, 31.226860, 19.385046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023025, 0.034118, -0.999152,
		-0.320436, 0.946941, 0.024951,
		0.946990, 0.319590, 0.032736,
		38.730972, 31.322737, 19.394867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090771, 31.540300, 18.972946>,  <38.068081, 31.099024, 19.371952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090771, 31.540300, 18.972946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485245, 31.474066, 18.974739>,  <38.721928, 31.434326, 18.975815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485245, 31.474066, 18.974739>,  <38.090771, 31.540300, 18.972946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485245, 31.474066, 18.974739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037193, 0.194980, -0.980102,
		0.161416, 0.966729, 0.198445,
		0.986185, -0.165585, 0.004482,
		38.781101, 31.424391, 18.976084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.051960, 33.611355, 34.980740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.377174, 33.840073, 34.936878>,  <37.572304, 33.977303, 34.910561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.377174, 33.840073, 34.936878>,  <37.051960, 33.611355, 34.980740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377174, 33.840073, 34.936878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057507, -0.108546, -0.992427,
		-0.579365, 0.813185, -0.055370,
		0.813037, 0.571794, -0.109652,
		37.621086, 34.011612, 34.903984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889172, 34.069744, 34.444057>,  <37.051960, 33.611355, 34.980740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889172, 34.069744, 34.444057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282047, 34.003975, 34.480419>,  <37.517773, 33.964512, 34.502235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282047, 34.003975, 34.480419>,  <36.889172, 34.069744, 34.444057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282047, 34.003975, 34.480419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042203, -0.278375, -0.959545,
		0.183080, 0.946293, -0.266478,
		0.982192, -0.164427, 0.090902,
		37.576706, 33.954647, 34.507690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126846, 34.277813, 33.738728>,  <36.889172, 34.069744, 34.444057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126846, 34.277813, 33.738728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455540, 34.096893, 33.877392>,  <37.652756, 33.988342, 33.960590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455540, 34.096893, 33.877392>,  <37.126846, 34.277813, 33.738728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455540, 34.096893, 33.877392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195903, -0.347040, -0.917161,
		0.535138, 0.821576, -0.196568,
		0.821735, -0.452300, 0.346664,
		37.702061, 33.961205, 33.981392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571342, 34.427979, 33.295364>,  <37.126846, 34.277813, 33.738728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571342, 34.427979, 33.295364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694107, 34.093544, 33.477245>,  <37.767765, 33.892883, 33.586376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694107, 34.093544, 33.477245>,  <37.571342, 34.427979, 33.295364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694107, 34.093544, 33.477245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195324, -0.412262, -0.889881,
		0.931480, 0.361928, 0.036781,
		0.306910, -0.836091, 0.454707,
		37.786179, 33.842716, 33.613659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159447, 34.160465, 32.929379>,  <37.571342, 34.427979, 33.295364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159447, 34.160465, 32.929379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997768, 33.847176, 33.118351>,  <37.900761, 33.659203, 33.231735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997768, 33.847176, 33.118351>,  <38.159447, 34.160465, 32.929379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997768, 33.847176, 33.118351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049343, -0.534421, -0.843777,
		0.913340, -0.317741, 0.254658,
		-0.404197, -0.783221, 0.472430,
		37.876511, 33.612209, 33.260078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407108, 33.578060, 32.587704>,  <38.159447, 34.160465, 32.929379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407108, 33.578060, 32.587704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091743, 33.419464, 32.775833>,  <37.902527, 33.324306, 32.888710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091743, 33.419464, 32.775833>,  <38.407108, 33.578060, 32.587704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091743, 33.419464, 32.775833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184256, -0.577252, -0.795506,
		0.586909, -0.713844, 0.382054,
		-0.788408, -0.396494, 0.470324,
		37.855221, 33.300514, 32.916931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518921, 32.930511, 32.555683>,  <38.407108, 33.578060, 32.587704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518921, 32.930511, 32.555683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.124550, 32.973015, 32.607323>,  <37.887928, 32.998516, 32.638306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.124550, 32.973015, 32.607323>,  <38.518921, 32.930511, 32.555683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124550, 32.973015, 32.607323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164385, -0.474908, -0.864546,
		-0.030553, -0.873598, 0.485689,
		-0.985923, 0.106254, 0.129096,
		37.828773, 33.004890, 32.646053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289280, 32.422871, 32.234440>,  <38.518921, 32.930511, 32.555683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289280, 32.422871, 32.234440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.943775, 32.624432, 32.233662>,  <37.736473, 32.745369, 32.233192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.943775, 32.624432, 32.233662>,  <38.289280, 32.422871, 32.234440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943775, 32.624432, 32.233662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228435, -0.395011, -0.889822,
		-0.449155, -0.768145, 0.456303,
		-0.863757, 0.503904, -0.001950,
		37.684647, 32.775600, 32.233078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766438, 31.914799, 31.973589>,  <38.289280, 32.422871, 32.234440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766438, 31.914799, 31.973589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579777, 32.268181, 31.956858>,  <37.467781, 32.480209, 31.946819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579777, 32.268181, 31.956858>,  <37.766438, 31.914799, 31.973589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579777, 32.268181, 31.956858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213685, -0.158510, -0.963957,
		-0.858241, -0.440892, 0.262749,
		-0.466649, 0.883453, -0.041828,
		37.439781, 32.533218, 31.944309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104889, 31.718004, 31.698835>,  <37.766438, 31.914799, 31.973589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104889, 31.718004, 31.698835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.179661, 32.105621, 31.634325>,  <37.224525, 32.338192, 31.595619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.179661, 32.105621, 31.634325>,  <37.104889, 31.718004, 31.698835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179661, 32.105621, 31.634325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186274, -0.126229, -0.974356,
		-0.964552, 0.212178, 0.156911,
		0.186930, 0.969044, -0.161278,
		37.235741, 32.396336, 31.585941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554367, 32.030811, 31.227180>,  <37.104889, 31.718004, 31.698835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554367, 32.030811, 31.227180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873875, 32.268021, 31.186613>,  <37.065578, 32.410347, 31.162271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873875, 32.268021, 31.186613>,  <36.554367, 32.030811, 31.227180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873875, 32.268021, 31.186613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061045, -0.247592, -0.966939,
		-0.598530, 0.766172, -0.233971,
		0.798771, 0.593025, -0.101420,
		37.113506, 32.445927, 31.156187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497620, 32.614872, 30.588299>,  <36.554367, 32.030811, 31.227180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497620, 32.614872, 30.588299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.883942, 32.555332, 30.673214>,  <37.115734, 32.519608, 30.724163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.883942, 32.555332, 30.673214>,  <36.497620, 32.614872, 30.588299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883942, 32.555332, 30.673214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187688, -0.163498, -0.968526,
		0.178872, 0.975250, -0.129970,
		0.965804, -0.148848, 0.212288,
		37.173683, 32.510677, 30.736900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264042, 33.410828, 30.531370>,  <36.497620, 32.614872, 30.588299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264042, 33.410828, 30.531370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953026, 33.633148, 30.413712>,  <35.766418, 33.766541, 30.343117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953026, 33.633148, 30.413712>,  <36.264042, 33.410828, 30.531370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953026, 33.633148, 30.413712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292737, 0.094070, 0.951555,
		0.556546, 0.825976, 0.089560,
		-0.777536, 0.555801, -0.294148,
		35.719765, 33.799889, 30.325468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361908, 33.994793, 30.887781>,  <36.264042, 33.410828, 30.531370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361908, 33.994793, 30.887781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980976, 34.010006, 30.766708>,  <35.752415, 34.019135, 30.694065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980976, 34.010006, 30.766708>,  <36.361908, 33.994793, 30.887781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980976, 34.010006, 30.766708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242758, 0.506402, 0.827421,
		0.184749, 0.861459, -0.473030,
		-0.952332, 0.038033, -0.302683,
		35.695278, 34.021416, 30.675903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059059, 34.642967, 30.788429>,  <36.361908, 33.994793, 30.887781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059059, 34.642967, 30.788429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722958, 34.432545, 30.840940>,  <35.521297, 34.306293, 30.872448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722958, 34.432545, 30.840940>,  <36.059059, 34.642967, 30.788429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722958, 34.432545, 30.840940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303182, 0.656611, 0.690611,
		-0.449497, 0.540490, -0.711212,
		-0.840258, -0.526054, 0.131278,
		35.470879, 34.274727, 30.880323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543739, 35.101761, 30.752314>,  <36.059059, 34.642967, 30.788429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543739, 35.101761, 30.752314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366371, 34.804722, 30.953081>,  <35.259949, 34.626499, 31.073542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366371, 34.804722, 30.953081>,  <35.543739, 35.101761, 30.752314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366371, 34.804722, 30.953081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377150, 0.662579, 0.647107,
		-0.813101, 0.097645, -0.573875,
		-0.443424, -0.742600, 0.501917,
		35.233345, 34.581944, 31.103657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862457, 35.344479, 30.863546>,  <35.543739, 35.101761, 30.752314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862457, 35.344479, 30.863546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945244, 35.061218, 31.133564>,  <34.994915, 34.891262, 31.295574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945244, 35.061218, 31.133564>,  <34.862457, 35.344479, 30.863546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945244, 35.061218, 31.133564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287308, 0.615569, 0.733845,
		-0.935211, -0.345826, -0.076057,
		0.206964, -0.708152, 0.675046,
		35.007332, 34.848774, 31.336079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261837, 35.416828, 31.260118>,  <34.862457, 35.344479, 30.863546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261837, 35.416828, 31.260118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524662, 35.203720, 31.473444>,  <34.682358, 35.075855, 31.601439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524662, 35.203720, 31.473444>,  <34.261837, 35.416828, 31.260118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524662, 35.203720, 31.473444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196200, 0.562219, 0.803378,
		-0.727855, -0.632506, 0.264883,
		0.657063, -0.532773, 0.533311,
		34.721783, 35.043888, 31.633438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871643, 35.143139, 31.869453>,  <34.261837, 35.416828, 31.260118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871643, 35.143139, 31.869453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264267, 35.173988, 31.939409>,  <34.499844, 35.192497, 31.981382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.264267, 35.173988, 31.939409>,  <33.871643, 35.143139, 31.869453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264267, 35.173988, 31.939409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182818, 0.645844, 0.741258,
		-0.055782, -0.759564, 0.648036,
		0.981563, 0.077124, 0.174888,
		34.558735, 35.197124, 31.991875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807690, 35.332439, 32.509186>,  <33.871643, 35.143139, 31.869453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807690, 35.332439, 32.509186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.194607, 35.383663, 32.421604>,  <34.426758, 35.414398, 32.369057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.194607, 35.383663, 32.421604>,  <33.807690, 35.332439, 32.509186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194607, 35.383663, 32.421604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046579, 0.758857, 0.649590,
		0.249339, -0.638544, 0.728074,
		0.967296, 0.128056, -0.218955,
		34.484795, 35.422081, 32.355919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226383, 35.401424, 33.110954>,  <33.807690, 35.332439, 32.509186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226383, 35.401424, 33.110954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481934, 35.570045, 32.853542>,  <34.635262, 35.671219, 32.699093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481934, 35.570045, 32.853542>,  <34.226383, 35.401424, 33.110954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481934, 35.570045, 32.853542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185777, 0.727208, 0.660799,
		0.746551, -0.541716, 0.386272,
		0.638865, 0.421559, -0.643536,
		34.673595, 35.696510, 32.660484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744751, 35.690891, 33.534035>,  <34.226383, 35.401424, 33.110954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744751, 35.690891, 33.534035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781315, 35.873901, 33.180241>,  <34.803253, 35.983707, 32.967964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781315, 35.873901, 33.180241>,  <34.744751, 35.690891, 33.534035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781315, 35.873901, 33.180241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235541, 0.853065, 0.465618,
		0.967556, -0.250895, -0.029786,
		0.091412, 0.457527, -0.884484,
		34.808739, 36.011158, 32.914894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403973, 35.984306, 33.502274>,  <34.744751, 35.690891, 33.534035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403973, 35.984306, 33.502274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209431, 36.195194, 33.223564>,  <35.092705, 36.321728, 33.056339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209431, 36.195194, 33.223564>,  <35.403973, 35.984306, 33.502274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209431, 36.195194, 33.223564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275357, 0.849294, 0.450420,
		0.829237, 0.027205, -0.558235,
		-0.486359, 0.527219, -0.696775,
		35.063522, 36.353359, 33.014530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785957, 36.550739, 33.223507>,  <35.403973, 35.984306, 33.502274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785957, 36.550739, 33.223507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404625, 36.667351, 33.192104>,  <35.175823, 36.737316, 33.173264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404625, 36.667351, 33.192104>,  <35.785957, 36.550739, 33.223507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404625, 36.667351, 33.192104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211690, 0.830842, 0.514674,
		0.215265, 0.474039, -0.853784,
		-0.953335, 0.291529, -0.078502,
		35.118626, 36.754810, 33.168552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892277, 37.186741, 33.319199>,  <35.785957, 36.550739, 33.223507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892277, 37.186741, 33.319199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495186, 37.153366, 33.353935>,  <35.256931, 37.133343, 33.374775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495186, 37.153366, 33.353935>,  <35.892277, 37.186741, 33.319199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495186, 37.153366, 33.353935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010449, 0.778060, 0.628103,
		-0.119970, 0.622625, -0.773269,
		-0.992722, -0.083433, 0.086838,
		35.197369, 37.128338, 33.379986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660099, 37.892845, 33.393978>,  <35.892277, 37.186741, 33.319199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660099, 37.892845, 33.393978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322231, 37.700054, 33.487122>,  <35.119511, 37.584377, 33.543007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322231, 37.700054, 33.487122>,  <35.660099, 37.892845, 33.393978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322231, 37.700054, 33.487122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159857, 0.642302, 0.749596,
		-0.510859, 0.595937, -0.619582,
		-0.844671, -0.481982, 0.232861,
		35.068829, 37.555458, 33.556980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067680, 38.314022, 33.198456>,  <35.660099, 37.892845, 33.393978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067680, 38.314022, 33.198456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154472, 38.667305, 33.032150>,  <35.206547, 38.879276, 32.932365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154472, 38.667305, 33.032150>,  <35.067680, 38.314022, 33.198456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154472, 38.667305, 33.032150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268987, -0.463523, -0.844270,
		-0.938384, 0.071356, -0.338148,
		0.216983, 0.883207, -0.415768,
		35.219566, 38.932266, 32.907421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846069, 38.436741, 32.461159>,  <35.067680, 38.314022, 33.198456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846069, 38.436741, 32.461159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161541, 38.678249, 32.507553>,  <35.350822, 38.823154, 32.535389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161541, 38.678249, 32.507553>,  <34.846069, 38.436741, 32.461159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161541, 38.678249, 32.507553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320012, -0.242053, -0.915971,
		-0.524958, 0.759523, -0.384114,
		0.788677, 0.603768, 0.115989,
		35.398144, 38.859379, 32.542351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871864, 38.938877, 31.945282>,  <34.846069, 38.436741, 32.461159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871864, 38.938877, 31.945282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224438, 38.816277, 32.089024>,  <35.435982, 38.742718, 32.175270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224438, 38.816277, 32.089024>,  <34.871864, 38.938877, 31.945282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224438, 38.816277, 32.089024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289913, -0.249548, -0.923946,
		0.372868, 0.918576, -0.131100,
		0.881431, -0.306503, 0.359355,
		35.488869, 38.724327, 32.196831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502411, 39.223412, 31.578629>,  <34.871864, 38.938877, 31.945282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502411, 39.223412, 31.578629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605949, 38.867401, 31.728750>,  <35.668072, 38.653793, 31.818823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605949, 38.867401, 31.728750>,  <35.502411, 39.223412, 31.578629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605949, 38.867401, 31.728750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194336, -0.332615, -0.922822,
		0.946167, 0.311805, 0.086867,
		0.258847, -0.890025, 0.375304,
		35.683605, 38.600395, 31.841341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067337, 38.960911, 31.142639>,  <35.502411, 39.223412, 31.578629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067337, 38.960911, 31.142639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932068, 38.636040, 31.332798>,  <35.850906, 38.441116, 31.446894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932068, 38.636040, 31.332798>,  <36.067337, 38.960911, 31.142639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932068, 38.636040, 31.332798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206266, -0.556844, -0.804599,
		0.918202, -0.174032, 0.355833,
		-0.338169, -0.812181, 0.475399,
		35.830616, 38.392387, 31.475418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571068, 38.484238, 30.987003>,  <36.067337, 38.960911, 31.142639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571068, 38.484238, 30.987003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258564, 38.254433, 31.084625>,  <36.071060, 38.116550, 31.143198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258564, 38.254433, 31.084625>,  <36.571068, 38.484238, 30.987003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258564, 38.254433, 31.084625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199761, -0.600550, -0.774232,
		0.591373, -0.556126, 0.583953,
		-0.781264, -0.574511, 0.244057,
		36.024185, 38.082081, 31.157843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813049, 37.792191, 31.001593>,  <36.571068, 38.484238, 30.987003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813049, 37.792191, 31.001593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418423, 37.792011, 30.936256>,  <36.181644, 37.791904, 30.897055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418423, 37.792011, 30.936256>,  <36.813049, 37.792191, 31.001593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418423, 37.792011, 30.936256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143343, -0.481811, -0.864472,
		-0.078315, -0.876275, 0.475404,
		-0.986570, -0.000445, -0.163341,
		36.122452, 37.791878, 30.887255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789490, 37.229893, 30.740314>,  <36.813049, 37.792191, 31.001593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789490, 37.229893, 30.740314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422482, 37.362621, 30.652643>,  <36.202274, 37.442261, 30.600040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422482, 37.362621, 30.652643>,  <36.789490, 37.229893, 30.740314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422482, 37.362621, 30.652643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084742, -0.375348, -0.923002,
		-0.388548, -0.865450, 0.316271,
		-0.917523, 0.331829, -0.219181,
		36.147224, 37.462170, 30.586889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314445, 36.623646, 30.497021>,  <36.789490, 37.229893, 30.740314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314445, 36.623646, 30.497021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.150028, 36.960270, 30.356833>,  <36.051380, 37.162243, 30.272720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.150028, 36.960270, 30.356833>,  <36.314445, 36.623646, 30.497021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150028, 36.960270, 30.356833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183627, -0.453003, -0.872393,
		-0.892932, -0.294232, 0.340735,
		-0.411040, 0.841556, -0.350471,
		36.026718, 37.212738, 30.251692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719547, 36.344658, 30.218504>,  <36.314445, 36.623646, 30.497021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719547, 36.344658, 30.218504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787968, 36.701420, 30.051056>,  <35.829021, 36.915478, 29.950588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787968, 36.701420, 30.051056>,  <35.719547, 36.344658, 30.218504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787968, 36.701420, 30.051056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015122, -0.422454, -0.906258,
		-0.985146, 0.161348, -0.058775,
		0.171053, 0.891908, -0.418618,
		35.839283, 36.968990, 29.925470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385593, 36.193336, 29.685043>,  <35.719547, 36.344658, 30.218504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385593, 36.193336, 29.685043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615257, 36.510841, 29.604752>,  <35.753056, 36.701344, 29.556576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615257, 36.510841, 29.604752>,  <35.385593, 36.193336, 29.685043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615257, 36.510841, 29.604752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209967, -0.379718, -0.900959,
		-0.791365, 0.475145, -0.384680,
		0.574156, 0.793758, -0.200731,
		35.787502, 36.748970, 29.544533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159492, 36.414501, 29.052776>,  <35.385593, 36.193336, 29.685043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159492, 36.414501, 29.052776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.527340, 36.569489, 29.078596>,  <35.748047, 36.662483, 29.094088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.527340, 36.569489, 29.078596>,  <35.159492, 36.414501, 29.052776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527340, 36.569489, 29.078596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138506, -0.166083, -0.976336,
		-0.367581, 0.906798, -0.206400,
		0.919620, 0.387470, 0.064548,
		35.803226, 36.685730, 29.097960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128513, 36.950764, 28.575718>,  <35.159492, 36.414501, 29.052776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128513, 36.950764, 28.575718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504948, 36.824184, 28.623417>,  <35.730808, 36.748238, 28.652037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504948, 36.824184, 28.623417>,  <35.128513, 36.950764, 28.575718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504948, 36.824184, 28.623417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098275, -0.081487, -0.991818,
		0.323575, 0.945104, -0.045588,
		0.941085, -0.316447, 0.119247,
		35.787273, 36.729252, 28.659191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395393, 37.188435, 27.956663>,  <35.128513, 36.950764, 28.575718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395393, 37.188435, 27.956663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675484, 36.936977, 28.092009>,  <35.843536, 36.786102, 28.173216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675484, 36.936977, 28.092009>,  <35.395393, 37.188435, 27.956663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675484, 36.936977, 28.092009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292984, -0.179164, -0.939181,
		0.651036, 0.756772, 0.058728,
		0.700224, -0.628646, 0.338364,
		35.885551, 36.748383, 28.193518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012199, 37.365894, 27.569090>,  <35.395393, 37.188435, 27.956663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012199, 37.365894, 27.569090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098728, 36.999897, 27.705326>,  <36.150646, 36.780300, 27.787067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098728, 36.999897, 27.705326>,  <36.012199, 37.365894, 27.569090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098728, 36.999897, 27.705326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402640, -0.234196, -0.884891,
		0.889431, 0.328553, 0.317751,
		0.216318, -0.914989, 0.340590,
		36.163624, 36.725399, 27.807503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717285, 37.266926, 27.320309>,  <36.012199, 37.365894, 27.569090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717285, 37.266926, 27.320309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559299, 36.907375, 27.396231>,  <36.464508, 36.691647, 27.441784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559299, 36.907375, 27.396231>,  <36.717285, 37.266926, 27.320309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559299, 36.907375, 27.396231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436336, -0.365355, -0.822269,
		0.808463, -0.241950, 0.536514,
		-0.394966, -0.898875, 0.189805,
		36.440811, 36.637714, 27.453173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317314, 36.784813, 27.141993>,  <36.717285, 37.266926, 27.320309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317314, 36.784813, 27.141993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.971832, 36.583363, 27.134357>,  <36.764542, 36.462490, 27.129776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.971832, 36.583363, 27.134357>,  <37.317314, 36.784813, 27.141993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971832, 36.583363, 27.134357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266056, -0.423455, -0.865968,
		0.428043, -0.753023, 0.499736,
		-0.863709, -0.503629, -0.019089,
		36.712719, 36.432274, 27.128630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529819, 36.118477, 27.091671>,  <37.317314, 36.784813, 27.141993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529819, 36.118477, 27.091671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.156906, 36.171761, 26.957144>,  <36.933159, 36.203732, 26.876429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.156906, 36.171761, 26.957144>,  <37.529819, 36.118477, 27.091671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156906, 36.171761, 26.957144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278901, -0.327381, -0.902793,
		-0.230362, -0.935456, 0.268059,
		-0.932281, 0.133207, -0.336316,
		36.877220, 36.211723, 26.856249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478962, 35.545677, 26.571995>,  <37.529819, 36.118477, 27.091671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478962, 35.545677, 26.571995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152653, 35.763790, 26.494869>,  <36.956867, 35.894657, 26.448593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152653, 35.763790, 26.494869>,  <37.478962, 35.545677, 26.571995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152653, 35.763790, 26.494869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148929, -0.124088, -0.981031,
		-0.558866, -0.829016, 0.020019,
		-0.815775, 0.545284, -0.192814,
		36.907921, 35.927376, 26.437025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123245, 35.187157, 26.080269>,  <37.478962, 35.545677, 26.571995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123245, 35.187157, 26.080269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022251, 35.571522, 26.034830>,  <36.961655, 35.802139, 26.007566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022251, 35.571522, 26.034830>,  <37.123245, 35.187157, 26.080269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022251, 35.571522, 26.034830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199285, -0.063240, -0.977899,
		-0.946857, -0.269540, -0.175528,
		-0.252483, 0.960910, -0.113595,
		36.946507, 35.859795, 26.000751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786884, 35.215439, 25.508116>,  <37.123245, 35.187157, 26.080269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786884, 35.215439, 25.508116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.928577, 35.582577, 25.579752>,  <37.013592, 35.802860, 25.622734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.928577, 35.582577, 25.579752>,  <36.786884, 35.215439, 25.508116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928577, 35.582577, 25.579752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325084, 0.058707, -0.943861,
		-0.876836, 0.392564, -0.277582,
		0.354230, 0.917849, 0.179093,
		37.034847, 35.857933, 25.633480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754959, 35.451088, 24.795471>,  <36.786884, 35.215439, 25.508116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754959, 35.451088, 24.795471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965332, 35.724052, 24.998533>,  <37.091557, 35.887829, 25.120371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965332, 35.724052, 24.998533>,  <36.754959, 35.451088, 24.795471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965332, 35.724052, 24.998533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330105, 0.386308, -0.861276,
		-0.783852, 0.620554, -0.022094,
		0.525934, 0.682406, 0.507657,
		37.123112, 35.928776, 25.150829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537395, 36.053864, 24.518284>,  <36.754959, 35.451088, 24.795471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537395, 36.053864, 24.518284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.885410, 36.149227, 24.690889>,  <37.094219, 36.206448, 24.794453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.885410, 36.149227, 24.690889>,  <36.537395, 36.053864, 24.518284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885410, 36.149227, 24.690889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286796, 0.467166, -0.836363,
		-0.400988, 0.851419, 0.338074,
		0.870032, 0.238414, 0.431512,
		37.146420, 36.220753, 24.820343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737389, 36.677296, 24.255320>,  <36.537395, 36.053864, 24.518284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737389, 36.677296, 24.255320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069950, 36.531338, 24.422945>,  <37.269489, 36.443764, 24.523521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069950, 36.531338, 24.422945>,  <36.737389, 36.677296, 24.255320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069950, 36.531338, 24.422945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538127, 0.340752, -0.770913,
		0.138506, 0.866452, 0.479664,
		0.831406, -0.364896, 0.419065,
		37.319370, 36.421867, 24.548664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187992, 37.284698, 24.319649>,  <36.737389, 36.677296, 24.255320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187992, 37.284698, 24.319649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432083, 36.968208, 24.303717>,  <37.578537, 36.778316, 24.294157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432083, 36.968208, 24.303717>,  <37.187992, 37.284698, 24.319649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432083, 36.968208, 24.303717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563783, 0.469041, -0.679816,
		0.556567, 0.392389, 0.732301,
		0.610231, -0.791222, -0.039831,
		37.615150, 36.730843, 24.291767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949013, 37.535072, 24.410452>,  <37.187992, 37.284698, 24.319649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949013, 37.535072, 24.410452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.900246, 37.179836, 24.233171>,  <37.870987, 36.966694, 24.126804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.900246, 37.179836, 24.233171>,  <37.949013, 37.535072, 24.410452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900246, 37.179836, 24.233171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631612, 0.275031, -0.724862,
		0.765639, -0.368302, 0.527400,
		-0.121917, -0.888094, -0.443199,
		37.863670, 36.913406, 24.100212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525452, 37.528328, 24.118082>,  <37.949013, 37.535072, 24.410452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525452, 37.528328, 24.118082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.308495, 37.239220, 23.946775>,  <38.178322, 37.065754, 23.843992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.308495, 37.239220, 23.946775>,  <38.525452, 37.528328, 24.118082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308495, 37.239220, 23.946775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496328, 0.135620, -0.857476,
		0.677840, -0.677650, 0.285172,
		-0.542393, -0.722771, -0.428265,
		38.145775, 37.022388, 23.818296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011288, 37.064266, 23.766666>,  <38.525452, 37.528328, 24.118082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011288, 37.064266, 23.766666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.669041, 37.020241, 23.564358>,  <38.463692, 36.993828, 23.442972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.669041, 37.020241, 23.564358>,  <39.011288, 37.064266, 23.766666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669041, 37.020241, 23.564358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491962, 0.130849, -0.860728,
		0.160922, -0.985273, -0.057805,
		-0.855615, -0.110072, -0.505773,
		38.412357, 36.987225, 23.412626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765285, 36.707436, 24.020418>,  <39.011288, 37.064266, 23.766666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765285, 36.707436, 24.020418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.128040, 36.874828, 24.040136>,  <40.345692, 36.975262, 24.051968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.128040, 36.874828, 24.040136>,  <39.765285, 36.707436, 24.020418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128040, 36.874828, 24.040136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214146, 0.356969, 0.909238,
		0.362920, -0.835124, 0.413347,
		0.906879, 0.418498, 0.049288,
		40.400108, 37.000374, 24.054926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994896, 36.543980, 24.668518>,  <39.765285, 36.707436, 24.020418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994896, 36.543980, 24.668518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.205338, 36.859787, 24.542107>,  <40.331604, 37.049271, 24.466259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.205338, 36.859787, 24.542107>,  <39.994896, 36.543980, 24.668518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205338, 36.859787, 24.542107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043843, 0.396301, 0.917073,
		0.849288, -0.468621, 0.243111,
		0.526105, 0.789518, -0.316028,
		40.363171, 37.096642, 24.447298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484722, 36.748119, 25.225597>,  <39.994896, 36.543980, 24.668518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484722, 36.748119, 25.225597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.462299, 37.079048, 25.002029>,  <40.448845, 37.277607, 24.867889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.462299, 37.079048, 25.002029>,  <40.484722, 36.748119, 25.225597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462299, 37.079048, 25.002029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172578, 0.543346, 0.821579,
		0.983400, 0.142510, 0.112322,
		-0.056054, 0.827325, -0.558921,
		40.445484, 37.327244, 24.834352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858044, 37.182915, 25.610014>,  <40.484722, 36.748119, 25.225597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858044, 37.182915, 25.610014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.654037, 37.416996, 25.357849>,  <40.531631, 37.557446, 25.206551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.654037, 37.416996, 25.357849>,  <40.858044, 37.182915, 25.610014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654037, 37.416996, 25.357849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135880, 0.668883, 0.730843,
		0.849364, 0.458403, -0.261625,
		-0.510017, 0.585202, -0.630413,
		40.501034, 37.592556, 25.168726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113319, 37.796646, 25.713346>,  <40.858044, 37.182915, 25.610014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113319, 37.796646, 25.713346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.742439, 37.839680, 25.569832>,  <40.519913, 37.865501, 25.483723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.742439, 37.839680, 25.569832>,  <41.113319, 37.796646, 25.713346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742439, 37.839680, 25.569832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103456, 0.847044, 0.521357,
		0.360000, 0.520520, -0.774247,
		-0.927199, 0.107588, -0.358787,
		40.464279, 37.871956, 25.462196>
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
