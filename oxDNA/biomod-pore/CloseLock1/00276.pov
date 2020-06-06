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
	<24.212652, 35.360268, 34.817249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.085699, 35.002422, 34.943066>,  <24.009527, 34.787716, 35.018555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.085699, 35.002422, 34.943066>,  <24.212652, 35.360268, 34.817249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.085699, 35.002422, 34.943066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041014, -0.344329, -0.937952,
		0.947410, -0.284791, 0.145977,
		-0.317385, -0.894612, 0.314541,
		23.990484, 34.734039, 35.037426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725313, 34.742207, 34.722172>,  <24.212652, 35.360268, 34.817249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725313, 34.742207, 34.722172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335918, 34.670055, 34.665905>,  <24.102282, 34.626766, 34.632145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335918, 34.670055, 34.665905>,  <24.725313, 34.742207, 34.722172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335918, 34.670055, 34.665905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179363, -0.220307, -0.958798,
		0.141953, -0.958608, 0.246819,
		-0.973488, -0.180375, -0.140666,
		24.043873, 34.615944, 34.623707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473312, 34.059109, 34.513428>,  <24.725313, 34.742207, 34.722172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473312, 34.059109, 34.513428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246662, 34.355438, 34.369137>,  <24.110672, 34.533234, 34.282562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246662, 34.355438, 34.369137>,  <24.473312, 34.059109, 34.513428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246662, 34.355438, 34.369137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090428, -0.379231, -0.920873,
		-0.819000, -0.554408, 0.147890,
		-0.566624, 0.740821, -0.360724,
		24.076675, 34.577686, 34.260921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.894190, 33.759464, 34.143841>,  <24.473312, 34.059109, 34.513428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.894190, 33.759464, 34.143841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.001696, 34.107365, 33.978287>,  <24.066198, 34.316105, 33.878956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.001696, 34.107365, 33.978287>,  <23.894190, 33.759464, 34.143841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.001696, 34.107365, 33.978287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160415, -0.464111, -0.871130,
		-0.949754, 0.167735, -0.264257,
		0.268764, 0.869751, -0.413884,
		24.082325, 34.368290, 33.854122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.677092, 33.714645, 33.501274>,  <23.894190, 33.759464, 34.143841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.677092, 33.714645, 33.501274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.974337, 33.981499, 33.480419>,  <24.152683, 34.141609, 33.467907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.974337, 33.981499, 33.480419>,  <23.677092, 33.714645, 33.501274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.974337, 33.981499, 33.480419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365130, -0.469530, -0.803879,
		-0.560773, 0.578336, -0.592504,
		0.743111, 0.667135, -0.052133,
		24.197269, 34.181641, 33.464779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.763798, 33.887901, 32.801025>,  <23.677092, 33.714645, 33.501274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.763798, 33.887901, 32.801025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112688, 33.960213, 32.982811>,  <24.322023, 34.003601, 33.091881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112688, 33.960213, 32.982811>,  <23.763798, 33.887901, 32.801025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.112688, 33.960213, 32.982811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488589, -0.364528, -0.792717,
		0.022358, 0.913476, -0.406278,
		0.872227, 0.180779, 0.454465,
		24.374357, 34.014446, 33.119152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227135, 34.206005, 32.318169>,  <23.763798, 33.887901, 32.801025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.227135, 34.206005, 32.318169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476381, 34.053410, 32.591282>,  <24.625929, 33.961853, 32.755150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476381, 34.053410, 32.591282>,  <24.227135, 34.206005, 32.318169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.476381, 34.053410, 32.591282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645202, -0.242719, -0.724432,
		0.442085, 0.891940, 0.094892,
		0.623118, -0.381485, 0.682784,
		24.663317, 33.938965, 32.796116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864637, 34.409843, 32.097939>,  <24.227135, 34.206005, 32.318169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864637, 34.409843, 32.097939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952824, 34.103668, 32.339764>,  <25.005735, 33.919964, 32.484859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952824, 34.103668, 32.339764>,  <24.864637, 34.409843, 32.097939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952824, 34.103668, 32.339764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650847, -0.346205, -0.675677,
		0.726494, 0.542440, 0.421860,
		0.220464, -0.765442, 0.604561,
		25.018963, 33.874035, 32.521133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614616, 34.314213, 31.975878>,  <24.864637, 34.409843, 32.097939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614616, 34.314213, 31.975878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485666, 33.984505, 32.162064>,  <25.408297, 33.786678, 32.273773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485666, 33.984505, 32.162064>,  <25.614616, 34.314213, 31.975878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485666, 33.984505, 32.162064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638559, -0.552346, -0.535869,
		0.698797, 0.124477, 0.704406,
		-0.322373, -0.824269, 0.465464,
		25.388954, 33.737225, 32.301704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225233, 33.976959, 32.147427>,  <25.614616, 34.314213, 31.975878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225233, 33.976959, 32.147427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939026, 33.697857, 32.161106>,  <25.767302, 33.530396, 32.169315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939026, 33.697857, 32.161106>,  <26.225233, 33.976959, 32.147427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939026, 33.697857, 32.161106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546970, -0.589999, -0.593907,
		0.434581, -0.406244, 0.803807,
		-0.715516, -0.697759, 0.034199,
		25.724371, 33.488529, 32.171368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578442, 33.318893, 32.096027>,  <26.225233, 33.976959, 32.147427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578442, 33.318893, 32.096027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210003, 33.274860, 31.946650>,  <25.988939, 33.248440, 31.857023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210003, 33.274860, 31.946650>,  <26.578442, 33.318893, 32.096027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210003, 33.274860, 31.946650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372443, -0.528590, -0.762810,
		-0.113429, -0.841709, 0.527882,
		-0.921097, -0.110082, -0.373446,
		25.933674, 33.241837, 31.834616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694395, 32.759415, 31.707079>,  <26.578442, 33.318893, 32.096027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694395, 32.759415, 31.707079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345486, 32.892151, 31.563402>,  <26.136141, 32.971794, 31.477196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345486, 32.892151, 31.563402>,  <26.694395, 32.759415, 31.707079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345486, 32.892151, 31.563402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265647, -0.295152, -0.917779,
		-0.410578, -0.895971, 0.169299,
		-0.872271, 0.331846, -0.359195,
		26.083803, 32.991703, 31.455645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498373, 32.246452, 31.151836>,  <26.694395, 32.759415, 31.707079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498373, 32.246452, 31.151836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282642, 32.577290, 31.088535>,  <26.153204, 32.775791, 31.050554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282642, 32.577290, 31.088535>,  <26.498373, 32.246452, 31.151836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282642, 32.577290, 31.088535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222908, -0.041002, -0.973977,
		-0.812057, -0.560569, -0.162252,
		-0.539329, 0.827092, -0.158251,
		26.120844, 32.825417, 31.041059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097157, 32.131752, 30.551458>,  <26.498373, 32.246452, 31.151836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097157, 32.131752, 30.551458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116129, 32.531277, 30.555784>,  <26.127512, 32.770992, 30.558380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116129, 32.531277, 30.555784>,  <26.097157, 32.131752, 30.551458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116129, 32.531277, 30.555784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389546, -0.008527, -0.920968,
		-0.919785, 0.047897, -0.389489,
		0.047433, 0.998816, 0.010815,
		26.130360, 32.830921, 30.559029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008724, 32.348103, 29.924793>,  <26.097157, 32.131752, 30.551458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008724, 32.348103, 29.924793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146032, 32.694965, 30.069130>,  <26.228416, 32.903084, 30.155731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146032, 32.694965, 30.069130>,  <26.008724, 32.348103, 29.924793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146032, 32.694965, 30.069130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211102, 0.303122, -0.929275,
		-0.915206, 0.395166, -0.079006,
		0.343270, 0.867157, 0.360840,
		26.249014, 32.955112, 30.177382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701750, 32.992535, 29.508759>,  <26.008724, 32.348103, 29.924793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701750, 32.992535, 29.508759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042757, 33.103848, 29.685743>,  <26.247360, 33.170635, 29.791935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042757, 33.103848, 29.685743>,  <25.701750, 32.992535, 29.508759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042757, 33.103848, 29.685743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278319, 0.474841, -0.834904,
		-0.442441, 0.834915, 0.327358,
		0.852517, 0.278285, 0.442462,
		26.298512, 33.187332, 29.818481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914827, 33.525814, 29.044367>,  <25.701750, 32.992535, 29.508759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914827, 33.525814, 29.044367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248953, 33.466236, 29.256054>,  <26.449429, 33.430489, 29.383066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248953, 33.466236, 29.256054>,  <25.914827, 33.525814, 29.044367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248953, 33.466236, 29.256054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538358, 0.416757, -0.732451,
		-0.111463, 0.896733, 0.428306,
		0.835313, -0.148941, 0.529216,
		26.499546, 33.421555, 29.414818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357428, 34.037766, 28.917749>,  <25.914827, 33.525814, 29.044367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357428, 34.037766, 28.917749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631800, 33.786777, 29.065142>,  <26.796423, 33.636185, 29.153578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631800, 33.786777, 29.065142>,  <26.357428, 34.037766, 28.917749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631800, 33.786777, 29.065142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598436, 0.198352, -0.776228,
		0.413973, 0.752950, 0.511558,
		0.685930, -0.627473, 0.368480,
		26.837578, 33.598537, 29.175686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972992, 34.301033, 28.743338>,  <26.357428, 34.037766, 28.917749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972992, 34.301033, 28.743338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085770, 33.924385, 28.816950>,  <27.153437, 33.698399, 28.861116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085770, 33.924385, 28.816950>,  <26.972992, 34.301033, 28.743338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085770, 33.924385, 28.816950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714627, 0.078122, -0.695129,
		0.640168, 0.327500, 0.694931,
		0.281944, -0.941616, 0.184029,
		27.170353, 33.641899, 28.872158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637762, 34.370285, 28.865328>,  <26.972992, 34.301033, 28.743338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637762, 34.370285, 28.865328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559402, 33.993145, 28.757513>,  <27.512386, 33.766861, 28.692825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559402, 33.993145, 28.757513>,  <27.637762, 34.370285, 28.865328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559402, 33.993145, 28.757513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808463, 0.000272, -0.588546,
		0.554987, -0.333206, 0.762210,
		-0.195900, -0.942854, -0.269535,
		27.500633, 33.710289, 28.676653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318626, 34.109676, 28.954271>,  <27.637762, 34.370285, 28.865328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318626, 34.109676, 28.954271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110239, 33.870277, 28.710833>,  <27.985207, 33.726639, 28.564770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110239, 33.870277, 28.710833>,  <28.318626, 34.109676, 28.954271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110239, 33.870277, 28.710833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737573, 0.043223, -0.673883,
		0.429625, -0.799955, 0.418921,
		-0.520969, -0.598501, -0.608594,
		27.953949, 33.690727, 28.528254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781834, 33.609005, 28.782616>,  <28.318626, 34.109676, 28.954271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781834, 33.609005, 28.782616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506748, 33.590569, 28.492809>,  <28.341698, 33.579506, 28.318926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506748, 33.590569, 28.492809>,  <28.781834, 33.609005, 28.782616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506748, 33.590569, 28.492809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721215, -0.157561, -0.674554,
		-0.083061, -0.986433, 0.141602,
		-0.687713, -0.046096, -0.724518,
		28.300434, 33.576740, 28.275454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059956, 33.145401, 28.408672>,  <28.781834, 33.609005, 28.782616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059956, 33.145401, 28.408672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780609, 33.315796, 28.178604>,  <28.613001, 33.418034, 28.040564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780609, 33.315796, 28.178604>,  <29.059956, 33.145401, 28.408672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780609, 33.315796, 28.178604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577625, -0.139096, -0.804364,
		-0.422651, -0.893974, -0.148919,
		-0.698367, 0.425985, -0.575170,
		28.571098, 33.443592, 28.006054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007278, 32.726807, 27.699341>,  <29.059956, 33.145401, 28.408672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007278, 32.726807, 27.699341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916115, 33.114960, 27.667294>,  <28.861416, 33.347851, 27.648066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916115, 33.114960, 27.667294>,  <29.007278, 32.726807, 27.699341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916115, 33.114960, 27.667294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638976, 0.086973, -0.764294,
		-0.734688, -0.225384, -0.639872,
		-0.227911, 0.970380, -0.080117,
		28.847742, 33.406075, 27.643259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936310, 32.887321, 26.984676>,  <29.007278, 32.726807, 27.699341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936310, 32.887321, 26.984676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017418, 33.239063, 27.157009>,  <29.066084, 33.450108, 27.260408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017418, 33.239063, 27.157009>,  <28.936310, 32.887321, 26.984676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017418, 33.239063, 27.157009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681793, 0.189025, -0.706702,
		-0.702881, 0.437037, -0.561210,
		0.202772, 0.879357, 0.430831,
		29.078249, 33.502869, 27.286259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794733, 33.553532, 26.554352>,  <28.936310, 32.887321, 26.984676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794733, 33.553532, 26.554352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108458, 33.598015, 26.798479>,  <29.296692, 33.624702, 26.944956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108458, 33.598015, 26.798479>,  <28.794733, 33.553532, 26.554352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108458, 33.598015, 26.798479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543879, 0.349980, -0.762699,
		-0.298416, 0.930133, 0.214011,
		0.784311, 0.111205, 0.610319,
		29.343750, 33.631378, 26.981575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029938, 34.269810, 26.609518>,  <28.794733, 33.553532, 26.554352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029938, 34.269810, 26.609518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347029, 34.070541, 26.750034>,  <29.537283, 33.950981, 26.834343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347029, 34.070541, 26.750034>,  <29.029938, 34.269810, 26.609518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347029, 34.070541, 26.750034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590238, 0.483306, -0.646556,
		0.152317, 0.719888, 0.677171,
		0.792729, -0.498173, 0.351290,
		29.584846, 33.921089, 26.855421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699213, 34.871826, 27.056057>,  <29.029938, 34.269810, 26.609518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699213, 34.871826, 27.056057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017317, 34.805378, 27.289284>,  <29.208179, 34.765507, 27.429218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017317, 34.805378, 27.289284>,  <28.699213, 34.871826, 27.056057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017317, 34.805378, 27.289284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606156, -0.236411, 0.759398,
		0.011690, -0.957347, -0.288705,
		0.795260, -0.166123, 0.583065,
		29.255896, 34.755543, 27.464203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580643, 35.566196, 26.770514>,  <28.699213, 34.871826, 27.056057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580643, 35.566196, 26.770514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817324, 35.829369, 26.584171>,  <28.959332, 35.987270, 26.472366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817324, 35.829369, 26.584171>,  <28.580643, 35.566196, 26.770514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817324, 35.829369, 26.584171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460104, 0.750122, 0.474997,
		0.661961, -0.066716, 0.746563,
		0.591703, 0.657926, -0.465855,
		28.994835, 36.026745, 26.444414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893557, 35.996105, 27.364124>,  <28.580643, 35.566196, 26.770514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893557, 35.996105, 27.364124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840075, 36.184654, 27.015429>,  <28.807985, 36.297783, 26.806211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840075, 36.184654, 27.015429>,  <28.893557, 35.996105, 27.364124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840075, 36.184654, 27.015429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033995, 0.881301, 0.471330,
		0.990438, 0.033384, -0.133859,
		-0.133705, 0.471374, -0.871740,
		28.799963, 36.326065, 26.753906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459673, 36.321747, 27.236143>,  <28.893557, 35.996105, 27.364124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459673, 36.321747, 27.236143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128763, 36.510231, 27.113783>,  <28.930218, 36.623322, 27.040367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128763, 36.510231, 27.113783>,  <29.459673, 36.321747, 27.236143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128763, 36.510231, 27.113783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186903, 0.744335, 0.641118,
		0.529797, 0.473206, -0.703840,
		-0.827274, 0.471212, -0.305903,
		28.880581, 36.651596, 27.022013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520191, 37.034725, 26.928598>,  <29.459673, 36.321747, 27.236143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520191, 37.034725, 26.928598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164618, 36.998844, 27.108265>,  <28.951273, 36.977314, 27.216064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164618, 36.998844, 27.108265>,  <29.520191, 37.034725, 26.928598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164618, 36.998844, 27.108265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203950, 0.800540, 0.563507,
		-0.410123, 0.592528, -0.693333,
		-0.888934, -0.089702, 0.449166,
		28.897938, 36.971935, 27.243015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851757, 37.097900, 27.556810>,  <29.520191, 37.034725, 26.928598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851757, 37.097900, 27.556810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226660, 36.988689, 27.643536>,  <30.451601, 36.923164, 27.695572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226660, 36.988689, 27.643536>,  <29.851757, 37.097900, 27.556810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226660, 36.988689, 27.643536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249782, -0.091995, 0.963922,
		-0.243230, -0.957598, -0.154420,
		0.937255, -0.273026, 0.216815,
		30.507837, 36.906784, 27.708580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890633, 36.429325, 28.031012>,  <29.851757, 37.097900, 27.556810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890633, 36.429325, 28.031012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250898, 36.591774, 28.092813>,  <30.467058, 36.689243, 28.129894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250898, 36.591774, 28.092813>,  <29.890633, 36.429325, 28.031012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250898, 36.591774, 28.092813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099875, -0.152565, 0.983234,
		0.422886, -0.900993, -0.096848,
		0.900662, 0.406123, 0.154505,
		30.521097, 36.713612, 28.139164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378281, 36.027161, 28.456999>,  <29.890633, 36.429325, 28.031012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378281, 36.027161, 28.456999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429119, 36.421043, 28.504652>,  <30.459623, 36.657375, 28.533245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429119, 36.421043, 28.504652>,  <30.378281, 36.027161, 28.456999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429119, 36.421043, 28.504652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262832, -0.082380, 0.961318,
		0.956434, -0.153493, 0.248343,
		0.127097, 0.984710, 0.119134,
		30.467249, 36.716457, 28.540392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907940, 36.152519, 28.988037>,  <30.378281, 36.027161, 28.456999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907940, 36.152519, 28.988037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625690, 36.434212, 28.956648>,  <30.456341, 36.603226, 28.937815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625690, 36.434212, 28.956648>,  <30.907940, 36.152519, 28.988037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625690, 36.434212, 28.956648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178371, -0.069356, 0.981516,
		0.685767, 0.706579, 0.174553,
		-0.705625, 0.704227, -0.078471,
		30.414003, 36.645481, 28.933107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122437, 36.585201, 29.539927>,  <30.907940, 36.152519, 28.988037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122437, 36.585201, 29.539927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732384, 36.623825, 29.460131>,  <30.498352, 36.646999, 29.412254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732384, 36.623825, 29.460131>,  <31.122437, 36.585201, 29.539927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732384, 36.623825, 29.460131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215757, -0.207777, 0.954085,
		0.050681, 0.973398, 0.223444,
		-0.975131, 0.096563, -0.199487,
		30.439844, 36.652794, 29.400284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798059, 36.818512, 30.179783>,  <31.122437, 36.585201, 29.539927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798059, 36.818512, 30.179783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531284, 36.633121, 29.946415>,  <30.371220, 36.521885, 29.806395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531284, 36.633121, 29.946415>,  <30.798059, 36.818512, 30.179783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531284, 36.633121, 29.946415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419687, -0.413313, 0.808106,
		-0.615676, 0.783811, 0.081138,
		-0.666938, -0.463479, -0.583422,
		30.331203, 36.494080, 29.771389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071783, 36.990528, 30.421793>,  <30.798059, 36.818512, 30.179783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071783, 36.990528, 30.421793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068726, 36.639885, 30.229336>,  <30.066891, 36.429501, 30.113861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068726, 36.639885, 30.229336>,  <30.071783, 36.990528, 30.421793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068726, 36.639885, 30.229336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458606, -0.424502, 0.780692,
		-0.888607, 0.226622, -0.398773,
		-0.007642, -0.876607, -0.481145,
		30.066433, 36.376904, 30.084991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410252, 36.676613, 30.553600>,  <30.071783, 36.990528, 30.421793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410252, 36.676613, 30.553600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593708, 36.366325, 30.380207>,  <29.703781, 36.180153, 30.276171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593708, 36.366325, 30.380207>,  <29.410252, 36.676613, 30.553600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593708, 36.366325, 30.380207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465932, -0.625308, 0.626016,
		-0.756674, -0.085143, -0.648224,
		0.458641, -0.775719, -0.433484,
		29.731300, 36.133610, 30.250162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894302, 36.155949, 30.329969>,  <29.410252, 36.676613, 30.553600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894302, 36.155949, 30.329969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249908, 35.977192, 30.369843>,  <29.463272, 35.869938, 30.393766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249908, 35.977192, 30.369843>,  <28.894302, 36.155949, 30.329969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249908, 35.977192, 30.369843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366517, -0.564083, 0.739916,
		-0.274434, -0.694332, -0.665273,
		0.889017, -0.446892, 0.099681,
		29.516613, 35.843124, 30.399746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721743, 35.411644, 30.458036>,  <28.894302, 36.155949, 30.329969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721743, 35.411644, 30.458036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099363, 35.452583, 30.583441>,  <29.325935, 35.477146, 30.658684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099363, 35.452583, 30.583441>,  <28.721743, 35.411644, 30.458036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099363, 35.452583, 30.583441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175362, -0.649321, 0.740021,
		0.279308, -0.753597, -0.595045,
		0.944052, 0.102346, 0.313513,
		29.382580, 35.483288, 30.677494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953232, 34.706562, 30.738333>,  <28.721743, 35.411644, 30.458036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953232, 34.706562, 30.738333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242079, 34.946129, 30.876810>,  <29.415386, 35.089867, 30.959896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242079, 34.946129, 30.876810>,  <28.953232, 34.706562, 30.738333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242079, 34.946129, 30.876810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188367, -0.651770, 0.734652,
		0.665630, -0.465294, -0.583470,
		0.722118, 0.598913, 0.346192,
		29.458714, 35.125801, 30.980667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589197, 34.317009, 30.828213>,  <28.953232, 34.706562, 30.738333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589197, 34.317009, 30.828213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623489, 34.633549, 31.070341>,  <29.644064, 34.823475, 31.215618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623489, 34.633549, 31.070341>,  <29.589197, 34.317009, 30.828213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623489, 34.633549, 31.070341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032816, -0.609469, 0.792131,
		0.995778, -0.048045, -0.078218,
		0.085729, 0.791353, 0.605319,
		29.649208, 34.870956, 31.251936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063009, 34.093952, 31.362570>,  <29.589197, 34.317009, 30.828213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063009, 34.093952, 31.362570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862223, 34.403397, 31.517262>,  <29.741751, 34.589062, 31.610077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862223, 34.403397, 31.517262>,  <30.063009, 34.093952, 31.362570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862223, 34.403397, 31.517262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138906, -0.513450, 0.846803,
		0.853660, 0.371346, 0.365193,
		-0.501965, 0.773609, 0.386729,
		29.711634, 34.635479, 31.633280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437424, 34.232906, 32.027180>,  <30.063009, 34.093952, 31.362570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437424, 34.232906, 32.027180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079323, 34.406605, 32.067093>,  <29.864462, 34.510822, 32.091042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079323, 34.406605, 32.067093>,  <30.437424, 34.232906, 32.027180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079323, 34.406605, 32.067093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243315, -0.664083, 0.706959,
		0.373259, 0.608627, 0.700180,
		-0.895252, 0.434243, 0.099787,
		29.810747, 34.536877, 32.097031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345407, 34.122944, 32.800266>,  <30.437424, 34.232906, 32.027180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345407, 34.122944, 32.800266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989275, 34.214439, 32.642796>,  <29.775595, 34.269337, 32.548313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989275, 34.214439, 32.642796>,  <30.345407, 34.122944, 32.800266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989275, 34.214439, 32.642796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452984, -0.357754, 0.816589,
		0.045949, 0.905366, 0.422137,
		-0.890334, 0.228743, -0.393678,
		29.722176, 34.283062, 32.524693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994530, 34.687340, 33.189823>,  <30.345407, 34.122944, 32.800266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994530, 34.687340, 33.189823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717768, 34.470421, 32.999168>,  <29.551710, 34.340271, 32.884777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717768, 34.470421, 32.999168>,  <29.994530, 34.687340, 33.189823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717768, 34.470421, 32.999168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380630, -0.286993, 0.879065,
		-0.613507, 0.789650, -0.007843,
		-0.691903, -0.542298, -0.476637,
		29.510197, 34.307732, 32.856178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302624, 34.871456, 33.480988>,  <29.994530, 34.687340, 33.189823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302624, 34.871456, 33.480988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239071, 34.535252, 33.273800>,  <29.200939, 34.333530, 33.149487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239071, 34.535252, 33.273800>,  <29.302624, 34.871456, 33.480988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239071, 34.535252, 33.273800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618182, -0.324375, 0.715983,
		-0.769810, 0.433958, -0.468053,
		-0.158882, -0.840513, -0.517972,
		29.191406, 34.283096, 33.118408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574993, 34.872257, 33.313358>,  <29.302624, 34.871456, 33.480988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574993, 34.872257, 33.313358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698288, 34.491962, 33.326523>,  <28.772264, 34.263786, 33.334419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698288, 34.491962, 33.326523>,  <28.574993, 34.872257, 33.313358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698288, 34.491962, 33.326523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816552, -0.246665, 0.521918,
		-0.488092, -0.187745, -0.852360,
		0.308235, -0.950741, 0.032908,
		28.790758, 34.206741, 33.336395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877407, 34.664528, 33.147850>,  <28.574993, 34.872257, 33.313358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877407, 34.664528, 33.147850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095802, 34.367313, 33.302662>,  <28.226839, 34.188984, 33.395550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095802, 34.367313, 33.302662>,  <27.877407, 34.664528, 33.147850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095802, 34.367313, 33.302662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782712, -0.287662, 0.551917,
		-0.298759, -0.604277, -0.738642,
		0.545990, -0.743034, 0.387034,
		28.259600, 34.144402, 33.418774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492481, 33.974453, 33.061630>,  <27.877407, 34.664528, 33.147850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492481, 33.974453, 33.061630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761677, 33.889320, 33.344978>,  <27.923193, 33.838242, 33.514988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761677, 33.889320, 33.344978>,  <27.492481, 33.974453, 33.061630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761677, 33.889320, 33.344978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738642, -0.243481, 0.628590,
		0.038692, -0.946266, -0.321066,
		0.672987, -0.212831, 0.708373,
		27.963573, 33.825470, 33.557491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264492, 33.392155, 33.305515>,  <27.492481, 33.974453, 33.061630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264492, 33.392155, 33.305515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502996, 33.543327, 33.588821>,  <27.646099, 33.634029, 33.758804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502996, 33.543327, 33.588821>,  <27.264492, 33.392155, 33.305515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502996, 33.543327, 33.588821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737763, -0.089878, 0.669050,
		0.316510, -0.921462, 0.225231,
		0.596261, 0.377928, 0.708268,
		27.681875, 33.656704, 33.801300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166164, 32.991402, 33.900517>,  <27.264492, 33.392155, 33.305515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166164, 32.991402, 33.900517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350016, 33.319778, 34.036045>,  <27.460327, 33.516804, 34.117363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350016, 33.319778, 34.036045>,  <27.166164, 32.991402, 33.900517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350016, 33.319778, 34.036045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734884, 0.137343, 0.664140,
		0.498685, -0.554250, 0.666423,
		0.459628, 0.820941, 0.338819,
		27.487904, 33.566059, 34.137691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990454, 33.051483, 34.579460>,  <27.166164, 32.991402, 33.900517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990454, 33.051483, 34.579460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088100, 33.430962, 34.499081>,  <27.146688, 33.658649, 34.450855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088100, 33.430962, 34.499081>,  <26.990454, 33.051483, 34.579460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088100, 33.430962, 34.499081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686068, 0.315403, 0.655615,
		0.685360, -0.022183, 0.727867,
		0.244115, 0.948698, -0.200946,
		27.161335, 33.715572, 34.438797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093229, 33.348991, 35.207455>,  <26.990454, 33.051483, 34.579460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093229, 33.348991, 35.207455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026884, 33.665283, 34.971748>,  <26.987076, 33.855057, 34.830322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026884, 33.665283, 34.971748>,  <27.093229, 33.348991, 35.207455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026884, 33.665283, 34.971748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740126, 0.295069, 0.604275,
		0.651692, 0.536361, 0.536297,
		-0.165865, 0.790728, -0.589268,
		26.977125, 33.902500, 34.794968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972101, 34.057499, 35.618366>,  <27.093229, 33.348991, 35.207455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972101, 34.057499, 35.618366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786495, 34.053276, 35.264061>,  <26.675133, 34.050743, 35.051476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786495, 34.053276, 35.264061>,  <26.972101, 34.057499, 35.618366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786495, 34.053276, 35.264061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854233, 0.270006, 0.444277,
		0.234473, 0.962801, -0.134302,
		-0.464013, -0.010554, -0.885766,
		26.647291, 34.050110, 34.998333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242115, 34.030857, 36.335468>,  <26.972101, 34.057499, 35.618366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242115, 34.030857, 36.335468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468828, 33.745514, 36.170601>,  <27.604856, 33.574310, 36.071682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468828, 33.745514, 36.170601>,  <27.242115, 34.030857, 36.335468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468828, 33.745514, 36.170601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520700, -0.697864, 0.491790,
		-0.638458, -0.064122, -0.766981,
		0.566783, -0.713354, -0.412169,
		27.638863, 33.531509, 36.046951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416706, 34.240608, 36.993446>,  <27.242115, 34.030857, 36.335468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416706, 34.240608, 36.993446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553696, 33.874680, 36.907829>,  <27.635889, 33.655125, 36.856461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553696, 33.874680, 36.907829>,  <27.416706, 34.240608, 36.993446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553696, 33.874680, 36.907829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586523, 0.030203, 0.809370,
		-0.733963, -0.402731, 0.546906,
		0.342476, -0.914820, -0.214043,
		27.656439, 33.600235, 36.843616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326807, 33.860416, 37.603451>,  <27.416706, 34.240608, 36.993446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326807, 33.860416, 37.603451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623245, 33.725288, 37.371365>,  <27.801107, 33.644211, 37.232113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623245, 33.725288, 37.371365>,  <27.326807, 33.860416, 37.603451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623245, 33.725288, 37.371365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634402, 0.069426, 0.769879,
		-0.219800, -0.938646, 0.265767,
		0.741095, -0.337823, -0.580219,
		27.845573, 33.623943, 37.197300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613258, 33.463123, 38.109619>,  <27.326807, 33.860416, 37.603451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613258, 33.463123, 38.109619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891954, 33.579788, 37.847477>,  <28.059172, 33.649788, 37.690193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891954, 33.579788, 37.847477>,  <27.613258, 33.463123, 38.109619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891954, 33.579788, 37.847477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644986, 0.145097, 0.750293,
		0.313922, -0.945452, -0.087023,
		0.696739, 0.291662, -0.655353,
		28.100977, 33.667286, 37.650871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234785, 32.998821, 37.969898>,  <27.613258, 33.463123, 38.109619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234785, 32.998821, 37.969898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376314, 33.370956, 37.931370>,  <28.461231, 33.594238, 37.908253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376314, 33.370956, 37.931370>,  <28.234785, 32.998821, 37.969898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376314, 33.370956, 37.931370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519024, -0.109632, 0.847700,
		0.778089, -0.349928, -0.521659,
		0.353825, 0.930339, -0.096317,
		28.482462, 33.650059, 37.902473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818830, 32.899006, 38.158516>,  <28.234785, 32.998821, 37.969898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818830, 32.899006, 38.158516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767130, 33.290508, 38.222179>,  <28.736109, 33.525410, 38.260376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767130, 33.290508, 38.222179>,  <28.818830, 32.899006, 38.158516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767130, 33.290508, 38.222179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508042, -0.072478, 0.858277,
		0.851579, 0.191794, -0.487881,
		-0.129252, 0.978755, 0.159160,
		28.728354, 33.584133, 38.269928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516815, 33.149197, 38.344631>,  <28.818830, 32.899006, 38.158516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516815, 33.149197, 38.344631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256311, 33.418217, 38.485226>,  <29.100010, 33.579628, 38.569580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256311, 33.418217, 38.485226>,  <29.516815, 33.149197, 38.344631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256311, 33.418217, 38.485226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456331, -0.022984, 0.889513,
		0.606320, 0.739696, -0.291936,
		-0.651259, 0.672549, 0.351482,
		29.060934, 33.619980, 38.590672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079927, 33.186001, 38.770485>,  <29.516815, 33.149197, 38.344631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079927, 33.186001, 38.770485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426924, 33.016960, 38.875454>,  <30.635122, 32.915535, 38.938435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426924, 33.016960, 38.875454>,  <30.079927, 33.186001, 38.770485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426924, 33.016960, 38.875454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277976, 0.025664, 0.960245,
		-0.412539, -0.905951, -0.095211,
		0.867491, -0.422605, 0.262420,
		30.687172, 32.890179, 38.954182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877651, 32.958050, 39.426926>,  <30.079927, 33.186001, 38.770485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877651, 32.958050, 39.426926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273655, 32.901676, 39.424999>,  <30.511257, 32.867851, 39.423843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273655, 32.901676, 39.424999>,  <29.877651, 32.958050, 39.426926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273655, 32.901676, 39.424999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013646, -0.129755, 0.991452,
		-0.140348, -0.981480, -0.130381,
		0.990008, -0.140927, -0.004817,
		30.570658, 32.859394, 39.423553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098450, 32.311615, 39.775505>,  <29.877651, 32.958050, 39.426926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098450, 32.311615, 39.775505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429729, 32.535530, 39.786297>,  <30.628496, 32.669880, 39.792770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429729, 32.535530, 39.786297>,  <30.098450, 32.311615, 39.775505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429729, 32.535530, 39.786297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018714, -0.020491, 0.999615,
		0.560124, -0.828383, -0.006494,
		0.828197, 0.559787, 0.026980,
		30.678188, 32.703465, 39.794392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601683, 31.988829, 40.281528>,  <30.098450, 32.311615, 39.775505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601683, 31.988829, 40.281528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708281, 32.373772, 40.260178>,  <30.772240, 32.604736, 40.247368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708281, 32.373772, 40.260178>,  <30.601683, 31.988829, 40.281528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708281, 32.373772, 40.260178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298036, -0.029611, 0.954095,
		0.916600, -0.270169, -0.294708,
		0.266493, 0.962357, -0.053378,
		30.788229, 32.662479, 40.244164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232285, 31.957239, 40.640274>,  <30.601683, 31.988829, 40.281528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232285, 31.957239, 40.640274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089825, 32.330112, 40.666183>,  <31.004349, 32.553837, 40.681728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089825, 32.330112, 40.666183>,  <31.232285, 31.957239, 40.640274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089825, 32.330112, 40.666183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289359, 0.044109, 0.956204,
		0.888498, 0.359295, -0.285444,
		-0.356150, 0.932181, 0.064774,
		30.982979, 32.609768, 40.685616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651279, 32.202091, 41.104248>,  <31.232285, 31.957239, 40.640274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651279, 32.202091, 41.104248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365570, 32.481068, 41.080963>,  <31.194145, 32.648453, 41.066990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365570, 32.481068, 41.080963>,  <31.651279, 32.202091, 41.104248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365570, 32.481068, 41.080963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063118, 0.147034, 0.987116,
		0.697015, 0.701396, -0.149043,
		-0.714273, 0.697442, -0.058214,
		31.151289, 32.690300, 41.063499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894777, 32.800224, 41.371136>,  <31.651279, 32.202091, 41.104248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894777, 32.800224, 41.371136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495708, 32.811085, 41.396149>,  <31.256268, 32.817600, 41.411156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495708, 32.811085, 41.396149>,  <31.894777, 32.800224, 41.371136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495708, 32.811085, 41.396149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067211, 0.237917, 0.968957,
		0.011428, 0.970906, -0.239188,
		-0.997673, 0.027150, 0.062537,
		31.196407, 32.819229, 41.414909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854052, 33.168926, 41.905476>,  <31.894777, 32.800224, 41.371136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854052, 33.168926, 41.905476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489584, 33.005241, 41.886234>,  <31.270903, 32.907028, 41.874691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489584, 33.005241, 41.886234>,  <31.854052, 33.168926, 41.905476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489584, 33.005241, 41.886234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108684, 0.126086, 0.986048,
		-0.397442, 0.903684, -0.159361,
		-0.911168, -0.409216, -0.048104,
		31.216234, 32.882477, 41.871803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389324, 33.517170, 42.305267>,  <31.854052, 33.168926, 41.905476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389324, 33.517170, 42.305267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204428, 33.163044, 42.285072>,  <31.093491, 32.950569, 42.272957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204428, 33.163044, 42.285072>,  <31.389324, 33.517170, 42.305267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204428, 33.163044, 42.285072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211131, 0.054585, 0.975932,
		-0.861254, 0.461773, -0.212150,
		-0.462240, -0.885317, -0.050483,
		31.065756, 32.897449, 42.269928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781868, 33.574108, 42.718681>,  <31.389324, 33.517170, 42.305267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781868, 33.574108, 42.718681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854240, 33.181183, 42.699402>,  <30.897665, 32.945427, 42.687832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854240, 33.181183, 42.699402>,  <30.781868, 33.574108, 42.718681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854240, 33.181183, 42.699402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210096, -0.086484, 0.973848,
		-0.960793, -0.166074, -0.222028,
		0.180932, -0.982314, -0.048202,
		30.908520, 32.886490, 42.684940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338280, 33.345428, 43.335205>,  <30.781868, 33.574108, 42.718681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338280, 33.345428, 43.335205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575603, 33.040348, 43.232235>,  <30.717999, 32.857300, 43.170452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575603, 33.040348, 43.232235>,  <30.338280, 33.345428, 43.335205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575603, 33.040348, 43.232235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179780, -0.437263, 0.881181,
		-0.784642, -0.476534, -0.396551,
		0.593310, -0.762703, -0.257424,
		30.753597, 32.811539, 43.155006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059708, 32.780907, 43.682159>,  <30.338280, 33.345428, 43.335205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059708, 32.780907, 43.682159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416321, 32.640907, 43.567146>,  <30.630289, 32.556908, 43.498138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416321, 32.640907, 43.567146>,  <30.059708, 32.780907, 43.682159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416321, 32.640907, 43.567146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054407, -0.712935, 0.699116,
		-0.449679, -0.607641, -0.654646,
		0.891532, -0.349995, -0.287532,
		30.683781, 32.535908, 43.480888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972319, 32.040379, 43.791847>,  <30.059708, 32.780907, 43.682159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972319, 32.040379, 43.791847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367762, 32.098312, 43.775463>,  <30.605028, 32.133072, 43.765633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367762, 32.098312, 43.775463>,  <29.972319, 32.040379, 43.791847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367762, 32.098312, 43.775463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114886, -0.550311, 0.827018,
		0.097236, -0.822303, -0.560681,
		0.988608, 0.144830, -0.040961,
		30.664345, 32.141762, 43.763176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274878, 31.347227, 43.803135>,  <29.972319, 32.040379, 43.791847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274878, 31.347227, 43.803135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523399, 31.628983, 43.940434>,  <30.672512, 31.798037, 44.022812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523399, 31.628983, 43.940434>,  <30.274878, 31.347227, 43.803135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523399, 31.628983, 43.940434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103669, -0.508095, 0.855039,
		0.776680, -0.495657, -0.388706,
		0.621306, 0.704389, 0.343243,
		30.709791, 31.840300, 44.043407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724018, 30.929998, 44.082081>,  <30.274878, 31.347227, 43.803135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724018, 30.929998, 44.082081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788130, 31.285803, 44.253231>,  <30.826597, 31.499285, 44.355923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788130, 31.285803, 44.253231>,  <30.724018, 30.929998, 44.082081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788130, 31.285803, 44.253231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309622, -0.456913, 0.833885,
		0.937254, -0.001175, -0.348647,
		0.160281, 0.889510, 0.427880,
		30.836214, 31.552656, 44.381596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437674, 30.882057, 44.413239>,  <30.724018, 30.929998, 44.082081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437674, 30.882057, 44.413239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235558, 31.176153, 44.593952>,  <31.114288, 31.352612, 44.702381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235558, 31.176153, 44.593952>,  <31.437674, 30.882057, 44.413239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235558, 31.176153, 44.593952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231680, -0.388728, 0.891748,
		0.831268, 0.555259, 0.026080,
		-0.505289, 0.735240, 0.451780,
		31.083971, 31.396725, 44.729485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942333, 31.117075, 44.834282>,  <31.437674, 30.882057, 44.413239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942333, 31.117075, 44.834282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589001, 31.227304, 44.985958>,  <31.377001, 31.293442, 45.076962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589001, 31.227304, 44.985958>,  <31.942333, 31.117075, 44.834282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589001, 31.227304, 44.985958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275226, -0.349907, 0.895442,
		0.379440, 0.895335, 0.233240,
		-0.883333, 0.275572, 0.379188,
		31.324001, 31.309977, 45.099716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079762, 31.377970, 45.491177>,  <31.942333, 31.117075, 44.834282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079762, 31.377970, 45.491177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689234, 31.292004, 45.501026>,  <31.454916, 31.240423, 45.506935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689234, 31.292004, 45.501026>,  <32.079762, 31.377970, 45.491177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689234, 31.292004, 45.501026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091868, -0.308892, 0.946650,
		-0.195846, 0.926497, 0.321322,
		-0.976322, -0.214917, 0.024620,
		31.396338, 31.227530, 45.508411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774319, 31.674965, 46.088001>,  <32.079762, 31.377970, 45.491177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774319, 31.674965, 46.088001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506954, 31.390375, 46.001251>,  <31.346537, 31.219622, 45.949200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506954, 31.390375, 46.001251>,  <31.774319, 31.674965, 46.088001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506954, 31.390375, 46.001251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031986, -0.318805, 0.947281,
		-0.743105, 0.626234, 0.235849,
		-0.668409, -0.711473, -0.216875,
		31.306431, 31.176933, 45.936188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262339, 31.773972, 46.591602>,  <31.774319, 31.674965, 46.088001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262339, 31.773972, 46.591602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216042, 31.397356, 46.465046>,  <31.188263, 31.171387, 46.389111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216042, 31.397356, 46.465046>,  <31.262339, 31.773972, 46.591602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216042, 31.397356, 46.465046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025009, -0.321197, 0.946682,
		-0.992965, 0.101657, 0.060723,
		-0.115741, -0.941540, -0.316395,
		31.181320, 31.114895, 46.370129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712555, 31.557947, 46.930244>,  <31.262339, 31.773972, 46.591602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712555, 31.557947, 46.930244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861341, 31.204260, 46.817249>,  <30.950613, 30.992048, 46.749451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861341, 31.204260, 46.817249>,  <30.712555, 31.557947, 46.930244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861341, 31.204260, 46.817249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219208, -0.379393, 0.898893,
		-0.901992, -0.272434, -0.334949,
		0.371966, -0.884217, -0.282490,
		30.972931, 30.938995, 46.732502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268543, 30.932789, 47.021751>,  <30.712555, 31.557947, 46.930244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268543, 30.932789, 47.021751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645891, 30.800884, 47.007286>,  <30.872301, 30.721741, 46.998608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645891, 30.800884, 47.007286>,  <30.268543, 30.932789, 47.021751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645891, 30.800884, 47.007286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125893, -0.456736, 0.880650,
		-0.306922, -0.826227, -0.472386,
		0.943371, -0.329761, -0.036166,
		30.928902, 30.701956, 46.996437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191538, 30.219755, 47.236511>,  <30.268543, 30.932789, 47.021751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191538, 30.219755, 47.236511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588181, 30.260157, 47.268799>,  <30.826166, 30.284397, 47.288170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588181, 30.260157, 47.268799>,  <30.191538, 30.219755, 47.236511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588181, 30.260157, 47.268799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000936, -0.618668, 0.785652,
		0.129288, -0.779133, -0.613380,
		0.991607, 0.101002, 0.080716,
		30.885662, 30.290457, 47.293015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473883, 29.531105, 47.325550>,  <30.191538, 30.219755, 47.236511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473883, 29.531105, 47.325550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750433, 29.776730, 47.477829>,  <30.916363, 29.924105, 47.569195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750433, 29.776730, 47.477829>,  <30.473883, 29.531105, 47.325550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750433, 29.776730, 47.477829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039253, -0.494210, 0.868456,
		0.721429, -0.615372, -0.317580,
		0.691375, 0.614063, 0.380693,
		30.957846, 29.960949, 47.592037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017939, 29.095240, 47.543602>,  <30.473883, 29.531105, 47.325550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017939, 29.095240, 47.543602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061428, 29.436125, 47.748310>,  <31.087523, 29.640656, 47.871136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061428, 29.436125, 47.748310>,  <31.017939, 29.095240, 47.543602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061428, 29.436125, 47.748310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171363, -0.523186, 0.834812,
		0.979191, -0.003064, -0.202920,
		0.108723, 0.852213, 0.511774,
		31.094046, 29.691790, 47.901844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455566, 28.820786, 48.010952>,  <31.017939, 29.095240, 47.543602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455566, 28.820786, 48.010952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364050, 29.183237, 48.153267>,  <31.309139, 29.400709, 48.238655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364050, 29.183237, 48.153267>,  <31.455566, 28.820786, 48.010952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364050, 29.183237, 48.153267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188961, -0.317187, 0.929347,
		0.954959, 0.279857, -0.098653,
		-0.228793, 0.906130, 0.355783,
		31.295412, 29.455076, 48.260002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039753, 29.067543, 48.386448>,  <31.455566, 28.820786, 48.010952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039753, 29.067543, 48.386448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705601, 29.248085, 48.511940>,  <31.505110, 29.356411, 48.587234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705601, 29.248085, 48.511940>,  <32.039753, 29.067543, 48.386448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705601, 29.248085, 48.511940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286396, -0.129758, 0.949284,
		0.469173, 0.882860, -0.020869,
		-0.835377, 0.451355, 0.313727,
		31.454988, 29.383492, 48.606056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224331, 29.623730, 48.809231>,  <32.039753, 29.067543, 48.386448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224331, 29.623730, 48.809231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851252, 29.534328, 48.922447>,  <31.627403, 29.480688, 48.990376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851252, 29.534328, 48.922447>,  <32.224331, 29.623730, 48.809231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851252, 29.534328, 48.922447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309590, -0.093632, 0.946249,
		-0.184988, 0.970195, 0.156525,
		-0.932702, -0.223503, 0.283042,
		31.571442, 29.467278, 49.007359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181934, 30.028845, 49.413902>,  <32.224331, 29.623730, 48.809231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181934, 30.028845, 49.413902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894798, 29.751703, 49.441200>,  <31.722517, 29.585419, 49.457581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894798, 29.751703, 49.441200>,  <32.181934, 30.028845, 49.413902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894798, 29.751703, 49.441200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289472, -0.207878, 0.934341,
		-0.633174, 0.690464, 0.349786,
		-0.717841, -0.692854, 0.068247,
		31.679445, 29.543848, 49.461674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919415, 30.115025, 50.182961>,  <32.181934, 30.028845, 49.413902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919415, 30.115025, 50.182961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817045, 29.748425, 50.059978>,  <31.755625, 29.528463, 49.986187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817045, 29.748425, 50.059978>,  <31.919415, 30.115025, 50.182961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817045, 29.748425, 50.059978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083436, -0.337804, 0.937511,
		-0.963090, 0.214277, 0.162921,
		-0.255923, -0.916501, -0.307457,
		31.740269, 29.473475, 49.967743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421082, 30.029655, 50.637062>,  <31.919415, 30.115025, 50.182961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421082, 30.029655, 50.637062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539906, 29.669674, 50.509411>,  <31.611200, 29.453686, 50.432819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539906, 29.669674, 50.509411>,  <31.421082, 30.029655, 50.637062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539906, 29.669674, 50.509411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024190, -0.341197, 0.939681,
		-0.954552, -0.271424, -0.123126,
		0.297062, -0.899952, -0.319124,
		31.629025, 29.399689, 50.413673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095753, 29.537682, 51.032608>,  <31.421082, 30.029655, 50.637062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095753, 29.537682, 51.032608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368580, 29.294115, 50.870617>,  <31.532276, 29.147976, 50.773422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368580, 29.294115, 50.870617>,  <31.095753, 29.537682, 51.032608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368580, 29.294115, 50.870617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198132, -0.379205, 0.903852,
		-0.703939, -0.696726, -0.137997,
		0.682066, -0.608915, -0.404981,
		31.573200, 29.111441, 50.749123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915636, 28.862820, 51.375652>,  <31.095753, 29.537682, 51.032608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915636, 28.862820, 51.375652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287952, 28.808254, 51.239994>,  <31.511343, 28.775515, 51.158600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287952, 28.808254, 51.239994>,  <30.915636, 28.862820, 51.375652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287952, 28.808254, 51.239994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233163, -0.492988, 0.838211,
		-0.281538, -0.859275, -0.427062,
		0.930791, -0.136414, -0.339146,
		31.567190, 28.767330, 51.138248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035131, 28.285965, 51.638668>,  <30.915636, 28.862820, 51.375652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035131, 28.285965, 51.638668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401051, 28.426186, 51.558414>,  <31.620602, 28.510319, 51.510262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401051, 28.426186, 51.558414>,  <31.035131, 28.285965, 51.638668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401051, 28.426186, 51.558414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365806, -0.508442, 0.779534,
		0.171255, -0.786512, -0.593356,
		0.914800, 0.350552, -0.200637,
		31.675491, 28.531351, 51.498222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442924, 27.727169, 51.596249>,  <31.035131, 28.285965, 51.638668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442924, 27.727169, 51.596249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664957, 28.046291, 51.690392>,  <31.798176, 28.237764, 51.746876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664957, 28.046291, 51.690392>,  <31.442924, 27.727169, 51.596249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664957, 28.046291, 51.690392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447295, -0.524850, 0.724195,
		0.701294, -0.296712, -0.648188,
		0.555080, 0.797805, 0.235357,
		31.831482, 28.285633, 51.760998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127522, 27.517241, 51.718895>,  <31.442924, 27.727169, 51.596249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127522, 27.517241, 51.718895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141125, 27.871471, 51.904194>,  <32.149288, 28.084009, 52.015373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141125, 27.871471, 51.904194>,  <32.127522, 27.517241, 51.718895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141125, 27.871471, 51.904194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527650, -0.409562, 0.744207,
		0.848781, 0.219121, -0.481203,
		0.034011, 0.885576, 0.463248,
		32.151329, 28.137144, 52.043167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825443, 27.583746, 51.994968>,  <32.127522, 27.517241, 51.718895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825443, 27.583746, 51.994968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598782, 27.797115, 52.246162>,  <32.462784, 27.925137, 52.396881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598782, 27.797115, 52.246162>,  <32.825443, 27.583746, 51.994968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598782, 27.797115, 52.246162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547577, -0.325713, 0.770760,
		0.615684, 0.780623, -0.107524,
		-0.566651, 0.533423, 0.627987,
		32.428787, 27.957142, 52.434559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215767, 27.499865, 52.625141>,  <32.825443, 27.583746, 51.994968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215767, 27.499865, 52.625141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911194, 27.682585, 52.809120>,  <32.728451, 27.792217, 52.919506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911194, 27.682585, 52.809120>,  <33.215767, 27.499865, 52.625141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911194, 27.682585, 52.809120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334764, -0.330503, 0.882440,
		0.555114, 0.825893, 0.098735,
		-0.761434, 0.456802, 0.459946,
		32.682762, 27.819626, 52.947105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446846, 27.754978, 53.268543>,  <33.215767, 27.499865, 52.625141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446846, 27.754978, 53.268543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052059, 27.695265, 53.292583>,  <32.815186, 27.659437, 53.307007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052059, 27.695265, 53.292583>,  <33.446846, 27.754978, 53.268543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052059, 27.695265, 53.292583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122211, -0.452342, 0.883432,
		-0.104698, 0.879262, 0.464690,
		-0.986966, -0.149284, 0.060096,
		32.755970, 27.650480, 53.310612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285175, 27.866941, 54.024780>,  <33.446846, 27.754978, 53.268543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285175, 27.866941, 54.024780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981602, 27.663403, 53.862251>,  <32.799458, 27.541279, 53.764732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981602, 27.663403, 53.862251>,  <33.285175, 27.866941, 54.024780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981602, 27.663403, 53.862251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035198, -0.591024, 0.805886,
		-0.650220, 0.625913, 0.430636,
		-0.758931, -0.508845, -0.406326,
		32.753922, 27.510750, 53.740353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764824, 27.864922, 54.549725>,  <33.285175, 27.866941, 54.024780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764824, 27.864922, 54.549725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745731, 27.555552, 54.296890>,  <32.734276, 27.369930, 54.145187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745731, 27.555552, 54.296890>,  <32.764824, 27.864922, 54.549725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745731, 27.555552, 54.296890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111666, -0.632974, 0.766077,
		-0.992599, -0.034020, 0.116576,
		-0.047728, -0.773425, -0.632088,
		32.731415, 27.323524, 54.107265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566196, 27.053518, 54.510815>,  <32.764824, 27.864922, 54.549725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566196, 27.053518, 54.510815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754681, 26.927946, 54.840519>,  <32.867771, 26.852604, 55.038342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754681, 26.927946, 54.840519>,  <32.566196, 27.053518, 54.510815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754681, 26.927946, 54.840519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583544, 0.589793, 0.558230,
		-0.661389, -0.744038, 0.094726,
		0.471213, -0.313930, 0.824261,
		32.896046, 26.833767, 55.087799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803036, 27.301382, 55.179214>,  <32.566196, 27.053518, 54.510815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803036, 27.301382, 55.179214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067959, 27.536942, 55.364494>,  <33.226913, 27.678278, 55.475662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067959, 27.536942, 55.364494>,  <32.803036, 27.301382, 55.179214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067959, 27.536942, 55.364494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747596, -0.560289, -0.356618,
		0.049512, 0.582474, -0.811340,
		0.662305, 0.588898, 0.463197,
		33.266651, 27.713612, 55.503452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686718, 26.805273, 55.832413>,  <32.803036, 27.301382, 55.179214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686718, 26.805273, 55.832413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418274, 26.650883, 55.579231>,  <32.257206, 26.558249, 55.427322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418274, 26.650883, 55.579231>,  <32.686718, 26.805273, 55.832413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418274, 26.650883, 55.579231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735761, -0.451465, -0.504812,
		-0.090913, -0.804490, 0.586968,
		-0.671111, -0.385974, -0.632956,
		32.216942, 26.535089, 55.389343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659695, 26.034090, 55.891109>,  <32.686718, 26.805273, 55.832413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659695, 26.034090, 55.891109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593544, 26.227751, 55.547424>,  <32.553852, 26.343946, 55.341213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593544, 26.227751, 55.547424>,  <32.659695, 26.034090, 55.891109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593544, 26.227751, 55.547424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812601, -0.426793, -0.396897,
		-0.558865, -0.763836, -0.322839,
		-0.165379, 0.484151, -0.859213,
		32.543930, 26.372995, 55.289661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170128, 25.739052, 55.523148>,  <32.659695, 26.034090, 55.891109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170128, 25.739052, 55.523148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033100, 26.024807, 55.279083>,  <32.950882, 26.196260, 55.132645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033100, 26.024807, 55.279083>,  <33.170128, 25.739052, 55.523148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033100, 26.024807, 55.279083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707925, -0.230689, -0.667552,
		-0.617647, -0.660633, -0.426704,
		-0.342571, 0.714386, -0.610162,
		32.930328, 26.239122, 55.096035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930626, 25.496178, 54.896946>,  <33.170128, 25.739052, 55.523148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930626, 25.496178, 54.896946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086338, 25.864004, 54.875557>,  <33.179764, 26.084700, 54.862724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086338, 25.864004, 54.875557>,  <32.930626, 25.496178, 54.896946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086338, 25.864004, 54.875557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702999, -0.334107, -0.627826,
		-0.595194, 0.206806, -0.776515,
		0.389277, 0.919567, -0.053474,
		33.203121, 26.139874, 54.859516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824730, 25.868885, 54.325169>,  <32.930626, 25.496178, 54.896946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824730, 25.868885, 54.325169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186626, 25.952909, 54.473392>,  <33.403767, 26.003325, 54.562328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186626, 25.952909, 54.473392>,  <32.824730, 25.868885, 54.325169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186626, 25.952909, 54.473392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425277, -0.396320, -0.813677,
		-0.024061, 0.893759, -0.447902,
		0.904743, 0.210060, 0.370559,
		33.458050, 26.015928, 54.584560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217247, 26.339077, 53.816814>,  <32.824730, 25.868885, 54.325169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217247, 26.339077, 53.816814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472057, 26.105000, 54.017513>,  <33.624943, 25.964554, 54.137932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472057, 26.105000, 54.017513>,  <33.217247, 26.339077, 53.816814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472057, 26.105000, 54.017513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435619, -0.263713, -0.860634,
		0.635955, 0.766814, 0.086930,
		0.637022, -0.585193, 0.501749,
		33.663162, 25.929441, 54.168037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965729, 26.460176, 53.633400>,  <33.217247, 26.339077, 53.816814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965729, 26.460176, 53.633400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896584, 26.077320, 53.726353>,  <33.855099, 25.847607, 53.782124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896584, 26.077320, 53.726353>,  <33.965729, 26.460176, 53.633400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896584, 26.077320, 53.726353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515233, -0.288949, -0.806873,
		0.839437, -0.019744, 0.543098,
		-0.172859, -0.957141, 0.232382,
		33.844727, 25.790178, 53.796066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642704, 26.138124, 53.600449>,  <33.965729, 26.460176, 53.633400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642704, 26.138124, 53.600449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307632, 25.936911, 53.515358>,  <34.106590, 25.816183, 53.464302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307632, 25.936911, 53.515358>,  <34.642704, 26.138124, 53.600449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307632, 25.936911, 53.515358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332515, -0.160726, -0.929301,
		0.433278, -0.849191, 0.301903,
		-0.837678, -0.503033, -0.212730,
		34.056328, 25.786001, 53.451538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868656, 25.525045, 53.280788>,  <34.642704, 26.138124, 53.600449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868656, 25.525045, 53.280788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480339, 25.582457, 53.203892>,  <34.247349, 25.616903, 53.157753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480339, 25.582457, 53.203892>,  <34.868656, 25.525045, 53.280788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480339, 25.582457, 53.203892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155555, -0.233481, -0.959838,
		-0.182642, -0.961711, 0.204337,
		-0.970796, 0.143521, -0.192242,
		34.189102, 25.625515, 53.146217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747810, 25.047358, 52.852821>,  <34.868656, 25.525045, 53.280788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747810, 25.047358, 52.852821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469082, 25.330153, 52.804466>,  <34.301846, 25.499830, 52.775455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469082, 25.330153, 52.804466>,  <34.747810, 25.047358, 52.852821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469082, 25.330153, 52.804466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167939, -0.003031, -0.985793,
		-0.697309, -0.707220, -0.116618,
		-0.696818, 0.706987, -0.120883,
		34.260036, 25.542248, 52.768200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431885, 24.963215, 52.262814>,  <34.747810, 25.047358, 52.852821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431885, 24.963215, 52.262814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362019, 25.352041, 52.325531>,  <34.320099, 25.585337, 52.363163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362019, 25.352041, 52.325531>,  <34.431885, 24.963215, 52.262814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362019, 25.352041, 52.325531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337806, 0.208737, -0.917778,
		-0.924868, -0.107335, -0.364828,
		-0.174663, 0.972064, 0.156795,
		34.309620, 25.643660, 52.372570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044174, 25.154028, 51.578812>,  <34.431885, 24.963215, 52.262814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044174, 25.154028, 51.578812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158794, 25.501509, 51.740429>,  <34.227566, 25.709997, 51.837399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158794, 25.501509, 51.740429>,  <34.044174, 25.154028, 51.578812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158794, 25.501509, 51.740429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241195, 0.342730, -0.907944,
		-0.927208, 0.357624, -0.111316,
		0.286551, 0.868701, 0.404039,
		34.244759, 25.762119, 51.861641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742207, 25.709637, 51.178337>,  <34.044174, 25.154028, 51.578812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742207, 25.709637, 51.178337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058281, 25.877159, 51.357315>,  <34.247925, 25.977673, 51.464703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058281, 25.877159, 51.357315>,  <33.742207, 25.709637, 51.178337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058281, 25.877159, 51.357315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274617, 0.410731, -0.869417,
		-0.547897, 0.809877, 0.209542,
		0.790186, 0.418807, 0.447444,
		34.295338, 26.002802, 51.491547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665295, 26.357510, 51.112938>,  <33.742207, 25.709637, 51.178337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665295, 26.357510, 51.112938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060802, 26.315022, 51.154991>,  <34.298107, 26.289528, 51.180222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060802, 26.315022, 51.154991>,  <33.665295, 26.357510, 51.112938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060802, 26.315022, 51.154991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145303, 0.518634, -0.842559,
		0.034971, 0.848373, 0.528243,
		0.988769, -0.106221, 0.105134,
		34.357433, 26.283155, 51.186531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893581, 27.057838, 51.015354>,  <33.665295, 26.357510, 51.112938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893581, 27.057838, 51.015354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216599, 26.825775, 50.972855>,  <34.410408, 26.686537, 50.947353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216599, 26.825775, 50.972855>,  <33.893581, 27.057838, 51.015354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216599, 26.825775, 50.972855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306445, 0.566631, -0.764867,
		0.503949, 0.585103, 0.635366,
		0.807544, -0.580158, -0.106251,
		34.458862, 26.651728, 50.940979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440941, 27.520874, 50.754398>,  <33.893581, 27.057838, 51.015354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440941, 27.520874, 50.754398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603390, 27.164255, 50.674183>,  <34.700859, 26.950285, 50.626053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603390, 27.164255, 50.674183>,  <34.440941, 27.520874, 50.754398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603390, 27.164255, 50.674183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381742, 0.364901, -0.849188,
		0.830265, 0.268318, 0.488534,
		0.406118, -0.891545, -0.200536,
		34.725224, 26.896791, 50.614021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181278, 27.614588, 50.506618>,  <34.440941, 27.520874, 50.754398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181278, 27.614588, 50.506618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077618, 27.270296, 50.331352>,  <35.015423, 27.063721, 50.226192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077618, 27.270296, 50.331352>,  <35.181278, 27.614588, 50.506618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077618, 27.270296, 50.331352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405775, 0.314658, -0.858101,
		0.876463, -0.400174, 0.267718,
		-0.259150, -0.860727, -0.438167,
		34.999874, 27.012077, 50.199902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758076, 27.425268, 50.081970>,  <35.181278, 27.614588, 50.506618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758076, 27.425268, 50.081970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479572, 27.192074, 49.914471>,  <35.312469, 27.052156, 49.813969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479572, 27.192074, 49.914471>,  <35.758076, 27.425268, 50.081970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479572, 27.192074, 49.914471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266421, 0.331820, -0.904939,
		0.666516, -0.741636, -0.075713,
		-0.696258, -0.582986, -0.418751,
		35.270695, 27.017178, 49.788845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087170, 26.968861, 49.447037>,  <35.758076, 27.425268, 50.081970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087170, 26.968861, 49.447037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694187, 26.980804, 49.373405>,  <35.458397, 26.987970, 49.329227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694187, 26.980804, 49.373405>,  <36.087170, 26.968861, 49.447037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694187, 26.980804, 49.373405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183113, 0.341295, -0.921947,
		0.035296, -0.939482, -0.340776,
		-0.982458, 0.029859, -0.184078,
		35.399448, 26.989761, 49.318184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021900, 26.629944, 48.782780>,  <36.087170, 26.968861, 49.447037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021900, 26.629944, 48.782780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704723, 26.868610, 48.832150>,  <35.514416, 27.011810, 48.861771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704723, 26.868610, 48.832150>,  <36.021900, 26.629944, 48.782780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704723, 26.868610, 48.832150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042509, 0.256249, -0.965676,
		-0.607814, -0.760477, -0.228554,
		-0.792941, 0.596667, 0.123424,
		35.466843, 27.047609, 48.869175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582500, 26.331081, 48.357277>,  <36.021900, 26.629944, 48.782780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582500, 26.331081, 48.357277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464993, 26.710081, 48.407784>,  <35.394489, 26.937481, 48.438087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464993, 26.710081, 48.407784>,  <35.582500, 26.331081, 48.357277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464993, 26.710081, 48.407784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065588, 0.111806, -0.991563,
		-0.953625, -0.299569, 0.029300,
		-0.293766, 0.947501, 0.126269,
		35.376862, 26.994331, 48.445663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974537, 26.351549, 47.999508>,  <35.582500, 26.331081, 48.357277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974537, 26.351549, 47.999508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069317, 26.737316, 48.046417>,  <35.126186, 26.968777, 48.074562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069317, 26.737316, 48.046417>,  <34.974537, 26.351549, 47.999508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069317, 26.737316, 48.046417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270404, 0.181406, -0.945501,
		-0.933132, 0.192327, 0.303767,
		0.236951, 0.964418, 0.117270,
		35.140404, 27.026642, 48.081600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417690, 26.636339, 47.697655>,  <34.974537, 26.351549, 47.999508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417690, 26.636339, 47.697655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729298, 26.887117, 47.694199>,  <34.916260, 27.037584, 47.692127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729298, 26.887117, 47.694199>,  <34.417690, 26.636339, 47.697655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729298, 26.887117, 47.694199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154585, 0.178696, -0.971685,
		-0.607649, 0.758293, 0.236123,
		0.779016, 0.626945, -0.008637,
		34.963001, 27.075201, 47.691608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144444, 27.246054, 47.512020>,  <34.417690, 26.636339, 47.697655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144444, 27.246054, 47.512020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535316, 27.254679, 47.427498>,  <34.769840, 27.259853, 47.376785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535316, 27.254679, 47.427498>,  <34.144444, 27.246054, 47.512020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535316, 27.254679, 47.427498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209295, 0.267384, -0.940586,
		0.036219, 0.963349, 0.265795,
		0.977181, 0.021562, -0.211309,
		34.828472, 27.261147, 47.364105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115627, 27.861795, 47.116425>,  <34.144444, 27.246054, 47.512020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115627, 27.861795, 47.116425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475967, 27.695803, 47.065414>,  <34.692169, 27.596207, 47.034809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475967, 27.695803, 47.065414>,  <34.115627, 27.861795, 47.116425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475967, 27.695803, 47.065414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000352, 0.293048, -0.956098,
		0.434135, 0.861343, 0.263845,
		0.900847, -0.414983, -0.127526,
		34.746223, 27.571308, 47.027157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459812, 28.368717, 46.865967>,  <34.115627, 27.861795, 47.116425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459812, 28.368717, 46.865967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657425, 28.052782, 46.720589>,  <34.775993, 27.863222, 46.633362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657425, 28.052782, 46.720589>,  <34.459812, 28.368717, 46.865967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657425, 28.052782, 46.720589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171024, 0.321573, -0.931312,
		0.852458, 0.522253, 0.023786,
		0.494030, -0.789837, -0.363445,
		34.805634, 27.815830, 46.611553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811821, 28.667116, 46.330105>,  <34.459812, 28.368717, 46.865967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811821, 28.667116, 46.330105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806664, 28.275608, 46.248287>,  <34.803570, 28.040703, 46.199196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806664, 28.275608, 46.248287>,  <34.811821, 28.667116, 46.330105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806664, 28.275608, 46.248287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042888, 0.204914, -0.977840,
		0.998997, -0.003834, -0.044619,
		-0.012892, -0.978772, -0.204544,
		34.802795, 27.981976, 46.186924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315384, 28.537374, 45.699738>,  <34.811821, 28.667116, 46.330105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315384, 28.537374, 45.699738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038151, 28.249485, 45.715881>,  <34.871811, 28.076752, 45.725567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038151, 28.249485, 45.715881>,  <35.315384, 28.537374, 45.699738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038151, 28.249485, 45.715881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219931, 0.157804, -0.962667,
		0.686486, -0.676088, -0.267661,
		-0.693086, -0.719724, 0.040363,
		34.830227, 28.033567, 45.727989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382362, 28.210272, 45.036274>,  <35.315384, 28.537374, 45.699738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382362, 28.210272, 45.036274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029137, 28.102209, 45.189743>,  <34.817200, 28.037371, 45.281826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029137, 28.102209, 45.189743>,  <35.382362, 28.210272, 45.036274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029137, 28.102209, 45.189743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411493, 0.052845, -0.909880,
		0.225535, -0.961365, -0.157834,
		-0.883067, -0.270157, 0.383676,
		34.764217, 28.021162, 45.304848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171337, 27.754129, 44.574089>,  <35.382362, 28.210272, 45.036274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171337, 27.754129, 44.574089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836990, 27.834547, 44.778404>,  <34.636383, 27.882797, 44.900993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836990, 27.834547, 44.778404>,  <35.171337, 27.754129, 44.574089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836990, 27.834547, 44.778404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504708, 0.084435, -0.859151,
		-0.215855, -0.975937, 0.030892,
		-0.835869, 0.201044, 0.510788,
		34.586231, 27.894859, 44.931641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572197, 27.315123, 44.325672>,  <35.171337, 27.754129, 44.574089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572197, 27.315123, 44.325672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452583, 27.652386, 44.504410>,  <34.380814, 27.854744, 44.611652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452583, 27.652386, 44.504410>,  <34.572197, 27.315123, 44.325672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452583, 27.652386, 44.504410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638986, 0.170850, -0.750005,
		-0.708714, -0.509802, 0.487675,
		-0.299035, 0.843156, 0.446840,
		34.362873, 27.905333, 44.638462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878307, 27.369150, 44.188717>,  <34.572197, 27.315123, 44.325672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878307, 27.369150, 44.188717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981495, 27.747183, 44.268993>,  <34.043407, 27.974003, 44.317162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981495, 27.747183, 44.268993>,  <33.878307, 27.369150, 44.188717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981495, 27.747183, 44.268993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433494, 0.298862, -0.850156,
		-0.863445, 0.132311, 0.486783,
		0.257965, 0.945080, 0.200695,
		34.058884, 28.030706, 44.329201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425125, 27.698250, 43.803154>,  <33.878307, 27.369150, 44.188717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425125, 27.698250, 43.803154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676830, 28.001919, 43.869709>,  <33.827854, 28.184120, 43.909641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676830, 28.001919, 43.869709>,  <33.425125, 27.698250, 43.803154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676830, 28.001919, 43.869709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226400, 0.383855, -0.895209,
		-0.743486, 0.525653, 0.413422,
		0.629263, 0.759174, 0.166383,
		33.865608, 28.229671, 43.919624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040607, 28.331125, 43.691433>,  <33.425125, 27.698250, 43.803154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040607, 28.331125, 43.691433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421753, 28.447050, 43.655521>,  <33.650440, 28.516605, 43.633976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421753, 28.447050, 43.655521>,  <33.040607, 28.331125, 43.691433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421753, 28.447050, 43.655521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223500, 0.470398, -0.853682,
		-0.205176, 0.833508, 0.512998,
		0.952864, 0.289810, -0.089774,
		33.707611, 28.533993, 43.628590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097824, 29.149578, 43.530300>,  <33.040607, 28.331125, 43.691433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097824, 29.149578, 43.530300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444504, 28.984442, 43.418304>,  <33.652512, 28.885361, 43.351105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444504, 28.984442, 43.418304>,  <33.097824, 29.149578, 43.530300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444504, 28.984442, 43.418304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067958, 0.458344, -0.886173,
		0.494181, 0.787073, 0.369190,
		0.866699, -0.412841, -0.279993,
		33.704514, 28.860590, 43.334305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436577, 29.695929, 43.151203>,  <33.097824, 29.149578, 43.530300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436577, 29.695929, 43.151203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600010, 29.345129, 43.050060>,  <33.698071, 29.134649, 42.989376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600010, 29.345129, 43.050060>,  <33.436577, 29.695929, 43.151203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600010, 29.345129, 43.050060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006177, 0.274370, -0.961604,
		0.912702, 0.394454, 0.106685,
		0.408580, -0.876999, -0.252854,
		33.722584, 29.082029, 42.974205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901230, 29.928900, 42.733292>,  <33.436577, 29.695929, 43.151203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901230, 29.928900, 42.733292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851009, 29.543524, 42.638618>,  <33.820877, 29.312298, 42.581814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851009, 29.543524, 42.638618>,  <33.901230, 29.928900, 42.733292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851009, 29.543524, 42.638618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002172, 0.238303, -0.971189,
		0.992085, -0.122450, -0.027827,
		-0.125553, -0.963441, -0.236683,
		33.813343, 29.254492, 42.567616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405567, 29.866856, 42.237289>,  <33.901230, 29.928900, 42.733292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405567, 29.866856, 42.237289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156029, 29.559273, 42.181396>,  <34.006306, 29.374723, 42.147861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156029, 29.559273, 42.181396>,  <34.405567, 29.866856, 42.237289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156029, 29.559273, 42.181396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003241, 0.181333, -0.983416,
		0.781544, -0.613043, -0.115615,
		-0.623841, -0.768958, -0.139733,
		33.968876, 29.328585, 42.139477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566673, 29.619864, 41.591244>,  <34.405567, 29.866856, 42.237289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566673, 29.619864, 41.591244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204571, 29.464731, 41.660637>,  <33.987309, 29.371651, 41.702274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204571, 29.464731, 41.660637>,  <34.566673, 29.619864, 41.591244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204571, 29.464731, 41.660637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237716, 0.123913, -0.963399,
		0.352140, -0.913363, -0.204367,
		-0.905256, -0.387832, 0.173486,
		33.932995, 29.348381, 41.712681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464325, 29.371769, 41.021347>,  <34.566673, 29.619864, 41.591244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464325, 29.371769, 41.021347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098660, 29.331003, 41.178280>,  <33.879261, 29.306543, 41.272438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098660, 29.331003, 41.178280>,  <34.464325, 29.371769, 41.021347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098660, 29.331003, 41.178280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402963, 0.123499, -0.906846,
		0.043963, -0.987098, -0.153963,
		-0.914160, -0.101909, 0.392334,
		33.824413, 29.300428, 41.295979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086262, 28.903475, 40.617203>,  <34.464325, 29.371769, 41.021347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086262, 28.903475, 40.617203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833035, 29.149788, 40.804836>,  <33.681099, 29.297577, 40.917416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833035, 29.149788, 40.804836>,  <34.086262, 28.903475, 40.617203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833035, 29.149788, 40.804836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447229, 0.203661, -0.870924,
		-0.631835, -0.761139, 0.146466,
		-0.633065, 0.615784, 0.469084,
		33.643116, 29.334522, 40.945560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413250, 28.777012, 40.345940>,  <34.086262, 28.903475, 40.617203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413250, 28.777012, 40.345940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388344, 29.140680, 40.510635>,  <33.373402, 29.358881, 40.609455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388344, 29.140680, 40.510635>,  <33.413250, 28.777012, 40.345940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388344, 29.140680, 40.510635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465306, 0.338522, -0.817859,
		-0.882957, -0.242511, 0.401964,
		-0.062266, 0.909171, 0.411743,
		33.369663, 29.413431, 40.634159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693638, 29.002249, 40.238079>,  <33.413250, 28.777012, 40.345940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693638, 29.002249, 40.238079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923073, 29.325018, 40.294472>,  <33.060734, 29.518679, 40.328308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923073, 29.325018, 40.294472>,  <32.693638, 29.002249, 40.238079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923073, 29.325018, 40.294472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390086, 0.420409, -0.819200,
		-0.720298, 0.414890, 0.555910,
		0.573588, 0.806921, 0.140977,
		33.095150, 29.567095, 40.336765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173889, 29.554333, 40.272320>,  <32.693638, 29.002249, 40.238079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173889, 29.554333, 40.272320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526920, 29.729593, 40.204113>,  <32.738739, 29.834749, 40.163189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526920, 29.729593, 40.204113>,  <32.173889, 29.554333, 40.272320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526920, 29.729593, 40.204113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432362, 0.613884, -0.660462,
		-0.184703, 0.656637, 0.731241,
		0.882581, 0.438150, -0.170519,
		32.791695, 29.861038, 40.152958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096096, 30.265846, 40.362667>,  <32.173889, 29.554333, 40.272320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096096, 30.265846, 40.362667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420250, 30.227371, 40.131489>,  <32.614742, 30.204287, 39.992783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420250, 30.227371, 40.131489>,  <32.096096, 30.265846, 40.362667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420250, 30.227371, 40.131489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432478, 0.567280, -0.700826,
		0.395267, 0.817888, 0.418117,
		0.810387, -0.096187, -0.577945,
		32.663364, 30.198515, 39.958107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241085, 30.977633, 40.038181>,  <32.096096, 30.265846, 40.362667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241085, 30.977633, 40.038181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456295, 30.725239, 39.814613>,  <32.585419, 30.573803, 39.680473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456295, 30.725239, 39.814613>,  <32.241085, 30.977633, 40.038181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456295, 30.725239, 39.814613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081754, 0.620878, -0.779632,
		0.838956, 0.465154, 0.282461,
		0.538023, -0.630985, -0.558918,
		32.617702, 30.535944, 39.646938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832973, 31.318542, 39.898846>,  <32.241085, 30.977633, 40.038181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832973, 31.318542, 39.898846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749554, 31.044579, 39.619587>,  <32.699501, 30.880199, 39.452034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749554, 31.044579, 39.619587>,  <32.832973, 31.318542, 39.898846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749554, 31.044579, 39.619587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047465, 0.720086, -0.692259,
		0.976860, -0.111230, -0.182680,
		-0.208545, -0.684911, -0.698144,
		32.686989, 30.839106, 39.410145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318947, 31.482561, 39.260487>,  <32.832973, 31.318542, 39.898846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318947, 31.482561, 39.260487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025085, 31.243303, 39.132420>,  <32.848770, 31.099749, 39.055580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025085, 31.243303, 39.132420>,  <33.318947, 31.482561, 39.260487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025085, 31.243303, 39.132420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019258, 0.490116, -0.871444,
		0.678169, -0.634044, -0.371584,
		-0.734653, -0.598142, -0.320171,
		32.804688, 31.063860, 39.036369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787342, 31.695419, 39.620537>,  <33.318947, 31.482561, 39.260487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787342, 31.695419, 39.620537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967075, 32.040852, 39.529037>,  <34.074917, 32.248112, 39.474140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967075, 32.040852, 39.529037>,  <33.787342, 31.695419, 39.620537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967075, 32.040852, 39.529037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544905, -0.062031, 0.836200,
		0.707939, -0.500377, -0.498443,
		0.449334, 0.863583, -0.228744,
		34.101875, 32.299927, 39.460415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413635, 31.552435, 39.861958>,  <33.787342, 31.695419, 39.620537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413635, 31.552435, 39.861958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410400, 31.946978, 39.796185>,  <34.408459, 32.183704, 39.756721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410400, 31.946978, 39.796185>,  <34.413635, 31.552435, 39.861958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410400, 31.946978, 39.796185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558075, 0.140897, 0.817741,
		0.829751, -0.085149, -0.551600,
		-0.008089, 0.986356, -0.164429,
		34.407974, 32.242886, 39.746857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167152, 31.803085, 39.802696>,  <34.413635, 31.552435, 39.861958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167152, 31.803085, 39.802696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957760, 32.130005, 39.899021>,  <34.832123, 32.326157, 39.956814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957760, 32.130005, 39.899021>,  <35.167152, 31.803085, 39.802696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957760, 32.130005, 39.899021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628253, 0.179338, 0.757057,
		0.575556, 0.547596, -0.607351,
		-0.523482, 0.817299, 0.240809,
		34.800716, 32.375195, 39.971264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734741, 32.329113, 39.859810>,  <35.167152, 31.803085, 39.802696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734741, 32.329113, 39.859810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408188, 32.450356, 40.056438>,  <35.212257, 32.523102, 40.174416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408188, 32.450356, 40.056438>,  <35.734741, 32.329113, 39.859810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408188, 32.450356, 40.056438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535051, 0.076643, 0.841336,
		0.217339, 0.949870, -0.224747,
		-0.816385, 0.303106, 0.491571,
		35.163273, 32.541286, 40.203911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001389, 32.903801, 40.293716>,  <35.734741, 32.329113, 39.859810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001389, 32.903801, 40.293716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666214, 32.744602, 40.443096>,  <35.465111, 32.649082, 40.532726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666214, 32.744602, 40.443096>,  <36.001389, 32.903801, 40.293716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666214, 32.744602, 40.443096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338491, 0.157783, 0.927647,
		-0.428121, 0.903718, 0.002505,
		-0.837936, -0.397993, 0.373451,
		35.414833, 32.625206, 40.555130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047581, 33.226006, 41.017941>,  <36.001389, 32.903801, 40.293716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047581, 33.226006, 41.017941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757095, 32.956047, 41.070297>,  <35.582806, 32.794071, 41.101711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757095, 32.956047, 41.070297>,  <36.047581, 33.226006, 41.017941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757095, 32.956047, 41.070297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149608, 0.030688, 0.988269,
		-0.670992, 0.737278, 0.078683,
		-0.726214, -0.674893, 0.130893,
		35.539230, 32.753578, 41.109566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625320, 33.414249, 41.638000>,  <36.047581, 33.226006, 41.017941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625320, 33.414249, 41.638000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580433, 33.022606, 41.570179>,  <35.553501, 32.787621, 41.529488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580433, 33.022606, 41.570179>,  <35.625320, 33.414249, 41.638000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580433, 33.022606, 41.570179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172461, -0.187232, 0.967058,
		-0.978603, 0.079284, 0.189870,
		-0.112222, -0.979111, -0.169553,
		35.546768, 32.728874, 41.519314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191177, 33.207859, 42.208397>,  <35.625320, 33.414249, 41.638000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191177, 33.207859, 42.208397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378876, 32.883961, 42.067474>,  <35.491497, 32.689621, 41.982922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378876, 32.883961, 42.067474>,  <35.191177, 33.207859, 42.208397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378876, 32.883961, 42.067474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285434, -0.238463, 0.928258,
		-0.835663, -0.536145, 0.119230,
		0.469249, -0.809743, -0.352308,
		35.519650, 32.641037, 41.961781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023766, 32.679749, 42.711170>,  <35.191177, 33.207859, 42.208397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023766, 32.679749, 42.711170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320606, 32.500942, 42.511387>,  <35.498711, 32.393658, 42.391518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320606, 32.500942, 42.511387>,  <35.023766, 32.679749, 42.711170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320606, 32.500942, 42.511387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316716, -0.422866, 0.849044,
		-0.590740, -0.788265, -0.172233,
		0.742103, -0.447015, -0.499460,
		35.543236, 32.366837, 42.361549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927773, 32.002701, 42.943703>,  <35.023766, 32.679749, 42.711170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927773, 32.002701, 42.943703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297295, 32.033691, 42.793732>,  <35.519009, 32.052288, 42.703747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297295, 32.033691, 42.793732>,  <34.927773, 32.002701, 42.943703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297295, 32.033691, 42.793732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341315, -0.610303, 0.714867,
		-0.173433, -0.788370, -0.590249,
		0.923810, 0.077480, -0.374929,
		35.574436, 32.056934, 42.681252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163986, 31.346794, 42.764626>,  <34.927773, 32.002701, 42.943703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163986, 31.346794, 42.764626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488647, 31.574745, 42.815929>,  <35.683445, 31.711515, 42.846710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488647, 31.574745, 42.815929>,  <35.163986, 31.346794, 42.764626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488647, 31.574745, 42.815929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291807, -0.585781, 0.756114,
		0.506025, -0.576279, -0.641749,
		0.811657, 0.569880, 0.128258,
		35.732143, 31.745708, 42.854408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784927, 30.874434, 42.794720>,  <35.163986, 31.346794, 42.764626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784927, 30.874434, 42.794720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910549, 31.209692, 42.973103>,  <35.985920, 31.410847, 43.080132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910549, 31.209692, 42.973103>,  <35.784927, 30.874434, 42.794720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910549, 31.209692, 42.973103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396620, -0.542594, 0.740462,
		0.862592, -0.055665, -0.502828,
		0.314050, 0.838149, 0.445959,
		36.004765, 31.461136, 43.106892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431698, 30.736191, 43.041233>,  <35.784927, 30.874434, 42.794720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431698, 30.736191, 43.041233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344112, 31.054762, 43.266712>,  <36.291561, 31.245905, 43.402000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344112, 31.054762, 43.266712>,  <36.431698, 30.736191, 43.041233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344112, 31.054762, 43.266712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253439, -0.511464, 0.821081,
		0.942244, 0.322651, -0.089853,
		-0.218966, 0.796430, 0.563696,
		36.278423, 31.293692, 43.435822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923794, 30.698179, 43.566357>,  <36.431698, 30.736191, 43.041233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923794, 30.698179, 43.566357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638767, 30.946152, 43.697773>,  <36.467751, 31.094936, 43.776623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638767, 30.946152, 43.697773>,  <36.923794, 30.698179, 43.566357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638767, 30.946152, 43.697773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200477, -0.268838, 0.942091,
		0.672357, 0.737163, 0.067282,
		-0.712563, 0.619933, 0.328539,
		36.424999, 31.132132, 43.796333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172264, 31.053244, 44.146084>,  <36.923794, 30.698179, 43.566357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172264, 31.053244, 44.146084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775169, 31.066519, 44.192337>,  <36.536911, 31.074484, 44.220089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775169, 31.066519, 44.192337>,  <37.172264, 31.053244, 44.146084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775169, 31.066519, 44.192337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093405, -0.393090, 0.914743,
		0.075811, 0.918901, 0.387136,
		-0.992738, 0.033187, 0.115631,
		36.477348, 31.076475, 44.227028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023865, 31.230227, 44.818401>,  <37.172264, 31.053244, 44.146084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023865, 31.230227, 44.818401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658031, 31.106878, 44.713753>,  <36.438530, 31.032869, 44.650963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658031, 31.106878, 44.713753>,  <37.023865, 31.230227, 44.818401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658031, 31.106878, 44.713753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130832, -0.386518, 0.912955,
		-0.382652, 0.869201, 0.313158,
		-0.914582, -0.308373, -0.261621,
		36.383656, 31.014366, 44.635265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524059, 31.573242, 45.236614>,  <37.023865, 31.230227, 44.818401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524059, 31.573242, 45.236614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361660, 31.225803, 45.122978>,  <36.264221, 31.017340, 45.054798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361660, 31.225803, 45.122978>,  <36.524059, 31.573242, 45.236614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361660, 31.225803, 45.122978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072623, -0.279210, 0.957480,
		-0.910983, 0.409368, 0.050279,
		-0.406000, -0.868596, -0.284085,
		36.239861, 30.965225, 45.037754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956154, 31.450377, 45.634548>,  <36.524059, 31.573242, 45.236614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956154, 31.450377, 45.634548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049038, 31.084949, 45.500999>,  <36.104767, 30.865694, 45.420868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049038, 31.084949, 45.500999>,  <35.956154, 31.450377, 45.634548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049038, 31.084949, 45.500999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104211, -0.364649, 0.925295,
		-0.967067, -0.180068, -0.179878,
		0.232208, -0.913568, -0.333875,
		36.118702, 30.810879, 45.400837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586353, 30.867285, 46.113258>,  <35.956154, 31.450377, 45.634548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586353, 30.867285, 46.113258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843197, 30.632530, 45.915970>,  <35.997303, 30.491678, 45.797596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843197, 30.632530, 45.915970>,  <35.586353, 30.867285, 46.113258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843197, 30.632530, 45.915970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114718, -0.562567, 0.818754,
		-0.757984, -0.582308, -0.293902,
		0.642106, -0.586887, -0.493218,
		36.035828, 30.456465, 45.768005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290268, 30.222347, 46.114010>,  <35.586353, 30.867285, 46.113258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290268, 30.222347, 46.114010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686058, 30.196548, 46.062210>,  <35.923534, 30.181068, 46.031132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686058, 30.196548, 46.062210>,  <35.290268, 30.222347, 46.114010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686058, 30.196548, 46.062210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058297, -0.641487, 0.764915,
		-0.132407, -0.764417, -0.630979,
		0.989479, -0.064496, -0.129500,
		35.982903, 30.177200, 46.023361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513451, 29.496555, 46.241657>,  <35.290268, 30.222347, 46.114010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513451, 29.496555, 46.241657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857227, 29.696802, 46.283119>,  <36.063492, 29.816950, 46.307995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857227, 29.696802, 46.283119>,  <35.513451, 29.496555, 46.241657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857227, 29.696802, 46.283119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263599, -0.607656, 0.749179,
		0.438035, -0.616554, -0.654207,
		0.859442, 0.500615, 0.103652,
		36.115059, 29.846987, 46.314217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084953, 29.002911, 46.303455>,  <35.513451, 29.496555, 46.241657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084953, 29.002911, 46.303455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214088, 29.346176, 46.463120>,  <36.291569, 29.552135, 46.558918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214088, 29.346176, 46.463120>,  <36.084953, 29.002911, 46.303455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214088, 29.346176, 46.463120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385448, -0.504399, 0.772665,
		0.864409, -0.095591, -0.493618,
		0.322840, 0.858163, 0.399161,
		36.310940, 29.603624, 46.582867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828297, 28.877081, 46.517651>,  <36.084953, 29.002911, 46.303455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828297, 28.877081, 46.517651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709869, 29.196398, 46.727440>,  <36.638813, 29.387989, 46.853313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709869, 29.196398, 46.727440>,  <36.828297, 28.877081, 46.517651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709869, 29.196398, 46.727440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469071, -0.356798, 0.807879,
		0.832054, 0.485204, -0.268819,
		-0.296072, 0.798294, 0.524470,
		36.621048, 29.435886, 46.884781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286957, 29.031532, 47.048046>,  <36.828297, 28.877081, 46.517651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286957, 29.031532, 47.048046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958305, 29.221682, 47.173866>,  <36.761112, 29.335772, 47.249359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958305, 29.221682, 47.173866>,  <37.286957, 29.031532, 47.048046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958305, 29.221682, 47.173866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228820, -0.230353, 0.945822,
		0.522075, 0.849093, 0.080490,
		-0.821632, 0.475372, 0.314551,
		36.711815, 29.364294, 47.268230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485661, 29.502554, 47.604073>,  <37.286957, 29.031532, 47.048046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485661, 29.502554, 47.604073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095322, 29.430433, 47.653416>,  <36.861118, 29.387161, 47.683022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095322, 29.430433, 47.653416>,  <37.485661, 29.502554, 47.604073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095322, 29.430433, 47.653416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150572, -0.145988, 0.977761,
		-0.158283, 0.972717, 0.169610,
		-0.975846, -0.180302, 0.123356,
		36.802567, 29.376343, 47.690422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355137, 29.740089, 48.221596>,  <37.485661, 29.502554, 47.604073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355137, 29.740089, 48.221596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006458, 29.549616, 48.175289>,  <36.797253, 29.435331, 48.147503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006458, 29.549616, 48.175289>,  <37.355137, 29.740089, 48.221596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006458, 29.549616, 48.175289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020540, -0.271531, 0.962211,
		-0.489623, 0.836373, 0.246472,
		-0.871692, -0.476183, -0.115769,
		36.744949, 29.406761, 48.140560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816631, 30.030260, 48.593639>,  <37.355137, 29.740089, 48.221596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816631, 30.030260, 48.593639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723267, 29.641981, 48.570793>,  <36.667248, 29.409014, 48.557087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723267, 29.641981, 48.570793>,  <36.816631, 30.030260, 48.593639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723267, 29.641981, 48.570793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058889, -0.044515, 0.997271,
		-0.970593, 0.236138, -0.046773,
		-0.233412, -0.970699, -0.057112,
		36.653244, 29.350771, 48.553661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318138, 29.947538, 49.142963>,  <36.816631, 30.030260, 48.593639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318138, 29.947538, 49.142963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432556, 29.577925, 49.041504>,  <36.501205, 29.356155, 48.980629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432556, 29.577925, 49.041504>,  <36.318138, 29.947538, 49.142963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432556, 29.577925, 49.041504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140461, -0.302284, 0.942812,
		-0.947867, -0.234054, -0.216257,
		0.286040, -0.924037, -0.253649,
		36.518368, 29.300714, 48.965408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723713, 29.567438, 49.254494>,  <36.318138, 29.947538, 49.142963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723713, 29.567438, 49.254494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040703, 29.325356, 49.284710>,  <36.230896, 29.180105, 49.302841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040703, 29.325356, 49.284710>,  <35.723713, 29.567438, 49.254494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040703, 29.325356, 49.284710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331890, -0.324002, 0.885930,
		-0.511696, -0.727149, -0.457626,
		0.792475, -0.605208, 0.075543,
		36.278446, 29.143793, 49.307373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465931, 29.052950, 49.561218>,  <35.723713, 29.567438, 49.254494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465931, 29.052950, 49.561218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855412, 28.981453, 49.617725>,  <36.089100, 28.938555, 49.651630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855412, 28.981453, 49.617725>,  <35.465931, 29.052950, 49.561218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855412, 28.981453, 49.617725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178977, -0.216437, 0.959751,
		-0.140972, -0.959795, -0.242735,
		0.973701, -0.178742, 0.141270,
		36.147522, 28.927832, 49.660107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500721, 28.465296, 50.113918>,  <35.465931, 29.052950, 49.561218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500721, 28.465296, 50.113918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865540, 28.629314, 50.111832>,  <36.084431, 28.727726, 50.110580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865540, 28.629314, 50.111832>,  <35.500721, 28.465296, 50.113918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865540, 28.629314, 50.111832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064415, -0.130696, 0.989328,
		0.404988, -0.902652, -0.145614,
		0.912050, 0.410046, -0.005214,
		36.139156, 28.752329, 50.110268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866177, 28.047602, 50.691120>,  <35.500721, 28.465296, 50.113918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866177, 28.047602, 50.691120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088478, 28.375933, 50.638390>,  <36.221859, 28.572931, 50.606750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088478, 28.375933, 50.638390>,  <35.866177, 28.047602, 50.691120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088478, 28.375933, 50.638390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105086, 0.087934, 0.990568,
		0.824679, -0.564363, -0.037389,
		0.555752, 0.820830, -0.131824,
		36.255203, 28.622181, 50.598843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444424, 28.031357, 51.289913>,  <35.866177, 28.047602, 50.691120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444424, 28.031357, 51.289913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429588, 28.414604, 51.176331>,  <36.420689, 28.644552, 51.108181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429588, 28.414604, 51.176331>,  <36.444424, 28.031357, 51.289913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429588, 28.414604, 51.176331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038943, 0.282547, 0.958463,
		0.998553, 0.046604, 0.026833,
		-0.037086, 0.958121, -0.283953,
		36.418461, 28.702040, 51.091145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903221, 28.379879, 51.656292>,  <36.444424, 28.031357, 51.289913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903221, 28.379879, 51.656292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635429, 28.657591, 51.550632>,  <36.474754, 28.824217, 51.487236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635429, 28.657591, 51.550632>,  <36.903221, 28.379879, 51.656292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635429, 28.657591, 51.550632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054994, 0.400947, 0.914449,
		0.740793, 0.597678, -0.306607,
		-0.669479, 0.694279, -0.264150,
		36.434586, 28.865875, 51.471386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040543, 28.987789, 52.007961>,  <36.903221, 28.379879, 51.656292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040543, 28.987789, 52.007961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655621, 29.024435, 51.905529>,  <36.424667, 29.046423, 51.844070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655621, 29.024435, 51.905529>,  <37.040543, 28.987789, 52.007961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655621, 29.024435, 51.905529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177997, 0.499780, 0.847666,
		0.205643, 0.861294, -0.464633,
		-0.962304, 0.091613, -0.256083,
		36.366928, 29.051920, 51.828705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858986, 29.673237, 52.254665>,  <37.040543, 28.987789, 52.007961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858986, 29.673237, 52.254665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499222, 29.519108, 52.172123>,  <36.283363, 29.426630, 52.122597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499222, 29.519108, 52.172123>,  <36.858986, 29.673237, 52.254665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499222, 29.519108, 52.172123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364776, 0.401575, 0.840045,
		-0.240819, 0.830822, -0.501738,
		-0.899414, -0.385321, -0.206357,
		36.229397, 29.403511, 52.110214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468021, 30.247417, 52.270058>,  <36.858986, 29.673237, 52.254665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468021, 30.247417, 52.270058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239342, 29.924063, 52.326168>,  <36.102135, 29.730049, 52.359833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239342, 29.924063, 52.326168>,  <36.468021, 30.247417, 52.270058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239342, 29.924063, 52.326168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372685, 0.408173, 0.833367,
		-0.730938, 0.424154, -0.534624,
		-0.571695, -0.808386, 0.140274,
		36.067833, 29.681547, 52.368252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510227, 30.098879, 53.060993>,  <36.468021, 30.247417, 52.270058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510227, 30.098879, 53.060993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844448, 29.914568, 52.941303>,  <37.044979, 29.803982, 52.869488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844448, 29.914568, 52.941303>,  <36.510227, 30.098879, 53.060993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844448, 29.914568, 52.941303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525355, -0.510681, -0.680593,
		0.160794, 0.725871, -0.668772,
		0.835552, -0.460778, -0.299225,
		37.095116, 29.776335, 52.851536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924557, 30.401274, 53.443909>,  <36.510227, 30.098879, 53.060993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924557, 30.401274, 53.443909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246666, 30.552959, 53.626217>,  <36.439930, 30.643970, 53.735603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246666, 30.552959, 53.626217>,  <35.924557, 30.401274, 53.443909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246666, 30.552959, 53.626217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069503, 0.823791, -0.562617,
		-0.588817, 0.421382, 0.689733,
		0.805273, 0.379217, 0.455775,
		36.488247, 30.666725, 53.762951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756149, 31.158184, 53.549915>,  <35.924557, 30.401274, 53.443909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756149, 31.158184, 53.549915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151550, 31.100672, 53.568661>,  <36.388790, 31.066164, 53.579910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151550, 31.100672, 53.568661>,  <35.756149, 31.158184, 53.549915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151550, 31.100672, 53.568661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145573, 0.820767, -0.552404,
		0.040959, 0.552874, 0.832258,
		0.988499, -0.143780, 0.046866,
		36.448101, 31.057537, 53.582722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093822, 31.820612, 53.726341>,  <35.756149, 31.158184, 53.549915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093822, 31.820612, 53.726341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359764, 31.594238, 53.531326>,  <36.519329, 31.458414, 53.414318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359764, 31.594238, 53.531326>,  <36.093822, 31.820612, 53.726341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359764, 31.594238, 53.531326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137450, 0.734221, -0.664852,
		0.734221, 0.375016, 0.565935,
		0.664852, -0.565935, -0.487534,
		36.559219, 31.424458, 53.385067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421555, 32.250446, 53.395195>,  <36.093822, 31.820612, 53.726341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421555, 32.250446, 53.395195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592377, 31.953621, 53.188519>,  <36.694870, 31.775526, 53.064514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592377, 31.953621, 53.188519>,  <36.421555, 32.250446, 53.395195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592377, 31.953621, 53.188519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134121, 0.617079, -0.775387,
		0.894225, 0.261831, 0.363051,
		0.427051, -0.742063, -0.516691,
		36.720493, 31.731003, 53.033512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999977, 32.601978, 53.098499>,  <36.421555, 32.250446, 53.395195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999977, 32.601978, 53.098499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944702, 32.272133, 52.879074>,  <36.911537, 32.074226, 52.747421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944702, 32.272133, 52.879074>,  <36.999977, 32.601978, 53.098499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944702, 32.272133, 52.879074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122604, 0.535369, -0.835672,
		0.982788, -0.182734, 0.027120,
		-0.138186, -0.824614, -0.548558,
		36.903248, 32.024750, 52.714508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585766, 32.443153, 52.744141>,  <36.999977, 32.601978, 53.098499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585766, 32.443153, 52.744141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315647, 32.254021, 52.517719>,  <37.153576, 32.140541, 52.381866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315647, 32.254021, 52.517719>,  <37.585766, 32.443153, 52.744141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315647, 32.254021, 52.517719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368832, 0.448128, -0.814337,
		0.638704, -0.758693, -0.128223,
		-0.675292, -0.472827, -0.566051,
		37.113060, 32.112171, 52.347904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956524, 32.217571, 52.116726>,  <37.585766, 32.443153, 52.744141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956524, 32.217571, 52.116726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565517, 32.209885, 52.032726>,  <37.330914, 32.205273, 51.982327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565517, 32.209885, 52.032726>,  <37.956524, 32.217571, 52.116726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565517, 32.209885, 52.032726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183589, 0.412386, -0.892319,
		0.103750, -0.910806, -0.399584,
		-0.977513, -0.019219, -0.209999,
		37.272263, 32.204121, 51.969727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895283, 31.903028, 51.523628>,  <37.956524, 32.217571, 52.116726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895283, 31.903028, 51.523628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559986, 32.120411, 51.541534>,  <37.358807, 32.250839, 51.552280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559986, 32.120411, 51.541534>,  <37.895283, 31.903028, 51.523628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559986, 32.120411, 51.541534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108507, 0.246692, -0.963000,
		-0.534394, -0.802369, -0.265756,
		-0.838241, 0.543458, 0.044768,
		37.308514, 32.283447, 51.554966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473270, 31.669252, 50.897320>,  <37.895283, 31.903028, 51.523628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473270, 31.669252, 50.897320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333252, 32.022205, 51.023090>,  <37.249241, 32.233978, 51.098553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333252, 32.022205, 51.023090>,  <37.473270, 31.669252, 50.897320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333252, 32.022205, 51.023090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057555, 0.355288, -0.932983,
		-0.934961, -0.308494, -0.175154,
		-0.350050, 0.882384, 0.314425,
		37.228237, 32.286922, 51.117416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768204, 31.807184, 50.579510>,  <37.473270, 31.669252, 50.897320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768204, 31.807184, 50.579510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916401, 32.167027, 50.671982>,  <37.005318, 32.382931, 50.727467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916401, 32.167027, 50.671982>,  <36.768204, 31.807184, 50.579510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916401, 32.167027, 50.671982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088910, 0.213402, -0.972910,
		-0.924570, 0.381012, -0.000920,
		0.370494, 0.899605, 0.231181,
		37.027550, 32.436909, 50.741337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435143, 32.329830, 50.130287>,  <36.768204, 31.807184, 50.579510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435143, 32.329830, 50.130287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738998, 32.564224, 50.243118>,  <36.921314, 32.704861, 50.310818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738998, 32.564224, 50.243118>,  <36.435143, 32.329830, 50.130287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738998, 32.564224, 50.243118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096915, 0.326893, -0.940079,
		-0.643077, 0.741463, 0.191532,
		0.759645, 0.585981, 0.282076,
		36.966892, 32.740017, 50.327740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336994, 33.019890, 49.843987>,  <36.435143, 32.329830, 50.130287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336994, 33.019890, 49.843987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727562, 33.009178, 49.929665>,  <36.961903, 33.002750, 49.981071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727562, 33.009178, 49.929665>,  <36.336994, 33.019890, 49.843987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727562, 33.009178, 49.929665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209948, 0.348465, -0.913506,
		-0.050177, 0.936939, 0.345872,
		0.976424, -0.026778, 0.214194,
		37.020489, 33.001144, 49.993923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735748, 33.667118, 49.593140>,  <36.336994, 33.019890, 49.843987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735748, 33.667118, 49.593140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977169, 33.348503, 49.607285>,  <37.122021, 33.157333, 49.615772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977169, 33.348503, 49.607285>,  <36.735748, 33.667118, 49.593140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977169, 33.348503, 49.607285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198758, 0.107351, -0.974152,
		0.772151, 0.594983, 0.223110,
		0.603555, -0.796537, 0.035367,
		37.158234, 33.109543, 49.617893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450302, 33.898800, 49.376064>,  <36.735748, 33.667118, 49.593140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450302, 33.898800, 49.376064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464756, 33.501335, 49.333504>,  <37.473427, 33.262856, 49.307968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464756, 33.501335, 49.333504>,  <37.450302, 33.898800, 49.376064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464756, 33.501335, 49.333504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391028, 0.112041, -0.913534,
		0.919669, -0.008600, 0.392599,
		0.036131, -0.993666, -0.106404,
		37.475594, 33.203236, 49.301582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089508, 33.811455, 49.011566>,  <37.450302, 33.898800, 49.376064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089508, 33.811455, 49.011566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868435, 33.481884, 48.961479>,  <37.735790, 33.284142, 48.931427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868435, 33.481884, 48.961479>,  <38.089508, 33.811455, 49.011566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868435, 33.481884, 48.961479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354788, -0.096658, -0.929937,
		0.754099, -0.558388, 0.345741,
		-0.552685, -0.823929, -0.125220,
		37.702629, 33.234707, 48.923912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528732, 33.430649, 48.751751>,  <38.089508, 33.811455, 49.011566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528732, 33.430649, 48.751751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173637, 33.272148, 48.658028>,  <37.960579, 33.177048, 48.601795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173637, 33.272148, 48.658028>,  <38.528732, 33.430649, 48.751751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173637, 33.272148, 48.658028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265794, -0.025626, -0.963689,
		0.375863, -0.917783, 0.128071,
		-0.887739, -0.396255, -0.234309,
		37.907314, 33.153271, 48.587734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653454, 33.027363, 48.121681>,  <38.528732, 33.430649, 48.751751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653454, 33.027363, 48.121681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255608, 33.060085, 48.147152>,  <38.016899, 33.079720, 48.162434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255608, 33.060085, 48.147152>,  <38.653454, 33.027363, 48.121681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255608, 33.060085, 48.147152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072497, -0.109790, -0.991307,
		-0.074097, -0.990583, 0.115129,
		-0.994612, 0.081800, 0.063679,
		37.957226, 33.084629, 48.166256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431301, 32.558636, 47.672474>,  <38.653454, 33.027363, 48.121681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431301, 32.558636, 47.672474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123058, 32.810951, 47.708855>,  <37.938114, 32.962341, 47.730682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123058, 32.810951, 47.708855>,  <38.431301, 32.558636, 47.672474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123058, 32.810951, 47.708855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168035, -0.063430, -0.983738,
		-0.614761, -0.773358, 0.154874,
		-0.770605, 0.630788, 0.090956,
		37.891876, 33.000187, 47.736141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941284, 32.289536, 47.316692>,  <38.431301, 32.558636, 47.672474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941284, 32.289536, 47.316692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813389, 32.666698, 47.353973>,  <37.736652, 32.892998, 47.376343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813389, 32.666698, 47.353973>,  <37.941284, 32.289536, 47.316692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813389, 32.666698, 47.353973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448896, -0.064119, -0.891280,
		-0.834421, -0.326819, 0.443770,
		-0.319741, 0.942910, 0.093205,
		37.717468, 32.949570, 47.381935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260159, 32.266445, 47.049831>,  <37.941284, 32.289536, 47.316692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260159, 32.266445, 47.049831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378403, 32.648563, 47.048145>,  <37.449348, 32.877834, 47.047134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378403, 32.648563, 47.048145>,  <37.260159, 32.266445, 47.049831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378403, 32.648563, 47.048145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385253, 0.115172, -0.915596,
		-0.874183, 0.272281, 0.402078,
		0.295608, 0.955300, -0.004216,
		37.467087, 32.935154, 47.046879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612034, 32.652596, 46.906498>,  <37.260159, 32.266445, 47.049831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612034, 32.652596, 46.906498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950985, 32.825897, 46.783707>,  <37.154358, 32.929878, 46.710030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950985, 32.825897, 46.783707>,  <36.612034, 32.652596, 46.906498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950985, 32.825897, 46.783707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426715, 0.211568, -0.879291,
		-0.316009, 0.876088, 0.364155,
		0.847380, 0.433254, -0.306982,
		37.205200, 32.955875, 46.691612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289330, 33.031933, 46.379868>,  <36.612034, 32.652596, 46.906498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289330, 33.031933, 46.379868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685440, 33.072056, 46.341293>,  <36.923107, 33.096130, 46.318150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685440, 33.072056, 46.341293>,  <36.289330, 33.031933, 46.379868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685440, 33.072056, 46.341293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114832, 0.197754, -0.973502,
		-0.078575, 0.975106, 0.207349,
		0.990272, 0.100304, -0.096435,
		36.982521, 33.102146, 46.312363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423100, 33.704704, 45.958736>,  <36.289330, 33.031933, 46.379868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423100, 33.704704, 45.958736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719864, 33.439453, 45.919094>,  <36.897923, 33.280300, 45.895309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719864, 33.439453, 45.919094>,  <36.423100, 33.704704, 45.958736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719864, 33.439453, 45.919094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102173, 0.034263, -0.994176,
		0.662664, 0.747719, -0.042333,
		0.741914, -0.663130, -0.099102,
		36.942440, 33.240513, 45.889362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800938, 34.068401, 45.476986>,  <36.423100, 33.704704, 45.958736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800938, 34.068401, 45.476986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972576, 33.707150, 45.482998>,  <37.075558, 33.490398, 45.486607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972576, 33.707150, 45.482998>,  <36.800938, 34.068401, 45.476986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972576, 33.707150, 45.482998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128312, 0.044473, -0.990736,
		0.894098, 0.427051, 0.134966,
		0.429097, -0.903133, 0.015032,
		37.101307, 33.436211, 45.487507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519398, 34.144520, 45.197247>,  <36.800938, 34.068401, 45.476986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519398, 34.144520, 45.197247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409355, 33.762615, 45.152088>,  <37.343330, 33.533470, 45.124992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409355, 33.762615, 45.152088>,  <37.519398, 34.144520, 45.197247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409355, 33.762615, 45.152088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304592, 0.024819, -0.952160,
		0.911889, -0.296329, 0.283985,
		-0.275104, -0.954764, -0.112892,
		37.326824, 33.476185, 45.118221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109325, 33.744289, 44.940613>,  <37.519398, 34.144520, 45.197247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109325, 33.744289, 44.940613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797253, 33.529167, 44.812805>,  <37.610008, 33.400093, 44.736122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797253, 33.529167, 44.812805>,  <38.109325, 33.744289, 44.940613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797253, 33.529167, 44.812805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420421, -0.072564, -0.904423,
		0.463215, -0.839942, 0.282716,
		-0.780178, -0.537802, -0.319517,
		37.563198, 33.367828, 44.716949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336700, 33.170174, 44.647453>,  <38.109325, 33.744289, 44.940613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336700, 33.170174, 44.647453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968376, 33.182362, 44.491924>,  <37.747383, 33.189674, 44.398605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968376, 33.182362, 44.491924>,  <38.336700, 33.170174, 44.647453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968376, 33.182362, 44.491924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339058, -0.430169, -0.836657,
		-0.192752, -0.902234, 0.385772,
		-0.920807, 0.030468, -0.388826,
		37.692135, 33.191502, 44.375275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283195, 32.571587, 44.223675>,  <38.336700, 33.170174, 44.647453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283195, 32.571587, 44.223675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993324, 32.822960, 44.110600>,  <37.819401, 32.973782, 44.042755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993324, 32.822960, 44.110600>,  <38.283195, 32.571587, 44.223675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993324, 32.822960, 44.110600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243410, -0.150341, -0.958201,
		-0.644661, -0.763201, -0.044016,
		-0.724682, 0.628429, -0.282690,
		37.775921, 33.011490, 44.025791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053627, 32.292969, 43.525154>,  <38.283195, 32.571587, 44.223675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053627, 32.292969, 43.525154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906418, 32.663532, 43.556976>,  <37.818092, 32.885868, 43.576069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906418, 32.663532, 43.556976>,  <38.053627, 32.292969, 43.525154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906418, 32.663532, 43.556976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324010, 0.207967, -0.922912,
		-0.871536, -0.313879, -0.376703,
		-0.368025, 0.926407, 0.079551,
		37.796009, 32.941456, 43.580841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685940, 32.347343, 42.893993>,  <38.053627, 32.292969, 43.525154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685940, 32.347343, 42.893993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774986, 32.718189, 43.014595>,  <37.828415, 32.940697, 43.086956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774986, 32.718189, 43.014595>,  <37.685940, 32.347343, 42.893993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774986, 32.718189, 43.014595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393835, 0.197378, -0.897739,
		-0.891815, 0.318596, -0.321189,
		0.222621, 0.927113, 0.301499,
		37.841774, 32.996323, 43.105045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413593, 32.927563, 42.473396>,  <37.685940, 32.347343, 42.893993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413593, 32.927563, 42.473396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720676, 33.117607, 42.645397>,  <37.904926, 33.231632, 42.748596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720676, 33.117607, 42.645397>,  <37.413593, 32.927563, 42.473396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720676, 33.117607, 42.645397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311229, 0.310119, -0.898311,
		-0.560145, 0.823468, 0.090214,
		0.767707, 0.475107, 0.429999,
		37.950989, 33.260139, 42.774399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620628, 33.478859, 41.957592>,  <37.413593, 32.927563, 42.473396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620628, 33.478859, 41.957592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937321, 33.473320, 42.201878>,  <38.127335, 33.469997, 42.348450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937321, 33.473320, 42.201878>,  <37.620628, 33.478859, 41.957592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937321, 33.473320, 42.201878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579598, 0.332806, -0.743846,
		-0.192950, 0.942894, 0.271518,
		0.791730, -0.013846, 0.610714,
		38.174839, 33.469166, 42.385094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044518, 33.867676, 41.540207>,  <37.620628, 33.478859, 41.957592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044518, 33.867676, 41.540207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285595, 33.735580, 41.830780>,  <38.430241, 33.656322, 42.005123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285595, 33.735580, 41.830780>,  <38.044518, 33.867676, 41.540207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285595, 33.735580, 41.830780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796581, 0.302782, -0.523242,
		-0.047155, 0.894015, 0.445548,
		0.602691, -0.330242, 0.726433,
		38.466404, 33.636509, 42.048710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538376, 34.425438, 41.702003>,  <38.044518, 33.867676, 41.540207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538376, 34.425438, 41.702003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715996, 34.081497, 41.802784>,  <38.822567, 33.875134, 41.863251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715996, 34.081497, 41.802784>,  <38.538376, 34.425438, 41.702003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715996, 34.081497, 41.802784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677880, 0.138516, -0.722005,
		0.585916, 0.491399, 0.644383,
		0.444050, -0.859849, 0.251951,
		38.849213, 33.823544, 41.878368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261456, 34.616318, 41.694618>,  <38.538376, 34.425438, 41.702003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261456, 34.616318, 41.694618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240486, 34.217609, 41.670261>,  <39.227905, 33.978386, 41.655647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240486, 34.217609, 41.670261>,  <39.261456, 34.616318, 41.694618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240486, 34.217609, 41.670261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637359, 0.013544, -0.770448,
		0.768782, -0.079196, 0.634589,
		-0.052422, -0.996767, -0.060889,
		39.224758, 33.918579, 41.651993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869980, 34.418873, 41.623745>,  <39.261456, 34.616318, 41.694618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869980, 34.418873, 41.623745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636642, 34.137718, 41.460941>,  <39.496639, 33.969025, 41.363258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636642, 34.137718, 41.460941>,  <39.869980, 34.418873, 41.623745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636642, 34.137718, 41.460941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531177, 0.048945, -0.845846,
		0.614458, -0.709612, 0.344808,
		-0.583346, -0.702891, -0.407004,
		39.461639, 33.926849, 41.338840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377972, 33.948307, 41.292957>,  <39.869980, 34.418873, 41.623745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377972, 33.948307, 41.292957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012932, 33.870922, 41.148884>,  <39.793907, 33.824493, 41.062439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012932, 33.870922, 41.148884>,  <40.377972, 33.948307, 41.292957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012932, 33.870922, 41.148884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358916, 0.042817, -0.932387,
		0.195801, -0.980174, 0.030361,
		-0.912602, -0.193460, -0.360183,
		39.739151, 33.812885, 41.040829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489670, 33.493259, 40.751053>,  <40.377972, 33.948307, 41.292957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489670, 33.493259, 40.751053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127201, 33.640202, 40.667248>,  <39.909718, 33.728367, 40.616962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127201, 33.640202, 40.667248>,  <40.489670, 33.493259, 40.751053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127201, 33.640202, 40.667248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231067, 0.015155, -0.972820,
		-0.354200, -0.929955, -0.098618,
		-0.906173, 0.367360, -0.209514,
		39.855350, 33.750408, 40.604393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348003, 33.129219, 40.105064>,  <40.489670, 33.493259, 40.751053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348003, 33.129219, 40.105064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093983, 33.437805, 40.089344>,  <39.941570, 33.622959, 40.079910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093983, 33.437805, 40.089344>,  <40.348003, 33.129219, 40.105064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093983, 33.437805, 40.089344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352871, 0.244464, -0.903172,
		-0.687160, -0.587432, -0.427476,
		-0.635054, 0.771467, -0.039302,
		39.903465, 33.669247, 40.077553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832016, 33.158127, 39.427452>,  <40.348003, 33.129219, 40.105064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832016, 33.158127, 39.427452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890381, 33.524776, 39.576321>,  <39.925400, 33.744766, 39.665642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890381, 33.524776, 39.576321>,  <39.832016, 33.158127, 39.427452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890381, 33.524776, 39.576321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367112, 0.299168, -0.880753,
		-0.918661, 0.265144, -0.292850,
		0.145915, 0.916623, 0.372172,
		39.934155, 33.799763, 39.687973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640289, 33.635494, 38.771587>,  <39.832016, 33.158127, 39.427452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640289, 33.635494, 38.771587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909336, 33.781151, 39.029266>,  <40.070766, 33.868546, 39.183872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909336, 33.781151, 39.029266>,  <39.640289, 33.635494, 38.771587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909336, 33.781151, 39.029266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459764, 0.476479, -0.749390,
		-0.579828, 0.800231, 0.153071,
		0.672619, 0.364141, 0.644193,
		40.111122, 33.890392, 39.222523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672825, 34.330082, 38.664989>,  <39.640289, 33.635494, 38.771587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672825, 34.330082, 38.664989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013847, 34.198307, 38.827278>,  <40.218460, 34.119240, 38.924652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013847, 34.198307, 38.827278>,  <39.672825, 34.330082, 38.664989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013847, 34.198307, 38.827278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511036, 0.362889, -0.779201,
		0.109467, 0.871654, 0.477740,
		0.852560, -0.329439, 0.405723,
		40.269615, 34.099476, 38.948994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172939, 34.876198, 38.578487>,  <39.672825, 34.330082, 38.664989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172939, 34.876198, 38.578487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363300, 34.526051, 38.612553>,  <40.477516, 34.315964, 38.632992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363300, 34.526051, 38.612553>,  <40.172939, 34.876198, 38.578487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363300, 34.526051, 38.612553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562032, 0.228209, -0.795010,
		0.676488, 0.426214, 0.600588,
		0.475904, -0.875364, 0.085165,
		40.506073, 34.263443, 38.638103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962524, 34.959827, 38.436108>,  <40.172939, 34.876198, 38.578487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962524, 34.959827, 38.436108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848637, 34.583942, 38.360348>,  <40.780304, 34.358410, 38.314892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848637, 34.583942, 38.360348>,  <40.962524, 34.959827, 38.436108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848637, 34.583942, 38.360348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450771, 0.043128, -0.891597,
		0.846014, -0.339231, 0.411317,
		-0.284718, -0.939714, -0.189402,
		40.763222, 34.302029, 38.303528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491486, 34.515137, 38.135857>,  <40.962524, 34.959827, 38.436108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491486, 34.515137, 38.135857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131508, 34.431198, 37.982979>,  <40.915524, 34.380836, 37.891251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131508, 34.431198, 37.982979>,  <41.491486, 34.515137, 38.135857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131508, 34.431198, 37.982979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397138, -0.032699, -0.917176,
		0.179970, -0.977187, 0.112766,
		-0.899940, -0.209848, -0.382194,
		40.861526, 34.368244, 37.868320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145576, 34.774559, 37.975246>,  <41.491486, 34.515137, 38.135857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145576, 34.774559, 37.975246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543491, 34.792542, 37.938633>,  <42.782242, 34.803329, 37.916664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543491, 34.792542, 37.938633>,  <42.145576, 34.774559, 37.975246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543491, 34.792542, 37.938633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016190, 0.955833, 0.293465,
		0.100685, -0.290454, 0.951577,
		0.994787, 0.044954, -0.091536,
		42.841927, 34.806026, 37.911171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430096, 34.954601, 38.674500>,  <42.145576, 34.774559, 37.975246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430096, 34.954601, 38.674500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646950, 35.065548, 38.357224>,  <42.777061, 35.132114, 38.166859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646950, 35.065548, 38.357224>,  <42.430096, 34.954601, 38.674500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646950, 35.065548, 38.357224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219146, 0.957954, 0.185199,
		0.811210, 0.073421, 0.580127,
		0.542138, 0.277367, -0.793193,
		42.809589, 35.148758, 38.119267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369320, 35.614468, 38.836941>,  <42.430096, 34.954601, 38.674500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369320, 35.614468, 38.836941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603889, 35.616257, 38.512943>,  <42.744633, 35.617329, 38.318546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603889, 35.616257, 38.512943>,  <42.369320, 35.614468, 38.836941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603889, 35.616257, 38.512943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091950, 0.993153, 0.072051,
		0.804769, -0.116732, 0.581998,
		0.586423, 0.004470, -0.809992,
		42.779816, 35.617599, 38.269947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781105, 36.225998, 38.998890>,  <42.369320, 35.614468, 38.836941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781105, 36.225998, 38.998890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867706, 36.164177, 38.613300>,  <42.919666, 36.127087, 38.381947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867706, 36.164177, 38.613300>,  <42.781105, 36.225998, 38.998890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867706, 36.164177, 38.613300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223548, 0.969005, -0.105150,
		0.950344, -0.192729, 0.244339,
		0.216500, -0.154550, -0.963972,
		42.932655, 36.117813, 38.324108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505451, 36.598755, 38.843853>,  <42.781105, 36.225998, 38.998890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505451, 36.598755, 38.843853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315964, 36.550243, 38.494938>,  <43.202271, 36.521137, 38.285591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315964, 36.550243, 38.494938>,  <43.505451, 36.598755, 38.843853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315964, 36.550243, 38.494938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299977, 0.909021, -0.289300,
		0.828012, -0.398712, -0.394239,
		-0.473719, -0.121282, -0.872285,
		43.173847, 36.513859, 38.233253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850407, 36.992161, 38.388866>,  <43.505451, 36.598755, 38.843853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850407, 36.992161, 38.388866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513088, 36.923363, 38.185196>,  <43.310696, 36.882084, 38.062992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513088, 36.923363, 38.185196>,  <43.850407, 36.992161, 38.388866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513088, 36.923363, 38.185196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084096, 0.893511, -0.441097,
		0.530824, -0.414797, -0.739033,
		-0.843299, -0.171996, -0.509179,
		43.260098, 36.871765, 38.032440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038406, 37.141426, 37.662403>,  <43.850407, 36.992161, 38.388866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038406, 37.141426, 37.662403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646088, 37.195038, 37.719070>,  <43.410694, 37.227203, 37.753071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646088, 37.195038, 37.719070>,  <44.038406, 37.141426, 37.662403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646088, 37.195038, 37.719070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083406, 0.944914, -0.316513,
		-0.176288, -0.298619, -0.937949,
		-0.980798, 0.134028, 0.141671,
		43.351849, 37.235245, 37.761570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739933, 37.402889, 37.062084>,  <44.038406, 37.141426, 37.662403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739933, 37.402889, 37.062084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473991, 37.516800, 37.338310>,  <43.314426, 37.585144, 37.504044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473991, 37.516800, 37.338310>,  <43.739933, 37.402889, 37.062084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473991, 37.516800, 37.338310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000302, 0.924375, -0.381485,
		-0.746976, -0.253839, -0.614485,
		-0.664851, 0.284775, 0.690563,
		43.274536, 37.602234, 37.545479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197788, 37.747570, 36.692272>,  <43.739933, 37.402889, 37.062084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197788, 37.747570, 36.692272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168610, 37.871185, 37.071571>,  <43.151104, 37.945354, 37.299152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168610, 37.871185, 37.071571>,  <43.197788, 37.747570, 36.692272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168610, 37.871185, 37.071571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055087, 0.948081, -0.313221,
		-0.995813, -0.075085, -0.052134,
		-0.072945, 0.309038, 0.948248,
		43.146725, 37.963898, 37.356045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610294, 38.174900, 36.631779>,  <43.197788, 37.747570, 36.692272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610294, 38.174900, 36.631779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800621, 38.263481, 36.972263>,  <42.914818, 38.316631, 37.176552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800621, 38.263481, 36.972263>,  <42.610294, 38.174900, 36.631779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800621, 38.263481, 36.972263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079519, 0.974652, -0.209119,
		-0.875942, 0.031815, 0.481366,
		0.475817, 0.221454, 0.851208,
		42.943367, 38.329918, 37.227627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206497, 38.706215, 36.994587>,  <42.610294, 38.174900, 36.631779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206497, 38.706215, 36.994587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572826, 38.735466, 37.152531>,  <42.792625, 38.753017, 37.247295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572826, 38.735466, 37.152531>,  <42.206497, 38.706215, 36.994587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572826, 38.735466, 37.152531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030858, 0.967557, -0.250761,
		-0.400388, 0.241838, 0.883858,
		0.915826, 0.073127, 0.394861,
		42.847572, 38.757404, 37.270988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130524, 39.330601, 37.473602>,  <42.206497, 38.706215, 36.994587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130524, 39.330601, 37.473602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512024, 39.268860, 37.370426>,  <42.740925, 39.231815, 37.308521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512024, 39.268860, 37.370426>,  <42.130524, 39.330601, 37.473602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512024, 39.268860, 37.370426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069277, 0.947870, -0.311034,
		0.292506, 0.278779, 0.914725,
		0.953751, -0.154349, -0.257945,
		42.798149, 39.222557, 37.293041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524162, 40.055820, 37.562458>,  <42.130524, 39.330601, 37.473602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524162, 40.055820, 37.562458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760578, 39.830860, 37.331154>,  <42.902428, 39.695885, 37.192371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760578, 39.830860, 37.331154>,  <42.524162, 40.055820, 37.562458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760578, 39.830860, 37.331154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243963, 0.807927, -0.536411,
		0.768869, 0.175964, 0.614718,
		0.591036, -0.562398, -0.578261,
		42.937889, 39.662140, 37.157677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947632, 40.552277, 37.386471>,  <42.524162, 40.055820, 37.562458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947632, 40.552277, 37.386471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041496, 40.253452, 37.137684>,  <43.097813, 40.074158, 36.988411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041496, 40.253452, 37.137684>,  <42.947632, 40.552277, 37.386471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041496, 40.253452, 37.137684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437646, 0.652509, -0.618626,
		0.867988, -0.127037, 0.480062,
		0.234657, -0.747057, -0.621967,
		43.111893, 40.029335, 36.951096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626072, 40.715172, 37.201138>,  <42.947632, 40.552277, 37.386471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626072, 40.715172, 37.201138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488583, 40.470711, 36.915943>,  <43.406090, 40.324036, 36.744827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488583, 40.470711, 36.915943>,  <43.626072, 40.715172, 37.201138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488583, 40.470711, 36.915943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391021, 0.597148, -0.700369,
		0.853789, -0.519526, 0.033718,
		-0.343725, -0.611152, -0.712984,
		43.385464, 40.287365, 36.702049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144230, 40.727989, 36.661812>,  <43.626072, 40.715172, 37.201138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144230, 40.727989, 36.661812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798840, 40.613194, 36.495903>,  <43.591606, 40.544315, 36.396358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798840, 40.613194, 36.495903>,  <44.144230, 40.727989, 36.661812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798840, 40.613194, 36.495903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141199, 0.651922, -0.745024,
		0.484216, -0.701879, -0.522399,
		-0.863480, -0.286990, -0.414776,
		43.539795, 40.527096, 36.371471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297611, 40.739674, 36.017090>,  <44.144230, 40.727989, 36.661812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297611, 40.739674, 36.017090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897861, 40.753403, 36.013493>,  <43.658012, 40.761639, 36.011333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897861, 40.753403, 36.013493>,  <44.297611, 40.739674, 36.017090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897861, 40.753403, 36.013493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030075, 0.685008, -0.727914,
		-0.018824, -0.727726, -0.685609,
		-0.999370, 0.034322, -0.008992,
		43.598049, 40.763699, 36.010796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173428, 40.662727, 35.392353>,  <44.297611, 40.739674, 36.017090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173428, 40.662727, 35.392353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841335, 40.823593, 35.546749>,  <43.642082, 40.920113, 35.639385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841335, 40.823593, 35.546749>,  <44.173428, 40.662727, 35.392353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841335, 40.823593, 35.546749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047077, 0.639387, -0.767443,
		-0.555435, -0.655322, -0.511903,
		-0.830226, 0.402166, 0.385989,
		43.592266, 40.944244, 35.662544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719658, 40.811081, 34.870583>,  <44.173428, 40.662727, 35.392353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719658, 40.811081, 34.870583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551758, 41.047070, 35.146481>,  <43.451019, 41.188663, 35.312019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551758, 41.047070, 35.146481>,  <43.719658, 40.811081, 34.870583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551758, 41.047070, 35.146481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232847, 0.664504, -0.710082,
		-0.877265, -0.458660, -0.141551,
		-0.419747, 0.589971, 0.689744,
		43.425835, 41.224060, 35.353405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211319, 41.064823, 34.502304>,  <43.719658, 40.811081, 34.870583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211319, 41.064823, 34.502304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240349, 41.317425, 34.811092>,  <43.257767, 41.468987, 34.996365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240349, 41.317425, 34.811092>,  <43.211319, 41.064823, 34.502304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240349, 41.317425, 34.811092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057060, 0.775372, -0.628922,
		-0.995730, 0.001595, 0.092306,
		0.072575, 0.631503, 0.771969,
		43.262123, 41.506874, 35.042683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695702, 41.570858, 34.378006>,  <43.211319, 41.064823, 34.502304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695702, 41.570858, 34.378006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930805, 41.738533, 34.654793>,  <43.071865, 41.839138, 34.820866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930805, 41.738533, 34.654793>,  <42.695702, 41.570858, 34.378006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930805, 41.738533, 34.654793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162691, 0.899070, -0.406454,
		-0.792511, 0.126318, 0.596632,
		0.587757, 0.419186, 0.691972,
		43.107132, 41.864288, 34.862385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302567, 42.167358, 34.701839>,  <42.695702, 41.570858, 34.378006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302567, 42.167358, 34.701839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689278, 42.255432, 34.753777>,  <42.921303, 42.308277, 34.784939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689278, 42.255432, 34.753777>,  <42.302567, 42.167358, 34.701839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689278, 42.255432, 34.753777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140059, 0.881207, -0.451505,
		-0.213832, 0.418320, 0.882771,
		0.966778, 0.220186, 0.129841,
		42.979309, 42.321487, 34.792728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398869, 42.749844, 35.260063>,  <42.302567, 42.167358, 34.701839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398869, 42.749844, 35.260063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708832, 42.717102, 35.009361>,  <42.894810, 42.697456, 34.858940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708832, 42.717102, 35.009361>,  <42.398869, 42.749844, 35.260063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708832, 42.717102, 35.009361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341862, 0.779758, -0.524507,
		0.531644, 0.620708, 0.576261,
		0.774910, -0.081850, -0.626750,
		42.941303, 42.692547, 34.821335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476524, 43.399494, 35.093857>,  <42.398869, 42.749844, 35.260063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476524, 43.399494, 35.093857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692703, 43.202263, 34.821156>,  <42.822411, 43.083923, 34.657536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692703, 43.202263, 34.821156>,  <42.476524, 43.399494, 35.093857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692703, 43.202263, 34.821156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166095, 0.731814, -0.660954,
		0.824819, 0.470448, 0.313611,
		0.540450, -0.493079, -0.681753,
		42.854839, 43.054340, 34.616631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051228, 43.811195, 34.840321>,  <42.476524, 43.399494, 35.093857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051228, 43.811195, 34.840321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939003, 43.580017, 34.533787>,  <42.871670, 43.441311, 34.349865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939003, 43.580017, 34.533787>,  <43.051228, 43.811195, 34.840321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939003, 43.580017, 34.533787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013569, 0.800710, -0.598898,
		0.959741, -0.157628, -0.232490,
		-0.280560, -0.577942, -0.766335,
		42.854836, 43.406635, 34.303886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440323, 43.799347, 34.127613>,  <43.051228, 43.811195, 34.840321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440323, 43.799347, 34.127613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233727, 43.509880, 33.944515>,  <43.109768, 43.336197, 33.834656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233727, 43.509880, 33.944515>,  <43.440323, 43.799347, 34.127613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233727, 43.509880, 33.944515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794796, 0.604078, -0.058212,
		0.318641, 0.333750, -0.887175,
		-0.516495, -0.723672, -0.457747,
		43.078777, 43.292778, 33.807190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074463, 44.109451, 33.576290>,  <43.440323, 43.799347, 34.127613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074463, 44.109451, 33.576290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889256, 43.771198, 33.682514>,  <42.778133, 43.568245, 33.746250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889256, 43.771198, 33.682514>,  <43.074463, 44.109451, 33.576290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889256, 43.771198, 33.682514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878947, 0.476700, -0.014503,
		-0.114329, -0.240130, -0.963985,
		-0.463014, -0.845633, 0.265562,
		42.750351, 43.517509, 33.762184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418011, 44.449627, 33.466278>,  <43.074463, 44.109451, 33.576290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418011, 44.449627, 33.466278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337097, 44.070404, 33.564476>,  <42.288548, 43.842869, 33.623394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337097, 44.070404, 33.564476>,  <42.418011, 44.449627, 33.466278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337097, 44.070404, 33.564476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959949, 0.142334, -0.241326,
		0.193848, -0.284483, -0.938878,
		-0.202287, -0.948056, 0.245498,
		42.276409, 43.785988, 33.638126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020805, 43.925514, 32.935402>,  <42.418011, 44.449627, 33.466278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020805, 43.925514, 32.935402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903976, 43.822224, 33.303753>,  <41.833878, 43.760250, 33.524761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903976, 43.822224, 33.303753>,  <42.020805, 43.925514, 32.935402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903976, 43.822224, 33.303753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953922, 0.009458, -0.299905,
		0.068736, -0.966036, -0.249098,
		-0.292075, -0.258235, 0.920873,
		41.816353, 43.744755, 33.580017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600105, 43.471977, 32.673050>,  <42.020805, 43.925514, 32.935402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600105, 43.471977, 32.673050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709305, 43.455986, 32.288578>,  <42.774826, 43.446392, 32.057896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709305, 43.455986, 32.288578>,  <42.600105, 43.471977, 32.673050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709305, 43.455986, 32.288578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702825, -0.673950, 0.227657,
		-0.656891, -0.737694, -0.155891,
		0.273004, -0.039981, -0.961182,
		42.791206, 43.443993, 32.000225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605904, 42.847080, 32.520046>,  <42.600105, 43.471977, 32.673050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605904, 42.847080, 32.520046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843418, 43.001659, 32.237747>,  <42.985928, 43.094406, 32.068367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843418, 43.001659, 32.237747>,  <42.605904, 42.847080, 32.520046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843418, 43.001659, 32.237747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711050, -0.662545, 0.235459,
		-0.376595, -0.641633, -0.668194,
		0.593787, 0.386447, -0.705745,
		43.021553, 43.117592, 32.026024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910023, 42.384567, 31.988115>,  <42.605904, 42.847080, 32.520046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910023, 42.384567, 31.988115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124866, 42.690006, 32.131466>,  <43.253773, 42.873268, 32.217476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124866, 42.690006, 32.131466>,  <42.910023, 42.384567, 31.988115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124866, 42.690006, 32.131466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604898, -0.644788, 0.467276,
		0.587886, -0.034198, -0.808221,
		0.537111, 0.763596, 0.358375,
		43.285999, 42.919086, 32.238979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759666, 42.331215, 31.844477>,  <42.910023, 42.384567, 31.988115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759666, 42.331215, 31.844477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661304, 42.493713, 32.196499>,  <43.602287, 42.591213, 32.407711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661304, 42.493713, 32.196499>,  <43.759666, 42.331215, 31.844477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661304, 42.493713, 32.196499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433159, -0.766175, 0.474710,
		0.867123, 0.497938, 0.012440,
		-0.245907, 0.406243, 0.880055,
		43.587532, 42.615585, 32.460514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437382, 42.369503, 32.236732>,  <43.759666, 42.331215, 31.844477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437382, 42.369503, 32.236732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108341, 42.327805, 32.460327>,  <43.910919, 42.302784, 32.594482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108341, 42.327805, 32.460327>,  <44.437382, 42.369503, 32.236732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108341, 42.327805, 32.460327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371936, -0.842234, 0.390264,
		0.430113, 0.528937, 0.731593,
		-0.822597, -0.104248, 0.558986,
		43.861561, 42.296532, 32.628021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699894, 42.255486, 32.975170>,  <44.437382, 42.369503, 32.236732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699894, 42.255486, 32.975170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342613, 42.076050, 32.962826>,  <44.128242, 41.968388, 32.955418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342613, 42.076050, 32.962826>,  <44.699894, 42.255486, 32.975170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342613, 42.076050, 32.962826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399035, -0.822437, 0.405424,
		-0.207253, 0.349811, 0.913607,
		-0.893206, -0.448586, -0.030866,
		44.074650, 41.941475, 32.953568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703606, 41.899967, 33.579681>,  <44.699894, 42.255486, 32.975170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703606, 41.899967, 33.579681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423447, 41.729973, 33.350311>,  <44.255352, 41.627975, 33.212688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423447, 41.729973, 33.350311>,  <44.703606, 41.899967, 33.579681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423447, 41.729973, 33.350311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190287, -0.885512, 0.423863,
		-0.687916, 0.187759, 0.701084,
		-0.700402, -0.424989, -0.573430,
		44.213326, 41.602478, 33.178284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113686, 41.505959, 34.032936>,  <44.703606, 41.899967, 33.579681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113686, 41.505959, 34.032936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141113, 41.369198, 33.658043>,  <44.157570, 41.287140, 33.433109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141113, 41.369198, 33.658043>,  <44.113686, 41.505959, 34.032936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141113, 41.369198, 33.658043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218965, -0.911376, 0.348495,
		-0.973320, -0.229118, 0.012370,
		0.068573, -0.341906, -0.937229,
		44.161686, 41.266624, 33.376873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729988, 40.876152, 33.995037>,  <44.113686, 41.505959, 34.032936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729988, 40.876152, 33.995037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961246, 40.834461, 33.671337>,  <44.100002, 40.809448, 33.477116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961246, 40.834461, 33.671337>,  <43.729988, 40.876152, 33.995037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961246, 40.834461, 33.671337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094324, -0.976621, 0.193170,
		-0.810466, -0.188012, -0.554795,
		0.578143, -0.104227, -0.809251,
		44.134689, 40.803192, 33.428562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434513, 40.279037, 33.660809>,  <43.729988, 40.876152, 33.995037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434513, 40.279037, 33.660809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817398, 40.310234, 33.549343>,  <44.047131, 40.328953, 33.482464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817398, 40.310234, 33.549343>,  <43.434513, 40.279037, 33.660809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817398, 40.310234, 33.549343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144619, -0.963039, 0.227248,
		-0.250640, -0.257826, -0.933116,
		0.957217, 0.077989, -0.278663,
		44.104565, 40.333630, 33.465744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603046, 39.618599, 33.430347>,  <43.434513, 40.279037, 33.660809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603046, 39.618599, 33.430347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960571, 39.795940, 33.457298>,  <44.175087, 39.902344, 33.473469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960571, 39.795940, 33.457298>,  <43.603046, 39.618599, 33.430347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960571, 39.795940, 33.457298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414560, -0.874193, 0.252840,
		0.170993, -0.198061, -0.965160,
		0.893813, 0.443350, 0.067373,
		44.228714, 39.928944, 33.477509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044247, 39.133152, 33.100746>,  <43.603046, 39.618599, 33.430347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044247, 39.133152, 33.100746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287197, 39.365257, 33.317776>,  <44.432968, 39.504520, 33.447994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287197, 39.365257, 33.317776>,  <44.044247, 39.133152, 33.100746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287197, 39.365257, 33.317776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501973, -0.809693, 0.304007,
		0.615724, 0.087712, -0.783065,
		0.607377, 0.580262, 0.542577,
		44.469410, 39.539337, 33.480549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644123, 38.712864, 33.005222>,  <44.044247, 39.133152, 33.100746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644123, 38.712864, 33.005222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.681576, 38.947227, 33.327202>,  <44.704048, 39.087845, 33.520390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.681576, 38.947227, 33.327202>,  <44.644123, 38.712864, 33.005222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681576, 38.947227, 33.327202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322598, -0.782734, 0.532220,
		0.941894, 0.209843, -0.262302,
		0.093630, 0.585913, 0.804947,
		44.709663, 39.123001, 33.568687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371410, 38.587990, 33.245441>,  <44.644123, 38.712864, 33.005222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371410, 38.587990, 33.245441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154610, 38.769943, 33.528091>,  <45.024529, 38.879116, 33.697681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154610, 38.769943, 33.528091>,  <45.371410, 38.587990, 33.245441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154610, 38.769943, 33.528091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328508, -0.659258, 0.676359,
		0.773513, 0.598718, 0.207884,
		-0.541997, 0.454881, 0.706628,
		44.992012, 38.906406, 33.740078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812756, 38.508461, 33.867191>,  <45.371410, 38.587990, 33.245441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812756, 38.508461, 33.867191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458614, 38.573009, 34.041592>,  <45.246128, 38.611740, 34.146233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458614, 38.573009, 34.041592>,  <45.812756, 38.508461, 33.867191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458614, 38.573009, 34.041592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101346, -0.848281, 0.519758,
		0.453730, 0.504359, 0.734677,
		-0.885357, 0.161373, 0.436005,
		45.193008, 38.621422, 34.172394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906113, 38.360786, 34.568172>,  <45.812756, 38.508461, 33.867191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906113, 38.360786, 34.568172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511509, 38.316395, 34.520023>,  <45.274746, 38.289761, 34.491135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511509, 38.316395, 34.520023>,  <45.906113, 38.360786, 34.568172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511509, 38.316395, 34.520023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026227, -0.832834, 0.552901,
		-0.161608, 0.542284, 0.824507,
		-0.986506, -0.110978, -0.120370,
		45.215557, 38.283100, 34.483913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569622, 38.306511, 35.224667>,  <45.906113, 38.360786, 34.568172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569622, 38.306511, 35.224667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304169, 38.146709, 34.971687>,  <45.144897, 38.050827, 34.819901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304169, 38.146709, 34.971687>,  <45.569622, 38.306511, 35.224667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304169, 38.146709, 34.971687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000188, -0.845359, 0.534198,
		-0.748058, 0.354630, 0.560934,
		-0.663633, -0.399506, -0.632444,
		45.105080, 38.026859, 34.781956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126503, 38.103889, 35.686710>,  <45.569622, 38.306511, 35.224667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126503, 38.103889, 35.686710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.094158, 37.893772, 35.347885>,  <45.074753, 37.767700, 35.144588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.094158, 37.893772, 35.347885>,  <45.126503, 38.103889, 35.686710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094158, 37.893772, 35.347885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145284, -0.834562, 0.531412,
		-0.986080, 0.166037, -0.008832,
		-0.080863, -0.525297, -0.847068,
		45.069901, 37.736183, 35.093765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504253, 37.746105, 35.760342>,  <45.126503, 38.103889, 35.686710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504253, 37.746105, 35.760342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708366, 37.549942, 35.477749>,  <44.830833, 37.432243, 35.308193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708366, 37.549942, 35.477749>,  <44.504253, 37.746105, 35.760342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708366, 37.549942, 35.477749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309583, -0.871155, 0.381113,
		-0.802355, 0.024240, -0.596355,
		0.510279, -0.490409, -0.706480,
		44.861450, 37.402821, 35.265804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075558, 37.119526, 35.545586>,  <44.504253, 37.746105, 35.760342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075558, 37.119526, 35.545586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450893, 37.025249, 35.444420>,  <44.676094, 36.968681, 35.383720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450893, 37.025249, 35.444420>,  <44.075558, 37.119526, 35.545586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450893, 37.025249, 35.444420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146498, -0.933727, 0.326638,
		-0.313136, -0.269446, -0.910683,
		0.938341, -0.235696, -0.252910,
		44.732395, 36.954540, 35.368546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966908, 36.435707, 35.566814>,  <44.075558, 37.119526, 35.545586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966908, 36.435707, 35.566814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364464, 36.455627, 35.527428>,  <44.602997, 36.467579, 35.503796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364464, 36.455627, 35.527428>,  <43.966908, 36.435707, 35.566814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364464, 36.455627, 35.527428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076663, -0.953481, 0.291542,
		-0.079362, -0.297310, -0.951477,
		0.993894, 0.049805, -0.098463,
		44.662632, 36.470570, 35.497890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243801, 35.821053, 35.080566>,  <43.966908, 36.435707, 35.566814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243801, 35.821053, 35.080566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517483, 35.971462, 35.330517>,  <44.681690, 36.061707, 35.480488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517483, 35.971462, 35.330517>,  <44.243801, 35.821053, 35.080566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517483, 35.971462, 35.330517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163178, -0.914037, 0.371361,
		0.710800, -0.152122, -0.686748,
		0.684205, 0.376026, 0.624875,
		44.722744, 36.084270, 35.517979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858379, 35.370930, 35.128918>,  <44.243801, 35.821053, 35.080566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858379, 35.370930, 35.128918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905273, 35.583443, 35.464535>,  <44.933411, 35.710949, 35.665905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905273, 35.583443, 35.464535>,  <44.858379, 35.370930, 35.128918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905273, 35.583443, 35.464535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075258, -0.847195, 0.525925,
		0.990249, 0.001490, -0.139300,
		0.117231, 0.531280, 0.839046,
		44.940441, 35.742828, 35.716248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279037, 34.940670, 35.527214>,  <44.858379, 35.370930, 35.128918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279037, 34.940670, 35.527214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142494, 35.193092, 35.805851>,  <45.060566, 35.344547, 35.973034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142494, 35.193092, 35.805851>,  <45.279037, 34.940670, 35.527214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142494, 35.193092, 35.805851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058203, -0.753876, 0.654433,
		0.938129, 0.182855, 0.294073,
		-0.341361, 0.631059, 0.696590,
		45.040085, 35.382408, 36.014828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745079, 34.768906, 36.006615>,  <45.279037, 34.940670, 35.527214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745079, 34.768906, 36.006615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.405876, 34.921139, 36.154152>,  <45.202354, 35.012478, 36.242672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.405876, 34.921139, 36.154152>,  <45.745079, 34.768906, 36.006615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.405876, 34.921139, 36.154152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112842, -0.809635, 0.575984,
		0.517836, 0.446817, 0.729521,
		-0.848005, 0.380586, 0.368839,
		45.151474, 35.035313, 36.264805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.321541, 34.989868, 36.326591>,  <45.745079, 34.768906, 36.006615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.321541, 34.989868, 36.326591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.035275, 34.990082, 36.605968>,  <45.863514, 34.990208, 36.773594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.035275, 34.990082, 36.605968>,  <46.321541, 34.989868, 36.326591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.035275, 34.990082, 36.605968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493945, -0.706618, 0.506665,
		0.493799, 0.707595, 0.505442,
		-0.715668, 0.000531, 0.698440,
		45.820576, 34.990242, 36.815502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.050461, 35.118443, 36.346821>,  <46.321541, 34.989868, 36.326591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.050461, 35.118443, 36.346821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150524, 35.393452, 36.074135>,  <47.210560, 35.558456, 35.910522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150524, 35.393452, 36.074135>,  <47.050461, 35.118443, 36.346821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.150524, 35.393452, 36.074135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882805, -0.451103, -0.131000,
		-0.397588, -0.569050, -0.719796,
		0.250157, 0.687524, -0.681713,
		47.225571, 35.599709, 35.869621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138744, 34.827671, 35.678574>,  <47.050461, 35.118443, 36.346821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138744, 34.827671, 35.678574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.385303, 35.137276, 35.736469>,  <47.533241, 35.323040, 35.771206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.385303, 35.137276, 35.736469>,  <47.138744, 34.827671, 35.678574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.385303, 35.137276, 35.736469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778035, -0.570359, -0.263348,
		-0.121282, 0.274940, -0.953781,
		0.616402, 0.774015, 0.144739,
		47.570225, 35.369480, 35.779892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.535679, 35.020706, 34.953674>,  <47.138744, 34.827671, 35.678574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.535679, 35.020706, 34.953674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715816, 35.069550, 35.307461>,  <47.823898, 35.098858, 35.519733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715816, 35.069550, 35.307461>,  <47.535679, 35.020706, 34.953674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.715816, 35.069550, 35.307461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838064, -0.399490, -0.371559,
		0.307963, 0.908568, -0.282245,
		0.450341, 0.122113, 0.884467,
		47.850918, 35.106182, 35.572800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.162319, 33.274963, 48.449005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.832561, 33.061188, 48.374439>,  <32.634708, 32.932922, 48.329700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.832561, 33.061188, 48.374439>,  <33.162319, 33.274963, 48.449005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832561, 33.061188, 48.374439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030407, 0.287045, -0.957434,
		0.565199, -0.794971, -0.220387,
		-0.824394, -0.534440, -0.186411,
		32.585243, 32.900856, 48.318516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290386, 32.977634, 47.747967>,  <33.162319, 33.274963, 48.449005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290386, 32.977634, 47.747967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.904671, 32.885151, 47.799637>,  <32.673241, 32.829662, 47.830639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.904671, 32.885151, 47.799637>,  <33.290386, 32.977634, 47.747967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904671, 32.885151, 47.799637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154963, 0.097029, -0.983144,
		0.214778, -0.968054, -0.129393,
		-0.964291, -0.231209, 0.129172,
		32.615383, 32.815788, 47.838390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140579, 32.421555, 47.343182>,  <33.290386, 32.977634, 47.747967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140579, 32.421555, 47.343182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.802341, 32.617226, 47.428665>,  <32.599400, 32.734627, 47.479954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.802341, 32.617226, 47.428665>,  <33.140579, 32.421555, 47.343182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802341, 32.617226, 47.428665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285823, -0.076784, -0.955201,
		-0.450853, -0.868799, 0.204746,
		-0.845599, 0.489176, 0.213704,
		32.548660, 32.763977, 47.492775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523010, 31.970074, 47.109138>,  <33.140579, 32.421555, 47.343182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523010, 31.970074, 47.109138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.443760, 32.361931, 47.122093>,  <32.396210, 32.597046, 47.129864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.443760, 32.361931, 47.122093>,  <32.523010, 31.970074, 47.109138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443760, 32.361931, 47.122093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139039, 0.004615, -0.990276,
		-0.970266, -0.200697, 0.135294,
		-0.198122, 0.979643, 0.032383,
		32.384323, 32.655823, 47.131809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938509, 32.068226, 46.735653>,  <32.523010, 31.970074, 47.109138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938509, 32.068226, 46.735653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.065823, 32.447422, 46.736515>,  <32.142212, 32.674942, 46.737030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.065823, 32.447422, 46.736515>,  <31.938509, 32.068226, 46.735653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065823, 32.447422, 46.736515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152053, 0.053290, -0.986935,
		-0.935722, 0.313799, 0.161107,
		0.318284, 0.947993, 0.002151,
		32.161308, 32.731819, 46.737160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556427, 32.417061, 46.204594>,  <31.938509, 32.068226, 46.735653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556427, 32.417061, 46.204594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.848358, 32.678135, 46.285934>,  <32.023518, 32.834778, 46.334740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.848358, 32.678135, 46.285934>,  <31.556427, 32.417061, 46.204594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848358, 32.678135, 46.285934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007732, 0.305317, -0.952219,
		-0.683587, 0.693384, 0.227876,
		0.729828, 0.652687, 0.203350,
		32.067307, 32.873940, 46.346939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357008, 33.082165, 45.890869>,  <31.556427, 32.417061, 46.204594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357008, 33.082165, 45.890869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.755674, 33.064495, 45.918297>,  <31.994875, 33.053894, 45.934753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.755674, 33.064495, 45.918297>,  <31.357008, 33.082165, 45.890869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755674, 33.064495, 45.918297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080981, 0.435699, -0.896442,
		0.009722, 0.899008, 0.437824,
		0.996668, -0.044170, 0.068567,
		32.054676, 33.051243, 45.938866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569342, 33.577045, 45.419144>,  <31.357008, 33.082165, 45.890869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569342, 33.577045, 45.419144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.916512, 33.387367, 45.478268>,  <32.124813, 33.273560, 45.513744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.916512, 33.387367, 45.478268>,  <31.569342, 33.577045, 45.419144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916512, 33.387367, 45.478268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348376, 0.369046, -0.861649,
		0.354039, 0.799340, 0.485501,
		0.867923, -0.474194, 0.147814,
		32.176888, 33.245110, 45.522614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194111, 34.064499, 45.361450>,  <31.569342, 33.577045, 45.419144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194111, 34.064499, 45.361450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.365776, 33.708611, 45.299202>,  <32.468777, 33.495079, 45.261852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.365776, 33.708611, 45.299202>,  <32.194111, 34.064499, 45.361450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365776, 33.708611, 45.299202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507271, 0.379978, -0.773494,
		0.747325, 0.253014, 0.614402,
		0.429164, -0.889719, -0.155620,
		32.494526, 33.441696, 45.252518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957085, 34.147102, 45.380642>,  <32.194111, 34.064499, 45.361450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957085, 34.147102, 45.380642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.865913, 33.834839, 45.147877>,  <32.811211, 33.647480, 45.008217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.865913, 33.834839, 45.147877>,  <32.957085, 34.147102, 45.380642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865913, 33.834839, 45.147877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709831, 0.275858, -0.648107,
		0.666474, -0.560783, 0.491259,
		-0.227929, -0.780657, -0.581913,
		32.797535, 33.600643, 44.973301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653095, 33.974030, 44.982403>,  <32.957085, 34.147102, 45.380642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653095, 33.974030, 44.982403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.349766, 33.786606, 44.801117>,  <33.167770, 33.674152, 44.692345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.349766, 33.786606, 44.801117>,  <33.653095, 33.974030, 44.982403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349766, 33.786606, 44.801117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366145, 0.269063, -0.890810,
		0.539341, -0.841461, -0.032475,
		-0.758320, -0.468560, -0.453214,
		33.122269, 33.646038, 44.665154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970154, 33.577000, 44.395905>,  <33.653095, 33.974030, 44.982403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970154, 33.577000, 44.395905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.585888, 33.624096, 44.295296>,  <33.355328, 33.652351, 44.234932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.585888, 33.624096, 44.295296>,  <33.970154, 33.577000, 44.395905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585888, 33.624096, 44.295296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277699, 0.397317, -0.874656,
		-0.003047, -0.910097, -0.414384,
		-0.960663, 0.117739, -0.251522,
		33.297688, 33.659416, 44.219837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985977, 33.275875, 43.747589>,  <33.970154, 33.577000, 44.395905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985977, 33.275875, 43.747589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663715, 33.511505, 43.772621>,  <33.470360, 33.652882, 43.787640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663715, 33.511505, 43.772621>,  <33.985977, 33.275875, 43.747589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663715, 33.511505, 43.772621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185514, 0.351219, -0.917731,
		-0.562593, -0.727761, -0.392242,
		-0.805651, 0.589075, 0.062583,
		33.422020, 33.688229, 43.791397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652607, 33.119930, 43.075871>,  <33.985977, 33.275875, 43.747589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652607, 33.119930, 43.075871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.514370, 33.469086, 43.213646>,  <33.431427, 33.678577, 43.296310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.514370, 33.469086, 43.213646>,  <33.652607, 33.119930, 43.075871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514370, 33.469086, 43.213646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069633, 0.389899, -0.918221,
		-0.935799, -0.293341, -0.195526,
		-0.345588, 0.872886, 0.344441,
		33.410694, 33.730953, 43.316978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250805, 33.211887, 42.618904>,  <33.652607, 33.119930, 43.075871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250805, 33.211887, 42.618904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.310844, 33.560574, 42.805485>,  <33.346867, 33.769787, 42.917435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.310844, 33.560574, 42.805485>,  <33.250805, 33.211887, 42.618904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310844, 33.560574, 42.805485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011935, 0.470168, -0.882496,
		-0.988599, 0.138028, 0.060168,
		0.150099, 0.871717, 0.466455,
		33.355873, 33.822090, 42.945423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920471, 33.769043, 42.270844>,  <33.250805, 33.211887, 42.618904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920471, 33.769043, 42.270844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.208805, 33.957523, 42.474163>,  <33.381805, 34.070610, 42.596153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.208805, 33.957523, 42.474163>,  <32.920471, 33.769043, 42.270844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208805, 33.957523, 42.474163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198197, 0.562606, -0.802616,
		-0.664162, 0.679299, 0.312158,
		0.720838, 0.471198, 0.508296,
		33.425056, 34.098885, 42.626652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882732, 34.460487, 42.012928>,  <32.920471, 33.769043, 42.270844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882732, 34.460487, 42.012928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.240955, 34.450981, 42.190651>,  <33.455891, 34.445278, 42.297283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.240955, 34.450981, 42.190651>,  <32.882732, 34.460487, 42.012928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240955, 34.450981, 42.190651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358763, 0.629203, -0.689487,
		-0.263172, 0.776877, 0.572016,
		0.895561, -0.023764, 0.444303,
		33.509624, 34.443851, 42.323940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109489, 35.168423, 42.174400>,  <32.882732, 34.460487, 42.012928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109489, 35.168423, 42.174400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.442684, 34.948830, 42.146839>,  <33.642601, 34.817074, 42.130302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.442684, 34.948830, 42.146839>,  <33.109489, 35.168423, 42.174400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442684, 34.948830, 42.146839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344971, 0.612677, -0.711071,
		0.432579, 0.568546, 0.699736,
		0.832989, -0.548983, -0.068899,
		33.692581, 34.784134, 42.126171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543674, 35.628113, 41.845764>,  <33.109489, 35.168423, 42.174400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543674, 35.628113, 41.845764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.751503, 35.286343, 41.846207>,  <33.876198, 35.081280, 41.846470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.751503, 35.286343, 41.846207>,  <33.543674, 35.628113, 41.845764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751503, 35.286343, 41.846207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457248, 0.276958, -0.845114,
		0.721784, 0.439599, 0.534584,
		0.519569, -0.854428, 0.001102,
		33.907375, 35.030014, 41.846539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266193, 35.831173, 41.649544>,  <33.543674, 35.628113, 41.845764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266193, 35.831173, 41.649544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228924, 35.440144, 41.573990>,  <34.206562, 35.205528, 41.528660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228924, 35.440144, 41.573990>,  <34.266193, 35.831173, 41.649544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228924, 35.440144, 41.573990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080722, 0.181666, -0.980041,
		0.992372, -0.106563, 0.061985,
		-0.093175, -0.977569, -0.188883,
		34.200970, 35.146873, 41.517326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903240, 35.539909, 41.400105>,  <34.266193, 35.831173, 41.649544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903240, 35.539909, 41.400105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638641, 35.270786, 41.267593>,  <34.479881, 35.109314, 41.188087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638641, 35.270786, 41.267593>,  <34.903240, 35.539909, 41.400105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638641, 35.270786, 41.267593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295703, 0.171948, -0.939677,
		0.689187, -0.719556, 0.085208,
		-0.661499, -0.672809, -0.331280,
		34.440193, 35.068943, 41.168209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170612, 35.296028, 40.744278>,  <34.903240, 35.539909, 41.400105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170612, 35.296028, 40.744278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788811, 35.177574, 40.758247>,  <34.559731, 35.106503, 40.766628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788811, 35.177574, 40.758247>,  <35.170612, 35.296028, 40.744278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788811, 35.177574, 40.758247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001648, -0.111863, -0.993722,
		0.298187, -0.948571, 0.106286,
		-0.954506, -0.296140, 0.034920,
		34.502460, 35.088734, 40.768723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739655, 34.792175, 40.858952>,  <35.170612, 35.296028, 40.744278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739655, 34.792175, 40.858952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083042, 34.986305, 40.792629>,  <36.289074, 35.102783, 40.752834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083042, 34.986305, 40.792629>,  <35.739655, 34.792175, 40.858952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083042, 34.986305, 40.792629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202825, -0.024334, 0.978913,
		0.471055, -0.873996, -0.119325,
		0.858469, 0.485324, -0.165805,
		36.340584, 35.131901, 40.742889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161095, 34.382286, 41.260056>,  <35.739655, 34.792175, 40.858952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161095, 34.382286, 41.260056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.353630, 34.723015, 41.177391>,  <36.469151, 34.927452, 41.127792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.353630, 34.723015, 41.177391>,  <36.161095, 34.382286, 41.260056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353630, 34.723015, 41.177391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377541, 0.011305, 0.925924,
		0.791060, -0.523707, -0.316157,
		0.481338, 0.851824, -0.206664,
		36.498032, 34.978561, 41.115391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855331, 34.399303, 41.501095>,  <36.161095, 34.382286, 41.260056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855331, 34.399303, 41.501095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.762276, 34.787876, 41.482323>,  <36.706440, 35.021019, 41.471062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.762276, 34.787876, 41.482323>,  <36.855331, 34.399303, 41.501095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762276, 34.787876, 41.482323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137011, 0.080504, 0.987293,
		0.962863, 0.223256, -0.151825,
		-0.232641, 0.971430, -0.046926,
		36.692482, 35.079304, 41.468246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420975, 34.859921, 41.958782>,  <36.855331, 34.399303, 41.501095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420975, 34.859921, 41.958782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071308, 35.046783, 41.905724>,  <36.861507, 35.158901, 41.873886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071308, 35.046783, 41.905724>,  <37.420975, 34.859921, 41.958782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071308, 35.046783, 41.905724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070904, 0.393006, 0.916798,
		0.480418, 0.792031, -0.376677,
		-0.874169, 0.467155, -0.132649,
		36.809059, 35.186932, 41.865929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591736, 35.555386, 42.294289>,  <37.420975, 34.859921, 41.958782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591736, 35.555386, 42.294289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195114, 35.509624, 42.269886>,  <36.957138, 35.482166, 42.255245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195114, 35.509624, 42.269886>,  <37.591736, 35.555386, 42.294289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195114, 35.509624, 42.269886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107031, 0.456662, 0.883179,
		-0.073179, 0.882254, -0.465052,
		-0.991559, -0.114405, -0.061010,
		36.897648, 35.475304, 42.251583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434002, 36.103397, 42.687592>,  <37.591736, 35.555386, 42.294289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434002, 36.103397, 42.687592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092503, 35.900761, 42.639469>,  <36.887604, 35.779179, 42.610596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.092503, 35.900761, 42.639469>,  <37.434002, 36.103397, 42.687592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092503, 35.900761, 42.639469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283852, 0.259131, 0.923189,
		-0.436505, 0.822323, -0.365031,
		-0.853751, -0.506592, -0.120306,
		36.836376, 35.748783, 42.603378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921478, 36.537331, 42.991398>,  <37.434002, 36.103397, 42.687592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921478, 36.537331, 42.991398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.756504, 36.172977, 42.996994>,  <36.657520, 35.954365, 43.000351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.756504, 36.172977, 42.996994>,  <36.921478, 36.537331, 42.991398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756504, 36.172977, 42.996994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394598, 0.192467, 0.898470,
		-0.821090, 0.365042, -0.438812,
		-0.412436, -0.910879, 0.013987,
		36.632774, 35.899715, 43.001190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116604, 36.544315, 43.187317>,  <36.921478, 36.537331, 42.991398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116604, 36.544315, 43.187317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.278847, 36.190422, 43.279167>,  <36.376190, 35.978085, 43.334278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.278847, 36.190422, 43.279167>,  <36.116604, 36.544315, 43.187317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278847, 36.190422, 43.279167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368954, 0.071368, 0.926704,
		-0.836277, -0.460594, -0.297480,
		0.405604, -0.884737, 0.229621,
		36.400528, 35.924999, 43.348053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623390, 36.285725, 43.577461>,  <36.116604, 36.544315, 43.187317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623390, 36.285725, 43.577461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967403, 36.100716, 43.663635>,  <36.173813, 35.989708, 43.715340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967403, 36.100716, 43.663635>,  <35.623390, 36.285725, 43.577461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967403, 36.100716, 43.663635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261518, -0.037038, 0.964488,
		-0.438122, -0.885831, -0.152813,
		0.860033, -0.462527, 0.215434,
		36.225414, 35.961956, 43.728264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355846, 35.831516, 43.927353>,  <35.623390, 36.285725, 43.577461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355846, 35.831516, 43.927353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742821, 35.840275, 44.028225>,  <35.975006, 35.845528, 44.088749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742821, 35.840275, 44.028225>,  <35.355846, 35.831516, 43.927353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742821, 35.840275, 44.028225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248027, -0.117026, 0.961659,
		0.050566, -0.992888, -0.107784,
		0.967433, 0.021894, 0.252181,
		36.033051, 35.846844, 44.103878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488609, 35.195076, 44.268150>,  <35.355846, 35.831516, 43.927353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488609, 35.195076, 44.268150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785381, 35.438335, 44.381077>,  <35.963444, 35.584290, 44.448833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785381, 35.438335, 44.381077>,  <35.488609, 35.195076, 44.268150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785381, 35.438335, 44.381077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151835, -0.257736, 0.954211,
		0.653063, -0.750820, -0.098884,
		0.741926, 0.608146, 0.282319,
		36.007957, 35.620781, 44.465771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890835, 34.787300, 44.618420>,  <35.488609, 35.195076, 44.268150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890835, 34.787300, 44.618420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008774, 35.141357, 44.762413>,  <36.079536, 35.353790, 44.848808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008774, 35.141357, 44.762413>,  <35.890835, 34.787300, 44.618420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008774, 35.141357, 44.762413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222049, -0.302949, 0.926777,
		0.929387, -0.353189, 0.107222,
		0.294845, 0.885144, 0.359982,
		36.097229, 35.406902, 44.870407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225609, 34.736187, 45.196690>,  <35.890835, 34.787300, 44.618420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225609, 34.736187, 45.196690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086117, 35.110123, 45.223415>,  <36.002422, 35.334484, 45.239452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086117, 35.110123, 45.223415>,  <36.225609, 34.736187, 45.196690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086117, 35.110123, 45.223415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432853, -0.223884, 0.873221,
		0.831280, 0.275596, 0.482723,
		-0.348730, 0.934839, 0.066818,
		35.981499, 35.390575, 45.243462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446098, 34.952709, 45.779541>,  <36.225609, 34.736187, 45.196690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446098, 34.952709, 45.779541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140583, 35.206059, 45.729801>,  <35.957275, 35.358070, 45.699959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140583, 35.206059, 45.729801>,  <36.446098, 34.952709, 45.779541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140583, 35.206059, 45.729801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368028, -0.269064, 0.890034,
		0.530267, 0.725562, 0.438607,
		-0.763788, 0.633376, -0.124351,
		35.911446, 35.396072, 45.692497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333420, 35.227905, 46.410969>,  <36.446098, 34.952709, 45.779541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333420, 35.227905, 46.410969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996418, 35.318275, 46.215359>,  <35.794216, 35.372498, 46.097992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996418, 35.318275, 46.215359>,  <36.333420, 35.227905, 46.410969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996418, 35.318275, 46.215359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530730, -0.192588, 0.825370,
		0.092294, 0.954917, 0.282162,
		-0.842501, 0.225929, -0.489028,
		35.743668, 35.386055, 46.068649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005398, 35.601643, 46.873405>,  <36.333420, 35.227905, 46.410969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005398, 35.601643, 46.873405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707092, 35.486782, 46.632946>,  <35.528107, 35.417866, 46.488670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707092, 35.486782, 46.632946>,  <36.005398, 35.601643, 46.873405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707092, 35.486782, 46.632946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566391, -0.201808, 0.799046,
		-0.350763, 0.936386, -0.012138,
		-0.745766, -0.287150, -0.601147,
		35.483364, 35.400639, 46.452602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361092, 35.886230, 47.064667>,  <36.005398, 35.601643, 46.873405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361092, 35.886230, 47.064667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.241985, 35.566544, 46.855827>,  <35.170521, 35.374733, 46.730522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.241985, 35.566544, 46.855827>,  <35.361092, 35.886230, 47.064667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241985, 35.566544, 46.855827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679967, -0.206311, 0.703620,
		-0.670060, 0.564522, -0.482010,
		-0.297765, -0.799219, -0.522097,
		35.152657, 35.326778, 46.699200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663662, 35.896671, 47.025726>,  <35.361092, 35.886230, 47.064667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663662, 35.896671, 47.025726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.754185, 35.508263, 46.994984>,  <34.808498, 35.275219, 46.976540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.754185, 35.508263, 46.994984>,  <34.663662, 35.896671, 47.025726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754185, 35.508263, 46.994984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637622, -0.207327, 0.741926,
		-0.736359, -0.118896, -0.666062,
		0.226305, -0.971020, -0.076857,
		34.822075, 35.216957, 46.971928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.691036, 35.015518, 47.061115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.058960, 34.878765, 47.138126>,  <34.279713, 34.796715, 47.184334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.058960, 34.878765, 47.138126>,  <33.691036, 35.015518, 47.061115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058960, 34.878765, 47.138126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356231, -0.521959, 0.775021,
		-0.164474, -0.781456, -0.601892,
		0.919808, -0.341883, 0.192530,
		34.334904, 34.776199, 47.195885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624462, 34.208118, 47.222305>,  <33.691036, 35.015518, 47.061115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624462, 34.208118, 47.222305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.980854, 34.327049, 47.359562>,  <34.194691, 34.398407, 47.441917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.980854, 34.327049, 47.359562>,  <33.624462, 34.208118, 47.222305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980854, 34.327049, 47.359562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249565, -0.310649, 0.917178,
		0.379296, -0.902827, -0.202581,
		0.890984, 0.297325, 0.343141,
		34.248150, 34.416248, 47.462505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802883, 33.619682, 47.769085>,  <33.624462, 34.208118, 47.222305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802883, 33.619682, 47.769085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.064533, 33.907978, 47.860878>,  <34.221523, 34.080956, 47.915955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.064533, 33.907978, 47.860878>,  <33.802883, 33.619682, 47.769085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064533, 33.907978, 47.860878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063353, -0.354537, 0.932893,
		0.753731, -0.595688, -0.277571,
		0.654122, 0.720735, 0.229487,
		34.260769, 34.124199, 47.929726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393024, 33.347939, 48.045338>,  <33.802883, 33.619682, 47.769085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393024, 33.347939, 48.045338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385921, 33.719868, 48.192368>,  <34.381660, 33.943027, 48.280586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385921, 33.719868, 48.192368>,  <34.393024, 33.347939, 48.045338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385921, 33.719868, 48.192368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224202, -0.354566, 0.907753,
		0.974381, 0.098530, -0.202173,
		-0.017757, 0.929825, 0.367573,
		34.380596, 33.998814, 48.302639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989822, 33.364948, 48.531845>,  <34.393024, 33.347939, 48.045338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989822, 33.364948, 48.531845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757641, 33.676590, 48.626564>,  <34.618332, 33.863575, 48.683395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757641, 33.676590, 48.626564>,  <34.989822, 33.364948, 48.531845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757641, 33.676590, 48.626564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120590, -0.205348, 0.971231,
		0.805313, 0.592312, 0.025243,
		-0.580456, 0.779101, 0.236796,
		34.583504, 33.910320, 48.697601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345894, 33.716293, 49.099106>,  <34.989822, 33.364948, 48.531845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345894, 33.716293, 49.099106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969196, 33.850086, 49.113209>,  <34.743179, 33.930363, 49.121670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.969196, 33.850086, 49.113209>,  <35.345894, 33.716293, 49.099106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969196, 33.850086, 49.113209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058905, -0.267235, 0.961829,
		0.331142, 0.903717, 0.271369,
		-0.941741, 0.334487, 0.035260,
		34.686672, 33.950432, 49.123787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339523, 34.215324, 49.644573>,  <35.345894, 33.716293, 49.099106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339523, 34.215324, 49.644573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968174, 34.073418, 49.600258>,  <34.745365, 33.988274, 49.573669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968174, 34.073418, 49.600258>,  <35.339523, 34.215324, 49.644573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968174, 34.073418, 49.600258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073186, -0.117759, 0.990342,
		-0.364383, 0.927511, 0.083360,
		-0.928369, -0.354763, -0.110790,
		34.689663, 33.966988, 49.567020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059002, 34.477356, 50.166809>,  <35.339523, 34.215324, 49.644573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059002, 34.477356, 50.166809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.788609, 34.196270, 50.078045>,  <34.626373, 34.027618, 50.024788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.788609, 34.196270, 50.078045>,  <35.059002, 34.477356, 50.166809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788609, 34.196270, 50.078045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113232, -0.198507, 0.973536,
		-0.728164, 0.683223, 0.054618,
		-0.675984, -0.702710, -0.221909,
		34.585812, 33.985458, 50.011471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575531, 34.556107, 50.654770>,  <35.059002, 34.477356, 50.166809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575531, 34.556107, 50.654770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.467121, 34.190083, 50.535301>,  <34.402073, 33.970467, 50.463619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.467121, 34.190083, 50.535301>,  <34.575531, 34.556107, 50.654770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467121, 34.190083, 50.535301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124123, -0.274468, 0.953552,
		-0.954535, 0.295511, -0.039191,
		-0.271029, -0.915063, -0.298669,
		34.385811, 33.915565, 50.445702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945129, 34.406853, 50.905231>,  <34.575531, 34.556107, 50.654770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945129, 34.406853, 50.905231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119457, 34.050606, 50.853283>,  <34.224052, 33.836857, 50.822113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119457, 34.050606, 50.853283>,  <33.945129, 34.406853, 50.905231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119457, 34.050606, 50.853283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200667, -0.236815, 0.950606,
		-0.877378, -0.388233, -0.281926,
		0.435821, -0.890614, -0.129871,
		34.250202, 33.783421, 50.814323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498951, 33.999634, 51.266312>,  <33.945129, 34.406853, 50.905231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498951, 33.999634, 51.266312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809204, 33.752514, 51.214588>,  <33.995354, 33.604240, 51.183552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809204, 33.752514, 51.214588>,  <33.498951, 33.999634, 51.266312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809204, 33.752514, 51.214588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113411, -0.337943, 0.934308,
		-0.620917, -0.710011, -0.332184,
		0.775629, -0.617801, -0.129312,
		34.041893, 33.567173, 51.175793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271378, 33.313137, 51.577656>,  <33.498951, 33.999634, 51.266312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271378, 33.313137, 51.577656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670483, 33.312218, 51.550903>,  <33.909946, 33.311665, 51.534851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670483, 33.312218, 51.550903>,  <33.271378, 33.313137, 51.577656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670483, 33.312218, 51.550903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063214, -0.295455, 0.953263,
		-0.021954, -0.955354, -0.294647,
		0.997758, -0.002302, -0.066878,
		33.969810, 33.311527, 51.530842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417160, 32.708157, 51.896343>,  <33.271378, 33.313137, 51.577656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417160, 32.708157, 51.896343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750595, 32.928406, 51.914017>,  <33.950657, 33.060555, 51.924622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750595, 32.928406, 51.914017>,  <33.417160, 32.708157, 51.896343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750595, 32.928406, 51.914017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098062, -0.226218, 0.969128,
		0.543616, -0.803519, -0.242567,
		0.833586, 0.550621, 0.044181,
		34.000671, 33.093594, 51.927273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957008, 32.262596, 51.999474>,  <33.417160, 32.708157, 51.896343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957008, 32.262596, 51.999474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123379, 32.604721, 52.123051>,  <34.223202, 32.809998, 52.197197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123379, 32.604721, 52.123051>,  <33.957008, 32.262596, 51.999474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123379, 32.604721, 52.123051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298797, -0.449392, 0.841884,
		0.858912, -0.257847, -0.442477,
		0.415922, 0.855314, 0.308944,
		34.248154, 32.861317, 52.215733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597389, 32.052013, 52.314583>,  <33.957008, 32.262596, 51.999474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597389, 32.052013, 52.314583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.528454, 32.415638, 52.466324>,  <34.487091, 32.633812, 52.557369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.528454, 32.415638, 52.466324>,  <34.597389, 32.052013, 52.314583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528454, 32.415638, 52.466324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389766, -0.290756, 0.873810,
		0.904645, 0.298451, -0.304212,
		-0.172338, 0.909059, 0.379357,
		34.476753, 32.688354, 52.580132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188770, 32.148453, 52.673363>,  <34.597389, 32.052013, 52.314583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188770, 32.148453, 52.673363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891327, 32.377033, 52.812206>,  <34.712860, 32.514183, 52.895512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891327, 32.377033, 52.812206>,  <35.188770, 32.148453, 52.673363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891327, 32.377033, 52.812206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238113, -0.258771, 0.936130,
		0.624776, 0.778768, 0.056354,
		-0.743611, 0.571453, 0.347109,
		34.668243, 32.548470, 52.916340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500130, 32.645935, 53.119652>,  <35.188770, 32.148453, 52.673363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500130, 32.645935, 53.119652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124241, 32.590935, 53.244884>,  <34.898708, 32.557934, 53.320023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124241, 32.590935, 53.244884>,  <35.500130, 32.645935, 53.119652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124241, 32.590935, 53.244884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335524, -0.194239, 0.921789,
		-0.065936, 0.971269, 0.228665,
		-0.939721, -0.137502, 0.313077,
		34.842323, 32.549683, 53.338806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487934, 32.910049, 53.834087>,  <35.500130, 32.645935, 53.119652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487934, 32.910049, 53.834087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173599, 32.665070, 53.799759>,  <34.984997, 32.518082, 53.779163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173599, 32.665070, 53.799759>,  <35.487934, 32.910049, 53.834087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173599, 32.665070, 53.799759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182432, -0.362160, 0.914089,
		-0.590915, 0.702668, 0.396329,
		-0.785836, -0.612452, -0.085817,
		34.937847, 32.481335, 53.774014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309448, 32.841766, 54.486237>,  <35.487934, 32.910049, 53.834087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309448, 32.841766, 54.486237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088314, 32.546299, 54.331970>,  <34.955631, 32.369019, 54.239410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088314, 32.546299, 54.331970>,  <35.309448, 32.841766, 54.486237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088314, 32.546299, 54.331970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011578, -0.469588, 0.882810,
		-0.833207, 0.483586, 0.268160,
		-0.552839, -0.738668, -0.385665,
		34.922462, 32.324699, 54.216270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711868, 32.792782, 54.845383>,  <35.309448, 32.841766, 54.486237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711868, 32.792782, 54.845383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.715115, 32.426266, 54.685207>,  <34.717064, 32.206356, 54.589104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.715115, 32.426266, 54.685207>,  <34.711868, 32.792782, 54.845383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715115, 32.426266, 54.685207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112863, -0.398734, 0.910095,
		-0.993577, 0.037807, -0.106651,
		0.008118, -0.916287, -0.400440,
		34.717548, 32.151379, 54.565075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183334, 32.336124, 55.154800>,  <34.711868, 32.792782, 54.845383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183334, 32.336124, 55.154800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.438549, 32.072872, 54.994911>,  <34.591679, 31.914921, 54.898975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.438549, 32.072872, 54.994911>,  <34.183334, 32.336124, 55.154800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438549, 32.072872, 54.994911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109050, -0.591117, 0.799180,
		-0.762248, -0.466313, -0.448921,
		0.638033, -0.658128, -0.399727,
		34.629959, 31.875433, 54.874992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805790, 31.747673, 55.103390>,  <34.183334, 32.336124, 55.154800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805790, 31.747673, 55.103390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199032, 31.677698, 55.124962>,  <34.434975, 31.635714, 55.137905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199032, 31.677698, 55.124962>,  <33.805790, 31.747673, 55.103390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199032, 31.677698, 55.124962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131568, -0.470342, 0.872622,
		-0.127288, -0.864971, -0.485410,
		0.983101, -0.174939, 0.053934,
		34.493961, 31.625216, 55.141144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952438, 31.070326, 55.319530>,  <33.805790, 31.747673, 55.103390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952438, 31.070326, 55.319530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.254955, 31.284252, 55.470261>,  <34.436466, 31.412607, 55.560699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.254955, 31.284252, 55.470261>,  <33.952438, 31.070326, 55.319530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254955, 31.284252, 55.470261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003322, -0.572833, 0.819665,
		0.654227, -0.621157, -0.431452,
		0.756291, 0.534814, 0.376826,
		34.481842, 31.444696, 55.583309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456715, 30.565338, 55.224792>,  <33.952438, 31.070326, 55.319530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456715, 30.565338, 55.224792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178650, 30.294855, 55.127232>,  <34.011810, 30.132565, 55.068695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178650, 30.294855, 55.127232>,  <34.456715, 30.565338, 55.224792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178650, 30.294855, 55.127232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248855, -0.544699, 0.800858,
		-0.674402, 0.496031, 0.546933,
		-0.695164, -0.676207, -0.243906,
		33.970100, 30.091993, 55.054058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273445, 29.814035, 55.363731>,  <34.456715, 30.565338, 55.224792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273445, 29.814035, 55.363731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.918705, 29.633368, 55.324753>,  <33.705860, 29.524967, 55.301365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.918705, 29.633368, 55.324753>,  <34.273445, 29.814035, 55.363731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918705, 29.633368, 55.324753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037022, 0.279676, -0.959380,
		0.460577, -0.847216, -0.264752,
		-0.886847, -0.451670, -0.097447,
		33.652649, 29.497868, 55.295517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371128, 29.528086, 54.828075>,  <34.273445, 29.814035, 55.363731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371128, 29.528086, 54.828075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.972214, 29.537491, 54.856007>,  <33.732864, 29.543135, 54.872765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.972214, 29.537491, 54.856007>,  <34.371128, 29.528086, 54.828075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972214, 29.537491, 54.856007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058091, 0.332123, -0.941446,
		-0.045331, -0.942943, -0.329854,
		-0.997281, 0.023515, 0.069832,
		33.673031, 29.544544, 54.876957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166977, 29.219839, 54.285568>,  <34.371128, 29.528086, 54.828075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166977, 29.219839, 54.285568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837769, 29.426458, 54.380062>,  <33.640244, 29.550430, 54.436760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837769, 29.426458, 54.380062>,  <34.166977, 29.219839, 54.285568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837769, 29.426458, 54.380062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087295, 0.295934, -0.951211,
		-0.561258, -0.803492, -0.198468,
		-0.823024, 0.516550, 0.236236,
		33.590862, 29.581423, 54.450932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661888, 28.984720, 53.837322>,  <34.166977, 29.219839, 54.285568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661888, 28.984720, 53.837322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.529804, 29.336420, 53.974659>,  <33.450554, 29.547440, 54.057060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.529804, 29.336420, 53.974659>,  <33.661888, 28.984720, 53.837322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529804, 29.336420, 53.974659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329524, 0.233476, -0.914824,
		-0.884521, -0.415221, 0.212638,
		-0.330208, 0.879250, 0.343340,
		33.430740, 29.600195, 54.077660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943630, 29.045761, 53.594696>,  <33.661888, 28.984720, 53.837322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943630, 29.045761, 53.594696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051716, 29.424616, 53.663879>,  <33.116566, 29.651930, 53.705387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051716, 29.424616, 53.663879>,  <32.943630, 29.045761, 53.594696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051716, 29.424616, 53.663879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471493, 0.286797, -0.833932,
		-0.839452, 0.143793, 0.524065,
		0.270214, 0.947138, 0.172955,
		33.132778, 29.708757, 53.715767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422382, 29.503584, 53.412075>,  <32.943630, 29.045761, 53.594696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422382, 29.503584, 53.412075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720642, 29.770052, 53.418064>,  <32.899597, 29.929932, 53.421658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720642, 29.770052, 53.418064>,  <32.422382, 29.503584, 53.412075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720642, 29.770052, 53.418064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427188, 0.495157, -0.756525,
		-0.511385, 0.557709, 0.653793,
		0.745651, 0.666168, 0.014969,
		32.944336, 29.969902, 53.422554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107285, 30.060572, 53.499611>,  <32.422382, 29.503584, 53.412075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107285, 30.060572, 53.499611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466682, 30.118917, 53.333996>,  <32.682323, 30.153925, 53.234627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466682, 30.118917, 53.333996>,  <32.107285, 30.060572, 53.499611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466682, 30.118917, 53.333996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431249, 0.469518, -0.770440,
		0.082016, 0.870791, 0.484765,
		0.898497, 0.145865, -0.414036,
		32.736233, 30.162678, 53.209785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074280, 30.681465, 53.254734>,  <32.107285, 30.060572, 53.499611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074280, 30.681465, 53.254734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394165, 30.559984, 53.047577>,  <32.586098, 30.487095, 52.923283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394165, 30.559984, 53.047577>,  <32.074280, 30.681465, 53.254734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394165, 30.559984, 53.047577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285356, 0.566680, -0.772946,
		0.528227, 0.765923, 0.366520,
		0.799717, -0.303703, -0.517896,
		32.634079, 30.468874, 52.892208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364021, 31.272028, 52.866680>,  <32.074280, 30.681465, 53.254734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364021, 31.272028, 52.866680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.520149, 30.960421, 52.670403>,  <32.613827, 30.773457, 52.552635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.520149, 30.960421, 52.670403>,  <32.364021, 31.272028, 52.866680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520149, 30.960421, 52.670403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149234, 0.472389, -0.868664,
		0.908503, 0.412288, 0.068128,
		0.390323, -0.779017, -0.490694,
		32.637245, 30.726715, 52.523193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707664, 31.592201, 52.243320>,  <32.364021, 31.272028, 52.866680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707664, 31.592201, 52.243320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.665932, 31.206928, 52.144207>,  <32.640892, 30.975765, 52.084740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.665932, 31.206928, 52.144207>,  <32.707664, 31.592201, 52.243320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665932, 31.206928, 52.144207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143322, 0.231981, -0.962104,
		0.984162, -0.135889, 0.113842,
		-0.104330, -0.963182, -0.247782,
		32.634632, 30.917974, 52.069874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313740, 31.365267, 51.994228>,  <32.707664, 31.592201, 52.243320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313740, 31.365267, 51.994228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016464, 31.143078, 51.845036>,  <32.838097, 31.009764, 51.755520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.016464, 31.143078, 51.845036>,  <33.313740, 31.365267, 51.994228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016464, 31.143078, 51.845036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183492, 0.366873, -0.911995,
		0.643427, -0.746226, -0.170732,
		-0.743191, -0.555474, -0.372982,
		32.793507, 30.976437, 51.733143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631245, 31.084772, 51.406834>,  <33.313740, 31.365267, 51.994228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631245, 31.084772, 51.406834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237190, 31.060513, 51.342560>,  <33.000755, 31.045958, 51.303993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237190, 31.060513, 51.342560>,  <33.631245, 31.084772, 51.406834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237190, 31.060513, 51.342560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127126, 0.371623, -0.919639,
		0.115490, -0.926401, -0.358390,
		-0.985140, -0.060649, -0.160688,
		32.941647, 31.042318, 51.294353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574860, 30.906965, 50.679287>,  <33.631245, 31.084772, 51.406834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574860, 30.906965, 50.679287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207573, 31.024086, 50.785984>,  <32.987202, 31.094358, 50.850002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207573, 31.024086, 50.785984>,  <33.574860, 30.906965, 50.679287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207573, 31.024086, 50.785984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085867, 0.510288, -0.855706,
		-0.386669, -0.808625, -0.443411,
		-0.918213, 0.292800, 0.266747,
		32.932110, 31.111925, 50.866009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033188, 30.630909, 50.236217>,  <33.574860, 30.906965, 50.679287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033188, 30.630909, 50.236217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895958, 30.972696, 50.392262>,  <32.813622, 31.177769, 50.485889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895958, 30.972696, 50.392262>,  <33.033188, 30.630909, 50.236217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895958, 30.972696, 50.392262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163536, 0.354639, -0.920591,
		-0.924964, -0.379625, 0.018069,
		-0.343071, 0.854468, 0.390111,
		32.793037, 31.229036, 50.509296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567730, 30.888237, 49.814098>,  <33.033188, 30.630909, 50.236217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567730, 30.888237, 49.814098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632961, 31.219637, 50.028385>,  <32.672100, 31.418476, 50.156960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632961, 31.219637, 50.028385>,  <32.567730, 30.888237, 49.814098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632961, 31.219637, 50.028385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136631, 0.556720, -0.819387,
		-0.977107, 0.060428, 0.203987,
		0.163078, 0.828499, 0.535719,
		32.681885, 31.468187, 50.189102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922144, 31.309544, 49.851723>,  <32.567730, 30.888237, 49.814098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922144, 31.309544, 49.851723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.240570, 31.544575, 49.909725>,  <32.431625, 31.685595, 49.944527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.240570, 31.544575, 49.909725>,  <31.922144, 31.309544, 49.851723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240570, 31.544575, 49.909725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282656, 0.572825, -0.769401,
		-0.535148, 0.571508, 0.622090,
		0.796067, 0.587580, 0.145006,
		32.479389, 31.720848, 49.953228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699606, 31.874437, 49.654156>,  <31.922144, 31.309544, 49.851723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699606, 31.874437, 49.654156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.081841, 31.992107, 49.661285>,  <32.311180, 32.062710, 49.665565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.081841, 31.992107, 49.661285>,  <31.699606, 31.874437, 49.654156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081841, 31.992107, 49.661285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116393, 0.432277, -0.894198,
		-0.270755, 0.852407, 0.447317,
		0.955586, 0.294174, 0.017827,
		32.368515, 32.080360, 49.666634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715904, 32.658672, 49.602676>,  <31.699606, 31.874437, 49.654156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715904, 32.658672, 49.602676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079174, 32.540291, 49.484264>,  <32.297134, 32.469261, 49.413219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079174, 32.540291, 49.484264>,  <31.715904, 32.658672, 49.602676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079174, 32.540291, 49.484264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131262, 0.470180, -0.872755,
		0.397481, 0.831470, 0.388158,
		0.908174, -0.295953, -0.296028,
		32.351627, 32.451504, 49.395454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052288, 33.268360, 49.313148>,  <31.715904, 32.658672, 49.602676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052288, 33.268360, 49.313148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.240566, 32.957737, 49.145618>,  <32.353531, 32.771362, 49.045101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.240566, 32.957737, 49.145618>,  <32.052288, 33.268360, 49.313148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240566, 32.957737, 49.145618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101637, 0.423813, -0.900029,
		0.876424, 0.466204, 0.120559,
		0.470692, -0.776554, -0.418823,
		32.381775, 32.724770, 49.019970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547195, 33.561375, 48.881119>,  <32.052288, 33.268360, 49.313148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547195, 33.561375, 48.881119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526394, 33.180996, 48.759140>,  <32.513912, 32.952766, 48.685951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526394, 33.180996, 48.759140>,  <32.547195, 33.561375, 48.881119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526394, 33.180996, 48.759140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179237, 0.309288, -0.933925,
		0.982431, 0.006094, -0.186528,
		-0.052000, -0.950949, -0.304947,
		32.510796, 32.895710, 48.667656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.058750, 42.553684, 34.100899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736023, 42.620613, 34.327545>,  <43.542385, 42.660770, 34.463531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736023, 42.620613, 34.327545>,  <44.058750, 42.553684, 34.100899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736023, 42.620613, 34.327545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209735, -0.815475, 0.539455,
		0.552318, 0.554080, 0.622848,
		-0.806818, 0.167318, 0.566612,
		43.493977, 42.670807, 34.497528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237896, 42.663033, 34.899597>,  <44.058750, 42.553684, 34.100899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237896, 42.663033, 34.899597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859299, 42.538841, 34.864380>,  <43.632141, 42.464325, 34.843250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859299, 42.538841, 34.864380>,  <44.237896, 42.663033, 34.899597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859299, 42.538841, 34.864380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179333, -0.732828, 0.656356,
		-0.268307, 0.605447, 0.749296,
		-0.946494, -0.310478, -0.088046,
		43.575352, 42.445698, 34.837967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981228, 42.540314, 35.619110>,  <44.237896, 42.663033, 34.899597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981228, 42.540314, 35.619110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.719116, 42.346016, 35.387707>,  <43.561852, 42.229439, 35.248867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.719116, 42.346016, 35.387707>,  <43.981228, 42.540314, 35.619110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719116, 42.346016, 35.387707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018727, -0.755156, 0.655277,
		-0.755156, 0.440222, 0.485740,
		-0.655277, -0.485740, -0.578505,
		43.522533, 42.200294, 35.214157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354557, 42.425694, 35.994175>,  <43.981228, 42.540314, 35.619110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354557, 42.425694, 35.994175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347900, 42.142643, 35.711620>,  <43.343906, 41.972813, 35.542088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.347900, 42.142643, 35.711620>,  <43.354557, 42.425694, 35.994175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347900, 42.142643, 35.711620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296315, -0.671258, 0.679420,
		-0.954945, 0.220620, -0.198510,
		-0.016642, -0.707630, -0.706387,
		43.342907, 41.930355, 35.499702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727673, 41.971985, 36.143066>,  <43.354557, 42.425694, 35.994175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727673, 41.971985, 36.143066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.948795, 41.737522, 35.906143>,  <43.081470, 41.596844, 35.763988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.948795, 41.737522, 35.906143>,  <42.727673, 41.971985, 36.143066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948795, 41.737522, 35.906143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225143, -0.789413, 0.571084,
		-0.802324, -0.182340, -0.568356,
		0.552799, -0.586156, -0.592312,
		43.114639, 41.561676, 35.728451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452774, 41.313202, 36.356506>,  <42.727673, 41.971985, 36.143066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452774, 41.313202, 36.356506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763012, 41.220558, 36.121624>,  <42.949154, 41.164970, 35.980694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763012, 41.220558, 36.121624>,  <42.452774, 41.313202, 36.356506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763012, 41.220558, 36.121624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049144, -0.905272, 0.421980,
		-0.629313, -0.356144, -0.690744,
		0.775597, -0.231612, -0.587201,
		42.995689, 41.151073, 35.945465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290001, 40.672691, 36.104607>,  <42.452774, 41.313202, 36.356506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290001, 40.672691, 36.104607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.687176, 40.693787, 36.062080>,  <42.925480, 40.706444, 36.036564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.687176, 40.693787, 36.062080>,  <42.290001, 40.672691, 36.104607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687176, 40.693787, 36.062080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089581, -0.920651, 0.379970,
		-0.077843, -0.386809, -0.918869,
		0.992933, 0.052736, -0.106317,
		42.985054, 40.709606, 36.030186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542583, 40.051262, 35.718903>,  <42.290001, 40.672691, 36.104607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542583, 40.051262, 35.718903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.871567, 40.191536, 35.898048>,  <43.068958, 40.275700, 36.005535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.871567, 40.191536, 35.898048>,  <42.542583, 40.051262, 35.718903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871567, 40.191536, 35.898048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041604, -0.822331, 0.567486,
		0.567304, -0.448100, -0.690922,
		0.822457, 0.350682, 0.447869,
		43.118305, 40.296741, 36.032410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030155, 39.545376, 35.711132>,  <42.542583, 40.051262, 35.718903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030155, 39.545376, 35.711132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115261, 39.783978, 36.020691>,  <43.166325, 39.927139, 36.206425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115261, 39.783978, 36.020691>,  <43.030155, 39.545376, 35.711132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115261, 39.783978, 36.020691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095237, -0.775597, 0.624002,
		0.972452, -0.206467, -0.108207,
		0.212761, 0.596507, 0.773894,
		43.179089, 39.962929, 36.252861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400509, 39.039005, 36.066708>,  <43.030155, 39.545376, 35.711132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400509, 39.039005, 36.066708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297882, 39.336796, 36.313259>,  <43.236305, 39.515469, 36.461189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297882, 39.336796, 36.313259>,  <43.400509, 39.039005, 36.066708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297882, 39.336796, 36.313259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202159, -0.664958, 0.719001,
		0.945147, 0.059868, 0.321112,
		-0.256571, 0.744477, 0.616380,
		43.220909, 39.560139, 36.498173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784000, 38.853268, 36.498386>,  <43.400509, 39.039005, 36.066708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784000, 38.853268, 36.498386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545494, 39.116577, 36.682186>,  <43.402390, 39.274563, 36.792465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545494, 39.116577, 36.682186>,  <43.784000, 38.853268, 36.498386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545494, 39.116577, 36.682186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005734, -0.575861, 0.817528,
		0.802765, 0.484831, 0.347142,
		-0.596268, 0.658273, 0.459501,
		43.366615, 39.314060, 36.820038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075855, 39.097698, 37.111862>,  <43.784000, 38.853268, 36.498386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075855, 39.097698, 37.111862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.678474, 39.120014, 37.151726>,  <43.440044, 39.133404, 37.175644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.678474, 39.120014, 37.151726>,  <44.075855, 39.097698, 37.111862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678474, 39.120014, 37.151726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011383, -0.819877, 0.572426,
		0.113645, 0.569815, 0.813877,
		-0.993456, 0.055789, 0.099661,
		43.380436, 39.136749, 37.181625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018772, 38.869568, 37.856007>,  <44.075855, 39.097698, 37.111862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018772, 38.869568, 37.856007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663395, 38.850513, 37.673401>,  <43.450169, 38.839081, 37.563839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663395, 38.850513, 37.673401>,  <44.018772, 38.869568, 37.856007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663395, 38.850513, 37.673401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163167, -0.896851, 0.411138,
		-0.429007, 0.439759, 0.789028,
		-0.888442, -0.047638, -0.456510,
		43.396862, 38.836224, 37.536449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492847, 38.808231, 38.361691>,  <44.018772, 38.869568, 37.856007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492847, 38.808231, 38.361691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362041, 38.644543, 38.020962>,  <43.283558, 38.546329, 37.816525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362041, 38.644543, 38.020962>,  <43.492847, 38.808231, 38.361691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362041, 38.644543, 38.020962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305177, -0.807355, 0.505020,
		-0.894388, 0.425103, 0.139129,
		-0.327012, -0.409225, -0.851821,
		43.263939, 38.521774, 37.765415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999352, 38.364563, 38.564735>,  <43.492847, 38.808231, 38.361691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999352, 38.364563, 38.564735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.053684, 38.244225, 38.187157>,  <43.086285, 38.172020, 37.960609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.053684, 38.244225, 38.187157>,  <42.999352, 38.364563, 38.564735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053684, 38.244225, 38.187157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221926, -0.937808, 0.266957,
		-0.965557, 0.173227, -0.194145,
		0.135827, -0.300848, -0.943950,
		43.094433, 38.153969, 37.903973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410900, 37.931648, 38.431236>,  <42.999352, 38.364563, 38.564735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410900, 37.931648, 38.431236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680733, 37.833870, 38.152615>,  <42.842632, 37.775204, 37.985439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680733, 37.833870, 38.152615>,  <42.410900, 37.931648, 38.431236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680733, 37.833870, 38.152615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264825, -0.960910, 0.080745,
		-0.689067, 0.129997, -0.712943,
		0.674578, -0.244444, -0.696557,
		42.883106, 37.760536, 37.943649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079422, 37.471634, 37.931759>,  <42.410900, 37.931648, 38.431236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079422, 37.471634, 37.931759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469200, 37.393753, 37.886959>,  <42.703068, 37.347023, 37.860081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469200, 37.393753, 37.886959>,  <42.079422, 37.471634, 37.931759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469200, 37.393753, 37.886959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198176, -0.979949, -0.020625,
		-0.105737, 0.042293, -0.993494,
		0.974446, -0.194706, -0.111999,
		42.761536, 37.335342, 37.853359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094883, 36.887474, 37.527153>,  <42.079422, 37.471634, 37.931759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094883, 36.887474, 37.527153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.466576, 36.886414, 37.674946>,  <42.689590, 36.885777, 37.763622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.466576, 36.886414, 37.674946>,  <42.094883, 36.887474, 37.527153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466576, 36.886414, 37.674946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032703, -0.996639, 0.075101,
		0.368046, -0.081870, -0.926196,
		0.929232, -0.002649, 0.369486,
		42.745346, 36.885620, 37.785793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534641, 36.380447, 37.117451>,  <42.094883, 36.887474, 37.527153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534641, 36.380447, 37.117451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.718254, 36.400410, 37.472256>,  <42.828423, 36.412388, 37.685139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.718254, 36.400410, 37.472256>,  <42.534641, 36.380447, 37.117451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718254, 36.400410, 37.472256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042039, -0.998523, 0.034425,
		0.887423, 0.021487, -0.460454,
		0.459034, 0.049907, 0.887016,
		42.855965, 36.415382, 37.738361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031712, 35.935280, 37.022762>,  <42.534641, 36.380447, 37.117451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031712, 35.935280, 37.022762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.032223, 35.996841, 37.417995>,  <43.032532, 36.033779, 37.655136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.032223, 35.996841, 37.417995>,  <43.031712, 35.935280, 37.022762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032223, 35.996841, 37.417995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059545, -0.986344, 0.153555,
		0.998225, 0.058639, -0.010429,
		0.001282, 0.153903, 0.988085,
		43.032608, 36.043011, 37.714420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504192, 35.435120, 37.196198>,  <43.031712, 35.935280, 37.022762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504192, 35.435120, 37.196198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292950, 35.534340, 37.521053>,  <43.166203, 35.593872, 37.715965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292950, 35.534340, 37.521053>,  <43.504192, 35.435120, 37.196198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292950, 35.534340, 37.521053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116888, -0.968515, 0.219809,
		0.841092, 0.021154, 0.540478,
		-0.528111, 0.248055, 0.812137,
		43.134518, 35.608757, 37.764694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004772, 35.646603, 36.741810>,  <43.504192, 35.435120, 37.196198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004772, 35.646603, 36.741810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337734, 35.458042, 36.625271>,  <44.537510, 35.344906, 36.555347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337734, 35.458042, 36.625271>,  <44.004772, 35.646603, 36.741810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337734, 35.458042, 36.625271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377892, 0.867388, -0.323783,
		0.405341, 0.159422, 0.900157,
		0.832404, -0.471404, -0.291343,
		44.587456, 35.316620, 36.537868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514523, 36.094559, 36.893387>,  <44.004772, 35.646603, 36.741810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514523, 36.094559, 36.893387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.690891, 35.868587, 36.614407>,  <44.796711, 35.733006, 36.447018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.690891, 35.868587, 36.614407>,  <44.514523, 36.094559, 36.893387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690891, 35.868587, 36.614407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324032, 0.824853, -0.463273,
		0.837015, -0.021731, 0.546749,
		0.440920, -0.564930, -0.697455,
		44.823166, 35.699108, 36.405170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147675, 36.410126, 36.840195>,  <44.514523, 36.094559, 36.893387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147675, 36.410126, 36.840195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074017, 36.198971, 36.508553>,  <45.029823, 36.072277, 36.309566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074017, 36.198971, 36.508553>,  <45.147675, 36.410126, 36.840195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074017, 36.198971, 36.508553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387082, 0.736420, -0.554845,
		0.903471, -0.423104, 0.068732,
		-0.184141, -0.527891, -0.829110,
		45.018776, 36.040604, 36.259819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590061, 36.689720, 36.312141>,  <45.147675, 36.410126, 36.840195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590061, 36.689720, 36.312141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333530, 36.502670, 36.068825>,  <45.179611, 36.390438, 35.922836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333530, 36.502670, 36.068825>,  <45.590061, 36.689720, 36.312141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333530, 36.502670, 36.068825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125070, 0.718487, -0.684202,
		0.757003, -0.514878, -0.402301,
		-0.641329, -0.467628, -0.608294,
		45.141132, 36.362381, 35.886337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907612, 36.713825, 35.739628>,  <45.590061, 36.689720, 36.312141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907612, 36.713825, 35.739628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.521427, 36.655018, 35.653595>,  <45.289715, 36.619732, 35.601974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.521427, 36.655018, 35.653595>,  <45.907612, 36.713825, 35.739628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521427, 36.655018, 35.653595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068284, 0.653904, -0.753490,
		0.251424, -0.742155, -0.621282,
		-0.965465, -0.147022, -0.215085,
		45.231789, 36.610912, 35.589069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913250, 36.612770, 34.989918>,  <45.907612, 36.713825, 35.739628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913250, 36.612770, 34.989918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.547298, 36.722992, 35.107944>,  <45.327728, 36.789124, 35.178761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.547298, 36.722992, 35.107944>,  <45.913250, 36.612770, 34.989918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547298, 36.722992, 35.107944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041063, 0.663555, -0.747000,
		-0.401632, -0.695531, -0.595758,
		-0.914880, 0.275556, 0.295066,
		45.272835, 36.805660, 35.196465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457272, 36.722103, 34.335007>,  <45.913250, 36.612770, 34.989918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457272, 36.722103, 34.335007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.263672, 36.932140, 34.615013>,  <45.147514, 37.058163, 34.783016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.263672, 36.932140, 34.615013>,  <45.457272, 36.722103, 34.335007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263672, 36.932140, 34.615013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024806, 0.791404, -0.610790,
		-0.874718, -0.312985, -0.370012,
		-0.483997, 0.525091, 0.700019,
		45.118473, 37.089668, 34.825020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851280, 37.112186, 33.906895>,  <45.457272, 36.722103, 34.335007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851280, 37.112186, 33.906895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.905403, 37.284725, 34.263687>,  <44.937878, 37.388248, 34.477764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.905403, 37.284725, 34.263687>,  <44.851280, 37.112186, 33.906895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905403, 37.284725, 34.263687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089402, 0.901904, -0.422584,
		-0.986761, -0.022564, 0.160601,
		0.135312, 0.431347, 0.891981,
		44.945995, 37.414131, 34.531281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251751, 37.550194, 33.924011>,  <44.851280, 37.112186, 33.906895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251751, 37.550194, 33.924011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499634, 37.682499, 34.208706>,  <44.648361, 37.761883, 34.379520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499634, 37.682499, 34.208706>,  <44.251751, 37.550194, 33.924011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499634, 37.682499, 34.208706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187804, 0.943004, -0.274725,
		-0.762035, 0.036581, 0.646501,
		0.619703, 0.330765, 0.711732,
		44.685543, 37.781727, 34.422226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952633, 38.138855, 34.227036>,  <44.251751, 37.550194, 33.924011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952633, 38.138855, 34.227036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339909, 38.195885, 34.309280>,  <44.572273, 38.230103, 34.358627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339909, 38.195885, 34.309280>,  <43.952633, 38.138855, 34.227036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339909, 38.195885, 34.309280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066658, 0.939043, -0.337276,
		-0.241167, 0.312842, 0.918678,
		0.968192, 0.142577, 0.205613,
		44.630367, 38.238659, 34.370964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910217, 38.840233, 34.432549>,  <43.952633, 38.138855, 34.227036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910217, 38.840233, 34.432549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295334, 38.763832, 34.356071>,  <44.526402, 38.717991, 34.310184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295334, 38.763832, 34.356071>,  <43.910217, 38.840233, 34.432549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295334, 38.763832, 34.356071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147036, 0.963799, -0.222421,
		0.226756, 0.186032, 0.956020,
		0.962789, -0.191005, -0.191194,
		44.584171, 38.706532, 34.298714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290836, 39.275642, 34.771229>,  <43.910217, 38.840233, 34.432549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290836, 39.275642, 34.771229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.507244, 39.172874, 34.450905>,  <44.637089, 39.111214, 34.258713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.507244, 39.172874, 34.450905>,  <44.290836, 39.275642, 34.771229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507244, 39.172874, 34.450905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047782, 0.941269, -0.334260,
		0.839650, 0.219106, 0.496971,
		0.541022, -0.256915, -0.800806,
		44.669552, 39.095798, 34.210663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707577, 39.896473, 34.669201>,  <44.290836, 39.275642, 34.771229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707577, 39.896473, 34.669201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.700657, 39.661110, 34.345848>,  <44.696507, 39.519894, 34.151836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.700657, 39.661110, 34.345848>,  <44.707577, 39.896473, 34.669201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700657, 39.661110, 34.345848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086131, 0.806371, -0.585104,
		0.996134, 0.059504, -0.064630,
		-0.017300, -0.588409, -0.808378,
		44.695465, 39.484589, 34.103336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198669, 40.209499, 34.251190>,  <44.707577, 39.896473, 34.669201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198669, 40.209499, 34.251190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.958290, 39.991081, 34.017712>,  <44.814064, 39.860031, 33.877625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.958290, 39.991081, 34.017712>,  <45.198669, 40.209499, 34.251190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958290, 39.991081, 34.017712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050639, 0.754806, -0.653990,
		0.797688, -0.363452, -0.481245,
		-0.600941, -0.546050, -0.583695,
		44.778008, 39.827267, 33.842606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414024, 40.371433, 33.658070>,  <45.198669, 40.209499, 34.251190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414024, 40.371433, 33.658070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.044422, 40.226231, 33.610004>,  <44.822662, 40.139111, 33.581165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.044422, 40.226231, 33.610004>,  <45.414024, 40.371433, 33.658070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044422, 40.226231, 33.610004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244616, 0.802695, -0.543914,
		0.293899, -0.473186, -0.830492,
		-0.924005, -0.363008, -0.120163,
		44.767220, 40.117329, 33.573956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225975, 40.565060, 32.889980>,  <45.414024, 40.371433, 33.658070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225975, 40.565060, 32.889980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.906433, 40.508614, 33.123875>,  <44.714710, 40.474747, 33.264214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.906433, 40.508614, 33.123875>,  <45.225975, 40.565060, 32.889980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906433, 40.508614, 33.123875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418824, 0.828239, -0.372299,
		-0.431765, -0.542315, -0.720745,
		-0.798853, -0.141120, 0.584738,
		44.666779, 40.466278, 33.299297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714787, 40.587090, 32.316383>,  <45.225975, 40.565060, 32.889980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714787, 40.587090, 32.316383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.537197, 40.663383, 32.666584>,  <44.430641, 40.709160, 32.876705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.537197, 40.663383, 32.666584>,  <44.714787, 40.587090, 32.316383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537197, 40.663383, 32.666584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395417, 0.835092, -0.382450,
		-0.804071, -0.515987, -0.295341,
		-0.443976, 0.190734, 0.875503,
		44.404003, 40.720604, 32.929234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952923, 40.776665, 32.180645>,  <44.714787, 40.587090, 32.316383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952923, 40.776665, 32.180645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052654, 40.919849, 32.540577>,  <44.112492, 41.005760, 32.756538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052654, 40.919849, 32.540577>,  <43.952923, 40.776665, 32.180645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052654, 40.919849, 32.540577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371067, 0.893573, -0.252660,
		-0.894509, -0.270903, 0.355619,
		0.249325, 0.357965, 0.899832,
		44.127453, 41.027241, 32.810528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314564, 41.094940, 32.390007>,  <43.952923, 40.776665, 32.180645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314564, 41.094940, 32.390007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591770, 41.253365, 32.630962>,  <43.758095, 41.348419, 32.775536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591770, 41.253365, 32.630962>,  <43.314564, 41.094940, 32.390007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591770, 41.253365, 32.630962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399261, 0.906583, -0.136742,
		-0.600271, -0.145746, 0.786405,
		0.693012, 0.396063, 0.602386,
		43.799675, 41.372185, 32.811680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955391, 41.386368, 32.959637>,  <43.314564, 41.094940, 32.390007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955391, 41.386368, 32.959637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308098, 41.569000, 32.912262>,  <43.519722, 41.678577, 32.883835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308098, 41.569000, 32.912262>,  <42.955391, 41.386368, 32.959637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308098, 41.569000, 32.912262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467682, 0.878927, -0.093602,
		0.061364, 0.137927, 0.988540,
		0.881764, 0.456579, -0.118441,
		43.572628, 41.705975, 32.876728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844894, 42.011478, 33.347851>,  <42.955391, 41.386368, 32.959637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844894, 42.011478, 33.347851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.136375, 42.070442, 33.080338>,  <43.311264, 42.105820, 32.919830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.136375, 42.070442, 33.080338>,  <42.844894, 42.011478, 33.347851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136375, 42.070442, 33.080338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467311, 0.820901, -0.328242,
		0.500616, 0.551718, 0.667076,
		0.728701, 0.147409, -0.668780,
		43.354984, 42.114666, 32.879704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.436703, 36.643764, 45.240543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336868, 36.269436, 45.140995>,  <36.276966, 36.044838, 45.081264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336868, 36.269436, 45.140995>,  <36.436703, 36.643764, 45.240543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336868, 36.269436, 45.140995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578237, 0.062124, -0.813500,
		0.776755, -0.346947, 0.525623,
		-0.249588, -0.935825, -0.248873,
		36.261993, 35.988689, 45.066334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984985, 36.323223, 44.955029>,  <36.436703, 36.643764, 45.240543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984985, 36.323223, 44.955029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676964, 36.129784, 44.788578>,  <36.492153, 36.013721, 44.688709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676964, 36.129784, 44.788578>,  <36.984985, 36.323223, 44.955029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676964, 36.129784, 44.788578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462565, 0.025994, -0.886204,
		0.439384, -0.874904, 0.203679,
		-0.770049, -0.483598, -0.416122,
		36.445950, 35.984703, 44.663742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311974, 35.899559, 44.411263>,  <36.984985, 36.323223, 44.955029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311974, 35.899559, 44.411263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926296, 35.854107, 44.315418>,  <36.694889, 35.826836, 44.257912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926296, 35.854107, 44.315418>,  <37.311974, 35.899559, 44.411263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926296, 35.854107, 44.315418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254802, -0.146497, -0.955832,
		0.073510, -0.982663, 0.170205,
		-0.964195, -0.113632, -0.239615,
		36.637039, 35.820019, 44.243534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156105, 35.209991, 44.085354>,  <37.311974, 35.899559, 44.411263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156105, 35.209991, 44.085354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894478, 35.483280, 43.955498>,  <36.737499, 35.647255, 43.877583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894478, 35.483280, 43.955498>,  <37.156105, 35.209991, 44.085354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894478, 35.483280, 43.955498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026111, -0.408527, -0.912373,
		-0.755982, -0.605234, 0.249366,
		-0.654072, 0.683226, -0.324642,
		36.698257, 35.688248, 43.858105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707344, 34.727261, 43.615963>,  <37.156105, 35.209991, 44.085354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707344, 34.727261, 43.615963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616184, 35.107227, 43.530430>,  <36.561489, 35.335205, 43.479111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616184, 35.107227, 43.530430>,  <36.707344, 34.727261, 43.615963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616184, 35.107227, 43.530430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024568, -0.225157, -0.974013,
		-0.973374, -0.216724, 0.074651,
		-0.227900, 0.949913, -0.213837,
		36.547813, 35.392200, 43.466278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163815, 34.717003, 43.167522>,  <36.707344, 34.727261, 43.615963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163815, 34.717003, 43.167522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321156, 35.076149, 43.088421>,  <36.415562, 35.291637, 43.040958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321156, 35.076149, 43.088421>,  <36.163815, 34.717003, 43.167522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321156, 35.076149, 43.088421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143717, -0.152401, -0.977814,
		-0.908085, 0.413048, 0.069091,
		0.393354, 0.897867, -0.197755,
		36.439163, 35.345509, 43.029095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851681, 34.927189, 42.582085>,  <36.163815, 34.717003, 43.167522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851681, 34.927189, 42.582085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147255, 35.196678, 42.585655>,  <36.324600, 35.358372, 42.587795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147255, 35.196678, 42.585655>,  <35.851681, 34.927189, 42.582085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147255, 35.196678, 42.585655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008457, 0.022514, -0.999711,
		-0.673728, 0.738642, 0.022334,
		0.738931, 0.673722, 0.008922,
		36.368935, 35.398796, 42.588333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616741, 35.410576, 42.135437>,  <35.851681, 34.927189, 42.582085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616741, 35.410576, 42.135437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012646, 35.445087, 42.180912>,  <36.250191, 35.465794, 42.208195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012646, 35.445087, 42.180912>,  <35.616741, 35.410576, 42.135437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012646, 35.445087, 42.180912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112064, 0.023424, -0.993425,
		-0.088378, 0.995995, 0.013515,
		0.989763, 0.086282, 0.113685,
		36.309574, 35.470974, 42.215019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785545, 35.899292, 41.672653>,  <35.616741, 35.410576, 42.135437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785545, 35.899292, 41.672653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127464, 35.702724, 41.739376>,  <36.332615, 35.584785, 41.779411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127464, 35.702724, 41.739376>,  <35.785545, 35.899292, 41.672653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127464, 35.702724, 41.739376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100197, -0.159104, -0.982164,
		0.509192, 0.856268, -0.086764,
		0.854801, -0.491416, 0.166810,
		36.383904, 35.555298, 41.789417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323853, 36.291069, 41.374290>,  <35.785545, 35.899292, 41.672653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323853, 36.291069, 41.374290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439590, 35.908356, 41.385876>,  <36.509033, 35.678726, 41.392826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439590, 35.908356, 41.385876>,  <36.323853, 36.291069, 41.374290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439590, 35.908356, 41.385876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112016, 0.003799, -0.993699,
		0.950648, 0.290766, 0.108275,
		0.289345, -0.956787, 0.028959,
		36.526394, 35.621319, 41.394562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065079, 36.199207, 40.990940>,  <36.323853, 36.291069, 41.374290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065079, 36.199207, 40.990940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912922, 35.829292, 40.987564>,  <36.821629, 35.607342, 40.985538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912922, 35.829292, 40.987564>,  <37.065079, 36.199207, 40.990940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912922, 35.829292, 40.987564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112936, -0.037389, -0.992899,
		0.917903, -0.378645, 0.118664,
		-0.380393, -0.924787, -0.008444,
		36.798805, 35.551857, 40.985031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481083, 35.837566, 40.495701>,  <37.065079, 36.199207, 40.990940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481083, 35.837566, 40.495701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135792, 35.644554, 40.555042>,  <36.928619, 35.528748, 40.590649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135792, 35.644554, 40.555042>,  <37.481083, 35.837566, 40.495701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135792, 35.644554, 40.555042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136037, -0.060663, -0.988845,
		0.486145, -0.873777, -0.013276,
		-0.863225, -0.482528, 0.148357,
		36.876823, 35.499794, 40.599548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535770, 35.181782, 40.157715>,  <37.481083, 35.837566, 40.495701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535770, 35.181782, 40.157715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147038, 35.268028, 40.195786>,  <36.913799, 35.319775, 40.218628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147038, 35.268028, 40.195786>,  <37.535770, 35.181782, 40.157715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147038, 35.268028, 40.195786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125808, -0.133113, -0.983084,
		-0.199301, -0.967363, 0.156489,
		-0.971829, 0.215617, 0.095172,
		36.855488, 35.332710, 40.224339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151680, 35.554382, 40.082794>,  <37.535770, 35.181782, 40.157715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151680, 35.554382, 40.082794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021866, 35.743469, 39.755085>,  <37.943977, 35.856922, 39.558460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021866, 35.743469, 39.755085>,  <38.151680, 35.554382, 40.082794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021866, 35.743469, 39.755085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533424, 0.623810, 0.571244,
		0.781111, 0.622411, 0.049711,
		-0.324538, 0.472722, -0.819274,
		37.924503, 35.885284, 39.509304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638126, 35.100876, 40.390919>,  <38.151680, 35.554382, 40.082794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638126, 35.100876, 40.390919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924438, 35.357040, 40.279533>,  <39.096226, 35.510738, 40.212704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924438, 35.357040, 40.279533>,  <38.638126, 35.100876, 40.390919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924438, 35.357040, 40.279533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688343, -0.579830, 0.435868,
		0.117675, -0.503660, -0.855850,
		0.715777, 0.640409, -0.278460,
		39.139172, 35.549164, 40.195995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168407, 34.733437, 40.218754>,  <38.638126, 35.100876, 40.390919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168407, 34.733437, 40.218754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361275, 34.389366, 40.152287>,  <39.476997, 34.182926, 40.112408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361275, 34.389366, 40.152287>,  <39.168407, 34.733437, 40.218754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361275, 34.389366, 40.152287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335160, -0.356360, 0.872167,
		-0.809430, -0.364842, -0.460123,
		0.482172, -0.860173, -0.166169,
		39.505928, 34.131313, 40.102436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676743, 34.090786, 40.294315>,  <39.168407, 34.733437, 40.218754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676743, 34.090786, 40.294315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045849, 33.958912, 40.374123>,  <39.267315, 33.879787, 40.422009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045849, 33.958912, 40.374123>,  <38.676743, 34.090786, 40.294315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045849, 33.958912, 40.374123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311388, -0.332911, 0.890060,
		-0.227015, -0.883448, -0.409859,
		0.922768, -0.329682, 0.199519,
		39.322678, 33.860004, 40.433979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611053, 33.490753, 40.492981>,  <38.676743, 34.090786, 40.294315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611053, 33.490753, 40.492981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962730, 33.572186, 40.665295>,  <39.173737, 33.621044, 40.768684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962730, 33.572186, 40.665295>,  <38.611053, 33.490753, 40.492981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962730, 33.572186, 40.665295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351307, -0.333812, 0.874730,
		0.321877, -0.920394, -0.221966,
		0.879192, 0.203578, 0.430787,
		39.226486, 33.633259, 40.794529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738049, 32.949554, 40.894482>,  <38.611053, 33.490753, 40.492981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738049, 32.949554, 40.894482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980171, 33.235081, 41.035374>,  <39.125446, 33.406395, 41.119907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980171, 33.235081, 41.035374>,  <38.738049, 32.949554, 40.894482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980171, 33.235081, 41.035374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155361, -0.328048, 0.931798,
		0.780682, -0.618749, -0.087671,
		0.605309, 0.713817, 0.352231,
		39.161762, 33.449226, 41.141045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966850, 32.675674, 41.482204>,  <38.738049, 32.949554, 40.894482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966850, 32.675674, 41.482204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066570, 33.057667, 41.546532>,  <39.126404, 33.286861, 41.585129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066570, 33.057667, 41.546532>,  <38.966850, 32.675674, 41.482204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066570, 33.057667, 41.546532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201396, -0.111303, 0.973166,
		0.947254, -0.274997, 0.164581,
		0.249299, 0.954981, 0.160816,
		39.141361, 33.344162, 41.594776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421803, 32.735874, 42.154205>,  <38.966850, 32.675674, 41.482204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421803, 32.735874, 42.154205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239140, 33.079453, 42.061531>,  <39.129539, 33.285599, 42.005928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239140, 33.079453, 42.061531>,  <39.421803, 32.735874, 42.154205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239140, 33.079453, 42.061531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484974, -0.022029, 0.874251,
		0.745829, 0.511595, 0.426625,
		-0.456661, 0.858944, -0.231681,
		39.102142, 33.337135, 41.992027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158203, 32.767754, 42.771465>,  <39.421803, 32.735874, 42.154205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158203, 32.767754, 42.771465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019302, 33.077740, 42.560242>,  <38.935963, 33.263733, 42.433510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019302, 33.077740, 42.560242>,  <39.158203, 32.767754, 42.771465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019302, 33.077740, 42.560242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545801, 0.290876, 0.785806,
		0.762571, 0.561090, 0.321968,
		-0.347255, 0.774964, -0.528057,
		38.915127, 33.310230, 42.401825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212406, 33.339966, 43.213108>,  <39.158203, 32.767754, 42.771465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212406, 33.339966, 43.213108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899704, 33.416328, 42.975651>,  <38.712082, 33.462147, 42.833176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899704, 33.416328, 42.975651>,  <39.212406, 33.339966, 43.213108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899704, 33.416328, 42.975651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577975, 0.135542, 0.804719,
		0.234089, 0.972205, 0.004378,
		-0.781759, 0.190907, -0.593639,
		38.665176, 33.473602, 42.797558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866501, 33.893456, 43.430290>,  <39.212406, 33.339966, 43.213108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866501, 33.893456, 43.430290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594074, 33.685818, 43.223724>,  <38.430618, 33.561234, 43.099785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594074, 33.685818, 43.223724>,  <38.866501, 33.893456, 43.430290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594074, 33.685818, 43.223724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604865, 0.001386, 0.796327,
		-0.412655, 0.854714, -0.314927,
		-0.681069, -0.519097, -0.516415,
		38.389755, 33.530090, 43.068798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223274, 34.191944, 43.410038>,  <38.866501, 33.893456, 43.430290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223274, 34.191944, 43.410038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087334, 33.823536, 43.333912>,  <38.005768, 33.602489, 43.288235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087334, 33.823536, 43.333912>,  <38.223274, 34.191944, 43.410038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087334, 33.823536, 43.333912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616387, 0.065289, 0.784732,
		-0.710330, 0.384001, -0.589894,
		-0.339852, -0.921022, -0.190316,
		37.985378, 33.547230, 43.276817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504715, 34.231621, 43.565708>,  <38.223274, 34.191944, 43.410038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504715, 34.231621, 43.565708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572445, 33.837395, 43.565983>,  <37.613083, 33.600861, 43.566147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572445, 33.837395, 43.565983>,  <37.504715, 34.231621, 43.565708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572445, 33.837395, 43.565983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675270, -0.115507, 0.728470,
		-0.717873, -0.123807, -0.685077,
		0.169321, -0.985561, 0.000684,
		37.623241, 33.541725, 43.566189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863979, 33.859219, 43.595226>,  <37.504715, 34.231621, 43.565708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863979, 33.859219, 43.595226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121990, 33.585480, 43.731232>,  <37.276798, 33.421238, 43.812836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121990, 33.585480, 43.731232>,  <36.863979, 33.859219, 43.595226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121990, 33.585480, 43.731232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554811, -0.113440, 0.824206,
		-0.525471, -0.720280, -0.452855,
		0.645031, -0.684346, 0.340010,
		37.315498, 33.380177, 43.833233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476921, 33.270660, 43.928356>,  <36.863979, 33.859219, 43.595226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476921, 33.270660, 43.928356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849949, 33.250614, 44.071358>,  <37.073765, 33.238586, 44.157158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849949, 33.250614, 44.071358>,  <36.476921, 33.270660, 43.928356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849949, 33.250614, 44.071358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359283, -0.225179, 0.905654,
		0.035118, -0.973028, -0.227999,
		0.932568, -0.050111, 0.357500,
		37.129719, 33.235580, 44.178608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407600, 32.581181, 43.662922>,  <36.476921, 33.270660, 43.928356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407600, 32.581181, 43.662922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270554, 32.240089, 43.505203>,  <36.188328, 32.035435, 43.410572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270554, 32.240089, 43.505203>,  <36.407600, 32.581181, 43.662922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270554, 32.240089, 43.505203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076461, 0.443612, -0.892951,
		0.936360, -0.275789, -0.217188,
		-0.342613, -0.852730, -0.394293,
		36.167770, 31.984270, 43.386917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838760, 32.456848, 43.021694>,  <36.407600, 32.581181, 43.662922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838760, 32.456848, 43.021694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491730, 32.262596, 42.978832>,  <36.283512, 32.146046, 42.953117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491730, 32.262596, 42.978832>,  <36.838760, 32.456848, 43.021694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491730, 32.262596, 42.978832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042467, 0.287021, -0.956983,
		0.495491, -0.825703, -0.269635,
		-0.867574, -0.485627, -0.107151,
		36.231457, 32.116909, 42.946686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798145, 32.455360, 42.354698>,  <36.838760, 32.456848, 43.021694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798145, 32.455360, 42.354698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437344, 32.305836, 42.441090>,  <36.220863, 32.216122, 42.492924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437344, 32.305836, 42.441090>,  <36.798145, 32.455360, 42.354698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437344, 32.305836, 42.441090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256563, 0.061800, -0.964550,
		0.347212, -0.925444, -0.151651,
		-0.902008, -0.373811, 0.215977,
		36.166740, 32.193691, 42.505882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605839, 31.940578, 41.848896>,  <36.798145, 32.455360, 42.354698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605839, 31.940578, 41.848896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250854, 32.055309, 41.993195>,  <36.037865, 32.124146, 42.079773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250854, 32.055309, 41.993195>,  <36.605839, 31.940578, 41.848896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250854, 32.055309, 41.993195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353241, 0.079443, -0.932153,
		-0.296025, -0.954683, 0.030816,
		-0.887463, 0.286826, 0.360750,
		35.984615, 32.141357, 42.101421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101566, 31.549788, 41.470699>,  <36.605839, 31.940578, 41.848896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101566, 31.549788, 41.470699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926247, 31.876148, 41.621536>,  <35.821053, 32.071964, 41.712040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926247, 31.876148, 41.621536>,  <36.101566, 31.549788, 41.470699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926247, 31.876148, 41.621536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394088, 0.202619, -0.896460,
		-0.807827, -0.541528, 0.232728,
		-0.438303, 0.815900, 0.377091,
		35.794754, 32.120918, 41.734665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421543, 31.423275, 41.286743>,  <36.101566, 31.549788, 41.470699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421543, 31.423275, 41.286743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449497, 31.812328, 41.375381>,  <35.466270, 32.045761, 41.428566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449497, 31.812328, 41.375381>,  <35.421543, 31.423275, 41.286743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449497, 31.812328, 41.375381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437565, 0.229518, -0.869401,
		-0.896466, -0.036200, 0.441630,
		0.069889, 0.972631, 0.221595,
		35.470463, 32.104118, 41.441860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693565, 31.795023, 41.219803>,  <35.421543, 31.423275, 41.286743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693565, 31.795023, 41.219803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959930, 32.090931, 41.181236>,  <35.119751, 32.268475, 41.158096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959930, 32.090931, 41.181236>,  <34.693565, 31.795023, 41.219803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959930, 32.090931, 41.181236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425782, 0.270750, -0.863368,
		-0.612590, 0.615981, 0.495278,
		0.665915, 0.739771, -0.096415,
		35.159706, 32.312862, 41.152313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208080, 32.305450, 41.094906>,  <34.693565, 31.795023, 41.219803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208080, 32.305450, 41.094906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567577, 32.407314, 40.952126>,  <34.783276, 32.468433, 40.866459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567577, 32.407314, 40.952126>,  <34.208080, 32.305450, 41.094906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567577, 32.407314, 40.952126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428244, 0.334949, -0.839295,
		-0.094174, 0.907171, 0.410089,
		0.898742, 0.254658, -0.356947,
		34.837200, 32.483711, 40.845043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066006, 32.881908, 40.730175>,  <34.208080, 32.305450, 41.094906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066006, 32.881908, 40.730175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419464, 32.782825, 40.571274>,  <34.631538, 32.723377, 40.475933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419464, 32.782825, 40.571274>,  <34.066006, 32.881908, 40.730175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419464, 32.782825, 40.571274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385794, 0.095408, -0.917639,
		0.265207, 0.964126, -0.011257,
		0.883645, -0.247707, -0.397256,
		34.684559, 32.708515, 40.452095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176151, 33.457603, 40.220848>,  <34.066006, 32.881908, 40.730175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176151, 33.457603, 40.220848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397923, 33.132305, 40.150146>,  <34.530987, 32.937126, 40.107727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397923, 33.132305, 40.150146>,  <34.176151, 33.457603, 40.220848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397923, 33.132305, 40.150146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281788, 0.016393, -0.959336,
		0.783073, 0.581691, -0.220074,
		0.554430, -0.813245, -0.176751,
		34.564251, 32.888332, 40.097122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480537, 33.642906, 39.594303>,  <34.176151, 33.457603, 40.220848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480537, 33.642906, 39.594303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464581, 33.245026, 39.632183>,  <34.455006, 33.006298, 39.654911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464581, 33.245026, 39.632183>,  <34.480537, 33.642906, 39.594303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464581, 33.245026, 39.632183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211636, -0.084217, -0.973713,
		0.976534, -0.058886, -0.207156,
		-0.039892, -0.994706, 0.094704,
		34.452614, 32.946613, 39.660595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794994, 33.380287, 38.940361>,  <34.480537, 33.642906, 39.594303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794994, 33.380287, 38.940361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599464, 33.063656, 39.087036>,  <34.482147, 32.873676, 39.175041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599464, 33.063656, 39.087036>,  <34.794994, 33.380287, 38.940361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599464, 33.063656, 39.087036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343288, -0.211876, -0.915020,
		0.801998, -0.573166, -0.168167,
		-0.488828, -0.791574, 0.366685,
		34.452816, 32.826183, 39.197041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.229668, 30.507154, 46.424152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900677, 30.284554, 46.377110>,  <36.703281, 30.150993, 46.348885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900677, 30.284554, 46.377110>,  <37.229668, 30.507154, 46.424152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900677, 30.284554, 46.377110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163298, 0.429090, -0.888378,
		0.544850, -0.711468, -0.443793,
		-0.822479, -0.556504, -0.117608,
		36.653934, 30.117603, 46.341827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240749, 30.074165, 45.749760>,  <37.229668, 30.507154, 46.424152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240749, 30.074165, 45.749760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853912, 30.108181, 45.845680>,  <36.621811, 30.128592, 45.903233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853912, 30.108181, 45.845680>,  <37.240749, 30.074165, 45.749760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853912, 30.108181, 45.845680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207721, 0.280389, -0.937142,
		-0.146934, -0.956112, -0.253496,
		-0.967090, 0.085042, 0.239803,
		36.563786, 30.133694, 45.917622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831501, 29.636122, 45.162464>,  <37.240749, 30.074165, 45.749760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831501, 29.636122, 45.162464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612640, 29.919828, 45.340260>,  <36.481323, 30.090052, 45.446938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612640, 29.919828, 45.340260>,  <36.831501, 29.636122, 45.162464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612640, 29.919828, 45.340260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336108, 0.300167, -0.892710,
		-0.766588, -0.637843, 0.074153,
		-0.547150, 0.709265, 0.444488,
		36.448494, 30.132608, 45.473606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157753, 29.669371, 44.800533>,  <36.831501, 29.636122, 45.162464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157753, 29.669371, 44.800533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.193378, 30.020845, 44.988140>,  <36.214752, 30.231731, 45.100704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.193378, 30.020845, 44.988140>,  <36.157753, 29.669371, 44.800533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193378, 30.020845, 44.988140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228714, 0.476345, -0.848991,
		-0.969411, -0.031659, 0.243392,
		0.089060, 0.878688, 0.469015,
		36.220097, 30.284452, 45.128845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622791, 29.911266, 44.582554>,  <36.157753, 29.669371, 44.800533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622791, 29.911266, 44.582554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813278, 30.234848, 44.720428>,  <35.927570, 30.428997, 44.803154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813278, 30.234848, 44.720428>,  <35.622791, 29.911266, 44.582554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813278, 30.234848, 44.720428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225383, 0.491190, -0.841389,
		-0.849954, 0.322994, 0.416237,
		0.476215, 0.808954, 0.344691,
		35.956142, 30.477535, 44.823837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258926, 30.455082, 44.401508>,  <35.622791, 29.911266, 44.582554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258926, 30.455082, 44.401508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.604347, 30.637432, 44.487724>,  <35.811600, 30.746841, 44.539455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.604347, 30.637432, 44.487724>,  <35.258926, 30.455082, 44.401508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604347, 30.637432, 44.487724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121482, 0.602926, -0.788493,
		-0.489411, 0.654719, 0.576038,
		0.863550, 0.455875, 0.215542,
		35.863411, 30.774195, 44.552387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165127, 31.188908, 44.382915>,  <35.258926, 30.455082, 44.401508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165127, 31.188908, 44.382915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.561291, 31.164722, 44.333237>,  <35.798988, 31.150211, 44.303429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.561291, 31.164722, 44.333237>,  <35.165127, 31.188908, 44.382915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561291, 31.164722, 44.333237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073815, 0.528320, -0.845830,
		0.116760, 0.846889, 0.518792,
		0.990413, -0.060465, -0.124200,
		35.858414, 31.146584, 44.295979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457188, 31.829115, 44.363590>,  <35.165127, 31.188908, 44.382915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457188, 31.829115, 44.363590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707111, 31.595922, 44.155842>,  <35.857067, 31.456007, 44.031193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707111, 31.595922, 44.155842>,  <35.457188, 31.829115, 44.363590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707111, 31.595922, 44.155842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063465, 0.625073, -0.777982,
		0.778194, 0.519051, 0.353552,
		0.624808, -0.582983, -0.519369,
		35.894554, 31.421028, 44.000031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870296, 32.314472, 44.141762>,  <35.457188, 31.829115, 44.363590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870296, 32.314472, 44.141762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.992615, 32.009140, 43.914143>,  <36.066006, 31.825941, 43.777573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.992615, 32.009140, 43.914143>,  <35.870296, 32.314472, 44.141762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992615, 32.009140, 43.914143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021341, 0.592031, -0.805633,
		0.951857, 0.258506, 0.164753,
		0.305799, -0.763331, -0.569046,
		36.084354, 31.780140, 43.743427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564552, 32.566006, 44.465992>,  <35.870296, 32.314472, 44.141762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564552, 32.566006, 44.465992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.876884, 32.804409, 44.540905>,  <37.064285, 32.947453, 44.585854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.876884, 32.804409, 44.540905>,  <36.564552, 32.566006, 44.465992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876884, 32.804409, 44.540905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070629, -0.213633, 0.974357,
		0.620735, -0.774037, -0.124716,
		0.780833, 0.596009, 0.187279,
		37.111134, 32.983212, 44.597088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978111, 32.216656, 44.903839>,  <36.564552, 32.566006, 44.465992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978111, 32.216656, 44.903839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.121208, 32.586147, 44.958614>,  <37.207066, 32.807842, 44.991478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.121208, 32.586147, 44.958614>,  <36.978111, 32.216656, 44.903839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121208, 32.586147, 44.958614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004251, -0.148250, 0.988941,
		0.933812, -0.353200, -0.056961,
		0.357738, 0.923727, 0.136936,
		37.228531, 32.863266, 44.999695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499939, 32.211182, 45.334335>,  <36.978111, 32.216656, 44.903839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499939, 32.211182, 45.334335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.384827, 32.589622, 45.393753>,  <37.315758, 32.816689, 45.429405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.384827, 32.589622, 45.393753>,  <37.499939, 32.211182, 45.334335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384827, 32.589622, 45.393753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100851, -0.124309, 0.987105,
		0.952372, 0.299050, -0.059642,
		-0.287780, 0.946106, 0.148548,
		37.298492, 32.873455, 45.438316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998425, 32.498497, 45.799431>,  <37.499939, 32.211182, 45.334335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998425, 32.498497, 45.799431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668129, 32.723324, 45.818302>,  <37.469952, 32.858219, 45.829624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668129, 32.723324, 45.818302>,  <37.998425, 32.498497, 45.799431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668129, 32.723324, 45.818302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169979, 0.168224, 0.970983,
		0.537825, 0.809801, -0.234450,
		-0.825743, 0.562070, 0.047174,
		37.420406, 32.891945, 45.832455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263294, 33.036652, 46.130058>,  <37.998425, 32.498497, 45.799431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263294, 33.036652, 46.130058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.871994, 33.113613, 46.161076>,  <37.637215, 33.159790, 46.179688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.871994, 33.113613, 46.161076>,  <38.263294, 33.036652, 46.130058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871994, 33.113613, 46.161076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111900, 0.174678, 0.978246,
		0.174678, 0.965643, -0.192408,
		-0.978246, 0.192408, 0.077544,
		37.578522, 33.171337, 46.184338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180363, 33.716160, 46.455479>,  <38.263294, 33.036652, 46.130058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180363, 33.716160, 46.455479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876171, 33.468342, 46.533291>,  <37.693657, 33.319653, 46.579979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876171, 33.468342, 46.533291>,  <38.180363, 33.716160, 46.455479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876171, 33.468342, 46.533291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109602, 0.172814, 0.978837,
		-0.640049, 0.765704, -0.063518,
		-0.760477, -0.619542, 0.194532,
		37.648029, 33.282478, 46.591652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934162, 34.108112, 47.055103>,  <38.180363, 33.716160, 46.455479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934162, 34.108112, 47.055103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767426, 33.745129, 47.034065>,  <37.667385, 33.527340, 47.021442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767426, 33.745129, 47.034065>,  <37.934162, 34.108112, 47.055103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767426, 33.745129, 47.034065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115108, -0.004698, 0.993342,
		-0.901661, 0.420121, -0.102497,
		-0.416843, -0.907456, -0.052595,
		37.642372, 33.472893, 47.018288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469406, 34.225754, 47.562592>,  <37.934162, 34.108112, 47.055103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469406, 34.225754, 47.562592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517670, 33.836193, 47.485695>,  <37.546627, 33.602455, 47.439556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517670, 33.836193, 47.485695>,  <37.469406, 34.225754, 47.562592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517670, 33.836193, 47.485695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124675, -0.206995, 0.970366,
		-0.984834, -0.093118, -0.146397,
		0.120662, -0.973901, -0.192246,
		37.553867, 33.544022, 47.428020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929577, 33.929794, 47.868160>,  <37.469406, 34.225754, 47.562592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929577, 33.929794, 47.868160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.194405, 33.633308, 47.823868>,  <37.353302, 33.455418, 47.797295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.194405, 33.633308, 47.823868>,  <36.929577, 33.929794, 47.868160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194405, 33.633308, 47.823868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058365, -0.198295, 0.978403,
		-0.747164, -0.641311, -0.174547,
		0.662073, -0.741215, -0.110729,
		37.393028, 33.410946, 47.790649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701019, 33.362434, 48.228142>,  <36.929577, 33.929794, 47.868160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701019, 33.362434, 48.228142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080944, 33.243916, 48.187996>,  <37.308899, 33.172806, 48.163910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080944, 33.243916, 48.187996>,  <36.701019, 33.362434, 48.228142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080944, 33.243916, 48.187996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017290, -0.370045, 0.928853,
		-0.312350, -0.880499, -0.356595,
		0.949810, -0.296293, -0.100360,
		37.365887, 33.155025, 48.157887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669598, 32.621792, 48.429016>,  <36.701019, 33.362434, 48.228142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669598, 32.621792, 48.429016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033764, 32.781059, 48.473915>,  <37.252266, 32.876621, 48.500854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033764, 32.781059, 48.473915>,  <36.669598, 32.621792, 48.429016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033764, 32.781059, 48.473915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007807, -0.254752, 0.966975,
		0.413616, -0.881227, -0.228822,
		0.910418, 0.398170, 0.112249,
		37.306889, 32.900509, 48.507591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168930, 32.089714, 48.837555>,  <36.669598, 32.621792, 48.429016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168930, 32.089714, 48.837555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316566, 32.458904, 48.881176>,  <37.405148, 32.680420, 48.907349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316566, 32.458904, 48.881176>,  <37.168930, 32.089714, 48.837555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316566, 32.458904, 48.881176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002930, -0.116179, 0.993224,
		0.929390, -0.366905, -0.040175,
		0.369086, 0.922975, 0.109051,
		37.427292, 32.735798, 48.913891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759510, 31.993494, 49.218830>,  <37.168930, 32.089714, 48.837555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759510, 31.993494, 49.218830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645432, 32.375500, 49.251354>,  <37.576984, 32.604702, 49.270870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645432, 32.375500, 49.251354>,  <37.759510, 31.993494, 49.218830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645432, 32.375500, 49.251354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023364, -0.077882, 0.996689,
		0.958183, 0.286155, -0.000101,
		-0.285200, 0.955013, 0.081311,
		37.559872, 32.662003, 49.275749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151009, 32.352905, 49.805149>,  <37.759510, 31.993494, 49.218830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151009, 32.352905, 49.805149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829403, 32.582790, 49.744144>,  <37.636440, 32.720722, 49.707542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829403, 32.582790, 49.744144>,  <38.151009, 32.352905, 49.805149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829403, 32.582790, 49.744144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015496, 0.236145, 0.971594,
		0.594405, 0.783541, -0.180959,
		-0.804016, 0.574716, -0.152508,
		37.588200, 32.755207, 49.698391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.382277, 30.026697, 48.970371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.721445, 29.832186, 48.885937>,  <30.924946, 29.715479, 48.835278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.721445, 29.832186, 48.885937>,  <30.382277, 30.026697, 48.970371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721445, 29.832186, 48.885937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030180, 0.441822, -0.896595,
		0.529259, 0.753874, 0.389307,
		0.847924, -0.486280, -0.211086,
		30.975822, 29.686302, 48.822613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782686, 30.562817, 48.772865>,  <30.382277, 30.026697, 48.970371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782686, 30.562817, 48.772865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.967436, 30.237806, 48.630611>,  <31.078285, 30.042801, 48.545261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.967436, 30.237806, 48.630611>,  <30.782686, 30.562817, 48.772865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967436, 30.237806, 48.630611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179885, 0.478444, -0.859496,
		0.868512, 0.333006, 0.367142,
		0.461874, -0.812526, -0.355631,
		31.105999, 29.994049, 48.523922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243856, 30.832163, 48.387829>,  <30.782686, 30.562817, 48.772865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243856, 30.832163, 48.387829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.224421, 30.460289, 48.241776>,  <31.212759, 30.237164, 48.154144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.224421, 30.460289, 48.241776>,  <31.243856, 30.832163, 48.387829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224421, 30.460289, 48.241776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148125, 0.354817, -0.923127,
		0.987774, -0.098938, 0.120470,
		-0.048588, -0.929686, -0.365134,
		31.209845, 30.181383, 48.132236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790646, 30.831120, 48.010677>,  <31.243856, 30.832163, 48.387829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790646, 30.831120, 48.010677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529446, 30.553274, 47.889946>,  <31.372726, 30.386566, 47.817509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529446, 30.553274, 47.889946>,  <31.790646, 30.831120, 48.010677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529446, 30.553274, 47.889946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196053, 0.229910, -0.953260,
		0.731543, -0.681653, -0.013949,
		-0.652999, -0.694616, -0.301829,
		31.333546, 30.344889, 47.799397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096226, 30.564062, 47.435593>,  <31.790646, 30.831120, 48.010677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096226, 30.564062, 47.435593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711740, 30.466887, 47.383358>,  <31.481050, 30.408581, 47.352016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711740, 30.466887, 47.383358>,  <32.096226, 30.564062, 47.435593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711740, 30.466887, 47.383358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037442, 0.354154, -0.934437,
		0.273260, -0.903081, -0.331321,
		-0.961211, -0.242939, -0.130589,
		31.423378, 30.394005, 47.344181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094063, 30.040516, 46.750275>,  <32.096226, 30.564062, 47.435593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094063, 30.040516, 46.750275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757549, 30.239952, 46.833839>,  <31.555641, 30.359613, 46.883976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757549, 30.239952, 46.833839>,  <32.094063, 30.040516, 46.750275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757549, 30.239952, 46.833839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112612, 0.216335, -0.969803,
		-0.528729, -0.839409, -0.125853,
		-0.841287, 0.498590, 0.208910,
		31.505163, 30.389528, 46.896511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548412, 29.829596, 46.324017>,  <32.094063, 30.040516, 46.750275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548412, 29.829596, 46.324017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377258, 30.168182, 46.450764>,  <31.274565, 30.371334, 46.526814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377258, 30.168182, 46.450764>,  <31.548412, 29.829596, 46.324017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377258, 30.168182, 46.450764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391204, 0.142595, -0.909190,
		-0.814783, -0.512991, 0.270127,
		-0.427887, 0.846468, 0.316868,
		31.248892, 30.422123, 46.545826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811815, 29.870979, 46.083717>,  <31.548412, 29.829596, 46.324017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811815, 29.870979, 46.083717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.917599, 30.249453, 46.158329>,  <30.981070, 30.476538, 46.203098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.917599, 30.249453, 46.158329>,  <30.811815, 29.870979, 46.083717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917599, 30.249453, 46.158329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337313, 0.271953, -0.901255,
		-0.903482, 0.175426, 0.391082,
		0.264460, 0.946186, 0.186532,
		30.996937, 30.533308, 46.214287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321304, 30.311426, 45.805828>,  <30.811815, 29.870979, 46.083717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321304, 30.311426, 45.805828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.628094, 30.566448, 45.834877>,  <30.812168, 30.719461, 45.852306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.628094, 30.566448, 45.834877>,  <30.321304, 30.311426, 45.805828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628094, 30.566448, 45.834877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160716, 0.300423, -0.940168,
		-0.621227, 0.709413, 0.332882,
		0.766973, 0.637557, 0.072618,
		30.858185, 30.757715, 45.856663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129274, 30.893782, 45.571522>,  <30.321304, 30.311426, 45.805828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129274, 30.893782, 45.571522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.519377, 30.981155, 45.557869>,  <30.753437, 31.033579, 45.549679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.519377, 30.981155, 45.557869>,  <30.129274, 30.893782, 45.571522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519377, 30.981155, 45.557869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140698, 0.494135, -0.857924,
		-0.170536, 0.841497, 0.512641,
		0.975255, 0.218435, -0.034129,
		30.811953, 31.046686, 45.547630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149157, 31.619576, 45.567944>,  <30.129274, 30.893782, 45.571522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149157, 31.619576, 45.567944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.512478, 31.535362, 45.423355>,  <30.730471, 31.484835, 45.336601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.512478, 31.535362, 45.423355>,  <30.149157, 31.619576, 45.567944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512478, 31.535362, 45.423355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192552, 0.556712, -0.808081,
		0.371365, 0.803584, 0.465124,
		0.908302, -0.210532, -0.361475,
		30.784969, 31.472202, 45.314911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444515, 32.281693, 45.392048>,  <30.149157, 31.619576, 45.567944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444515, 32.281693, 45.392048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.651951, 32.002785, 45.194103>,  <30.776413, 31.835442, 45.075336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.651951, 32.002785, 45.194103>,  <30.444515, 32.281693, 45.392048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651951, 32.002785, 45.194103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057416, 0.605859, -0.793498,
		0.853093, 0.383087, 0.354227,
		0.518590, -0.697266, -0.494859,
		30.807528, 31.793606, 45.045647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062263, 32.642441, 45.060268>,  <30.444515, 32.281693, 45.392048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062263, 32.642441, 45.060268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.963490, 32.315899, 44.851425>,  <30.904224, 32.119976, 44.726120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.963490, 32.315899, 44.851425>,  <31.062263, 32.642441, 45.060268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963490, 32.315899, 44.851425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145715, 0.501382, -0.852867,
		0.958013, -0.286683, -0.004855,
		-0.246937, -0.816351, -0.522105,
		30.889408, 32.070995, 44.694794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683010, 32.513744, 44.568993>,  <31.062263, 32.642441, 45.060268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683010, 32.513744, 44.568993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.366011, 32.322132, 44.418007>,  <31.175812, 32.207165, 44.327415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.366011, 32.322132, 44.418007>,  <31.683010, 32.513744, 44.568993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366011, 32.322132, 44.418007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183084, 0.403500, -0.896475,
		0.581748, -0.779560, -0.232069,
		-0.792496, -0.479034, -0.377460,
		31.128262, 32.178421, 44.304768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441994, 32.413651, 44.495186>,  <31.683010, 32.513744, 44.568993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441994, 32.413651, 44.495186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.572571, 32.769196, 44.623783>,  <32.650917, 32.982521, 44.700943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.572571, 32.769196, 44.623783>,  <32.441994, 32.413651, 44.495186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572571, 32.769196, 44.623783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100103, -0.305707, 0.946849,
		0.939902, -0.341274, -0.010818,
		0.326442, 0.888862, 0.321497,
		32.670502, 33.035854, 44.720234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970673, 32.288906, 45.034458>,  <32.441994, 32.413651, 44.495186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970673, 32.288906, 45.034458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.825115, 32.652817, 45.114346>,  <32.737782, 32.871162, 45.162277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.825115, 32.652817, 45.114346>,  <32.970673, 32.288906, 45.034458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825115, 32.652817, 45.114346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196981, -0.284733, 0.938150,
		0.910374, 0.302046, 0.282822,
		-0.363893, 0.909778, 0.199716,
		32.715946, 32.925751, 45.174259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274086, 32.601288, 45.653027>,  <32.970673, 32.288906, 45.034458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274086, 32.601288, 45.653027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.914234, 32.773495, 45.623840>,  <32.698322, 32.876820, 45.606327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.914234, 32.773495, 45.623840>,  <33.274086, 32.601288, 45.653027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914234, 32.773495, 45.623840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107146, -0.055652, 0.992685,
		0.423312, 0.900863, 0.096194,
		-0.899626, 0.430522, -0.072966,
		32.644348, 32.902653, 45.601952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291172, 33.248219, 46.070812>,  <33.274086, 32.601288, 45.653027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291172, 33.248219, 46.070812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901932, 33.160061, 46.043995>,  <32.668388, 33.107166, 46.027905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901932, 33.160061, 46.043995>,  <33.291172, 33.248219, 46.070812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901932, 33.160061, 46.043995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070408, 0.007441, 0.997490,
		-0.219341, 0.975383, -0.022758,
		-0.973104, -0.220393, -0.067043,
		32.610001, 33.093945, 46.023884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016487, 33.699707, 46.585262>,  <33.291172, 33.248219, 46.070812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016487, 33.699707, 46.585262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.736065, 33.429905, 46.492687>,  <32.567810, 33.268024, 46.437141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.736065, 33.429905, 46.492687>,  <33.016487, 33.699707, 46.585262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736065, 33.429905, 46.492687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305257, -0.009461, 0.952223,
		-0.644468, 0.738210, -0.199265,
		-0.701056, -0.674504, -0.231441,
		32.525749, 33.227554, 46.423256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420738, 34.020004, 46.862240>,  <33.016487, 33.699707, 46.585262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420738, 34.020004, 46.862240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.374081, 33.624298, 46.827045>,  <32.346088, 33.386875, 46.805931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.374081, 33.624298, 46.827045>,  <32.420738, 34.020004, 46.862240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374081, 33.624298, 46.827045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187471, -0.065063, 0.980113,
		-0.975321, 0.130814, -0.177870,
		-0.116640, -0.989270, -0.087981,
		32.339088, 33.327518, 46.800652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949858, 33.841156, 47.328598>,  <32.420738, 34.020004, 46.862240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949858, 33.841156, 47.328598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111221, 33.484737, 47.245369>,  <32.208038, 33.270885, 47.195431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111221, 33.484737, 47.245369>,  <31.949858, 33.841156, 47.328598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111221, 33.484737, 47.245369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213001, -0.312595, 0.925697,
		-0.889882, -0.329117, -0.315899,
		0.403411, -0.891048, -0.208070,
		32.232246, 33.217422, 47.182949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464108, 33.370300, 47.586266>,  <31.949858, 33.841156, 47.328598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464108, 33.370300, 47.586266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818331, 33.185184, 47.570240>,  <32.030865, 33.074116, 47.560623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818331, 33.185184, 47.570240>,  <31.464108, 33.370300, 47.586266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818331, 33.185184, 47.570240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156281, -0.378040, 0.912503,
		-0.437448, -0.801814, -0.407103,
		0.885559, -0.462796, -0.040064,
		32.084000, 33.046345, 47.558220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402842, 32.775623, 48.039787>,  <31.464108, 33.370300, 47.586266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402842, 32.775623, 48.039787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.798256, 32.788155, 47.980705>,  <32.035503, 32.795673, 47.945255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.798256, 32.788155, 47.980705>,  <31.402842, 32.775623, 48.039787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798256, 32.788155, 47.980705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144892, -0.472020, 0.869599,
		-0.042479, -0.881031, -0.471147,
		0.988535, 0.031326, -0.147706,
		32.094818, 32.797554, 47.936394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624241, 32.109230, 48.071434>,  <31.402842, 32.775623, 48.039787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624241, 32.109230, 48.071434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931725, 32.352707, 48.150002>,  <32.116215, 32.498791, 48.197144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931725, 32.352707, 48.150002>,  <31.624241, 32.109230, 48.071434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931725, 32.352707, 48.150002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224943, -0.544768, 0.807854,
		0.598736, -0.576823, -0.555689,
		0.768710, 0.608690, 0.196420,
		32.162338, 32.535313, 48.208927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202778, 31.660515, 48.394054>,  <31.624241, 32.109230, 48.071434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202778, 31.660515, 48.394054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.339584, 32.031528, 48.454327>,  <32.421669, 32.254135, 48.490490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.339584, 32.031528, 48.454327>,  <32.202778, 31.660515, 48.394054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339584, 32.031528, 48.454327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341617, -0.272106, 0.899586,
		0.875399, -0.256197, -0.409927,
		0.342015, 0.927535, 0.150681,
		32.442188, 32.309788, 48.499531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989563, 31.738195, 48.516102>,  <32.202778, 31.660515, 48.394054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989563, 31.738195, 48.516102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.825050, 32.057537, 48.692047>,  <32.726341, 32.249142, 48.797615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.825050, 32.057537, 48.692047>,  <32.989563, 31.738195, 48.516102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825050, 32.057537, 48.692047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339928, -0.313413, 0.886691,
		0.845752, 0.514201, -0.142482,
		-0.411281, 0.798354, 0.439861,
		32.701668, 32.297043, 48.824005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490719, 32.022171, 48.884205>,  <32.989563, 31.738195, 48.516102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490719, 32.022171, 48.884205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153782, 32.153023, 49.055527>,  <32.951618, 32.231533, 49.158321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153782, 32.153023, 49.055527>,  <33.490719, 32.022171, 48.884205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153782, 32.153023, 49.055527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306847, -0.362232, 0.880132,
		0.443063, 0.872797, 0.204745,
		-0.842342, 0.327129, 0.428307,
		32.901081, 32.251160, 49.184017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618420, 32.351921, 49.566292>,  <33.490719, 32.022171, 48.884205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618420, 32.351921, 49.566292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.227444, 32.275986, 49.603336>,  <32.992859, 32.230423, 49.625565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.227444, 32.275986, 49.603336>,  <33.618420, 32.351921, 49.566292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227444, 32.275986, 49.603336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116474, -0.118621, 0.986085,
		-0.176210, 0.974623, 0.138055,
		-0.977437, -0.189838, 0.092616,
		32.934212, 32.219036, 49.631123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614471, 33.093750, 49.787876>,  <33.618420, 32.351921, 49.566292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614471, 33.093750, 49.787876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.890434, 33.375889, 49.853012>,  <34.056011, 33.545174, 49.892094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.890434, 33.375889, 49.853012>,  <33.614471, 33.093750, 49.787876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890434, 33.375889, 49.853012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208365, 0.408916, -0.888466,
		-0.693265, 0.579027, 0.429082,
		0.689904, 0.705348, 0.162839,
		34.097404, 33.587494, 49.901863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453201, 33.653019, 49.287251>,  <33.614471, 33.093750, 49.787876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453201, 33.653019, 49.287251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.826057, 33.766994, 49.376617>,  <34.049770, 33.835381, 49.430237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.826057, 33.766994, 49.376617>,  <33.453201, 33.653019, 49.287251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826057, 33.766994, 49.376617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095454, 0.401824, -0.910728,
		-0.349281, 0.870256, 0.347359,
		0.932143, 0.284943, 0.223419,
		34.105701, 33.852478, 49.443642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495922, 34.340946, 49.266670>,  <33.453201, 33.653019, 49.287251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495922, 34.340946, 49.266670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873207, 34.221169, 49.209133>,  <34.099579, 34.149303, 49.174610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873207, 34.221169, 49.209133>,  <33.495922, 34.340946, 49.266670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873207, 34.221169, 49.209133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105701, 0.681028, -0.724588,
		0.314933, 0.668234, 0.674004,
		0.943210, -0.299439, -0.143845,
		34.156170, 34.131336, 49.165981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797943, 34.922573, 48.990108>,  <33.495922, 34.340946, 49.266670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797943, 34.922573, 48.990108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.045448, 34.623379, 48.894070>,  <34.193951, 34.443863, 48.836445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.045448, 34.623379, 48.894070>,  <33.797943, 34.922573, 48.990108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045448, 34.623379, 48.894070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133016, 0.400975, -0.906381,
		0.774237, 0.528895, 0.347601,
		0.618760, -0.747990, -0.240098,
		34.231075, 34.398983, 48.822041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341011, 35.263111, 48.686813>,  <33.797943, 34.922573, 48.990108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341011, 35.263111, 48.686813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350262, 34.879425, 48.574120>,  <34.355812, 34.649216, 48.506504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350262, 34.879425, 48.574120>,  <34.341011, 35.263111, 48.686813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350262, 34.879425, 48.574120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116413, 0.282479, -0.952184,
		0.992932, -0.010779, 0.118197,
		0.023124, -0.959213, -0.281737,
		34.357201, 34.591660, 48.489597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953743, 35.194294, 48.268692>,  <34.341011, 35.263111, 48.686813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953743, 35.194294, 48.268692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717281, 34.892330, 48.155098>,  <34.575405, 34.711151, 48.086941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717281, 34.892330, 48.155098>,  <34.953743, 35.194294, 48.268692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717281, 34.892330, 48.155098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246036, 0.166537, -0.954846,
		0.768116, -0.634333, 0.087286,
		-0.591154, -0.754909, -0.283989,
		34.539936, 34.665859, 48.069901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395664, 34.772156, 47.940983>,  <34.953743, 35.194294, 48.268692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395664, 34.772156, 47.940983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.053246, 34.635769, 47.785587>,  <34.847794, 34.553936, 47.692352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.053246, 34.635769, 47.785587>,  <35.395664, 34.772156, 47.940983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053246, 34.635769, 47.785587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381498, 0.090338, -0.919945,
		0.348766, -0.935725, 0.052744,
		-0.856050, -0.340967, -0.388484,
		34.796429, 34.533478, 47.669041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486069, 34.195396, 47.349228>,  <35.395664, 34.772156, 47.940983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486069, 34.195396, 47.349228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.151581, 34.402550, 47.277081>,  <34.950890, 34.526844, 47.233791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.151581, 34.402550, 47.277081>,  <35.486069, 34.195396, 47.349228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151581, 34.402550, 47.277081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225633, 0.025133, -0.973888,
		-0.499832, -0.855079, -0.137870,
		-0.836216, 0.517888, -0.180372,
		34.900715, 34.557915, 47.222969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147522, 33.996727, 46.601933>,  <35.486069, 34.195396, 47.349228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147522, 33.996727, 46.601933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.019161, 34.363510, 46.696774>,  <34.942146, 34.583580, 46.753677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.019161, 34.363510, 46.696774>,  <35.147522, 33.996727, 46.601933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019161, 34.363510, 46.696774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403900, 0.358931, -0.841447,
		-0.856671, -0.174257, -0.485540,
		-0.320903, 0.916953, 0.237104,
		34.922890, 34.638596, 46.767906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748055, 34.337425, 46.017582>,  <35.147522, 33.996727, 46.601933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748055, 34.337425, 46.017582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867527, 34.645180, 46.243443>,  <34.939213, 34.829834, 46.378960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867527, 34.645180, 46.243443>,  <34.748055, 34.337425, 46.017582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867527, 34.645180, 46.243443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344747, 0.464722, -0.815588,
		-0.889909, 0.438264, -0.126439,
		0.298684, 0.769388, 0.564651,
		34.957130, 34.875996, 46.412838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540756, 34.938580, 45.615650>,  <34.748055, 34.337425, 46.017582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540756, 34.938580, 45.615650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.832382, 35.046444, 45.867283>,  <35.007359, 35.111164, 46.018261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.832382, 35.046444, 45.867283>,  <34.540756, 34.938580, 45.615650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832382, 35.046444, 45.867283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418206, 0.552079, -0.721327,
		-0.541817, 0.788981, 0.289729,
		0.729067, 0.269661, 0.629082,
		35.051102, 35.127342, 46.056007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678493, 35.637054, 45.385689>,  <34.540756, 34.938580, 45.615650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678493, 35.637054, 45.385689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.003006, 35.558365, 45.605911>,  <35.197716, 35.511150, 45.738045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.003006, 35.558365, 45.605911>,  <34.678493, 35.637054, 45.385689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003006, 35.558365, 45.605911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558126, 0.541030, -0.629112,
		-0.174107, 0.817671, 0.548727,
		0.811284, -0.196726, 0.550560,
		35.246391, 35.499348, 45.771080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024071, 36.315193, 45.493637>,  <34.678493, 35.637054, 45.385689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024071, 36.315193, 45.493637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.290344, 36.019222, 45.532349>,  <35.450108, 35.841640, 45.555576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.290344, 36.019222, 45.532349>,  <35.024071, 36.315193, 45.493637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290344, 36.019222, 45.532349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600973, 0.454701, -0.657327,
		0.442373, 0.495732, 0.747366,
		0.665686, -0.739930, 0.096774,
		35.490051, 35.797245, 45.561382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639858, 36.626419, 45.312519>,  <35.024071, 36.315193, 45.493637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639858, 36.626419, 45.312519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739880, 36.239605, 45.293232>,  <35.799892, 36.007519, 45.281658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739880, 36.239605, 45.293232>,  <35.639858, 36.626419, 45.312519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739880, 36.239605, 45.293232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624259, 0.199085, -0.755425,
		0.740119, 0.158793, 0.653459,
		0.250050, -0.967031, -0.048219,
		35.814896, 35.949497, 45.278767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.257401, 35.133831, 28.225517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.901903, 35.154926, 28.407660>,  <27.688604, 35.167583, 28.516945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.901903, 35.154926, 28.407660>,  <28.257401, 35.133831, 28.225517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901903, 35.154926, 28.407660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457681, 0.046444, 0.887903,
		0.025678, 0.997528, -0.065414,
		-0.888746, 0.052738, 0.455357,
		27.635279, 35.170750, 28.544266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336830, 34.497070, 27.839102>,  <28.257401, 35.133831, 28.225517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336830, 34.497070, 27.839102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447075, 34.179184, 27.622780>,  <28.513222, 33.988453, 27.492987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447075, 34.179184, 27.622780>,  <28.336830, 34.497070, 27.839102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447075, 34.179184, 27.622780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838353, -0.473984, 0.269264,
		-0.470312, 0.379149, -0.796902,
		0.275627, -0.794724, -0.540781,
		28.529758, 33.940769, 27.460539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914167, 34.205551, 27.200020>,  <28.336830, 34.497070, 27.839102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914167, 34.205551, 27.200020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095078, 33.959496, 27.458338>,  <28.203625, 33.811863, 27.613329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095078, 33.959496, 27.458338>,  <27.914167, 34.205551, 27.200020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095078, 33.959496, 27.458338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882704, -0.205149, 0.422785,
		-0.127587, -0.761262, -0.635769,
		0.452277, -0.615137, 0.645795,
		28.230761, 33.774956, 27.652077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547110, 33.488247, 27.247408>,  <27.914167, 34.205551, 27.200020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547110, 33.488247, 27.247408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.777948, 33.506252, 27.573582>,  <27.916451, 33.517056, 27.769287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.777948, 33.506252, 27.573582>,  <27.547110, 33.488247, 27.247408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777948, 33.506252, 27.573582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777297, -0.276041, 0.565342,
		0.250543, -0.960091, -0.124311,
		0.577095, 0.045016, 0.815436,
		27.951077, 33.519756, 27.818213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356911, 32.889709, 27.674484>,  <27.547110, 33.488247, 27.247408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356911, 32.889709, 27.674484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.512152, 33.158947, 27.926300>,  <27.605297, 33.320488, 28.077389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.512152, 33.158947, 27.926300>,  <27.356911, 32.889709, 27.674484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512152, 33.158947, 27.926300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602555, -0.331544, 0.725952,
		0.697354, -0.661077, 0.276903,
		0.388105, 0.673095, 0.629538,
		27.628584, 33.360874, 28.115162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341908, 32.491489, 28.289625>,  <27.356911, 32.889709, 27.674484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341908, 32.491489, 28.289625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.397821, 32.869850, 28.406746>,  <27.431370, 33.096867, 28.477018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.397821, 32.869850, 28.406746>,  <27.341908, 32.491489, 28.289625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397821, 32.869850, 28.406746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600877, -0.154003, 0.784366,
		0.787024, -0.285580, 0.546842,
		0.139784, 0.945900, 0.292803,
		27.439756, 33.153622, 28.494587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562899, 32.440903, 29.041775>,  <27.341908, 32.491489, 28.289625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562899, 32.440903, 29.041775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424122, 32.812256, 28.988508>,  <27.340855, 33.035069, 28.956549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424122, 32.812256, 28.988508>,  <27.562899, 32.440903, 29.041775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424122, 32.812256, 28.988508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474902, -0.051460, 0.878533,
		0.808763, 0.368042, 0.458745,
		-0.346944, 0.928384, -0.133165,
		27.320038, 33.090771, 28.948559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579275, 32.674889, 29.640518>,  <27.562899, 32.440903, 29.041775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579275, 32.674889, 29.640518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.360319, 32.974648, 29.491508>,  <27.228947, 33.154503, 29.402102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.360319, 32.974648, 29.491508>,  <27.579275, 32.674889, 29.640518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360319, 32.974648, 29.491508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460529, 0.101942, 0.881772,
		0.698769, 0.654231, 0.289315,
		-0.547389, 0.749393, -0.372526,
		27.196102, 33.199467, 29.379751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519260, 33.065796, 30.173969>,  <27.579275, 32.674889, 29.640518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519260, 33.065796, 30.173969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210690, 33.168686, 29.941166>,  <27.025547, 33.230419, 29.801483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210690, 33.168686, 29.941166>,  <27.519260, 33.065796, 30.173969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210690, 33.168686, 29.941166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598643, 0.016668, 0.800842,
		0.215699, 0.966207, 0.141129,
		-0.771427, 0.257227, -0.582009,
		26.979261, 33.245853, 29.766563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279074, 33.662052, 30.504303>,  <27.519260, 33.065796, 30.173969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279074, 33.662052, 30.504303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988956, 33.500607, 30.281218>,  <26.814886, 33.403740, 30.147367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988956, 33.500607, 30.281218>,  <27.279074, 33.662052, 30.504303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988956, 33.500607, 30.281218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622964, 0.039969, 0.781229,
		-0.293024, 0.914056, -0.280427,
		-0.725295, -0.403614, -0.557712,
		26.771368, 33.379520, 30.113903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765266, 34.116905, 30.476000>,  <27.279074, 33.662052, 30.504303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765266, 34.116905, 30.476000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611166, 33.753536, 30.411066>,  <26.518705, 33.535515, 30.372105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611166, 33.753536, 30.411066>,  <26.765266, 34.116905, 30.476000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611166, 33.753536, 30.411066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617467, 0.123026, 0.776916,
		-0.685795, 0.399545, -0.608316,
		-0.385252, -0.908421, -0.162335,
		26.495590, 33.481010, 30.362366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165585, 34.139523, 30.787766>,  <26.765266, 34.116905, 30.476000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165585, 34.139523, 30.787766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112082, 33.752022, 30.704212>,  <26.079979, 33.519520, 30.654081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112082, 33.752022, 30.704212>,  <26.165585, 34.139523, 30.787766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112082, 33.752022, 30.704212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664928, -0.068560, 0.743755,
		-0.734834, 0.238373, -0.634979,
		-0.133757, -0.968751, -0.208881,
		26.071955, 33.461395, 30.641548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463696, 33.931332, 30.820330>,  <26.165585, 34.139523, 30.787766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463696, 33.931332, 30.820330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690332, 33.613831, 30.908804>,  <25.826315, 33.423328, 30.961889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690332, 33.613831, 30.908804>,  <25.463696, 33.931332, 30.820330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690332, 33.613831, 30.908804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555274, -0.169473, 0.814217,
		-0.608805, -0.584149, -0.536774,
		0.566593, -0.793756, 0.221186,
		25.860310, 33.375706, 30.975161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935892, 33.552540, 31.049467>,  <25.463696, 33.931332, 30.820330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935892, 33.552540, 31.049467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.262865, 33.358242, 31.173309>,  <25.459049, 33.241661, 31.247616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.262865, 33.358242, 31.173309>,  <24.935892, 33.552540, 31.049467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262865, 33.358242, 31.173309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338331, 0.030135, 0.940545,
		-0.466196, -0.873580, -0.139710,
		0.817431, -0.485746, 0.309608,
		25.508095, 33.212517, 31.266191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720579, 33.088589, 31.462229>,  <24.935892, 33.552540, 31.049467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720579, 33.088589, 31.462229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.105844, 33.117580, 31.565819>,  <25.337004, 33.134975, 31.627972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.105844, 33.117580, 31.565819>,  <24.720579, 33.088589, 31.462229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105844, 33.117580, 31.565819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263774, 0.067049, 0.962251,
		0.052390, -0.995113, 0.083700,
		0.963161, 0.072490, 0.258973,
		25.394793, 33.139324, 31.643511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874969, 32.537701, 32.004227>,  <24.720579, 33.088589, 31.462229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874969, 32.537701, 32.004227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.114410, 32.856083, 32.040279>,  <25.258076, 33.047112, 32.061909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.114410, 32.856083, 32.040279>,  <24.874969, 32.537701, 32.004227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114410, 32.856083, 32.040279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299590, 0.118108, 0.946729,
		0.742914, -0.593715, 0.309161,
		0.598602, 0.795960, 0.090127,
		25.293991, 33.094872, 32.067318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999594, 32.549995, 32.702896>,  <24.874969, 32.537701, 32.004227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999594, 32.549995, 32.702896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.117649, 32.913918, 32.586182>,  <25.188482, 33.132271, 32.516151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.117649, 32.913918, 32.586182>,  <24.999594, 32.549995, 32.702896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117649, 32.913918, 32.586182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384473, 0.392668, 0.835460,
		0.874685, -0.134391, 0.465688,
		0.295139, 0.909809, -0.291791,
		25.206190, 33.186859, 32.498646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429333, 32.916615, 33.268250>,  <24.999594, 32.549995, 32.702896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429333, 32.916615, 33.268250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.286596, 33.215137, 33.043503>,  <25.200954, 33.394249, 32.908653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.286596, 33.215137, 33.043503>,  <25.429333, 32.916615, 33.268250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286596, 33.215137, 33.043503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375296, 0.436260, 0.817820,
		0.855462, 0.502699, 0.124408,
		-0.356843, 0.746304, -0.561866,
		25.179543, 33.439030, 32.874943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533335, 33.541466, 33.697102>,  <25.429333, 32.916615, 33.268250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533335, 33.541466, 33.697102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.260859, 33.666756, 33.432415>,  <25.097372, 33.741932, 33.273602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.260859, 33.666756, 33.432415>,  <25.533335, 33.541466, 33.697102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260859, 33.666756, 33.432415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424793, 0.567036, 0.705706,
		0.596263, 0.761813, -0.253203,
		-0.681191, 0.313228, -0.661716,
		25.056501, 33.760723, 33.233902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434114, 34.305435, 33.690975>,  <25.533335, 33.541466, 33.697102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434114, 34.305435, 33.690975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.095957, 34.160370, 33.534115>,  <24.893063, 34.073330, 33.439999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.095957, 34.160370, 33.534115>,  <25.434114, 34.305435, 33.690975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095957, 34.160370, 33.534115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533721, 0.544311, 0.647199,
		-0.021262, 0.756439, -0.653719,
		-0.845393, -0.362664, -0.392155,
		24.842339, 34.051571, 33.416470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092575, 34.378170, 34.115913>,  <25.434114, 34.305435, 33.690975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092575, 34.378170, 34.115913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329559, 34.389759, 34.437943>,  <26.471750, 34.396713, 34.631161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329559, 34.389759, 34.437943>,  <26.092575, 34.378170, 34.115913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329559, 34.389759, 34.437943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782256, -0.259517, -0.566328,
		0.192521, 0.965304, -0.176421,
		0.592463, 0.028976, 0.805077,
		26.507298, 34.398453, 34.679466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689169, 34.930031, 34.073372>,  <26.092575, 34.378170, 34.115913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689169, 34.930031, 34.073372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.810097, 34.621643, 34.297588>,  <26.882654, 34.436611, 34.432117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.810097, 34.621643, 34.297588>,  <26.689169, 34.930031, 34.073372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810097, 34.621643, 34.297588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775222, -0.143314, -0.615216,
		0.554647, 0.620539, 0.554346,
		0.302320, -0.770969, 0.560544,
		26.900793, 34.390354, 34.465752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471252, 34.926102, 34.137196>,  <26.689169, 34.930031, 34.073372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471252, 34.926102, 34.137196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.386354, 34.548893, 34.239697>,  <27.335415, 34.322567, 34.301197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.386354, 34.548893, 34.239697>,  <27.471252, 34.926102, 34.137196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386354, 34.548893, 34.239697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813139, -0.315869, -0.488909,
		0.541993, 0.104600, 0.833848,
		-0.212246, -0.943020, 0.256253,
		27.322681, 34.265987, 34.316574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986990, 34.771820, 34.469410>,  <27.471252, 34.926102, 34.137196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986990, 34.771820, 34.469410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838228, 34.418770, 34.354412>,  <27.748970, 34.206940, 34.285412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838228, 34.418770, 34.354412>,  <27.986990, 34.771820, 34.469410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838228, 34.418770, 34.354412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901183, -0.269028, -0.339844,
		0.222613, -0.385474, 0.895463,
		-0.371905, -0.882629, -0.287494,
		27.726656, 34.153980, 34.268166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373220, 34.279308, 34.680321>,  <27.986990, 34.771820, 34.469410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373220, 34.279308, 34.680321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175392, 34.075771, 34.398476>,  <28.056696, 33.953651, 34.229366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175392, 34.075771, 34.398476>,  <28.373220, 34.279308, 34.680321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175392, 34.075771, 34.398476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868738, -0.264826, -0.418523,
		0.026360, -0.819116, 0.573023,
		-0.494570, -0.508839, -0.704616,
		28.027021, 33.923119, 34.187092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785686, 33.593693, 34.512669>,  <28.373220, 34.279308, 34.680321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785686, 33.593693, 34.512669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532167, 33.682308, 34.216232>,  <28.380056, 33.735477, 34.038368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532167, 33.682308, 34.216232>,  <28.785686, 33.593693, 34.512669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532167, 33.682308, 34.216232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763154, 0.022924, -0.645810,
		-0.126083, -0.974882, -0.183597,
		-0.633798, 0.221538, -0.741094,
		28.342028, 33.748768, 33.993904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914532, 33.114937, 33.911911>,  <28.785686, 33.593693, 34.512669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914532, 33.114937, 33.911911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730467, 33.434250, 33.756481>,  <28.620028, 33.625839, 33.663223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730467, 33.434250, 33.756481>,  <28.914532, 33.114937, 33.911911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730467, 33.434250, 33.756481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579216, -0.061767, -0.812831,
		-0.672873, -0.599101, -0.433958,
		-0.460164, 0.798287, -0.388570,
		28.592417, 33.673737, 33.639912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215630, 32.990829, 33.307613>,  <28.914532, 33.114937, 33.911911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215630, 32.990829, 33.307613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056326, 33.357693, 33.313507>,  <28.960743, 33.577808, 33.317043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056326, 33.357693, 33.313507>,  <29.215630, 32.990829, 33.307613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056326, 33.357693, 33.313507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543787, 0.249004, -0.801432,
		-0.738705, -0.311166, -0.597905,
		-0.398258, 0.917155, 0.014732,
		28.936848, 33.632839, 33.317928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988926, 33.079567, 32.621250>,  <29.215630, 32.990829, 33.307613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988926, 33.079567, 32.621250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049643, 33.432934, 32.798580>,  <29.086073, 33.644955, 32.904976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049643, 33.432934, 32.798580>,  <28.988926, 33.079567, 32.621250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049643, 33.432934, 32.798580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523398, 0.308631, -0.794230,
		-0.838459, 0.352592, -0.415530,
		0.151794, 0.883417, 0.443321,
		29.095181, 33.697960, 32.931576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659224, 33.603165, 32.201038>,  <28.988926, 33.079567, 32.621250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659224, 33.603165, 32.201038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.915564, 33.824951, 32.413410>,  <29.069368, 33.958023, 32.540833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.915564, 33.824951, 32.413410>,  <28.659224, 33.603165, 32.201038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915564, 33.824951, 32.413410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247307, 0.505624, -0.826549,
		-0.726738, 0.660997, 0.186908,
		0.640852, 0.554462, 0.530925,
		29.107819, 33.991291, 32.572689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551769, 34.238625, 31.989260>,  <28.659224, 33.603165, 32.201038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551769, 34.238625, 31.989260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919769, 34.264172, 32.143929>,  <29.140570, 34.279499, 32.236729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919769, 34.264172, 32.143929>,  <28.551769, 34.238625, 31.989260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919769, 34.264172, 32.143929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244817, 0.676793, -0.694273,
		-0.306040, 0.733397, 0.607015,
		0.920002, 0.063868, 0.386674,
		29.195770, 34.283333, 32.259930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602261, 34.939346, 32.265301>,  <28.551769, 34.238625, 31.989260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602261, 34.939346, 32.265301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974321, 34.807396, 32.200798>,  <29.197557, 34.728226, 32.162094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974321, 34.807396, 32.200798>,  <28.602261, 34.939346, 32.265301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974321, 34.807396, 32.200798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163779, 0.765811, -0.621859,
		0.328627, 0.552012, 0.766346,
		0.930151, -0.329872, -0.161259,
		29.253366, 34.708435, 32.152420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073137, 35.648743, 32.240669>,  <28.602261, 34.939346, 32.265301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073137, 35.648743, 32.240669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275324, 35.355148, 32.059219>,  <29.396635, 35.178993, 31.950350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275324, 35.355148, 32.059219>,  <29.073137, 35.648743, 32.240669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275324, 35.355148, 32.059219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368541, 0.659015, -0.655650,
		0.780181, 0.164229, 0.603611,
		0.505465, -0.733981, -0.453626,
		29.426964, 35.134953, 31.923132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874146, 35.787643, 32.208046>,  <29.073137, 35.648743, 32.240669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874146, 35.787643, 32.208046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774408, 35.555771, 31.897743>,  <29.714567, 35.416649, 31.711561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.774408, 35.555771, 31.897743>,  <29.874146, 35.787643, 32.208046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774408, 35.555771, 31.897743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509073, 0.602990, -0.614205,
		0.823817, -0.548064, 0.144750,
		-0.249341, -0.579681, -0.775757,
		29.699606, 35.381866, 31.665016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274498, 35.997574, 31.560034>,  <29.874146, 35.787643, 32.208046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274498, 35.997574, 31.560034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.043535, 35.732288, 31.369558>,  <29.904959, 35.573116, 31.255274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.043535, 35.732288, 31.369558>,  <30.274498, 35.997574, 31.560034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043535, 35.732288, 31.369558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222647, 0.433228, -0.873351,
		0.785514, -0.610299, -0.102486,
		-0.577405, -0.663211, -0.476188,
		29.870314, 35.533325, 31.226702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629967, 35.541897, 31.064690>,  <30.274498, 35.997574, 31.560034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629967, 35.541897, 31.064690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.249899, 35.526756, 30.940918>,  <30.021858, 35.517673, 30.866655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.249899, 35.526756, 30.940918>,  <30.629967, 35.541897, 31.064690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249899, 35.526756, 30.940918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270421, 0.393739, -0.878546,
		0.155089, -0.918443, -0.363882,
		-0.950168, -0.037852, -0.309431,
		29.964848, 35.515400, 30.848089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704205, 35.429081, 30.299463>,  <30.629967, 35.541897, 31.064690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704205, 35.429081, 30.299463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.324110, 35.537548, 30.360813>,  <30.096054, 35.602627, 30.397623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.324110, 35.537548, 30.360813>,  <30.704205, 35.429081, 30.299463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324110, 35.537548, 30.360813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005985, 0.508112, -0.861270,
		-0.311479, -0.817491, -0.484448,
		-0.950234, 0.271167, 0.153374,
		30.039040, 35.618896, 30.406826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362391, 35.174339, 29.696125>,  <30.704205, 35.429081, 30.299463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362391, 35.174339, 29.696125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183023, 35.486858, 29.869793>,  <30.075403, 35.674370, 29.973993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183023, 35.486858, 29.869793>,  <30.362391, 35.174339, 29.696125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183023, 35.486858, 29.869793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175843, 0.553362, -0.814168,
		-0.876357, -0.288742, -0.385522,
		-0.448417, 0.781293, 0.434170,
		30.048498, 35.721245, 30.000044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939955, 35.350739, 29.198904>,  <30.362391, 35.174339, 29.696125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939955, 35.350739, 29.198904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.976980, 35.665714, 29.442663>,  <29.999195, 35.854702, 29.588919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.976980, 35.665714, 29.442663>,  <29.939955, 35.350739, 29.198904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976980, 35.665714, 29.442663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120720, 0.598637, -0.791872,
		-0.988362, 0.146865, -0.039648,
		0.092564, 0.787442, 0.609399,
		30.004749, 35.901947, 29.625483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494225, 35.852383, 29.000061>,  <29.939955, 35.350739, 29.198904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494225, 35.852383, 29.000061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779209, 36.037445, 29.211096>,  <29.950199, 36.148483, 29.337717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779209, 36.037445, 29.211096>,  <29.494225, 35.852383, 29.000061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779209, 36.037445, 29.211096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145244, 0.638346, -0.755922,
		-0.686516, 0.615194, 0.387598,
		0.712460, 0.462656, 0.527588,
		29.992947, 36.176243, 29.369371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158047, 36.503788, 29.001991>,  <29.494225, 35.852383, 29.000061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158047, 36.503788, 29.001991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553724, 36.511581, 29.060122>,  <29.791130, 36.516258, 29.094999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553724, 36.511581, 29.060122>,  <29.158047, 36.503788, 29.001991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553724, 36.511581, 29.060122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070226, 0.807092, -0.586235,
		-0.128717, 0.590104, 0.797000,
		0.989192, 0.019488, 0.145327,
		29.850481, 36.517429, 29.103720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236403, 37.118324, 28.989708>,  <29.158047, 36.503788, 29.001991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236403, 37.118324, 28.989708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606604, 37.001869, 28.892809>,  <29.828724, 36.931995, 28.834669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606604, 37.001869, 28.892809>,  <29.236403, 37.118324, 28.989708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606604, 37.001869, 28.892809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101187, 0.806429, -0.582610,
		0.364975, 0.514695, 0.775811,
		0.925502, -0.291140, -0.242246,
		29.884254, 36.914528, 28.820135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.292370, 32.942738, 50.313171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.904919, 32.962357, 50.215717>,  <37.672447, 32.974129, 50.157246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.904919, 32.962357, 50.215717>,  <38.292370, 32.942738, 50.313171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904919, 32.962357, 50.215717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246209, -0.055863, 0.967606,
		0.033845, 0.997233, 0.066185,
		-0.968626, 0.049044, -0.243637,
		37.614330, 32.977070, 50.142628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997768, 33.358150, 50.821220>,  <38.292370, 32.942738, 50.313171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997768, 33.358150, 50.821220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695923, 33.153511, 50.656872>,  <37.514816, 33.030727, 50.558262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695923, 33.153511, 50.656872>,  <37.997768, 33.358150, 50.821220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695923, 33.153511, 50.656872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409074, -0.122790, 0.904202,
		-0.513041, 0.850405, -0.116622,
		-0.754617, -0.511600, -0.410875,
		37.469536, 33.000031, 50.533611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325817, 33.599770, 51.198227>,  <37.997768, 33.358150, 50.821220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325817, 33.599770, 51.198227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272064, 33.230999, 51.052910>,  <37.239811, 33.009735, 50.965717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272064, 33.230999, 51.052910>,  <37.325817, 33.599770, 51.198227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272064, 33.230999, 51.052910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442223, -0.272292, 0.854573,
		-0.886780, 0.275499, -0.371108,
		-0.134385, -0.921931, -0.363295,
		37.231750, 32.954418, 50.943920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601154, 33.399429, 51.425739>,  <37.325817, 33.599770, 51.198227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601154, 33.399429, 51.425739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785587, 33.057484, 51.330563>,  <36.896248, 32.852318, 51.273457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785587, 33.057484, 51.330563>,  <36.601154, 33.399429, 51.425739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785587, 33.057484, 51.330563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420067, -0.446474, 0.790067,
		-0.781630, -0.264337, -0.564960,
		0.461084, -0.854861, -0.237938,
		36.923912, 32.801025, 51.259182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178539, 32.779209, 51.547657>,  <36.601154, 33.399429, 51.425739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178539, 32.779209, 51.547657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.533493, 32.594799, 51.547764>,  <36.746468, 32.484154, 51.547829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.533493, 32.594799, 51.547764>,  <36.178539, 32.779209, 51.547657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533493, 32.594799, 51.547764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282329, -0.542978, 0.790864,
		-0.364466, -0.701876, -0.611992,
		0.887387, -0.461026, 0.000263,
		36.799709, 32.456490, 51.547844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973663, 32.150372, 51.694527>,  <36.178539, 32.779209, 51.547657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973663, 32.150372, 51.694527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.363033, 32.164730, 51.785000>,  <36.596657, 32.173347, 51.839283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.363033, 32.164730, 51.785000>,  <35.973663, 32.150372, 51.694527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363033, 32.164730, 51.785000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169395, -0.551776, 0.816608,
		0.154117, -0.833219, -0.531030,
		0.973423, 0.035899, 0.226181,
		36.655060, 32.175499, 51.852856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189854, 31.475870, 51.778465>,  <35.973663, 32.150372, 51.694527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189854, 31.475870, 51.778465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466812, 31.698811, 51.961750>,  <36.632988, 31.832575, 52.071720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.466812, 31.698811, 51.961750>,  <36.189854, 31.475870, 51.778465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466812, 31.698811, 51.961750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242631, -0.418216, 0.875343,
		0.679503, -0.717255, -0.154338,
		0.692391, 0.557351, 0.458207,
		36.674530, 31.866016, 52.099213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506145, 30.958914, 52.049664>,  <36.189854, 31.475870, 51.778465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506145, 30.958914, 52.049664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.663887, 31.273657, 52.239544>,  <36.758530, 31.462503, 52.353474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.663887, 31.273657, 52.239544>,  <36.506145, 30.958914, 52.049664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663887, 31.273657, 52.239544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032728, -0.528260, 0.848452,
		0.918377, -0.319052, -0.234072,
		0.394351, 0.786859, 0.474699,
		36.782192, 31.509714, 52.381954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195961, 30.736296, 52.320393>,  <36.506145, 30.958914, 52.049664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195961, 30.736296, 52.320393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035412, 31.025732, 52.545002>,  <36.939083, 31.199394, 52.679768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035412, 31.025732, 52.545002>,  <37.195961, 30.736296, 52.320393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035412, 31.025732, 52.545002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200506, -0.528792, 0.824728,
		0.893699, 0.443612, 0.067158,
		-0.401372, 0.723593, 0.561528,
		36.915001, 31.242809, 52.713459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352345, 30.468952, 52.968109>,  <37.195961, 30.736296, 52.320393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352345, 30.468952, 52.968109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176075, 30.805218, 53.094025>,  <37.070312, 31.006977, 53.169575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176075, 30.805218, 53.094025>,  <37.352345, 30.468952, 52.968109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176075, 30.805218, 53.094025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132342, -0.285996, 0.949048,
		0.887859, 0.459879, 0.014775,
		-0.440673, 0.840665, 0.314785,
		37.043873, 31.057417, 53.188461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744724, 30.932854, 53.534466>,  <37.352345, 30.468952, 52.968109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744724, 30.932854, 53.534466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345497, 30.953068, 53.548965>,  <37.105961, 30.965197, 53.557663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345497, 30.953068, 53.548965>,  <37.744724, 30.932854, 53.534466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345497, 30.953068, 53.548965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017349, -0.333418, 0.942620,
		0.059720, 0.941424, 0.331896,
		-0.998064, 0.050535, 0.036245,
		37.046078, 30.968229, 53.559837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547821, 31.247150, 54.300850>,  <37.744724, 30.932854, 53.534466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547821, 31.247150, 54.300850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254585, 31.032207, 54.134083>,  <37.078644, 30.903242, 54.034023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254585, 31.032207, 54.134083>,  <37.547821, 31.247150, 54.300850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254585, 31.032207, 54.134083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096357, -0.524756, 0.845782,
		-0.673267, 0.660210, 0.332917,
		-0.733094, -0.537358, -0.416917,
		37.034657, 30.871000, 54.009007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961014, 31.249395, 54.626316>,  <37.547821, 31.247150, 54.300850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961014, 31.249395, 54.626316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000751, 30.891056, 54.453072>,  <37.024593, 30.676052, 54.349125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000751, 30.891056, 54.453072>,  <36.961014, 31.249395, 54.626316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000751, 30.891056, 54.453072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017317, -0.436759, 0.899412,
		-0.994902, -0.081853, -0.058904,
		0.099347, -0.895847, -0.433115,
		37.030556, 30.622301, 54.323135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281475, 30.787397, 54.826591>,  <36.961014, 31.249395, 54.626316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281475, 30.787397, 54.826591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.609138, 30.576038, 54.737343>,  <36.805737, 30.449223, 54.683792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.609138, 30.576038, 54.737343>,  <36.281475, 30.787397, 54.826591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609138, 30.576038, 54.737343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152492, -0.575634, 0.803363,
		-0.552927, -0.624057, -0.552110,
		0.819157, -0.528393, -0.223120,
		36.854885, 30.417521, 54.670406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704330, 31.167767, 55.123062>,  <36.281475, 30.787397, 54.826591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704330, 31.167767, 55.123062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315414, 31.261177, 55.127522>,  <35.082066, 31.317223, 55.130196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315414, 31.261177, 55.127522>,  <35.704330, 31.167767, 55.123062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315414, 31.261177, 55.127522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107347, 0.488275, -0.866062,
		-0.207690, -0.840865, -0.499812,
		-0.972287, 0.233525, 0.011146,
		35.023727, 31.331234, 55.130867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500732, 31.013906, 54.455231>,  <35.704330, 31.167767, 55.123062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500732, 31.013906, 54.455231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236099, 31.282951, 54.587833>,  <35.077320, 31.444378, 54.667397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236099, 31.282951, 54.587833>,  <35.500732, 31.013906, 54.455231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236099, 31.282951, 54.587833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093815, 0.364374, -0.926515,
		-0.743979, -0.644068, -0.177963,
		-0.661584, 0.672613, 0.331510,
		35.037624, 31.484735, 54.687286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866077, 30.943537, 54.118652>,  <35.500732, 31.013906, 54.455231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866077, 30.943537, 54.118652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856503, 31.322367, 54.246696>,  <34.850758, 31.549665, 54.323524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856503, 31.322367, 54.246696>,  <34.866077, 30.943537, 54.118652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856503, 31.322367, 54.246696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279260, 0.301125, -0.911777,
		-0.959917, -0.111219, 0.257273,
		-0.023935, 0.947076, 0.320114,
		34.849323, 31.606489, 54.342731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182747, 31.306948, 53.901554>,  <34.866077, 30.943537, 54.118652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182747, 31.306948, 53.901554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420925, 31.622183, 53.963993>,  <34.563831, 31.811323, 54.001457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420925, 31.622183, 53.963993>,  <34.182747, 31.306948, 53.901554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420925, 31.622183, 53.963993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440285, 0.482624, -0.757116,
		-0.672011, 0.382089, 0.634357,
		0.595441, 0.788088, 0.156100,
		34.599556, 31.858608, 54.010822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757607, 31.928820, 53.810295>,  <34.182747, 31.306948, 53.901554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757607, 31.928820, 53.810295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119865, 32.098427, 53.811321>,  <34.337223, 32.200191, 53.811935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119865, 32.098427, 53.811321>,  <33.757607, 31.928820, 53.810295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119865, 32.098427, 53.811321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305235, 0.656111, -0.690181,
		-0.294332, 0.624280, 0.723632,
		0.905649, 0.424020, 0.002562,
		34.391560, 32.225632, 53.812088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648033, 32.706249, 53.799015>,  <33.757607, 31.928820, 53.810295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648033, 32.706249, 53.799015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015987, 32.632729, 53.660439>,  <34.236763, 32.588615, 53.577293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015987, 32.632729, 53.660439>,  <33.648033, 32.706249, 53.799015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015987, 32.632729, 53.660439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173854, 0.600708, -0.780337,
		0.351535, 0.778054, 0.520631,
		0.919890, -0.183802, -0.346437,
		34.291954, 32.577587, 53.556507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615044, 33.269360, 53.275276>,  <33.648033, 32.706249, 53.799015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615044, 33.269360, 53.275276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950478, 33.072357, 53.182152>,  <34.151737, 32.954155, 53.126278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950478, 33.072357, 53.182152>,  <33.615044, 33.269360, 53.275276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950478, 33.072357, 53.182152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095076, 0.553126, -0.827655,
		0.536403, 0.671928, 0.510671,
		0.838589, -0.492509, -0.232814,
		34.202053, 32.924606, 53.112309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153774, 33.798603, 53.179470>,  <33.615044, 33.269360, 53.275276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153774, 33.798603, 53.179470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268345, 33.474434, 52.975052>,  <34.337086, 33.279930, 52.852402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268345, 33.474434, 52.975052>,  <34.153774, 33.798603, 53.179470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268345, 33.474434, 52.975052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176915, 0.568960, -0.803110,
		0.941628, 0.139617, 0.306340,
		0.286423, -0.810427, -0.511048,
		34.354271, 33.231304, 52.821739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614285, 34.084667, 52.639305>,  <34.153774, 33.798603, 53.179470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614285, 34.084667, 52.639305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513378, 33.724991, 52.496300>,  <34.452835, 33.509186, 52.410496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513378, 33.724991, 52.496300>,  <34.614285, 34.084667, 52.639305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513378, 33.724991, 52.496300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032067, 0.361487, -0.931826,
		0.967127, -0.246532, -0.062356,
		-0.252266, -0.899194, -0.357509,
		34.437698, 33.455235, 52.389046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004967, 33.905106, 52.052551>,  <34.614285, 34.084667, 52.639305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004967, 33.905106, 52.052551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714111, 33.634827, 52.004047>,  <34.539600, 33.472660, 51.974945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714111, 33.634827, 52.004047>,  <35.004967, 33.905106, 52.052551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714111, 33.634827, 52.004047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090032, 0.081242, -0.992620,
		0.680564, -0.732686, 0.001760,
		-0.727136, -0.675700, -0.121255,
		34.495972, 33.432117, 51.967670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245682, 33.449902, 51.560337>,  <35.004967, 33.905106, 52.052551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245682, 33.449902, 51.560337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847351, 33.413914, 51.566505>,  <34.608353, 33.392323, 51.570206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847351, 33.413914, 51.566505>,  <35.245682, 33.449902, 51.560337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847351, 33.413914, 51.566505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013891, -0.017578, -0.999749,
		0.090220, -0.995789, 0.016255,
		-0.995825, -0.089971, 0.015418,
		34.548603, 33.386925, 51.571133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214817, 32.961014, 51.049007>,  <35.245682, 33.449902, 51.560337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214817, 32.961014, 51.049007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857815, 33.135807, 51.093700>,  <34.643616, 33.240681, 51.120518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857815, 33.135807, 51.093700>,  <35.214817, 32.961014, 51.049007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857815, 33.135807, 51.093700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073656, 0.103193, -0.991930,
		-0.444985, -0.893531, -0.059914,
		-0.892504, 0.436981, 0.111733,
		34.590065, 33.266903, 51.127220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785126, 32.647007, 50.542629>,  <35.214817, 32.961014, 51.049007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785126, 32.647007, 50.542629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633709, 33.003147, 50.643810>,  <34.542858, 33.216831, 50.704517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633709, 33.003147, 50.643810>,  <34.785126, 32.647007, 50.542629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633709, 33.003147, 50.643810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351245, 0.114665, -0.929235,
		-0.856350, -0.440599, 0.269327,
		-0.378538, 0.890351, 0.252952,
		34.520149, 33.270252, 50.719696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232189, 32.685913, 50.106091>,  <34.785126, 32.647007, 50.542629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232189, 32.685913, 50.106091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274876, 33.073345, 50.195942>,  <34.300488, 33.305805, 50.249851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274876, 33.073345, 50.195942>,  <34.232189, 32.685913, 50.106091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274876, 33.073345, 50.195942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235556, 0.244116, -0.940702,
		-0.965984, 0.047477, 0.254207,
		0.106718, 0.968583, 0.224629,
		34.306892, 33.363918, 50.263332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511723, 32.457932, 50.278908>,  <34.232189, 32.685913, 50.106091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511723, 32.457932, 50.278908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192108, 32.237522, 50.182644>,  <33.000340, 32.105278, 50.124886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192108, 32.237522, 50.182644>,  <33.511723, 32.457932, 50.278908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192108, 32.237522, 50.182644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003183, -0.404116, 0.914702,
		-0.601273, 0.730115, 0.324658,
		-0.799037, -0.551020, -0.240660,
		32.952396, 32.072216, 50.110447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925312, 32.532860, 50.831161>,  <33.511723, 32.457932, 50.278908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925312, 32.532860, 50.831161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874752, 32.186012, 50.638447>,  <32.844418, 31.977903, 50.522816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874752, 32.186012, 50.638447>,  <32.925312, 32.532860, 50.831161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874752, 32.186012, 50.638447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182209, -0.457128, 0.870537,
		-0.975102, 0.197821, -0.100218,
		-0.126398, -0.867122, -0.481791,
		32.836834, 31.925875, 50.493908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217491, 32.298714, 51.147900>,  <32.925312, 32.532860, 50.831161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217491, 32.298714, 51.147900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376797, 31.983984, 50.959309>,  <32.472382, 31.795145, 50.846153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376797, 31.983984, 50.959309>,  <32.217491, 32.298714, 51.147900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376797, 31.983984, 50.959309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195401, -0.574976, 0.794494,
		-0.896217, -0.224290, -0.382738,
		0.398263, -0.786827, -0.471478,
		32.496277, 31.747936, 50.817867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834017, 31.704992, 51.352234>,  <32.217491, 32.298714, 51.147900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834017, 31.704992, 51.352234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140022, 31.512531, 51.181004>,  <32.323627, 31.397055, 51.078266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140022, 31.512531, 51.181004>,  <31.834017, 31.704992, 51.352234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140022, 31.512531, 51.181004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150682, -0.779973, 0.607402,
		-0.626136, -0.400169, -0.669192,
		0.765015, -0.481152, -0.428071,
		32.369526, 31.368185, 51.052582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626236, 30.932320, 51.154118>,  <31.834017, 31.704992, 51.352234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626236, 30.932320, 51.154118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023796, 30.942757, 51.196980>,  <32.262333, 30.949018, 51.222694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023796, 30.942757, 51.196980>,  <31.626236, 30.932320, 51.154118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023796, 30.942757, 51.196980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054056, -0.731627, 0.679559,
		0.096126, -0.681206, -0.725754,
		0.993901, 0.026092, 0.107151,
		32.321968, 30.950584, 51.229126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959503, 30.134409, 51.254719>,  <31.626236, 30.932320, 51.154118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959503, 30.134409, 51.254719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209320, 30.402145, 51.415680>,  <32.359211, 30.562786, 51.512257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209320, 30.402145, 51.415680>,  <31.959503, 30.134409, 51.254719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209320, 30.402145, 51.415680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083503, -0.569528, 0.817720,
		0.776514, -0.477099, -0.411586,
		0.624543, 0.669339, 0.402407,
		32.396683, 30.602947, 51.536404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462212, 29.743877, 51.613571>,  <31.959503, 30.134409, 51.254719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462212, 29.743877, 51.613571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491093, 30.112665, 51.765759>,  <32.508423, 30.333939, 51.857071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491093, 30.112665, 51.765759>,  <32.462212, 29.743877, 51.613571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491093, 30.112665, 51.765759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212218, -0.386929, 0.897357,
		0.974551, 0.015948, -0.223598,
		0.072205, 0.921971, 0.380467,
		32.512753, 30.389257, 51.879898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868164, 29.098101, 51.320045>,  <32.462212, 29.743877, 51.613571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868164, 29.098101, 51.320045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500885, 28.949102, 51.373959>,  <32.280518, 28.859703, 51.406307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500885, 28.949102, 51.373959>,  <32.868164, 29.098101, 51.320045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500885, 28.949102, 51.373959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275726, 0.356670, -0.892615,
		0.284422, -0.856757, -0.430199,
		-0.918194, -0.372496, 0.134785,
		32.225426, 28.837353, 51.414394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817093, 28.846466, 50.707363>,  <32.868164, 29.098101, 51.320045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817093, 28.846466, 50.707363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438774, 28.827396, 50.835865>,  <32.211784, 28.815954, 50.912968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438774, 28.827396, 50.835865>,  <32.817093, 28.846466, 50.707363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438774, 28.827396, 50.835865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324727, 0.122316, -0.937865,
		0.005420, -0.991345, -0.131167,
		-0.945792, -0.047677, 0.321253,
		32.155037, 28.813093, 50.932240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541431, 28.280750, 50.360577>,  <32.817093, 28.846466, 50.707363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541431, 28.280750, 50.360577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245010, 28.524790, 50.472736>,  <32.067158, 28.671213, 50.540031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245010, 28.524790, 50.472736>,  <32.541431, 28.280750, 50.360577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245010, 28.524790, 50.472736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323782, 0.041151, -0.945236,
		-0.588229, -0.791254, 0.167046,
		-0.741048, 0.610102, 0.280400,
		32.022697, 28.707821, 50.556858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070198, 28.266405, 49.782864>,  <32.541431, 28.280750, 50.360577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070198, 28.266405, 49.782864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.906464, 28.573618, 49.979870>,  <31.808222, 28.757946, 50.098072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.906464, 28.573618, 49.979870>,  <32.070198, 28.266405, 49.782864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906464, 28.573618, 49.979870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339728, 0.372690, -0.863532,
		-0.846774, -0.520799, 0.108364,
		-0.409340, 0.768030, 0.492514,
		31.783661, 28.804028, 50.127625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357552, 28.342667, 49.597416>,  <32.070198, 28.266405, 49.782864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357552, 28.342667, 49.597416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.459549, 28.706671, 49.728172>,  <31.520748, 28.925074, 49.806625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.459549, 28.706671, 49.728172>,  <31.357552, 28.342667, 49.597416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459549, 28.706671, 49.728172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459210, 0.411483, -0.787279,
		-0.850943, 0.050638, 0.522811,
		0.254994, 0.910010, 0.326895,
		31.536047, 28.979673, 49.826241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700975, 28.710926, 49.506927>,  <31.357552, 28.342667, 49.597416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700975, 28.710926, 49.506927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.004534, 28.971111, 49.519386>,  <31.186668, 29.127222, 49.526863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.004534, 28.971111, 49.519386>,  <30.700975, 28.710926, 49.506927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004534, 28.971111, 49.519386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401983, 0.505554, -0.763429,
		-0.512331, 0.566843, 0.645140,
		0.758898, 0.650464, 0.031149,
		31.232203, 29.166250, 49.528732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336826, 29.242348, 49.199234>,  <30.700975, 28.710926, 49.506927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336826, 29.242348, 49.199234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.729607, 29.307110, 49.160130>,  <30.965275, 29.345966, 49.136665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.729607, 29.307110, 49.160130>,  <30.336826, 29.242348, 49.199234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729607, 29.307110, 49.160130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155005, 0.392725, -0.906499,
		-0.108372, 0.905292, 0.410733,
		0.981952, 0.161905, -0.097764,
		31.024193, 29.355680, 49.130802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.807259, 28.767904, 53.096012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.680359, 29.103025, 52.918278>,  <35.604218, 29.304098, 52.811638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.680359, 29.103025, 52.918278>,  <35.807259, 28.767904, 53.096012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680359, 29.103025, 52.918278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007697, -0.466255, -0.884617,
		-0.948310, -0.284066, 0.141472,
		-0.317251, 0.837802, -0.444340,
		35.585182, 29.354366, 52.784977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317638, 28.594397, 52.599190>,  <35.807259, 28.767904, 53.096012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317638, 28.594397, 52.599190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.499493, 28.937515, 52.503277>,  <35.608604, 29.143387, 52.445728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.499493, 28.937515, 52.503277>,  <35.317638, 28.594397, 52.599190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499493, 28.937515, 52.503277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061742, -0.298912, -0.952281,
		-0.888536, 0.418134, -0.188858,
		0.454633, 0.857797, -0.239778,
		35.635883, 29.194855, 52.431343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042660, 28.937157, 51.954185>,  <35.317638, 28.594397, 52.599190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042660, 28.937157, 51.954185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.416859, 29.071404, 51.998363>,  <35.641380, 29.151953, 52.024872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.416859, 29.071404, 51.998363>,  <35.042660, 28.937157, 51.954185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416859, 29.071404, 51.998363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193271, -0.224405, -0.955138,
		-0.295777, 0.914879, -0.274796,
		0.935501, 0.335618, 0.110445,
		35.697510, 29.172089, 52.031498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198364, 29.203911, 51.352829>,  <35.042660, 28.937157, 51.954185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198364, 29.203911, 51.352829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.567043, 29.191147, 51.507462>,  <35.788250, 29.183489, 51.600243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.567043, 29.191147, 51.507462>,  <35.198364, 29.203911, 51.352829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567043, 29.191147, 51.507462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377588, -0.154465, -0.913000,
		0.088846, 0.987483, -0.130322,
		0.921702, -0.031908, 0.386585,
		35.843555, 29.181574, 51.623436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559456, 29.712870, 50.976280>,  <35.198364, 29.203911, 51.352829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559456, 29.712870, 50.976280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.822910, 29.448589, 51.120319>,  <35.980984, 29.290022, 51.206741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.822910, 29.448589, 51.120319>,  <35.559456, 29.712870, 50.976280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822910, 29.448589, 51.120319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443953, -0.045180, -0.894911,
		0.607537, 0.749289, 0.263562,
		0.658639, -0.660700, 0.360097,
		36.020500, 29.250380, 51.228348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167732, 29.882256, 50.686802>,  <35.559456, 29.712870, 50.976280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167732, 29.882256, 50.686802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.236217, 29.506277, 50.804909>,  <36.277309, 29.280689, 50.875774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.236217, 29.506277, 50.804909>,  <36.167732, 29.882256, 50.686802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236217, 29.506277, 50.804909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474792, -0.183885, -0.860674,
		0.863285, 0.287547, 0.414797,
		0.171209, -0.939948, 0.295270,
		36.287579, 29.224293, 50.893490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844696, 29.772615, 50.470695>,  <36.167732, 29.882256, 50.686802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844696, 29.772615, 50.470695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.662197, 29.417023, 50.486469>,  <36.552700, 29.203667, 50.495934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.662197, 29.417023, 50.486469>,  <36.844696, 29.772615, 50.470695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662197, 29.417023, 50.486469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350565, -0.220297, -0.910260,
		0.817891, -0.401476, 0.412155,
		-0.456244, -0.888980, 0.039436,
		36.525322, 29.150328, 50.498299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261860, 29.404873, 50.056824>,  <36.844696, 29.772615, 50.470695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261860, 29.404873, 50.056824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.915848, 29.204550, 50.068947>,  <36.708241, 29.084356, 50.076221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.915848, 29.204550, 50.068947>,  <37.261860, 29.404873, 50.056824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915848, 29.204550, 50.068947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122730, -0.269780, -0.955069,
		0.486483, -0.822441, 0.294832,
		-0.865027, -0.500809, 0.030306,
		36.656338, 29.054308, 50.078037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383575, 28.709681, 49.859798>,  <37.261860, 29.404873, 50.056824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383575, 28.709681, 49.859798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.997021, 28.775316, 49.780640>,  <36.765087, 28.814697, 49.733143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.997021, 28.775316, 49.780640>,  <37.383575, 28.709681, 49.859798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997021, 28.775316, 49.780640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165402, -0.192428, -0.967271,
		-0.196857, -0.967485, 0.158808,
		-0.966379, 0.164147, -0.197905,
		36.707104, 28.824543, 49.721272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113487, 28.171555, 49.385761>,  <37.383575, 28.709681, 49.859798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113487, 28.171555, 49.385761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.882668, 28.496023, 49.347786>,  <36.744175, 28.690704, 49.325001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.882668, 28.496023, 49.347786>,  <37.113487, 28.171555, 49.385761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882668, 28.496023, 49.347786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062543, -0.072013, -0.995441,
		-0.814310, -0.580357, -0.009178,
		-0.577050, 0.811172, -0.094938,
		36.709553, 28.739374, 49.319305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854824, 28.102219, 48.808125>,  <37.113487, 28.171555, 49.385761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854824, 28.102219, 48.808125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.756641, 28.485863, 48.864502>,  <36.697731, 28.716049, 48.898327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.756641, 28.485863, 48.864502>,  <36.854824, 28.102219, 48.808125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756641, 28.485863, 48.864502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019660, 0.140434, -0.989895,
		-0.969209, -0.245744, -0.015614,
		-0.245453, 0.959108, 0.140942,
		36.683006, 28.773596, 48.906784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173805, 28.164942, 48.479954>,  <36.854824, 28.102219, 48.808125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173805, 28.164942, 48.479954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.354813, 28.521450, 48.491707>,  <36.463417, 28.735355, 48.498760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.354813, 28.521450, 48.491707>,  <36.173805, 28.164942, 48.479954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354813, 28.521450, 48.491707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275280, 0.170959, -0.946041,
		-0.848203, 0.420010, 0.322711,
		0.452517, 0.891271, 0.029387,
		36.490566, 28.788832, 48.500523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447933, 28.195126, 48.311607>,  <36.173805, 28.164942, 48.479954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447933, 28.195126, 48.311607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.367115, 27.817986, 48.205616>,  <35.318626, 27.591702, 48.142021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.367115, 27.817986, 48.205616>,  <35.447933, 28.195126, 48.311607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367115, 27.817986, 48.205616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034422, -0.277224, 0.960189,
		-0.978772, 0.184878, 0.088466,
		-0.202043, -0.942851, -0.264975,
		35.306503, 27.535130, 48.126122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952984, 28.180939, 48.726158>,  <35.447933, 28.195126, 48.311607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952984, 28.180939, 48.726158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.078655, 27.815451, 48.623081>,  <35.154057, 27.596157, 48.561234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.078655, 27.815451, 48.623081>,  <34.952984, 28.180939, 48.726158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078655, 27.815451, 48.623081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087712, -0.298216, 0.950460,
		-0.945305, -0.276006, -0.173836,
		0.314173, -0.913722, -0.257696,
		35.172909, 27.541334, 48.545773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484131, 27.870539, 49.058071>,  <34.952984, 28.180939, 48.726158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484131, 27.870539, 49.058071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.776722, 27.604988, 48.995834>,  <34.952278, 27.445658, 48.958492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.776722, 27.604988, 48.995834>,  <34.484131, 27.870539, 49.058071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776722, 27.604988, 48.995834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097094, -0.327264, 0.939931,
		-0.674917, -0.672432, -0.303845,
		0.731478, -0.663877, -0.155587,
		34.996166, 27.405825, 48.949158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128139, 27.162680, 49.162754>,  <34.484131, 27.870539, 49.058071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128139, 27.162680, 49.162754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.521980, 27.118685, 49.217110>,  <34.758286, 27.092287, 49.249722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.521980, 27.118685, 49.217110>,  <34.128139, 27.162680, 49.162754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521980, 27.118685, 49.217110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164502, -0.319788, 0.933099,
		-0.059172, -0.941084, -0.332956,
		0.984600, -0.109986, 0.135888,
		34.817360, 27.085688, 49.257877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257210, 26.462217, 49.337460>,  <34.128139, 27.162680, 49.162754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257210, 26.462217, 49.337460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576511, 26.659475, 49.475796>,  <34.768093, 26.777830, 49.558796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576511, 26.659475, 49.475796>,  <34.257210, 26.462217, 49.337460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576511, 26.659475, 49.475796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023268, -0.548493, 0.835831,
		0.601876, -0.675250, -0.426360,
		0.798250, 0.493147, 0.345836,
		34.815987, 26.807419, 49.579548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608009, 25.893768, 49.784061>,  <34.257210, 26.462217, 49.337460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608009, 25.893768, 49.784061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.774891, 26.235273, 49.908661>,  <34.875019, 26.440176, 49.983421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.774891, 26.235273, 49.908661>,  <34.608009, 25.893768, 49.784061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774891, 26.235273, 49.908661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033555, -0.328051, 0.944064,
		0.908195, -0.404315, -0.108214,
		0.417199, 0.853764, 0.311501,
		34.900051, 26.491402, 50.002110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259247, 25.808060, 50.225342>,  <34.608009, 25.893768, 49.784061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259247, 25.808060, 50.225342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.068962, 26.141193, 50.338539>,  <34.954792, 26.341074, 50.406456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.068962, 26.141193, 50.338539>,  <35.259247, 25.808060, 50.225342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068962, 26.141193, 50.338539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012397, -0.315349, 0.948895,
		0.879515, 0.454907, 0.139690,
		-0.475710, 0.832835, 0.282993,
		34.926250, 26.391045, 50.423435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600651, 26.077299, 50.830555>,  <35.259247, 25.808060, 50.225342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600651, 26.077299, 50.830555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.230030, 26.225861, 50.854431>,  <35.007660, 26.314999, 50.868759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.230030, 26.225861, 50.854431>,  <35.600651, 26.077299, 50.830555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230030, 26.225861, 50.854431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081943, -0.354153, 0.931590,
		0.367138, 0.858274, 0.358575,
		-0.926550, 0.371405, 0.059694,
		34.952065, 26.337282, 50.872341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566910, 26.237486, 51.530655>,  <35.600651, 26.077299, 50.830555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566910, 26.237486, 51.530655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.184593, 26.303509, 51.433319>,  <34.955204, 26.343122, 51.374916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.184593, 26.303509, 51.433319>,  <35.566910, 26.237486, 51.530655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184593, 26.303509, 51.433319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283288, -0.295190, 0.912475,
		0.078780, 0.941073, 0.328900,
		-0.955794, 0.165058, -0.243340,
		34.897854, 26.353025, 51.360317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281944, 26.472908, 52.152294>,  <35.566910, 26.237486, 51.530655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281944, 26.472908, 52.152294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965630, 26.359865, 51.935116>,  <34.775841, 26.292040, 51.804810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965630, 26.359865, 51.935116>,  <35.281944, 26.472908, 52.152294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965630, 26.359865, 51.935116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448190, -0.336789, 0.828069,
		-0.416878, 0.898168, 0.139665,
		-0.790783, -0.282607, -0.542950,
		34.728394, 26.275084, 51.772232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717644, 26.837797, 52.464966>,  <35.281944, 26.472908, 52.152294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717644, 26.837797, 52.464966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.572487, 26.511358, 52.285057>,  <34.485394, 26.315495, 52.177113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.572487, 26.511358, 52.285057>,  <34.717644, 26.837797, 52.464966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572487, 26.511358, 52.285057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551266, -0.201132, 0.809723,
		-0.751278, 0.541783, -0.376900,
		-0.362887, -0.816099, -0.449773,
		34.463619, 26.266529, 52.150124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996586, 26.879681, 52.518761>,  <34.717644, 26.837797, 52.464966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996586, 26.879681, 52.518761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.097843, 26.494730, 52.479256>,  <34.158596, 26.263760, 52.455551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.097843, 26.494730, 52.479256>,  <33.996586, 26.879681, 52.518761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097843, 26.494730, 52.479256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591991, -0.234837, 0.770972,
		-0.765158, -0.136698, -0.629164,
		0.253141, -0.962375, -0.098763,
		34.173786, 26.206018, 52.449627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411983, 26.544312, 52.643394>,  <33.996586, 26.879681, 52.518761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411983, 26.544312, 52.643394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.691212, 26.266287, 52.712189>,  <33.858749, 26.099472, 52.753464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.691212, 26.266287, 52.712189>,  <33.411983, 26.544312, 52.643394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691212, 26.266287, 52.712189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587336, -0.418467, 0.692764,
		-0.409533, -0.584625, -0.700354,
		0.698082, -0.695053, 0.171996,
		33.900635, 26.057768, 52.763783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983120, 25.922600, 52.763271>,  <33.411983, 26.544312, 52.643394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983120, 25.922600, 52.763271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.350971, 25.906290, 52.919537>,  <33.571682, 25.896503, 53.013294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.350971, 25.906290, 52.919537>,  <32.983120, 25.922600, 52.763271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350971, 25.906290, 52.919537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384356, -0.298362, 0.873642,
		0.080938, -0.953582, -0.290054,
		0.919630, -0.040774, 0.390663,
		33.626862, 25.894058, 53.036736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569973, 26.472469, 53.199886>,  <32.983120, 25.922600, 52.763271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569973, 26.472469, 53.199886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.535732, 26.716801, 53.514736>,  <32.515190, 26.863400, 53.703644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.535732, 26.716801, 53.514736>,  <32.569973, 26.472469, 53.199886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535732, 26.716801, 53.514736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310029, 0.734470, -0.603685,
		-0.946866, -0.295704, 0.126506,
		-0.085598, 0.610829, 0.787122,
		32.510052, 26.900049, 53.750874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861029, 26.665651, 53.289577>,  <32.569973, 26.472469, 53.199886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861029, 26.665651, 53.289577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.116295, 26.943794, 53.421772>,  <32.269455, 27.110680, 53.501087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.116295, 26.943794, 53.421772>,  <31.861029, 26.665651, 53.289577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116295, 26.943794, 53.421772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332894, 0.636275, -0.695943,
		-0.694208, 0.334112, 0.637530,
		0.638168, 0.695359, 0.330483,
		32.307747, 27.152401, 53.520916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498455, 27.330849, 53.410496>,  <31.861029, 26.665651, 53.289577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498455, 27.330849, 53.410496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.884472, 27.420734, 53.356537>,  <32.116081, 27.474667, 53.324162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.884472, 27.420734, 53.356537>,  <31.498455, 27.330849, 53.410496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884472, 27.420734, 53.356537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250308, 0.637551, -0.728612,
		-0.077723, 0.736908, 0.671511,
		0.965041, 0.224714, -0.134902,
		32.173985, 27.488150, 53.316067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456560, 28.054331, 53.183495>,  <31.498455, 27.330849, 53.410496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456560, 28.054331, 53.183495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.838604, 27.975914, 53.094654>,  <32.067829, 27.928864, 53.041348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.838604, 27.975914, 53.094654>,  <31.456560, 28.054331, 53.183495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838604, 27.975914, 53.094654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042366, 0.651629, -0.757354,
		0.293202, 0.732767, 0.614073,
		0.955111, -0.196042, -0.222103,
		32.125137, 27.917101, 53.028023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788275, 28.803957, 53.093426>,  <31.456560, 28.054331, 53.183495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788275, 28.803957, 53.093426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.973770, 28.527164, 52.872116>,  <32.085068, 28.361090, 52.739330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.973770, 28.527164, 52.872116>,  <31.788275, 28.803957, 53.093426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973770, 28.527164, 52.872116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066086, 0.595721, -0.800468,
		0.883504, 0.407772, 0.230529,
		0.463739, -0.691982, -0.553270,
		32.112892, 28.319571, 52.706135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268017, 29.180384, 52.777676>,  <31.788275, 28.803957, 53.093426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268017, 29.180384, 52.777676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.197872, 28.856153, 52.554169>,  <32.155785, 28.661615, 52.420067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.197872, 28.856153, 52.554169>,  <32.268017, 29.180384, 52.777676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197872, 28.856153, 52.554169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132004, 0.581791, -0.802554,
		0.975614, -0.066977, -0.209023,
		-0.175361, -0.810576, -0.558763,
		32.145264, 28.612980, 52.386539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709572, 29.202223, 52.166668>,  <32.268017, 29.180384, 52.777676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709572, 29.202223, 52.166668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.403095, 28.968693, 52.059258>,  <32.219212, 28.828575, 51.994812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.403095, 28.968693, 52.059258>,  <32.709572, 29.202223, 52.166668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403095, 28.968693, 52.059258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033853, 0.380607, -0.924117,
		0.641724, -0.717137, -0.271853,
		-0.766188, -0.583825, -0.268522,
		32.173241, 28.793545, 51.978703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162418, 29.769579, 51.804356>,  <32.709572, 29.202223, 52.166668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162418, 29.769579, 51.804356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004719, 30.063801, 52.024731>,  <32.910099, 30.240334, 52.156956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004719, 30.063801, 52.024731>,  <33.162418, 29.769579, 51.804356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004719, 30.063801, 52.024731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422866, -0.387063, 0.819369,
		0.815938, 0.556004, -0.158443,
		-0.394245, 0.735555, 0.550935,
		32.886444, 30.284468, 52.190010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685493, 29.973381, 52.281994>,  <33.162418, 29.769579, 51.804356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685493, 29.973381, 52.281994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366138, 30.141996, 52.453987>,  <33.174526, 30.243166, 52.557182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366138, 30.141996, 52.453987>,  <33.685493, 29.973381, 52.281994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366138, 30.141996, 52.453987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371785, -0.216630, 0.902689,
		0.473668, 0.880554, 0.016232,
		-0.798383, 0.421540, 0.429987,
		33.126625, 30.268459, 52.582985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901184, 30.359785, 52.790905>,  <33.685493, 29.973381, 52.281994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901184, 30.359785, 52.790905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.525749, 30.292633, 52.911480>,  <33.300488, 30.252342, 52.983826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.525749, 30.292633, 52.911480>,  <33.901184, 30.359785, 52.790905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525749, 30.292633, 52.911480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312927, -0.046156, 0.948655,
		-0.145346, 0.984726, 0.095855,
		-0.938590, -0.167879, 0.301439,
		33.244171, 30.242270, 53.001911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863262, 30.869390, 53.415298>,  <33.901184, 30.359785, 52.790905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863262, 30.869390, 53.415298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577843, 30.590069, 53.437988>,  <33.406590, 30.422476, 53.451603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577843, 30.590069, 53.437988>,  <33.863262, 30.869390, 53.415298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577843, 30.590069, 53.437988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105001, -0.026543, 0.994118,
		-0.692691, 0.715309, 0.092263,
		-0.713550, -0.698304, 0.056722,
		33.363777, 30.380577, 53.455006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455349, 30.895672, 54.003296>,  <33.863262, 30.869390, 53.415298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455349, 30.895672, 54.003296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.335163, 30.524006, 53.917156>,  <33.263050, 30.301006, 53.865471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.335163, 30.524006, 53.917156>,  <33.455349, 30.895672, 54.003296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335163, 30.524006, 53.917156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106473, -0.257046, 0.960516,
		-0.947831, 0.265675, 0.176165,
		-0.300467, -0.929163, -0.215349,
		33.245022, 30.245256, 53.852551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045414, 30.713335, 54.511143>,  <33.455349, 30.895672, 54.003296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045414, 30.713335, 54.511143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129059, 30.349146, 54.368420>,  <33.179245, 30.130632, 54.282784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129059, 30.349146, 54.368420>,  <33.045414, 30.713335, 54.511143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129059, 30.349146, 54.368420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076775, -0.348465, 0.934172,
		-0.974874, -0.222737, -0.002965,
		0.209108, -0.910473, -0.356810,
		33.191792, 30.076004, 54.261375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492954, 30.167511, 54.701027>,  <33.045414, 30.713335, 54.511143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492954, 30.167511, 54.701027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.852074, 30.000511, 54.644951>,  <33.067547, 29.900311, 54.611305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.852074, 30.000511, 54.644951>,  <32.492954, 30.167511, 54.701027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852074, 30.000511, 54.644951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052671, -0.417816, 0.907003,
		-0.437252, -0.806920, -0.397104,
		0.897795, -0.417505, -0.140189,
		33.121414, 29.875261, 54.602894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378365, 29.446852, 54.953770>,  <32.492954, 30.167511, 54.701027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378365, 29.446852, 54.953770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.776539, 29.477608, 54.931187>,  <33.015446, 29.496061, 54.917637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.776539, 29.477608, 54.931187>,  <32.378365, 29.446852, 54.953770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776539, 29.477608, 54.931187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091895, -0.614239, 0.783751,
		0.025587, -0.785364, -0.618504,
		0.995440, 0.076892, -0.056454,
		33.075172, 29.500675, 54.914249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668980, 28.761108, 55.026226>,  <32.378365, 29.446852, 54.953770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668980, 28.761108, 55.026226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.953072, 29.020773, 55.135155>,  <33.123528, 29.176571, 55.200512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.953072, 29.020773, 55.135155>,  <32.668980, 28.761108, 55.026226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953072, 29.020773, 55.135155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053434, -0.435434, 0.898633,
		0.701937, -0.623687, -0.343946,
		0.710232, 0.649162, 0.272321,
		33.166142, 29.215521, 55.216850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.385227, 34.740746, 40.409229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773167, 34.732803, 40.506397>,  <34.005928, 34.728039, 40.564697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773167, 34.732803, 40.506397>,  <33.385227, 34.740746, 40.409229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773167, 34.732803, 40.506397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236319, -0.320464, 0.917309,
		0.059631, -0.947053, -0.315492,
		0.969844, -0.019857, 0.242916,
		34.064121, 34.726845, 40.579273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585831, 34.134281, 40.712334>,  <33.385227, 34.740746, 40.409229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585831, 34.134281, 40.712334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845592, 34.408413, 40.844147>,  <34.001450, 34.572891, 40.923237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845592, 34.408413, 40.844147>,  <33.585831, 34.134281, 40.712334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845592, 34.408413, 40.844147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222764, -0.242892, 0.944129,
		0.727082, -0.686532, -0.005068,
		0.649406, 0.685330, 0.329537,
		34.040413, 34.614014, 40.943008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061993, 33.811024, 41.160038>,  <33.585831, 34.134281, 40.712334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061993, 33.811024, 41.160038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070774, 34.191719, 41.282490>,  <34.076042, 34.420135, 41.355961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070774, 34.191719, 41.282490>,  <34.061993, 33.811024, 41.160038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070774, 34.191719, 41.282490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007128, -0.306349, 0.951893,
		0.999734, -0.018711, -0.013508,
		0.021949, 0.951735, 0.306134,
		34.077358, 34.477242, 41.374329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542648, 33.838631, 41.616711>,  <34.061993, 33.811024, 41.160038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542648, 33.838631, 41.616711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349716, 34.177116, 41.707298>,  <34.233959, 34.380207, 41.761650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349716, 34.177116, 41.707298>,  <34.542648, 33.838631, 41.616711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349716, 34.177116, 41.707298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043787, -0.281498, 0.958562,
		0.874896, 0.452425, 0.172827,
		-0.482328, 0.846210, 0.226471,
		34.205017, 34.430981, 41.775238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763981, 34.046028, 42.181477>,  <34.542648, 33.838631, 41.616711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763981, 34.046028, 42.181477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439114, 34.279358, 42.177200>,  <34.244194, 34.419357, 42.174633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439114, 34.279358, 42.177200>,  <34.763981, 34.046028, 42.181477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439114, 34.279358, 42.177200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145122, -0.184233, 0.972110,
		0.565086, 0.791069, 0.234282,
		-0.812169, 0.583325, -0.010694,
		34.195461, 34.454357, 42.173992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718353, 34.340736, 42.824463>,  <34.763981, 34.046028, 42.181477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718353, 34.340736, 42.824463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348911, 34.377338, 42.675556>,  <34.127247, 34.399300, 42.586212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348911, 34.377338, 42.675556>,  <34.718353, 34.340736, 42.824463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348911, 34.377338, 42.675556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383322, -0.231672, 0.894087,
		-0.004427, 0.968480, 0.249050,
		-0.923604, 0.091508, -0.372265,
		34.071831, 34.404789, 42.563877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347549, 34.681969, 43.325321>,  <34.718353, 34.340736, 42.824463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347549, 34.681969, 43.325321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043842, 34.537678, 43.108658>,  <33.861618, 34.451103, 42.978661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043842, 34.537678, 43.108658>,  <34.347549, 34.681969, 43.325321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043842, 34.537678, 43.108658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465214, -0.281163, 0.839359,
		-0.455072, 0.889283, 0.045663,
		-0.759266, -0.360726, -0.541657,
		33.816063, 34.429459, 42.946159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621658, 34.973103, 43.607628>,  <34.347549, 34.681969, 43.325321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621658, 34.973103, 43.607628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538361, 34.638561, 43.404789>,  <33.488380, 34.437836, 43.283085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538361, 34.638561, 43.404789>,  <33.621658, 34.973103, 43.607628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538361, 34.638561, 43.404789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385272, -0.406403, 0.828494,
		-0.898999, 0.367900, -0.237592,
		-0.208244, -0.836353, -0.507098,
		33.475887, 34.387657, 43.252659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873562, 34.793629, 43.825016>,  <33.621658, 34.973103, 43.607628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873562, 34.793629, 43.825016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998497, 34.449841, 43.663151>,  <33.073460, 34.243568, 43.566032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998497, 34.449841, 43.663151>,  <32.873562, 34.793629, 43.825016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998497, 34.449841, 43.663151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514235, -0.511133, 0.688699,
		-0.798754, -0.007014, -0.601616,
		0.312336, -0.859473, -0.404663,
		33.092197, 34.191998, 43.541752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328831, 34.398800, 43.810730>,  <32.873562, 34.793629, 43.825016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328831, 34.398800, 43.810730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661640, 34.176933, 43.814190>,  <32.861324, 34.043812, 43.816265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661640, 34.176933, 43.814190>,  <32.328831, 34.398800, 43.810730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661640, 34.176933, 43.814190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404809, -0.596421, 0.693118,
		-0.379295, -0.580192, -0.720772,
		0.832025, -0.554671, 0.008648,
		32.911247, 34.010532, 43.816784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039986, 33.791027, 43.918152>,  <32.328831, 34.398800, 43.810730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039986, 33.791027, 43.918152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424782, 33.748489, 44.018768>,  <32.655659, 33.722969, 44.079136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424782, 33.748489, 44.018768>,  <32.039986, 33.791027, 43.918152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424782, 33.748489, 44.018768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271429, -0.473790, 0.837765,
		0.030088, -0.874194, -0.484644,
		0.961988, -0.106339, 0.251537,
		32.713379, 33.716587, 44.094231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102146, 33.109615, 44.135517>,  <32.039986, 33.791027, 43.918152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102146, 33.109615, 44.135517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398529, 33.303425, 44.321518>,  <32.576359, 33.419708, 44.433117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398529, 33.303425, 44.321518>,  <32.102146, 33.109615, 44.135517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398529, 33.303425, 44.321518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237808, -0.458248, 0.856421,
		0.628040, -0.745150, -0.224317,
		0.740954, 0.484522, 0.465001,
		32.620815, 33.448780, 44.461018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910429, 32.475525, 43.898201>,  <32.102146, 33.109615, 44.135517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910429, 32.475525, 43.898201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529280, 32.362793, 43.853298>,  <31.300591, 32.295155, 43.826355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529280, 32.362793, 43.853298>,  <31.910429, 32.475525, 43.898201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529280, 32.362793, 43.853298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057210, 0.196472, -0.978839,
		0.297926, -0.939132, -0.171089,
		-0.952873, -0.281833, -0.112262,
		31.243418, 32.278244, 43.819618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894691, 32.029819, 43.403217>,  <31.910429, 32.475525, 43.898201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894691, 32.029819, 43.403217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527323, 32.187363, 43.418068>,  <31.306902, 32.281887, 43.426979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527323, 32.187363, 43.418068>,  <31.894691, 32.029819, 43.403217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527323, 32.187363, 43.418068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005408, 0.106328, -0.994316,
		-0.395568, -0.913000, -0.099784,
		-0.918421, 0.393860, 0.037122,
		31.251797, 32.305519, 43.429203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625580, 31.899603, 42.869816>,  <31.894691, 32.029819, 43.403217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625580, 31.899603, 42.869816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339920, 32.164486, 42.960564>,  <31.168524, 32.323418, 43.015011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339920, 32.164486, 42.960564>,  <31.625580, 31.899603, 42.869816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339920, 32.164486, 42.960564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197521, 0.120294, -0.972890,
		-0.671546, -0.739601, 0.044892,
		-0.714150, 0.662208, 0.226870,
		31.125675, 32.363148, 43.028625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869638, 31.643667, 42.658688>,  <31.625580, 31.899603, 42.869816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869638, 31.643667, 42.658688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902388, 32.042313, 42.655567>,  <30.922037, 32.281498, 42.653694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902388, 32.042313, 42.655567>,  <30.869638, 31.643667, 42.658688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902388, 32.042313, 42.655567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260534, 0.013849, -0.965365,
		-0.961987, 0.081070, 0.260785,
		0.081874, 0.996612, -0.007799,
		30.926950, 32.341297, 42.653229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374918, 31.805128, 42.170628>,  <30.869638, 31.643667, 42.658688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374918, 31.805128, 42.170628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582275, 32.146244, 42.195976>,  <30.706690, 32.350914, 42.211185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582275, 32.146244, 42.195976>,  <30.374918, 31.805128, 42.170628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582275, 32.146244, 42.195976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163112, 0.171351, -0.971614,
		-0.839441, 0.493344, 0.227928,
		0.518396, 0.852790, 0.063369,
		30.737795, 32.402081, 42.214989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078667, 32.270645, 41.760567>,  <30.374918, 31.805128, 42.170628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078667, 32.270645, 41.760567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421030, 32.473843, 41.799278>,  <30.626448, 32.595760, 41.822506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421030, 32.473843, 41.799278>,  <30.078667, 32.270645, 41.760567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421030, 32.473843, 41.799278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086236, 0.044316, -0.995289,
		-0.509885, 0.860222, -0.005877,
		0.855909, 0.507990, 0.096778,
		30.677803, 32.626240, 41.828312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906227, 32.934673, 41.382782>,  <30.078667, 32.270645, 41.760567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906227, 32.934673, 41.382782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303930, 32.896099, 41.401333>,  <30.542553, 32.872955, 41.412464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303930, 32.896099, 41.401333>,  <29.906227, 32.934673, 41.382782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303930, 32.896099, 41.401333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067137, 0.224699, -0.972113,
		0.083328, 0.969644, 0.229883,
		0.994258, -0.096438, 0.046376,
		30.602207, 32.867168, 41.415245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150925, 33.462173, 40.910656>,  <29.906227, 32.934673, 41.382782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150925, 33.462173, 40.910656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468666, 33.223587, 40.956654>,  <30.659311, 33.080433, 40.984253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468666, 33.223587, 40.956654>,  <30.150925, 33.462173, 40.910656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468666, 33.223587, 40.956654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275755, 0.185400, -0.943179,
		0.541258, 0.780929, 0.311753,
		0.794354, -0.596470, 0.114995,
		30.706972, 33.044647, 40.991154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751402, 33.857891, 40.625038>,  <30.150925, 33.462173, 40.910656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751402, 33.857891, 40.625038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815891, 33.463219, 40.633751>,  <30.854586, 33.226418, 40.638977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815891, 33.463219, 40.633751>,  <30.751402, 33.857891, 40.625038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815891, 33.463219, 40.633751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269898, 0.022852, -0.962618,
		0.949296, 0.161075, 0.269987,
		0.161223, -0.986678, 0.021781,
		30.864258, 33.167217, 40.640285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330515, 33.817703, 40.206303>,  <30.751402, 33.857891, 40.625038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330515, 33.817703, 40.206303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166470, 33.452976, 40.214188>,  <31.068043, 33.234138, 40.218918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166470, 33.452976, 40.214188>,  <31.330515, 33.817703, 40.206303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166470, 33.452976, 40.214188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068141, 0.009078, -0.997634,
		0.909485, -0.410487, -0.065855,
		-0.410114, -0.911821, 0.019715,
		31.043436, 33.179428, 40.220100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770452, 33.397610, 39.869629>,  <31.330515, 33.817703, 40.206303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770452, 33.397610, 39.869629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413767, 33.217422, 39.852097>,  <31.199755, 33.109310, 39.841576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413767, 33.217422, 39.852097>,  <31.770452, 33.397610, 39.869629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413767, 33.217422, 39.852097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047233, 0.003700, -0.998877,
		0.450125, -0.892784, 0.017978,
		-0.891715, -0.450469, -0.043834,
		31.146252, 33.082283, 39.838947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892445, 32.825336, 39.444214>,  <31.770452, 33.397610, 39.869629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892445, 32.825336, 39.444214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496761, 32.881630, 39.427902>,  <31.259352, 32.915405, 39.418114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496761, 32.881630, 39.427902>,  <31.892445, 32.825336, 39.444214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496761, 32.881630, 39.427902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010195, -0.211522, -0.977320,
		-0.146162, -0.967188, 0.207805,
		-0.989208, 0.140729, -0.040777,
		31.199999, 32.923851, 39.415668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879827, 32.309830, 39.058037>,  <31.892445, 32.825336, 39.444214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879827, 32.309830, 39.058037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505960, 32.451756, 39.049084>,  <31.281641, 32.536911, 39.043713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505960, 32.451756, 39.049084>,  <31.879827, 32.309830, 39.058037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505960, 32.451756, 39.049084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122057, -0.379390, -0.917151,
		-0.333913, -0.854499, 0.397911,
		-0.934668, 0.354817, -0.022386,
		31.225561, 32.558201, 39.042366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508291, 31.828867, 38.577950>,  <31.879827, 32.309830, 39.058037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508291, 31.828867, 38.577950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303379, 32.172379, 38.574703>,  <31.180431, 32.378487, 38.572758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303379, 32.172379, 38.574703>,  <31.508291, 31.828867, 38.577950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303379, 32.172379, 38.574703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252622, -0.159709, -0.954293,
		-0.820823, -0.486816, 0.298763,
		-0.512281, 0.858780, -0.008113,
		31.149694, 32.430012, 38.572269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356707, 31.231886, 38.902287>,  <31.508291, 31.828867, 38.577950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356707, 31.231886, 38.902287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694693, 31.236944, 38.688419>,  <31.897484, 31.239979, 38.560097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694693, 31.236944, 38.688419>,  <31.356707, 31.231886, 38.902287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694693, 31.236944, 38.688419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420774, -0.632811, 0.650000,
		-0.330124, -0.774203, -0.540025,
		0.844966, 0.012648, -0.534671,
		31.948183, 31.240738, 38.528019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664446, 30.673059, 39.087231>,  <31.356707, 31.231886, 38.902287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664446, 30.673059, 39.087231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959654, 30.856194, 38.888950>,  <32.136780, 30.966074, 38.769981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959654, 30.856194, 38.888950>,  <31.664446, 30.673059, 39.087231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959654, 30.856194, 38.888950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673564, -0.543918, 0.500465,
		-0.040489, -0.703237, -0.709802,
		0.738019, 0.457834, -0.495697,
		32.181061, 30.993544, 38.740242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972424, 30.233747, 38.519543>,  <31.664446, 30.673059, 39.087231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972424, 30.233747, 38.519543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230965, 30.486525, 38.690598>,  <32.386089, 30.638191, 38.793232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230965, 30.486525, 38.690598>,  <31.972424, 30.233747, 38.519543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230965, 30.486525, 38.690598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518610, -0.774926, 0.361294,
		0.559704, -0.011747, -0.828609,
		0.646355, 0.631943, 0.427638,
		32.424870, 30.676107, 38.818890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548985, 29.850899, 38.558949>,  <31.972424, 30.233747, 38.519543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548985, 29.850899, 38.558949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614246, 30.148911, 38.817657>,  <32.653404, 30.327717, 38.972881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614246, 30.148911, 38.817657>,  <32.548985, 29.850899, 38.558949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614246, 30.148911, 38.817657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448464, -0.639920, 0.624005,
		0.878784, 0.188244, -0.438524,
		0.163155, 0.745028, 0.646772,
		32.663193, 30.372419, 39.011688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265953, 29.813240, 38.810184>,  <32.548985, 29.850899, 38.558949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265953, 29.813240, 38.810184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070930, 30.038614, 39.076969>,  <32.953918, 30.173840, 39.237038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070930, 30.038614, 39.076969>,  <33.265953, 29.813240, 38.810184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070930, 30.038614, 39.076969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530914, -0.415117, 0.738788,
		0.693126, 0.714295, -0.096744,
		-0.487553, 0.563436, 0.666957,
		32.924664, 30.207645, 39.277058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764828, 30.217649, 39.306030>,  <33.265953, 29.813240, 38.810184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764828, 30.217649, 39.306030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421200, 30.196997, 39.509727>,  <33.215023, 30.184605, 39.631947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421200, 30.196997, 39.509727>,  <33.764828, 30.217649, 39.306030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421200, 30.196997, 39.509727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466431, -0.488699, 0.737303,
		0.210800, 0.870923, 0.443910,
		-0.859072, -0.051630, 0.509243,
		33.163479, 30.181507, 39.662502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979900, 30.416878, 39.931637>,  <33.764828, 30.217649, 39.306030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979900, 30.416878, 39.931637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632301, 30.225531, 39.982239>,  <33.423740, 30.110723, 40.012600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632301, 30.225531, 39.982239>,  <33.979900, 30.416878, 39.931637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632301, 30.225531, 39.982239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264775, -0.233563, 0.935597,
		-0.418010, 0.846531, 0.329626,
		-0.869000, -0.478366, 0.126509,
		33.371601, 30.082022, 40.020191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742493, 30.673660, 40.584961>,  <33.979900, 30.416878, 39.931637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742493, 30.673660, 40.584961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542706, 30.334518, 40.513771>,  <33.422832, 30.131033, 40.471058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542706, 30.334518, 40.513771>,  <33.742493, 30.673660, 40.584961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542706, 30.334518, 40.513771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214599, -0.320113, 0.922754,
		-0.839331, 0.422697, 0.341835,
		-0.499472, -0.847853, -0.177970,
		33.392864, 30.080162, 40.460381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372963, 30.593891, 41.223942>,  <33.742493, 30.673660, 40.584961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372963, 30.593891, 41.223942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356018, 30.231573, 41.055305>,  <33.345852, 30.014181, 40.954124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356018, 30.231573, 41.055305>,  <33.372963, 30.593891, 41.223942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356018, 30.231573, 41.055305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214555, -0.420372, 0.881620,
		-0.975793, -0.053105, 0.212153,
		-0.042365, -0.905797, -0.421589,
		33.343307, 29.959835, 40.928829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981586, 30.215267, 41.715206>,  <33.372963, 30.593891, 41.223942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981586, 30.215267, 41.715206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158161, 29.944532, 41.479572>,  <33.264107, 29.782091, 41.338192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158161, 29.944532, 41.479572>,  <32.981586, 30.215267, 41.715206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158161, 29.944532, 41.479572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050968, -0.636544, 0.769554,
		-0.895842, -0.369737, -0.246499,
		0.441441, -0.676835, -0.589088,
		33.290592, 29.741482, 41.302845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605465, 29.596247, 41.735348>,  <32.981586, 30.215267, 41.715206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605465, 29.596247, 41.735348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971809, 29.495239, 41.610493>,  <33.191616, 29.434635, 41.535580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971809, 29.495239, 41.610493>,  <32.605465, 29.596247, 41.735348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971809, 29.495239, 41.610493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156132, -0.492237, 0.856344,
		-0.369884, -0.833029, -0.411397,
		0.915865, -0.252516, -0.312134,
		33.246571, 29.419485, 41.516853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749805, 28.854841, 41.925873>,  <32.605465, 29.596247, 41.735348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749805, 28.854841, 41.925873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117474, 28.993582, 41.851231>,  <33.338074, 29.076826, 41.806446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117474, 28.993582, 41.851231>,  <32.749805, 28.854841, 41.925873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117474, 28.993582, 41.851231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342978, -0.471944, 0.812179,
		0.193636, -0.810533, -0.552759,
		0.919168, 0.346851, -0.186609,
		33.393223, 29.097637, 41.795246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316746, 28.289207, 41.792706>,  <32.749805, 28.854841, 41.925873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316746, 28.289207, 41.792706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478722, 28.623461, 41.941154>,  <33.575909, 28.824013, 42.030224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478722, 28.623461, 41.941154>,  <33.316746, 28.289207, 41.792706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478722, 28.623461, 41.941154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371181, -0.521181, 0.768501,
		0.835611, -0.173445, -0.521221,
		0.404943, 0.835635, 0.371125,
		33.600204, 28.874151, 42.052490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810665, 27.988577, 42.210274>,  <33.316746, 28.289207, 41.792706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810665, 27.988577, 42.210274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811497, 28.373907, 42.317604>,  <33.811996, 28.605104, 42.382004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811497, 28.373907, 42.317604>,  <33.810665, 27.988577, 42.210274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811497, 28.373907, 42.317604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412090, -0.245311, 0.877499,
		0.911141, 0.108749, -0.397487,
		0.002081, 0.963325, 0.268327,
		33.812122, 28.662905, 42.398102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461224, 28.175539, 42.438324>,  <33.810665, 27.988577, 42.210274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461224, 28.175539, 42.438324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241001, 28.448822, 42.630207>,  <34.108868, 28.612791, 42.745338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241001, 28.448822, 42.630207>,  <34.461224, 28.175539, 42.438324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241001, 28.448822, 42.630207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414441, -0.275134, 0.867491,
		0.724659, 0.676411, -0.131672,
		-0.550553, 0.683205, 0.479710,
		34.075836, 28.653784, 42.774120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850842, 28.325556, 43.007538>,  <34.461224, 28.175539, 42.438324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850842, 28.325556, 43.007538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504025, 28.507217, 43.089493>,  <34.295933, 28.616215, 43.138664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504025, 28.507217, 43.089493>,  <34.850842, 28.325556, 43.007538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504025, 28.507217, 43.089493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132800, -0.185689, 0.973593,
		0.480205, 0.871358, 0.100689,
		-0.867045, 0.454152, 0.204885,
		34.243912, 28.643463, 43.150959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018211, 28.796244, 43.630627>,  <34.850842, 28.325556, 43.007538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018211, 28.796244, 43.630627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627060, 28.712622, 43.627956>,  <34.392368, 28.662449, 43.626354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627060, 28.712622, 43.627956>,  <35.018211, 28.796244, 43.630627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627060, 28.712622, 43.627956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023722, -0.142557, 0.989502,
		-0.207811, 0.967458, 0.144363,
		-0.977881, -0.209054, -0.006675,
		34.333694, 28.649906, 43.625954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767178, 29.176033, 44.123291>,  <35.018211, 28.796244, 43.630627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767178, 29.176033, 44.123291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503876, 28.879744, 44.069580>,  <34.345894, 28.701969, 44.037354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503876, 28.879744, 44.069580>,  <34.767178, 29.176033, 44.123291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503876, 28.879744, 44.069580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086056, -0.251248, 0.964090,
		-0.747864, 0.623057, 0.229128,
		-0.658251, -0.740726, -0.134281,
		34.306400, 28.657526, 44.029297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260357, 29.225643, 44.648758>,  <34.767178, 29.176033, 44.123291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260357, 29.225643, 44.648758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190025, 28.842937, 44.556076>,  <34.147827, 28.613314, 44.500465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190025, 28.842937, 44.556076>,  <34.260357, 29.225643, 44.648758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190025, 28.842937, 44.556076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217281, -0.267289, 0.938800,
		-0.960142, 0.114723, 0.254883,
		-0.175830, -0.956763, -0.231709,
		34.137276, 28.555908, 44.486565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736740, 28.912479, 45.151802>,  <34.260357, 29.225643, 44.648758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736740, 28.912479, 45.151802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915718, 28.591192, 44.994507>,  <34.023106, 28.398420, 44.900131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915718, 28.591192, 44.994507>,  <33.736740, 28.912479, 45.151802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915718, 28.591192, 44.994507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257826, -0.305184, 0.916727,
		-0.856342, -0.511568, 0.070540,
		0.447441, -0.803219, -0.393237,
		34.049950, 28.350227, 44.876537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538872, 28.358932, 45.584736>,  <33.736740, 28.912479, 45.151802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538872, 28.358932, 45.584736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836510, 28.188494, 45.378918>,  <34.015091, 28.086229, 45.255424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836510, 28.188494, 45.378918>,  <33.538872, 28.358932, 45.584736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836510, 28.188494, 45.378918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421349, -0.298382, 0.856407,
		-0.518448, -0.854053, -0.042488,
		0.744095, -0.426100, -0.514550,
		34.059738, 28.060663, 45.224552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610043, 27.696444, 45.829136>,  <33.538872, 28.358932, 45.584736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610043, 27.696444, 45.829136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955563, 27.785950, 45.648571>,  <34.162876, 27.839653, 45.540230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955563, 27.785950, 45.648571>,  <33.610043, 27.696444, 45.829136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955563, 27.785950, 45.648571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497976, -0.242963, 0.832460,
		0.076598, -0.943874, -0.321302,
		0.863802, 0.223765, -0.451416,
		34.214703, 27.853079, 45.513145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041698, 27.058685, 45.871624>,  <33.610043, 27.696444, 45.829136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041698, 27.058685, 45.871624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317448, 27.344666, 45.824959>,  <34.482899, 27.516254, 45.796959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317448, 27.344666, 45.824959>,  <34.041698, 27.058685, 45.871624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317448, 27.344666, 45.824959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426450, -0.270343, 0.863166,
		0.585583, -0.644793, -0.491258,
		0.689372, 0.714952, -0.116663,
		34.524258, 27.559151, 45.789959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706867, 26.701723, 45.982777>,  <34.041698, 27.058685, 45.871624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706867, 26.701723, 45.982777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742798, 27.095518, 46.043068>,  <34.764359, 27.331795, 46.079243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742798, 27.095518, 46.043068>,  <34.706867, 26.701723, 45.982777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742798, 27.095518, 46.043068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382982, -0.173849, 0.907250,
		0.919378, -0.023772, -0.392657,
		0.089830, 0.984485, 0.150729,
		34.769749, 27.390863, 46.088287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398899, 26.718452, 46.345276>,  <34.706867, 26.701723, 45.982777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398899, 26.718452, 46.345276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209023, 27.062714, 46.418972>,  <35.095097, 27.269270, 46.463188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209023, 27.062714, 46.418972>,  <35.398899, 26.718452, 46.345276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209023, 27.062714, 46.418972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359908, -0.001215, 0.932987,
		0.803202, 0.509189, -0.309180,
		-0.474692, 0.860654, 0.184237,
		35.066616, 27.320910, 46.474243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928078, 27.207943, 46.610580>,  <35.398899, 26.718452, 46.345276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928078, 27.207943, 46.610580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575459, 27.309635, 46.769699>,  <35.363888, 27.370649, 46.865170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575459, 27.309635, 46.769699>,  <35.928078, 27.207943, 46.610580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575459, 27.309635, 46.769699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391441, -0.077414, 0.916941,
		0.263908, 0.964041, -0.031272,
		-0.881548, 0.254229, 0.397795,
		35.310993, 27.385904, 46.889038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116890, 27.491377, 47.237404>,  <35.928078, 27.207943, 46.610580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116890, 27.491377, 47.237404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722740, 27.427044, 47.259956>,  <35.486252, 27.388445, 47.273487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722740, 27.427044, 47.259956>,  <36.116890, 27.491377, 47.237404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722740, 27.427044, 47.259956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048184, 0.054426, 0.997355,
		-0.163476, 0.985480, -0.045881,
		-0.985370, -0.160833, 0.056381,
		35.427128, 27.378794, 47.276871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972961, 27.929497, 47.742588>,  <36.116890, 27.491377, 47.237404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972961, 27.929497, 47.742588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651482, 27.691904, 47.728428>,  <35.458595, 27.549349, 47.719933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651482, 27.691904, 47.728428>,  <35.972961, 27.929497, 47.742588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651482, 27.691904, 47.728428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097835, 0.073231, 0.992505,
		-0.586936, 0.801140, -0.116968,
		-0.803700, -0.593980, -0.035398,
		35.410370, 27.513710, 47.717808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764740, 28.600851, 47.824806>,  <35.972961, 27.929497, 47.742588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764740, 28.600851, 47.824806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035397, 28.868206, 47.948364>,  <36.197792, 29.028620, 48.022499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035397, 28.868206, 47.948364>,  <35.764740, 28.600851, 47.824806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035397, 28.868206, 47.948364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161380, 0.543934, -0.823463,
		-0.718409, 0.507341, 0.475913,
		0.676642, 0.668387, 0.308893,
		36.238388, 29.068722, 48.041031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527077, 29.370111, 47.693630>,  <35.764740, 28.600851, 47.824806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527077, 29.370111, 47.693630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925404, 29.402460, 47.710606>,  <36.164402, 29.421869, 47.720791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925404, 29.402460, 47.710606>,  <35.527077, 29.370111, 47.693630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925404, 29.402460, 47.710606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004175, 0.504463, -0.863423,
		-0.091234, 0.859638, 0.502692,
		0.995821, 0.080872, 0.042435,
		36.224152, 29.426722, 47.723335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739441, 30.121643, 47.590443>,  <35.527077, 29.370111, 47.693630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739441, 30.121643, 47.590443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065060, 29.913330, 47.487591>,  <36.260429, 29.788342, 47.425880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065060, 29.913330, 47.487591>,  <35.739441, 30.121643, 47.590443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065060, 29.913330, 47.487591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039397, 0.491201, -0.870155,
		0.579462, 0.698217, 0.420377,
		0.814046, -0.520783, -0.257125,
		36.309273, 29.757095, 47.410454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283691, 30.547186, 47.459427>,  <35.739441, 30.121643, 47.590443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283691, 30.547186, 47.459427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381908, 30.205790, 47.275574>,  <36.440838, 30.000952, 47.165260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381908, 30.205790, 47.275574>,  <36.283691, 30.547186, 47.459427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381908, 30.205790, 47.275574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077031, 0.489828, -0.868409,
		0.966319, 0.177829, 0.186022,
		0.245547, -0.853490, -0.459632,
		36.455574, 29.949743, 47.137684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823730, 30.685698, 47.033707>,  <36.283691, 30.547186, 47.459427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823730, 30.685698, 47.033707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684536, 30.339626, 46.889278>,  <36.601021, 30.131983, 46.802620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684536, 30.339626, 46.889278>,  <36.823730, 30.685698, 47.033707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684536, 30.339626, 46.889278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013871, 0.380349, -0.924739,
		0.937398, -0.326803, -0.120354,
		-0.347984, -0.865179, -0.361071,
		36.580139, 30.080072, 46.780956>
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
