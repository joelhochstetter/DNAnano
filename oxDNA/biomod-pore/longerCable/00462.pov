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
	<24.585890, 34.999981, 35.312271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272209, 35.238670, 35.244221>,  <24.084000, 35.381886, 35.203392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272209, 35.238670, 35.244221>,  <24.585890, 34.999981, 35.312271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272209, 35.238670, 35.244221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009778, 0.262253, 0.964950,
		0.620428, 0.758379, -0.199825,
		-0.784203, 0.596728, -0.170124,
		24.036949, 35.417690, 35.193184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941153, 35.123863, 35.948284>,  <24.585890, 34.999981, 35.312271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941153, 35.123863, 35.948284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204979, 35.053154, 35.656059>,  <25.363276, 35.010727, 35.480724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204979, 35.053154, 35.656059>,  <24.941153, 35.123863, 35.948284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204979, 35.053154, 35.656059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745925, 0.034236, 0.665150,
		-0.092571, -0.983656, 0.154443,
		0.659566, -0.176776, -0.730564,
		25.402849, 35.000122, 35.436890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328690, 34.671410, 36.264008>,  <24.941153, 35.123863, 35.948284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328690, 34.671410, 36.264008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534769, 34.866879, 35.982365>,  <25.658417, 34.984161, 35.813377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534769, 34.866879, 35.982365>,  <25.328690, 34.671410, 36.264008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534769, 34.866879, 35.982365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761280, 0.116482, 0.637875,
		0.393729, -0.864656, -0.312007,
		0.515199, 0.488675, -0.704108,
		25.689329, 35.013481, 35.771133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898657, 34.308636, 36.190350>,  <25.328690, 34.671410, 36.264008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898657, 34.308636, 36.190350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004810, 34.652138, 36.015026>,  <26.068502, 34.858238, 35.909832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004810, 34.652138, 36.015026>,  <25.898657, 34.308636, 36.190350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004810, 34.652138, 36.015026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800758, 0.056880, 0.596282,
		0.536990, -0.509222, -0.672558,
		0.265385, 0.858754, -0.438307,
		26.084425, 34.909763, 35.883533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538361, 34.135590, 35.938255>,  <25.898657, 34.308636, 36.190350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538361, 34.135590, 35.938255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484167, 34.527939, 35.994160>,  <26.451651, 34.763348, 36.027702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484167, 34.527939, 35.994160>,  <26.538361, 34.135590, 35.938255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484167, 34.527939, 35.994160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803186, 0.026138, 0.595155,
		0.580118, 0.192887, -0.791364,
		-0.135482, 0.980873, 0.139761,
		26.443523, 34.822201, 36.036087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981859, 34.535912, 35.498535>,  <26.538361, 34.135590, 35.938255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981859, 34.535912, 35.498535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877207, 34.676128, 35.858238>,  <26.814415, 34.760258, 36.074062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877207, 34.676128, 35.858238>,  <26.981859, 34.535912, 35.498535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877207, 34.676128, 35.858238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936920, -0.131524, 0.323856,
		0.231801, 0.927264, -0.294023,
		-0.261629, 0.350546, 0.899260,
		26.798717, 34.781292, 36.128017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397324, 35.133186, 35.734951>,  <26.981859, 34.535912, 35.498535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397324, 35.133186, 35.734951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288475, 34.925766, 36.059185>,  <27.223166, 34.801311, 36.253727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288475, 34.925766, 36.059185>,  <27.397324, 35.133186, 35.734951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288475, 34.925766, 36.059185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883476, 0.199194, 0.424018,
		-0.381341, 0.831519, 0.403925,
		-0.272120, -0.518553, 0.810588,
		27.206839, 34.770199, 36.302361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408190, 35.581482, 36.304684>,  <27.397324, 35.133186, 35.734951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408190, 35.581482, 36.304684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472351, 35.196716, 36.393215>,  <27.510847, 34.965855, 36.446335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472351, 35.196716, 36.393215>,  <27.408190, 35.581482, 36.304684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472351, 35.196716, 36.393215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889570, 0.238045, 0.389872,
		-0.427710, 0.134350, 0.893876,
		0.160403, -0.961917, 0.221328,
		27.520472, 34.908142, 36.459614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480001, 35.609715, 37.016365>,  <27.408190, 35.581482, 36.304684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480001, 35.609715, 37.016365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667439, 35.286667, 36.873165>,  <27.779900, 35.092838, 36.787243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667439, 35.286667, 36.873165>,  <27.480001, 35.609715, 37.016365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667439, 35.286667, 36.873165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841475, 0.284668, 0.459222,
		-0.268966, -0.516439, 0.812987,
		0.468591, -0.807623, -0.358005,
		27.808016, 35.044380, 36.765762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866951, 35.352184, 37.635147>,  <27.480001, 35.609715, 37.016365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866951, 35.352184, 37.635147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031612, 35.160492, 37.325081>,  <28.130409, 35.045475, 37.139042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031612, 35.160492, 37.325081>,  <27.866951, 35.352184, 37.635147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031612, 35.160492, 37.325081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893347, 0.044006, 0.447206,
		-0.180203, -0.876585, 0.446235,
		0.411651, -0.479231, -0.775165,
		28.155107, 35.016724, 37.092533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286394, 34.821804, 37.977745>,  <27.866951, 35.352184, 37.635147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286394, 34.821804, 37.977745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432550, 34.839878, 37.605843>,  <28.520245, 34.850723, 37.382702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432550, 34.839878, 37.605843>,  <28.286394, 34.821804, 37.977745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432550, 34.839878, 37.605843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920236, 0.132902, 0.368108,
		0.140200, -0.990099, 0.006979,
		0.365391, 0.045187, -0.929757,
		28.542168, 34.853432, 37.326916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633818, 34.173286, 37.776020>,  <28.286394, 34.821804, 37.977745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633818, 34.173286, 37.776020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744442, 34.529449, 37.631416>,  <28.810816, 34.743149, 37.544655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744442, 34.529449, 37.631416>,  <28.633818, 34.173286, 37.776020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744442, 34.529449, 37.631416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906483, -0.116813, 0.405762,
		0.319066, -0.439916, -0.839447,
		0.276559, 0.890409, -0.361505,
		28.827410, 34.796574, 37.522964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419559, 34.049564, 37.515869>,  <28.633818, 34.173286, 37.776020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419559, 34.049564, 37.515869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343029, 34.436745, 37.580940>,  <29.297110, 34.669052, 37.619984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343029, 34.436745, 37.580940>,  <29.419559, 34.049564, 37.515869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343029, 34.436745, 37.580940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926968, 0.123707, 0.354156,
		0.322682, 0.218554, -0.920929,
		-0.191327, 0.967952, 0.162675,
		29.285631, 34.727131, 37.629742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822119, 34.609875, 37.098694>,  <29.419559, 34.049564, 37.515869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822119, 34.609875, 37.098694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718849, 34.774025, 37.448536>,  <29.656887, 34.872513, 37.658443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718849, 34.774025, 37.448536>,  <29.822119, 34.609875, 37.098694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718849, 34.774025, 37.448536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936522, 0.328598, 0.122268,
		-0.237219, 0.850657, -0.469159,
		-0.258173, 0.410374, 0.874609,
		29.641397, 34.897137, 37.710918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897533, 35.298489, 36.831165>,  <29.822119, 34.609875, 37.098694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897533, 35.298489, 36.831165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976835, 35.192944, 37.208752>,  <30.024416, 35.129616, 37.435303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976835, 35.192944, 37.208752>,  <29.897533, 35.298489, 36.831165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976835, 35.192944, 37.208752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746197, 0.665085, 0.029186,
		-0.635519, 0.698599, 0.328746,
		0.198255, -0.263858, 0.943967,
		30.036312, 35.113785, 37.491943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293268, 35.671387, 36.805676>,  <29.897533, 35.298489, 36.831165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293268, 35.671387, 36.805676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203091, 35.317677, 36.969250>,  <29.148985, 35.105450, 37.067394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203091, 35.317677, 36.969250>,  <29.293268, 35.671387, 36.805676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203091, 35.317677, 36.969250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849508, -0.027078, -0.526880,
		0.476981, -0.466178, -0.745095,
		-0.225444, -0.884276, 0.408938,
		29.135458, 35.052395, 37.091930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111042, 35.184078, 36.210636>,  <29.293268, 35.671387, 36.805676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111042, 35.184078, 36.210636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952522, 35.041973, 36.549278>,  <28.857410, 34.956711, 36.752464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952522, 35.041973, 36.549278>,  <29.111042, 35.184078, 36.210636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952522, 35.041973, 36.549278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896185, -0.050683, -0.440776,
		0.199500, -0.933391, -0.298296,
		-0.396298, -0.355264, 0.846602,
		28.833633, 34.935394, 36.803261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726246, 34.480228, 36.021538>,  <29.111042, 35.184078, 36.210636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726246, 34.480228, 36.021538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568354, 34.619682, 36.361572>,  <28.473618, 34.703354, 36.565594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568354, 34.619682, 36.361572>,  <28.726246, 34.480228, 36.021538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568354, 34.619682, 36.361572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898239, -0.341048, -0.277224,
		0.193271, -0.873008, 0.447776,
		-0.394732, 0.348630, 0.850085,
		28.449934, 34.724270, 36.616596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398125, 33.929123, 36.286419>,  <28.726246, 34.480228, 36.021538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398125, 33.929123, 36.286419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225574, 34.267170, 36.412708>,  <28.122044, 34.469997, 36.488483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225574, 34.267170, 36.412708>,  <28.398125, 33.929123, 36.286419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225574, 34.267170, 36.412708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900420, -0.425115, -0.092311,
		0.056207, -0.324107, 0.944349,
		-0.431376, 0.845122, 0.315727,
		28.096161, 34.520706, 36.507427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943548, 33.822880, 36.971031>,  <28.398125, 33.929123, 36.286419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943548, 33.822880, 36.971031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829868, 34.135590, 36.749016>,  <27.761660, 34.323215, 36.615807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829868, 34.135590, 36.749016>,  <27.943548, 33.822880, 36.971031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829868, 34.135590, 36.749016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909710, -0.402681, -0.101369,
		-0.302750, 0.476113, 0.825626,
		-0.284201, 0.781770, -0.555037,
		27.744608, 34.370121, 36.582504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270046, 34.077015, 37.151337>,  <27.943548, 33.822880, 36.971031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270046, 34.077015, 37.151337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329512, 34.199356, 36.775177>,  <27.365191, 34.272762, 36.549480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329512, 34.199356, 36.775177>,  <27.270046, 34.077015, 37.151337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329512, 34.199356, 36.775177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916110, -0.315474, -0.247426,
		-0.372348, 0.898292, 0.233298,
		0.148661, 0.305855, -0.940400,
		27.374109, 34.291111, 36.493057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584015, 34.317478, 37.307472>,  <27.270046, 34.077015, 37.151337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584015, 34.317478, 37.307472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763130, 34.662464, 37.213120>,  <26.870600, 34.869457, 37.156509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763130, 34.662464, 37.213120>,  <26.584015, 34.317478, 37.307472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763130, 34.662464, 37.213120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588641, 0.085777, -0.803831,
		-0.673044, 0.498794, 0.546092,
		0.447788, 0.862465, -0.235879,
		26.897467, 34.921204, 37.142357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113333, 34.914486, 37.215271>,  <26.584015, 34.317478, 37.307472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113333, 34.914486, 37.215271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434790, 35.033997, 37.009399>,  <26.627663, 35.105701, 36.885876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434790, 35.033997, 37.009399>,  <26.113333, 34.914486, 37.215271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434790, 35.033997, 37.009399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582658, 0.219002, -0.782654,
		-0.121120, 0.928855, 0.350082,
		0.803641, 0.298773, -0.514680,
		26.675882, 35.123627, 36.854996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870548, 35.606174, 36.785522>,  <26.113333, 34.914486, 37.215271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870548, 35.606174, 36.785522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196682, 35.445110, 36.619102>,  <26.392363, 35.348473, 36.519253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196682, 35.445110, 36.619102>,  <25.870548, 35.606174, 36.785522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196682, 35.445110, 36.619102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387270, 0.154906, -0.908860,
		0.430408, 0.902148, -0.029637,
		0.815335, -0.402658, -0.416048,
		26.441282, 35.324314, 36.494289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135740, 36.089191, 36.236820>,  <25.870548, 35.606174, 36.785522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135740, 36.089191, 36.236820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271975, 35.718002, 36.176327>,  <26.353714, 35.495289, 36.140030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271975, 35.718002, 36.176327>,  <26.135740, 36.089191, 36.236820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271975, 35.718002, 36.176327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295955, 0.046863, -0.954052,
		0.892420, 0.369694, -0.258677,
		0.340584, -0.927971, -0.151235,
		26.374149, 35.439610, 36.130955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431101, 36.104973, 35.594406>,  <26.135740, 36.089191, 36.236820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431101, 36.104973, 35.594406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325043, 35.730358, 35.686134>,  <26.261408, 35.505589, 35.741173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325043, 35.730358, 35.686134>,  <26.431101, 36.104973, 35.594406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325043, 35.730358, 35.686134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476241, -0.079599, -0.875705,
		0.838387, -0.341402, -0.424914,
		-0.265145, -0.936541, 0.229324,
		26.245499, 35.449394, 35.754932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271690, 35.764610, 34.868511>,  <26.431101, 36.104973, 35.594406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271690, 35.764610, 34.868511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101974, 35.517811, 35.133625>,  <26.000145, 35.369732, 35.292694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101974, 35.517811, 35.133625>,  <26.271690, 35.764610, 34.868511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101974, 35.517811, 35.133625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675025, -0.272368, -0.685680,
		0.603589, -0.738324, -0.300929,
		-0.424290, -0.617004, 0.662785,
		25.974688, 35.332710, 35.332462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479172, 36.468319, 34.986935>,  <26.271690, 35.764610, 34.868511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479172, 36.468319, 34.986935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640932, 36.773300, 35.188972>,  <26.737989, 36.956291, 35.310196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640932, 36.773300, 35.188972>,  <26.479172, 36.468319, 34.986935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640932, 36.773300, 35.188972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862598, -0.134440, -0.487699,
		-0.303945, 0.632918, -0.712062,
		0.404403, 0.762457, 0.505092,
		26.762253, 37.002037, 35.340500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851393, 36.827393, 34.526218>,  <26.479172, 36.468319, 34.986935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851393, 36.827393, 34.526218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019743, 36.891930, 34.883282>,  <27.120752, 36.930653, 35.097519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019743, 36.891930, 34.883282>,  <26.851393, 36.827393, 34.526218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019743, 36.891930, 34.883282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897879, 0.066003, -0.435268,
		-0.129147, 0.984688, -0.117090,
		0.420874, 0.161346, 0.892655,
		27.146006, 36.940334, 35.151077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455631, 36.819225, 34.730488>,  <26.851393, 36.827393, 34.526218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455631, 36.819225, 34.730488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644991, 37.010956, 34.434883>,  <27.758608, 37.125992, 34.257519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644991, 37.010956, 34.434883>,  <27.455631, 36.819225, 34.730488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644991, 37.010956, 34.434883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658979, 0.363996, 0.658220,
		0.584498, -0.798596, -0.143548,
		0.473401, 0.479324, -0.739013,
		27.787012, 37.154755, 34.213181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237921, 36.626156, 34.661095>,  <27.455631, 36.819225, 34.730488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237921, 36.626156, 34.661095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179979, 36.996052, 34.520309>,  <28.145214, 37.217987, 34.435837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179979, 36.996052, 34.520309>,  <28.237921, 36.626156, 34.661095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179979, 36.996052, 34.520309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670074, 0.353412, 0.652765,
		0.728024, -0.141287, -0.670835,
		-0.144853, 0.924737, -0.351965,
		28.136524, 37.273472, 34.414719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872696, 36.936741, 34.300869>,  <28.237921, 36.626156, 34.661095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872696, 36.936741, 34.300869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619442, 37.183983, 34.487240>,  <28.467489, 37.332329, 34.599064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619442, 37.183983, 34.487240>,  <28.872696, 36.936741, 34.300869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619442, 37.183983, 34.487240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773321, 0.479106, 0.415250,
		0.033436, 0.623223, -0.781329,
		-0.633133, 0.618103, 0.465932,
		28.429502, 37.369415, 34.627018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225136, 37.535706, 34.235165>,  <28.872696, 36.936741, 34.300869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225136, 37.535706, 34.235165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962969, 37.630501, 34.522011>,  <28.805668, 37.687378, 34.694118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962969, 37.630501, 34.522011>,  <29.225136, 37.535706, 34.235165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962969, 37.630501, 34.522011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716968, 0.493751, 0.492105,
		-0.237454, 0.836686, -0.493530,
		-0.655418, 0.236992, 0.717120,
		28.766344, 37.701599, 34.737148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416529, 38.178185, 34.521141>,  <29.225136, 37.535706, 34.235165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416529, 38.178185, 34.521141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182636, 38.041866, 34.815609>,  <29.042301, 37.960075, 34.992290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182636, 38.041866, 34.815609>,  <29.416529, 38.178185, 34.521141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182636, 38.041866, 34.815609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625587, 0.388301, 0.676655,
		-0.516459, 0.856200, -0.013852,
		-0.584731, -0.340799, 0.736170,
		29.007217, 37.939625, 35.036461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486311, 38.760658, 35.022209>,  <29.416529, 38.178185, 34.521141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486311, 38.760658, 35.022209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348104, 38.456177, 35.241734>,  <29.265181, 38.273487, 35.373447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348104, 38.456177, 35.241734>,  <29.486311, 38.760658, 35.022209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348104, 38.456177, 35.241734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325545, 0.451281, 0.830883,
		-0.880135, 0.465747, 0.091879,
		-0.345518, -0.761199, 0.548810,
		29.244450, 38.227818, 35.406376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043745, 39.118069, 35.468513>,  <29.486311, 38.760658, 35.022209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043745, 39.118069, 35.468513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906279, 38.773968, 35.619167>,  <28.823799, 38.567505, 35.709560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906279, 38.773968, 35.619167>,  <29.043745, 39.118069, 35.468513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906279, 38.773968, 35.619167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616531, 0.095842, 0.781475,
		-0.708367, 0.500772, 0.497438,
		-0.343665, -0.860257, 0.376633,
		28.803179, 38.515892, 35.732159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766592, 39.185539, 36.153809>,  <29.043745, 39.118069, 35.468513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766592, 39.185539, 36.153809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936419, 38.830566, 36.082031>,  <29.038315, 38.617580, 36.038963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936419, 38.830566, 36.082031>,  <28.766592, 39.185539, 36.153809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936419, 38.830566, 36.082031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524590, 0.079581, 0.847628,
		-0.737935, -0.454008, 0.499328,
		0.424567, -0.887437, -0.179442,
		29.063789, 38.564335, 36.028198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667536, 38.818130, 36.708092>,  <28.766592, 39.185539, 36.153809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667536, 38.818130, 36.708092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986748, 38.642189, 36.543324>,  <29.178274, 38.536625, 36.444462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986748, 38.642189, 36.543324>,  <28.667536, 38.818130, 36.708092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986748, 38.642189, 36.543324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508461, 0.124586, 0.852024,
		-0.323449, -0.889385, 0.323072,
		0.798028, -0.439856, -0.411920,
		29.226156, 38.510231, 36.419746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977470, 38.353657, 37.119381>,  <28.667536, 38.818130, 36.708092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977470, 38.353657, 37.119381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233746, 38.527992, 36.866535>,  <29.387510, 38.632591, 36.714828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233746, 38.527992, 36.866535>,  <28.977470, 38.353657, 37.119381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233746, 38.527992, 36.866535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344496, 0.572581, 0.743958,
		0.686180, -0.694404, 0.216702,
		0.640688, 0.435836, -0.632113,
		29.425953, 38.658745, 36.676903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621695, 38.315426, 37.439804>,  <28.977470, 38.353657, 37.119381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621695, 38.315426, 37.439804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619114, 38.622318, 37.183270>,  <29.617565, 38.806454, 37.029346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619114, 38.622318, 37.183270>,  <29.621695, 38.315426, 37.439804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619114, 38.622318, 37.183270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321553, 0.608882, 0.725166,
		0.946869, -0.201545, -0.250635,
		-0.006454, 0.767230, -0.641339,
		29.617178, 38.852486, 36.990868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374826, 38.785213, 37.427052>,  <29.621695, 38.315426, 37.439804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374826, 38.785213, 37.427052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062860, 39.010998, 37.318890>,  <29.875681, 39.146469, 37.253994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062860, 39.010998, 37.318890>,  <30.374826, 38.785213, 37.427052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062860, 39.010998, 37.318890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247603, 0.675049, 0.694983,
		0.574827, 0.475074, -0.666242,
		-0.779914, 0.564459, -0.270406,
		29.828886, 39.180336, 37.237766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329086, 38.287071, 36.772495>,  <30.374826, 38.785213, 37.427052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329086, 38.287071, 36.772495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038126, 38.049473, 36.909931>,  <29.863550, 37.906914, 36.992393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038126, 38.049473, 36.909931>,  <30.329086, 38.287071, 36.772495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038126, 38.049473, 36.909931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546674, 0.198966, -0.813364,
		0.414775, -0.779472, -0.469452,
		-0.727399, -0.594000, 0.343591,
		29.819906, 37.871273, 37.013008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399693, 38.522850, 36.019638>,  <30.329086, 38.287071, 36.772495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399693, 38.522850, 36.019638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123848, 38.406120, 36.284748>,  <29.958342, 38.336082, 36.443813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123848, 38.406120, 36.284748>,  <30.399693, 38.522850, 36.019638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123848, 38.406120, 36.284748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675965, -0.068970, -0.733699,
		0.259827, -0.953981, -0.149704,
		-0.689610, -0.291829, 0.662778,
		29.916965, 38.318573, 36.483582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172554, 37.785610, 35.904560>,  <30.399693, 38.522850, 36.019638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172554, 37.785610, 35.904560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889801, 38.019093, 36.064362>,  <29.720148, 38.159184, 36.160240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889801, 38.019093, 36.064362>,  <30.172554, 37.785610, 35.904560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889801, 38.019093, 36.064362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629740, -0.262161, -0.731231,
		-0.322088, -0.768480, 0.552900,
		-0.706885, 0.583704, 0.399503,
		29.677736, 38.194206, 36.184212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651697, 37.398510, 35.919323>,  <30.172554, 37.785610, 35.904560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651697, 37.398510, 35.919323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474167, 37.756882, 35.926552>,  <29.367649, 37.971905, 35.930889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474167, 37.756882, 35.926552>,  <29.651697, 37.398510, 35.919323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474167, 37.756882, 35.926552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594583, -0.279336, -0.753951,
		-0.670440, -0.345368, 0.656681,
		-0.443826, 0.895931, 0.018071,
		29.341019, 38.025661, 35.931973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850843, 37.197189, 35.982410>,  <29.651697, 37.398510, 35.919323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850843, 37.197189, 35.982410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928970, 37.558258, 35.829033>,  <28.975847, 37.774899, 35.737007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928970, 37.558258, 35.829033>,  <28.850843, 37.197189, 35.982410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928970, 37.558258, 35.829033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629675, -0.184329, -0.754673,
		-0.751904, 0.388848, 0.532389,
		0.195319, 0.902674, -0.383446,
		28.987566, 37.829060, 35.714001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226183, 37.660114, 36.009418>,  <28.850843, 37.197189, 35.982410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226183, 37.660114, 36.009418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465561, 37.750496, 35.701962>,  <28.609188, 37.804726, 35.517487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465561, 37.750496, 35.701962>,  <28.226183, 37.660114, 36.009418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465561, 37.750496, 35.701962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747059, -0.189205, -0.637263,
		-0.289421, 0.955588, 0.055569,
		0.598447, 0.225950, -0.768640,
		28.645096, 37.818279, 35.471371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779430, 38.147465, 35.569000>,  <28.226183, 37.660114, 36.009418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779430, 38.147465, 35.569000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061762, 37.973820, 35.345089>,  <28.231161, 37.869633, 35.210743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061762, 37.973820, 35.345089>,  <27.779430, 38.147465, 35.569000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061762, 37.973820, 35.345089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670370, -0.153962, -0.725879,
		0.228928, 0.887605, -0.399687,
		0.705830, -0.434112, -0.559777,
		28.273510, 37.843586, 35.177155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771130, 38.403587, 34.888649>,  <27.779430, 38.147465, 35.569000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771130, 38.403587, 34.888649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979652, 38.066277, 34.836315>,  <28.104767, 37.863888, 34.804916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979652, 38.066277, 34.836315>,  <27.771130, 38.403587, 34.888649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979652, 38.066277, 34.836315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537533, -0.205408, -0.817842,
		0.662795, 0.496675, -0.560372,
		0.521307, -0.843280, -0.130836,
		28.136044, 37.813293, 34.797066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149168, 38.623528, 35.199104>,  <27.771130, 38.403587, 34.888649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149168, 38.623528, 35.199104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029646, 38.342113, 34.941185>,  <26.957933, 38.173267, 34.786434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029646, 38.342113, 34.941185>,  <27.149168, 38.623528, 35.199104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029646, 38.342113, 34.941185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380882, 0.707433, -0.595372,
		0.875011, 0.067690, -0.479347,
		-0.298805, -0.703532, -0.644793,
		26.940004, 38.131054, 34.747746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239513, 39.353397, 34.852695>,  <27.149168, 38.623528, 35.199104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239513, 39.353397, 34.852695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124826, 39.688828, 35.037987>,  <27.056015, 39.890087, 35.149162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124826, 39.688828, 35.037987>,  <27.239513, 39.353397, 34.852695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124826, 39.688828, 35.037987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497264, -0.543558, 0.676220,
		0.818854, -0.036461, 0.572843,
		-0.286718, 0.838580, 0.463225,
		27.038811, 39.940403, 35.176952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231127, 39.267303, 35.577312>,  <27.239513, 39.353397, 34.852695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231127, 39.267303, 35.577312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949390, 39.544819, 35.517227>,  <26.780348, 39.711327, 35.481174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949390, 39.544819, 35.517227>,  <27.231127, 39.267303, 35.577312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949390, 39.544819, 35.517227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638102, -0.526088, 0.562190,
		0.311013, 0.491826, 0.813251,
		-0.704341, 0.693786, -0.150216,
		26.738089, 39.752956, 35.472164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102123, 39.563240, 36.218456>,  <27.231127, 39.267303, 35.577312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102123, 39.563240, 36.218456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758661, 39.608398, 36.018467>,  <26.552584, 39.635494, 35.898476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758661, 39.608398, 36.018467>,  <27.102123, 39.563240, 36.218456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758661, 39.608398, 36.018467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496225, -0.427386, 0.755713,
		-0.128362, 0.896992, 0.422999,
		-0.858653, 0.112898, -0.499970,
		26.501066, 39.642269, 35.868477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707348, 39.697227, 36.482170>,  <27.102123, 39.563240, 36.218456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707348, 39.697227, 36.482170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100155, 39.630367, 36.447060>,  <28.335838, 39.590252, 36.425995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100155, 39.630367, 36.447060>,  <27.707348, 39.697227, 36.482170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100155, 39.630367, 36.447060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022981, 0.567291, -0.823197,
		0.187396, 0.806375, 0.560930,
		0.982016, -0.167154, -0.087777,
		28.394760, 39.580219, 36.420727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033758, 40.286369, 36.485619>,  <27.707348, 39.697227, 36.482170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033758, 40.286369, 36.485619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310783, 40.052185, 36.317051>,  <28.476999, 39.911674, 36.215912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310783, 40.052185, 36.317051>,  <28.033758, 40.286369, 36.485619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310783, 40.052185, 36.317051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044247, 0.617579, -0.785263,
		0.719998, 0.525198, 0.453618,
		0.692564, -0.585460, -0.421417,
		28.518553, 39.876549, 36.190624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773096, 40.679131, 36.258743>,  <28.033758, 40.286369, 36.485619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773096, 40.679131, 36.258743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682190, 40.373817, 36.016838>,  <28.627645, 40.190628, 35.871693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682190, 40.373817, 36.016838>,  <28.773096, 40.679131, 36.258743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682190, 40.373817, 36.016838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164592, 0.581977, -0.796374,
		0.959822, -0.280530, -0.006633,
		-0.227267, -0.763286, -0.604768,
		28.614010, 40.144833, 35.835407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370478, 40.389904, 35.876637>,  <28.773096, 40.679131, 36.258743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370478, 40.389904, 35.876637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009434, 40.387852, 35.704468>,  <28.792807, 40.386620, 35.601166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009434, 40.387852, 35.704468>,  <29.370478, 40.389904, 35.876637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009434, 40.387852, 35.704468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396038, 0.381888, -0.835054,
		0.168661, -0.924194, -0.342664,
		-0.902611, -0.005133, -0.430426,
		28.738651, 40.386311, 35.575340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089918, 40.020737, 35.121559>,  <29.370478, 40.389904, 35.876637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089918, 40.020737, 35.121559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984598, 40.403412, 35.171242>,  <28.921406, 40.633015, 35.201050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984598, 40.403412, 35.171242>,  <29.089918, 40.020737, 35.121559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984598, 40.403412, 35.171242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107270, 0.156981, -0.981759,
		-0.958732, -0.245173, -0.143957,
		-0.263299, 0.956686, 0.124203,
		28.905609, 40.690418, 35.208504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587223, 40.067196, 34.620945>,  <29.089918, 40.020737, 35.121559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587223, 40.067196, 34.620945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774887, 40.409786, 34.707047>,  <28.887486, 40.615341, 34.758709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774887, 40.409786, 34.707047>,  <28.587223, 40.067196, 34.620945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774887, 40.409786, 34.707047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211532, 0.127664, -0.968997,
		-0.857404, 0.500150, -0.121277,
		0.469162, 0.856476, 0.215257,
		28.915636, 40.666729, 34.771622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308508, 40.595013, 34.200726>,  <28.587223, 40.067196, 34.620945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308508, 40.595013, 34.200726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650570, 40.773731, 34.305859>,  <28.855806, 40.880962, 34.368938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650570, 40.773731, 34.305859>,  <28.308508, 40.595013, 34.200726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650570, 40.773731, 34.305859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123835, 0.316269, -0.940552,
		-0.503363, 0.836866, 0.215130,
		0.855155, 0.446799, 0.262831,
		28.907116, 40.907772, 34.384708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406355, 40.926174, 33.441227>,  <28.308508, 40.595013, 34.200726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406355, 40.926174, 33.441227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734465, 40.894142, 33.667759>,  <28.931332, 40.874924, 33.803680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734465, 40.894142, 33.667759>,  <28.406355, 40.926174, 33.441227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734465, 40.894142, 33.667759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565959, -0.029510, -0.823905,
		0.082693, 0.996351, 0.021117,
		0.820276, -0.080082, 0.566334,
		28.980547, 40.870117, 33.837658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993502, 41.472759, 33.159008>,  <28.406355, 40.926174, 33.441227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993502, 41.472759, 33.159008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106274, 41.139267, 33.348915>,  <29.173937, 40.939171, 33.462860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106274, 41.139267, 33.348915>,  <28.993502, 41.472759, 33.159008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106274, 41.139267, 33.348915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700487, -0.159276, -0.695664,
		0.655616, 0.528700, 0.539113,
		0.281930, -0.833731, 0.474772,
		29.190853, 40.889149, 33.491348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693201, 41.447071, 33.206978>,  <28.993502, 41.472759, 33.159008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693201, 41.447071, 33.206978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552053, 41.073486, 33.229630>,  <29.467365, 40.849335, 33.243221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552053, 41.073486, 33.229630>,  <29.693201, 41.447071, 33.206978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552053, 41.073486, 33.229630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658041, -0.290736, -0.694590,
		0.665182, -0.207836, 0.717174,
		-0.352869, -0.933958, 0.056628,
		29.446194, 40.793301, 33.246616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182463, 40.942719, 33.250088>,  <29.693201, 41.447071, 33.206978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182463, 40.942719, 33.250088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912603, 40.738995, 33.036373>,  <29.750689, 40.616760, 32.908146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912603, 40.738995, 33.036373>,  <30.182463, 40.942719, 33.250088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912603, 40.738995, 33.036373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698434, -0.206257, -0.685308,
		0.238834, -0.835502, 0.494869,
		-0.674647, -0.509308, -0.534282,
		29.710209, 40.586201, 32.876087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532724, 40.295860, 32.964661>,  <30.182463, 40.942719, 33.250088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532724, 40.295860, 32.964661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203760, 40.357231, 32.745537>,  <30.006382, 40.394054, 32.614063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203760, 40.357231, 32.745537>,  <30.532724, 40.295860, 32.964661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203760, 40.357231, 32.745537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525306, -0.164843, -0.834794,
		-0.218383, -0.974313, 0.054972,
		-0.822413, 0.153428, -0.547812,
		29.957037, 40.403259, 32.581192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634665, 40.096615, 32.298923>,  <30.532724, 40.295860, 32.964661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634665, 40.096615, 32.298923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274420, 40.240108, 32.200771>,  <30.058273, 40.326202, 32.141880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274420, 40.240108, 32.200771>,  <30.634665, 40.096615, 32.298923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274420, 40.240108, 32.200771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236376, -0.069491, -0.969173,
		-0.364723, -0.930851, -0.022211,
		-0.900613, 0.358730, -0.245376,
		30.004236, 40.347729, 32.127159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279549, 39.630760, 31.983627>,  <30.634665, 40.096615, 32.298923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279549, 39.630760, 31.983627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164913, 39.985477, 31.838598>,  <30.096132, 40.198307, 31.751581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164913, 39.985477, 31.838598>,  <30.279549, 39.630760, 31.983627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164913, 39.985477, 31.838598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249015, -0.296493, -0.922000,
		-0.925127, -0.354519, -0.135855,
		-0.286586, 0.886797, -0.362574,
		30.078938, 40.251518, 31.729826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746708, 39.696938, 31.397633>,  <30.279549, 39.630760, 31.983627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746708, 39.696938, 31.397633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005531, 39.999031, 31.355812>,  <30.160826, 40.180286, 31.330721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005531, 39.999031, 31.355812>,  <29.746708, 39.696938, 31.397633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005531, 39.999031, 31.355812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203454, -0.303187, -0.930959,
		-0.734792, 0.581116, -0.349836,
		0.647061, 0.755236, -0.104549,
		30.199650, 40.225601, 31.324448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475285, 40.085342, 30.871939>,  <29.746708, 39.696938, 31.397633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475285, 40.085342, 30.871939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866888, 40.161026, 30.902233>,  <30.101851, 40.206436, 30.920410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866888, 40.161026, 30.902233>,  <29.475285, 40.085342, 30.871939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866888, 40.161026, 30.902233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143160, -0.373938, -0.916338,
		-0.145062, 0.907948, -0.393177,
		0.979011, 0.189213, 0.075738,
		30.160591, 40.217789, 30.924955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681856, 40.360889, 30.200342>,  <29.475285, 40.085342, 30.871939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681856, 40.360889, 30.200342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021641, 40.223083, 30.360203>,  <30.225512, 40.140400, 30.456120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021641, 40.223083, 30.360203>,  <29.681856, 40.360889, 30.200342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021641, 40.223083, 30.360203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202373, -0.486767, -0.849767,
		0.487297, 0.802723, -0.343769,
		0.849463, -0.344519, 0.399649,
		30.276480, 40.119728, 30.480097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066620, 40.288090, 29.614965>,  <29.681856, 40.360889, 30.200342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066620, 40.288090, 29.614965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244631, 40.081474, 29.907578>,  <30.351437, 39.957504, 30.083145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244631, 40.081474, 29.907578>,  <30.066620, 40.288090, 29.614965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244631, 40.081474, 29.907578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537812, -0.499002, -0.679526,
		0.716037, 0.695834, 0.055732,
		0.445027, -0.516539, 0.731532,
		30.378139, 39.926514, 30.127037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816942, 40.568672, 29.630320>,  <30.066620, 40.288090, 29.614965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816942, 40.568672, 29.630320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753586, 40.191048, 29.746017>,  <30.715572, 39.964474, 29.815435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753586, 40.191048, 29.746017>,  <30.816942, 40.568672, 29.630320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753586, 40.191048, 29.746017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451444, -0.329771, -0.829126,
		0.878129, -0.000749, 0.478424,
		-0.158391, -0.944061, 0.289244,
		30.706068, 39.907829, 29.832790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344774, 40.292385, 29.289856>,  <30.816942, 40.568672, 29.630320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344774, 40.292385, 29.289856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122963, 39.975178, 29.390753>,  <30.989876, 39.784855, 29.451290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122963, 39.975178, 29.390753>,  <31.344774, 40.292385, 29.289856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122963, 39.975178, 29.390753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392654, -0.516592, -0.760892,
		0.733704, -0.322893, 0.597845,
		-0.554528, -0.793015, 0.252240,
		30.956604, 39.737274, 29.466425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773685, 39.865608, 29.137028>,  <31.344774, 40.292385, 29.289856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773685, 39.865608, 29.137028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443604, 39.643185, 29.176693>,  <31.245554, 39.509731, 29.200493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443604, 39.643185, 29.176693>,  <31.773685, 39.865608, 29.137028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443604, 39.643185, 29.176693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123294, -0.348663, -0.929103,
		0.551212, -0.754474, 0.356277,
		-0.825205, -0.556060, 0.099165,
		31.196041, 39.476368, 29.206442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975361, 39.160622, 29.013769>,  <31.773685, 39.865608, 29.137028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975361, 39.160622, 29.013769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580528, 39.172810, 28.950853>,  <31.343628, 39.180122, 28.913105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580528, 39.172810, 28.950853>,  <31.975361, 39.160622, 29.013769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580528, 39.172810, 28.950853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135141, -0.368963, -0.919567,
		-0.086051, -0.928945, 0.360079,
		-0.987083, 0.030468, -0.157288,
		31.284403, 39.181950, 28.903667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834265, 38.574619, 28.586931>,  <31.975361, 39.160622, 29.013769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834265, 38.574619, 28.586931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526054, 38.822933, 28.529083>,  <31.341127, 38.971920, 28.494375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526054, 38.822933, 28.529083>,  <31.834265, 38.574619, 28.586931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526054, 38.822933, 28.529083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098094, -0.108694, -0.989223,
		-0.629814, -0.776409, 0.022856,
		-0.770527, 0.620785, -0.144618,
		31.294897, 39.009171, 28.485699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382801, 38.261806, 28.149708>,  <31.834265, 38.574619, 28.586931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382801, 38.261806, 28.149708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264553, 38.642792, 28.120235>,  <31.193605, 38.871384, 28.102552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264553, 38.642792, 28.120235>,  <31.382801, 38.261806, 28.149708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264553, 38.642792, 28.120235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011062, -0.073708, -0.997218,
		-0.955242, -0.295611, 0.011253,
		-0.295619, 0.952460, -0.073679,
		31.175867, 38.928532, 28.098131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833427, 38.323772, 27.753702>,  <31.382801, 38.261806, 28.149708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833427, 38.323772, 27.753702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953968, 38.703987, 27.723593>,  <31.026293, 38.932117, 27.705526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953968, 38.703987, 27.723593>,  <30.833427, 38.323772, 27.753702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953968, 38.703987, 27.723593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060184, -0.097747, -0.993390,
		-0.951613, 0.294828, -0.086663,
		0.301350, 0.950538, -0.075273,
		31.044373, 38.989147, 27.701012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457186, 38.665108, 27.059095>,  <30.833427, 38.323772, 27.753702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457186, 38.665108, 27.059095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778070, 38.896523, 27.118088>,  <30.970602, 39.035370, 27.153484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778070, 38.896523, 27.118088>,  <30.457186, 38.665108, 27.059095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778070, 38.896523, 27.118088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014777, 0.266188, -0.963808,
		-0.596856, 0.770999, 0.222089,
		0.802212, 0.578537, 0.147483,
		31.018734, 39.070084, 27.162333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353235, 39.237938, 26.649105>,  <30.457186, 38.665108, 27.059095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353235, 39.237938, 26.649105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744913, 39.220612, 26.728405>,  <30.979919, 39.210217, 26.775986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744913, 39.220612, 26.728405>,  <30.353235, 39.237938, 26.649105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744913, 39.220612, 26.728405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202884, 0.188956, -0.960798,
		0.004159, 0.981030, 0.193813,
		0.979194, -0.043318, 0.198249,
		31.038671, 39.207615, 26.787880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603209, 39.734184, 26.235142>,  <30.353235, 39.237938, 26.649105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603209, 39.734184, 26.235142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926157, 39.517296, 26.328220>,  <31.119926, 39.387161, 26.384068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926157, 39.517296, 26.328220>,  <30.603209, 39.734184, 26.235142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926157, 39.517296, 26.328220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268157, -0.014101, -0.963272,
		0.525586, 0.840118, 0.134016,
		0.807373, -0.542220, 0.232695,
		31.168369, 39.354630, 26.398029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119747, 40.061554, 25.869383>,  <30.603209, 39.734184, 26.235142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119747, 40.061554, 25.869383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286139, 39.716717, 25.985149>,  <31.385973, 39.509815, 26.054609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286139, 39.716717, 25.985149>,  <31.119747, 40.061554, 25.869383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286139, 39.716717, 25.985149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264434, -0.189832, -0.945536,
		0.870079, 0.469853, 0.149000,
		0.415978, -0.862091, 0.289414,
		31.410933, 39.458088, 26.071974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789679, 40.044178, 25.634100>,  <31.119747, 40.061554, 25.869383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789679, 40.044178, 25.634100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667076, 39.667446, 25.689238>,  <31.593513, 39.441406, 25.722321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667076, 39.667446, 25.689238>,  <31.789679, 40.044178, 25.634100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667076, 39.667446, 25.689238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033244, -0.134136, -0.990405,
		0.951287, -0.308150, 0.009804,
		-0.306508, -0.941834, 0.137846,
		31.575123, 39.384895, 25.730591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294193, 39.692318, 25.316458>,  <31.789679, 40.044178, 25.634100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294193, 39.692318, 25.316458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958231, 39.477070, 25.344709>,  <31.756655, 39.347919, 25.361660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958231, 39.477070, 25.344709>,  <32.294193, 39.692318, 25.316458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958231, 39.477070, 25.344709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105295, 0.033901, -0.993863,
		0.532426, -0.842184, -0.085135,
		-0.839902, -0.538123, 0.070628,
		31.706261, 39.315632, 25.365898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404659, 39.214985, 24.859179>,  <32.294193, 39.692318, 25.316458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404659, 39.214985, 24.859179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008617, 39.218636, 24.915178>,  <31.770990, 39.220825, 24.948778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008617, 39.218636, 24.915178>,  <32.404659, 39.214985, 24.859179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008617, 39.218636, 24.915178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140075, -0.007929, -0.990109,
		-0.007929, -0.999927, 0.009129,
		0.990109, -0.009129, -0.140002,
		31.711584, 39.221375, 24.957178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164364, 38.654831, 24.452452>,  <32.404659, 39.214985, 24.859179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164364, 38.654831, 24.452452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851053, 38.898186, 24.503586>,  <31.663067, 39.044197, 24.534266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851053, 38.898186, 24.503586>,  <32.164364, 38.654831, 24.452452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851053, 38.898186, 24.503586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186946, -0.034397, -0.981768,
		-0.592896, -0.792896, 0.140678,
		-0.783278, 0.608386, 0.127835,
		31.616070, 39.080700, 24.541937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712080, 38.423092, 23.966694>,  <32.164364, 38.654831, 24.452452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712080, 38.423092, 23.966694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570705, 38.788197, 24.048616>,  <31.485880, 39.007259, 24.097771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570705, 38.788197, 24.048616>,  <31.712080, 38.423092, 23.966694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570705, 38.788197, 24.048616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238509, 0.123775, -0.963220,
		-0.904542, -0.389285, 0.173956,
		-0.353436, 0.912763, 0.204808,
		31.464674, 39.062027, 24.110058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019405, 38.404945, 23.626600>,  <31.712080, 38.423092, 23.966694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019405, 38.404945, 23.626600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126062, 38.783276, 23.700695>,  <31.190056, 39.010273, 23.745152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126062, 38.783276, 23.700695>,  <31.019405, 38.404945, 23.626600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126062, 38.783276, 23.700695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209033, 0.244374, -0.946883,
		-0.940855, 0.213757, 0.262869,
		0.266642, 0.945827, 0.185238,
		31.206055, 39.067024, 23.756266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548241, 38.764183, 23.261171>,  <31.019405, 38.404945, 23.626600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548241, 38.764183, 23.261171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841284, 39.026863, 23.332769>,  <31.017109, 39.184471, 23.375729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841284, 39.026863, 23.332769>,  <30.548241, 38.764183, 23.261171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841284, 39.026863, 23.332769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148993, 0.411317, -0.899233,
		-0.664146, 0.632114, 0.399177,
		0.732606, 0.656696, 0.178994,
		31.061066, 39.223873, 23.386467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293858, 39.500534, 23.012428>,  <30.548241, 38.764183, 23.261171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293858, 39.500534, 23.012428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692688, 39.479881, 22.989880>,  <30.931986, 39.467487, 22.976351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692688, 39.479881, 22.989880>,  <30.293858, 39.500534, 23.012428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692688, 39.479881, 22.989880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034408, 0.355359, -0.934096,
		0.068263, 0.933303, 0.352543,
		0.997074, -0.051634, -0.056371,
		30.991810, 39.464390, 22.972969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491371, 40.105034, 22.665146>,  <30.293858, 39.500534, 23.012428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491371, 40.105034, 22.665146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811546, 39.871609, 22.610380>,  <31.003653, 39.731552, 22.577520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811546, 39.871609, 22.610380>,  <30.491371, 40.105034, 22.665146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811546, 39.871609, 22.610380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011946, 0.212840, -0.977014,
		0.599295, 0.783676, 0.163394,
		0.800439, -0.583568, -0.136915,
		31.051678, 39.696537, 22.569305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984201, 40.506969, 22.239449>,  <30.491371, 40.105034, 22.665146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984201, 40.506969, 22.239449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106440, 40.127392, 22.208178>,  <31.179783, 39.899643, 22.189415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106440, 40.127392, 22.208178>,  <30.984201, 40.506969, 22.239449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106440, 40.127392, 22.208178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175122, 0.136720, -0.975008,
		0.935918, 0.284268, 0.207962,
		0.305596, -0.948946, -0.078177,
		31.198118, 39.842709, 22.184725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545626, 40.497093, 21.797112>,  <30.984201, 40.506969, 22.239449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545626, 40.497093, 21.797112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404423, 40.123661, 21.772417>,  <31.319700, 39.899601, 21.757601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404423, 40.123661, 21.772417>,  <31.545626, 40.497093, 21.797112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404423, 40.123661, 21.772417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425857, -0.101574, -0.899071,
		0.833085, -0.343669, 0.433428,
		-0.353008, -0.933581, -0.061734,
		31.298521, 39.843586, 21.753897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157188, 40.028751, 21.672598>,  <31.545626, 40.497093, 21.797112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157188, 40.028751, 21.672598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835489, 39.814022, 21.570610>,  <31.642471, 39.685184, 21.509418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835489, 39.814022, 21.570610>,  <32.157188, 40.028751, 21.672598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835489, 39.814022, 21.570610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430448, -0.230371, -0.872722,
		0.409762, -0.811633, 0.416350,
		-0.804245, -0.536825, -0.254968,
		31.594215, 39.652973, 21.494120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476299, 39.286716, 21.461128>,  <32.157188, 40.028751, 21.672598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476299, 39.286716, 21.461128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113293, 39.355972, 21.308060>,  <31.895489, 39.397526, 21.216219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113293, 39.355972, 21.308060>,  <32.476299, 39.286716, 21.461128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113293, 39.355972, 21.308060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288963, -0.403835, -0.867997,
		-0.304816, -0.898299, 0.316458,
		-0.907518, 0.173134, -0.382671,
		31.841038, 39.407913, 21.193258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276672, 38.726353, 21.022459>,  <32.476299, 39.286716, 21.461128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276672, 38.726353, 21.022459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041191, 39.017723, 20.882273>,  <31.899902, 39.192547, 20.798161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041191, 39.017723, 20.882273>,  <32.276672, 38.726353, 21.022459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041191, 39.017723, 20.882273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291037, -0.213485, -0.932589,
		-0.754140, -0.651015, -0.086319,
		-0.588702, 0.728425, -0.350467,
		31.864580, 39.236252, 20.777132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850904, 38.396294, 20.419849>,  <32.276672, 38.726353, 21.022459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850904, 38.396294, 20.419849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818058, 38.789177, 20.352293>,  <31.798351, 39.024906, 20.311760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818058, 38.789177, 20.352293>,  <31.850904, 38.396294, 20.419849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818058, 38.789177, 20.352293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308133, -0.136138, -0.941552,
		-0.947793, -0.129355, -0.291472,
		-0.082114, 0.982209, -0.168889,
		31.793425, 39.083839, 20.301626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421186, 38.424351, 19.887678>,  <31.850904, 38.396294, 20.419849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421186, 38.424351, 19.887678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619841, 38.771477, 19.881321>,  <31.739033, 38.979752, 19.877506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619841, 38.771477, 19.881321>,  <31.421186, 38.424351, 19.887678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619841, 38.771477, 19.881321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079004, -0.063432, -0.994854,
		-0.864355, 0.492827, -0.100063,
		0.496638, 0.867812, -0.015892,
		31.768831, 39.031822, 19.876553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041435, 38.863697, 19.499687>,  <31.421186, 38.424351, 19.887678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041435, 38.863697, 19.499687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430761, 38.955067, 19.508474>,  <31.664356, 39.009888, 19.513746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430761, 38.955067, 19.508474>,  <31.041435, 38.863697, 19.499687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430761, 38.955067, 19.508474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062789, -0.173025, -0.982914,
		-0.220718, 0.958064, -0.182750,
		0.973314, 0.228422, 0.021966,
		31.722755, 39.023594, 19.515064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164751, 38.990952, 18.791832>,  <31.041435, 38.863697, 19.499687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164751, 38.990952, 18.791832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527050, 39.023983, 18.958109>,  <31.744431, 39.043800, 19.057875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527050, 39.023983, 18.958109>,  <31.164751, 38.990952, 18.791832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527050, 39.023983, 18.958109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409139, 0.085525, -0.908455,
		-0.110570, 0.992908, 0.043679,
		0.905748, 0.082577, 0.415694,
		31.798775, 39.048756, 19.082817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407948, 39.504982, 18.582766>,  <31.164751, 38.990952, 18.791832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407948, 39.504982, 18.582766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736048, 39.299313, 18.683018>,  <31.932907, 39.175911, 18.743168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736048, 39.299313, 18.683018>,  <31.407948, 39.504982, 18.582766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736048, 39.299313, 18.683018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356943, 0.117722, -0.926679,
		0.446971, 0.849568, 0.280093,
		0.820249, -0.514175, 0.250629,
		31.982122, 39.145061, 18.758205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955797, 39.799923, 18.346823>,  <31.407948, 39.504982, 18.582766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955797, 39.799923, 18.346823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155254, 39.459763, 18.413965>,  <32.274929, 39.255665, 18.454250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155254, 39.459763, 18.413965>,  <31.955797, 39.799923, 18.346823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155254, 39.459763, 18.413965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473157, 0.104785, -0.874724,
		0.726278, 0.515595, 0.454623,
		0.498641, -0.850401, 0.167855,
		32.304848, 39.204643, 18.464321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667706, 39.968582, 18.243040>,  <31.955797, 39.799923, 18.346823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667706, 39.968582, 18.243040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615913, 39.578007, 18.173996>,  <32.584839, 39.343662, 18.132570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615913, 39.578007, 18.173996>,  <32.667706, 39.968582, 18.243040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615913, 39.578007, 18.173996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389479, 0.110000, -0.914443,
		0.911888, -0.185634, 0.366060,
		-0.129485, -0.976443, -0.172608,
		32.577068, 39.285072, 18.122213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355137, 39.654675, 17.955570>,  <32.667706, 39.968582, 18.243040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355137, 39.654675, 17.955570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028023, 39.448448, 17.853258>,  <32.831753, 39.324715, 17.791870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028023, 39.448448, 17.853258>,  <33.355137, 39.654675, 17.955570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028023, 39.448448, 17.853258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238538, 0.100827, -0.965885,
		0.523764, -0.850899, 0.040526,
		-0.817785, -0.515563, -0.255781,
		32.782688, 39.293781, 17.776524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506054, 39.404919, 17.427181>,  <33.355137, 39.654675, 17.955570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506054, 39.404919, 17.427181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142021, 39.244678, 17.384726>,  <32.923599, 39.148537, 17.359253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142021, 39.244678, 17.384726>,  <33.506054, 39.404919, 17.427181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142021, 39.244678, 17.384726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192011, -0.180640, -0.964625,
		0.367253, -0.898272, 0.241317,
		-0.910086, -0.400597, -0.106137,
		32.868996, 39.124500, 17.352884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590538, 38.759769, 17.113920>,  <33.506054, 39.404919, 17.427181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590538, 38.759769, 17.113920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245102, 38.940697, 17.024824>,  <33.037838, 39.049252, 16.971367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245102, 38.940697, 17.024824>,  <33.590538, 38.759769, 17.113920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245102, 38.940697, 17.024824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166480, -0.161188, -0.972781,
		-0.475910, -0.877170, 0.063899,
		-0.863594, 0.452318, -0.222742,
		32.986023, 39.076393, 16.958002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443127, 38.407307, 16.539349>,  <33.590538, 38.759769, 17.113920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443127, 38.407307, 16.539349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198154, 38.723454, 16.545549>,  <33.051170, 38.913143, 16.549269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198154, 38.723454, 16.545549>,  <33.443127, 38.407307, 16.539349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198154, 38.723454, 16.545549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122817, -0.075761, -0.989533,
		-0.780925, -0.607925, 0.143469,
		-0.612431, 0.790372, 0.015500,
		33.014423, 38.960564, 16.550200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130924, 38.331303, 15.990840>,  <33.443127, 38.407307, 16.539349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130924, 38.331303, 15.990840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989540, 38.703651, 16.027826>,  <32.904709, 38.927059, 16.050018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989540, 38.703651, 16.027826>,  <33.130924, 38.331303, 15.990840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989540, 38.703651, 16.027826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109910, 0.056836, -0.992315,
		-0.928971, -0.360906, 0.082222,
		-0.353459, 0.930869, 0.092466,
		32.883503, 38.982914, 16.055567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478931, 38.422340, 15.622405>,  <33.130924, 38.331303, 15.990840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478931, 38.422340, 15.622405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636509, 38.789978, 15.625866>,  <32.731056, 39.010563, 15.627943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636509, 38.789978, 15.625866>,  <32.478931, 38.422340, 15.622405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636509, 38.789978, 15.625866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132058, 0.065913, -0.989048,
		-0.909600, 0.388482, 0.147340,
		0.393939, 0.919096, 0.008653,
		32.754692, 39.065708, 15.628462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056828, 38.702557, 15.265910>,  <32.478931, 38.422340, 15.622405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056828, 38.702557, 15.265910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385864, 38.928024, 15.235912>,  <32.583286, 39.063305, 15.217914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385864, 38.928024, 15.235912>,  <32.056828, 38.702557, 15.265910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385864, 38.928024, 15.235912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047272, -0.063640, -0.996853,
		-0.566669, 0.823544, -0.025704,
		0.822588, 0.563671, -0.074994,
		32.632641, 39.097126, 15.213414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010033, 39.109844, 14.639526>,  <32.056828, 38.702557, 15.265910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010033, 39.109844, 14.639526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393089, 39.105881, 14.754643>,  <32.622925, 39.103504, 14.823714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393089, 39.105881, 14.754643>,  <32.010033, 39.109844, 14.639526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393089, 39.105881, 14.754643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280715, -0.190717, -0.940652,
		0.064207, 0.981595, -0.179857,
		0.957641, -0.009908, 0.287794,
		32.680382, 39.102909, 14.840981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420933, 39.122719, 14.089008>,  <32.010033, 39.109844, 14.639526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420933, 39.122719, 14.089008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753860, 39.078560, 14.306287>,  <32.953617, 39.052063, 14.436654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753860, 39.078560, 14.306287>,  <32.420933, 39.122719, 14.089008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753860, 39.078560, 14.306287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495507, -0.291040, -0.818394,
		0.248440, 0.950320, -0.187535,
		0.832316, -0.110397, 0.543196,
		33.003555, 39.045441, 14.469246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979050, 39.132370, 13.563234>,  <32.420933, 39.122719, 14.089008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979050, 39.132370, 13.563234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301514, 39.026459, 13.774894>,  <33.494991, 38.962910, 13.901890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301514, 39.026459, 13.774894>,  <32.979050, 39.132370, 13.563234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301514, 39.026459, 13.774894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452932, 0.851588, -0.263913,
		-0.380737, 0.452424, 0.806444,
		0.806159, -0.264783, 0.529149,
		33.543362, 38.947025, 13.933639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066132, 39.592888, 14.089466>,  <32.979050, 39.132370, 13.563234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066132, 39.592888, 14.089466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421249, 39.425587, 14.012641>,  <33.634319, 39.325207, 13.966546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421249, 39.425587, 14.012641>,  <33.066132, 39.592888, 14.089466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421249, 39.425587, 14.012641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443922, 0.888329, 0.117493,
		0.121474, -0.189570, 0.974324,
		0.887794, -0.418251, -0.192064,
		33.687588, 39.300110, 13.955022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602470, 39.585766, 14.639347>,  <33.066132, 39.592888, 14.089466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602470, 39.585766, 14.639347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790436, 39.598358, 14.286487>,  <33.903214, 39.605915, 14.074770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790436, 39.598358, 14.286487>,  <33.602470, 39.585766, 14.639347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790436, 39.598358, 14.286487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317973, 0.926236, 0.202436,
		0.823454, -0.375628, 0.425239,
		0.469912, 0.031482, -0.882152,
		33.931408, 39.607803, 14.021841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315697, 39.836014, 14.827536>,  <33.602470, 39.585766, 14.639347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315697, 39.836014, 14.827536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203812, 39.899960, 14.448863>,  <34.136681, 39.938328, 14.221660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203812, 39.899960, 14.448863>,  <34.315697, 39.836014, 14.827536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203812, 39.899960, 14.448863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339094, 0.938940, 0.058364,
		0.898208, -0.304689, -0.316840,
		-0.279711, 0.159861, -0.946682,
		34.119900, 39.947918, 14.164859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548264, 40.366169, 14.406991>,  <34.315697, 39.836014, 14.827536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548264, 40.366169, 14.406991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606274, 39.970448, 14.400606>,  <34.641079, 39.733017, 14.396775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606274, 39.970448, 14.400606>,  <34.548264, 40.366169, 14.406991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606274, 39.970448, 14.400606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215780, -0.047369, 0.975292,
		-0.965612, -0.138000, -0.220341,
		0.145027, -0.989299, -0.015962,
		34.649780, 39.673656, 14.395818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450924, 41.077145, 14.285686>,  <34.548264, 40.366169, 14.406991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450924, 41.077145, 14.285686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194286, 41.369774, 14.193464>,  <34.040306, 41.545353, 14.138131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194286, 41.369774, 14.193464>,  <34.450924, 41.077145, 14.285686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194286, 41.369774, 14.193464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009073, 0.307792, 0.951411,
		0.766993, 0.608325, -0.204114,
		-0.641591, 0.731577, -0.230555,
		34.001808, 41.589249, 14.124298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796398, 41.648071, 14.350179>,  <34.450924, 41.077145, 14.285686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796398, 41.648071, 14.350179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406940, 41.698559, 14.426161>,  <34.173264, 41.728851, 14.471750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406940, 41.698559, 14.426161>,  <34.796398, 41.648071, 14.350179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406940, 41.698559, 14.426161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211406, 0.187004, 0.959342,
		0.085564, 0.974217, -0.208759,
		-0.973646, 0.126218, 0.189954,
		34.114845, 41.736423, 14.483147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702595, 42.379658, 14.656800>,  <34.796398, 41.648071, 14.350179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702595, 42.379658, 14.656800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459846, 42.086502, 14.779815>,  <34.314198, 41.910610, 14.853623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459846, 42.086502, 14.779815>,  <34.702595, 42.379658, 14.656800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459846, 42.086502, 14.779815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391763, 0.060834, 0.918053,
		-0.691539, 0.677624, 0.250200,
		-0.606874, -0.732888, 0.307537,
		34.277786, 41.866634, 14.872076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345695, 42.590553, 15.146752>,  <34.702595, 42.379658, 14.656800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345695, 42.590553, 15.146752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309090, 42.196026, 15.201605>,  <34.287128, 41.959309, 15.234516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309090, 42.196026, 15.201605>,  <34.345695, 42.590553, 15.146752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309090, 42.196026, 15.201605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108987, 0.126961, 0.985902,
		-0.989822, 0.105166, 0.095877,
		-0.091511, -0.986317, 0.137131,
		34.281635, 41.900131, 15.242744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881660, 42.500050, 15.658670>,  <34.345695, 42.590553, 15.146752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881660, 42.500050, 15.658670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075958, 42.150410, 15.657787>,  <34.192539, 41.940628, 15.657257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075958, 42.150410, 15.657787>,  <33.881660, 42.500050, 15.658670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075958, 42.150410, 15.657787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182885, 0.099160, 0.978121,
		-0.854753, -0.475523, 0.208026,
		0.485747, -0.874097, -0.002209,
		34.221684, 41.888180, 15.657125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536030, 42.064060, 16.156065>,  <33.881660, 42.500050, 15.658670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536030, 42.064060, 16.156065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888779, 41.883125, 16.102844>,  <34.100426, 41.774567, 16.070911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888779, 41.883125, 16.102844>,  <33.536030, 42.064060, 16.156065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888779, 41.883125, 16.102844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115855, -0.065656, 0.991094,
		-0.457041, -0.889429, -0.005495,
		0.881868, -0.452334, -0.133052,
		34.153339, 41.747425, 16.062929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546913, 41.519245, 16.540714>,  <33.536030, 42.064060, 16.156065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546913, 41.519245, 16.540714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941685, 41.565090, 16.495403>,  <34.178547, 41.592598, 16.468216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941685, 41.565090, 16.495403>,  <33.546913, 41.519245, 16.540714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941685, 41.565090, 16.495403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111776, 0.019459, 0.993543,
		0.116080, -0.993219, 0.006393,
		0.986930, 0.114615, -0.113277,
		34.237762, 41.599476, 16.461420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855785, 40.856472, 16.839481>,  <33.546913, 41.519245, 16.540714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855785, 40.856472, 16.839481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124859, 41.151875, 16.821144>,  <34.286304, 41.329117, 16.810143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124859, 41.151875, 16.821144>,  <33.855785, 40.856472, 16.839481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124859, 41.151875, 16.821144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049897, 0.016541, 0.998617,
		0.738245, -0.674042, -0.025722,
		0.672685, 0.738507, -0.045843,
		34.326664, 41.373428, 16.807390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478642, 40.669449, 17.188442>,  <33.855785, 40.856472, 16.839481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478642, 40.669449, 17.188442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486095, 41.069263, 17.198109>,  <34.490566, 41.309151, 17.203909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486095, 41.069263, 17.198109>,  <34.478642, 40.669449, 17.188442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486095, 41.069263, 17.198109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004955, -0.024264, 0.999693,
		0.999814, -0.018509, -0.005405,
		0.018634, 0.999534, 0.024168,
		34.491684, 41.369125, 17.205359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074570, 40.856373, 17.616415>,  <34.478642, 40.669449, 17.188442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074570, 40.856373, 17.616415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815804, 41.161400, 17.616749>,  <34.660545, 41.344414, 17.616949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815804, 41.161400, 17.616749>,  <35.074570, 40.856373, 17.616415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815804, 41.161400, 17.616749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168806, 0.142139, 0.975347,
		0.743645, 0.631106, -0.220677,
		-0.646913, 0.762563, 0.000833,
		34.621731, 41.390167, 17.616999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400356, 41.384056, 18.087585>,  <35.074570, 40.856373, 17.616415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400356, 41.384056, 18.087585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011772, 41.473457, 18.055826>,  <34.778622, 41.527100, 18.036772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011772, 41.473457, 18.055826>,  <35.400356, 41.384056, 18.087585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011772, 41.473457, 18.055826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048633, 0.139928, 0.988967,
		0.232150, 0.964606, -0.125065,
		-0.971463, 0.223506, -0.079396,
		34.720333, 41.540508, 18.032007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285263, 42.024956, 18.497587>,  <35.400356, 41.384056, 18.087585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285263, 42.024956, 18.497587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928249, 41.852688, 18.444065>,  <34.714043, 41.749325, 18.411951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928249, 41.852688, 18.444065>,  <35.285263, 42.024956, 18.497587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928249, 41.852688, 18.444065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272606, 0.278863, 0.920826,
		-0.359262, 0.858345, -0.366299,
		-0.892534, -0.430673, -0.133805,
		34.660488, 41.723484, 18.403923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849930, 42.501186, 18.771763>,  <35.285263, 42.024956, 18.497587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849930, 42.501186, 18.771763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632587, 42.165619, 18.759167>,  <34.502182, 41.964279, 18.751610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632587, 42.165619, 18.759167>,  <34.849930, 42.501186, 18.771763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632587, 42.165619, 18.759167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354949, 0.195580, 0.914199,
		-0.760776, 0.507909, -0.404040,
		-0.543352, -0.838915, -0.031489,
		34.469582, 41.913944, 18.749720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247658, 42.675457, 19.081032>,  <34.849930, 42.501186, 18.771763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247658, 42.675457, 19.081032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252934, 42.275803, 19.096815>,  <34.256100, 42.036011, 19.106285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252934, 42.275803, 19.096815>,  <34.247658, 42.675457, 19.081032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252934, 42.275803, 19.096815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340132, 0.032627, 0.939812,
		-0.940285, -0.025812, -0.339408,
		0.013185, -0.999134, 0.039458,
		34.256889, 41.976063, 19.108652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614048, 42.484524, 19.364166>,  <34.247658, 42.675457, 19.081032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614048, 42.484524, 19.364166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835182, 42.155483, 19.417387>,  <33.967865, 41.958061, 19.449320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835182, 42.155483, 19.417387>,  <33.614048, 42.484524, 19.364166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835182, 42.155483, 19.417387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380706, -0.107304, 0.918449,
		-0.741237, -0.558408, -0.372489,
		0.552839, -0.822597, 0.133052,
		34.001034, 41.908703, 19.457302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267452, 42.014412, 19.721004>,  <33.614048, 42.484524, 19.364166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267452, 42.014412, 19.721004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614914, 41.827160, 19.785875>,  <33.823391, 41.714809, 19.824799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614914, 41.827160, 19.785875>,  <33.267452, 42.014412, 19.721004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614914, 41.827160, 19.785875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271786, -0.176585, 0.946018,
		-0.414221, -0.865837, -0.280622,
		0.868650, -0.468129, 0.162177,
		33.875507, 41.686722, 19.834528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099567, 41.386333, 20.065872>,  <33.267452, 42.014412, 19.721004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099567, 41.386333, 20.065872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486683, 41.460358, 20.134148>,  <33.718952, 41.504772, 20.175114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486683, 41.460358, 20.134148>,  <33.099567, 41.386333, 20.065872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486683, 41.460358, 20.134148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135621, -0.187984, 0.972764,
		0.212106, -0.964580, -0.156831,
		0.967790, 0.185059, 0.170690,
		33.777020, 41.515877, 20.185354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291061, 40.803055, 20.506994>,  <33.099567, 41.386333, 20.065872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291061, 40.803055, 20.506994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541645, 41.112408, 20.545832>,  <33.691994, 41.298019, 20.569134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541645, 41.112408, 20.545832>,  <33.291061, 40.803055, 20.506994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541645, 41.112408, 20.545832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089969, -0.051990, 0.994587,
		0.774245, -0.631803, 0.037011,
		0.626458, 0.773383, 0.097096,
		33.729584, 41.344421, 20.574961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778469, 40.540035, 21.004511>,  <33.291061, 40.803055, 20.506994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778469, 40.540035, 21.004511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789158, 40.939720, 20.992802>,  <33.795570, 41.179531, 20.985777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789158, 40.939720, 20.992802>,  <33.778469, 40.540035, 21.004511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789158, 40.939720, 20.992802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190108, 0.023669, 0.981478,
		0.981399, -0.031792, -0.189326,
		0.026722, 0.999214, -0.029273,
		33.797176, 41.239483, 20.984020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412708, 40.766178, 21.330236>,  <33.778469, 40.540035, 21.004511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412708, 40.766178, 21.330236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137951, 41.056084, 21.351744>,  <33.973095, 41.230026, 21.364649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137951, 41.056084, 21.351744>,  <34.412708, 40.766178, 21.330236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137951, 41.056084, 21.351744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077426, -0.000584, 0.996998,
		0.722622, 0.688994, -0.055714,
		-0.686893, 0.724767, 0.053768,
		33.931885, 41.273514, 21.367874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717350, 41.326267, 21.754343>,  <34.412708, 40.766178, 21.330236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717350, 41.326267, 21.754343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327038, 41.412838, 21.741638>,  <34.092850, 41.464779, 21.734015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327038, 41.412838, 21.741638>,  <34.717350, 41.326267, 21.754343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327038, 41.412838, 21.741638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027692, 0.021818, 0.999378,
		0.216982, 0.976056, -0.015297,
		-0.975783, 0.216423, -0.031763,
		34.034302, 41.477764, 21.732109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574081, 41.897152, 22.213034>,  <34.717350, 41.326267, 21.754343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574081, 41.897152, 22.213034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226128, 41.705231, 22.167280>,  <34.017353, 41.590076, 22.139828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226128, 41.705231, 22.167280>,  <34.574081, 41.897152, 22.213034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226128, 41.705231, 22.167280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230380, 0.190164, 0.954339,
		-0.436146, 0.856518, -0.275959,
		-0.869886, -0.479806, -0.114385,
		33.965160, 41.561287, 22.132965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037872, 42.306698, 22.455015>,  <34.574081, 41.897152, 22.213034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037872, 42.306698, 22.455015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863102, 41.947834, 22.480951>,  <33.758240, 41.732517, 22.496513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863102, 41.947834, 22.480951>,  <34.037872, 42.306698, 22.455015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863102, 41.947834, 22.480951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379537, 0.249231, 0.890974,
		-0.815505, 0.364679, -0.449400,
		-0.436925, -0.897158, 0.064840,
		33.732025, 41.678688, 22.500402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322277, 42.424858, 22.712658>,  <34.037872, 42.306698, 22.455015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322277, 42.424858, 22.712658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373371, 42.032261, 22.769720>,  <33.404026, 41.796703, 22.803957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373371, 42.032261, 22.769720>,  <33.322277, 42.424858, 22.712658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373371, 42.032261, 22.769720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424891, 0.075815, 0.902064,
		-0.896187, -0.175840, -0.407344,
		0.127737, -0.981495, 0.142657,
		33.411694, 41.737812, 22.812517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688782, 42.154480, 22.863997>,  <33.322277, 42.424858, 22.712658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688782, 42.154480, 22.863997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939587, 41.894905, 23.036383>,  <33.090069, 41.739159, 23.139814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939587, 41.894905, 23.036383>,  <32.688782, 42.154480, 22.863997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939587, 41.894905, 23.036383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497544, 0.092086, 0.862537,
		-0.599420, -0.755247, -0.265136,
		0.627014, -0.648939, 0.430967,
		33.127689, 41.700222, 23.165672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273598, 41.738529, 23.231586>,  <32.688782, 42.154480, 22.863997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273598, 41.738529, 23.231586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632812, 41.686493, 23.399687>,  <32.848343, 41.655273, 23.500547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632812, 41.686493, 23.399687>,  <32.273598, 41.738529, 23.231586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632812, 41.686493, 23.399687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424834, -0.008401, 0.905232,
		-0.114232, -0.991467, -0.062811,
		0.898035, -0.130091, 0.420249,
		32.902222, 41.647469, 23.525763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222343, 41.249382, 23.778534>,  <32.273598, 41.738529, 23.231586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222343, 41.249382, 23.778534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557076, 41.443764, 23.879381>,  <32.757915, 41.560394, 23.939890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557076, 41.443764, 23.879381>,  <32.222343, 41.249382, 23.778534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557076, 41.443764, 23.879381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325930, 0.072218, 0.942631,
		0.439871, -0.870994, 0.218822,
		0.836829, 0.485957, 0.252116,
		32.808125, 41.589550, 23.955015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453644, 40.893734, 24.376247>,  <32.222343, 41.249382, 23.778534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453644, 40.893734, 24.376247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635483, 41.250000, 24.373388>,  <32.744587, 41.463760, 24.371674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635483, 41.250000, 24.373388>,  <32.453644, 40.893734, 24.376247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635483, 41.250000, 24.373388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163798, 0.091485, 0.982243,
		0.875506, -0.445355, 0.187479,
		0.454598, 0.890668, -0.007147,
		32.771862, 41.517200, 24.371244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924599, 40.873951, 24.807276>,  <32.453644, 40.893734, 24.376247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924599, 40.873951, 24.807276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844833, 41.265041, 24.781094>,  <32.796974, 41.499695, 24.765385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844833, 41.265041, 24.781094>,  <32.924599, 40.873951, 24.807276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844833, 41.265041, 24.781094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207595, 0.023131, 0.977942,
		0.957673, 0.208605, 0.198358,
		-0.199416, 0.977726, -0.065457,
		32.785007, 41.558361, 24.761457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203060, 41.094902, 25.399401>,  <32.924599, 40.873951, 24.807276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203060, 41.094902, 25.399401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943527, 41.376282, 25.283348>,  <32.787807, 41.545109, 25.213717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943527, 41.376282, 25.283348>,  <33.203060, 41.094902, 25.399401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943527, 41.376282, 25.283348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262006, 0.151437, 0.953111,
		0.714403, 0.694423, 0.086052,
		-0.648831, 0.703451, -0.290130,
		32.748878, 41.587318, 25.196308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142105, 41.456150, 25.999151>,  <33.203060, 41.094902, 25.399401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142105, 41.456150, 25.999151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857994, 41.628365, 25.776390>,  <32.687527, 41.731693, 25.642733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857994, 41.628365, 25.776390>,  <33.142105, 41.456150, 25.999151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857994, 41.628365, 25.776390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426539, 0.366121, 0.827055,
		0.559973, 0.824980, -0.076406,
		-0.710278, 0.430538, -0.556904,
		32.644909, 41.757526, 25.609318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029736, 42.252342, 26.207838>,  <33.142105, 41.456150, 25.999151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029736, 42.252342, 26.207838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691139, 42.087708, 26.072756>,  <32.487980, 41.988926, 25.991707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691139, 42.087708, 26.072756>,  <33.029736, 42.252342, 26.207838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691139, 42.087708, 26.072756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351929, -0.043388, 0.935021,
		-0.399497, 0.910336, -0.108123,
		-0.846492, -0.411589, -0.337707,
		32.437191, 41.964230, 25.971443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445560, 42.677101, 26.517378>,  <33.029736, 42.252342, 26.207838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445560, 42.677101, 26.517378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279556, 42.324650, 26.426708>,  <32.179955, 42.113178, 26.372307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279556, 42.324650, 26.426708>,  <32.445560, 42.677101, 26.517378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279556, 42.324650, 26.426708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490933, 0.007117, 0.871168,
		-0.765996, 0.472826, -0.435528,
		-0.415011, -0.881127, -0.226675,
		32.155052, 42.060310, 26.358706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832327, 42.765411, 26.792238>,  <32.445560, 42.677101, 26.517378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832327, 42.765411, 26.792238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843477, 42.368942, 26.740383>,  <31.850166, 42.131062, 26.709270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843477, 42.368942, 26.740383>,  <31.832327, 42.765411, 26.792238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843477, 42.368942, 26.740383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569801, -0.122312, 0.812629,
		-0.821310, 0.051217, -0.568179,
		0.027875, -0.991169, -0.129639,
		31.851839, 42.071590, 26.701490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211964, 42.517544, 26.924421>,  <31.832327, 42.765411, 26.792238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211964, 42.517544, 26.924421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431734, 42.184826, 26.956026>,  <31.563597, 41.985195, 26.974989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431734, 42.184826, 26.956026>,  <31.211964, 42.517544, 26.924421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431734, 42.184826, 26.956026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494228, -0.247286, 0.833420,
		-0.673700, -0.496951, -0.546963,
		0.549425, -0.831799, 0.079011,
		31.596561, 41.935287, 26.979729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733669, 42.096222, 27.179211>,  <31.211964, 42.517544, 26.924421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733669, 42.096222, 27.179211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093124, 41.946201, 27.270235>,  <31.308798, 41.856190, 27.324850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093124, 41.946201, 27.270235>,  <30.733669, 42.096222, 27.179211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093124, 41.946201, 27.270235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325307, -0.221690, 0.919254,
		-0.294321, -0.900105, -0.321227,
		0.898638, -0.375054, 0.227563,
		31.362717, 41.833687, 27.338505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574724, 41.383354, 27.565416>,  <30.733669, 42.096222, 27.179211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574724, 41.383354, 27.565416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941856, 41.523308, 27.640430>,  <31.162136, 41.607281, 27.685440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941856, 41.523308, 27.640430>,  <30.574724, 41.383354, 27.565416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941856, 41.523308, 27.640430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099138, -0.255425, 0.961733,
		0.384399, -0.901298, -0.199750,
		0.917829, 0.349886, 0.187538,
		31.217205, 41.628273, 27.696692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750483, 40.946053, 28.109669>,  <30.574724, 41.383354, 27.565416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750483, 40.946053, 28.109669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994261, 41.262905, 28.122992>,  <31.140528, 41.453014, 28.130985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994261, 41.262905, 28.122992>,  <30.750483, 40.946053, 28.109669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994261, 41.262905, 28.122992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093225, -0.113317, 0.989176,
		0.787327, -0.599744, -0.142907,
		0.609446, 0.792127, 0.033307,
		31.177095, 41.500542, 28.132984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366304, 40.679207, 28.453951>,  <30.750483, 40.946053, 28.109669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366304, 40.679207, 28.453951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357252, 41.076820, 28.496620>,  <31.351820, 41.315388, 28.522221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357252, 41.076820, 28.496620>,  <31.366304, 40.679207, 28.453951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357252, 41.076820, 28.496620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114821, -0.103408, 0.987990,
		0.993128, 0.034609, -0.111796,
		-0.022633, 0.994037, 0.106672,
		31.350462, 41.375031, 28.528622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896551, 40.883411, 28.910835>,  <31.366304, 40.679207, 28.453951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896551, 40.883411, 28.910835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650549, 41.198540, 28.924120>,  <31.502949, 41.387619, 28.932091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650549, 41.198540, 28.924120>,  <31.896551, 40.883411, 28.910835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650549, 41.198540, 28.924120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007103, -0.047653, 0.998839,
		0.788492, 0.614053, 0.034903,
		-0.615004, 0.787825, 0.033212,
		31.466047, 41.434887, 28.934084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195538, 41.332031, 29.463158>,  <31.896551, 40.883411, 28.910835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195538, 41.332031, 29.463158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822071, 41.470932, 29.428087>,  <31.597992, 41.554272, 29.407045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822071, 41.470932, 29.428087>,  <32.195538, 41.332031, 29.463158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822071, 41.470932, 29.428087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020744, 0.191953, 0.981185,
		0.357547, 0.917916, -0.172016,
		-0.933665, 0.347251, -0.087674,
		31.541971, 41.575108, 29.401785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190155, 41.972996, 29.782328>,  <32.195538, 41.332031, 29.463158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190155, 41.972996, 29.782328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812466, 41.841633, 29.772549>,  <31.585852, 41.762817, 29.766682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812466, 41.841633, 29.772549>,  <32.190155, 41.972996, 29.782328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812466, 41.841633, 29.772549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095411, 0.201757, 0.974777,
		-0.315188, 0.922738, -0.221836,
		-0.944221, -0.328403, -0.024448,
		31.529200, 41.743111, 29.765215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869862, 41.724205, 29.607517>,  <32.190155, 41.972996, 29.782328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869862, 41.724205, 29.607517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193466, 41.791065, 29.832926>,  <33.387630, 41.831181, 29.968170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193466, 41.791065, 29.832926>,  <32.869862, 41.724205, 29.607517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193466, 41.791065, 29.832926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503964, 0.296167, -0.811360,
		-0.302517, 0.940396, 0.155364,
		0.809014, 0.167153, 0.563521,
		33.436169, 41.841209, 30.001982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198177, 42.443283, 29.473253>,  <32.869862, 41.724205, 29.607517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198177, 42.443283, 29.473253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485348, 42.208965, 29.623676>,  <33.657650, 42.068375, 29.713930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485348, 42.208965, 29.623676>,  <33.198177, 42.443283, 29.473253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485348, 42.208965, 29.623676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575723, 0.195990, -0.793808,
		0.391304, 0.786405, 0.477963,
		0.717930, -0.585794, 0.376060,
		33.700726, 42.033226, 29.736494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920170, 42.896309, 29.445076>,  <33.198177, 42.443283, 29.473253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920170, 42.896309, 29.445076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018303, 42.508564, 29.450022>,  <34.077183, 42.275917, 29.452990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018303, 42.508564, 29.450022>,  <33.920170, 42.896309, 29.445076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018303, 42.508564, 29.450022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538071, 0.125548, -0.833497,
		0.806406, 0.211140, 0.552386,
		0.245336, -0.969359, 0.012366,
		34.091904, 42.217754, 29.453732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651077, 42.845131, 29.436501>,  <33.920170, 42.896309, 29.445076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651077, 42.845131, 29.436501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506226, 42.505352, 29.282980>,  <34.419315, 42.301483, 29.190868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506226, 42.505352, 29.282980>,  <34.651077, 42.845131, 29.436501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506226, 42.505352, 29.282980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581477, 0.115942, -0.805259,
		0.728523, -0.514779, 0.451947,
		-0.362131, -0.849447, -0.383799,
		34.397587, 42.250519, 29.167841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150169, 42.649082, 29.072823>,  <34.651077, 42.845131, 29.436501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150169, 42.649082, 29.072823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877987, 42.384266, 28.947165>,  <34.714676, 42.225376, 28.871771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877987, 42.384266, 28.947165>,  <35.150169, 42.649082, 29.072823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877987, 42.384266, 28.947165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479738, -0.078409, -0.873902,
		0.553925, -0.745358, 0.370958,
		-0.680456, -0.662038, -0.314143,
		34.673851, 42.185654, 28.852922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521343, 42.003433, 28.767048>,  <35.150169, 42.649082, 29.072823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521343, 42.003433, 28.767048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159519, 41.992226, 28.596882>,  <34.942425, 41.985500, 28.494781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159519, 41.992226, 28.596882>,  <35.521343, 42.003433, 28.767048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159519, 41.992226, 28.596882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424542, -0.150693, -0.892780,
		-0.039088, -0.988183, 0.148209,
		-0.904564, -0.028024, -0.425415,
		34.888149, 41.983818, 28.469257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571857, 41.435291, 28.317575>,  <35.521343, 42.003433, 28.767048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571857, 41.435291, 28.317575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254723, 41.633106, 28.175117>,  <35.064442, 41.751793, 28.089643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254723, 41.633106, 28.175117>,  <35.571857, 41.435291, 28.317575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254723, 41.633106, 28.175117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340171, -0.125765, -0.931915,
		-0.505656, -0.860010, -0.068515,
		-0.792840, 0.494536, -0.356145,
		35.016872, 41.781467, 28.068274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284134, 41.022972, 27.718981>,  <35.571857, 41.435291, 28.317575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284134, 41.022972, 27.718981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122890, 41.386143, 27.673069>,  <35.026142, 41.604046, 27.645523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122890, 41.386143, 27.673069>,  <35.284134, 41.022972, 27.718981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122890, 41.386143, 27.673069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106336, -0.078101, -0.991258,
		-0.908951, -0.411794, -0.065061,
		-0.403113, 0.907924, -0.114778,
		35.001957, 41.658520, 27.638636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915394, 40.973232, 27.172783>,  <35.284134, 41.022972, 27.718981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915394, 40.973232, 27.172783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993668, 41.364899, 27.194473>,  <35.040630, 41.599899, 27.207487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993668, 41.364899, 27.194473>,  <34.915394, 40.973232, 27.172783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993668, 41.364899, 27.194473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234919, 0.006883, -0.971990,
		-0.952114, 0.202940, -0.228678,
		0.195682, 0.979167, 0.054228,
		35.052372, 41.658649, 27.210741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652424, 41.324387, 26.552729>,  <34.915394, 40.973232, 27.172783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652424, 41.324387, 26.552729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927540, 41.583282, 26.684204>,  <35.092609, 41.738621, 26.763090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927540, 41.583282, 26.684204>,  <34.652424, 41.324387, 26.552729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927540, 41.583282, 26.684204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346196, 0.105524, -0.932208,
		-0.638043, 0.754951, -0.151493,
		0.687785, 0.647236, 0.328690,
		35.133877, 41.777454, 26.782810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763523, 41.953987, 26.032793>,  <34.652424, 41.324387, 26.552729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763523, 41.953987, 26.032793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089760, 41.978413, 26.262955>,  <35.285500, 41.993069, 26.401051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089760, 41.978413, 26.262955>,  <34.763523, 41.953987, 26.032793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089760, 41.978413, 26.262955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556839, 0.187529, -0.809174,
		-0.157314, 0.980359, 0.118945,
		0.815587, 0.061061, 0.575403,
		35.334435, 41.996731, 26.435575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161423, 42.538685, 25.808077>,  <34.763523, 41.953987, 26.032793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161423, 42.538685, 25.808077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444523, 42.307487, 25.970562>,  <35.614384, 42.168770, 26.068052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444523, 42.307487, 25.970562>,  <35.161423, 42.538685, 25.808077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444523, 42.307487, 25.970562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557791, 0.104333, -0.823398,
		0.433541, 0.809341, 0.396244,
		0.707751, -0.577998, 0.406211,
		35.656849, 42.134087, 26.092424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777252, 42.822216, 25.692829>,  <35.161423, 42.538685, 25.808077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777252, 42.822216, 25.692829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901085, 42.449131, 25.766802>,  <35.975384, 42.225281, 25.811186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901085, 42.449131, 25.766802>,  <35.777252, 42.822216, 25.692829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901085, 42.449131, 25.766802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337494, -0.074041, -0.938411,
		0.888964, 0.352926, 0.291865,
		0.309580, -0.932717, 0.184930,
		35.993958, 42.169315, 25.822281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516811, 42.830368, 25.590094>,  <35.777252, 42.822216, 25.692829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516811, 42.830368, 25.590094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378101, 42.460484, 25.527285>,  <36.294876, 42.238552, 25.489599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378101, 42.460484, 25.527285>,  <36.516811, 42.830368, 25.590094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378101, 42.460484, 25.527285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439121, -0.012132, -0.898346,
		0.828806, -0.380476, 0.410267,
		-0.346776, -0.924711, -0.157020,
		36.274067, 42.183071, 25.480179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086033, 42.471893, 25.174107>,  <36.516811, 42.830368, 25.590094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086033, 42.471893, 25.174107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759167, 42.244648, 25.135155>,  <36.563046, 42.108299, 25.111784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759167, 42.244648, 25.135155>,  <37.086033, 42.471893, 25.174107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759167, 42.244648, 25.135155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254357, -0.203815, -0.945390,
		0.517243, -0.797310, 0.311055,
		-0.817167, -0.568116, -0.097380,
		36.514015, 42.074215, 25.105940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270271, 41.929459, 24.794405>,  <37.086033, 42.471893, 25.174107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270271, 41.929459, 24.794405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874371, 41.911816, 24.740082>,  <36.636829, 41.901230, 24.707487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874371, 41.911816, 24.740082>,  <37.270271, 41.929459, 24.794405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874371, 41.911816, 24.740082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138835, -0.074881, -0.987480,
		0.033386, -0.996216, 0.080237,
		-0.989752, -0.044108, -0.135810,
		36.577446, 41.898582, 24.699339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104889, 41.275101, 24.279881>,  <37.270271, 41.929459, 24.794405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104889, 41.275101, 24.279881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821003, 41.556808, 24.287008>,  <36.650673, 41.725834, 24.291285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821003, 41.556808, 24.287008>,  <37.104889, 41.275101, 24.279881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821003, 41.556808, 24.287008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078752, -0.054178, -0.995421,
		-0.700077, -0.707865, 0.093913,
		-0.709712, 0.704267, 0.017818,
		36.608089, 41.768089, 24.292353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603706, 40.931042, 23.994427>,  <37.104889, 41.275101, 24.279881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603706, 40.931042, 23.994427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497993, 41.313663, 23.945162>,  <36.434566, 41.543236, 23.915602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497993, 41.313663, 23.945162>,  <36.603706, 40.931042, 23.994427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497993, 41.313663, 23.945162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107333, -0.097741, -0.989407,
		-0.958456, -0.274698, -0.076839,
		-0.264278, 0.956550, -0.123164,
		36.418709, 41.600628, 23.908213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226940, 40.918827, 23.458435>,  <36.603706, 40.931042, 23.994427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226940, 40.918827, 23.458435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303944, 41.310116, 23.489473>,  <36.350147, 41.544888, 23.508097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303944, 41.310116, 23.489473>,  <36.226940, 40.918827, 23.458435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303944, 41.310116, 23.489473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022283, 0.083411, -0.996266,
		-0.981041, 0.190066, 0.037855,
		0.192513, 0.978222, 0.077595,
		36.361698, 41.603580, 23.512753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700264, 41.291355, 23.139099>,  <36.226940, 40.918827, 23.458435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700264, 41.291355, 23.139099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032833, 41.513569, 23.143438>,  <36.232372, 41.646896, 23.146042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032833, 41.513569, 23.143438>,  <35.700264, 41.291355, 23.139099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032833, 41.513569, 23.143438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045698, 0.087823, -0.995087,
		-0.553761, 0.826840, 0.098405,
		0.831421, 0.555538, 0.010848,
		36.282261, 41.680229, 23.146692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565216, 41.868343, 22.710630>,  <35.700264, 41.291355, 23.139099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565216, 41.868343, 22.710630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964027, 41.856300, 22.739004>,  <36.203312, 41.849075, 22.756027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964027, 41.856300, 22.739004>,  <35.565216, 41.868343, 22.710630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964027, 41.856300, 22.739004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074168, 0.125222, -0.989353,
		0.020905, 0.991672, 0.127083,
		0.997027, -0.030108, 0.070932,
		36.263134, 41.847267, 22.760284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826382, 42.429573, 22.230782>,  <35.565216, 41.868343, 22.710630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826382, 42.429573, 22.230782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096199, 42.146202, 22.313845>,  <36.258087, 41.976177, 22.363682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096199, 42.146202, 22.313845>,  <35.826382, 42.429573, 22.230782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096199, 42.146202, 22.313845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199513, -0.095882, -0.975193,
		0.710766, 0.699238, 0.076665,
		0.674541, -0.708430, 0.207656,
		36.298561, 41.933674, 22.376143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399597, 42.565319, 21.718048>,  <35.826382, 42.429573, 22.230782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399597, 42.565319, 21.718048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440128, 42.187634, 21.843391>,  <36.464447, 41.961021, 21.918596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440128, 42.187634, 21.843391>,  <36.399597, 42.565319, 21.718048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440128, 42.187634, 21.843391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129359, -0.299799, -0.945191,
		0.986407, 0.136310, 0.091765,
		0.101328, -0.944214, 0.313357,
		36.470528, 41.904369, 21.937399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085278, 42.278809, 21.415730>,  <36.399597, 42.565319, 21.718048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085278, 42.278809, 21.415730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863064, 41.965366, 21.526968>,  <36.729736, 41.777302, 21.593710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863064, 41.965366, 21.526968>,  <37.085278, 42.278809, 21.415730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863064, 41.965366, 21.526968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329888, -0.514717, -0.791354,
		0.763252, -0.347885, 0.544447,
		-0.555536, -0.783608, 0.278095,
		36.696404, 41.730286, 21.610397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421410, 41.776264, 21.107361>,  <37.085278, 42.278809, 21.415730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421410, 41.776264, 21.107361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066051, 41.603310, 21.169060>,  <36.852837, 41.499535, 21.206079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066051, 41.603310, 21.169060>,  <37.421410, 41.776264, 21.107361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066051, 41.603310, 21.169060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065014, -0.451103, -0.890100,
		0.454449, -0.780734, 0.428870,
		-0.888397, -0.432388, 0.154245,
		36.799534, 41.473595, 21.215334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523926, 41.124271, 20.807161>,  <37.421410, 41.776264, 21.107361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523926, 41.124271, 20.807161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126472, 41.156380, 20.838789>,  <36.888000, 41.175644, 20.857765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126472, 41.156380, 20.838789>,  <37.523926, 41.124271, 20.807161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126472, 41.156380, 20.838789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109155, -0.511741, -0.852178,
		-0.027945, -0.855382, 0.517244,
		-0.993632, 0.080274, 0.079069,
		36.828384, 41.180462, 20.862509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191059, 40.386112, 20.904593>,  <37.523926, 41.124271, 20.807161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191059, 40.386112, 20.904593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921192, 40.626129, 20.732651>,  <36.759274, 40.770138, 20.629486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921192, 40.626129, 20.732651>,  <37.191059, 40.386112, 20.904593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921192, 40.626129, 20.732651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035797, -0.608277, -0.792918,
		-0.737256, -0.519566, 0.431863,
		-0.674665, 0.600042, -0.429856,
		36.718792, 40.806141, 20.603693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725800, 39.919018, 20.597996>,  <37.191059, 40.386112, 20.904593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725800, 39.919018, 20.597996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575764, 40.240524, 20.413269>,  <36.485744, 40.433426, 20.302433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575764, 40.240524, 20.413269>,  <36.725800, 39.919018, 20.597996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575764, 40.240524, 20.413269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140152, -0.541632, -0.828850,
		-0.916334, -0.246166, 0.315808,
		-0.375086, 0.803764, -0.461815,
		36.463238, 40.481655, 20.274725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013515, 39.723553, 20.355211>,  <36.725800, 39.919018, 20.597996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013515, 39.723553, 20.355211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159718, 40.021221, 20.131563>,  <36.247440, 40.199821, 19.997374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159718, 40.021221, 20.131563>,  <36.013515, 39.723553, 20.355211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159718, 40.021221, 20.131563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182340, -0.531802, -0.827006,
		-0.912774, 0.404227, -0.058685,
		0.365507, 0.744169, -0.559122,
		36.269371, 40.244473, 19.963827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512791, 39.795116, 19.755522>,  <36.013515, 39.723553, 20.355211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512791, 39.795116, 19.755522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814926, 40.007221, 19.601486>,  <35.996208, 40.134483, 19.509066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814926, 40.007221, 19.601486>,  <35.512791, 39.795116, 19.755522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814926, 40.007221, 19.601486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141002, -0.442356, -0.885686,
		-0.639990, 0.723287, -0.259360,
		0.755335, 0.530260, -0.385088,
		36.041527, 40.166298, 19.485960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309532, 40.153824, 19.092226>,  <35.512791, 39.795116, 19.755522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309532, 40.153824, 19.092226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708458, 40.124660, 19.089716>,  <35.947815, 40.107162, 19.088209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708458, 40.124660, 19.089716>,  <35.309532, 40.153824, 19.092226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708458, 40.124660, 19.089716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038899, -0.455580, -0.889345,
		0.061979, 0.887204, -0.457195,
		0.997319, -0.072905, -0.006275,
		36.007652, 40.102787, 19.087833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412209, 40.114273, 18.403723>,  <35.309532, 40.153824, 19.092226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412209, 40.114273, 18.403723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769077, 40.015831, 18.555227>,  <35.983200, 39.956764, 18.646130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769077, 40.015831, 18.555227>,  <35.412209, 40.114273, 18.403723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769077, 40.015831, 18.555227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229299, -0.475690, -0.849200,
		0.389170, 0.844482, -0.367964,
		0.892171, -0.246109, 0.378763,
		36.036728, 39.941998, 18.668856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977367, 40.470097, 17.962086>,  <35.412209, 40.114273, 18.403723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977367, 40.470097, 17.962086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146984, 40.154240, 18.139469>,  <36.248753, 39.964725, 18.245899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146984, 40.154240, 18.139469>,  <35.977367, 40.470097, 17.962086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146984, 40.154240, 18.139469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024905, -0.499643, -0.865873,
		0.905302, 0.356118, -0.231533,
		0.424037, -0.789643, 0.443459,
		36.274197, 39.917347, 18.272507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463142, 40.243679, 17.532291>,  <35.977367, 40.470097, 17.962086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463142, 40.243679, 17.532291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388523, 39.922905, 17.759306>,  <36.343750, 39.730438, 17.895514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388523, 39.922905, 17.759306>,  <36.463142, 40.243679, 17.532291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388523, 39.922905, 17.759306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027394, -0.581696, -0.812944,
		0.982063, -0.136109, 0.130485,
		-0.186552, -0.801937, 0.567534,
		36.332558, 39.682323, 17.929565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976757, 39.774380, 17.382841>,  <36.463142, 40.243679, 17.532291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976757, 39.774380, 17.382841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671124, 39.573032, 17.544235>,  <36.487743, 39.452225, 17.641071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671124, 39.573032, 17.544235>,  <36.976757, 39.774380, 17.382841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671124, 39.573032, 17.544235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005059, -0.620747, -0.783995,
		0.645100, -0.601077, 0.471754,
		-0.764081, -0.503369, 0.403485,
		36.441898, 39.422020, 17.665281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136909, 39.027477, 17.386946>,  <36.976757, 39.774380, 17.382841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136909, 39.027477, 17.386946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737709, 39.038452, 17.409710>,  <36.498188, 39.045036, 17.423368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737709, 39.038452, 17.409710>,  <37.136909, 39.027477, 17.386946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737709, 39.038452, 17.409710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060273, -0.683499, -0.727459,
		0.018943, -0.729436, 0.683787,
		-0.998002, 0.027434, 0.056912,
		36.438309, 39.046680, 17.426783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934372, 38.376759, 17.159653>,  <37.136909, 39.027477, 17.386946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934372, 38.376759, 17.159653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598896, 38.591778, 17.124680>,  <36.397610, 38.720791, 17.103697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598896, 38.591778, 17.124680>,  <36.934372, 38.376759, 17.159653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598896, 38.591778, 17.124680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246959, -0.518461, -0.818663,
		-0.485394, -0.665015, 0.567580,
		-0.838692, 0.537544, -0.087426,
		36.347290, 38.753044, 17.098450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381210, 37.906723, 17.307810>,  <36.934372, 38.376759, 17.159653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381210, 37.906723, 17.307810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203728, 38.191753, 17.090418>,  <36.097240, 38.362770, 16.959984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203728, 38.191753, 17.090418>,  <36.381210, 37.906723, 17.307810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203728, 38.191753, 17.090418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146933, -0.656080, -0.740249,
		-0.884047, -0.248595, 0.395804,
		-0.443702, 0.712572, -0.543479,
		36.070618, 38.405525, 16.927374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507374, 37.381939, 16.785416>,  <36.381210, 37.906723, 17.307810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507374, 37.381939, 16.785416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576637, 36.996960, 16.869041>,  <36.618195, 36.765972, 16.919216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576637, 36.996960, 16.869041>,  <36.507374, 37.381939, 16.785416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576637, 36.996960, 16.869041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048862, 0.203615, 0.977831,
		-0.983680, -0.179539, -0.011768,
		0.173163, -0.962448, 0.209065,
		36.628586, 36.708225, 16.931761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934925, 37.096207, 17.295546>,  <36.507374, 37.381939, 16.785416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934925, 37.096207, 17.295546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252586, 36.856716, 17.337204>,  <36.443184, 36.713020, 17.362200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252586, 36.856716, 17.337204>,  <35.934925, 37.096207, 17.295546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252586, 36.856716, 17.337204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022349, 0.200032, 0.979535,
		-0.607306, -0.775574, 0.172237,
		0.794154, -0.598726, 0.104147,
		36.490833, 36.677097, 17.368448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790218, 36.737827, 17.920403>,  <35.934925, 37.096207, 17.295546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790218, 36.737827, 17.920403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185055, 36.682571, 17.887993>,  <36.421955, 36.649418, 17.868547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185055, 36.682571, 17.887993>,  <35.790218, 36.737827, 17.920403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185055, 36.682571, 17.887993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085101, 0.023849, 0.996087,
		-0.135670, -0.990125, 0.035297,
		0.987092, -0.138143, -0.081025,
		36.481182, 36.641129, 17.863686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978115, 36.238476, 18.342968>,  <35.790218, 36.737827, 17.920403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978115, 36.238476, 18.342968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318554, 36.445549, 18.308029>,  <36.522820, 36.569794, 18.287066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318554, 36.445549, 18.308029>,  <35.978115, 36.238476, 18.342968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318554, 36.445549, 18.308029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066120, 0.270749, 0.960377,
		0.520822, -0.811602, 0.264664,
		0.851101, 0.517684, -0.087349,
		36.573883, 36.600853, 18.281824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383453, 36.017975, 18.929459>,  <35.978115, 36.238476, 18.342968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383453, 36.017975, 18.929459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535469, 36.365170, 18.801600>,  <36.626678, 36.573486, 18.724884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535469, 36.365170, 18.801600>,  <36.383453, 36.017975, 18.929459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535469, 36.365170, 18.801600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108535, 0.301341, 0.947319,
		0.918580, -0.394712, 0.020315,
		0.380040, 0.867984, -0.319646,
		36.649483, 36.625565, 18.705706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842953, 36.087093, 19.407673>,  <36.383453, 36.017975, 18.929459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842953, 36.087093, 19.407673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782372, 36.444611, 19.238817>,  <36.746021, 36.659119, 19.137505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782372, 36.444611, 19.238817>,  <36.842953, 36.087093, 19.407673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782372, 36.444611, 19.238817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051949, 0.419276, 0.906371,
		0.987098, 0.159204, -0.017070,
		-0.151455, 0.893791, -0.422137,
		36.736935, 36.712749, 19.112177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293556, 36.556038, 19.784582>,  <36.842953, 36.087093, 19.407673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293556, 36.556038, 19.784582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020748, 36.791336, 19.610769>,  <36.857063, 36.932514, 19.506481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020748, 36.791336, 19.610769>,  <37.293556, 36.556038, 19.784582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020748, 36.791336, 19.610769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107519, 0.507056, 0.855180,
		0.723383, 0.629973, -0.282577,
		-0.682024, 0.588241, -0.434530,
		36.816139, 36.967808, 19.480410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672924, 37.198029, 19.836050>,  <37.293556, 36.556038, 19.784582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672924, 37.198029, 19.836050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279835, 37.269421, 19.816435>,  <37.043983, 37.312256, 19.804665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279835, 37.269421, 19.816435>,  <37.672924, 37.198029, 19.836050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279835, 37.269421, 19.816435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054638, 0.532856, 0.844440,
		0.176849, 0.827169, -0.533400,
		-0.982720, 0.178482, -0.049040,
		36.985020, 37.322964, 19.801723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585365, 37.969284, 19.978678>,  <37.672924, 37.198029, 19.836050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585365, 37.969284, 19.978678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227493, 37.796516, 20.024252>,  <37.012768, 37.692856, 20.051598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227493, 37.796516, 20.024252>,  <37.585365, 37.969284, 19.978678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227493, 37.796516, 20.024252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169451, 0.564166, 0.808086,
		-0.413311, 0.703675, -0.577941,
		-0.894685, -0.431924, 0.113938,
		36.959087, 37.666939, 20.058434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086754, 38.621513, 20.069830>,  <37.585365, 37.969284, 19.978678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086754, 38.621513, 20.069830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925102, 38.290531, 20.225780>,  <36.828114, 38.091942, 20.319351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925102, 38.290531, 20.225780>,  <37.086754, 38.621513, 20.069830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925102, 38.290531, 20.225780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363350, 0.536380, 0.761756,
		-0.839440, 0.166183, -0.517420,
		-0.404125, -0.827454, 0.389876,
		36.803864, 38.042294, 20.342743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397243, 38.771793, 20.367931>,  <37.086754, 38.621513, 20.069830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397243, 38.771793, 20.367931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516521, 38.434456, 20.546749>,  <36.588089, 38.232052, 20.654039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516521, 38.434456, 20.546749>,  <36.397243, 38.771793, 20.367931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516521, 38.434456, 20.546749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207181, 0.400001, 0.892791,
		-0.931748, -0.358848, -0.055446,
		0.298198, -0.843343, 0.447046,
		36.605980, 38.181454, 20.680862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026451, 38.738953, 20.899574>,  <36.397243, 38.771793, 20.367931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026451, 38.738953, 20.899574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289703, 38.461765, 21.017330>,  <36.447655, 38.295452, 21.087984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289703, 38.461765, 21.017330>,  <36.026451, 38.738953, 20.899574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289703, 38.461765, 21.017330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135503, 0.275603, 0.951673,
		-0.740611, -0.666214, 0.087483,
		0.658129, -0.692966, 0.294389,
		36.487141, 38.253876, 21.105646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748688, 38.483185, 21.498390>,  <36.026451, 38.738953, 20.899574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748688, 38.483185, 21.498390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134605, 38.380730, 21.522270>,  <36.366158, 38.319256, 21.536598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134605, 38.380730, 21.522270>,  <35.748688, 38.483185, 21.498390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134605, 38.380730, 21.522270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055713, 0.420893, 0.905398,
		-0.257031, -0.870198, 0.420346,
		0.964796, -0.256135, 0.059701,
		36.424046, 38.303890, 21.540180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826687, 38.030525, 22.064930>,  <35.748688, 38.483185, 21.498390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826687, 38.030525, 22.064930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204044, 38.149494, 22.006214>,  <36.430458, 38.220875, 21.970985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204044, 38.149494, 22.006214>,  <35.826687, 38.030525, 22.064930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204044, 38.149494, 22.006214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059308, 0.284166, 0.956939,
		0.326332, -0.911475, 0.250441,
		0.943393, 0.297427, -0.146790,
		36.487064, 38.238720, 21.962177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247051, 37.644909, 22.477797>,  <35.826687, 38.030525, 22.064930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247051, 37.644909, 22.477797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462715, 37.975014, 22.410557>,  <36.592113, 38.173077, 22.370213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462715, 37.975014, 22.410557>,  <36.247051, 37.644909, 22.477797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462715, 37.975014, 22.410557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009521, 0.193607, 0.981033,
		0.842151, -0.530532, 0.096528,
		0.539158, 0.825259, -0.168098,
		36.624462, 38.222591, 22.360126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722816, 37.538265, 22.947105>,  <36.247051, 37.644909, 22.477797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722816, 37.538265, 22.947105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749630, 37.926453, 22.854410>,  <36.765720, 38.159363, 22.798794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749630, 37.926453, 22.854410>,  <36.722816, 37.538265, 22.947105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749630, 37.926453, 22.854410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061682, 0.227786, 0.971756,
		0.995842, -0.079438, -0.044590,
		0.067037, 0.970466, -0.231738,
		36.769741, 38.217594, 22.784889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150356, 37.782772, 23.427954>,  <36.722816, 37.538265, 22.947105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150356, 37.782772, 23.427954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006062, 38.130081, 23.291740>,  <36.919483, 38.338467, 23.210012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006062, 38.130081, 23.291740>,  <37.150356, 37.782772, 23.427954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006062, 38.130081, 23.291740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045419, 0.348331, 0.936270,
		0.931559, 0.353218, -0.086221,
		-0.360741, 0.868276, -0.340534,
		36.897839, 38.390564, 23.189581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506569, 38.363132, 23.767725>,  <37.150356, 37.782772, 23.427954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506569, 38.363132, 23.767725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152939, 38.518486, 23.663750>,  <36.940762, 38.611698, 23.601364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152939, 38.518486, 23.663750>,  <37.506569, 38.363132, 23.767725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152939, 38.518486, 23.663750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056120, 0.463959, 0.884077,
		0.463959, 0.796181, -0.388380,
		-0.884077, 0.388380, -0.259939,
		36.887714, 38.634998, 23.585768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472183, 39.048611, 24.007959>,  <37.506569, 38.363132, 23.767725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472183, 39.048611, 24.007959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084789, 38.986126, 23.930363>,  <36.852352, 38.948635, 23.883804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084789, 38.986126, 23.930363>,  <37.472183, 39.048611, 24.007959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084789, 38.986126, 23.930363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247018, 0.502714, 0.828408,
		-0.031886, 0.850221, -0.525459,
		-0.968486, -0.156212, -0.193991,
		36.794243, 38.939262, 23.872166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163219, 39.724903, 24.163101>,  <37.472183, 39.048611, 24.007959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163219, 39.724903, 24.163101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862007, 39.461712, 24.163940>,  <36.681278, 39.303799, 24.164444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862007, 39.461712, 24.163940>,  <37.163219, 39.724903, 24.163101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862007, 39.461712, 24.163940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434272, 0.499399, 0.749672,
		-0.494314, 0.563619, -0.661806,
		-0.753035, -0.657977, 0.002096,
		36.636097, 39.264320, 24.164570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627136, 40.276360, 24.438889>,  <37.163219, 39.724903, 24.163101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627136, 40.276360, 24.438889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521492, 39.893661, 24.487688>,  <36.458107, 39.664043, 24.516968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521492, 39.893661, 24.487688>,  <36.627136, 40.276360, 24.438889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521492, 39.893661, 24.487688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269410, 0.194636, 0.943152,
		-0.926101, 0.216229, -0.309162,
		-0.264111, -0.956745, 0.121999,
		36.442257, 39.606636, 24.524288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096081, 40.285736, 24.709986>,  <36.627136, 40.276360, 24.438889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096081, 40.285736, 24.709986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204624, 39.908642, 24.787567>,  <36.269749, 39.682384, 24.834116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204624, 39.908642, 24.787567>,  <36.096081, 40.285736, 24.709986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204624, 39.908642, 24.787567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159007, 0.154837, 0.975060,
		-0.949253, -0.295433, -0.107885,
		0.271360, -0.942733, 0.193956,
		36.286034, 39.625820, 24.845755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573624, 40.012756, 25.136497>,  <36.096081, 40.285736, 24.709986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573624, 40.012756, 25.136497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905056, 39.795555, 25.191044>,  <36.103916, 39.665234, 25.223772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905056, 39.795555, 25.191044>,  <35.573624, 40.012756, 25.136497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905056, 39.795555, 25.191044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174049, -0.018330, 0.984566,
		-0.532125, -0.839529, -0.109698,
		0.828583, -0.543005, 0.136366,
		36.153629, 39.632652, 25.231953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319668, 39.402355, 25.550880>,  <35.573624, 40.012756, 25.136497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319668, 39.402355, 25.550880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713856, 39.452271, 25.596964>,  <35.950371, 39.482220, 25.624615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713856, 39.452271, 25.596964>,  <35.319668, 39.402355, 25.550880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713856, 39.452271, 25.596964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098424, -0.133213, 0.986188,
		0.138409, -0.983200, -0.118996,
		0.985472, 0.124785, 0.115209,
		36.009499, 39.489704, 25.631527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384335, 39.080963, 26.188211>,  <35.319668, 39.402355, 25.550880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384335, 39.080963, 26.188211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736420, 39.263752, 26.136992>,  <35.947670, 39.373425, 26.106260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736420, 39.263752, 26.136992>,  <35.384335, 39.080963, 26.188211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736420, 39.263752, 26.136992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218222, -0.150133, 0.964282,
		0.421426, -0.876719, -0.231871,
		0.880216, 0.456973, -0.128050,
		36.000484, 39.400845, 26.098577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843914, 38.723732, 26.538815>,  <35.384335, 39.080963, 26.188211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843914, 38.723732, 26.538815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018063, 39.082176, 26.504299>,  <36.122551, 39.297241, 26.483589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018063, 39.082176, 26.504299>,  <35.843914, 38.723732, 26.538815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018063, 39.082176, 26.504299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134503, 0.030028, 0.990458,
		0.890148, -0.442820, -0.107456,
		0.435368, 0.896108, -0.086290,
		36.148674, 39.351009, 26.478413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571758, 38.682774, 26.830818>,  <35.843914, 38.723732, 26.538815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571758, 38.682774, 26.830818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469990, 39.069595, 26.827351>,  <36.408928, 39.301689, 26.825270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469990, 39.069595, 26.827351>,  <36.571758, 38.682774, 26.830818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469990, 39.069595, 26.827351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192561, 0.059442, 0.979483,
		0.947730, 0.247529, -0.201341,
		-0.254419, 0.967055, -0.008671,
		36.393665, 39.359711, 26.824749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069286, 38.962414, 27.244183>,  <36.571758, 38.682774, 26.830818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069286, 38.962414, 27.244183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814014, 39.270359, 27.241749>,  <36.660851, 39.455124, 27.240290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814014, 39.270359, 27.241749>,  <37.069286, 38.962414, 27.244183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814014, 39.270359, 27.241749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258608, 0.221805, 0.940173,
		0.725150, 0.598431, -0.340644,
		-0.638184, 0.769860, -0.006083,
		36.622559, 39.501316, 27.239923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381397, 39.557468, 27.610819>,  <37.069286, 38.962414, 27.244183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381397, 39.557468, 27.610819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989563, 39.637871, 27.610882>,  <36.754463, 39.686111, 27.610920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989563, 39.637871, 27.610882>,  <37.381397, 39.557468, 27.610819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989563, 39.637871, 27.610882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097452, 0.474237, 0.874987,
		0.175804, 0.857144, -0.484146,
		-0.979590, 0.201007, 0.000158,
		36.695686, 39.698174, 27.610929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268982, 40.331341, 27.814592>,  <37.381397, 39.557468, 27.610819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268982, 40.331341, 27.814592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934231, 40.123955, 27.884823>,  <36.733379, 39.999523, 27.926960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934231, 40.123955, 27.884823>,  <37.268982, 40.331341, 27.814592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934231, 40.123955, 27.884823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121614, 0.136627, 0.983129,
		-0.533706, 0.844113, -0.051288,
		-0.836880, -0.518465, 0.175575,
		36.683167, 39.968414, 27.937496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962662, 40.711113, 28.357817>,  <37.268982, 40.331341, 27.814592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962662, 40.711113, 28.357817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814823, 40.339466, 28.353212>,  <36.726120, 40.116478, 28.350451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814823, 40.339466, 28.353212>,  <36.962662, 40.711113, 28.357817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814823, 40.339466, 28.353212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154570, -0.073694, 0.985230,
		-0.916244, 0.362363, 0.170851,
		-0.369601, -0.929119, -0.011511,
		36.703941, 40.060730, 28.349758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393833, 40.715565, 28.764904>,  <36.962662, 40.711113, 28.357817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393833, 40.715565, 28.764904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525394, 40.337986, 28.753674>,  <36.604332, 40.111439, 28.746935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525394, 40.337986, 28.753674>,  <36.393833, 40.715565, 28.764904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525394, 40.337986, 28.753674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197047, 0.039523, 0.979597,
		-0.923578, -0.327722, 0.199001,
		0.328901, -0.943947, -0.028074,
		36.624065, 40.054802, 28.745251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360592, 40.431614, 29.474691>,  <36.393833, 40.715565, 28.764904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360592, 40.431614, 29.474691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590820, 40.141865, 29.322906>,  <36.728958, 39.968014, 29.231834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590820, 40.141865, 29.322906>,  <36.360592, 40.431614, 29.474691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590820, 40.141865, 29.322906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314749, -0.232045, 0.920374,
		-0.754750, -0.649179, 0.094437,
		0.575574, -0.724376, -0.379464,
		36.763493, 39.924553, 29.209066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030048, 39.700623, 29.610790>,  <36.360592, 40.431614, 29.474691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030048, 39.700623, 29.610790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426918, 39.698009, 29.560902>,  <36.665039, 39.696442, 29.530970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426918, 39.698009, 29.560902>,  <36.030048, 39.700623, 29.610790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426918, 39.698009, 29.560902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114985, -0.341978, 0.932646,
		-0.048747, -0.939685, -0.338549,
		0.992170, -0.006536, -0.124720,
		36.724567, 39.696049, 29.523485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316547, 39.148235, 29.922606>,  <36.030048, 39.700623, 29.610790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316547, 39.148235, 29.922606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655640, 39.360291, 29.915516>,  <36.859093, 39.487522, 29.911263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655640, 39.360291, 29.915516>,  <36.316547, 39.148235, 29.922606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655640, 39.360291, 29.915516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238376, -0.350903, 0.905563,
		0.473850, -0.771897, -0.423842,
		0.847728, 0.530135, -0.017726,
		36.909958, 39.519329, 29.910198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765865, 38.649601, 30.077114>,  <36.316547, 39.148235, 29.922606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765865, 38.649601, 30.077114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935810, 38.999290, 30.171116>,  <37.037777, 39.209103, 30.227516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935810, 38.999290, 30.171116>,  <36.765865, 38.649601, 30.077114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935810, 38.999290, 30.171116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289900, -0.377317, 0.879540,
		0.857586, -0.305553, -0.413744,
		0.424858, 0.874225, 0.235002,
		37.063267, 39.261559, 30.241617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524704, 38.475330, 30.256817>,  <36.765865, 38.649601, 30.077114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524704, 38.475330, 30.256817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469803, 38.828785, 30.435858>,  <37.436863, 39.040859, 30.543282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469803, 38.828785, 30.435858>,  <37.524704, 38.475330, 30.256817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469803, 38.828785, 30.435858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354456, -0.378143, 0.855201,
		0.924945, 0.276031, -0.261311,
		-0.137249, 0.883637, 0.447602,
		37.428627, 39.093876, 30.570139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115795, 38.586075, 30.689125>,  <37.524704, 38.475330, 30.256817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115795, 38.586075, 30.689125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849140, 38.849167, 30.829399>,  <37.689148, 39.007023, 30.913563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849140, 38.849167, 30.829399>,  <38.115795, 38.586075, 30.689125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849140, 38.849167, 30.829399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292046, -0.202381, 0.934747,
		0.685786, 0.725554, -0.057173,
		-0.666639, 0.657733, 0.350685,
		37.649147, 39.046486, 30.934605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476749, 38.879398, 31.209806>,  <38.115795, 38.586075, 30.689125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476749, 38.879398, 31.209806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095833, 38.965157, 31.296682>,  <37.867283, 39.016613, 31.348808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095833, 38.965157, 31.296682>,  <38.476749, 38.879398, 31.209806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095833, 38.965157, 31.296682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190850, -0.136968, 0.972016,
		0.238148, 0.967095, 0.089516,
		-0.952293, 0.214399, 0.217188,
		37.810146, 39.029476, 31.361839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527008, 39.390335, 31.802650>,  <38.476749, 38.879398, 31.209806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527008, 39.390335, 31.802650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159382, 39.232723, 31.805731>,  <37.938805, 39.138157, 31.807579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159382, 39.232723, 31.805731>,  <38.527008, 39.390335, 31.802650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159382, 39.232723, 31.805731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047764, -0.091971, 0.994616,
		-0.391199, 0.914485, 0.103348,
		-0.919066, -0.394029, 0.007700,
		37.883663, 39.114513, 31.808041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552525, 39.031799, 32.439709>,  <38.527008, 39.390335, 31.802650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552525, 39.031799, 32.439709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174919, 38.991085, 32.314186>,  <37.948357, 38.966656, 32.238873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174919, 38.991085, 32.314186>,  <38.552525, 39.031799, 32.439709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174919, 38.991085, 32.314186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264577, -0.334626, 0.904447,
		-0.197068, 0.936838, 0.288962,
		-0.944014, -0.101785, -0.313810,
		37.891716, 38.960548, 32.220043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897045, 39.026314, 33.170658>,  <38.552525, 39.031799, 32.439709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897045, 39.026314, 33.170658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126495, 38.698891, 33.182812>,  <39.264164, 38.502438, 33.190105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126495, 38.698891, 33.182812>,  <38.897045, 39.026314, 33.170658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126495, 38.698891, 33.182812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432624, 0.334259, 0.837322,
		-0.695551, -0.467162, 0.545866,
		0.573625, -0.818554, 0.030388,
		39.298584, 38.453323, 33.191929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149132, 39.480217, 33.721214>,  <38.897045, 39.026314, 33.170658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149132, 39.480217, 33.721214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284088, 39.799610, 33.920650>,  <39.365063, 39.991245, 34.040310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284088, 39.799610, 33.920650>,  <39.149132, 39.480217, 33.721214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284088, 39.799610, 33.920650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201709, -0.578662, 0.790230,
		0.919500, -0.166047, -0.356297,
		0.337391, 0.798486, 0.498587,
		39.385307, 40.039154, 34.070225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831955, 39.559013, 33.733406>,  <39.149132, 39.480217, 33.721214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831955, 39.559013, 33.733406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651287, 39.681229, 34.068703>,  <39.542885, 39.754559, 34.269878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651287, 39.681229, 34.068703>,  <39.831955, 39.559013, 33.733406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651287, 39.681229, 34.068703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435829, -0.744247, 0.506112,
		0.778491, 0.593924, 0.202993,
		-0.451669, 0.305534, 0.838239,
		39.515785, 39.772888, 34.320175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355431, 39.819351, 34.219429>,  <39.831955, 39.559013, 33.733406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355431, 39.819351, 34.219429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023457, 39.665123, 34.380692>,  <39.824272, 39.572586, 34.477448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023457, 39.665123, 34.380692>,  <40.355431, 39.819351, 34.219429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023457, 39.665123, 34.380692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554251, -0.651923, 0.517496,
		0.063295, 0.652940, 0.754760,
		-0.829939, -0.385572, 0.403156,
		39.774475, 39.549450, 34.501637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736362, 39.262383, 34.013756>,  <40.355431, 39.819351, 34.219429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736362, 39.262383, 34.013756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984150, 39.333107, 33.707813>,  <41.132824, 39.375542, 33.524250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984150, 39.333107, 33.707813>,  <40.736362, 39.262383, 34.013756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984150, 39.333107, 33.707813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775151, -0.291790, 0.560357,
		-0.124099, -0.939998, -0.317809,
		0.619468, 0.176810, -0.764852,
		41.169991, 39.386150, 33.478359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213303, 38.734577, 33.928532>,  <40.736362, 39.262383, 34.013756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213303, 38.734577, 33.928532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360462, 39.096207, 33.841541>,  <41.448757, 39.313187, 33.789349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360462, 39.096207, 33.841541>,  <41.213303, 38.734577, 33.928532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360462, 39.096207, 33.841541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836877, -0.219976, 0.501247,
		0.405326, -0.366407, -0.837530,
		0.367897, 0.904078, -0.217476,
		41.470833, 39.367432, 33.776299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872540, 38.570698, 33.904186>,  <41.213303, 38.734577, 33.928532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872540, 38.570698, 33.904186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821545, 38.951740, 34.014668>,  <41.790947, 39.180367, 34.080956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821545, 38.951740, 34.014668>,  <41.872540, 38.570698, 33.904186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821545, 38.951740, 34.014668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708386, -0.107462, 0.697597,
		0.694217, 0.284588, -0.661114,
		-0.127483, 0.952608, 0.276200,
		41.783298, 39.237522, 34.097527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446705, 39.016361, 33.705914>,  <41.872540, 38.570698, 33.904186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446705, 39.016361, 33.705914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279507, 39.141598, 34.047031>,  <42.179188, 39.216740, 34.251701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279507, 39.141598, 34.047031>,  <42.446705, 39.016361, 33.705914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279507, 39.141598, 34.047031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850423, -0.195268, 0.488519,
		0.319474, 0.929433, -0.184637,
		-0.417992, 0.313088, 0.852794,
		42.154110, 39.235523, 34.302868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982449, 39.209534, 34.075565>,  <42.446705, 39.016361, 33.705914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982449, 39.209534, 34.075565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731850, 39.187401, 34.386547>,  <42.581490, 39.174122, 34.573135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731850, 39.187401, 34.386547>,  <42.982449, 39.209534, 34.075565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731850, 39.187401, 34.386547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762778, -0.248552, 0.596985,
		0.160206, 0.967037, 0.197924,
		-0.626501, -0.055332, 0.777454,
		42.543900, 39.170803, 34.619781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409733, 39.029129, 34.637924>,  <42.982449, 39.209534, 34.075565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409733, 39.029129, 34.637924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058029, 39.083595, 34.820511>,  <42.847008, 39.116276, 34.930061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058029, 39.083595, 34.820511>,  <43.409733, 39.029129, 34.637924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058029, 39.083595, 34.820511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419562, -0.232342, 0.877488,
		0.225539, 0.963056, 0.147160,
		-0.879261, 0.136165, 0.456464,
		42.794250, 39.124443, 34.957451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727551, 39.128613, 35.242207>,  <43.409733, 39.029129, 34.637924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727551, 39.128613, 35.242207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344826, 39.098892, 35.354622>,  <43.115189, 39.081062, 35.422073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344826, 39.098892, 35.354622>,  <43.727551, 39.128613, 35.242207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344826, 39.098892, 35.354622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284581, -0.436664, 0.853427,
		0.059313, 0.896551, 0.438951,
		-0.956816, -0.074298, 0.281041,
		43.057781, 39.076603, 35.438934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553818, 39.512962, 35.967278>,  <43.727551, 39.128613, 35.242207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553818, 39.512962, 35.967278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329350, 39.190701, 35.891373>,  <43.194668, 38.997345, 35.845829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329350, 39.190701, 35.891373>,  <43.553818, 39.512962, 35.967278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329350, 39.190701, 35.891373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517532, -0.520455, 0.679181,
		-0.645948, 0.282928, 0.709016,
		-0.561170, -0.805654, -0.189762,
		43.160999, 38.949005, 35.834442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386784, 39.260818, 36.644527>,  <43.553818, 39.512962, 35.967278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386784, 39.260818, 36.644527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350990, 38.978500, 36.363430>,  <43.329514, 38.809109, 36.194771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350990, 38.978500, 36.363430>,  <43.386784, 39.260818, 36.644527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350990, 38.978500, 36.363430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538385, -0.627883, 0.562054,
		-0.837934, -0.328048, 0.436178,
		-0.089488, -0.705796, -0.702740,
		43.324142, 38.766762, 36.152607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100418, 38.642036, 36.993206>,  <43.386784, 39.260818, 36.644527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100418, 38.642036, 36.993206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260223, 38.494961, 36.657303>,  <43.356106, 38.406715, 36.455761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260223, 38.494961, 36.657303>,  <43.100418, 38.642036, 36.993206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260223, 38.494961, 36.657303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317991, -0.803578, 0.503134,
		-0.859810, -0.468042, -0.204114,
		0.399510, -0.367693, -0.839758,
		43.380077, 38.384651, 36.405376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729034, 37.896210, 36.829594>,  <43.100418, 38.642036, 36.993206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729034, 37.896210, 36.829594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097961, 37.942795, 36.682209>,  <43.319317, 37.970745, 36.593781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097961, 37.942795, 36.682209>,  <42.729034, 37.896210, 36.829594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097961, 37.942795, 36.682209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302358, -0.811256, 0.500444,
		-0.240633, -0.572976, -0.783450,
		0.922321, 0.116459, -0.368459,
		43.374657, 37.977734, 36.571671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851826, 37.248676, 36.550117>,  <42.729034, 37.896210, 36.829594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851826, 37.248676, 36.550117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196503, 37.434631, 36.631462>,  <43.403309, 37.546204, 36.680271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196503, 37.434631, 36.631462>,  <42.851826, 37.248676, 36.550117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196503, 37.434631, 36.631462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329685, -0.817594, 0.472067,
		0.385729, -0.339732, -0.857785,
		0.861697, 0.464889, 0.203366,
		43.455013, 37.574097, 36.692471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361752, 36.768421, 36.390530>,  <42.851826, 37.248676, 36.550117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361752, 36.768421, 36.390530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552269, 37.028301, 36.627522>,  <43.666580, 37.184231, 36.769718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552269, 37.028301, 36.627522>,  <43.361752, 36.768421, 36.390530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552269, 37.028301, 36.627522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338041, -0.757333, 0.558726,
		0.811711, -0.065834, -0.580338,
		0.476292, 0.649702, 0.592481,
		43.695156, 37.223213, 36.805267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019516, 36.596443, 36.396107>,  <43.361752, 36.768421, 36.390530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019516, 36.596443, 36.396107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007679, 36.820877, 36.726997>,  <44.000576, 36.955540, 36.925533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007679, 36.820877, 36.726997>,  <44.019516, 36.596443, 36.396107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007679, 36.820877, 36.726997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520934, -0.697653, 0.491841,
		0.853083, 0.445488, -0.271642,
		-0.029597, 0.561089, 0.827226,
		43.998798, 36.989204, 36.975166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652290, 36.851189, 36.533833>,  <44.019516, 36.596443, 36.396107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652290, 36.851189, 36.533833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458618, 36.834713, 36.883434>,  <44.342415, 36.824825, 37.093193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458618, 36.834713, 36.883434>,  <44.652290, 36.851189, 36.533833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458618, 36.834713, 36.883434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758116, -0.518464, 0.395543,
		0.436844, 0.854107, 0.282258,
		-0.484177, -0.041194, 0.874000,
		44.313366, 36.822353, 37.145634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152676, 36.910213, 37.085873>,  <44.652290, 36.851189, 36.533833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152676, 36.910213, 37.085873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.820255, 36.726109, 37.210781>,  <44.620804, 36.615646, 37.285725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.820255, 36.726109, 37.210781>,  <45.152676, 36.910213, 37.085873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820255, 36.726109, 37.210781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545035, -0.562018, 0.622152,
		-0.110849, 0.687240, 0.717923,
		-0.831053, -0.460258, 0.312271,
		44.570938, 36.588032, 37.304462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234741, 36.880775, 37.762043>,  <45.152676, 36.910213, 37.085873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234741, 36.880775, 37.762043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989964, 36.577663, 37.671444>,  <44.843098, 36.395798, 37.617085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989964, 36.577663, 37.671444>,  <45.234741, 36.880775, 37.762043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989964, 36.577663, 37.671444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364571, -0.524398, 0.769477,
		-0.701866, 0.388302, 0.597165,
		-0.611941, -0.757779, -0.226493,
		44.806381, 36.350330, 37.603497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921383, 36.653084, 38.397118>,  <45.234741, 36.880775, 37.762043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921383, 36.653084, 38.397118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919033, 36.330097, 38.161163>,  <44.917622, 36.136307, 38.019592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919033, 36.330097, 38.161163>,  <44.921383, 36.653084, 38.397118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919033, 36.330097, 38.161163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220869, -0.576376, 0.786770,
		-0.975286, -0.125662, 0.181733,
		-0.005879, -0.807465, -0.589886,
		44.917271, 36.087856, 37.984196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252697, 36.209530, 38.503395>,  <44.921383, 36.653084, 38.397118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252697, 36.209530, 38.503395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587257, 36.017555, 38.397495>,  <44.787994, 35.902370, 38.333954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587257, 36.017555, 38.397495>,  <44.252697, 36.209530, 38.503395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587257, 36.017555, 38.397495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018853, -0.457538, 0.888990,
		-0.547796, -0.748543, -0.373636,
		0.836400, -0.479941, -0.264750,
		44.838177, 35.873573, 38.318069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613892, 36.466110, 37.996876>,  <44.252697, 36.209530, 38.503395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613892, 36.466110, 37.996876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966591, 36.635677, 37.914112>,  <44.178211, 36.737415, 37.864456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966591, 36.635677, 37.914112>,  <43.613892, 36.466110, 37.996876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966591, 36.635677, 37.914112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456092, 0.654208, -0.603318,
		-0.120395, 0.626345, 0.770192,
		0.881751, 0.423915, -0.206907,
		44.231117, 36.762852, 37.852039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544235, 37.197239, 38.005959>,  <43.613892, 36.466110, 37.996876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544235, 37.197239, 38.005959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872810, 37.119644, 37.791443>,  <44.069954, 37.073086, 37.662731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872810, 37.119644, 37.791443>,  <43.544235, 37.197239, 38.005959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872810, 37.119644, 37.791443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226532, 0.752015, -0.618997,
		0.523375, 0.629955, 0.573790,
		0.821439, -0.193986, -0.536291,
		44.119244, 37.061447, 37.630554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904770, 37.834232, 37.967453>,  <43.544235, 37.197239, 38.005959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904770, 37.834232, 37.967453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950581, 37.591415, 37.652901>,  <43.978065, 37.445724, 37.464169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950581, 37.591415, 37.652901>,  <43.904770, 37.834232, 37.967453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950581, 37.591415, 37.652901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234798, 0.752616, -0.615174,
		0.965274, 0.255091, -0.056339,
		0.114524, -0.607040, -0.786376,
		43.984940, 37.409302, 37.416988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366085, 38.145802, 37.424637>,  <43.904770, 37.834232, 37.967453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366085, 38.145802, 37.424637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138790, 37.865719, 37.251751>,  <44.002411, 37.697670, 37.148018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138790, 37.865719, 37.251751>,  <44.366085, 38.145802, 37.424637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138790, 37.865719, 37.251751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144178, 0.601860, -0.785479,
		0.810133, -0.384024, -0.442956,
		-0.568240, -0.700207, -0.432219,
		43.968319, 37.655659, 37.122086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572906, 38.243450, 36.703018>,  <44.366085, 38.145802, 37.424637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572906, 38.243450, 36.703018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237789, 38.026089, 36.681797>,  <44.036720, 37.895672, 36.669064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237789, 38.026089, 36.681797>,  <44.572906, 38.243450, 36.703018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237789, 38.026089, 36.681797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272353, 0.500155, -0.821991,
		0.473205, -0.674211, -0.567024,
		-0.837795, -0.543401, -0.053053,
		43.986450, 37.863068, 36.665878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457157, 38.088676, 35.998650>,  <44.572906, 38.243450, 36.703018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457157, 38.088676, 35.998650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086693, 38.009258, 36.126900>,  <43.864414, 37.961609, 36.203850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086693, 38.009258, 36.126900>,  <44.457157, 38.088676, 35.998650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086693, 38.009258, 36.126900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375789, 0.557242, -0.740449,
		-0.031654, -0.806264, -0.590708,
		-0.926165, -0.198543, 0.320624,
		43.808842, 37.949696, 36.223087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996601, 37.908791, 35.385628>,  <44.457157, 38.088676, 35.998650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996601, 37.908791, 35.385628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767975, 38.048019, 35.682858>,  <43.630798, 38.131557, 35.861195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767975, 38.048019, 35.682858>,  <43.996601, 37.908791, 35.385628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767975, 38.048019, 35.682858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406304, 0.666718, -0.624823,
		-0.712905, -0.659041, -0.239649,
		-0.571562, 0.348069, 0.743078,
		43.596504, 38.152439, 35.905781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308418, 37.874897, 35.169937>,  <43.996601, 37.908791, 35.385628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308418, 37.874897, 35.169937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316608, 38.138687, 35.470516>,  <43.321522, 38.296963, 35.650864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316608, 38.138687, 35.470516>,  <43.308418, 37.874897, 35.169937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316608, 38.138687, 35.470516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614160, 0.601372, -0.511038,
		-0.788916, -0.451043, 0.417340,
		0.020477, 0.659479, 0.751444,
		43.322750, 38.336533, 35.695950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618706, 37.962555, 35.534927>,  <43.308418, 37.874897, 35.169937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618706, 37.962555, 35.534927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829998, 38.302139, 35.528816>,  <42.956772, 38.505890, 35.525150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829998, 38.302139, 35.528816>,  <42.618706, 37.962555, 35.534927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829998, 38.302139, 35.528816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736301, 0.449024, -0.506200,
		-0.422888, 0.278636, 0.862280,
		0.528230, 0.848964, -0.015274,
		42.988468, 38.556828, 35.524235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273083, 38.354553, 35.870182>,  <42.618706, 37.962555, 35.534927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273083, 38.354553, 35.870182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490662, 38.563568, 35.607555>,  <42.621208, 38.688976, 35.449982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490662, 38.563568, 35.607555>,  <42.273083, 38.354553, 35.870182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490662, 38.563568, 35.607555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838091, 0.299539, -0.455940,
		-0.041580, 0.798266, 0.600868,
		0.543944, 0.522540, -0.656564,
		42.653847, 38.720329, 35.410587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833012, 38.490452, 35.296879>,  <42.273083, 38.354553, 35.870182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833012, 38.490452, 35.296879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126484, 38.750332, 35.217278>,  <42.302567, 38.906258, 35.169518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126484, 38.750332, 35.217278>,  <41.833012, 38.490452, 35.296879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126484, 38.750332, 35.217278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602899, 0.487360, -0.631658,
		-0.313401, 0.583415, 0.749271,
		0.733684, 0.649697, -0.199001,
		42.346588, 38.945240, 35.157578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498837, 39.055561, 35.390263>,  <41.833012, 38.490452, 35.296879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498837, 39.055561, 35.390263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826580, 39.104721, 35.166283>,  <42.023228, 39.134216, 35.031895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826580, 39.104721, 35.166283>,  <41.498837, 39.055561, 35.390263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826580, 39.104721, 35.166283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537172, 0.505758, -0.675023,
		0.200239, 0.853876, 0.480416,
		0.819360, 0.122900, -0.559950,
		42.072388, 39.141590, 34.998299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658409, 39.763027, 35.440025>,  <41.498837, 39.055561, 35.390263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658409, 39.763027, 35.440025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800911, 39.575653, 35.116631>,  <41.886414, 39.463230, 34.922592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800911, 39.575653, 35.116631>,  <41.658409, 39.763027, 35.440025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800911, 39.575653, 35.116631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690253, 0.451256, -0.565614,
		0.629787, 0.759564, -0.162575,
		0.356257, -0.468434, -0.808487,
		41.907787, 39.435123, 34.874084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842663, 40.311359, 35.011177>,  <41.658409, 39.763027, 35.440025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842663, 40.311359, 35.011177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792156, 39.972252, 34.805130>,  <41.761852, 39.768787, 34.681499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792156, 39.972252, 34.805130>,  <41.842663, 40.311359, 35.011177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792156, 39.972252, 34.805130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279078, 0.528665, -0.801642,
		0.951930, 0.042535, -0.303347,
		-0.126271, -0.847764, -0.515122,
		41.754276, 39.717922, 34.650593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846264, 40.506386, 34.374523>,  <41.842663, 40.311359, 35.011177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846264, 40.506386, 34.374523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814903, 40.117523, 34.286198>,  <41.796089, 39.884205, 34.233204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814903, 40.117523, 34.286198>,  <41.846264, 40.506386, 34.374523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814903, 40.117523, 34.286198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442722, 0.232407, -0.866016,
		0.893225, 0.029864, -0.448617,
		-0.078399, -0.972160, -0.220813,
		41.791382, 39.825874, 34.219955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100250, 40.470062, 33.662712>,  <41.846264, 40.506386, 34.374523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100250, 40.470062, 33.662712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871216, 40.145809, 33.711731>,  <41.733795, 39.951256, 33.741142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871216, 40.145809, 33.711731>,  <42.100250, 40.470062, 33.662712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871216, 40.145809, 33.711731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498960, 0.225960, -0.836649,
		0.650523, -0.540202, -0.533855,
		-0.572589, -0.810632, 0.122547,
		41.699440, 39.902618, 33.748497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241535, 39.985378, 33.146988>,  <42.100250, 40.470062, 33.662712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241535, 39.985378, 33.146988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870789, 39.939915, 33.290096>,  <41.648342, 39.912636, 33.375961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870789, 39.939915, 33.290096>,  <42.241535, 39.985378, 33.146988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870789, 39.939915, 33.290096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371610, 0.142853, -0.917332,
		0.053148, -0.983197, -0.174640,
		-0.926866, -0.113653, 0.357774,
		41.592728, 39.905819, 33.397427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880165, 39.619560, 32.749889>,  <42.241535, 39.985378, 33.146988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880165, 39.619560, 32.749889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567848, 39.768826, 32.950336>,  <41.380459, 39.858387, 33.070606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567848, 39.768826, 32.950336>,  <41.880165, 39.619560, 32.749889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567848, 39.768826, 32.950336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511719, 0.078254, -0.855581,
		-0.358488, -0.924459, 0.129857,
		-0.780788, 0.373166, 0.501117,
		41.333611, 39.880775, 33.100670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105186, 38.992004, 32.333633>,  <41.880165, 39.619560, 32.749889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105186, 38.992004, 32.333633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229115, 39.146633, 31.986168>,  <42.303471, 39.239410, 31.777689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229115, 39.146633, 31.986168>,  <42.105186, 38.992004, 32.333633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229115, 39.146633, 31.986168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886611, -0.447448, 0.117093,
		-0.343416, -0.806443, -0.481367,
		0.309815, 0.386574, -0.868663,
		42.322060, 39.262604, 31.725569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478699, 38.444904, 31.891079>,  <42.105186, 38.992004, 32.333633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478699, 38.444904, 31.891079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642048, 38.797771, 31.797264>,  <42.740055, 39.009491, 31.740974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642048, 38.797771, 31.797264>,  <42.478699, 38.444904, 31.891079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642048, 38.797771, 31.797264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898329, -0.433991, -0.068241,
		-0.161988, -0.182825, -0.969709,
		0.408369, 0.882172, -0.234538,
		42.764557, 39.062424, 31.726902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844311, 38.439274, 31.236919>,  <42.478699, 38.444904, 31.891079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844311, 38.439274, 31.236919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014881, 38.677151, 31.509537>,  <43.117222, 38.819878, 31.673107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014881, 38.677151, 31.509537>,  <42.844311, 38.439274, 31.236919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014881, 38.677151, 31.509537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812379, -0.583130, 0.000537,
		0.397747, 0.553441, -0.731779,
		0.426425, 0.594696, 0.681542,
		43.142807, 38.855560, 31.713999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451012, 38.735260, 30.986210>,  <42.844311, 38.439274, 31.236919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451012, 38.735260, 30.986210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490406, 38.739349, 31.384245>,  <43.514042, 38.741802, 31.623066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490406, 38.739349, 31.384245>,  <43.451012, 38.735260, 30.986210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490406, 38.739349, 31.384245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796845, -0.599794, -0.072702,
		0.596103, 0.800089, -0.067220,
		0.098486, 0.010226, 0.995086,
		43.519951, 38.742416, 31.682770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065239, 39.067333, 31.233282>,  <43.451012, 38.735260, 30.986210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065239, 39.067333, 31.233282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951611, 38.776993, 31.483864>,  <43.883434, 38.602787, 31.634212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951611, 38.776993, 31.483864>,  <44.065239, 39.067333, 31.233282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951611, 38.776993, 31.483864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854414, -0.488111, -0.178113,
		0.435062, 0.484652, 0.758837,
		-0.284074, -0.725851, 0.626452,
		43.866390, 38.559238, 31.671799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661530, 38.687218, 31.332792>,  <44.065239, 39.067333, 31.233282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661530, 38.687218, 31.332792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391117, 38.446545, 31.502954>,  <44.228870, 38.302143, 31.605051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391117, 38.446545, 31.502954>,  <44.661530, 38.687218, 31.332792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391117, 38.446545, 31.502954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608824, -0.781293, -0.137529,
		0.415113, 0.166022, 0.894493,
		-0.676028, -0.601679, 0.425403,
		44.188309, 38.266041, 31.630575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815014, 38.412346, 31.957529>,  <44.661530, 38.687218, 31.332792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815014, 38.412346, 31.957529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590839, 38.130142, 31.784019>,  <44.456333, 37.960819, 31.679914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590839, 38.130142, 31.784019>,  <44.815014, 38.412346, 31.957529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590839, 38.130142, 31.784019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658489, -0.697247, 0.283265,
		-0.502294, -0.126881, 0.855337,
		-0.560440, -0.705512, -0.433773,
		44.422707, 37.918488, 31.653887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587433, 37.950558, 32.478943>,  <44.815014, 38.412346, 31.957529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587433, 37.950558, 32.478943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674004, 37.813641, 32.113213>,  <44.725945, 37.731491, 31.893774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674004, 37.813641, 32.113213>,  <44.587433, 37.950558, 32.478943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674004, 37.813641, 32.113213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621898, -0.673600, 0.399381,
		-0.752597, -0.655055, 0.067088,
		0.216427, -0.342295, -0.914327,
		44.738934, 37.710953, 31.838915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403557, 37.185181, 32.233925>,  <44.587433, 37.950558, 32.478943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403557, 37.185181, 32.233925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741676, 37.382545, 32.151928>,  <44.944546, 37.500965, 32.102730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741676, 37.382545, 32.151928>,  <44.403557, 37.185181, 32.233925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741676, 37.382545, 32.151928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527033, -0.706923, 0.471695,
		0.087824, -0.506760, -0.857602,
		0.845294, 0.493411, -0.204995,
		44.995266, 37.530567, 32.090431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855907, 36.696899, 31.970608>,  <44.403557, 37.185181, 32.233925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855907, 36.696899, 31.970608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087246, 36.997807, 32.096848>,  <45.226048, 37.178352, 32.172592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087246, 36.997807, 32.096848>,  <44.855907, 36.696899, 31.970608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087246, 36.997807, 32.096848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684900, -0.657920, 0.313134,
		0.443201, 0.035054, -0.895737,
		0.578346, 0.752272, 0.315599,
		45.260750, 37.223488, 32.191528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470638, 36.728962, 31.632683>,  <44.855907, 36.696899, 31.970608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470638, 36.728962, 31.632683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477406, 36.854500, 32.012413>,  <45.481464, 36.929821, 32.240250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477406, 36.854500, 32.012413>,  <45.470638, 36.728962, 31.632683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477406, 36.854500, 32.012413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446433, -0.851934, 0.273691,
		0.894657, 0.419180, -0.154522,
		0.016917, 0.313843, 0.949324,
		45.482479, 36.948654, 32.297211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036709, 36.501274, 31.850647>,  <45.470638, 36.728962, 31.632683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036709, 36.501274, 31.850647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886444, 36.620384, 32.201694>,  <45.796288, 36.691849, 32.412323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.886444, 36.620384, 32.201694>,  <46.036709, 36.501274, 31.850647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886444, 36.620384, 32.201694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412619, -0.794198, 0.446088,
		0.829834, 0.529699, 0.175482,
		-0.375660, 0.297772, 0.877617,
		45.773746, 36.709717, 32.464981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386089, 37.219505, 32.034843>,  <46.036709, 36.501274, 31.850647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386089, 37.219505, 32.034843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022762, 37.314972, 32.172249>,  <45.804768, 37.372250, 32.254692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022762, 37.314972, 32.172249>,  <46.386089, 37.219505, 32.034843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.022762, 37.314972, 32.172249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327102, -0.106550, 0.938963,
		0.260697, 0.965239, 0.018714,
		-0.908318, 0.238663, 0.343509,
		45.750267, 37.386570, 32.275303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733383, 37.515945, 31.434118>,  <46.386089, 37.219505, 32.034843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733383, 37.515945, 31.434118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609390, 37.780457, 31.707357>,  <46.534996, 37.939163, 31.871302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609390, 37.780457, 31.707357>,  <46.733383, 37.515945, 31.434118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609390, 37.780457, 31.707357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883677, 0.064675, -0.463608,
		-0.350753, -0.747348, 0.564308,
		-0.309980, 0.661277, 0.683100,
		46.516396, 37.978840, 31.912287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.074574, 36.821743, 31.730558>,  <46.733383, 37.515945, 31.434118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.074574, 36.821743, 31.730558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.954178, 36.566608, 31.446989>,  <46.881943, 36.413528, 31.276848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.954178, 36.566608, 31.446989>,  <47.074574, 36.821743, 31.730558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.954178, 36.566608, 31.446989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950504, -0.260784, -0.168919,
		-0.077133, -0.724676, 0.684759,
		-0.300986, -0.637837, -0.708923,
		46.863884, 36.375256, 31.234312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417362, 36.312817, 31.780787>,  <47.074574, 36.821743, 31.730558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417362, 36.312817, 31.780787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289646, 36.237202, 31.409342>,  <47.213017, 36.191833, 31.186476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289646, 36.237202, 31.409342>,  <47.417362, 36.312817, 31.780787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289646, 36.237202, 31.409342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931929, -0.240424, -0.271486,
		-0.171938, -0.952082, 0.252937,
		-0.319289, -0.189041, -0.928611,
		47.193859, 36.180489, 31.130758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.319157, 36.495663, 32.542336>,  <47.417362, 36.312817, 31.780787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.319157, 36.495663, 32.542336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555019, 36.265652, 32.315475>,  <47.696537, 36.127647, 32.179359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.555019, 36.265652, 32.315475>,  <47.319157, 36.495663, 32.542336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.555019, 36.265652, 32.315475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253067, 0.535309, -0.805854,
		0.766984, 0.618702, 0.170128,
		0.589655, -0.575023, -0.567147,
		47.731915, 36.093143, 32.145332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.993580, 35.946743, 32.828426>,  <47.319157, 36.495663, 32.542336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.993580, 35.946743, 32.828426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.194084, 35.932102, 33.174232>,  <47.314388, 35.923317, 33.381718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.194084, 35.932102, 33.174232>,  <46.993580, 35.946743, 32.828426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.194084, 35.932102, 33.174232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444585, 0.868039, -0.221026,
		-0.742347, 0.495145, 0.451390,
		0.501264, -0.036603, 0.864520,
		47.344463, 35.921120, 33.433590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652279, 36.488705, 33.025684>,  <46.993580, 35.946743, 32.828426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652279, 36.488705, 33.025684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310123, 36.487988, 33.232876>,  <46.104828, 36.487556, 33.357189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310123, 36.487988, 33.232876>,  <46.652279, 36.488705, 33.025684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310123, 36.487988, 33.232876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053546, -0.994943, 0.084976,
		0.515205, 0.100424, 0.851163,
		-0.855393, -0.001797, 0.517977,
		46.053505, 36.487450, 33.388268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680210, 36.137592, 33.674225>,  <46.652279, 36.488705, 33.025684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680210, 36.137592, 33.674225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290428, 36.090584, 33.597672>,  <46.056561, 36.062378, 33.551739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290428, 36.090584, 33.597672>,  <46.680210, 36.137592, 33.674225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290428, 36.090584, 33.597672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103726, -0.991336, 0.080586,
		-0.199198, 0.058675, 0.978201,
		-0.974454, -0.117518, -0.191386,
		45.998093, 36.055328, 33.540257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369598, 35.747581, 34.212311>,  <46.680210, 36.137592, 33.674225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369598, 35.747581, 34.212311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171227, 35.708344, 33.867188>,  <46.052204, 35.684799, 33.660114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171227, 35.708344, 33.867188>,  <46.369598, 35.747581, 34.212311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171227, 35.708344, 33.867188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062641, -0.995052, 0.077124,
		-0.866101, -0.015799, 0.499619,
		-0.495929, -0.098093, -0.862805,
		46.022449, 35.678917, 33.608345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022617, 35.129223, 34.291561>,  <46.369598, 35.747581, 34.212311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022617, 35.129223, 34.291561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975689, 35.150242, 33.894878>,  <45.947533, 35.162853, 33.656868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975689, 35.150242, 33.894878>,  <46.022617, 35.129223, 34.291561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975689, 35.150242, 33.894878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037819, -0.998112, -0.048409,
		-0.992374, 0.031825, 0.119088,
		-0.117322, 0.052543, -0.991703,
		45.940491, 35.166004, 33.597366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517036, 34.992329, 34.823711>,  <46.022617, 35.129223, 34.291561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517036, 34.992329, 34.823711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.347317, 34.709503, 34.597427>,  <46.245483, 34.539806, 34.461655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.347317, 34.709503, 34.597427>,  <46.517036, 34.992329, 34.823711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.347317, 34.709503, 34.597427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320529, -0.467016, 0.824110,
		-0.846894, 0.530998, -0.028478,
		-0.424301, -0.707062, -0.565713,
		46.220028, 34.497383, 34.427715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.206165, 35.302376, 34.575504>,  <46.517036, 34.992329, 34.823711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.206165, 35.302376, 34.575504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365112, 35.562782, 34.834202>,  <47.460480, 35.719025, 34.989422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365112, 35.562782, 34.834202>,  <47.206165, 35.302376, 34.575504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365112, 35.562782, 34.834202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511281, -0.428185, 0.745150,
		0.762031, -0.626766, 0.162706,
		0.397367, 0.651016, 0.646744,
		47.484322, 35.758087, 35.028225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723270, 34.693863, 34.677654>,  <47.206165, 35.302376, 34.575504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723270, 34.693863, 34.677654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.936813, 34.708481, 35.015568>,  <48.064938, 34.717251, 35.218315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.936813, 34.708481, 35.015568>,  <47.723270, 34.693863, 34.677654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.936813, 34.708481, 35.015568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349456, 0.900221, -0.259776,
		-0.769985, 0.433898, 0.467820,
		0.533857, 0.036541, 0.844785,
		48.096970, 34.719444, 35.269005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.025795, 35.965775, 23.143850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726837, 36.201923, 23.021954>,  <32.547462, 36.343613, 22.948816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726837, 36.201923, 23.021954>,  <33.025795, 35.965775, 23.143850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726837, 36.201923, 23.021954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183985, 0.256829, 0.948782,
		0.638399, 0.765181, -0.083333,
		-0.747393, 0.590370, -0.304741,
		32.502621, 36.379036, 22.930531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176632, 36.570274, 23.476271>,  <33.025795, 35.965775, 23.143850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176632, 36.570274, 23.476271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.784527, 36.600933, 23.403385>,  <32.549263, 36.619328, 23.359653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.784527, 36.600933, 23.403385>,  <33.176632, 36.570274, 23.476271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784527, 36.600933, 23.403385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149631, 0.314669, 0.937334,
		0.129179, 0.946102, -0.296991,
		-0.980267, 0.076645, -0.182215,
		32.490448, 36.623928, 23.348721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973621, 37.247005, 23.666910>,  <33.176632, 36.570274, 23.476271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973621, 37.247005, 23.666910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.653915, 37.006855, 23.677698>,  <32.462093, 36.862766, 23.684170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.653915, 37.006855, 23.677698>,  <32.973621, 37.247005, 23.666910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653915, 37.006855, 23.677698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124103, 0.208787, 0.970055,
		-0.588030, 0.771981, -0.241385,
		-0.799262, -0.600378, 0.026968,
		32.414135, 36.826740, 23.685789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705265, 37.520691, 24.182020>,  <32.973621, 37.247005, 23.666910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705265, 37.520691, 24.182020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490276, 37.184647, 24.152775>,  <32.361282, 36.983021, 24.135227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490276, 37.184647, 24.152775>,  <32.705265, 37.520691, 24.182020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490276, 37.184647, 24.152775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103503, -0.020324, 0.994421,
		-0.836906, 0.542040, -0.076031,
		-0.537471, -0.840107, -0.073112,
		32.329037, 36.932613, 24.130842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059483, 37.716934, 24.500685>,  <32.705265, 37.520691, 24.182020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059483, 37.716934, 24.500685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.095886, 37.318718, 24.510540>,  <32.117729, 37.079788, 24.516453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.095886, 37.318718, 24.510540>,  <32.059483, 37.716934, 24.500685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095886, 37.318718, 24.510540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252579, 0.000856, 0.967576,
		-0.963286, -0.094284, -0.251376,
		0.091012, -0.995545, 0.024638,
		32.123188, 37.020054, 24.517931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499874, 37.503170, 24.894337>,  <32.059483, 37.716934, 24.500685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499874, 37.503170, 24.894337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.753164, 37.193741, 24.904203>,  <31.905138, 37.008083, 24.910124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.753164, 37.193741, 24.904203>,  <31.499874, 37.503170, 24.894337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753164, 37.193741, 24.904203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054910, -0.013115, 0.998405,
		-0.772017, -0.633570, -0.050782,
		0.633226, -0.773574, 0.024665,
		31.943132, 36.961670, 24.911602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170809, 36.951286, 25.207178>,  <31.499874, 37.503170, 24.894337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170809, 36.951286, 25.207178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.556753, 36.889656, 25.292316>,  <31.788321, 36.852676, 25.343399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.556753, 36.889656, 25.292316>,  <31.170809, 36.951286, 25.207178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556753, 36.889656, 25.292316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230299, -0.105862, 0.967345,
		-0.126511, -0.982372, -0.137626,
		0.964861, -0.154075, 0.212846,
		31.846212, 36.843433, 25.356171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121387, 36.681530, 25.946520>,  <31.170809, 36.951286, 25.207178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121387, 36.681530, 25.946520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515434, 36.723320, 25.891930>,  <31.751863, 36.748394, 25.859175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515434, 36.723320, 25.891930>,  <31.121387, 36.681530, 25.946520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515434, 36.723320, 25.891930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151575, -0.153729, 0.976418,
		0.081032, -0.982574, -0.167277,
		0.985119, 0.104477, -0.136477,
		31.810970, 36.754662, 25.850986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444946, 36.143288, 26.231197>,  <31.121387, 36.681530, 25.946520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444946, 36.143288, 26.231197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.731464, 36.422329, 26.237810>,  <31.903376, 36.589752, 26.241777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.731464, 36.422329, 26.237810>,  <31.444946, 36.143288, 26.231197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731464, 36.422329, 26.237810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166800, -0.194177, 0.966681,
		0.677570, -0.689670, -0.255448,
		0.716293, 0.697603, 0.016532,
		31.946352, 36.631611, 26.242769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790043, 35.975536, 26.843649>,  <31.444946, 36.143288, 26.231197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790043, 35.975536, 26.843649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.943384, 36.331951, 26.746408>,  <32.035389, 36.545799, 26.688065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.943384, 36.331951, 26.746408>,  <31.790043, 35.975536, 26.843649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943384, 36.331951, 26.746408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279406, 0.138995, 0.950060,
		0.880325, -0.432133, -0.195676,
		0.383354, 0.891034, -0.243101,
		32.058392, 36.599262, 26.673477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522255, 35.935337, 27.085102>,  <31.790043, 35.975536, 26.843649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522255, 35.935337, 27.085102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.407173, 36.317810, 27.063421>,  <32.338123, 36.547295, 27.050413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.407173, 36.317810, 27.063421>,  <32.522255, 35.935337, 27.085102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407173, 36.317810, 27.063421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400607, 0.171558, 0.900046,
		0.869909, 0.237231, -0.432411,
		-0.287702, 0.956185, -0.054203,
		32.320862, 36.604664, 27.047161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071285, 36.361805, 27.185526>,  <32.522255, 35.935337, 27.085102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071285, 36.361805, 27.185526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.763367, 36.589371, 27.301287>,  <32.578617, 36.725910, 27.370743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.763367, 36.589371, 27.301287>,  <33.071285, 36.361805, 27.185526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763367, 36.589371, 27.301287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494980, 0.245801, 0.833412,
		0.403005, 0.784804, -0.470818,
		-0.769793, 0.568915, 0.289404,
		32.532429, 36.760044, 27.388107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367294, 36.854427, 27.553240>,  <33.071285, 36.361805, 27.185526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367294, 36.854427, 27.553240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.988636, 36.920517, 27.663919>,  <32.761440, 36.960171, 27.730328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.988636, 36.920517, 27.663919>,  <33.367294, 36.854427, 27.553240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988636, 36.920517, 27.663919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320133, 0.383234, 0.866399,
		0.037112, 0.908753, -0.415681,
		-0.946645, 0.165227, 0.276700,
		32.704643, 36.970085, 27.746929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364147, 37.529110, 27.768192>,  <33.367294, 36.854427, 27.553240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364147, 37.529110, 27.768192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.046059, 37.354218, 27.936216>,  <32.855206, 37.249283, 28.037031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.046059, 37.354218, 27.936216>,  <33.364147, 37.529110, 27.768192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046059, 37.354218, 27.936216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284053, 0.343418, 0.895197,
		-0.535661, 0.831202, -0.148899,
		-0.795224, -0.437227, 0.420061,
		32.807491, 37.223049, 28.062235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138485, 38.019135, 28.177467>,  <33.364147, 37.529110, 27.768192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138485, 38.019135, 28.177467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.969902, 37.686745, 28.322714>,  <32.868752, 37.487312, 28.409863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.969902, 37.686745, 28.322714>,  <33.138485, 38.019135, 28.177467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969902, 37.686745, 28.322714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261943, 0.271796, 0.926020,
		-0.868191, 0.485398, 0.103116,
		-0.421462, -0.830973, 0.363117,
		32.843464, 37.437454, 28.431648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809055, 38.108864, 28.866884>,  <33.138485, 38.019135, 28.177467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809055, 38.108864, 28.866884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.903015, 37.721123, 28.838102>,  <32.959393, 37.488480, 28.820833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.903015, 37.721123, 28.838102>,  <32.809055, 38.108864, 28.866884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903015, 37.721123, 28.838102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285561, -0.001941, 0.958359,
		-0.929127, -0.245665, 0.276353,
		0.234899, -0.969353, -0.071955,
		32.973484, 37.430317, 28.816515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527412, 37.814571, 29.473232>,  <32.809055, 38.108864, 28.866884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527412, 37.814571, 29.473232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.790752, 37.533005, 29.366592>,  <32.948757, 37.364063, 29.302608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.790752, 37.533005, 29.366592>,  <32.527412, 37.814571, 29.473232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790752, 37.533005, 29.366592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368137, -0.007819, 0.929739,
		-0.656545, -0.710237, 0.253991,
		0.658349, -0.703919, -0.266598,
		32.988258, 37.321831, 29.286613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588017, 37.406799, 30.084358>,  <32.527412, 37.814571, 29.473232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588017, 37.406799, 30.084358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.897022, 37.333202, 29.841255>,  <33.082424, 37.289043, 29.695393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.897022, 37.333202, 29.841255>,  <32.588017, 37.406799, 30.084358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897022, 37.333202, 29.841255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608510, -0.059053, 0.791346,
		-0.181493, -0.981152, 0.066344,
		0.772513, -0.183995, -0.607758,
		33.128777, 37.278004, 29.658928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022663, 36.978683, 30.476452>,  <32.588017, 37.406799, 30.084358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022663, 36.978683, 30.476452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.263649, 37.141064, 30.201571>,  <33.408241, 37.238491, 30.036642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.263649, 37.141064, 30.201571>,  <33.022663, 36.978683, 30.476452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263649, 37.141064, 30.201571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706115, 0.130292, 0.696007,
		0.372080, -0.904561, -0.208150,
		0.602460, 0.405948, -0.687203,
		33.444386, 37.262848, 29.995409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721313, 36.780567, 30.682333>,  <33.022663, 36.978683, 30.476452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721313, 36.780567, 30.682333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.811775, 37.074577, 30.426647>,  <33.866051, 37.250984, 30.273235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.811775, 37.074577, 30.426647>,  <33.721313, 36.780567, 30.682333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811775, 37.074577, 30.426647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636830, 0.384992, 0.668004,
		0.737092, -0.558140, -0.381020,
		0.226150, 0.735025, -0.639215,
		33.879620, 37.295086, 30.234882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437157, 36.798119, 30.704681>,  <33.721313, 36.780567, 30.682333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437157, 36.798119, 30.704681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.299683, 37.155884, 30.590210>,  <34.217197, 37.370544, 30.521526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.299683, 37.155884, 30.590210>,  <34.437157, 36.798119, 30.704681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299683, 37.155884, 30.590210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506238, 0.433133, 0.745734,
		0.790950, 0.111426, -0.601650,
		-0.343689, 0.894416, -0.286178,
		34.196575, 37.424210, 30.504356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901947, 37.086761, 31.335054>,  <34.437157, 36.798119, 30.704681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901947, 37.086761, 31.335054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263271, 37.222797, 31.439640>,  <35.480068, 37.304420, 31.502392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263271, 37.222797, 31.439640>,  <34.901947, 37.086761, 31.335054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263271, 37.222797, 31.439640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287572, -0.027789, -0.957356,
		-0.318322, 0.939982, -0.122903,
		0.903312, 0.340091, 0.261466,
		35.534264, 37.324825, 31.518080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036407, 37.803589, 31.027769>,  <34.901947, 37.086761, 31.335054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036407, 37.803589, 31.027769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378468, 37.607014, 31.093750>,  <35.583702, 37.489067, 31.133339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378468, 37.607014, 31.093750>,  <35.036407, 37.803589, 31.027769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378468, 37.607014, 31.093750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182763, -0.011952, -0.983084,
		0.485098, 0.870830, 0.079597,
		0.855148, -0.491440, 0.164953,
		35.635014, 37.459583, 31.143236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498924, 38.116531, 30.534660>,  <35.036407, 37.803589, 31.027769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498924, 38.116531, 30.534660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.685291, 37.780041, 30.644392>,  <35.797112, 37.578144, 30.710230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.685291, 37.780041, 30.644392>,  <35.498924, 38.116531, 30.534660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685291, 37.780041, 30.644392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438764, -0.049580, -0.897233,
		0.768379, 0.538402, 0.346001,
		0.465918, -0.841228, 0.274328,
		35.825066, 37.527672, 30.726690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198147, 38.242996, 30.377230>,  <35.498924, 38.116531, 30.534660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198147, 38.242996, 30.377230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130428, 37.848770, 30.376703>,  <36.089798, 37.612236, 30.376387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130428, 37.848770, 30.376703>,  <36.198147, 38.242996, 30.377230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130428, 37.848770, 30.376703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332591, -0.055874, -0.941415,
		0.927751, -0.159814, 0.337249,
		-0.169295, -0.985565, -0.001316,
		36.079639, 37.553101, 30.376308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687500, 37.943016, 29.874472>,  <36.198147, 38.242996, 30.377230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687500, 37.943016, 29.874472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.447483, 37.627869, 29.929909>,  <36.303474, 37.438778, 29.963171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.447483, 37.627869, 29.929909>,  <36.687500, 37.943016, 29.874472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447483, 37.627869, 29.929909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206222, -0.319738, -0.924792,
		0.772932, -0.526331, 0.354332,
		-0.600040, -0.787873, 0.138595,
		36.267471, 37.391506, 29.971487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052162, 37.361382, 29.834299>,  <36.687500, 37.943016, 29.874472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052162, 37.361382, 29.834299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688774, 37.222446, 29.741318>,  <36.470741, 37.139084, 29.685530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688774, 37.222446, 29.741318>,  <37.052162, 37.361382, 29.834299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688774, 37.222446, 29.741318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345324, -0.310513, -0.885626,
		0.235432, -0.884838, 0.402036,
		-0.908473, -0.347337, -0.232451,
		36.416233, 37.118244, 29.671583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095753, 36.657444, 29.688040>,  <37.052162, 37.361382, 29.834299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095753, 36.657444, 29.688040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757912, 36.775219, 29.509176>,  <36.555206, 36.845882, 29.401859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757912, 36.775219, 29.509176>,  <37.095753, 36.657444, 29.688040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757912, 36.775219, 29.509176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319883, -0.392212, -0.862464,
		-0.429319, -0.871481, 0.237081,
		-0.844607, 0.294434, -0.447156,
		36.504532, 36.863548, 29.375029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829315, 36.119438, 29.245916>,  <37.095753, 36.657444, 29.688040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829315, 36.119438, 29.245916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656727, 36.452408, 29.106833>,  <36.553173, 36.652191, 29.023382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656727, 36.452408, 29.106833>,  <36.829315, 36.119438, 29.245916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656727, 36.452408, 29.106833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209182, -0.282613, -0.936148,
		-0.877539, -0.476656, -0.052189,
		-0.431472, 0.832424, -0.347712,
		36.527287, 36.702133, 29.002520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431339, 35.823563, 28.722742>,  <36.829315, 36.119438, 29.245916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431339, 35.823563, 28.722742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418571, 36.215157, 28.642172>,  <36.410912, 36.450111, 28.593830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418571, 36.215157, 28.642172>,  <36.431339, 35.823563, 28.722742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418571, 36.215157, 28.642172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165546, -0.193564, -0.967020,
		-0.985685, -0.064211, -0.155888,
		-0.031919, 0.978984, -0.201423,
		36.408997, 36.508850, 28.581745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946167, 35.946243, 28.216646>,  <36.431339, 35.823563, 28.722742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946167, 35.946243, 28.216646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187416, 36.264149, 28.189566>,  <36.332165, 36.454891, 28.173317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187416, 36.264149, 28.189566>,  <35.946167, 35.946243, 28.216646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187416, 36.264149, 28.189566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021601, -0.101119, -0.994640,
		-0.797354, 0.598431, -0.078155,
		0.603126, 0.794768, -0.067701,
		36.368355, 36.502579, 28.169256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753357, 36.195873, 27.628397>,  <35.946167, 35.946243, 28.216646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753357, 36.195873, 27.628397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082695, 36.412777, 27.695402>,  <36.280296, 36.542919, 27.735605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082695, 36.412777, 27.695402>,  <35.753357, 36.195873, 27.628397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082695, 36.412777, 27.695402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107062, 0.141460, -0.984138,
		-0.557353, 0.828218, 0.058415,
		0.823344, 0.542258, 0.167514,
		36.329697, 36.575455, 27.745657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648113, 36.820961, 27.441378>,  <35.753357, 36.195873, 27.628397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648113, 36.820961, 27.441378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.042839, 36.757145, 27.430428>,  <36.279675, 36.718857, 27.423859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.042839, 36.757145, 27.430428>,  <35.648113, 36.820961, 27.441378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042839, 36.757145, 27.430428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006889, 0.127559, -0.991807,
		0.161721, 0.978916, 0.124778,
		0.986812, -0.159536, -0.027373,
		36.338882, 36.709286, 27.422216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033825, 37.403675, 27.013084>,  <35.648113, 36.820961, 27.441378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033825, 37.403675, 27.013084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242344, 37.062336, 27.010395>,  <36.367455, 36.857533, 27.008781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242344, 37.062336, 27.010395>,  <36.033825, 37.403675, 27.013084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242344, 37.062336, 27.010395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071749, 0.051679, -0.996083,
		0.850356, 0.518770, 0.088167,
		0.521294, -0.853351, -0.006724,
		36.398731, 36.806332, 27.008377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604263, 37.517719, 26.555912>,  <36.033825, 37.403675, 27.013084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604263, 37.517719, 26.555912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552399, 37.121250, 26.567028>,  <36.521278, 36.883369, 26.573698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552399, 37.121250, 26.567028>,  <36.604263, 37.517719, 26.555912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552399, 37.121250, 26.567028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007676, -0.027024, -0.999605,
		0.991528, -0.129825, -0.004104,
		-0.129663, -0.991169, 0.027791,
		36.513500, 36.823898, 26.575365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024437, 37.288288, 26.153179>,  <36.604263, 37.517719, 26.555912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024437, 37.288288, 26.153179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745262, 37.001842, 26.156103>,  <36.577755, 36.829975, 26.157858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745262, 37.001842, 26.156103>,  <37.024437, 37.288288, 26.153179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745262, 37.001842, 26.156103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078070, -0.086227, -0.993212,
		0.711887, -0.692632, 0.116089,
		-0.697941, -0.716118, 0.007310,
		36.535881, 36.787006, 26.158297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308945, 36.688435, 25.741121>,  <37.024437, 37.288288, 26.153179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308945, 36.688435, 25.741121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911140, 36.647022, 25.747116>,  <36.672459, 36.622173, 25.750713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911140, 36.647022, 25.747116>,  <37.308945, 36.688435, 25.741121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911140, 36.647022, 25.747116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011466, -0.034511, -0.999339,
		0.103981, -0.994027, 0.033134,
		-0.994513, -0.103533, 0.014986,
		36.612785, 36.615963, 25.751612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145634, 36.108406, 25.285040>,  <37.308945, 36.688435, 25.741121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145634, 36.108406, 25.285040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801056, 36.311035, 25.299444>,  <36.594307, 36.432613, 25.308086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801056, 36.311035, 25.299444>,  <37.145634, 36.108406, 25.285040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801056, 36.311035, 25.299444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087485, -0.078179, -0.993093,
		-0.500255, -0.858647, 0.111664,
		-0.861447, 0.506570, 0.036009,
		36.542622, 36.463005, 25.310247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703835, 35.744080, 24.883657>,  <37.145634, 36.108406, 25.285040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703835, 35.744080, 24.883657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.488232, 36.080975, 24.887875>,  <36.358868, 36.283112, 24.890406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.488232, 36.080975, 24.887875>,  <36.703835, 35.744080, 24.883657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488232, 36.080975, 24.887875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345573, -0.209710, -0.914659,
		-0.768146, -0.496653, 0.404089,
		-0.539009, 0.842234, 0.010542,
		36.326530, 36.333645, 24.891037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056324, 35.537308, 24.790821>,  <36.703835, 35.744080, 24.883657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056324, 35.537308, 24.790821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082027, 35.917042, 24.667776>,  <36.097450, 36.144882, 24.593948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082027, 35.917042, 24.667776>,  <36.056324, 35.537308, 24.790821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082027, 35.917042, 24.667776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276068, -0.279309, -0.919659,
		-0.958988, 0.144018, 0.244134,
		0.064259, 0.949339, -0.307613,
		36.101307, 36.201843, 24.575493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.168564, 35.939510, 24.669025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420547, 36.158703, 24.448893>,  <35.571739, 36.290218, 24.316813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420547, 36.158703, 24.448893>,  <35.168564, 35.939510, 24.669025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420547, 36.158703, 24.448893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529061, -0.215957, -0.820644,
		-0.568544, 0.808135, 0.153870,
		0.629962, 0.547979, -0.550334,
		35.609535, 36.323097, 24.283792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785976, 36.538933, 24.369921>,  <35.168564, 35.939510, 24.669025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785976, 36.538933, 24.369921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106632, 36.463989, 24.142843>,  <35.299026, 36.419022, 24.006598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106632, 36.463989, 24.142843>,  <34.785976, 36.538933, 24.369921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106632, 36.463989, 24.142843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575717, 0.013832, -0.817532,
		0.161025, 0.982194, -0.096778,
		0.801636, -0.187360, -0.567693,
		35.347122, 36.407780, 23.972536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488972, 36.637749, 23.692440>,  <34.785976, 36.538933, 24.369921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488972, 36.637749, 23.692440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859947, 36.536083, 23.582706>,  <35.082531, 36.475082, 23.516867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859947, 36.536083, 23.582706>,  <34.488972, 36.637749, 23.692440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859947, 36.536083, 23.582706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318982, -0.154716, -0.935047,
		0.195211, 0.954706, -0.224562,
		0.927439, -0.254162, -0.274332,
		35.138180, 36.459835, 23.500406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603550, 37.012589, 23.008862>,  <34.488972, 36.637749, 23.692440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603550, 37.012589, 23.008862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858013, 36.704391, 23.025089>,  <35.010689, 36.519474, 23.034826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858013, 36.704391, 23.025089>,  <34.603550, 37.012589, 23.008862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858013, 36.704391, 23.025089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148821, -0.174130, -0.973412,
		0.757072, 0.613204, -0.225440,
		0.636156, -0.770493, 0.040571,
		35.048859, 36.473244, 23.037260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953285, 37.027168, 22.366770>,  <34.603550, 37.012589, 23.008862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953285, 37.027168, 22.366770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996601, 36.657032, 22.512110>,  <35.022591, 36.434952, 22.599314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996601, 36.657032, 22.512110>,  <34.953285, 37.027168, 22.366770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996601, 36.657032, 22.512110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224048, -0.378814, -0.897943,
		0.968543, 0.015832, -0.248343,
		0.108292, -0.925337, 0.363350,
		35.029087, 36.379433, 22.621115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362453, 36.748829, 21.839840>,  <34.953285, 37.027168, 22.366770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362453, 36.748829, 21.839840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196835, 36.450626, 22.048754>,  <35.097462, 36.271706, 22.174103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196835, 36.450626, 22.048754>,  <35.362453, 36.748829, 21.839840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196835, 36.450626, 22.048754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110031, -0.528580, -0.841723,
		0.903581, -0.405981, 0.136828,
		-0.414048, -0.745509, 0.522285,
		35.072620, 36.226974, 22.205439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713409, 36.068668, 21.621645>,  <35.362453, 36.748829, 21.839840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713409, 36.068668, 21.621645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.379002, 35.934868, 21.795624>,  <35.178356, 35.854588, 21.900011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.379002, 35.934868, 21.795624>,  <35.713409, 36.068668, 21.621645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379002, 35.934868, 21.795624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211582, -0.534853, -0.818025,
		0.506262, -0.775913, 0.376374,
		-0.836021, -0.334501, 0.434946,
		35.128197, 35.834518, 21.926107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651760, 35.277264, 21.483700>,  <35.713409, 36.068668, 21.621645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651760, 35.277264, 21.483700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294075, 35.444355, 21.548052>,  <35.079464, 35.544609, 21.586664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294075, 35.444355, 21.548052>,  <35.651760, 35.277264, 21.483700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294075, 35.444355, 21.548052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422049, -0.666981, -0.614012,
		-0.149186, -0.616958, 0.772726,
		-0.894214, 0.417731, 0.160882,
		35.025810, 35.569675, 21.596315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208950, 34.736217, 21.813023>,  <35.651760, 35.277264, 21.483700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208950, 34.736217, 21.813023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017677, 35.021355, 21.607813>,  <34.902912, 35.192436, 21.484688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017677, 35.021355, 21.607813>,  <35.208950, 34.736217, 21.813023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017677, 35.021355, 21.607813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373590, -0.693749, -0.615746,
		-0.794842, -0.102778, 0.598050,
		-0.478182, 0.712845, -0.513024,
		34.874222, 35.235207, 21.453905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676601, 34.378860, 21.337603>,  <35.208950, 34.736217, 21.813023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676601, 34.378860, 21.337603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.682533, 34.741871, 21.169708>,  <34.686092, 34.959675, 21.068972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.682533, 34.741871, 21.169708>,  <34.676601, 34.378860, 21.337603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682533, 34.741871, 21.169708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190550, -0.409526, -0.892176,
		-0.981565, 0.093208, 0.166858,
		0.014825, 0.907524, -0.419738,
		34.686981, 35.014130, 21.043787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067692, 34.360741, 20.816071>,  <34.676601, 34.378860, 21.337603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067692, 34.360741, 20.816071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.343082, 34.622692, 20.691404>,  <34.508316, 34.779861, 20.616604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.343082, 34.622692, 20.691404>,  <34.067692, 34.360741, 20.816071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343082, 34.622692, 20.691404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140979, -0.300693, -0.943244,
		-0.711426, 0.693338, -0.114695,
		0.688475, 0.654879, -0.311667,
		34.549625, 34.819157, 20.597904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860767, 34.464119, 20.205147>,  <34.067692, 34.360741, 20.816071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860767, 34.464119, 20.205147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209900, 34.657177, 20.176256>,  <34.419380, 34.773014, 20.158922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209900, 34.657177, 20.176256>,  <33.860767, 34.464119, 20.205147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209900, 34.657177, 20.176256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004960, -0.156762, -0.987624,
		-0.487996, 0.861672, -0.139221,
		0.872832, 0.482647, -0.072226,
		34.471748, 34.801971, 20.154589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708622, 35.089367, 19.787901>,  <33.860767, 34.464119, 20.205147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708622, 35.089367, 19.787901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085526, 34.956577, 19.770304>,  <34.311668, 34.876904, 19.759745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085526, 34.956577, 19.770304>,  <33.708622, 35.089367, 19.787901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085526, 34.956577, 19.770304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069158, -0.064364, -0.995527,
		0.327655, 0.941091, -0.083606,
		0.942263, -0.331972, -0.043995,
		34.368206, 34.856987, 19.757105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871517, 35.126289, 19.135553>,  <33.708622, 35.089367, 19.787901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871517, 35.126289, 19.135553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226757, 34.961666, 19.217434>,  <34.439899, 34.862892, 19.266562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226757, 34.961666, 19.217434>,  <33.871517, 35.126289, 19.135553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226757, 34.961666, 19.217434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194387, -0.067279, -0.978615,
		0.416530, 0.908896, 0.020251,
		0.888097, -0.411559, 0.204702,
		34.493187, 34.838200, 19.278845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353432, 35.558071, 18.850227>,  <33.871517, 35.126289, 19.135553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353432, 35.558071, 18.850227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530926, 35.200089, 18.868818>,  <34.637421, 34.985298, 18.879972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530926, 35.200089, 18.868818>,  <34.353432, 35.558071, 18.850227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530926, 35.200089, 18.868818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246560, 0.072060, -0.966445,
		0.861574, 0.440302, 0.252635,
		0.443733, -0.894953, 0.046476,
		34.664047, 34.931602, 18.882761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003410, 35.635479, 18.626915>,  <34.353432, 35.558071, 18.850227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003410, 35.635479, 18.626915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936634, 35.243805, 18.580748>,  <34.896568, 35.008801, 18.553047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936634, 35.243805, 18.580748>,  <35.003410, 35.635479, 18.626915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936634, 35.243805, 18.580748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159046, 0.088784, -0.983271,
		0.973055, -0.182502, 0.140914,
		-0.166938, -0.979189, -0.115418,
		34.886551, 34.950047, 18.546122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664696, 35.344013, 18.347330>,  <35.003410, 35.635479, 18.626915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664696, 35.344013, 18.347330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361851, 35.093510, 18.272947>,  <35.180145, 34.943207, 18.228317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361851, 35.093510, 18.272947>,  <35.664696, 35.344013, 18.347330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361851, 35.093510, 18.272947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273843, -0.045805, -0.960683,
		0.593121, -0.778267, 0.206176,
		-0.757111, -0.626261, -0.185955,
		35.134716, 34.905632, 18.217161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926014, 34.971313, 17.795687>,  <35.664696, 35.344013, 18.347330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926014, 34.971313, 17.795687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544704, 34.851006, 17.784313>,  <35.315918, 34.778820, 17.777489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544704, 34.851006, 17.784313>,  <35.926014, 34.971313, 17.795687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544704, 34.851006, 17.784313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113566, -0.269529, -0.956272,
		0.279958, -0.914816, 0.291092,
		-0.953272, -0.300774, -0.028435,
		35.258724, 34.760773, 17.775784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846054, 34.256519, 17.475901>,  <35.926014, 34.971313, 17.795687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846054, 34.256519, 17.475901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490849, 34.432922, 17.423843>,  <35.277725, 34.538765, 17.392609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490849, 34.432922, 17.423843>,  <35.846054, 34.256519, 17.475901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490849, 34.432922, 17.423843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015632, -0.253920, -0.967099,
		-0.459542, -0.860836, 0.218592,
		-0.888019, 0.441005, -0.130143,
		35.224442, 34.565224, 17.384800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395157, 33.836708, 17.080446>,  <35.846054, 34.256519, 17.475901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395157, 33.836708, 17.080446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215504, 34.189240, 17.021736>,  <35.107712, 34.400757, 16.986509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215504, 34.189240, 17.021736>,  <35.395157, 33.836708, 17.080446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215504, 34.189240, 17.021736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280261, -0.294955, -0.913485,
		-0.848372, -0.369140, 0.379475,
		-0.449132, 0.881327, -0.146776,
		35.080765, 34.453636, 16.977703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790592, 33.704220, 16.735825>,  <35.395157, 33.836708, 17.080446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790592, 33.704220, 16.735825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809147, 34.094006, 16.647947>,  <34.820278, 34.327877, 16.595221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809147, 34.094006, 16.647947>,  <34.790592, 33.704220, 16.735825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809147, 34.094006, 16.647947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287967, -0.197548, -0.937043,
		-0.956516, 0.106727, 0.271451,
		0.046384, 0.974466, -0.219692,
		34.823063, 34.386345, 16.582039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203911, 33.943596, 16.235483>,  <34.790592, 33.704220, 16.735825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203911, 33.943596, 16.235483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498024, 34.213585, 16.210922>,  <34.674492, 34.375576, 16.196186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.498024, 34.213585, 16.210922>,  <34.203911, 33.943596, 16.235483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498024, 34.213585, 16.210922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134880, 0.056941, -0.989224,
		-0.664200, 0.735645, 0.132908,
		0.735286, 0.674969, -0.061404,
		34.718609, 34.416077, 16.192501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993328, 34.498524, 15.740143>,  <34.203911, 33.943596, 16.235483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993328, 34.498524, 15.740143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.390545, 34.494766, 15.787082>,  <34.628876, 34.492512, 15.815245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.390545, 34.494766, 15.787082>,  <33.993328, 34.498524, 15.740143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390545, 34.494766, 15.787082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117666, 0.109900, -0.986953,
		-0.003630, 0.993898, 0.110240,
		0.993047, -0.009389, 0.117346,
		34.688457, 34.491951, 15.822286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572369, 34.849659, 15.109568>,  <33.993328, 34.498524, 15.740143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572369, 34.849659, 15.109568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555073, 35.202168, 14.921314>,  <33.544697, 35.413673, 14.808362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555073, 35.202168, 14.921314>,  <33.572369, 34.849659, 15.109568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555073, 35.202168, 14.921314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033978, 0.469505, 0.882276,
		0.998487, 0.054138, 0.009644,
		-0.043237, 0.881268, -0.470634,
		33.542103, 35.466549, 14.780124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023792, 35.407700, 15.430172>,  <33.572369, 34.849659, 15.109568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023792, 35.407700, 15.430172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686028, 35.537392, 15.259595>,  <33.483368, 35.615208, 15.157248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686028, 35.537392, 15.259595>,  <34.023792, 35.407700, 15.430172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686028, 35.537392, 15.259595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232301, 0.495684, 0.836859,
		0.482714, 0.805713, -0.343240,
		-0.844407, 0.324229, -0.426441,
		33.432705, 35.634659, 15.131662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936131, 36.184929, 15.532809>,  <34.023792, 35.407700, 15.430172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936131, 36.184929, 15.532809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.575024, 36.019646, 15.485040>,  <33.358360, 35.920475, 15.456378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.575024, 36.019646, 15.485040>,  <33.936131, 36.184929, 15.532809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575024, 36.019646, 15.485040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300407, 0.407019, 0.862607,
		-0.307829, 0.814613, -0.491576,
		-0.902772, -0.413209, -0.119423,
		33.304192, 35.895683, 15.449213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621441, 36.560863, 15.915682>,  <33.936131, 36.184929, 15.532809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621441, 36.560863, 15.915682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.313046, 36.316639, 15.843241>,  <33.128010, 36.170105, 15.799776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.313046, 36.316639, 15.843241>,  <33.621441, 36.560863, 15.915682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313046, 36.316639, 15.843241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458634, 0.335008, 0.823058,
		-0.441856, 0.717625, -0.538310,
		-0.770985, -0.610560, -0.181102,
		33.081749, 36.133472, 15.788910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048203, 36.962139, 15.997755>,  <33.621441, 36.560863, 15.915682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048203, 36.962139, 15.997755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.945393, 36.582897, 16.072628>,  <32.883705, 36.355354, 16.117552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.945393, 36.582897, 16.072628>,  <33.048203, 36.962139, 15.997755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945393, 36.582897, 16.072628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486161, 0.294249, 0.822840,
		-0.835216, 0.120492, -0.536560,
		-0.257028, -0.948103, 0.187183,
		32.868286, 36.298466, 16.128782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390049, 37.021290, 16.299374>,  <33.048203, 36.962139, 15.997755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390049, 37.021290, 16.299374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.509274, 36.648113, 16.380144>,  <32.580807, 36.424206, 16.428606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.509274, 36.648113, 16.380144>,  <32.390049, 37.021290, 16.299374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509274, 36.648113, 16.380144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339824, 0.093971, 0.935782,
		-0.892009, -0.347537, -0.289029,
		0.298059, -0.932945, 0.201925,
		32.598690, 36.368229, 16.440722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805250, 36.727261, 16.673168>,  <32.390049, 37.021290, 16.299374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805250, 36.727261, 16.673168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116234, 36.493958, 16.767290>,  <32.302826, 36.353977, 16.823763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116234, 36.493958, 16.767290>,  <31.805250, 36.727261, 16.673168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116234, 36.493958, 16.767290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204239, 0.119725, 0.971572,
		-0.594847, -0.803417, -0.026042,
		0.777460, -0.583256, 0.235307,
		32.349472, 36.318981, 16.837883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546322, 36.295631, 17.220198>,  <31.805250, 36.727261, 16.673168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546322, 36.295631, 17.220198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946035, 36.281780, 17.226234>,  <32.185863, 36.273468, 17.229856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946035, 36.281780, 17.226234>,  <31.546322, 36.295631, 17.220198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946035, 36.281780, 17.226234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015986, -0.025715, 0.999542,
		-0.034264, -0.999068, -0.026251,
		0.999285, -0.034668, 0.015090,
		32.245823, 36.271389, 17.230762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709743, 35.701370, 17.646879>,  <31.546322, 36.295631, 17.220198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709743, 35.701370, 17.646879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.026428, 35.945671, 17.641647>,  <32.216438, 36.092251, 17.638508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.026428, 35.945671, 17.641647>,  <31.709743, 35.701370, 17.646879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026428, 35.945671, 17.641647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021709, -0.006730, 0.999742,
		0.610507, -0.791793, -0.018587,
		0.791713, 0.610753, -0.013080,
		32.263943, 36.128899, 17.637724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121056, 35.440937, 18.278942>,  <31.709743, 35.701370, 17.646879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121056, 35.440937, 18.278942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.281639, 35.797997, 18.196959>,  <32.377991, 36.012234, 18.147768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.281639, 35.797997, 18.196959>,  <32.121056, 35.440937, 18.278942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281639, 35.797997, 18.196959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210893, 0.127674, 0.969136,
		0.891267, -0.432291, -0.136998,
		0.401458, 0.892650, -0.204958,
		32.402077, 36.065792, 18.135471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782120, 35.492928, 18.584812>,  <32.121056, 35.440937, 18.278942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782120, 35.492928, 18.584812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.642471, 35.863712, 18.529875>,  <32.558681, 36.086182, 18.496912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.642471, 35.863712, 18.529875>,  <32.782120, 35.492928, 18.584812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642471, 35.863712, 18.529875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122202, 0.190347, 0.974081,
		0.929077, 0.323286, -0.179730,
		-0.349118, 0.926960, -0.137341,
		32.537735, 36.141800, 18.488672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250973, 35.946804, 18.937904>,  <32.782120, 35.492928, 18.584812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250973, 35.946804, 18.937904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941910, 36.191761, 18.870998>,  <32.756474, 36.338737, 18.830854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941910, 36.191761, 18.870998>,  <33.250973, 35.946804, 18.937904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941910, 36.191761, 18.870998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229980, 0.515605, 0.825385,
		0.591704, 0.599271, -0.539223,
		-0.772655, 0.612394, -0.167265,
		32.710114, 36.375481, 18.820820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424179, 36.535770, 19.478415>,  <33.250973, 35.946804, 18.937904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424179, 36.535770, 19.478415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.038437, 36.568924, 19.377893>,  <32.806992, 36.588814, 19.317581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.038437, 36.568924, 19.377893>,  <33.424179, 36.535770, 19.478415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038437, 36.568924, 19.377893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207684, 0.351466, 0.912874,
		0.163983, 0.932525, -0.321724,
		-0.964353, 0.082879, -0.251305,
		32.749130, 36.593788, 19.302502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282692, 37.177185, 19.649281>,  <33.424179, 36.535770, 19.478415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282692, 37.177185, 19.649281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.952209, 36.952469, 19.666094>,  <32.753918, 36.817638, 19.676182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.952209, 36.952469, 19.666094>,  <33.282692, 37.177185, 19.649281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952209, 36.952469, 19.666094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135802, 0.271023, 0.952945,
		-0.546750, 0.781624, -0.300215,
		-0.826210, -0.561792, 0.042035,
		32.704346, 36.783932, 19.678705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801975, 37.593845, 20.080666>,  <33.282692, 37.177185, 19.649281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801975, 37.593845, 20.080666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.665653, 37.218132, 20.096643>,  <32.583858, 36.992702, 20.106230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.665653, 37.218132, 20.096643>,  <32.801975, 37.593845, 20.080666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665653, 37.218132, 20.096643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089088, 0.074565, 0.993229,
		-0.935904, 0.334938, -0.109091,
		-0.340804, -0.939285, 0.039947,
		32.563412, 36.936348, 20.108627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223331, 37.580597, 20.508408>,  <32.801975, 37.593845, 20.080666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223331, 37.580597, 20.508408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317432, 37.191902, 20.500525>,  <32.373894, 36.958687, 20.495794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317432, 37.191902, 20.500525>,  <32.223331, 37.580597, 20.508408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317432, 37.191902, 20.500525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140449, -0.054051, 0.988611,
		-0.961732, -0.229809, -0.149195,
		0.235256, -0.971734, -0.019707,
		32.388008, 36.900383, 20.494612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739618, 37.186569, 20.989765>,  <32.223331, 37.580597, 20.508408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739618, 37.186569, 20.989765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.067944, 36.960857, 20.954332>,  <32.264938, 36.825428, 20.933073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.067944, 36.960857, 20.954332>,  <31.739618, 37.186569, 20.989765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067944, 36.960857, 20.954332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187058, -0.412084, 0.891738,
		-0.539697, -0.715381, -0.443798,
		0.820814, -0.564284, -0.088583,
		32.314190, 36.791573, 20.927757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582123, 36.513279, 21.104414>,  <31.739618, 37.186569, 20.989765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582123, 36.513279, 21.104414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.971252, 36.540813, 21.192844>,  <32.204731, 36.557335, 21.245903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.971252, 36.540813, 21.192844>,  <31.582123, 36.513279, 21.104414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971252, 36.540813, 21.192844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183544, -0.352809, 0.917517,
		0.141159, -0.933160, -0.330586,
		0.972824, 0.068839, 0.221078,
		32.263100, 36.561466, 21.259169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702129, 35.919975, 21.539070>,  <31.582123, 36.513279, 21.104414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702129, 35.919975, 21.539070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031975, 36.140656, 21.589092>,  <32.229881, 36.273064, 21.619106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031975, 36.140656, 21.589092>,  <31.702129, 35.919975, 21.539070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031975, 36.140656, 21.589092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055943, -0.140451, 0.988506,
		0.562926, -0.822130, -0.084953,
		0.824612, 0.551703, 0.125056,
		32.279358, 36.306168, 21.626610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085526, 35.581654, 21.991064>,  <31.702129, 35.919975, 21.539070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085526, 35.581654, 21.991064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.216743, 35.959145, 22.007843>,  <32.295475, 36.185638, 22.017910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.216743, 35.959145, 22.007843>,  <32.085526, 35.581654, 21.991064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216743, 35.959145, 22.007843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154254, 0.009706, 0.987984,
		0.931983, -0.330573, 0.148758,
		0.328045, 0.943731, 0.041946,
		32.315159, 36.242264, 22.020428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650776, 35.564831, 22.549753>,  <32.085526, 35.581654, 21.991064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650776, 35.564831, 22.549753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514534, 35.939114, 22.513018>,  <32.432789, 36.163685, 22.490976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514534, 35.939114, 22.513018>,  <32.650776, 35.564831, 22.549753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514534, 35.939114, 22.513018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156370, 0.039942, 0.986891,
		0.927112, 0.350501, 0.132712,
		-0.340605, 0.935710, -0.091839,
		32.412354, 36.219826, 22.485466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.193821, 35.840378, 26.955957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.909874, 36.120148, 26.989174>,  <36.739506, 36.288010, 27.009104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.909874, 36.120148, 26.989174>,  <37.193821, 35.840378, 26.955957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909874, 36.120148, 26.989174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316183, 0.211095, 0.924915,
		0.629377, 0.682824, -0.370995,
		-0.709869, 0.699422, 0.083039,
		36.696915, 36.329975, 27.014086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546535, 36.262665, 27.409042>,  <37.193821, 35.840378, 26.955957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546535, 36.262665, 27.409042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.189167, 36.442219, 27.402102>,  <36.974747, 36.549953, 27.397938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.189167, 36.442219, 27.402102>,  <37.546535, 36.262665, 27.409042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189167, 36.442219, 27.402102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115596, 0.267047, 0.956726,
		0.434097, 0.852751, -0.290474,
		-0.893419, 0.448890, -0.017350,
		36.921143, 36.576885, 27.396896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543491, 36.967175, 27.674917>,  <37.546535, 36.262665, 27.409042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543491, 36.967175, 27.674917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.161480, 36.855335, 27.714394>,  <36.932274, 36.788231, 27.738079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.161480, 36.855335, 27.714394>,  <37.543491, 36.967175, 27.674917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161480, 36.855335, 27.714394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038129, 0.445890, 0.894275,
		-0.294044, 0.850298, -0.436499,
		-0.955031, -0.279599, 0.098691,
		36.874969, 36.771454, 27.744001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124916, 37.503113, 28.064058>,  <37.543491, 36.967175, 27.674917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124916, 37.503113, 28.064058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.912708, 37.167984, 28.115593>,  <36.785385, 36.966908, 28.146513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.912708, 37.167984, 28.115593>,  <37.124916, 37.503113, 28.064058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912708, 37.167984, 28.115593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325115, 0.341475, 0.881870,
		-0.782848, 0.425961, -0.453548,
		-0.530517, -0.837826, 0.128836,
		36.753551, 36.916637, 28.154243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533031, 37.791920, 28.398357>,  <37.124916, 37.503113, 28.064058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533031, 37.791920, 28.398357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477272, 37.400635, 28.459902>,  <36.443817, 37.165863, 28.496828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477272, 37.400635, 28.459902>,  <36.533031, 37.791920, 28.398357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477272, 37.400635, 28.459902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375459, 0.195991, 0.905880,
		-0.916296, 0.068509, -0.394599,
		-0.139399, -0.978210, 0.153863,
		36.435452, 37.107170, 28.506062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810661, 37.702522, 28.697342>,  <36.533031, 37.791920, 28.398357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810661, 37.702522, 28.697342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.043667, 37.390114, 28.787401>,  <36.183468, 37.202671, 28.841436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.043667, 37.390114, 28.787401>,  <35.810661, 37.702522, 28.697342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043667, 37.390114, 28.787401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291797, 0.057596, 0.954745,
		-0.758641, -0.621846, -0.194349,
		0.582510, -0.781018, 0.225148,
		36.218422, 37.155807, 28.854946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363804, 37.306240, 28.921963>,  <35.810661, 37.702522, 28.697342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363804, 37.306240, 28.921963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.722488, 37.198990, 29.062828>,  <35.937698, 37.134640, 29.147348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.722488, 37.198990, 29.062828>,  <35.363804, 37.306240, 28.921963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722488, 37.198990, 29.062828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387380, -0.090505, 0.917467,
		-0.214125, -0.959123, -0.185024,
		0.896709, -0.268128, 0.352165,
		35.991501, 37.118553, 29.168478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271198, 36.662079, 29.374619>,  <35.363804, 37.306240, 28.921963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271198, 36.662079, 29.374619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.617054, 36.843910, 29.460188>,  <35.824566, 36.953011, 29.511530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.617054, 36.843910, 29.460188>,  <35.271198, 36.662079, 29.374619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617054, 36.843910, 29.460188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227568, -0.025245, 0.973435,
		0.447905, -0.890348, 0.081620,
		0.864635, 0.454580, 0.213923,
		35.876446, 36.980286, 29.524364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361172, 36.488674, 30.047792>,  <35.271198, 36.662079, 29.374619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361172, 36.488674, 30.047792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.672112, 36.740101, 30.037663>,  <35.858673, 36.890957, 30.031584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.672112, 36.740101, 30.037663>,  <35.361172, 36.488674, 30.047792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672112, 36.740101, 30.037663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047720, 0.099060, 0.993937,
		0.627262, -0.771423, 0.106999,
		0.777345, 0.628564, -0.025324,
		35.905315, 36.928669, 30.030066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875328, 36.263264, 30.480642>,  <35.361172, 36.488674, 30.047792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875328, 36.263264, 30.480642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.918766, 36.657986, 30.432602>,  <35.944828, 36.894817, 30.403778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.918766, 36.657986, 30.432602>,  <35.875328, 36.263264, 30.480642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918766, 36.657986, 30.432602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040149, 0.125068, 0.991335,
		0.993275, -0.102832, 0.053201,
		0.108595, 0.986805, -0.120099,
		35.951344, 36.954025, 30.396572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514637, 36.458363, 30.809395>,  <35.875328, 36.263264, 30.480642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514637, 36.458363, 30.809395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.278858, 36.780697, 30.786825>,  <36.137390, 36.974098, 30.773283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.278858, 36.780697, 30.786825>,  <36.514637, 36.458363, 30.809395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278858, 36.780697, 30.786825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040574, 0.099297, 0.994230,
		0.806786, 0.583758, -0.091226,
		-0.589448, 0.805833, -0.056426,
		36.102024, 37.022446, 30.769897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812336, 36.982368, 31.298876>,  <36.514637, 36.458363, 30.809395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812336, 36.982368, 31.298876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437420, 37.115208, 31.256529>,  <36.212471, 37.194912, 31.231121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437420, 37.115208, 31.256529>,  <36.812336, 36.982368, 31.298876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437420, 37.115208, 31.256529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027231, 0.233034, 0.972087,
		0.347496, 0.914006, -0.209377,
		-0.937286, 0.332095, -0.105868,
		36.156235, 37.214836, 31.224768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783920, 37.669327, 31.638317>,  <36.812336, 36.982368, 31.298876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783920, 37.669327, 31.638317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.403286, 37.547806, 31.619616>,  <36.174904, 37.474892, 31.608395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.403286, 37.547806, 31.619616>,  <36.783920, 37.669327, 31.638317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403286, 37.547806, 31.619616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150253, 0.327051, 0.932985,
		-0.268154, 0.894841, -0.356865,
		-0.951587, -0.303804, -0.046752,
		36.117809, 37.456665, 31.605589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197601, 38.146351, 31.565722>,  <36.783920, 37.669327, 31.638317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197601, 38.146351, 31.565722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.070518, 37.840652, 31.790220>,  <35.994270, 37.657234, 31.924919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.070518, 37.840652, 31.790220>,  <36.197601, 38.146351, 31.565722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070518, 37.840652, 31.790220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022649, 0.597859, 0.801281,
		-0.947919, 0.241859, -0.207251,
		-0.317704, -0.764244, 0.561245,
		35.975208, 37.611378, 31.958593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717861, 38.562801, 31.704496>,  <36.197601, 38.146351, 31.565722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717861, 38.562801, 31.704496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.067139, 38.751938, 31.751728>,  <37.276707, 38.865421, 31.780067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.067139, 38.751938, 31.751728>,  <36.717861, 38.562801, 31.704496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067139, 38.751938, 31.751728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166822, 0.517632, -0.839183,
		-0.457926, 0.713074, 0.530876,
		0.873198, 0.472845, 0.118080,
		37.329098, 38.893791, 31.787151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555428, 39.305023, 31.612419>,  <36.717861, 38.562801, 31.704496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555428, 39.305023, 31.612419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.937050, 39.218197, 31.529806>,  <37.166023, 39.166100, 31.480238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.937050, 39.218197, 31.529806>,  <36.555428, 39.305023, 31.612419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937050, 39.218197, 31.529806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088025, 0.455822, -0.885707,
		0.286402, 0.863196, 0.415773,
		0.954057, -0.217070, -0.206531,
		37.223267, 39.153076, 31.467846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777603, 39.907040, 31.348770>,  <36.555428, 39.305023, 31.612419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777603, 39.907040, 31.348770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047813, 39.641708, 31.219986>,  <37.209942, 39.482510, 31.142715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047813, 39.641708, 31.219986>,  <36.777603, 39.907040, 31.348770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047813, 39.641708, 31.219986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032014, 0.409855, -0.911588,
		0.736638, 0.626112, 0.255633,
		0.675529, -0.663327, -0.321959,
		37.250473, 39.442711, 31.123398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094723, 40.298302, 30.838194>,  <36.777603, 39.907040, 31.348770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094723, 40.298302, 30.838194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230389, 39.927364, 30.774958>,  <37.311790, 39.704800, 30.737017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230389, 39.927364, 30.774958>,  <37.094723, 40.298302, 30.838194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230389, 39.927364, 30.774958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082441, 0.196704, -0.976991,
		0.937106, 0.318331, 0.143167,
		0.339168, -0.927347, -0.158089,
		37.332138, 39.649158, 30.727531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708412, 40.359287, 30.352421>,  <37.094723, 40.298302, 30.838194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708412, 40.359287, 30.352421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.533997, 40.002739, 30.302896>,  <37.429348, 39.788811, 30.273182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.533997, 40.002739, 30.302896>,  <37.708412, 40.359287, 30.352421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533997, 40.002739, 30.302896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029853, 0.151830, -0.987956,
		0.899430, -0.427095, -0.092814,
		-0.436043, -0.891368, -0.123811,
		37.403183, 39.735329, 30.265753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022514, 40.168568, 29.748425>,  <37.708412, 40.359287, 30.352421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022514, 40.168568, 29.748425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.681084, 39.968872, 29.807993>,  <37.476227, 39.849056, 29.843735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.681084, 39.968872, 29.807993>,  <38.022514, 40.168568, 29.748425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681084, 39.968872, 29.807993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211455, 0.070748, -0.974824,
		0.476132, -0.863572, -0.165954,
		-0.853572, -0.499237, 0.148921,
		37.425011, 39.819099, 29.852669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002628, 39.530560, 29.298794>,  <38.022514, 40.168568, 29.748425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002628, 39.530560, 29.298794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.609520, 39.570507, 29.361006>,  <37.373653, 39.594475, 29.398333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.609520, 39.570507, 29.361006>,  <38.002628, 39.530560, 29.298794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609520, 39.570507, 29.361006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141422, 0.135495, -0.980633,
		-0.119010, -0.985732, -0.119036,
		-0.982770, 0.099871, 0.155529,
		37.314690, 39.600468, 29.407665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641613, 39.036415, 28.793808>,  <38.002628, 39.530560, 29.298794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641613, 39.036415, 28.793808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362358, 39.301254, 28.902786>,  <37.194805, 39.460159, 28.968172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362358, 39.301254, 28.902786>,  <37.641613, 39.036415, 28.793808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362358, 39.301254, 28.902786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308646, 0.065034, -0.948951,
		-0.646020, -0.746587, 0.158952,
		-0.698137, 0.662101, 0.272444,
		37.152916, 39.499886, 28.984520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014168, 38.828987, 28.631512>,  <37.641613, 39.036415, 28.793808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014168, 38.828987, 28.631512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910294, 39.211887, 28.682468>,  <36.847969, 39.441628, 28.713041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910294, 39.211887, 28.682468>,  <37.014168, 38.828987, 28.631512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910294, 39.211887, 28.682468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383774, 0.018751, -0.923236,
		-0.886160, -0.288643, 0.362500,
		-0.259688, 0.957253, 0.127390,
		36.832386, 39.499062, 28.720686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315109, 38.862045, 28.355694>,  <37.014168, 38.828987, 28.631512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315109, 38.862045, 28.355694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.419209, 39.247852, 28.373446>,  <36.481667, 39.479336, 28.384096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.419209, 39.247852, 28.373446>,  <36.315109, 38.862045, 28.355694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419209, 39.247852, 28.373446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342003, 0.135066, -0.929941,
		-0.902942, 0.226838, 0.365020,
		0.260247, 0.964521, 0.044378,
		36.497284, 39.537209, 28.386759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752281, 39.152569, 28.138924>,  <36.315109, 38.862045, 28.355694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752281, 39.152569, 28.138924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.015457, 39.448994, 28.085339>,  <36.173363, 39.626850, 28.053188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.015457, 39.448994, 28.085339>,  <35.752281, 39.152569, 28.138924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015457, 39.448994, 28.085339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272372, 0.068324, -0.959763,
		-0.702091, 0.667951, 0.246798,
		0.657937, 0.741062, -0.133961,
		36.212837, 39.671314, 28.045151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402599, 39.774094, 27.771261>,  <35.752281, 39.152569, 28.138924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402599, 39.774094, 27.771261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.796951, 39.779964, 27.704531>,  <36.033562, 39.783489, 27.664492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.796951, 39.779964, 27.704531>,  <35.402599, 39.774094, 27.771261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796951, 39.779964, 27.704531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167434, 0.107781, -0.979974,
		0.003595, 0.994066, 0.108717,
		0.985877, 0.014680, -0.166828,
		36.092712, 39.784367, 27.654482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580853, 40.369736, 27.333345>,  <35.402599, 39.774094, 27.771261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580853, 40.369736, 27.333345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.888256, 40.118488, 27.284576>,  <36.072697, 39.967739, 27.255314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.888256, 40.118488, 27.284576>,  <35.580853, 40.369736, 27.333345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888256, 40.118488, 27.284576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022229, 0.216648, -0.975996,
		0.639457, 0.747348, 0.180458,
		0.768505, -0.628119, -0.121925,
		36.118809, 39.930054, 27.247999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141979, 40.654972, 26.863228>,  <35.580853, 40.369736, 27.333345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141979, 40.654972, 26.863228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.199356, 40.259369, 26.848835>,  <36.233784, 40.022007, 26.840200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.199356, 40.259369, 26.848835>,  <36.141979, 40.654972, 26.863228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199356, 40.259369, 26.848835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189653, 0.063153, -0.979819,
		0.971317, 0.133725, 0.196626,
		0.143443, -0.989004, -0.035980,
		36.242390, 39.962669, 26.838041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426010, 41.292732, 26.673864>,  <36.141979, 40.654972, 26.863228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426010, 41.292732, 26.673864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.209080, 41.566498, 26.478947>,  <36.078922, 41.730759, 26.361996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.209080, 41.566498, 26.478947>,  <36.426010, 41.292732, 26.673864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209080, 41.566498, 26.478947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424296, 0.277490, 0.861958,
		0.725158, 0.674220, 0.139905,
		-0.542327, 0.684417, -0.487293,
		36.046383, 41.771824, 26.332758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415066, 41.934566, 27.074402>,  <36.426010, 41.292732, 26.673864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415066, 41.934566, 27.074402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.070087, 41.951656, 26.872662>,  <35.863102, 41.961910, 26.751617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.070087, 41.951656, 26.872662>,  <36.415066, 41.934566, 27.074402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070087, 41.951656, 26.872662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504281, 0.013185, 0.863439,
		0.043537, 0.999000, 0.010173,
		-0.862441, 0.042722, -0.504351,
		35.811356, 41.964474, 26.721355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056095, 42.546043, 27.304543>,  <36.415066, 41.934566, 27.074402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056095, 42.546043, 27.304543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.767441, 42.320992, 27.143208>,  <35.594246, 42.185959, 27.046406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.767441, 42.320992, 27.143208>,  <36.056095, 42.546043, 27.304543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767441, 42.320992, 27.143208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508049, 0.034664, 0.860631,
		-0.470238, 0.825980, -0.310860,
		-0.721639, -0.562633, -0.403337,
		35.550949, 42.152203, 27.022207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476219, 42.800919, 27.537413>,  <36.056095, 42.546043, 27.304543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476219, 42.800919, 27.537413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.319405, 42.454685, 27.412783>,  <35.225315, 42.246944, 27.338005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.319405, 42.454685, 27.412783>,  <35.476219, 42.800919, 27.537413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319405, 42.454685, 27.412783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557127, -0.046129, 0.829145,
		-0.732064, 0.498642, -0.464153,
		-0.392035, -0.865580, -0.311576,
		35.201794, 42.195011, 27.319309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745190, 42.912766, 27.476824>,  <35.476219, 42.800919, 27.537413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745190, 42.912766, 27.476824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.796711, 42.519859, 27.531334>,  <34.827625, 42.284115, 27.564039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.796711, 42.519859, 27.531334>,  <34.745190, 42.912766, 27.476824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796711, 42.519859, 27.531334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445659, 0.065425, 0.892809,
		-0.885888, -0.175728, -0.429327,
		0.128803, -0.982262, 0.136274,
		34.835350, 42.225182, 27.572216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091366, 42.618122, 27.717199>,  <34.745190, 42.912766, 27.476824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091366, 42.618122, 27.717199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.360252, 42.333141, 27.797735>,  <34.521584, 42.162151, 27.846056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.360252, 42.333141, 27.797735>,  <34.091366, 42.618122, 27.717199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360252, 42.333141, 27.797735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436355, -0.161566, 0.885150,
		-0.598100, -0.682864, -0.419490,
		0.672213, -0.712455, 0.201339,
		34.561916, 42.119404, 27.858137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783398, 41.987812, 27.844036>,  <34.091366, 42.618122, 27.717199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783398, 41.987812, 27.844036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.125843, 42.011032, 28.049444>,  <34.331310, 42.024963, 28.172689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.125843, 42.011032, 28.049444>,  <33.783398, 41.987812, 27.844036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125843, 42.011032, 28.049444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491825, -0.213600, 0.844087,
		0.158688, -0.975195, -0.154314,
		0.856111, 0.058051, 0.513521,
		34.382675, 42.028446, 28.203501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609634, 41.547493, 28.384159>,  <33.783398, 41.987812, 27.844036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609634, 41.547493, 28.384159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945972, 41.707157, 28.530396>,  <34.147774, 41.802956, 28.618137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945972, 41.707157, 28.530396>,  <33.609634, 41.547493, 28.384159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945972, 41.707157, 28.530396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292804, -0.232641, 0.927440,
		0.455247, -0.886877, -0.078739,
		0.840842, 0.399159, 0.365590,
		34.198227, 41.826904, 28.640072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891384, 41.112263, 28.860146>,  <33.609634, 41.547493, 28.384159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891384, 41.112263, 28.860146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.052727, 41.467979, 28.946360>,  <34.149532, 41.681412, 28.998089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.052727, 41.467979, 28.946360>,  <33.891384, 41.112263, 28.860146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052727, 41.467979, 28.946360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163721, -0.161607, 0.973180,
		0.900275, -0.427829, 0.080411,
		0.403360, 0.889295, 0.215535,
		34.173737, 41.734768, 29.011021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359711, 40.965939, 29.519276>,  <33.891384, 41.112263, 28.860146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359711, 40.965939, 29.519276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.272533, 41.356014, 29.503727>,  <34.220226, 41.590057, 29.494398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.272533, 41.356014, 29.503727>,  <34.359711, 40.965939, 29.519276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272533, 41.356014, 29.503727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154062, 0.004954, 0.988049,
		0.963724, 0.221332, 0.149159,
		-0.217948, 0.975186, -0.038873,
		34.207150, 41.648571, 29.492065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600182, 41.198792, 30.124847>,  <34.359711, 40.965939, 29.519276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600182, 41.198792, 30.124847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.314522, 41.452831, 30.007109>,  <34.143124, 41.605255, 29.936466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.314522, 41.452831, 30.007109>,  <34.600182, 41.198792, 30.124847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314522, 41.452831, 30.007109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314835, 0.084139, 0.945410,
		0.625191, 0.767838, 0.139863,
		-0.714153, 0.635095, -0.294345,
		34.100277, 41.643360, 29.918804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658314, 41.871059, 30.447920>,  <34.600182, 41.198792, 30.124847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658314, 41.871059, 30.447920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.282413, 41.845509, 30.313589>,  <34.056873, 41.830177, 30.232990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.282413, 41.845509, 30.313589>,  <34.658314, 41.871059, 30.447920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282413, 41.845509, 30.313589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334217, 0.378117, 0.863323,
		0.071835, 0.923551, -0.376687,
		-0.939755, -0.063878, -0.335829,
		34.000488, 41.826344, 30.212841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.541138, 41.732822, 22.921906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149666, 41.781548, 22.855766>,  <36.914783, 41.810783, 22.816082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149666, 41.781548, 22.855766>,  <37.541138, 41.732822, 22.921906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149666, 41.781548, 22.855766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100918, 0.415976, 0.903758,
		0.178867, 0.901181, -0.394816,
		-0.978684, 0.121808, -0.165350,
		36.856060, 41.818089, 22.806162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405552, 42.467297, 23.097364>,  <37.541138, 41.732822, 22.921906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405552, 42.467297, 23.097364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093407, 42.220646, 23.138950>,  <36.906120, 42.072655, 23.163902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093407, 42.220646, 23.138950>,  <37.405552, 42.467297, 23.097364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093407, 42.220646, 23.138950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125990, 0.317887, 0.939720,
		-0.612506, 0.720222, -0.325755,
		-0.780361, -0.616627, 0.103967,
		36.859299, 42.035660, 23.170141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881451, 42.794178, 23.500906>,  <37.405552, 42.467297, 23.097364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881451, 42.794178, 23.500906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711273, 42.432186, 23.502565>,  <36.609169, 42.214993, 23.503561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711273, 42.432186, 23.502565>,  <36.881451, 42.794178, 23.500906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711273, 42.432186, 23.502565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250324, 0.122083, 0.960434,
		-0.869677, 0.407569, -0.278477,
		-0.425441, -0.904977, 0.004149,
		36.583641, 42.160694, 23.503811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133060, 42.877274, 23.702543>,  <36.881451, 42.794178, 23.500906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133060, 42.877274, 23.702543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241302, 42.498463, 23.771725>,  <36.306248, 42.271175, 23.813234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241302, 42.498463, 23.771725>,  <36.133060, 42.877274, 23.702543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241302, 42.498463, 23.771725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342873, 0.073066, 0.936536,
		-0.899563, -0.312728, -0.304939,
		0.270600, -0.947028, 0.172953,
		36.322483, 42.214355, 23.823610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640491, 42.628864, 24.235954>,  <36.133060, 42.877274, 23.702543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640491, 42.628864, 24.235954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945118, 42.369904, 24.247942>,  <36.127892, 42.214527, 24.255135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945118, 42.369904, 24.247942>,  <35.640491, 42.628864, 24.235954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945118, 42.369904, 24.247942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192314, -0.181582, 0.964388,
		-0.618902, -0.740204, -0.262790,
		0.761562, -0.647399, 0.029970,
		36.173588, 42.175682, 24.256933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305222, 41.967667, 24.487074>,  <35.640491, 42.628864, 24.235954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305222, 41.967667, 24.487074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696606, 41.929890, 24.560505>,  <35.931435, 41.907223, 24.604565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696606, 41.929890, 24.560505>,  <35.305222, 41.967667, 24.487074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696606, 41.929890, 24.560505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190634, -0.072013, 0.979016,
		-0.079244, -0.992922, -0.088466,
		0.978458, -0.094446, 0.183578,
		35.990143, 41.901558, 24.615578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452522, 41.262699, 24.943550>,  <35.305222, 41.967667, 24.487074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452522, 41.262699, 24.943550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741604, 41.535744, 24.986902>,  <35.915051, 41.699570, 25.012915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741604, 41.535744, 24.986902>,  <35.452522, 41.262699, 24.943550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741604, 41.535744, 24.986902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070367, -0.083328, 0.994035,
		0.687569, -0.726017, -0.012188,
		0.722701, 0.682609, 0.108381,
		35.958416, 41.740528, 25.019417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884209, 40.932308, 25.472561>,  <35.452522, 41.262699, 24.943550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884209, 40.932308, 25.472561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963554, 41.323921, 25.454012>,  <36.011162, 41.558887, 25.442883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963554, 41.323921, 25.454012>,  <35.884209, 40.932308, 25.472561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963554, 41.323921, 25.454012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106473, 0.068557, 0.991949,
		0.974328, -0.191829, 0.117839,
		0.198364, 0.979031, -0.046372,
		36.023064, 41.617630, 25.440100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321693, 40.964157, 26.032665>,  <35.884209, 40.932308, 25.472561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321693, 40.964157, 26.032665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179176, 41.329624, 25.954424>,  <36.093666, 41.548904, 25.907480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179176, 41.329624, 25.954424>,  <36.321693, 40.964157, 26.032665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179176, 41.329624, 25.954424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220863, 0.121054, 0.967763,
		0.907895, 0.388011, 0.158664,
		-0.356296, 0.913670, -0.195602,
		36.072289, 41.603725, 25.895742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726974, 40.536148, 26.414209>,  <36.321693, 40.964157, 26.032665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726974, 40.536148, 26.414209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533112, 40.187222, 26.440044>,  <36.416794, 39.977867, 26.455545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533112, 40.187222, 26.440044>,  <36.726974, 40.536148, 26.414209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533112, 40.187222, 26.440044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044574, -0.098375, -0.994151,
		0.873567, -0.478945, 0.086561,
		-0.484659, -0.872316, 0.064589,
		36.387714, 39.925526, 26.459421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175014, 40.004856, 26.230247>,  <36.726974, 40.536148, 26.414209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175014, 40.004856, 26.230247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815979, 39.844311, 26.157316>,  <36.600559, 39.747982, 26.113558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815979, 39.844311, 26.157316>,  <37.175014, 40.004856, 26.230247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815979, 39.844311, 26.157316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278936, -0.196818, -0.939924,
		0.341369, -0.894521, 0.288617,
		-0.897587, -0.401367, -0.182327,
		36.546703, 39.723900, 26.102619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329815, 39.495449, 25.805292>,  <37.175014, 40.004856, 26.230247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329815, 39.495449, 25.805292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931877, 39.491642, 25.764889>,  <36.693115, 39.489357, 25.740646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931877, 39.491642, 25.764889>,  <37.329815, 39.495449, 25.805292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931877, 39.491642, 25.764889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101420, -0.067579, -0.992546,
		0.002622, -0.997668, 0.068196,
		-0.994840, -0.009518, -0.101007,
		36.633427, 39.488789, 25.734587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233284, 38.914219, 25.414970>,  <37.329815, 39.495449, 25.805292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233284, 38.914219, 25.414970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906284, 39.136147, 25.353161>,  <36.710087, 39.269302, 25.316074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906284, 39.136147, 25.353161>,  <37.233284, 38.914219, 25.414970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906284, 39.136147, 25.353161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051108, -0.337128, -0.940071,
		-0.573664, -0.760606, 0.303956,
		-0.817495, 0.554819, -0.154525,
		36.661037, 39.302593, 25.306803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769146, 38.460091, 25.154320>,  <37.233284, 38.914219, 25.414970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769146, 38.460091, 25.154320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632935, 38.824883, 25.062811>,  <36.551208, 39.043758, 25.007906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632935, 38.824883, 25.062811>,  <36.769146, 38.460091, 25.154320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632935, 38.824883, 25.062811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215207, -0.312454, -0.925234,
		-0.915273, -0.265838, 0.302664,
		-0.340531, 0.911977, -0.228771,
		36.530777, 39.098476, 24.994181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103905, 38.413479, 24.848970>,  <36.769146, 38.460091, 25.154320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103905, 38.413479, 24.848970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198048, 38.780441, 24.720608>,  <36.254532, 39.000618, 24.643591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198048, 38.780441, 24.720608>,  <36.103905, 38.413479, 24.848970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198048, 38.780441, 24.720608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263363, -0.257629, -0.929660,
		-0.935546, 0.303318, 0.180974,
		0.235358, 0.917401, -0.320907,
		36.268654, 39.055660, 24.624336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606018, 38.569836, 24.370337>,  <36.103905, 38.413479, 24.848970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606018, 38.569836, 24.370337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932919, 38.782452, 24.281288>,  <36.129059, 38.910023, 24.227859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932919, 38.782452, 24.281288>,  <35.606018, 38.569836, 24.370337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932919, 38.782452, 24.281288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117390, -0.224653, -0.967342,
		-0.564192, 0.816699, -0.121202,
		0.817256, 0.531539, -0.222620,
		36.178097, 38.941914, 24.214502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563618, 38.618187, 23.712421>,  <35.606018, 38.569836, 24.370337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563618, 38.618187, 23.712421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940166, 38.744152, 23.760849>,  <36.166096, 38.819729, 23.789906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940166, 38.744152, 23.760849>,  <35.563618, 38.618187, 23.712421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940166, 38.744152, 23.760849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183825, -0.177839, -0.966738,
		-0.282903, 0.932312, -0.225300,
		0.941368, 0.314909, 0.121071,
		36.222576, 38.838623, 23.797171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693821, 39.012218, 23.213934>,  <35.563618, 38.618187, 23.712421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693821, 39.012218, 23.213934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058102, 38.886116, 23.320690>,  <36.276672, 38.810455, 23.384745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058102, 38.886116, 23.320690>,  <35.693821, 39.012218, 23.213934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058102, 38.886116, 23.320690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250504, -0.092213, -0.963714,
		0.328429, 0.944515, -0.005005,
		0.910704, -0.315258, 0.266890,
		36.331314, 38.791538, 23.400757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196121, 39.427704, 22.853436>,  <35.693821, 39.012218, 23.213934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196121, 39.427704, 22.853436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422401, 39.111774, 22.948233>,  <36.558170, 38.922218, 23.005110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422401, 39.111774, 22.948233>,  <36.196121, 39.427704, 22.853436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422401, 39.111774, 22.948233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288972, -0.079296, -0.954048,
		0.772321, 0.608188, 0.183379,
		0.565699, -0.789822, 0.236992,
		36.592110, 38.874828, 23.019331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869713, 39.487446, 22.478582>,  <36.196121, 39.427704, 22.853436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869713, 39.487446, 22.478582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826874, 39.099033, 22.564026>,  <36.801170, 38.865986, 22.615292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826874, 39.099033, 22.564026>,  <36.869713, 39.487446, 22.478582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826874, 39.099033, 22.564026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249118, -0.234197, -0.939730,
		0.962534, -0.047426, 0.266982,
		-0.107094, -0.971032, 0.213608,
		36.794746, 38.807724, 22.628109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433071, 39.191956, 22.221657>,  <36.869713, 39.487446, 22.478582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433071, 39.191956, 22.221657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162258, 38.899059, 22.251165>,  <36.999771, 38.723320, 22.268869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162258, 38.899059, 22.251165>,  <37.433071, 39.191956, 22.221657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162258, 38.899059, 22.251165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200257, -0.279753, -0.938954,
		0.708182, -0.620931, 0.336040,
		-0.677034, -0.732245, 0.073770,
		36.959148, 38.679386, 22.273296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687214, 38.681946, 21.799238>,  <37.433071, 39.191956, 22.221657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687214, 38.681946, 21.799238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322998, 38.529236, 21.862698>,  <37.104469, 38.437611, 21.900774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322998, 38.529236, 21.862698>,  <37.687214, 38.681946, 21.799238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322998, 38.529236, 21.862698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030713, -0.445143, -0.894933,
		0.412284, -0.809997, 0.417045,
		-0.910538, -0.381775, 0.158648,
		37.049835, 38.414703, 21.910292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665039, 37.996239, 21.687012>,  <37.687214, 38.681946, 21.799238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665039, 37.996239, 21.687012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281029, 38.094273, 21.632912>,  <37.050625, 38.153091, 21.600452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281029, 38.094273, 21.632912>,  <37.665039, 37.996239, 21.687012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281029, 38.094273, 21.632912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006110, -0.501392, -0.865199,
		-0.279857, -0.829784, 0.482844,
		-0.960022, 0.245082, -0.135249,
		36.993023, 38.167797, 21.592337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.714081, 39.441746, 20.546654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.048882, 39.456535, 20.765036>,  <31.249762, 39.465408, 20.896065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.048882, 39.456535, 20.765036>,  <30.714081, 39.441746, 20.546654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048882, 39.456535, 20.765036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546284, -0.001355, 0.837599,
		0.031708, -0.999315, 0.019064,
		0.837000, 0.036973, 0.545953,
		31.299982, 39.467628, 20.928822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603924, 38.908955, 21.122324>,  <30.714081, 39.441746, 20.546654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603924, 38.908955, 21.122324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.900114, 39.154186, 21.232471>,  <31.077829, 39.301327, 21.298559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.900114, 39.154186, 21.232471>,  <30.603924, 38.908955, 21.122324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900114, 39.154186, 21.232471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393473, 0.063294, 0.917155,
		0.544860, -0.787482, 0.288098,
		0.740477, 0.613080, 0.275367,
		31.122257, 39.338112, 21.315081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955280, 38.581249, 21.637274>,  <30.603924, 38.908955, 21.122324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955280, 38.581249, 21.637274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.063742, 38.962971, 21.687525>,  <31.128819, 39.192005, 21.717676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.063742, 38.962971, 21.687525>,  <30.955280, 38.581249, 21.637274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063742, 38.962971, 21.687525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073006, -0.109753, 0.991274,
		0.959764, -0.277957, 0.039910,
		0.271152, 0.954303, 0.125629,
		31.145088, 39.249260, 21.725214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573948, 38.595142, 22.129049>,  <30.955280, 38.581249, 21.637274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573948, 38.595142, 22.129049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.450018, 38.974903, 22.149603>,  <31.375660, 39.202759, 22.161936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.450018, 38.974903, 22.149603>,  <31.573948, 38.595142, 22.129049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450018, 38.974903, 22.149603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108707, -0.018317, 0.993905,
		0.944559, 0.313521, -0.097532,
		-0.309823, 0.949405, 0.051383,
		31.357071, 39.259724, 22.165018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091583, 38.920994, 22.494268>,  <31.573948, 38.595142, 22.129049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091583, 38.920994, 22.494268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.785372, 39.176991, 22.520746>,  <31.601646, 39.330589, 22.536633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.785372, 39.176991, 22.520746>,  <32.091583, 38.920994, 22.494268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785372, 39.176991, 22.520746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184968, 0.120368, 0.975345,
		0.616245, 0.758895, -0.210523,
		-0.765525, 0.639992, 0.066195,
		31.555714, 39.368988, 22.540606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291405, 39.497208, 22.948034>,  <32.091583, 38.920994, 22.494268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291405, 39.497208, 22.948034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.893354, 39.463394, 22.968380>,  <31.654526, 39.443104, 22.980587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.893354, 39.463394, 22.968380>,  <32.291405, 39.497208, 22.948034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893354, 39.463394, 22.968380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054223, -0.037943, 0.997808,
		-0.082422, 0.995698, 0.042341,
		-0.995121, -0.084537, 0.050862,
		31.594818, 39.438034, 22.983639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091923, 39.909660, 23.548014>,  <32.291405, 39.497208, 22.948034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091923, 39.909660, 23.548014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.756966, 39.696491, 23.499393>,  <31.555992, 39.568592, 23.470222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.756966, 39.696491, 23.499393>,  <32.091923, 39.909660, 23.548014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756966, 39.696491, 23.499393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147255, 0.005793, 0.989082,
		-0.526398, 0.846146, -0.083326,
		-0.837390, -0.532920, -0.121550,
		31.505749, 39.536613, 23.462929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545361, 40.305042, 23.952715>,  <32.091923, 39.909660, 23.548014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545361, 40.305042, 23.952715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.437319, 39.923767, 23.898344>,  <31.372494, 39.695004, 23.865723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.437319, 39.923767, 23.898344>,  <31.545361, 40.305042, 23.952715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437319, 39.923767, 23.898344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115526, -0.108069, 0.987408,
		-0.955875, 0.282407, -0.080928,
		-0.270105, -0.953188, -0.135926,
		31.356287, 39.637810, 23.857567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867832, 40.228329, 24.284739>,  <31.545361, 40.305042, 23.952715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867832, 40.228329, 24.284739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.071848, 39.887310, 24.239084>,  <31.194258, 39.682697, 24.211693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.071848, 39.887310, 24.239084>,  <30.867832, 40.228329, 24.284739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071848, 39.887310, 24.239084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042030, -0.157234, 0.986667,
		-0.859124, -0.498441, -0.116028,
		0.510039, -0.852546, -0.114134,
		31.224859, 39.631546, 24.204844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501226, 39.732075, 24.685606>,  <30.867832, 40.228329, 24.284739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501226, 39.732075, 24.685606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.853237, 39.548206, 24.637852>,  <31.064444, 39.437885, 24.609200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.853237, 39.548206, 24.637852>,  <30.501226, 39.732075, 24.685606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853237, 39.548206, 24.637852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033308, -0.310503, 0.949988,
		-0.473752, -0.832040, -0.288562,
		0.880028, -0.459670, -0.119388,
		31.117247, 39.410305, 24.602036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393166, 39.119247, 25.012114>,  <30.501226, 39.732075, 24.685606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393166, 39.119247, 25.012114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.791456, 39.151882, 24.994816>,  <31.030432, 39.171463, 24.984438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.791456, 39.151882, 24.994816>,  <30.393166, 39.119247, 25.012114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791456, 39.151882, 24.994816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061487, -0.236459, 0.969694,
		0.068888, -0.968210, -0.240466,
		0.995728, 0.081586, -0.043243,
		31.090174, 39.176357, 24.981842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643059, 38.600018, 25.472982>,  <30.393166, 39.119247, 25.012114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643059, 38.600018, 25.472982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.971684, 38.827957, 25.465956>,  <31.168859, 38.964722, 25.461739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.971684, 38.827957, 25.465956>,  <30.643059, 38.600018, 25.472982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971684, 38.827957, 25.465956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147091, -0.182090, 0.972218,
		0.550816, -0.801322, -0.233418,
		0.821563, 0.569847, -0.017569,
		31.218153, 38.998913, 25.460686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109730, 38.198666, 25.859148>,  <30.643059, 38.600018, 25.472982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109730, 38.198666, 25.859148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.256001, 38.569546, 25.826706>,  <31.343763, 38.792072, 25.807241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.256001, 38.569546, 25.826706>,  <31.109730, 38.198666, 25.859148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256001, 38.569546, 25.826706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176589, 0.016442, 0.984147,
		0.913837, -0.374201, -0.157721,
		0.365676, 0.927202, -0.081105,
		31.365704, 38.847706, 25.802374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750364, 38.222977, 26.270428>,  <31.109730, 38.198666, 25.859148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750364, 38.222977, 26.270428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.667526, 38.611225, 26.221432>,  <31.617823, 38.844173, 26.192034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.667526, 38.611225, 26.221432>,  <31.750364, 38.222977, 26.270428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667526, 38.611225, 26.221432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075191, 0.140625, 0.987203,
		0.975427, 0.195237, -0.102105,
		-0.207097, 0.970622, -0.122490,
		31.605396, 38.902412, 26.184685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371891, 37.839375, 26.464886>,  <31.750364, 38.222977, 26.270428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371891, 37.839375, 26.464886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.270462, 37.457184, 26.525246>,  <32.209606, 37.227871, 26.561462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.270462, 37.457184, 26.525246>,  <32.371891, 37.839375, 26.464886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270462, 37.457184, 26.525246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012275, -0.159164, -0.987176,
		0.967238, -0.248469, 0.052088,
		-0.253573, -0.955474, 0.150900,
		32.194389, 37.170540, 26.570515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866234, 37.544735, 26.087830>,  <32.371891, 37.839375, 26.464886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866234, 37.544735, 26.087830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.567970, 37.287273, 26.156759>,  <32.389011, 37.132797, 26.198116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.567970, 37.287273, 26.156759>,  <32.866234, 37.544735, 26.087830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567970, 37.287273, 26.156759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009689, -0.269064, -0.963073,
		0.666255, -0.716457, 0.206867,
		-0.745661, -0.643657, 0.172324,
		32.344273, 37.094177, 26.208456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098480, 36.920158, 25.753794>,  <32.866234, 37.544735, 26.087830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098480, 36.920158, 25.753794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.700516, 36.893105, 25.783667>,  <32.461739, 36.876873, 25.801590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.700516, 36.893105, 25.783667>,  <33.098480, 36.920158, 25.753794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700516, 36.893105, 25.783667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053508, -0.273401, -0.960411,
		0.085375, -0.959520, 0.268391,
		-0.994911, -0.067634, 0.074684,
		32.402042, 36.872814, 25.806072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030212, 36.474277, 25.377863>,  <33.098480, 36.920158, 25.753794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030212, 36.474277, 25.377863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.641220, 36.567085, 25.369337>,  <32.407825, 36.622768, 25.364222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.641220, 36.567085, 25.369337>,  <33.030212, 36.474277, 25.377863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641220, 36.567085, 25.369337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016892, -0.161452, -0.986736,
		-0.232389, -0.959217, 0.160928,
		-0.972476, 0.232025, -0.021317,
		32.349476, 36.636692, 25.362942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709137, 35.941437, 25.043060>,  <33.030212, 36.474277, 25.377863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709137, 35.941437, 25.043060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.475426, 36.263538, 25.002689>,  <32.335201, 36.456799, 24.978468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.475426, 36.263538, 25.002689>,  <32.709137, 35.941437, 25.043060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475426, 36.263538, 25.002689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123277, -0.210982, -0.969685,
		-0.802138, -0.554121, 0.222541,
		-0.584275, 0.805256, -0.100926,
		32.300144, 36.505116, 24.972412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166531, 35.707561, 24.603178>,  <32.709137, 35.941437, 25.043060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166531, 35.707561, 24.603178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.179905, 36.105656, 24.566551>,  <32.187927, 36.344513, 24.544575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.179905, 36.105656, 24.566551>,  <32.166531, 35.707561, 24.603178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179905, 36.105656, 24.566551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031888, -0.090507, -0.995385,
		-0.998932, 0.036200, 0.028710,
		0.033434, 0.995238, -0.091565,
		32.189934, 36.404228, 24.539082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710360, 35.810654, 24.127405>,  <32.166531, 35.707561, 24.603178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710360, 35.810654, 24.127405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887682, 36.169147, 24.121098>,  <31.994076, 36.384243, 24.117313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887682, 36.169147, 24.121098>,  <31.710360, 35.810654, 24.127405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887682, 36.169147, 24.121098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019843, -0.007776, -0.999773,
		-0.896150, 0.443520, 0.014337,
		0.443307, 0.896231, -0.015770,
		32.020676, 36.438015, 24.116367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249159, 36.205132, 23.647308>,  <31.710360, 35.810654, 24.127405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249159, 36.205132, 23.647308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.622021, 36.348183, 23.669905>,  <31.845737, 36.434013, 23.683462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.622021, 36.348183, 23.669905>,  <31.249159, 36.205132, 23.647308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622021, 36.348183, 23.669905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029019, 0.081735, -0.996231,
		-0.360899, 0.930280, 0.065811,
		0.932153, 0.357629, 0.056493,
		31.901667, 36.455471, 23.686853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227169, 36.629543, 23.074846>,  <31.249159, 36.205132, 23.647308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227169, 36.629543, 23.074846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.617582, 36.635979, 23.161661>,  <31.851830, 36.639839, 23.213749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.617582, 36.635979, 23.161661>,  <31.227169, 36.629543, 23.074846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617582, 36.635979, 23.161661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216283, 0.039107, -0.975547,
		-0.024185, 0.999106, 0.034689,
		0.976031, 0.016091, 0.217035,
		31.910391, 36.640804, 23.226772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533127, 37.101803, 22.608044>,  <31.227169, 36.629543, 23.074846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533127, 37.101803, 22.608044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849863, 36.882370, 22.715408>,  <32.039906, 36.750710, 22.779827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849863, 36.882370, 22.715408>,  <31.533127, 37.101803, 22.608044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849863, 36.882370, 22.715408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317908, -0.005012, -0.948108,
		0.521459, 0.836083, 0.170429,
		0.791843, -0.548581, 0.268411,
		32.087418, 36.717796, 22.795931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073029, 37.434002, 22.346092>,  <31.533127, 37.101803, 22.608044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073029, 37.434002, 22.346092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.191769, 37.055103, 22.394445>,  <32.263012, 36.827766, 22.423458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.191769, 37.055103, 22.394445>,  <32.073029, 37.434002, 22.346092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191769, 37.055103, 22.394445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421196, 0.016271, -0.906824,
		0.857015, 0.320105, 0.403805,
		0.296849, -0.947242, 0.120882,
		32.280823, 36.770931, 22.430710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737026, 37.433601, 22.204222>,  <32.073029, 37.434002, 22.346092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737026, 37.433601, 22.204222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.623955, 37.053967, 22.148600>,  <32.556114, 36.826187, 22.115227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.623955, 37.053967, 22.148600>,  <32.737026, 37.433601, 22.204222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623955, 37.053967, 22.148600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446588, -0.001919, -0.894738,
		0.848913, -0.315022, 0.424392,
		-0.282676, -0.949083, -0.139056,
		32.539150, 36.769241, 22.106882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305035, 37.056393, 21.918940>,  <32.737026, 37.433601, 22.204222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305035, 37.056393, 21.918940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.991840, 36.830856, 21.813864>,  <32.803925, 36.695534, 21.750818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.991840, 36.830856, 21.813864>,  <33.305035, 37.056393, 21.918940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991840, 36.830856, 21.813864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360250, -0.066770, -0.930463,
		0.507096, -0.823178, 0.255405,
		-0.782990, -0.563844, -0.262691,
		32.756943, 36.661705, 21.735056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585232, 36.606613, 21.431595>,  <33.305035, 37.056393, 21.918940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585232, 36.606613, 21.431595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.189205, 36.586727, 21.378992>,  <32.951588, 36.574795, 21.347429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.189205, 36.586727, 21.378992>,  <33.585232, 36.606613, 21.431595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189205, 36.586727, 21.378992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135441, -0.086395, -0.987011,
		0.037707, -0.995020, 0.092271,
		-0.990067, -0.049714, -0.131508,
		32.892185, 36.571812, 21.339539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852325, 36.048286, 21.701351>,  <33.585232, 36.606613, 21.431595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852325, 36.048286, 21.701351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.215401, 35.881733, 21.680445>,  <34.433247, 35.781803, 21.667900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.215401, 35.881733, 21.680445>,  <33.852325, 36.048286, 21.701351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215401, 35.881733, 21.680445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286649, 0.524215, 0.801892,
		-0.306494, -0.742849, 0.595178,
		0.907686, -0.416382, -0.052268,
		34.487705, 35.756817, 21.664764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961864, 35.649067, 22.356649>,  <33.852325, 36.048286, 21.701351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961864, 35.649067, 22.356649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.328884, 35.719357, 22.213980>,  <34.549095, 35.761532, 22.128378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.328884, 35.719357, 22.213980>,  <33.961864, 35.649067, 22.356649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328884, 35.719357, 22.213980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301850, 0.276038, 0.912518,
		0.258804, -0.944947, 0.200239,
		0.917555, 0.175721, -0.356672,
		34.604149, 35.772076, 22.106977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501049, 35.235271, 22.813910>,  <33.961864, 35.649067, 22.356649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501049, 35.235271, 22.813910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701374, 35.529289, 22.631088>,  <34.821571, 35.705700, 22.521397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701374, 35.529289, 22.631088>,  <34.501049, 35.235271, 22.813910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701374, 35.529289, 22.631088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458357, 0.222709, 0.860412,
		0.734230, -0.640400, -0.225376,
		0.500815, 0.735043, -0.457051,
		34.851620, 35.749802, 22.493973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176682, 35.180691, 23.089190>,  <34.501049, 35.235271, 22.813910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176682, 35.180691, 23.089190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.142353, 35.551914, 22.944221>,  <35.121758, 35.774647, 22.857241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.142353, 35.551914, 22.944221>,  <35.176682, 35.180691, 23.089190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142353, 35.551914, 22.944221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379715, 0.366775, 0.849289,
		0.921114, -0.064731, -0.383873,
		-0.085819, 0.928055, -0.362421,
		35.116608, 35.830330, 22.835495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769466, 35.365868, 23.149754>,  <35.176682, 35.180691, 23.089190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769466, 35.365868, 23.149754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.572159, 35.712177, 23.115973>,  <35.453773, 35.919964, 23.095703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.572159, 35.712177, 23.115973>,  <35.769466, 35.365868, 23.149754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572159, 35.712177, 23.115973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464414, 0.344195, 0.815996,
		0.735533, 0.363281, -0.571855,
		-0.493265, 0.865770, -0.084453,
		35.424179, 35.971909, 23.090637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258442, 35.835968, 23.178274>,  <35.769466, 35.365868, 23.149754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258442, 35.835968, 23.178274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924412, 36.035248, 23.271614>,  <35.723995, 36.154816, 23.327618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924412, 36.035248, 23.271614>,  <36.258442, 35.835968, 23.178274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924412, 36.035248, 23.271614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438701, 0.347105, 0.828891,
		0.331954, 0.794555, -0.508418,
		-0.835074, 0.498196, 0.233349,
		35.673889, 36.184708, 23.341619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365883, 36.530258, 23.244335>,  <36.258442, 35.835968, 23.178274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365883, 36.530258, 23.244335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.042027, 36.475239, 23.472569>,  <35.847713, 36.442226, 23.609509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.042027, 36.475239, 23.472569>,  <36.365883, 36.530258, 23.244335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042027, 36.475239, 23.472569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480933, 0.401769, 0.779285,
		-0.336433, 0.905352, -0.259135,
		-0.809639, -0.137550, 0.570582,
		35.799133, 36.433975, 23.643744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421501, 37.107937, 23.717043>,  <36.365883, 36.530258, 23.244335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421501, 37.107937, 23.717043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162937, 36.851295, 23.882214>,  <36.007797, 36.697311, 23.981316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162937, 36.851295, 23.882214>,  <36.421501, 37.107937, 23.717043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162937, 36.851295, 23.882214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332555, 0.250165, 0.909299,
		-0.686704, 0.725099, 0.051658,
		-0.646409, -0.641599, 0.412925,
		35.969013, 36.658817, 24.006090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206692, 37.476810, 24.253199>,  <36.421501, 37.107937, 23.717043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206692, 37.476810, 24.253199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162422, 37.089333, 24.342081>,  <36.135860, 36.856846, 24.395411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162422, 37.089333, 24.342081>,  <36.206692, 37.476810, 24.253199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162422, 37.089333, 24.342081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341667, 0.172867, 0.923786,
		-0.933282, 0.178158, 0.311840,
		-0.110673, -0.968698, 0.222204,
		36.129219, 36.798721, 24.408743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716896, 37.460606, 24.902435>,  <36.206692, 37.476810, 24.253199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716896, 37.460606, 24.902435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886772, 37.098469, 24.903164>,  <35.988697, 36.881187, 24.903601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886772, 37.098469, 24.903164>,  <35.716896, 37.460606, 24.902435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886772, 37.098469, 24.903164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009665, 0.006544, 0.999932,
		-0.905289, -0.424639, 0.011529,
		0.424686, -0.905339, 0.001819,
		36.014179, 36.826866, 24.903709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366272, 36.962963, 25.397369>,  <35.716896, 37.460606, 24.902435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366272, 36.962963, 25.397369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726013, 36.791527, 25.362789>,  <35.941856, 36.688663, 25.342041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726013, 36.791527, 25.362789>,  <35.366272, 36.962963, 25.397369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726013, 36.791527, 25.362789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028909, -0.255580, 0.966356,
		-0.436268, -0.866595, -0.242246,
		0.899352, -0.428594, -0.086449,
		35.995819, 36.662949, 25.336855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314159, 36.349800, 25.783960>,  <35.366272, 36.962963, 25.397369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314159, 36.349800, 25.783960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.704762, 36.435940, 25.780640>,  <35.939121, 36.487621, 25.778648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.704762, 36.435940, 25.780640>,  <35.314159, 36.349800, 25.783960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704762, 36.435940, 25.780640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072554, -0.292252, 0.953585,
		0.202924, -0.931781, -0.301009,
		0.976503, 0.215345, -0.008300,
		35.997711, 36.500542, 25.778151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677185, 35.802174, 26.143473>,  <35.314159, 36.349800, 25.783960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677185, 35.802174, 26.143473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947445, 36.096886, 26.153648>,  <36.109600, 36.273712, 26.159754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947445, 36.096886, 26.153648>,  <35.677185, 35.802174, 26.143473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947445, 36.096886, 26.153648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127370, -0.150652, 0.980347,
		0.726133, -0.659135, -0.195633,
		0.675654, 0.736780, 0.025439,
		36.150143, 36.317921, 26.161280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301960, 35.548977, 26.585882>,  <35.677185, 35.802174, 26.143473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301960, 35.548977, 26.585882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.362141, 35.944424, 26.587015>,  <36.398251, 36.181690, 26.587696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.362141, 35.944424, 26.587015>,  <36.301960, 35.548977, 26.585882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362141, 35.944424, 26.587015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234774, -0.038513, 0.971287,
		0.960336, -0.145465, -0.237895,
		0.150451, 0.988613, 0.002834,
		36.407276, 36.241009, 26.587866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.368172, 37.377888, 21.367094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092281, 37.657593, 21.291931>,  <36.926746, 37.825417, 21.246834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092281, 37.657593, 21.291931>,  <37.368172, 37.377888, 21.367094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092281, 37.657593, 21.291931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064469, -0.317793, -0.945966,
		-0.721191, -0.640346, 0.264272,
		-0.689730, 0.699260, -0.187907,
		36.885361, 37.867371, 21.235559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744740, 37.009911, 21.225313>,  <37.368172, 37.377888, 21.367094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744740, 37.009911, 21.225313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.697502, 37.369705, 21.057035>,  <36.669159, 37.585583, 20.956070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.697502, 37.369705, 21.057035>,  <36.744740, 37.009911, 21.225313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697502, 37.369705, 21.057035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162118, -0.435439, -0.885501,
		-0.979679, -0.036372, 0.197247,
		-0.118097, 0.899483, -0.420693,
		36.662071, 37.639549, 20.930828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196159, 36.955360, 20.814104>,  <36.744740, 37.009911, 21.225313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196159, 36.955360, 20.814104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.378452, 37.278301, 20.664177>,  <36.487827, 37.472065, 20.574221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.378452, 37.278301, 20.664177>,  <36.196159, 36.955360, 20.814104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378452, 37.278301, 20.664177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070768, -0.386892, -0.919405,
		-0.887298, 0.445530, -0.119186,
		0.455735, 0.807352, -0.374818,
		36.515171, 37.520508, 20.551731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794651, 37.089947, 20.249325>,  <36.196159, 36.955360, 20.814104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794651, 37.089947, 20.249325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.152420, 37.262260, 20.201262>,  <36.367081, 37.365650, 20.172422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.152420, 37.262260, 20.201262>,  <35.794651, 37.089947, 20.249325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152420, 37.262260, 20.201262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010432, -0.288698, -0.957363,
		-0.447110, 0.855030, -0.262711,
		0.894418, 0.430787, -0.120160,
		36.420746, 37.391495, 20.165213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706757, 37.539410, 19.724623>,  <35.794651, 37.089947, 20.249325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706757, 37.539410, 19.724623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.099739, 37.465088, 19.731165>,  <36.335529, 37.420494, 19.735090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.099739, 37.465088, 19.731165>,  <35.706757, 37.539410, 19.724623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099739, 37.465088, 19.731165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007949, -0.129312, -0.991572,
		0.186349, 0.974042, -0.128520,
		0.982452, -0.185800, 0.016354,
		36.394474, 37.409348, 19.736071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027496, 37.845642, 19.061188>,  <35.706757, 37.539410, 19.724623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027496, 37.845642, 19.061188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293011, 37.570961, 19.179737>,  <36.452320, 37.406155, 19.250866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293011, 37.570961, 19.179737>,  <36.027496, 37.845642, 19.061188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293011, 37.570961, 19.179737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184068, -0.234087, -0.954632,
		0.724923, 0.688220, -0.028983,
		0.663781, -0.686700, 0.296374,
		36.492146, 37.364952, 19.268650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540691, 37.927044, 18.605246>,  <36.027496, 37.845642, 19.061188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540691, 37.927044, 18.605246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.616924, 37.565624, 18.758751>,  <36.662666, 37.348774, 18.850855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.616924, 37.565624, 18.758751>,  <36.540691, 37.927044, 18.605246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616924, 37.565624, 18.758751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314788, -0.314033, -0.895707,
		0.929831, 0.291512, 0.224577,
		0.190585, -0.903551, 0.383763,
		36.674099, 37.294559, 18.873880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241489, 37.715580, 18.434404>,  <36.540691, 37.927044, 18.605246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241489, 37.715580, 18.434404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042484, 37.377155, 18.510990>,  <36.923080, 37.174099, 18.556942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042484, 37.377155, 18.510990>,  <37.241489, 37.715580, 18.434404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042484, 37.377155, 18.510990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225401, -0.339226, -0.913302,
		0.837658, -0.411227, 0.359474,
		-0.497517, -0.846060, 0.191464,
		36.893230, 37.123337, 18.568430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685123, 37.208492, 18.188034>,  <37.241489, 37.715580, 18.434404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685123, 37.208492, 18.188034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325401, 37.033569, 18.189377>,  <37.109566, 36.928616, 18.190182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325401, 37.033569, 18.189377>,  <37.685123, 37.208492, 18.188034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325401, 37.033569, 18.189377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131750, -0.278246, -0.951431,
		0.416998, -0.855187, 0.307844,
		-0.899308, -0.437303, 0.003357,
		37.055611, 36.902378, 18.190384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791771, 36.556679, 17.766813>,  <37.685123, 37.208492, 18.188034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791771, 36.556679, 17.766813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393566, 36.573540, 17.800718>,  <37.154644, 36.583656, 17.821062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393566, 36.573540, 17.800718>,  <37.791771, 36.556679, 17.766813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393566, 36.573540, 17.800718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094236, -0.356001, -0.929722,
		-0.009012, -0.933534, 0.358374,
		-0.995509, 0.042151, 0.084764,
		37.094913, 36.586185, 17.826147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542320, 35.958767, 17.492092>,  <37.791771, 36.556679, 17.766813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542320, 35.958767, 17.492092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215191, 36.187569, 17.466877>,  <37.018913, 36.324848, 17.451748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.215191, 36.187569, 17.466877>,  <37.542320, 35.958767, 17.492092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215191, 36.187569, 17.466877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200616, -0.386063, -0.900394,
		-0.539363, -0.723720, 0.430485,
		-0.817827, 0.572001, -0.063039,
		36.969841, 36.359169, 17.447966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968369, 35.555264, 17.410494>,  <37.542320, 35.958767, 17.492092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968369, 35.555264, 17.410494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.920727, 35.914829, 17.241842>,  <36.892143, 36.130569, 17.140652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.920727, 35.914829, 17.241842>,  <36.968369, 35.555264, 17.410494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920727, 35.914829, 17.241842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206680, -0.437796, -0.874996,
		-0.971132, -0.017074, 0.237930,
		-0.119105, 0.898912, -0.421629,
		36.884995, 36.184502, 17.115355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272011, 35.556633, 17.265396>,  <36.968369, 35.555264, 17.410494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272011, 35.556633, 17.265396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482578, 35.806408, 17.034588>,  <36.608921, 35.956272, 16.896103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482578, 35.806408, 17.034588>,  <36.272011, 35.556633, 17.265396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482578, 35.806408, 17.034588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411057, -0.407160, -0.815630,
		-0.744253, 0.666554, 0.042342,
		0.526422, 0.624440, -0.577022,
		36.640503, 35.993740, 16.861481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808086, 35.761990, 16.723864>,  <36.272011, 35.556633, 17.265396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808086, 35.761990, 16.723864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.195744, 35.748459, 16.626202>,  <36.428337, 35.740341, 16.567604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.195744, 35.748459, 16.626202>,  <35.808086, 35.761990, 16.723864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195744, 35.748459, 16.626202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206774, -0.650749, -0.730596,
		-0.134168, 0.758538, -0.637666,
		0.969146, -0.033830, -0.244155,
		36.486488, 35.738308, 16.552956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640942, 35.356838, 16.147293>,  <35.808086, 35.761990, 16.723864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640942, 35.356838, 16.147293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350204, 35.082191, 16.153692>,  <35.175762, 34.917404, 16.157532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350204, 35.082191, 16.153692>,  <35.640942, 35.356838, 16.147293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350204, 35.082191, 16.153692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050280, 0.076425, 0.995807,
		-0.684963, 0.722989, -0.090072,
		-0.726841, -0.686619, 0.015996,
		35.132153, 34.876205, 16.158491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004837, 35.678432, 16.405422>,  <35.640942, 35.356838, 16.147293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004837, 35.678432, 16.405422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940472, 35.287926, 16.463402>,  <34.901852, 35.053623, 16.498190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.940472, 35.287926, 16.463402>,  <35.004837, 35.678432, 16.405422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940472, 35.287926, 16.463402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163826, 0.171243, 0.971513,
		-0.973278, 0.132581, -0.187493,
		-0.160911, -0.976268, 0.144947,
		34.892197, 34.995045, 16.506886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633392, 35.651623, 16.977863>,  <35.004837, 35.678432, 16.405422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633392, 35.651623, 16.977863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725998, 35.262642, 16.967001>,  <34.781559, 35.029255, 16.960484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725998, 35.262642, 16.967001>,  <34.633392, 35.651623, 16.977863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725998, 35.262642, 16.967001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144690, -0.062022, 0.987531,
		-0.962012, -0.224695, -0.155063,
		0.231511, -0.972453, -0.027155,
		34.795452, 34.970905, 16.958855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074772, 35.132259, 17.330866>,  <34.633392, 35.651623, 16.977863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074772, 35.132259, 17.330866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.433544, 34.955475, 17.336279>,  <34.648808, 34.849403, 17.339527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.433544, 34.955475, 17.336279>,  <34.074772, 35.132259, 17.330866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433544, 34.955475, 17.336279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064445, -0.100387, 0.992859,
		-0.437445, -0.891400, -0.118522,
		0.896933, -0.441960, 0.013533,
		34.702625, 34.822887, 17.340340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954735, 34.510059, 17.578402>,  <34.074772, 35.132259, 17.330866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954735, 34.510059, 17.578402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345810, 34.544033, 17.655247>,  <34.580456, 34.564415, 17.701353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345810, 34.544033, 17.655247>,  <33.954735, 34.510059, 17.578402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345810, 34.544033, 17.655247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166432, -0.244753, 0.955194,
		0.128145, -0.965859, -0.225158,
		0.977691, 0.084930, 0.192113,
		34.639118, 34.569511, 17.712881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115513, 34.009983, 18.032612>,  <33.954735, 34.510059, 17.578402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115513, 34.009983, 18.032612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.420696, 34.259415, 18.100780>,  <34.603806, 34.409073, 18.141682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.420696, 34.259415, 18.100780>,  <34.115513, 34.009983, 18.032612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420696, 34.259415, 18.100780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037118, -0.220937, 0.974582,
		0.645383, -0.749889, -0.145420,
		0.762957, 0.623581, 0.170423,
		34.649582, 34.446487, 18.151907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578003, 33.656742, 18.543430>,  <34.115513, 34.009983, 18.032612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578003, 33.656742, 18.543430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652546, 34.049393, 18.527025>,  <34.697269, 34.284985, 18.517181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652546, 34.049393, 18.527025>,  <34.578003, 33.656742, 18.543430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652546, 34.049393, 18.527025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126947, 0.017336, 0.991758,
		0.974246, -0.190026, -0.121384,
		0.186356, 0.981626, -0.041013,
		34.708454, 34.343880, 18.514721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943512, 33.687874, 19.154379>,  <34.578003, 33.656742, 18.543430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943512, 33.687874, 19.154379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880180, 34.073792, 19.070381>,  <34.842182, 34.305344, 19.019983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880180, 34.073792, 19.070381>,  <34.943512, 33.687874, 19.154379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880180, 34.073792, 19.070381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041950, 0.219057, 0.974810,
		0.986494, 0.145536, -0.075158,
		-0.158334, 0.964797, -0.209993,
		34.832680, 34.363232, 19.007383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363743, 33.983837, 19.645655>,  <34.943512, 33.687874, 19.154379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363743, 33.983837, 19.645655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.113605, 34.277641, 19.540249>,  <34.963524, 34.453922, 19.477005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.113605, 34.277641, 19.540249>,  <35.363743, 33.983837, 19.645655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113605, 34.277641, 19.540249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092803, 0.405292, 0.909464,
		0.774809, 0.544276, -0.321613,
		-0.625347, 0.734508, -0.263514,
		34.926003, 34.497993, 19.461195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700741, 34.586857, 19.779139>,  <35.363743, 33.983837, 19.645655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700741, 34.586857, 19.779139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311935, 34.677666, 19.754965>,  <35.078651, 34.732151, 19.740461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311935, 34.677666, 19.754965>,  <35.700741, 34.586857, 19.779139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311935, 34.677666, 19.754965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050530, 0.453257, 0.889946,
		0.229429, 0.861986, -0.452043,
		-0.972013, 0.227022, -0.060434,
		35.020332, 34.745773, 19.736834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637096, 35.293343, 20.099787>,  <35.700741, 34.586857, 19.779139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637096, 35.293343, 20.099787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.273533, 35.127033, 20.112494>,  <35.055393, 35.027248, 20.120117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.273533, 35.127033, 20.112494>,  <35.637096, 35.293343, 20.099787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273533, 35.127033, 20.112494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193345, 0.487704, 0.851329,
		-0.369454, 0.767642, -0.523669,
		-0.908912, -0.415776, 0.031765,
		35.000858, 35.002300, 20.122023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179588, 35.814964, 20.157948>,  <35.637096, 35.293343, 20.099787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179588, 35.814964, 20.157948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.003128, 35.493275, 20.317249>,  <34.897251, 35.300262, 20.412830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.003128, 35.493275, 20.317249>,  <35.179588, 35.814964, 20.157948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003128, 35.493275, 20.317249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086185, 0.479688, 0.873196,
		-0.893284, 0.350890, -0.280928,
		-0.441153, -0.804224, 0.398256,
		34.870781, 35.252007, 20.436726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607384, 36.151863, 20.465857>,  <35.179588, 35.814964, 20.157948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607384, 36.151863, 20.465857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677368, 35.795349, 20.633186>,  <34.719357, 35.581440, 20.733583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677368, 35.795349, 20.633186>,  <34.607384, 36.151863, 20.465857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677368, 35.795349, 20.633186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053807, 0.415587, 0.907961,
		-0.983105, -0.181363, 0.024753,
		0.174958, -0.891288, 0.418324,
		34.729855, 35.527962, 20.758684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094547, 36.196922, 20.969402>,  <34.607384, 36.151863, 20.465857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094547, 36.196922, 20.969402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355576, 35.925529, 21.104351>,  <34.512192, 35.762695, 21.185320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355576, 35.925529, 21.104351>,  <34.094547, 36.196922, 20.969402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355576, 35.925529, 21.104351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106362, 0.358810, 0.927331,
		-0.750225, -0.641033, 0.161985,
		0.652571, -0.678478, 0.337370,
		34.551346, 35.721985, 21.205563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353146, 36.047752, 20.891249>,  <34.094547, 36.196922, 20.969402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353146, 36.047752, 20.891249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020031, 36.269066, 20.883911>,  <32.820164, 36.401855, 20.879509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020031, 36.269066, 20.883911>,  <33.353146, 36.047752, 20.891249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020031, 36.269066, 20.883911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012838, -0.052429, -0.998542,
		-0.553444, -0.831338, 0.050765,
		-0.832788, 0.553288, -0.018344,
		32.770195, 36.435051, 20.878408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731544, 35.630543, 20.529833>,  <33.353146, 36.047752, 20.891249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731544, 35.630543, 20.529833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648407, 36.021156, 20.507242>,  <32.598526, 36.255524, 20.493687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648407, 36.021156, 20.507242>,  <32.731544, 35.630543, 20.529833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648407, 36.021156, 20.507242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271827, -0.113125, -0.955674,
		-0.939634, -0.183274, 0.288960,
		-0.207839, 0.976531, -0.056478,
		32.586056, 36.314117, 20.490299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065948, 35.759785, 20.113453>,  <32.731544, 35.630543, 20.529833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065948, 35.759785, 20.113453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.226570, 36.125610, 20.094181>,  <32.322945, 36.345108, 20.082619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.226570, 36.125610, 20.094181>,  <32.065948, 35.759785, 20.113453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226570, 36.125610, 20.094181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282222, 0.073523, -0.956528,
		-0.871266, 0.397696, 0.287635,
		0.401555, 0.914567, -0.048180,
		32.347038, 36.399979, 20.079727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591560, 36.155273, 19.687359>,  <32.065948, 35.759785, 20.113453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591560, 36.155273, 19.687359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.951763, 36.329208, 19.687685>,  <32.167885, 36.433571, 19.687881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.951763, 36.329208, 19.687685>,  <31.591560, 36.155273, 19.687359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951763, 36.329208, 19.687685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013438, -0.025951, -0.999573,
		-0.434633, 0.900134, -0.029212,
		0.900508, 0.434840, 0.000817,
		32.221916, 36.459660, 19.687929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541325, 36.442295, 19.040293>,  <31.591560, 36.155273, 19.687359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541325, 36.442295, 19.040293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.923918, 36.506496, 19.137760>,  <32.153473, 36.545017, 19.196241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.923918, 36.506496, 19.137760>,  <31.541325, 36.442295, 19.040293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923918, 36.506496, 19.137760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226620, 0.117391, -0.966883,
		-0.183797, 0.980029, 0.075908,
		0.956484, 0.160508, 0.243670,
		32.210861, 36.554649, 19.210861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680182, 37.096283, 18.608219>,  <31.541325, 36.442295, 19.040293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680182, 37.096283, 18.608219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.021812, 36.902420, 18.683756>,  <32.226791, 36.786102, 18.729078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.021812, 36.902420, 18.683756>,  <31.680182, 37.096283, 18.608219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021812, 36.902420, 18.683756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242138, 0.049146, -0.968996,
		0.460352, 0.873322, 0.159328,
		0.854076, -0.484659, 0.188840,
		32.278034, 36.757023, 18.740408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264637, 37.381821, 18.333361>,  <31.680182, 37.096283, 18.608219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264637, 37.381821, 18.333361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.364986, 36.996510, 18.371653>,  <32.425198, 36.765324, 18.394629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.364986, 36.996510, 18.371653>,  <32.264637, 37.381821, 18.333361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364986, 36.996510, 18.371653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167683, -0.054156, -0.984352,
		0.953386, 0.263001, 0.147939,
		0.250874, -0.963274, 0.095732,
		32.440250, 36.707527, 18.400372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688065, 37.998383, 18.622835>,  <32.264637, 37.381821, 18.333361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688065, 37.998383, 18.622835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.591866, 38.381626, 18.560637>,  <32.534145, 38.611572, 18.523317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.591866, 38.381626, 18.560637>,  <32.688065, 37.998383, 18.622835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591866, 38.381626, 18.560637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183345, 0.112475, 0.976593,
		0.953176, 0.263381, 0.148615,
		-0.240501, 0.958113, -0.155498,
		32.519714, 38.669060, 18.513987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011787, 38.407360, 19.071150>,  <32.688065, 37.998383, 18.622835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011787, 38.407360, 19.071150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694931, 38.627323, 18.965239>,  <32.504818, 38.759300, 18.901691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694931, 38.627323, 18.965239>,  <33.011787, 38.407360, 19.071150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694931, 38.627323, 18.965239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254417, 0.096826, 0.962235,
		0.554780, 0.829592, 0.063207,
		-0.792143, 0.549910, -0.264780,
		32.457287, 38.792297, 18.885805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969715, 38.859306, 19.593470>,  <33.011787, 38.407360, 19.071150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969715, 38.859306, 19.593470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618717, 38.947556, 19.423140>,  <32.408119, 39.000504, 19.320942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618717, 38.947556, 19.423140>,  <32.969715, 38.859306, 19.593470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618717, 38.947556, 19.423140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324547, 0.380526, 0.865950,
		0.353085, 0.898068, -0.262307,
		-0.877497, 0.220623, -0.425823,
		32.355469, 39.013744, 19.295393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858616, 39.632565, 19.556087>,  <32.969715, 38.859306, 19.593470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858616, 39.632565, 19.556087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.502697, 39.450451, 19.543606>,  <32.289146, 39.341183, 19.536118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.502697, 39.450451, 19.543606>,  <32.858616, 39.632565, 19.556087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502697, 39.450451, 19.543606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209027, 0.345835, 0.914716,
		-0.405660, 0.820438, -0.402891,
		-0.889802, -0.455279, -0.031203,
		32.235756, 39.313866, 19.534245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432659, 40.128502, 19.923767>,  <32.858616, 39.632565, 19.556087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432659, 40.128502, 19.923767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214256, 39.794525, 19.896198>,  <32.083214, 39.594139, 19.879658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214256, 39.794525, 19.896198>,  <32.432659, 40.128502, 19.923767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214256, 39.794525, 19.896198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460558, 0.230420, 0.857201,
		-0.699831, 0.499781, -0.510350,
		-0.546007, -0.834941, -0.068923,
		32.050453, 39.544044, 19.875521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636066, 40.344597, 20.084442>,  <32.432659, 40.128502, 19.923767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636066, 40.344597, 20.084442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.703550, 39.957729, 20.160463>,  <31.744041, 39.725609, 20.206076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.703550, 39.957729, 20.160463>,  <31.636066, 40.344597, 20.084442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703550, 39.957729, 20.160463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346261, 0.122371, 0.930123,
		-0.922843, -0.222730, -0.314248,
		0.168712, -0.967169, 0.190053,
		31.754164, 39.667580, 20.217480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028538, 40.106197, 20.456232>,  <31.636066, 40.344597, 20.084442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028538, 40.106197, 20.456232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.304184, 39.836533, 20.562536>,  <31.469572, 39.674732, 20.626318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.304184, 39.836533, 20.562536>,  <31.028538, 40.106197, 20.456232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304184, 39.836533, 20.562536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449270, -0.109718, 0.886633,
		-0.568576, -0.730389, -0.378489,
		0.689114, -0.674162, 0.265759,
		31.510918, 39.634285, 20.642263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.464043, 39.410831, 16.446348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.675076, 39.096115, 16.574490>,  <35.801693, 38.907288, 16.651375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.675076, 39.096115, 16.574490>,  <35.464043, 39.410831, 16.446348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675076, 39.096115, 16.574490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180163, 0.472157, 0.862907,
		-0.830181, -0.397536, 0.390851,
		0.527580, -0.786786, 0.320354,
		35.833351, 38.860081, 16.670595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174583, 39.314358, 17.016872>,  <35.464043, 39.410831, 16.446348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174583, 39.314358, 17.016872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.515018, 39.112251, 17.073938>,  <35.719280, 38.990990, 17.108177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.515018, 39.112251, 17.073938>,  <35.174583, 39.314358, 17.016872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515018, 39.112251, 17.073938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127809, 0.462948, 0.877123,
		-0.509222, -0.728279, 0.458589,
		0.851092, -0.505262, 0.142663,
		35.770348, 38.960674, 17.116737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202892, 38.979225, 17.702118>,  <35.174583, 39.314358, 17.016872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202892, 38.979225, 17.702118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.576935, 39.042503, 17.575279>,  <35.801361, 39.080471, 17.499176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.576935, 39.042503, 17.575279>,  <35.202892, 38.979225, 17.702118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576935, 39.042503, 17.575279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247824, 0.347675, 0.904271,
		0.253300, -0.924173, 0.285907,
		0.935105, 0.158197, -0.317098,
		35.857468, 39.089962, 17.480150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636086, 38.594662, 18.177267>,  <35.202892, 38.979225, 17.702118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636086, 38.594662, 18.177267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.843185, 38.888138, 18.001251>,  <35.967445, 39.064224, 17.895641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.843185, 38.888138, 18.001251>,  <35.636086, 38.594662, 18.177267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843185, 38.888138, 18.001251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167714, 0.417323, 0.893148,
		0.838933, -0.536226, 0.093018,
		0.517748, 0.733691, -0.440039,
		35.998508, 39.108246, 17.869240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211292, 38.597637, 18.606899>,  <35.636086, 38.594662, 18.177267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211292, 38.597637, 18.606899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.214634, 38.940083, 18.400211>,  <36.216637, 39.145550, 18.276199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.214634, 38.940083, 18.400211>,  <36.211292, 38.597637, 18.606899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214634, 38.940083, 18.400211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206436, 0.504129, 0.838593,
		0.978424, -0.113671, -0.172524,
		0.008349, 0.856115, -0.516718,
		36.217140, 39.196918, 18.245195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837517, 38.880222, 18.875532>,  <36.211292, 38.597637, 18.606899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837517, 38.880222, 18.875532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.625202, 39.173908, 18.706205>,  <36.497814, 39.350121, 18.604609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.625202, 39.173908, 18.706205>,  <36.837517, 38.880222, 18.875532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625202, 39.173908, 18.706205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111135, 0.555471, 0.824076,
		0.840187, 0.390363, -0.376433,
		-0.530786, 0.734213, -0.423316,
		36.465965, 39.394173, 18.579210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151417, 39.448269, 19.136745>,  <36.837517, 38.880222, 18.875532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151417, 39.448269, 19.136745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.815121, 39.597904, 18.980173>,  <36.613342, 39.687683, 18.886230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.815121, 39.597904, 18.980173>,  <37.151417, 39.448269, 19.136745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815121, 39.597904, 18.980173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050981, 0.665037, 0.745068,
		0.539033, 0.646364, -0.540052,
		-0.840740, 0.374084, -0.391429,
		36.562901, 39.710129, 18.862743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317097, 40.055347, 19.073824>,  <37.151417, 39.448269, 19.136745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317097, 40.055347, 19.073824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.917439, 40.069042, 19.083160>,  <36.677643, 40.077259, 19.088762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.917439, 40.069042, 19.083160>,  <37.317097, 40.055347, 19.073824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917439, 40.069042, 19.083160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041130, 0.751110, 0.658895,
		0.005028, 0.659289, -0.751873,
		-0.999141, 0.034238, 0.023340,
		36.617695, 40.079315, 19.090162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189381, 40.785591, 19.227390>,  <37.317097, 40.055347, 19.073824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189381, 40.785591, 19.227390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.840511, 40.597839, 19.282522>,  <36.631191, 40.485188, 19.315601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.840511, 40.597839, 19.282522>,  <37.189381, 40.785591, 19.227390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840511, 40.597839, 19.282522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143703, 0.515146, 0.844970,
		-0.467613, 0.717154, -0.516748,
		-0.872174, -0.469377, 0.137831,
		36.578857, 40.457027, 19.323872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566498, 41.287533, 19.226126>,  <37.189381, 40.785591, 19.227390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566498, 41.287533, 19.226126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.493454, 40.966381, 19.453119>,  <36.449627, 40.773689, 19.589315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.493454, 40.966381, 19.453119>,  <36.566498, 41.287533, 19.226126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493454, 40.966381, 19.453119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201670, 0.595505, 0.777627,
		-0.962280, 0.027555, -0.270660,
		-0.182607, -0.802879, 0.567485,
		36.438671, 40.725517, 19.623365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007271, 41.500839, 19.631361>,  <36.566498, 41.287533, 19.226126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007271, 41.500839, 19.631361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.171089, 41.198475, 19.835665>,  <36.269379, 41.017056, 19.958248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.171089, 41.198475, 19.835665>,  <36.007271, 41.500839, 19.631361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171089, 41.198475, 19.835665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029566, 0.570569, 0.820717,
		-0.911812, -0.321017, 0.256021,
		0.409542, -0.755909, 0.510760,
		36.293953, 40.971703, 19.988894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720238, 41.560192, 20.245481>,  <36.007271, 41.500839, 19.631361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720238, 41.560192, 20.245481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.041538, 41.339199, 20.334517>,  <36.234318, 41.206604, 20.387938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.041538, 41.339199, 20.334517>,  <35.720238, 41.560192, 20.245481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041538, 41.339199, 20.334517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022208, 0.345657, 0.938098,
		-0.595227, -0.758471, 0.265379,
		0.803251, -0.552488, 0.222588,
		36.282513, 41.173454, 20.401293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060726, 41.295654, 20.093235>,  <35.720238, 41.560192, 20.245481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060726, 41.295654, 20.093235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.683064, 41.403305, 20.017200>,  <34.456467, 41.467896, 19.971579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.683064, 41.403305, 20.017200>,  <35.060726, 41.295654, 20.093235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683064, 41.403305, 20.017200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141457, -0.189958, -0.971548,
		-0.297574, -0.944187, 0.141282,
		-0.944161, 0.269122, -0.190088,
		34.399815, 41.484043, 19.960175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742096, 40.802048, 19.641613>,  <35.060726, 41.295654, 20.093235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742096, 40.802048, 19.641613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.544044, 41.146702, 19.597006>,  <34.425213, 41.353493, 19.570242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.544044, 41.146702, 19.597006>,  <34.742096, 40.802048, 19.641613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544044, 41.146702, 19.597006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064094, -0.091782, -0.993714,
		-0.866452, -0.499165, -0.009782,
		-0.495129, 0.861633, -0.111518,
		34.395504, 41.405193, 19.563551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215252, 40.659344, 19.104763>,  <34.742096, 40.802048, 19.641613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215252, 40.659344, 19.104763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.216263, 41.059330, 19.107750>,  <34.216869, 41.299324, 19.109543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.216263, 41.059330, 19.107750>,  <34.215252, 40.659344, 19.104763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216263, 41.059330, 19.107750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130651, 0.007074, -0.991403,
		-0.991425, 0.003479, -0.130629,
		0.002525, 0.999969, 0.007468,
		34.217022, 41.359322, 19.109991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652977, 40.867264, 18.645542>,  <34.215252, 40.659344, 19.104763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652977, 40.867264, 18.645542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.912315, 41.168583, 18.689692>,  <34.067921, 41.349377, 18.716181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.912315, 41.168583, 18.689692>,  <33.652977, 40.867264, 18.645542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912315, 41.168583, 18.689692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055165, 0.098110, -0.993645,
		-0.759342, 0.650318, 0.022054,
		0.648349, 0.753300, 0.110374,
		34.106819, 41.394573, 18.722803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435486, 41.395439, 18.091547>,  <33.652977, 40.867264, 18.645542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435486, 41.395439, 18.091547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.804760, 41.500393, 18.203886>,  <34.026325, 41.563366, 18.271290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.804760, 41.500393, 18.203886>,  <33.435486, 41.395439, 18.091547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804760, 41.500393, 18.203886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272205, 0.069516, -0.959725,
		-0.271342, 0.962456, -0.007247,
		0.923189, 0.262386, 0.280848,
		34.081718, 41.579109, 18.288141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510666, 41.992149, 17.832975>,  <33.435486, 41.395439, 18.091547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510666, 41.992149, 17.832975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.886772, 41.867092, 17.886877>,  <34.112434, 41.792057, 17.919218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.886772, 41.867092, 17.886877>,  <33.510666, 41.992149, 17.832975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886772, 41.867092, 17.886877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220894, 0.259056, -0.940264,
		0.259056, 0.913863, 0.312641,
		0.940264, -0.312641, 0.134757,
		34.168850, 41.773300, 17.927303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002239, 42.498611, 17.577415>,  <33.510666, 41.992149, 17.832975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002239, 42.498611, 17.577415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.206299, 42.154644, 17.584129>,  <34.328735, 41.948261, 17.588158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.206299, 42.154644, 17.584129>,  <34.002239, 42.498611, 17.577415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206299, 42.154644, 17.584129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289312, 0.153192, -0.944897,
		0.809967, 0.486895, 0.326936,
		0.510149, -0.859922, 0.016784,
		34.359344, 41.896667, 17.589165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495640, 42.643127, 17.247150>,  <34.002239, 42.498611, 17.577415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495640, 42.643127, 17.247150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.488655, 42.243210, 17.251253>,  <34.484463, 42.003258, 17.253716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.488655, 42.243210, 17.251253>,  <34.495640, 42.643127, 17.247150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488655, 42.243210, 17.251253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170416, -0.013086, -0.985286,
		0.985218, -0.015460, 0.170610,
		-0.017466, -0.999795, 0.010258,
		34.483414, 41.943272, 17.254330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149666, 42.393894, 16.766287>,  <34.495640, 42.643127, 17.247150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149666, 42.393894, 16.766287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.897835, 42.083485, 16.781351>,  <34.746738, 41.897240, 16.790390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.897835, 42.083485, 16.781351>,  <35.149666, 42.393894, 16.766287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897835, 42.083485, 16.781351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152083, -0.170631, -0.973528,
		0.761909, -0.607181, 0.225445,
		-0.629576, -0.776026, 0.037663,
		34.708961, 41.850677, 16.792650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520241, 41.776882, 16.402945>,  <35.149666, 42.393894, 16.766287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520241, 41.776882, 16.402945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.127220, 41.705666, 16.424456>,  <34.891407, 41.662933, 16.437363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.127220, 41.705666, 16.424456>,  <35.520241, 41.776882, 16.402945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127220, 41.705666, 16.424456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015498, -0.209749, -0.977632,
		0.185342, -0.961408, 0.203330,
		-0.982552, -0.178045, 0.053776,
		34.832455, 41.652252, 16.440588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292183, 41.212536, 15.980493>,  <35.520241, 41.776882, 16.402945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292183, 41.212536, 15.980493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.935791, 41.392029, 16.008194>,  <34.721958, 41.499725, 16.024815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.935791, 41.392029, 16.008194>,  <35.292183, 41.212536, 15.980493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935791, 41.392029, 16.008194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221013, -0.295381, -0.929464,
		-0.396627, -0.843437, 0.362354,
		-0.890977, 0.448736, 0.069254,
		34.668499, 41.526649, 16.028971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821259, 40.745045, 15.642120>,  <35.292183, 41.212536, 15.980493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821259, 40.745045, 15.642120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.634880, 41.098213, 15.665227>,  <34.523052, 41.310116, 15.679091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.634880, 41.098213, 15.665227>,  <34.821259, 40.745045, 15.642120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634880, 41.098213, 15.665227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367580, -0.133770, -0.920321,
		-0.804847, -0.450055, 0.386875,
		-0.465947, 0.882925, 0.057767,
		34.495094, 41.363091, 15.682557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219955, 40.592506, 15.266348>,  <34.821259, 40.745045, 15.642120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219955, 40.592506, 15.266348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.255749, 40.990902, 15.266086>,  <34.277225, 41.229939, 15.265928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.255749, 40.990902, 15.266086>,  <34.219955, 40.592506, 15.266348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255749, 40.990902, 15.266086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380297, 0.033560, -0.924255,
		-0.920525, 0.082959, 0.381774,
		0.089487, 0.995988, -0.000656,
		34.282597, 41.289700, 15.265889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630619, 39.946323, 15.260517>,  <34.219955, 40.592506, 15.266348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630619, 39.946323, 15.260517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.340576, 39.670898, 15.256356>,  <33.166550, 39.505646, 15.253860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.340576, 39.670898, 15.256356>,  <33.630619, 39.946323, 15.260517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340576, 39.670898, 15.256356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221849, 0.219271, 0.950107,
		-0.651923, 0.691237, -0.311751,
		-0.725107, -0.688558, -0.010402,
		33.123043, 39.464333, 15.253236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371765, 40.176834, 15.802376>,  <33.630619, 39.946323, 15.260517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371765, 40.176834, 15.802376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.157772, 39.846767, 15.729832>,  <33.029377, 39.648727, 15.686305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.157772, 39.846767, 15.729832>,  <33.371765, 40.176834, 15.802376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157772, 39.846767, 15.729832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380783, 0.043877, 0.923623,
		-0.754184, 0.563184, -0.337683,
		-0.534986, -0.825166, -0.181359,
		32.997276, 39.599216, 15.675424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797939, 40.232143, 16.141785>,  <33.371765, 40.176834, 15.802376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797939, 40.232143, 16.141785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.762970, 39.833961, 16.126650>,  <32.741989, 39.595055, 16.117569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.762970, 39.833961, 16.126650>,  <32.797939, 40.232143, 16.141785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762970, 39.833961, 16.126650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139788, -0.025348, 0.989857,
		-0.986314, 0.091830, -0.136937,
		-0.087427, -0.995452, -0.037838,
		32.736740, 39.535324, 16.115299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152451, 39.896606, 16.426870>,  <32.797939, 40.232143, 16.141785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152451, 39.896606, 16.426870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.425858, 39.609596, 16.480480>,  <32.589901, 39.437389, 16.512646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.425858, 39.609596, 16.480480>,  <32.152451, 39.896606, 16.426870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425858, 39.609596, 16.480480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234231, -0.041703, 0.971286,
		-0.691337, -0.695279, -0.196572,
		0.683512, -0.717529, 0.134025,
		32.630913, 39.394337, 16.520687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786352, 39.405701, 16.736914>,  <32.152451, 39.896606, 16.426870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786352, 39.405701, 16.736914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.172638, 39.340881, 16.818037>,  <32.404411, 39.301991, 16.866711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.172638, 39.340881, 16.818037>,  <31.786352, 39.405701, 16.736914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172638, 39.340881, 16.818037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238731, -0.247490, 0.939019,
		-0.101974, -0.955243, -0.277691,
		0.965717, -0.162049, 0.202809,
		32.462353, 39.292267, 16.878880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659203, 38.885868, 17.193628>,  <31.786352, 39.405701, 16.736914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659203, 38.885868, 17.193628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.040974, 38.998127, 17.234226>,  <32.270039, 39.065483, 17.258585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.040974, 38.998127, 17.234226>,  <31.659203, 38.885868, 17.193628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040974, 38.998127, 17.234226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054116, -0.171698, 0.983662,
		0.293488, -0.944329, -0.148686,
		0.954429, 0.280647, 0.101494,
		32.327301, 39.082321, 17.264675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920120, 38.327831, 17.587534>,  <31.659203, 38.885868, 17.193628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920120, 38.327831, 17.587534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.176064, 38.632229, 17.630375>,  <32.329628, 38.814869, 17.656080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.176064, 38.632229, 17.630375>,  <31.920120, 38.327831, 17.587534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176064, 38.632229, 17.630375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095713, -0.217195, 0.971424,
		0.762511, -0.611321, -0.211811,
		0.639856, 0.760995, 0.107102,
		32.368019, 38.860527, 17.662506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542202, 38.012436, 17.925274>,  <31.920120, 38.327831, 17.587534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542202, 38.012436, 17.925274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.515583, 38.407513, 17.981892>,  <32.499611, 38.644558, 18.015863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.515583, 38.407513, 17.981892>,  <32.542202, 38.012436, 17.925274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515583, 38.407513, 17.981892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061078, -0.137562, 0.988608,
		0.995912, 0.074438, -0.051171,
		-0.066550, 0.987692, 0.141546,
		32.495617, 38.703819, 18.024355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908096, 37.301411, 17.941523>,  <32.542202, 38.012436, 17.925274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908096, 37.301411, 17.941523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.775097, 36.927338, 17.990301>,  <32.695297, 36.702892, 18.019567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.775097, 36.927338, 17.990301>,  <32.908096, 37.301411, 17.941523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775097, 36.927338, 17.990301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228596, -0.205363, -0.951614,
		0.914981, -0.288533, 0.282063,
		-0.332497, -0.935187, 0.121946,
		32.675346, 36.646782, 18.026884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340271, 36.828979, 17.705122>,  <32.908096, 37.301411, 17.941523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340271, 36.828979, 17.705122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.000759, 36.620495, 17.669559>,  <32.797050, 36.495403, 17.648222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.000759, 36.620495, 17.669559>,  <33.340271, 36.828979, 17.705122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000759, 36.620495, 17.669559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279089, -0.298823, -0.912587,
		0.449082, -0.799403, 0.399100,
		-0.848784, -0.521210, -0.088908,
		32.746124, 36.464130, 17.642887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526665, 36.269054, 17.365511>,  <33.340271, 36.828979, 17.705122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526665, 36.269054, 17.365511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.130371, 36.245884, 17.316383>,  <32.892593, 36.231983, 17.286907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.130371, 36.245884, 17.316383>,  <33.526665, 36.269054, 17.365511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130371, 36.245884, 17.316383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134930, -0.318066, -0.938418,
		0.015290, -0.946298, 0.322935,
		-0.990737, -0.057922, -0.122820,
		32.833149, 36.228508, 17.279537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425865, 35.632744, 17.151262>,  <33.526665, 36.269054, 17.365511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425865, 35.632744, 17.151262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.101585, 35.845974, 17.054436>,  <32.907017, 35.973911, 16.996340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.101585, 35.845974, 17.054436>,  <33.425865, 35.632744, 17.151262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101585, 35.845974, 17.054436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149838, -0.210777, -0.965982,
		-0.565963, -0.819393, 0.091002,
		-0.810700, 0.533075, -0.242068,
		32.858376, 36.005898, 16.981815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991650, 35.184959, 16.774460>,  <33.425865, 35.632744, 17.151262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991650, 35.184959, 16.774460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.874401, 35.556049, 16.682024>,  <32.804054, 35.778706, 16.626562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.874401, 35.556049, 16.682024>,  <32.991650, 35.184959, 16.774460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874401, 35.556049, 16.682024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000244, -0.241779, -0.970331,
		-0.956076, -0.284366, 0.071096,
		-0.293118, 0.927728, -0.231090,
		32.786465, 35.834366, 16.612698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478542, 35.092289, 16.318577>,  <32.991650, 35.184959, 16.774460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478542, 35.092289, 16.318577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.575916, 35.472424, 16.241011>,  <32.634342, 35.700504, 16.194471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.575916, 35.472424, 16.241011>,  <32.478542, 35.092289, 16.318577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575916, 35.472424, 16.241011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067058, -0.215943, -0.974100,
		-0.967595, 0.224131, -0.116297,
		0.243440, 0.950334, -0.193916,
		32.648949, 35.757523, 16.182837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122002, 35.251640, 15.657200>,  <32.478542, 35.092289, 16.318577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122002, 35.251640, 15.657200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.400322, 35.536247, 15.696410>,  <32.567314, 35.707012, 15.719936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.400322, 35.536247, 15.696410>,  <32.122002, 35.251640, 15.657200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400322, 35.536247, 15.696410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284273, -0.147478, -0.947333,
		-0.659585, 0.687019, -0.304880,
		0.695799, 0.711516, 0.098027,
		32.609062, 35.749702, 15.725819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041275, 35.649902, 15.112059>,  <32.122002, 35.251640, 15.657200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041275, 35.649902, 15.112059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.421570, 35.702885, 15.224172>,  <32.649746, 35.734676, 15.291440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.421570, 35.702885, 15.224172>,  <32.041275, 35.649902, 15.112059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421570, 35.702885, 15.224172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299150, -0.154823, -0.941562,
		-0.081326, 0.979022, -0.186821,
		0.950734, 0.132461, 0.280283,
		32.706791, 35.742622, 15.308256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344463, 36.101513, 14.591456>,  <32.041275, 35.649902, 15.112059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344463, 36.101513, 14.591456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.636749, 35.901295, 14.777153>,  <32.812119, 35.781166, 14.888571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.636749, 35.901295, 14.777153>,  <32.344463, 36.101513, 14.591456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636749, 35.901295, 14.777153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369702, -0.281545, -0.885467,
		0.573918, 0.818651, -0.020676,
		0.730711, -0.500542, 0.464241,
		32.855961, 35.751133, 14.916426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.282589, 39.111523, 30.047787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063923, 39.020645, 29.725410>,  <32.932724, 38.966118, 29.531984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063923, 39.020645, 29.725410>,  <33.282589, 39.111523, 30.047787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063923, 39.020645, 29.725410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344381, -0.816316, 0.463713,
		-0.763255, 0.531046, 0.368010,
		-0.546665, -0.227196, -0.805940,
		32.899921, 38.952488, 29.483629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715122, 38.553997, 30.076540>,  <33.282589, 39.111523, 30.047787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715122, 38.553997, 30.076540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847675, 38.201099, 30.210302>,  <33.927208, 37.989361, 30.290560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847675, 38.201099, 30.210302>,  <33.715122, 38.553997, 30.076540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847675, 38.201099, 30.210302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122867, -0.391768, -0.911823,
		0.935461, 0.261077, -0.238225,
		0.331385, -0.882245, 0.334406,
		33.947090, 37.936424, 30.310625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094513, 38.297028, 29.508530>,  <33.715122, 38.553997, 30.076540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094513, 38.297028, 29.508530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995605, 37.989075, 29.743866>,  <33.936260, 37.804302, 29.885067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995605, 37.989075, 29.743866>,  <34.094513, 38.297028, 29.508530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995605, 37.989075, 29.743866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482706, -0.428611, -0.763733,
		0.840151, -0.472842, -0.265644,
		-0.247267, -0.769879, 0.588341,
		33.921425, 37.758110, 29.920368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087849, 37.747356, 28.985222>,  <34.094513, 38.297028, 29.508530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087849, 37.747356, 28.985222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908459, 37.588120, 29.305321>,  <33.800823, 37.492577, 29.497379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908459, 37.588120, 29.305321>,  <34.087849, 37.747356, 28.985222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908459, 37.588120, 29.305321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573375, -0.558687, -0.599258,
		0.685645, -0.727595, 0.022304,
		-0.448478, -0.398089, 0.800245,
		33.773914, 37.468693, 29.545395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202438, 36.983013, 28.978037>,  <34.087849, 37.747356, 28.985222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202438, 36.983013, 28.978037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870396, 37.108875, 29.162170>,  <33.671169, 37.184391, 29.272652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870396, 37.108875, 29.162170>,  <34.202438, 36.983013, 28.978037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870396, 37.108875, 29.162170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557314, -0.441777, -0.703018,
		-0.017843, -0.840134, 0.542086,
		-0.830110, 0.314656, 0.460336,
		33.621361, 37.203274, 29.300272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836975, 36.435707, 28.939569>,  <34.202438, 36.983013, 28.978037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836975, 36.435707, 28.939569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579964, 36.726879, 29.035301>,  <33.425758, 36.901581, 29.092739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579964, 36.726879, 29.035301>,  <33.836975, 36.435707, 28.939569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579964, 36.726879, 29.035301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643612, -0.343182, -0.684098,
		-0.415844, -0.593583, 0.689008,
		-0.642524, 0.727932, 0.239327,
		33.387207, 36.945259, 29.107100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117859, 36.169636, 28.818575>,  <33.836975, 36.435707, 28.939569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117859, 36.169636, 28.818575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058010, 36.565079, 28.811995>,  <33.022102, 36.802345, 28.808046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058010, 36.565079, 28.811995>,  <33.117859, 36.169636, 28.818575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058010, 36.565079, 28.811995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650544, -0.110960, -0.751319,
		-0.744584, -0.101711, 0.659734,
		-0.149622, 0.988607, -0.016452,
		33.013123, 36.861660, 28.807058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307323, 36.267288, 28.809925>,  <33.117859, 36.169636, 28.818575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307323, 36.267288, 28.809925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474323, 36.612995, 28.697689>,  <32.574524, 36.820419, 28.630346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474323, 36.612995, 28.697689>,  <32.307323, 36.267288, 28.809925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474323, 36.612995, 28.697689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711254, 0.118647, -0.692850,
		-0.565516, 0.488839, 0.664250,
		0.417503, 0.864268, -0.280592,
		32.599575, 36.872276, 28.613512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765114, 36.647850, 28.583624>,  <32.307323, 36.267288, 28.809925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765114, 36.647850, 28.583624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077801, 36.842686, 28.427845>,  <32.265411, 36.959587, 28.334377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077801, 36.842686, 28.427845>,  <31.765114, 36.647850, 28.583624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077801, 36.842686, 28.427845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432994, -0.025510, -0.901036,
		-0.448816, 0.872982, 0.190963,
		0.781716, 0.487085, -0.389445,
		32.312317, 36.988811, 28.311012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480347, 37.017696, 28.076872>,  <31.765114, 36.647850, 28.583624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480347, 37.017696, 28.076872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870077, 37.045349, 27.991163>,  <32.103916, 37.061943, 27.939739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870077, 37.045349, 27.991163>,  <31.480347, 37.017696, 28.076872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870077, 37.045349, 27.991163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216248, 0.022427, -0.976081,
		-0.062676, 0.997355, 0.036801,
		0.974325, 0.069135, -0.214270,
		32.162376, 37.066090, 27.926882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557285, 37.524601, 27.654032>,  <31.480347, 37.017696, 28.076872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557285, 37.524601, 27.654032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858727, 37.270252, 27.587397>,  <32.039593, 37.117641, 27.547417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858727, 37.270252, 27.587397>,  <31.557285, 37.524601, 27.654032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858727, 37.270252, 27.587397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297671, -0.104173, -0.948968,
		0.586067, 0.764733, -0.267786,
		0.753603, -0.635871, -0.166586,
		32.084808, 37.079491, 27.537420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862896, 37.855003, 26.998270>,  <31.557285, 37.524601, 27.654032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862896, 37.855003, 26.998270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.997810, 37.478672, 27.011461>,  <32.078758, 37.252872, 27.019377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.997810, 37.478672, 27.011461>,  <31.862896, 37.855003, 26.998270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997810, 37.478672, 27.011461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044027, -0.050758, -0.997740,
		0.940372, 0.335073, -0.058541,
		0.337287, -0.940824, 0.032979,
		32.098995, 37.196426, 27.021355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105320, 38.593487, 26.884640>,  <31.862896, 37.855003, 26.998270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105320, 38.593487, 26.884640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.838226, 38.836155, 26.712091>,  <31.677969, 38.981754, 26.608562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.838226, 38.836155, 26.712091>,  <32.105320, 38.593487, 26.884640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838226, 38.836155, 26.712091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202260, 0.409824, 0.889458,
		0.716394, 0.681171, -0.150949,
		-0.667735, 0.606671, -0.431369,
		31.637905, 39.018158, 26.582680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271042, 39.236526, 27.208454>,  <32.105320, 38.593487, 26.884640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271042, 39.236526, 27.208454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.899607, 39.238693, 27.060020>,  <31.676746, 39.239994, 26.970961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.899607, 39.238693, 27.060020>,  <32.271042, 39.236526, 27.208454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899607, 39.238693, 27.060020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345355, 0.353468, 0.869362,
		0.135873, 0.935431, -0.326355,
		-0.928584, 0.005414, -0.371083,
		31.621031, 39.240318, 26.948696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998671, 39.814697, 27.451672>,  <32.271042, 39.236526, 27.208454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998671, 39.814697, 27.451672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674850, 39.602299, 27.351532>,  <31.480558, 39.474861, 27.291449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674850, 39.602299, 27.351532>,  <31.998671, 39.814697, 27.451672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674850, 39.602299, 27.351532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412266, 0.210636, 0.886380,
		-0.417931, 0.820778, -0.389432,
		-0.809549, -0.530995, -0.250348,
		31.431986, 39.443001, 27.276428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420053, 40.208702, 27.787672>,  <31.998671, 39.814697, 27.451672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420053, 40.208702, 27.787672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.283455, 39.835022, 27.746403>,  <31.201496, 39.610813, 27.721642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.283455, 39.835022, 27.746403>,  <31.420053, 40.208702, 27.787672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283455, 39.835022, 27.746403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332016, 0.017209, 0.943117,
		-0.879286, 0.356328, -0.316047,
		-0.341498, -0.934202, -0.103175,
		31.181005, 39.554760, 27.715450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730906, 40.185699, 28.151716>,  <31.420053, 40.208702, 27.787672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730906, 40.185699, 28.151716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.838270, 39.803848, 28.100117>,  <30.902689, 39.574738, 28.069157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.838270, 39.803848, 28.100117>,  <30.730906, 40.185699, 28.151716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838270, 39.803848, 28.100117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311545, -0.212742, 0.926111,
		-0.911535, -0.208387, -0.354511,
		0.268409, -0.954628, -0.129000,
		30.918793, 39.517460, 28.061417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158705, 39.773094, 28.208656>,  <30.730906, 40.185699, 28.151716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158705, 39.773094, 28.208656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.480127, 39.554932, 28.304008>,  <30.672981, 39.424034, 28.361219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.480127, 39.554932, 28.304008>,  <30.158705, 39.773094, 28.208656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480127, 39.554932, 28.304008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297812, -0.021644, 0.954379,
		-0.515368, -0.837891, -0.179821,
		0.803558, -0.545409, 0.238379,
		30.721195, 39.391308, 28.375523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995922, 39.272011, 28.698807>,  <30.158705, 39.773094, 28.208656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995922, 39.272011, 28.698807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.391186, 39.254810, 28.757727>,  <30.628344, 39.244492, 28.793079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.391186, 39.254810, 28.757727>,  <29.995922, 39.272011, 28.698807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391186, 39.254810, 28.757727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147297, 0.003239, 0.989087,
		-0.043007, -0.999070, -0.003133,
		0.988157, -0.042999, 0.147299,
		30.687634, 39.241909, 28.801916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068239, 38.795895, 29.226107>,  <29.995922, 39.272011, 28.698807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068239, 38.795895, 29.226107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.400700, 39.018181, 29.218479>,  <30.600176, 39.151554, 29.213903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.400700, 39.018181, 29.218479>,  <30.068239, 38.795895, 29.226107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400700, 39.018181, 29.218479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141360, 0.244340, 0.959331,
		0.537776, -0.794655, 0.281640,
		0.831153, 0.555717, -0.019068,
		30.650045, 39.184895, 29.212759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384560, 38.637680, 29.781403>,  <30.068239, 38.795895, 29.226107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384560, 38.637680, 29.781403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585077, 38.973595, 29.698017>,  <30.705387, 39.175144, 29.647985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585077, 38.973595, 29.698017>,  <30.384560, 38.637680, 29.781403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585077, 38.973595, 29.698017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015083, 0.249367, 0.968291,
		0.865146, -0.482253, 0.137672,
		0.501293, 0.839790, -0.208466,
		30.735466, 39.225533, 29.635477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642284, 38.710434, 30.434055>,  <30.384560, 38.637680, 29.781403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642284, 38.710434, 30.434055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.669674, 39.059647, 30.240921>,  <30.686108, 39.269173, 30.125040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.669674, 39.059647, 30.240921>,  <30.642284, 38.710434, 30.434055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669674, 39.059647, 30.240921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060737, 0.486724, 0.871442,
		0.995803, -0.030343, 0.086353,
		0.068472, 0.873029, -0.482838,
		30.690216, 39.321556, 30.096069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964029, 39.128242, 30.938036>,  <30.642284, 38.710434, 30.434055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964029, 39.128242, 30.938036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.836668, 39.402058, 30.675728>,  <30.760252, 39.566345, 30.518343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.836668, 39.402058, 30.675728>,  <30.964029, 39.128242, 30.938036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836668, 39.402058, 30.675728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070769, 0.672677, 0.736544,
		0.945310, 0.280926, -0.165740,
		-0.318404, 0.684533, -0.655769,
		30.741146, 39.607418, 30.478996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368885, 39.689037, 31.002998>,  <30.964029, 39.128242, 30.938036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368885, 39.689037, 31.002998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.033972, 39.828709, 30.834698>,  <30.833025, 39.912514, 30.733717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.033972, 39.828709, 30.834698>,  <31.368885, 39.689037, 31.002998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033972, 39.828709, 30.834698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007412, 0.776698, 0.629830,
		0.546721, 0.524227, -0.652903,
		-0.837282, 0.349180, -0.420751,
		30.782787, 39.933464, 30.708473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416599, 40.426819, 31.151190>,  <31.368885, 39.689037, 31.002998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416599, 40.426819, 31.151190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.034033, 40.371098, 31.048532>,  <30.804493, 40.337666, 30.986938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.034033, 40.371098, 31.048532>,  <31.416599, 40.426819, 31.151190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034033, 40.371098, 31.048532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289402, 0.569392, 0.769440,
		0.038947, 0.810177, -0.584889,
		-0.956415, -0.139301, -0.256643,
		30.747108, 40.329308, 30.971539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152981, 41.039642, 31.272152>,  <31.416599, 40.426819, 31.151190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152981, 41.039642, 31.272152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.845158, 40.784344, 31.263954>,  <30.660463, 40.631165, 31.259035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.845158, 40.784344, 31.263954>,  <31.152981, 41.039642, 31.272152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845158, 40.784344, 31.263954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465695, 0.538965, 0.701887,
		-0.436933, 0.549686, -0.711994,
		-0.769557, -0.638249, -0.020494,
		30.614290, 40.592869, 31.257807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059099, 40.808052, 30.596117>,  <31.152981, 41.039642, 31.272152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059099, 40.808052, 30.596117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.998337, 41.202385, 30.567680>,  <30.961880, 41.438984, 30.550619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.998337, 41.202385, 30.567680>,  <31.059099, 40.808052, 30.596117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998337, 41.202385, 30.567680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070781, -0.060891, -0.995632,
		-0.985858, -0.156272, -0.060529,
		-0.151904, 0.985835, -0.071091,
		30.952766, 41.498135, 30.546352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434566, 41.060448, 30.163151>,  <31.059099, 40.808052, 30.596117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434566, 41.060448, 30.163151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.723949, 41.336544, 30.168390>,  <30.897579, 41.502201, 30.171534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.723949, 41.336544, 30.168390>,  <30.434566, 41.060448, 30.163151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723949, 41.336544, 30.168390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025985, 0.046189, -0.998595,
		-0.689877, 0.722103, 0.051352,
		0.723460, 0.690242, 0.013101,
		30.940987, 41.543617, 30.172321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191553, 41.595608, 29.739777>,  <30.434566, 41.060448, 30.163151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191553, 41.595608, 29.739777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.589109, 41.629585, 29.767977>,  <30.827642, 41.649971, 29.784897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.589109, 41.629585, 29.767977>,  <30.191553, 41.595608, 29.739777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589109, 41.629585, 29.767977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065194, 0.063697, -0.995837,
		-0.089080, 0.994348, 0.057770,
		0.993888, 0.084943, 0.070500,
		30.887276, 41.655067, 29.789127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316780, 41.978058, 29.216539>,  <30.191553, 41.595608, 29.739777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316780, 41.978058, 29.216539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.692932, 41.855667, 29.275961>,  <30.918623, 41.782234, 29.311613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.692932, 41.855667, 29.275961>,  <30.316780, 41.978058, 29.216539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692932, 41.855667, 29.275961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186927, 0.100027, -0.977268,
		0.284159, 0.946771, 0.151258,
		0.940379, -0.305974, 0.148554,
		30.975046, 41.763874, 29.320526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668995, 42.409687, 28.886747>,  <30.316780, 41.978058, 29.216539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668995, 42.409687, 28.886747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927591, 42.105427, 28.910263>,  <31.082750, 41.922871, 28.924374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927591, 42.105427, 28.910263>,  <30.668995, 42.409687, 28.886747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927591, 42.105427, 28.910263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292567, 0.176013, -0.939906,
		0.704594, 0.624842, 0.336332,
		0.646492, -0.760652, 0.058791,
		31.121538, 41.877232, 28.927900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287439, 42.686001, 28.519903>,  <30.668995, 42.409687, 28.886747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287439, 42.686001, 28.519903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303335, 42.286617, 28.535433>,  <31.312872, 42.046989, 28.544750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303335, 42.286617, 28.535433>,  <31.287439, 42.686001, 28.519903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303335, 42.286617, 28.535433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333495, -0.023373, -0.942462,
		0.941914, 0.050400, 0.332052,
		0.039739, -0.998456, 0.038823,
		31.315256, 41.987080, 28.547079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066486, 42.477474, 28.290499>,  <31.287439, 42.686001, 28.519903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066486, 42.477474, 28.290499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811544, 42.173485, 28.239544>,  <31.658581, 41.991093, 28.208971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811544, 42.173485, 28.239544>,  <32.066486, 42.477474, 28.290499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811544, 42.173485, 28.239544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410543, -0.194996, -0.890747,
		0.652102, -0.620017, 0.436282,
		-0.637352, -0.759970, -0.127387,
		31.620338, 41.945492, 28.201328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430538, 41.873322, 28.059731>,  <32.066486, 42.477474, 28.290499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430538, 41.873322, 28.059731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064709, 41.800781, 27.915142>,  <31.845211, 41.757256, 27.828388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064709, 41.800781, 27.915142>,  <32.430538, 41.873322, 28.059731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064709, 41.800781, 27.915142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392576, -0.183445, -0.901240,
		0.097131, -0.966157, 0.238968,
		-0.914576, -0.181352, -0.361472,
		31.790337, 41.746376, 27.806700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618938, 41.383343, 27.573402>,  <32.430538, 41.873322, 28.059731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618938, 41.383343, 27.573402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241268, 41.485371, 27.489994>,  <32.014668, 41.546585, 27.439949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.241268, 41.485371, 27.489994>,  <32.618938, 41.383343, 27.573402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241268, 41.485371, 27.489994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184053, -0.116578, -0.975979,
		-0.273248, -0.959870, 0.063124,
		-0.944172, 0.255066, -0.208522,
		31.958017, 41.561890, 27.427437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367775, 40.901649, 27.024385>,  <32.618938, 41.383343, 27.573402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367775, 40.901649, 27.024385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137333, 41.228573, 27.028591>,  <31.999069, 41.424728, 27.031115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137333, 41.228573, 27.028591>,  <32.367775, 40.901649, 27.024385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137333, 41.228573, 27.028591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180400, 0.139685, -0.973624,
		-0.797222, -0.559009, -0.227916,
		-0.576101, 0.817311, 0.010515,
		31.964502, 41.473766, 27.031746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881025, 40.789406, 26.455212>,  <32.367775, 40.901649, 27.024385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881025, 40.789406, 26.455212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907404, 41.178589, 26.543755>,  <31.923231, 41.412098, 26.596880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907404, 41.178589, 26.543755>,  <31.881025, 40.789406, 26.455212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907404, 41.178589, 26.543755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270974, 0.196042, -0.942412,
		-0.960325, 0.122130, -0.250719,
		0.065945, 0.972960, 0.221359,
		31.927187, 41.470478, 26.610163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550516, 40.932404, 25.923000>,  <31.881025, 40.789406, 26.455212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550516, 40.932404, 25.923000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758392, 41.252480, 26.042749>,  <31.883118, 41.444523, 26.114599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758392, 41.252480, 26.042749>,  <31.550516, 40.932404, 25.923000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758392, 41.252480, 26.042749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242545, 0.197809, -0.949760,
		-0.819202, 0.566193, -0.091281,
		0.519691, 0.800185, 0.299373,
		31.914299, 41.492535, 26.132561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347094, 41.492035, 25.561787>,  <31.550516, 40.932404, 25.923000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347094, 41.492035, 25.561787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710701, 41.608673, 25.680893>,  <31.928865, 41.678654, 25.752356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710701, 41.608673, 25.680893>,  <31.347094, 41.492035, 25.561787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710701, 41.608673, 25.680893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225578, 0.256518, -0.939847,
		-0.350433, 0.921506, 0.167403,
		0.909016, 0.291591, 0.297764,
		31.983406, 41.696152, 25.770222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550394, 42.072182, 25.040049>,  <31.347094, 41.492035, 25.561787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550394, 42.072182, 25.040049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897861, 41.978897, 25.214874>,  <32.106342, 41.922928, 25.319769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897861, 41.978897, 25.214874>,  <31.550394, 42.072182, 25.040049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897861, 41.978897, 25.214874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481111, 0.186847, -0.856516,
		0.118086, 0.954306, 0.274509,
		0.868670, -0.233212, 0.437063,
		32.158463, 41.908932, 25.345993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069237, 42.608330, 24.812433>,  <31.550394, 42.072182, 25.040049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069237, 42.608330, 24.812433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290558, 42.296585, 24.930040>,  <32.423351, 42.109539, 25.000605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290558, 42.296585, 24.930040>,  <32.069237, 42.608330, 24.812433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290558, 42.296585, 24.930040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518627, 0.046111, -0.853756,
		0.651830, 0.624872, 0.429713,
		0.553303, -0.779364, 0.294019,
		32.456547, 42.062775, 25.018246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687073, 42.809856, 24.536772>,  <32.069237, 42.608330, 24.812433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687073, 42.809856, 24.536772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735767, 42.420963, 24.616711>,  <32.764984, 42.187626, 24.664675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735767, 42.420963, 24.616711>,  <32.687073, 42.809856, 24.536772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735767, 42.420963, 24.616711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475284, -0.119661, -0.871657,
		0.871370, 0.201098, 0.447520,
		0.121738, -0.972235, 0.199848,
		32.772289, 42.129292, 24.676664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370483, 42.628674, 24.371380>,  <32.687073, 42.809856, 24.536772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370483, 42.628674, 24.371380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190147, 42.271641, 24.373934>,  <33.081947, 42.057423, 24.375465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190147, 42.271641, 24.373934>,  <33.370483, 42.628674, 24.371380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190147, 42.271641, 24.373934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499136, -0.258025, -0.827216,
		0.740007, -0.369754, 0.561847,
		-0.450837, -0.892583, 0.006383,
		33.054897, 42.003864, 24.375849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910198, 42.113739, 24.192760>,  <33.370483, 42.628674, 24.371380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910198, 42.113739, 24.192760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553566, 41.943428, 24.131065>,  <33.339584, 41.841240, 24.094048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553566, 41.943428, 24.131065>,  <33.910198, 42.113739, 24.192760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553566, 41.943428, 24.131065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335559, -0.392440, -0.856383,
		0.304102, -0.815293, 0.492768,
		-0.891584, -0.425781, -0.154237,
		33.286091, 41.815693, 24.084795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994854, 41.324280, 24.094021>,  <33.910198, 42.113739, 24.192760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994854, 41.324280, 24.094021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669544, 41.462498, 23.906754>,  <33.474358, 41.545429, 23.794394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669544, 41.462498, 23.906754>,  <33.994854, 41.324280, 24.094021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669544, 41.462498, 23.906754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310391, -0.422922, -0.851348,
		-0.492183, -0.837694, 0.236695,
		-0.813273, 0.345551, -0.468168,
		33.425564, 41.566162, 23.766304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953644, 40.858150, 23.609549>,  <33.994854, 41.324280, 24.094021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953644, 40.858150, 23.609549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673882, 41.119713, 23.494143>,  <33.506023, 41.276649, 23.424898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673882, 41.119713, 23.494143>,  <33.953644, 40.858150, 23.609549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673882, 41.119713, 23.494143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059731, -0.348783, -0.935298,
		-0.712229, -0.671382, 0.204881,
		-0.699401, 0.653909, -0.288515,
		33.464062, 41.315884, 23.407587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600182, 40.472969, 23.080772>,  <33.953644, 40.858150, 23.609549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600182, 40.472969, 23.080772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540966, 40.858376, 22.991585>,  <33.505436, 41.089619, 22.938072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540966, 40.858376, 22.991585>,  <33.600182, 40.472969, 23.080772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540966, 40.858376, 22.991585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146189, -0.201655, -0.968485,
		-0.978116, -0.175973, -0.111002,
		-0.148043, 0.963519, -0.222968,
		33.496552, 41.147430, 22.924694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177284, 40.532440, 22.402754>,  <33.600182, 40.472969, 23.080772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177284, 40.532440, 22.402754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350235, 40.891739, 22.434278>,  <33.454006, 41.107319, 22.453194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350235, 40.891739, 22.434278>,  <33.177284, 40.532440, 22.402754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350235, 40.891739, 22.434278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171310, 0.003978, -0.985209,
		-0.885271, 0.439481, -0.152158,
		0.432376, 0.898243, 0.078809,
		33.479946, 41.161213, 22.457922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744698, 41.024693, 22.074837>,  <33.177284, 40.532440, 22.402754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744698, 41.024693, 22.074837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115055, 41.175720, 22.069801>,  <33.337269, 41.266338, 22.066780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115055, 41.175720, 22.069801>,  <32.744698, 41.024693, 22.074837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115055, 41.175720, 22.069801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038671, 0.061584, -0.997353,
		-0.375794, 0.923931, 0.071621,
		0.925896, 0.377569, -0.012587,
		33.392822, 41.288990, 22.066025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763229, 41.638866, 21.643631>,  <32.744698, 41.024693, 22.074837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763229, 41.638866, 21.643631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160225, 41.613647, 21.685551>,  <33.398422, 41.598515, 21.710703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160225, 41.613647, 21.685551>,  <32.763229, 41.638866, 21.643631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160225, 41.613647, 21.685551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117073, 0.241830, -0.963230,
		0.035385, 0.968268, 0.247396,
		0.992493, -0.063047, 0.104801,
		33.457973, 41.594734, 21.716991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087997, 42.220036, 21.289537>,  <32.763229, 41.638866, 21.643631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087997, 42.220036, 21.289537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364166, 41.932499, 21.321981>,  <33.529869, 41.759975, 21.341448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364166, 41.932499, 21.321981>,  <33.087997, 42.220036, 21.289537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364166, 41.932499, 21.321981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291360, 0.173700, -0.940711,
		0.662136, 0.673121, 0.329369,
		0.690424, -0.718844, 0.081108,
		33.571293, 41.716846, 21.346313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757755, 42.495541, 21.137276>,  <33.087997, 42.220036, 21.289537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757755, 42.495541, 21.137276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778774, 42.100727, 21.076612>,  <33.791386, 41.863838, 21.040215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778774, 42.100727, 21.076612>,  <33.757755, 42.495541, 21.137276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778774, 42.100727, 21.076612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344721, 0.160460, -0.924889,
		0.937234, -0.003682, 0.348683,
		0.052544, -0.987035, -0.151658,
		33.794537, 41.804615, 21.031115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401634, 42.345924, 20.845486>,  <33.757755, 42.495541, 21.137276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401634, 42.345924, 20.845486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201431, 42.010151, 20.760771>,  <34.081310, 41.808689, 20.709942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201431, 42.010151, 20.760771>,  <34.401634, 42.345924, 20.845486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201431, 42.010151, 20.760771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452297, -0.044949, -0.890734,
		0.738190, -0.541605, 0.402169,
		-0.500504, -0.839430, -0.211785,
		34.051281, 41.758324, 20.697235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943855, 41.765717, 20.650129>,  <34.401634, 42.345924, 20.845486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943855, 41.765717, 20.650129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587578, 41.685257, 20.487057>,  <34.373814, 41.636982, 20.389214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587578, 41.685257, 20.487057>,  <34.943855, 41.765717, 20.650129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587578, 41.685257, 20.487057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430030, -0.081930, -0.899089,
		0.147452, -0.976128, 0.159476,
		-0.890692, -0.201152, -0.407684,
		34.320370, 41.624912, 20.364752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548523, 41.328091, 20.895580>,  <34.943855, 41.765717, 20.650129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548523, 41.328091, 20.895580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942127, 41.258308, 20.881233>,  <36.178291, 41.216438, 20.872625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942127, 41.258308, 20.881233>,  <35.548523, 41.328091, 20.895580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942127, 41.258308, 20.881233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056657, 0.115687, 0.991668,
		-0.168856, -0.977845, 0.123721,
		0.984011, -0.174459, -0.035867,
		36.237331, 41.205971, 20.870474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697796, 40.791348, 21.372873>,  <35.548523, 41.328091, 20.895580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697796, 40.791348, 21.372873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.041348, 40.989052, 21.319160>,  <36.247478, 41.107674, 21.286932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.041348, 40.989052, 21.319160>,  <35.697796, 40.791348, 21.372873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041348, 40.989052, 21.319160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099180, 0.096720, 0.990358,
		0.502486, -0.863914, 0.034049,
		0.858878, 0.494264, -0.134283,
		36.299011, 41.137329, 21.278875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065704, 40.630432, 21.919437>,  <35.697796, 40.791348, 21.372873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065704, 40.630432, 21.919437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274338, 40.956139, 21.817524>,  <36.399517, 41.151562, 21.756376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274338, 40.956139, 21.817524>,  <36.065704, 40.630432, 21.919437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274338, 40.956139, 21.817524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101455, 0.237308, 0.966122,
		0.847146, -0.529764, 0.041165,
		0.521585, 0.814270, -0.254781,
		36.430813, 41.200420, 21.741089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652966, 40.683102, 22.347540>,  <36.065704, 40.630432, 21.919437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652966, 40.683102, 22.347540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600311, 41.061707, 22.229700>,  <36.568718, 41.288868, 22.158997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600311, 41.061707, 22.229700>,  <36.652966, 40.683102, 22.347540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600311, 41.061707, 22.229700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037177, 0.301690, 0.952681,
		0.990600, 0.114458, -0.074903,
		-0.131639, 0.946510, -0.294599,
		36.560818, 41.345661, 22.141321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180626, 41.089245, 22.634937>,  <36.652966, 40.683102, 22.347540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180626, 41.089245, 22.634937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877487, 41.339069, 22.559475>,  <36.695606, 41.488964, 22.514198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877487, 41.339069, 22.559475>,  <37.180626, 41.089245, 22.634937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877487, 41.339069, 22.559475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142495, 0.440620, 0.886312,
		0.636684, 0.644805, -0.422919,
		-0.757845, 0.624564, -0.188654,
		36.650135, 41.526440, 22.502878>
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
